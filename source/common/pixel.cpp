/*****************************************************************************
 * Copyright (C) 2013-2017 MulticoreWare, Inc
 *
 * Authors: Steve Borho <steve@borho.org>
 *          Mandar Gurav <mandar@multicorewareinc.com>
 *          Mahesh Pittala <mahesh@multicorewareinc.com>
 *          Min Chen <min.chen@multicorewareinc.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02111, USA.
 *
 * This program is also available under a commercial proprietary license.
 * For more information, contact us at license @ x265.com.
 *****************************************************************************/

#include "slicetype.h"      // LOWRES_COST_MASK
#include "primitives.h"
#include "contexts.h"   // costCoeffNxN_c
//#include "ld_st.h"

#include <cstdlib> // abs()

using namespace X265_NS;


namespace {
// place functions in anonymous namespace (file static)

template<int lx, int ly>
int ads_x4(int encDC[4], uint32_t *sums, int delta, uint16_t *costMvX, int16_t *mvs, int width, int thresh)
{
    int nmv = 0;
    for (int16_t i = 0; i < width; i++, sums++)
    {
        int ads = abs(encDC[0] - long(sums[0]))
            + abs(encDC[1] - long(sums[lx >> 1]))
            + abs(encDC[2] - long(sums[delta]))
            + abs(encDC[3] - long(sums[delta + (lx >> 1)]))
            + costMvX[i];
        if (ads < thresh)
            mvs[nmv++] = i;
    }
    return nmv;
}

template<int lx, int ly>
int ads_x2(int encDC[2], uint32_t *sums, int delta, uint16_t *costMvX, int16_t *mvs, int width, int thresh)
{
    int nmv = 0;
    for (int16_t i = 0; i < width; i++, sums++)
    {
        int ads = abs(encDC[0] - long(sums[0]))
            + abs(encDC[1] - long(sums[delta]))
            + costMvX[i];
        if (ads < thresh)
            mvs[nmv++] = i;
    }
    return nmv;
}

template<int lx, int ly>
int ads_x1(int encDC[1], uint32_t *sums, int, uint16_t *costMvX, int16_t *mvs, int width, int thresh)
{
    int nmv = 0;
    for (int16_t i = 0; i < width; i++, sums++)
    {
        int ads = abs(encDC[0] - long(sums[0]))
            + costMvX[i];
        if (ads < thresh)
            mvs[nmv++] = i;
    }
    return nmv;
}

template<int lx, int ly, class T1, class T2>
sse_t sse(const T1* pix1, intptr_t stride_pix1, const T2* pix2, intptr_t stride_pix2)
{
    sse_t sum = 0;
    int tmp;
	
    for (int y = 0; y < ly; y++)
    {
        for (int x = 0; x < lx; x++)
        {
         	tmp = pix1[x] - pix2[x];
          	sum += (tmp * tmp);
        }

        pix1 += stride_pix1;
        pix2 += stride_pix2;
    }

    return sum;
}

template<int size>
sse_t pixel_ssd_s_c(const int16_t* a, intptr_t dstride)
{
    sse_t sum = 0;
    for (int y = 0; y < size; y++)
    {
        for (int x = 0; x < size; x++)
            sum += a[x] * a[x];

        a += dstride;
    }
    return sum;
}

template<int size>
void cpy2Dto1D_shl(int16_t* dst, const int16_t* src, intptr_t srcStride, int shift)
{
    X265_CHECK(((intptr_t)dst & 15) == 0, "dst alignment error\n");
    X265_CHECK((((intptr_t)src | (srcStride * sizeof(*src))) & 15) == 0 || size == 4, "src alignment error\n");
    X265_CHECK(shift >= 0, "invalid shift\n");

    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
            dst[j] = src[j] << shift;

        src += srcStride;
        dst += size;
    }
}

template<int size>
void cpy2Dto1D_shr(int16_t* dst, const int16_t* src, intptr_t srcStride, int shift)
{
    X265_CHECK(((intptr_t)dst & 15) == 0, "dst alignment error\n");
    X265_CHECK((((intptr_t)src | (srcStride * sizeof(*src))) & 15) == 0 || size == 4, "src alignment error\n");
    X265_CHECK(shift > 0, "invalid shift\n");

    int16_t round = 1 << (shift - 1);
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
            dst[j] = (src[j] + round) >> shift;

        src += srcStride;
        dst += size;
    }
}

template<int size>
void cpy1Dto2D_shl(int16_t* dst, const int16_t* src, intptr_t dstStride, int shift)
{
    X265_CHECK((((intptr_t)dst | (dstStride * sizeof(*dst))) & 15) == 0 || size == 4, "dst alignment error\n");
    X265_CHECK(((intptr_t)src & 15) == 0, "src alignment error\n");
    X265_CHECK(shift >= 0, "invalid shift\n");

    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
            dst[j] = src[j] << shift;

        src += size;
        dst += dstStride;
    }
}

template<int size>
void cpy1Dto2D_shr(int16_t* dst, const int16_t* src, intptr_t dstStride, int shift)
{
    X265_CHECK((((intptr_t)dst | (dstStride * sizeof(*dst))) & 15) == 0 || size == 4, "dst alignment error\n");
    X265_CHECK(((intptr_t)src & 15) == 0, "src alignment error\n");
    X265_CHECK(shift > 0, "invalid shift\n");

    int16_t round = 1 << (shift - 1);
    for (int i = 0; i < size; i++)
    {
        for (int j = 0; j < size; j++)
            dst[j] = (src[j] + round) >> shift;

        src += size;
        dst += dstStride;
    }
}

template<int blockSize>
void transpose(pixel* dst, const pixel* src, intptr_t stride)
{
    for (int k = 0; k < blockSize; k++)
        for (int l = 0; l < blockSize; l++)
            dst[k * blockSize + l] = src[l * stride + k];
}

static void weight_sp_c(const int16_t* src, pixel* dst, intptr_t srcStride, intptr_t dstStride, int width, int height, int w0, int round, int shift, int offset)
{
    int x, y;

#if CHECKED_BUILD || _DEBUG
    const int correction = (IF_INTERNAL_PREC - X265_DEPTH);
    X265_CHECK(!((w0 << 6) > 32767), "w0 using more than 16 bits, asm output will mismatch\n");
    X265_CHECK(!(round > 32767), "round using more than 16 bits, asm output will mismatch\n");
    X265_CHECK((shift >= correction), "shift must be include factor correction, please update ASM ABI\n");
#endif

    for (y = 0; y <= height - 1; y++)
    {
        for (x = 0; x <= width - 1; )
        {
            // note: width can be odd
            dst[x] = x265_clip(((w0 * (src[x] + IF_INTERNAL_OFFS) + round) >> shift) + offset);
            x++;
        }

        src += srcStride;
        dst += dstStride;
    }
}

static void scale1D_128to64(pixel *dst, const pixel *src)
{
    int x;
    const pixel* src1 = src;
    const pixel* src2 = src + 128;

    pixel* dst1 = dst;
    pixel* dst2 = dst + 64/*128*/;

    for (x = 0; x < 128; x += 2)
    {
        // Top pixel
        pixel pix0 = src1[(x + 0)];
        pixel pix1 = src1[(x + 1)];

        // Left pixel
        pixel pix2 = src2[(x + 0)];
        pixel pix3 = src2[(x + 1)];
        int sum1 = pix0 + pix1;
        int sum2 = pix2 + pix3;

        dst1[x >> 1] = (pixel)((sum1 + 1) >> 1);
        dst2[x >> 1] = (pixel)((sum2 + 1) >> 1);
    }
}

static void scale2D_64to32(pixel* dst, const pixel* src, intptr_t stride)
{
    uint32_t x, y;

    for (y = 0; y < 64; y += 2)
    {
        for (x = 0; x < 64; x += 2)
        {
            pixel pix0 = src[(y + 0) * stride + (x + 0)];
            pixel pix1 = src[(y + 0) * stride + (x + 1)];
            pixel pix2 = src[(y + 1) * stride + (x + 0)];
            pixel pix3 = src[(y + 1) * stride + (x + 1)];
            int sum = pix0 + pix1 + pix2 + pix3;

            dst[y / 2 * 32 + x / 2] = (pixel)((sum + 2) >> 2);
        }
    }
}

/* structural similarity metric */
static void ssim_4x4x2_core(const pixel* pix1, intptr_t stride1, const pixel* pix2, intptr_t stride2, int sums[2][4])
{
    for (int z = 0; z < 2; z++)
    {
        uint32_t s1 = 0, s2 = 0, ss = 0, s12 = 0;
        for (int y = 0; y < 4; y++)
        {
            for (int x = 0; x < 4; x++)
            {
                int a = pix1[x + y * stride1];
                int b = pix2[x + y * stride2];
                s1 += a;
                s2 += b;
                ss += a * a;
                ss += b * b;
                s12 += a * b;
            }
        }

        sums[z][0] = s1;
        sums[z][1] = s2;
        sums[z][2] = ss;
        sums[z][3] = s12;
        pix1 += 4;
        pix2 += 4;
    }
}

static float ssim_end_1(int s1, int s2, int ss, int s12)
{
/* Maximum value for 10-bit is: ss*64 = (2^10-1)^2*16*4*64 = 4286582784, which will overflow in some cases.
 * s1*s1, s2*s2, and s1*s2 also obtain this value for edge cases: ((2^10-1)*16*4)^2 = 4286582784.
 * Maximum value for 9-bit is: ss*64 = (2^9-1)^2*16*4*64 = 1069551616, which will not overflow. */

#if HIGH_BIT_DEPTH
    X265_CHECK((X265_DEPTH == 10) || (X265_DEPTH == 12), "ssim invalid depth\n");
#define type float
    static const float ssim_c1 = (float)(.01 * .01 * PIXEL_MAX * PIXEL_MAX * 64);
    static const float ssim_c2 = (float)(.03 * .03 * PIXEL_MAX * PIXEL_MAX * 64 * 63);
#else
    X265_CHECK(X265_DEPTH == 8, "ssim invalid depth\n");
#define type int
    static const int ssim_c1 = (int)(.01 * .01 * PIXEL_MAX * PIXEL_MAX * 64 + .5);
    static const int ssim_c2 = (int)(.03 * .03 * PIXEL_MAX * PIXEL_MAX * 64 * 63 + .5);
#endif
    type fs1 = (type)s1;
    type fs2 = (type)s2;
    type fss = (type)ss;
    type fs12 = (type)s12;
    type vars = (type)(fss * 64 - fs1 * fs1 - fs2 * fs2);
    type covar = (type)(fs12 * 64 - fs1 * fs2);
    return (float)(2 * fs1 * fs2 + ssim_c1) * (float)(2 * covar + ssim_c2)
           / ((float)(fs1 * fs1 + fs2 * fs2 + ssim_c1) * (float)(vars + ssim_c2));
#undef type
#undef PIXEL_MAX
}

static float ssim_end_4(int sum0[5][4], int sum1[5][4], int width)
{
    float ssim = 0.0;

    for (int i = 0; i < width; i++)
    {
        ssim += ssim_end_1(sum0[i][0] + sum0[i + 1][0] + sum1[i][0] + sum1[i + 1][0],
                           sum0[i][1] + sum0[i + 1][1] + sum1[i][1] + sum1[i + 1][1],
                           sum0[i][2] + sum0[i + 1][2] + sum1[i][2] + sum1[i + 1][2],
                           sum0[i][3] + sum0[i + 1][3] + sum1[i][3] + sum1[i + 1][3]);
    }

    return ssim;
}

#if defined(_MSC_VER)
#pragma warning(disable: 4127) // conditional expression is constant
#endif

template<int bx, int by>
void blockcopy_sp_c(pixel* a, intptr_t stridea, const int16_t* b, intptr_t strideb)
{
    for (int y = 0; y < by; y++)
    {
        for (int x = 0; x < bx; x++)
        {
            X265_CHECK((b[x] >= 0) && (b[x] <= ((1 << X265_DEPTH) - 1)), "blockcopy pixel size fail\n");
            a[x] = (pixel)b[x];
        }

        a += stridea;
        b += strideb;
    }
}

template<int bx, int by>
void blockcopy_ps_c(int16_t* a, intptr_t stridea, const pixel* b, intptr_t strideb)
{
    for (int y = 0; y < by; y++)
    {
        for (int x = 0; x < bx; x++)
            a[x] = (int16_t)b[x];

        a += stridea;
        b += strideb;
    }
}

template<int bx, int by>
void addAvg(const int16_t* src0, const int16_t* src1, pixel* dst, intptr_t src0Stride, intptr_t src1Stride, intptr_t dstStride)
{
    int shiftNum, offset;

    shiftNum = IF_INTERNAL_PREC + 1 - X265_DEPTH;
    offset = (1 << (shiftNum - 1)) + 2 * IF_INTERNAL_OFFS;

    for (int y = 0; y < by; y++)
    {
        for (int x = 0; x < bx; x += 2)
        {
            dst[x + 0] = x265_clip((src0[x + 0] + src1[x + 0] + offset) >> shiftNum);
            dst[x + 1] = x265_clip((src0[x + 1] + src1[x + 1] + offset) >> shiftNum);
        }

        src0 += src0Stride;
        src1 += src1Stride;
        dst  += dstStride;
    }
}

static void planecopy_cp_c(const uint8_t* src, intptr_t srcStride, pixel* dst, intptr_t dstStride, int width, int height, int shift)
{
    for (int r = 0; r < height; r++)
    {
        for (int c = 0; c < width; c++)
            dst[c] = ((pixel)src[c]) << shift;

        dst += dstStride;
        src += srcStride;
    }
}

static void planecopy_sp_c(const uint16_t* src, intptr_t srcStride, pixel* dst, intptr_t dstStride, int width, int height, int shift, uint16_t mask)
{
    for (int r = 0; r < height; r++)
    {
        for (int c = 0; c < width; c++)
            dst[c] = (pixel)((src[c] >> shift) & mask);

        dst += dstStride;
        src += srcStride;
    }
}

static void planecopy_sp_shl_c(const uint16_t* src, intptr_t srcStride, pixel* dst, intptr_t dstStride, int width, int height, int shift, uint16_t mask)
{
    for (int r = 0; r < height; r++)
    {
        for (int c = 0; c < width; c++)
            dst[c] = (pixel)((src[c] << shift) & mask);

        dst += dstStride;
        src += srcStride;
    }
}

/* Estimate the total amount of influence on future quality that could be had if we
 * were to improve the reference samples used to inter predict any given CU. */
static void estimateCUPropagateCost(int* dst, const uint16_t* propagateIn, const int32_t* intraCosts, const uint16_t* interCosts,
                                    const int32_t* invQscales, const double* fpsFactor, int len)
{
    double fps = *fpsFactor / 256;  // range[0.01, 1.00]
    for (int i = 0; i < len; i++)
    {
        int intraCost = intraCosts[i];
        int interCost = X265_MIN(intraCosts[i], interCosts[i] & LOWRES_COST_MASK);
        double propagateIntra = intraCost * invQscales[i]; // Q16 x Q8.8 = Q24.8
        double propagateAmount = (double)propagateIn[i] + propagateIntra * fps; // Q16.0 + Q24.8 x Q0.x = Q25.0
        double propagateNum = (double)(intraCost - interCost); // Q32 - Q32 = Q33.0

#if 0
        // algorithm that output match to asm
        float intraRcp = (float)1.0f / intraCost;   // VC can't mapping this into RCPPS
        float intraRcpError1 = (float)intraCost * (float)intraRcp;
        intraRcpError1 *= (float)intraRcp;
        float intraRcpError2 = intraRcp + intraRcp;
        float propagateDenom = intraRcpError2 - intraRcpError1;
        dst[i] = (int)(propagateAmount * propagateNum * (double)propagateDenom + 0.5);
#else
        double propagateDenom = (double)intraCost;             // Q32
        dst[i] = (int)(propagateAmount * propagateNum / propagateDenom + 0.5);
#endif
        }
    //}
}

/* Conversion between double and Q8.8 fixed point (big-endian) for storage */
static void cuTreeFix8Pack(uint16_t *dst, double *src, int count)
{
    for (int i = 0; i < count; i++)
        dst[i] = (uint16_t)(src[i] * 256.0);
}

static void cuTreeFix8Unpack(double *dst, uint16_t *src, int count)
{
    for (int i = 0; i < count; i++)
    {
        int16_t qpFix8 = src[i];
        dst[i] = (double)(qpFix8) / 256.0;
    }
}

#if HIGH_BIT_DEPTH
static pixel planeClipAndMax_c(pixel *src, intptr_t stride, int width, int height, uint64_t *outsum, 
                               const pixel minPix, const pixel maxPix)
{
    pixel maxLumaLevel = 0;
    uint64_t sumLuma = 0;

    for (int r = 0; r < height; r++)
    {
        for (int c = 0; c < width; c++)
        {
            /* Clip luma of source picture to max and min*/
            src[c] = x265_clip3((pixel)minPix, (pixel)maxPix, src[c]);
            maxLumaLevel = X265_MAX(src[c], maxLumaLevel);
            sumLuma += src[c];
        }
        src += stride;
    }
    *outsum = sumLuma;
    return maxLumaLevel;
}

#endif
}  // end anonymous namespace

namespace X265_NS {
// x265 private namespace

/* Extend the edges of a picture so that it may safely be used for motion
 * compensation. This function assumes the picture is stored in a buffer with
 * sufficient padding for the X and Y margins */
void extendPicBorder(pixel* pic, intptr_t stride, int width, int height, int marginX, int marginY)
{
    /* extend left and right margins */
    primitives.extendRowBorder(pic, stride, width, height, marginX);

    /* copy top row to create above margin */
    pixel* top = pic - marginX;
    for (int y = 0; y < marginY; y++)
        memcpy(top - (y + 1) * stride, top, stride * sizeof(pixel));

    /* copy bottom row to create below margin */
    pixel* bot = pic - marginX + (height - 1) * stride;
    for (int y = 0; y < marginY; y++)
        memcpy(bot + (y + 1) * stride, bot, stride * sizeof(pixel));
}

/* Initialize entries for pixel functions defined in this file */
void setupPixelPrimitives_c(EncoderPrimitives &p)
{
#define LUMA_PU(W, H) \
    p.pu[LUMA_ ## W ## x ## H].addAvg = addAvg<W, H>; 

#define LUMA_CU(W, H) \
    p.cu[BLOCK_ ## W ## x ## H].copy_sp       = blockcopy_sp_c<W, H>; \
    p.cu[BLOCK_ ## W ## x ## H].copy_ps       = blockcopy_ps_c<W, H>; \
    p.cu[BLOCK_ ## W ## x ## H].cpy2Dto1D_shl = cpy2Dto1D_shl<W>; \
    p.cu[BLOCK_ ## W ## x ## H].cpy2Dto1D_shr = cpy2Dto1D_shr<W>; \
    p.cu[BLOCK_ ## W ## x ## H].cpy1Dto2D_shl = cpy1Dto2D_shl<W>; \
    p.cu[BLOCK_ ## W ## x ## H].cpy1Dto2D_shr = cpy1Dto2D_shr<W>; \
    p.cu[BLOCK_ ## W ## x ## H].transpose     = transpose<W>; \
    p.cu[BLOCK_ ## W ## x ## H].ssd_s         = pixel_ssd_s_c<W>; \
    p.cu[BLOCK_ ## W ## x ## H].sse_ss        = sse<W, H, int16_t, int16_t>;

    LUMA_PU(4, 4);
    LUMA_PU(8, 8); 
    LUMA_PU(16, 16);
    LUMA_PU(32, 32);
    LUMA_PU(64, 64);
    LUMA_PU(4, 8);
    LUMA_PU(8, 4);
    LUMA_PU(16,  8);
    LUMA_PU(8, 16);
    LUMA_PU(16, 12);
    LUMA_PU(12, 16);
    LUMA_PU(16,  4);
    LUMA_PU(4, 16);
    LUMA_PU(32, 16);
    LUMA_PU(16, 32);
    LUMA_PU(32, 24);
    LUMA_PU(24, 32);
    LUMA_PU(32,  8);
    LUMA_PU(8, 32);
    LUMA_PU(64, 32);
    LUMA_PU(32, 64);
    LUMA_PU(64, 48);
    LUMA_PU(48, 64);
    LUMA_PU(64, 16);
    LUMA_PU(16, 64);

    p.pu[LUMA_4x4].ads = ads_x1<4, 4>;
    p.pu[LUMA_8x8].ads = ads_x1<8, 8>;
    p.pu[LUMA_8x4].ads = ads_x2<8, 4>;
    p.pu[LUMA_4x8].ads = ads_x2<4, 8>;
    p.pu[LUMA_16x16].ads = ads_x4<16, 16>;
    p.pu[LUMA_16x8].ads = ads_x2<16, 8>;
    p.pu[LUMA_8x16].ads = ads_x2<8, 16>;
    p.pu[LUMA_16x12].ads = ads_x1<16, 12>;
    p.pu[LUMA_12x16].ads = ads_x1<12, 16>;
    p.pu[LUMA_16x4].ads = ads_x1<16, 4>;
    p.pu[LUMA_4x16].ads = ads_x1<4, 16>;
    p.pu[LUMA_32x32].ads = ads_x4<32, 32>;
    p.pu[LUMA_32x16].ads = ads_x2<32, 16>;
    p.pu[LUMA_16x32].ads = ads_x2<16, 32>;
    p.pu[LUMA_32x24].ads = ads_x4<32, 24>;
    p.pu[LUMA_24x32].ads = ads_x4<24, 32>;
    p.pu[LUMA_32x8].ads = ads_x4<32, 8>;
    p.pu[LUMA_8x32].ads = ads_x4<8, 32>;
    p.pu[LUMA_64x64].ads = ads_x4<64, 64>;
    p.pu[LUMA_64x32].ads = ads_x2<64, 32>;
    p.pu[LUMA_32x64].ads = ads_x2<32, 64>;
    p.pu[LUMA_64x48].ads = ads_x4<64, 48>;
    p.pu[LUMA_48x64].ads = ads_x4<48, 64>;
    p.pu[LUMA_64x16].ads = ads_x4<64, 16>;
    p.pu[LUMA_16x64].ads = ads_x4<16, 64>;

    LUMA_CU(4, 4);
    LUMA_CU(8, 8);
    LUMA_CU(16, 16);
    LUMA_CU(32, 32);
    LUMA_CU(64, 64);
	
#define CHROMA_PU_420(W, H) \
    p.chroma[X265_CSP_I420].pu[CHROMA_420_ ## W ## x ## H].addAvg  = addAvg<W, H>;         
    CHROMA_PU_420(2, 2);
    CHROMA_PU_420(2, 4);
    CHROMA_PU_420(4, 4);
    CHROMA_PU_420(8, 8);
    CHROMA_PU_420(16, 16);
    CHROMA_PU_420(32, 32);
    CHROMA_PU_420(4, 2);
    CHROMA_PU_420(8, 4);
    CHROMA_PU_420(4, 8);
    CHROMA_PU_420(8, 6);
    CHROMA_PU_420(6, 8);
    CHROMA_PU_420(8, 2);
    CHROMA_PU_420(2, 8);
    CHROMA_PU_420(16, 8);
    CHROMA_PU_420(8,  16);
    CHROMA_PU_420(16, 12);
    CHROMA_PU_420(12, 16);
    CHROMA_PU_420(16, 4);
    CHROMA_PU_420(4,  16);
    CHROMA_PU_420(32, 16);
    CHROMA_PU_420(16, 32);
    CHROMA_PU_420(32, 24);
    CHROMA_PU_420(24, 32);
    CHROMA_PU_420(32, 8);
    CHROMA_PU_420(8,  32);

#define CHROMA_CU_420(W, H) \
    p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].copy_sp = blockcopy_sp_c<W, H>; \
    p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].copy_ps = blockcopy_ps_c<W, H>; 

    
    CHROMA_CU_420(2, 2)
    CHROMA_CU_420(4, 4)
    CHROMA_CU_420(8, 8)
    CHROMA_CU_420(16, 16)
    CHROMA_CU_420(32, 32)
  
#define CHROMA_PU_422(W, H) \
    p.chroma[X265_CSP_I422].pu[CHROMA_422_ ## W ## x ## H].addAvg  = addAvg<W, H>;        

    CHROMA_PU_422(2, 4);
    CHROMA_PU_422(4, 8);
    CHROMA_PU_422(8, 16);
    CHROMA_PU_422(16, 32);
    CHROMA_PU_422(32, 64);
    CHROMA_PU_422(4, 4);
    CHROMA_PU_422(2, 8);
    CHROMA_PU_422(8, 8);
    CHROMA_PU_422(4, 16);
    CHROMA_PU_422(8, 12);
    CHROMA_PU_422(6, 16);
    CHROMA_PU_422(8, 4);
    CHROMA_PU_422(2, 16);
    CHROMA_PU_422(16, 16);
    CHROMA_PU_422(8, 32);
    CHROMA_PU_422(16, 24);
    CHROMA_PU_422(12, 32);
    CHROMA_PU_422(16, 8);
    CHROMA_PU_422(4,  32);
    CHROMA_PU_422(32, 32);
    CHROMA_PU_422(16, 64);
    CHROMA_PU_422(32, 48);
    CHROMA_PU_422(24, 64);
    CHROMA_PU_422(32, 16);
    CHROMA_PU_422(8,  64);

    
#define CHROMA_CU_422(W, H) \
    p.chroma[X265_CSP_I422].cu[BLOCK_422_ ## W ## x ## H].copy_sp = blockcopy_sp_c<W, H>; \
    p.chroma[X265_CSP_I422].cu[BLOCK_422_ ## W ## x ## H].copy_ps = blockcopy_ps_c<W, H>; 

    CHROMA_CU_422(2, 4)
    CHROMA_CU_422(4, 8)
    CHROMA_CU_422(8, 16)
    CHROMA_CU_422(16, 32)
    CHROMA_CU_422(32, 64)

    p.weight_sp = weight_sp_c;

    p.scale1D_128to64 = scale1D_128to64;
    p.scale2D_64to32 = scale2D_64to32;
    p.ssim_4x4x2_core = ssim_4x4x2_core;
    p.ssim_end_4 = ssim_end_4;

    p.planecopy_cp = planecopy_cp_c;
    p.planecopy_sp = planecopy_sp_c;
    p.planecopy_sp_shl = planecopy_sp_shl_c;
#if HIGH_BIT_DEPTH
    p.planeClipAndMax = planeClipAndMax_c;
#endif
    p.propagateCost = estimateCUPropagateCost;
    p.fix8Unpack = cuTreeFix8Unpack;
    p.fix8Pack = cuTreeFix8Pack;

}
}
