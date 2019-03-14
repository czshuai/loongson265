/*****************************************************************************
 * Copyright (C) 2013-2017 MulticoreWare, Inc
 *
 * Authors: Deepthi Nandakumar <deepthi@multicorewareinc.com>
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
 * For more information, contact us at license @ x265.com
 *****************************************************************************/

#include "common.h"
#include "yuv.h"
#include "shortyuv.h"
#include "primitives.h"
//#include <msa.h>
//#include <stdlib.h> 
//#include <loongson-sx.h>

#include "x265.h"

using namespace X265_NS;

ShortYuv::ShortYuv()
{
    m_buf[0] = NULL;
    m_buf[1] = NULL;
    m_buf[2] = NULL;
}

bool ShortYuv::create(uint32_t size, int csp)
{
    m_csp = csp;
    m_size = size;
    m_hChromaShift = CHROMA_H_SHIFT(csp);
    m_vChromaShift = CHROMA_V_SHIFT(csp);
    size_t sizeL = size * size;

    if (csp != X265_CSP_I400)
    {
        m_csize = size >> m_hChromaShift;
        size_t sizeC = sizeL >> (m_hChromaShift + m_vChromaShift);
        X265_CHECK((sizeC & 15) == 0, "invalid size");

        CHECKED_MALLOC(m_buf[0], int16_t, sizeL + sizeC * 2);
        m_buf[1] = m_buf[0] + sizeL;
        m_buf[2] = m_buf[0] + sizeL + sizeC;
    }
    else
    {
        CHECKED_MALLOC(m_buf[0], int16_t, sizeL);
        m_buf[1] = m_buf[2] = NULL;
    }
    return true;

fail:
    return false;
}

void ShortYuv::destroy()
{
    X265_FREE(m_buf[0]);
}

void ShortYuv::clear()
{
    memset(m_buf[0], 0, (m_size  * m_size) *  sizeof(int16_t));
    memset(m_buf[1], 0, (m_csize * m_csize) * sizeof(int16_t));
    memset(m_buf[2], 0, (m_csize * m_csize) * sizeof(int16_t));
}
/*
#define LD(psrc)	\
{		\
	uint8_t *psrc_ld_m = (uint8_t *) (psrc);     \
	uint64_t val_ld_m = 0;                       \
	__asm__ volatile (                           \
	 "uld  %[val_ld_m],  %[psrc_ld_m]  \n\t"  \
	 : [val_ld_m] "=r" (val_ld_m)             \
	 : [psrc_ld_m] "m" (*psrc_ld_m)           \
	);                                           \
	val_ld_m;                                    \

}

#define LD2(psrc, stride, out0, out1)  \
{                                      \
	out0 = LD((psrc));                 \
	out1 = LD((psrc) + stride);        \
}

#define LD4(psrc, stride, out0, out1, out2, out3)  \
{                                                  \
	LD2((psrc), stride, out0, out1);               \
	LD2((psrc) + 2 * stride, stride, out2, out3);  \
}
*/
/*
void sub_ps_8x8(int16_t* a, intptr_t dstride, const pixel* b0, const pixel* b1, intptr_t sstride0, intptr_t sstride1)
{
	v2u64 tmp0, tmp1, tmp2, tmp3;	
	v8u16 mid00, mid01, mid02, mid03, mid10, mid11, mid12, mid13;
	v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
	LD4(b0, sstride0, tp0, tp1, tp2, tp3);
	tmp0 = __builtin_msa_insert_d(tmp0, 0, tp0);
	tmp1 = __builtin_msa_insert_d(tmp1, 0, tp1);
	tmp2 = __builtin_msa_insert_d(tmp2, 0, tp2);
	tmp3 = __builtin_msa_insert_d(tmp3, 0, tp3);
	mid00 = __builtin_lsx_vextb_s_h((v16u8)tmp00);
	mid01 = __builtin_lsx_vextb_s_h((v16u8)tmp01);
	mid02 = __builtin_lsx_vextb_s_h((v16u8)tmp02);
	mid03 = __builtin_lsx_vextb_s_h((v16u8)tmp03);
	LD4(b1, sstride1, tp0, tp1, tp2, tp3);
	tmp0 = __builtin_msa_insert_d(tmp0, 0, tp0);
	tmp1 = __builtin_msa_insert_d(tmp1, 0, tp1);
	tmp2 = __builtin_msa_insert_d(tmp2, 0, tp2);
	tmp3 = __builtin_msa_insert_d(tmp3, 0, tp3);
	mid10 = __builtin_lsx_vextb_s_h((v16u8)tmp10);
	mid11 = __builtin_lsx_vextb_s_h((v16u8)tmp11);
	mid12 = __builtin_lsx_vextb_s_h((v16u8)tmp12);
	mid13 = __builtin_lsx_vextb_s_h((v16u8)tmp13);
	res0 = __builtin_msa_subv_h((v8i16)mid00, (v8i16)mid10);
	res1 = __builtin_msa_subv_h((v8i16)mid01, (v8i16)mid11);
	res2 = __builtin_msa_subv_h((v8i16)mid02, (v8i16)mid12);
	res3 = __builtin_msa_subv_h((v8i16)mid03, (v8i16)mid13);
	LD4(b0 + 4 * sstride0, sstride0, tp0, tp1, tp2, tp3);
	tmp0 = __builtin_msa_insert_d(tmp0, 0, tp0);
	tmp1 = __builtin_msa_insert_d(tmp1, 0, tp1);
	tmp2 = __builtin_msa_insert_d(tmp2, 0, tp2);
	tmp3 = __builtin_msa_insert_d(tmp3, 0, tp3);
	mid00 = __builtin_lsx_vextb_s_h((v16u8)tmp00);
	mid01 = __builtin_lsx_vextb_s_h((v16u8)tmp01);
	mid02 = __builtin_lsx_vextb_s_h((v16u8)tmp02);
	mid03 = __builtin_lsx_vextb_s_h((v16u8)tmp03);
	LD4(b1 + 4 * sstride1, sstride1, tp0, tp1, tp2, tp3);
	tmp0 = __builtin_msa_insert_d(tmp0, 0, tp0);
	tmp1 = __builtin_msa_insert_d(tmp1, 0, tp1);
	tmp2 = __builtin_msa_insert_d(tmp2, 0, tp2);
	tmp3 = __builtin_msa_insert_d(tmp3, 0, tp3);
	mid10 = __builtin_lsx_vextb_s_h((v16u8)tmp10);
	mid11 = __builtin_lsx_vextb_s_h((v16u8)tmp11);
	mid12 = __builtin_lsx_vextb_s_h((v16u8)tmp12);
	mid13 = __builtin_lsx_vextb_s_h((v16u8)tmp13);
	res4 = __builtin_msa_subv_h((v8i16)mid00, (v8i16)mid10);
	res5 = __builtin_msa_subv_h((v8i16)mid01, (v8i16)mid11);
	res6 = __builtin_msa_subv_h((v8i16)mid02, (v8i16)mid12);
	res7 = __builtin_msa_subv_h((v8i16)mid03, (v8i16)mid13);
	tp0 = __builtin_msa_copy_u_d(res0, 0);
	tp1 = __builtin_msa_copy_u_d(res0, 1);
	tp2 = __builtin_msa_copy_u_d(res1, 0);
	tp3 = __builtin_msa_copy_u_d(res1, 1);

	int i;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8i16 res0, res1, res2, res3;
	for(i = 1; i >= 0; i--)
	{
		tmp0 = __builtin_lsx_vbld(0, b0);
		tmp1 = __builtin_lsx_vbld(0, b0 + sstride0);
		tmp2 = __builtin_lsx_vbld(0, b0 + 2 * sstride0);
		tmp3 = __builtin_lsx_vbld(0, b0 + 3 * sstride0);	//ld 32 pixel data from b0
		mid0 = __builtin_lsx_vextb_u_h((v16i8)tmp0);
		mid1 = __builtin_lsx_vextb_u_h((v16i8)tmp1);
		mid2 = __builtin_lsx_vextb_u_h((v16i8)tmp2);
		mid3 = __builtin_lsx_vextb_u_h((v16i8)tmp3);			//8 bits extend to 16 bits
		tmp4 = __builtin_lsx_vbld(0, b1);
		tmp5 = __builtin_lsx_vbld(0, b1 + sstride1);
		tmp6 = __builtin_lsx_vbld(0, b1 + 2 * sstride1);
		tmp7 = __builtin_lsx_vbld(0, b1 + 3 * sstride1);	//ld 32 pixel data from b1
		mid4 = __builtin_lsx_vextb_u_h((v16i8)tmp4);
		mid5 = __builtin_lsx_vextb_u_h((v16i8)tmp5);
		mid6 = __builtin_lsx_vextb_u_h((v16i8)tmp6);
		mid7 = __builtin_lsx_vextb_u_h((v16i8)tmp7);			// 8 bits ext to 16 bits
		res0 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid4);
		res1 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid5);
		res2 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid6);
		res3 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid7);		//b0 - b1 		
		__builtin_msa_st_d((v2i64)res0, a, 0);
		__builtin_msa_st_d((v2i64)res1, a + dstride, 0);
		__builtin_msa_st_d((v2i64)res2, a + 2 * dstride, 0);
		__builtin_msa_st_d((v2i64)res3, a + 3 * dstride, 0);		//store
		b0 = b0 + 4 * sstride0;
		b1 = b1 + 4 * sstride1;
		a = a + 4 * dstride;
	}
	a = a - 8 * dstride;
	printf("\n\n\n");
	for (int n = 0; n < 8; n++)
	{
		for (int m = 0; m < 8; m++)
			printf("%x\t", a[m]);
		a = a + dstride;
		printf("\n");
	}	
	abort();
}
*/

void ShortYuv::subtract(const Yuv& srcYuv0, const Yuv& srcYuv1, uint32_t log2Size, int picCsp)
{
    const int sizeIdx = log2Size - 2; 
    primitives.cu[sizeIdx].sub_ps(m_buf[0], m_size, srcYuv0.m_buf[0], srcYuv1.m_buf[0], srcYuv0.m_size, srcYuv1.m_size);
    if (m_csp != X265_CSP_I400 && picCsp != X265_CSP_I400)
    {
        primitives.chroma[m_csp].cu[sizeIdx].sub_ps(m_buf[1], m_csize, srcYuv0.m_buf[1], srcYuv1.m_buf[1], srcYuv0.m_csize, srcYuv1.m_csize);
        primitives.chroma[m_csp].cu[sizeIdx].sub_ps(m_buf[2], m_csize, srcYuv0.m_buf[2], srcYuv1.m_buf[2], srcYuv0.m_csize, srcYuv1.m_csize);
    }
}

void ShortYuv::copyPartToPartLuma(ShortYuv& dstYuv, uint32_t absPartIdx, uint32_t log2Size) const
{
    const int16_t* src = getLumaAddr(absPartIdx);
    int16_t* dst = dstYuv.getLumaAddr(absPartIdx);

    primitives.cu[log2Size - 2].copy_ss(dst, dstYuv.m_size, src, m_size);
}

void ShortYuv::copyPartToPartLuma(Yuv& dstYuv, uint32_t absPartIdx, uint32_t log2Size) const
{
    const int16_t* src = getLumaAddr(absPartIdx);
    pixel* dst = dstYuv.getLumaAddr(absPartIdx);

    primitives.cu[log2Size - 2].copy_sp(dst, dstYuv.m_size, src, m_size);
}

void ShortYuv::copyPartToPartChroma(ShortYuv& dstYuv, uint32_t absPartIdx, uint32_t log2SizeL) const
{
    int part = partitionFromLog2Size(log2SizeL);
    const int16_t* srcU = getCbAddr(absPartIdx);
    const int16_t* srcV = getCrAddr(absPartIdx);
    int16_t* dstU = dstYuv.getCbAddr(absPartIdx);
    int16_t* dstV = dstYuv.getCrAddr(absPartIdx);

    primitives.chroma[m_csp].cu[part].copy_ss(dstU, dstYuv.m_csize, srcU, m_csize);
    primitives.chroma[m_csp].cu[part].copy_ss(dstV, dstYuv.m_csize, srcV, m_csize);
}

void ShortYuv::copyPartToPartChroma(Yuv& dstYuv, uint32_t absPartIdx, uint32_t log2SizeL) const
{
    int part = partitionFromLog2Size(log2SizeL);
    const int16_t* srcU = getCbAddr(absPartIdx);
    const int16_t* srcV = getCrAddr(absPartIdx);
    pixel* dstU = dstYuv.getCbAddr(absPartIdx);
    pixel* dstV = dstYuv.getCrAddr(absPartIdx);

    primitives.chroma[m_csp].cu[part].copy_sp(dstU, dstYuv.m_csize, srcU, m_csize);
    primitives.chroma[m_csp].cu[part].copy_sp(dstV, dstYuv.m_csize, srcV, m_csize);
}
