/***********************************************************

This file optimize the cores in HEVC 
with msa1.0 and loongson 128b SIMD extention instructions.

***************************************************************/

#include "slicetype.h"      // LOWRES_COST_MASK
#include "primitives.h"
#include "contexts.h"   // costCoeffNxN_c
#include "ld_st.h"

#include <cstdlib> // abs()

using namespace X265_NS;

namespace {

//-----------------------------------------------------------------------------------------------
//int sad(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
//enable size 4x4, 8x8, 16x16, 32x32, 64x64
//-----------------------------------------------------------------------------------------------

int sad_4x4(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{	
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	int t_sum = 0;
	#endif

	int sum = 0;
	v4i32 tmp0, tmp1;
	v16u8 rest0;
	v2u64 rest1;
	tmp0 = L_4x4_B(pix1, stride_pix1);
	tmp1 = L_4x4_B(pix2, stride_pix2);
	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp1);
	rest1 = __builtin_lsx_vacc8b_u_d(rest0);
	sum = ((v4u32)rest1)[0] + ((v4u32)rest1)[2];
	//printf("4x4 sum = %d\n", sum);
	
	#ifdef DEBUG
	for (int y = 0; y < 4; y++)
    	{
        	for (int x = 0; x < 4; x++)
            		t_sum += abs(t_pix1[x] - t_pix2[x]);
	
        	t_pix1 += stride_pix1;
       	 	t_pix2 += stride_pix2;
    	}
	if (t_sum == sum)
		printf("sad_4x4 test success\n");
	else 
		printf("sad_4x4 test fail\n");
	#endif

	return sum;	
}

int sad_8x8(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	int t_sum = 0;
	#endif

	int sum = 0;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v16u8 rest0, rest1, rest2, rest3;
	v2u64 mid0, mid1, mid2, mid3;
	//L_8x8_B(pix1, stride_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	//L_8x8_B(pix2, stride_pix2, &tmp4, &tmp5, &tmp6, &tmp7);
	
	LD4(pix1, stride_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4(pix1 + 4 * stride_pix1, stride_pix1, &tmp8, &tmp9, &tmp10, &tmp11);
	tmp0 = __builtin_msa_insve_d(tmp0, 1, tmp8);
	tmp1 = __builtin_msa_insve_d(tmp1, 1, tmp9);
	tmp2 = __builtin_msa_insve_d(tmp2, 1, tmp10);
	tmp3 = __builtin_msa_insve_d(tmp3, 1, tmp11);
	
	LD4(pix2, stride_pix2, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix2 + 4 * stride_pix2, stride_pix2, &tmp12, &tmp13, &tmp14, &tmp15);
	tmp4 = __builtin_msa_insve_d(tmp4, 1, tmp12);
	tmp5 = __builtin_msa_insve_d(tmp5, 1, tmp13);
	tmp6 = __builtin_msa_insve_d(tmp6, 1, tmp14);
	tmp7 = __builtin_msa_insve_d(tmp7, 1, tmp15);
	
	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	
	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);
	
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid1);
	mid2 = (v2u64)__builtin_msa_addv_d((v2i64)mid2, (v2i64)mid3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid2);
	sum = ((v4u32)mid0)[0] + ((v4u32)mid0)[2];
	//printf("8x8 sum = %d\n", sum);
	
	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
    	{
        	for (int x = 0; x < 8; x++)
            		t_sum += abs(t_pix1[x] - t_pix2[x]);
	
        	t_pix1 += stride_pix1;
       	 	t_pix2 += stride_pix2;
    	}
	if (t_sum == sum)
		printf("sad_8x8 test success\n");
	else 
		printf("sad_8x8 test fail\n");
	#endif

	return sum;
}

int sad_16x16(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	int t_sum = 0;
	#endif

	int sum = 0;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v16u8 rest0, rest1, rest2, rest3, rest4, rest5, rest6, rest7;
	v2u64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v2i64 sum0, sum1, sum2, sum3;
	
	sum0 = (v2i64)__builtin_msa_xor_v((v16u8)sum0, (v16u8)sum0);
	sum1 = (v2i64)__builtin_msa_xor_v((v16u8)sum1, (v16u8)sum1);
	
	sum2 = (v2i64)__builtin_msa_xor_v((v16u8)sum2, (v16u8)sum2);
	sum3 = (v2i64)__builtin_msa_xor_v((v16u8)sum3, (v16u8)sum3);
	
	LD_V4(pix1, stride_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	LD_V4(pix2, stride_pix2, &tmp4, &tmp5, &tmp6, &tmp7);
		
	LD_V4(pix1 + 4 * stride_pix1, stride_pix1, &tmp8, &tmp9, &tmp10, &tmp11);
	LD_V4(pix2 + 4 * stride_pix2, stride_pix2, &tmp12, &tmp13, &tmp14, &tmp15);	
	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);

	rest4 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp12);
	rest5 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp13);
	rest6 = __builtin_msa_asub_u_b((v16u8)tmp10, (v16u8)tmp14);
	rest7 = __builtin_msa_asub_u_b((v16u8)tmp11, (v16u8)tmp15);

	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);

	mid4 = __builtin_lsx_vacc8b_u_d(rest4);
	mid5 = __builtin_lsx_vacc8b_u_d(rest5);
	mid6 = __builtin_lsx_vacc8b_u_d(rest6);
	mid7 = __builtin_lsx_vacc8b_u_d(rest7);

	sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
	sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid1);
	sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid2);
	sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);

	sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
	sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid5);
	sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid6);
	sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);

	pix1 = pix1 + 8 * stride_pix1;
	pix2 = pix2 + 8 * stride_pix2;

	LD_V4(pix1, stride_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	LD_V4(pix2, stride_pix2, &tmp4, &tmp5, &tmp6, &tmp7);
		
	LD_V4(pix1 + 4 * stride_pix1, stride_pix1, &tmp8, &tmp9, &tmp10, &tmp11);
	LD_V4(pix2 + 4 * stride_pix2, stride_pix2, &tmp12, &tmp13, &tmp14, &tmp15);	
	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);

	rest4 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp12);
	rest5 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp13);
	rest6 = __builtin_msa_asub_u_b((v16u8)tmp10, (v16u8)tmp14);
	rest7 = __builtin_msa_asub_u_b((v16u8)tmp11, (v16u8)tmp15);

	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);

	mid4 = __builtin_lsx_vacc8b_u_d(rest4);
	mid5 = __builtin_lsx_vacc8b_u_d(rest5);
	mid6 = __builtin_lsx_vacc8b_u_d(rest6);
	mid7 = __builtin_lsx_vacc8b_u_d(rest7);

	sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
	sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid1);
	sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid2);
	sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);

	sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
	sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid5);
	sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid6);
	sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);

	sum = ((v4u32)sum0)[0] + ((v4u32)sum0)[2];
	sum += ((v4u32)sum1)[0] + ((v4u32)sum1)[2];
	
	sum += ((v4u32)sum2)[0] + ((v4u32)sum2)[2];
	sum += ((v4u32)sum3)[0] + ((v4u32)sum3)[2];
	//printf("16x16 sum = %d\n", sum);
	
	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
    	{
        	for (int x = 0; x < 16; x++)
            		t_sum += abs(t_pix1[x] - t_pix2[x]);
	
        	t_pix1 += stride_pix1;
       	 	t_pix2 += stride_pix2;
    	}
	if (t_sum == sum)
		printf("sad_16x16 test success\n");
	else 
		printf("sad_16x16 test fail\n");
	#endif

	return sum;
}

int sad_32x32(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	int t_sum = 0;
	#endif

	int sum = 0;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v16u8 rest0, rest1, rest2, rest3, rest4, rest5, rest6, rest7;
	v2u64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v2i64 sum0, sum1, sum2, sum3;
	
	sum0 = (v2i64)__builtin_msa_xor_v((v16u8)sum0, (v16u8)sum0);
	sum1 = (v2i64)__builtin_msa_xor_v((v16u8)sum1, (v16u8)sum1);
	
	sum2 = (v2i64)__builtin_msa_xor_v((v16u8)sum2, (v16u8)sum2);
	sum3 = (v2i64)__builtin_msa_xor_v((v16u8)sum3, (v16u8)sum3);

	for (int i = 0; i < 8; i++)
	{
		LD_V2_H(pix1, &tmp0, &tmp1);
		LD_V2_H(pix1 + stride_pix1, &tmp2, &tmp3);
		LD_V2_H(pix2, &tmp4, &tmp5);
		LD_V2_H(pix2 + stride_pix2, &tmp6, &tmp7);
	
		LD_V2_H(pix1 + 2 * stride_pix1, &tmp8, &tmp9);
		LD_V2_H(pix1 + 3 * stride_pix1, &tmp10, &tmp11);
		LD_V2_H(pix2 + 2 * stride_pix2, &tmp12, &tmp13);
		LD_V2_H(pix2 + 3 * stride_pix2, &tmp14, &tmp15);
				
		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp12);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp13);
		rest6 = __builtin_msa_asub_u_b((v16u8)tmp10, (v16u8)tmp14);
		rest7 = __builtin_msa_asub_u_b((v16u8)tmp11, (v16u8)tmp15);

		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);

		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
		mid6 = __builtin_lsx_vacc8b_u_d(rest6);
		mid7 = __builtin_lsx_vacc8b_u_d(rest7);

		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid1);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);

		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid5);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid6);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);
	
		pix1 += 4 * stride_pix1;
		pix2 += 4 * stride_pix2;
	}

	sum = ((v4u32)sum0)[0] + ((v4u32)sum0)[2];
	sum += ((v4u32)sum1)[0] + ((v4u32)sum1)[2];
	sum += ((v4u32)sum2)[0] + ((v4u32)sum2)[2];
	sum += ((v4u32)sum3)[0] + ((v4u32)sum3)[2];
	
	//printf("32x32 sum = %d\n", sum);
	
	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
    	{
        	for (int x = 0; x < 32; x++)
            		t_sum += abs(t_pix1[x] - t_pix2[x]);
	
        	t_pix1 += stride_pix1;
       	 	t_pix2 += stride_pix2;
    	}
	if (t_sum == sum)
		printf("sad_32x32 test success\n");
	else 
		printf("sad_32x32 test fail\n");
	#endif

	return sum;
}

int sad_64x64(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	int t_sum = 0;
	#endif

	int sum = 0;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v16u8 rest0, rest1, rest2, rest3, rest4, rest5, rest6, rest7;
	v2u64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v2i64 sum0, sum1, sum2, sum3;
	
	sum0 = (v2i64)__builtin_msa_xor_v((v16u8)sum0, (v16u8)sum0);
	sum1 = (v2i64)__builtin_msa_xor_v((v16u8)sum1, (v16u8)sum1);

	sum2 = (v2i64)__builtin_msa_xor_v((v16u8)sum2, (v16u8)sum2);
	sum3 = (v2i64)__builtin_msa_xor_v((v16u8)sum3, (v16u8)sum3);
	
	for (int i = 0; i < 32; i++)
	{
		LD_V4_H(pix1, &tmp0, &tmp1, &tmp2, &tmp3);
		LD_V4_H(pix2, &tmp4, &tmp5, &tmp6, &tmp7);
	
		LD_V4_H(pix1 + stride_pix1, &tmp8, &tmp9, &tmp10, &tmp11);
		LD_V4_H(pix2 + stride_pix2, &tmp12, &tmp13, &tmp14, &tmp15);
			
		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp12);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp13);
		rest6 = __builtin_msa_asub_u_b((v16u8)tmp10, (v16u8)tmp14);
		rest7 = __builtin_msa_asub_u_b((v16u8)tmp11, (v16u8)tmp15);

		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);
			
		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
		mid6 = __builtin_lsx_vacc8b_u_d(rest6);
		mid7 = __builtin_lsx_vacc8b_u_d(rest7);

		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid1);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);
	
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid5);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid6);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);
		
		pix1 += 2 * stride_pix1;
		pix2 += 2 * stride_pix2;
	}

	sum = ((v4u32)sum0)[0] + ((v4u32)sum0)[2];
	sum += ((v4u32)sum1)[0] + ((v4u32)sum1)[2];
	sum += ((v4u32)sum2)[0] + ((v4u32)sum2)[2];
	sum += ((v4u32)sum3)[0] + ((v4u32)sum3)[2];
	
	//printf("64x64 sum = %d\n", sum);
	
	#ifdef DEBUG
	for (int y = 0; y < 64; y++)
    	{
        	for (int x = 0; x < 64; x++)
            		t_sum += abs(t_pix1[x] - t_pix2[x]);
	
        	t_pix1 += stride_pix1;
       	 	t_pix2 += stride_pix2;
    	}
	if (t_sum == sum)
		printf("sad_64x64 test success\n");
	else 
		printf("sad_64x64 test fail\n");
	#endif

	return sum;
}

template<int lx, int ly>
int sad(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{      
    int sum = 0;
    for (int y = 0; y < ly; y++)
    {
        for (int x = 0; x < lx; x++)
            sum += abs(pix1[x] - pix2[x]);
	
        pix1 += stride_pix1;
       	pix2 += stride_pix2;
    }

    return sum;
}

template<int lx, int ly>
int sad(const int16_t* pix1, intptr_t stride_pix1, const int16_t* pix2, intptr_t stride_pix2)
{
    int sum = 0;

    for (int y = 0; y < ly; y++)
    {
        for (int x = 0; x < lx; x++)
            sum += abs(pix1[x] - pix2[x]);

        pix1 += stride_pix1;
        pix2 += stride_pix2;
    }

    return sum;
}

//----------------------------------------------------------------------------------------------------------------------------
//void sad_x3(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, intptr_t frefstride, int32_t* res)
//enable size 8x8, 16x16, 32x32, 64x64
//----------------------------------------------------------------------------------------------------------------------------

void sad_x3_8x8(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, intptr_t frefstride, int32_t* res)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2, *t_pix3, *t_pix4;
	int32_t t_res[3] = {0, 0, 0};
	t_pix1 = pix1;
	t_pix2 = pix2;
	t_pix3 = pix3;
	t_pix4 = pix4;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v2i64 mid4, mid5, mid6, mid7;
	v16u8 rest0, rest1, rest2, rest3;	
	v2u64 mid0, mid1, mid2, mid3;
	
	//L_8x8_B(pix1, (intptr_t)64, &tmp0, &tmp1, &tmp2, &tmp3);
	//L_8x8_B(pix2, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
 	
	LD4(pix1, (intptr_t)64, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4(pix1 + 4 * (intptr_t)64, (intptr_t)64, &tmp8, &tmp9, &tmp10, &tmp11);
	tmp0 = __builtin_msa_insve_d(tmp0, 1, tmp8);
	tmp1 = __builtin_msa_insve_d(tmp1, 1, tmp9);
	tmp2 = __builtin_msa_insve_d(tmp2, 1, tmp10);
	tmp3 = __builtin_msa_insve_d(tmp3, 1, tmp11);

	LD4(pix2, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix2 + 4 * frefstride, frefstride, &tmp12, &tmp13, &tmp14, &tmp15);
	tmp4 = __builtin_msa_insve_d(tmp4, 1, tmp12);
	tmp5 = __builtin_msa_insve_d(tmp5, 1, tmp13);
	tmp6 = __builtin_msa_insve_d(tmp6, 1, tmp14);
	tmp7 = __builtin_msa_insve_d(tmp7, 1, tmp15);
	
	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid1);
	mid2 = (v2u64)__builtin_msa_addv_d((v2i64)mid2, (v2i64)mid3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid2);
	res[0] = ((v4u32)mid0)[0] + ((v4u32)mid0)[2];

	//L_8x8_B(pix3, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	
	LD4(pix3, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix3 + 4 * frefstride, frefstride, &mid4, &mid5, &mid6, &mid7);
	tmp4 = __builtin_msa_insve_d(tmp4, 1, mid4);
	tmp5 = __builtin_msa_insve_d(tmp5, 1, mid5);
	tmp6 = __builtin_msa_insve_d(tmp6, 1, mid6);
	tmp7 = __builtin_msa_insve_d(tmp7, 1, mid7);

	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid1);
	mid2 = (v2u64)__builtin_msa_addv_d((v2i64)mid2, (v2i64)mid3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid2);
	res[1] = ((v4u32)mid0)[0] + ((v4u32)mid0)[2];

	//L_8x8_B(pix4, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix4, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix4 + 4 * frefstride, frefstride, &mid4, &mid5, &mid6, &mid7);
	tmp4 = __builtin_msa_insve_d(tmp4, 1, mid4);
	tmp5 = __builtin_msa_insve_d(tmp5, 1, mid5);
	tmp6 = __builtin_msa_insve_d(tmp6, 1, mid6);
	tmp7 = __builtin_msa_insve_d(tmp7, 1, mid7);

	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid1);
	mid2 = (v2u64)__builtin_msa_addv_d((v2i64)mid2, (v2i64)mid3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid2);
	res[2] = ((v4u32)mid0)[0] + ((v4u32)mid0)[2];
	
	//printf("8x8 result = %d\t%d\t%d\n", res[0], res[1], res[2]);
	
	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
    	{
        	for (int x = 0; x < 8; x++)
       		{
            		t_res[0] += abs(t_pix1[x] - t_pix2[x]);
            		t_res[1] += abs(t_pix1[x] - t_pix3[x]);
            		t_res[2] += abs(t_pix1[x] - t_pix4[x]);
        	}

        	t_pix1 += FENC_STRIDE;
        	t_pix2 += frefstride;
        	t_pix3 += frefstride;
        	t_pix4 += frefstride;
    	}
	
	if(t_res[0] == res[0] && t_res[1] == res[1] && t_res[2] == res[2])
		printf("sad_x3_8x8 test success\n");
	else
		printf("sad_x3_8x8 test fail\n");	
	#endif
}

void sad_x3_16x16(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, intptr_t frefstride, int32_t* res)
{	
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2, *t_pix3, *t_pix4;
	int32_t t_res[3] = {0, 0, 0};
	t_pix1 = pix1;
	t_pix2 = pix2;
	t_pix3 = pix3;
	t_pix4 = pix4;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v16u8 rest0, rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8, rest9, rest10, rest11;	
	v2u64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7, mid8, mid9, mid10, mid11;
	v2i64 sum0, sum1, sum2, sum3, sum4, sum5;
	
	sum0 = (v2i64)__builtin_msa_xor_v((v16u8)sum0, (v16u8)sum0);
	sum1 = (v2i64)__builtin_msa_xor_v((v16u8)sum1, (v16u8)sum1);
	sum2 = (v2i64)__builtin_msa_xor_v((v16u8)sum2, (v16u8)sum2);

	sum3 = (v2i64)__builtin_msa_xor_v((v16u8)sum3, (v16u8)sum3);
	sum4 = (v2i64)__builtin_msa_xor_v((v16u8)sum4, (v16u8)sum4);
	sum5 = (v2i64)__builtin_msa_xor_v((v16u8)sum5, (v16u8)sum5);

	for (int i = 0; i < 4; i++)
	{
		LD_V2(pix1, (intptr_t)64, &tmp0, &tmp1);
		LD_V2(pix2, frefstride, &tmp2, &tmp3);
		LD_V2(pix3, frefstride, &tmp4, &tmp5);
		LD_V2(pix4, frefstride, &tmp6, &tmp7);
			
		LD_V2(pix1 + 2 * (intptr_t)64, (intptr_t)64, &tmp8, &tmp9);
		LD_V2(pix2 + 2 * frefstride, frefstride, &tmp10, &tmp11);
		LD_V2(pix3 + 2 * frefstride, frefstride, &tmp12, &tmp13);
		LD_V2(pix4 + 2 * frefstride, frefstride, &tmp14, &tmp15);
	
		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp2);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp3);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp6);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp7);
	
		rest6 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp10);
		rest7 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp11);
		rest8 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp12);
		rest9 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp13);
		rest10 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp14);
		rest11 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp15);

		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);
		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
	
		mid6 = __builtin_lsx_vacc8b_u_d(rest6);
		mid7 = __builtin_lsx_vacc8b_u_d(rest7);
		mid8 = __builtin_lsx_vacc8b_u_d(rest8);
		mid9 = __builtin_lsx_vacc8b_u_d(rest9);
		mid10 = __builtin_lsx_vacc8b_u_d(rest10);
		mid11 = __builtin_lsx_vacc8b_u_d(rest11);

		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid1);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid5);

		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid6);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);
		sum4 = __builtin_msa_addv_d(sum4, (v2i64)mid8);
		sum4 = __builtin_msa_addv_d(sum4, (v2i64)mid9);
		sum5 = __builtin_msa_addv_d(sum5, (v2i64)mid10);
		sum5 = __builtin_msa_addv_d(sum5, (v2i64)mid11);
		
		pix1 += 4 * (intptr_t)64;
		pix2 += 4 * frefstride;
		pix3 += 4 * frefstride;
	 	pix4 += 4 * frefstride;
	}
	
	res[0] = ((v4u32)sum0)[0] + ((v4u32)sum0)[2];
	res[1] = ((v4u32)sum1)[0] + ((v4u32)sum1)[2];
	res[2] = ((v4u32)sum2)[0] + ((v4u32)sum2)[2];
	
	res[0] += ((v4u32)sum3)[0] + ((v4u32)sum3)[2];
	res[1] += ((v4u32)sum4)[0] + ((v4u32)sum4)[2];
	res[2] += ((v4u32)sum5)[0] + ((v4u32)sum5)[2];

	//printf("16x16 result = %d\t%d\t%d\n", res[0], res[1], res[2]);
	
	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
    	{
        	for (int x = 0; x < 16; x++)
       		{
            		t_res[0] += abs(t_pix1[x] - t_pix2[x]);
            		t_res[1] += abs(t_pix1[x] - t_pix3[x]);
            		t_res[2] += abs(t_pix1[x] - t_pix4[x]);
        	}

        	t_pix1 += FENC_STRIDE;
        	t_pix2 += frefstride;
        	t_pix3 += frefstride;
        	t_pix4 += frefstride;
    	}
	
	if(t_res[0] == res[0] && t_res[1] == res[1] && t_res[2] == res[2])
		printf("sad_x3_16x16 test success\n");
	else
		printf("sad_x3_16x16 test fail\n");	
	#endif
}

void sad_x3_32x32(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, intptr_t frefstride, int32_t* res)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2, *t_pix3, *t_pix4;
	int32_t t_res[3] = {0, 0, 0};
	t_pix1 = pix1;
	t_pix2 = pix2;
	t_pix3 = pix3;
	t_pix4 = pix4;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v16u8 rest0, rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8, rest9, rest10, rest11;	
	v2u64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7, mid8, mid9, mid10, mid11;
	v2i64 sum0, sum1, sum2, sum3, sum4, sum5;
	
	sum0 = (v2i64)__builtin_msa_xor_v((v16u8)sum0, (v16u8)sum0);
	sum1 = (v2i64)__builtin_msa_xor_v((v16u8)sum1, (v16u8)sum1);
	sum2 = (v2i64)__builtin_msa_xor_v((v16u8)sum2, (v16u8)sum2);

	sum3 = (v2i64)__builtin_msa_xor_v((v16u8)sum3, (v16u8)sum3);
	sum4 = (v2i64)__builtin_msa_xor_v((v16u8)sum4, (v16u8)sum4);
	sum5 = (v2i64)__builtin_msa_xor_v((v16u8)sum5, (v16u8)sum5);
	
	for (int i = 0; i < 16; i++)
	{
		LD_V2_H(pix1, &tmp0, &tmp1);
		LD_V2_H(pix2, &tmp2, &tmp3);
		LD_V2_H(pix3, &tmp4, &tmp5);
		LD_V2_H(pix4, &tmp6, &tmp7);
		
		LD_V2_H(pix1 + (intptr_t)64, &tmp8, &tmp9);
		LD_V2_H(pix2 + frefstride, &tmp10, &tmp11);
		LD_V2_H(pix3 + frefstride, &tmp12, &tmp13);
		LD_V2_H(pix4 + frefstride, &tmp14, &tmp15);
		
		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp2);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp3);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp6);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp7);
	
		rest6 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp10);
		rest7 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp11);
		rest8 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp12);
		rest9 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp13);
		rest10 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp14);
		rest11 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp15);
		
		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);
		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
	
		mid6 = __builtin_lsx_vacc8b_u_d(rest6);
		mid7 = __builtin_lsx_vacc8b_u_d(rest7);
		mid8 = __builtin_lsx_vacc8b_u_d(rest8);
		mid9 = __builtin_lsx_vacc8b_u_d(rest9);
		mid10 = __builtin_lsx_vacc8b_u_d(rest10);
		mid11 = __builtin_lsx_vacc8b_u_d(rest11);
		
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid1);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid5);
		
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid6);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);
		sum4 = __builtin_msa_addv_d(sum4, (v2i64)mid8);
		sum4 = __builtin_msa_addv_d(sum4, (v2i64)mid9);
		sum5 = __builtin_msa_addv_d(sum5, (v2i64)mid10);
		sum5 = __builtin_msa_addv_d(sum5, (v2i64)mid11);
		
		pix1 += 2 * (intptr_t)64;
		pix2 += 2 * frefstride;
		pix3 += 2 * frefstride;
		pix4 += 2 * frefstride;		
	}
	
	res[0] = ((v4u32)sum0)[0] + ((v4u32)sum0)[2];
	res[1] = ((v4u32)sum1)[0] + ((v4u32)sum1)[2];
	res[2] = ((v4u32)sum2)[0] + ((v4u32)sum2)[2];

	res[0] += ((v4u32)sum3)[0] + ((v4u32)sum3)[2];
	res[1] += ((v4u32)sum4)[0] + ((v4u32)sum4)[2];	
	res[2] += ((v4u32)sum5)[0] + ((v4u32)sum5)[2];
	//printf("32x32 result = %d\t%d\t%d\n", res[0], res[1], res[2]);
	
	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
    	{
        	for (int x = 0; x < 32; x++)
       		{
            		t_res[0] += abs(t_pix1[x] - t_pix2[x]);
            		t_res[1] += abs(t_pix1[x] - t_pix3[x]);
            		t_res[2] += abs(t_pix1[x] - t_pix4[x]);
        	}

        	t_pix1 += FENC_STRIDE;
        	t_pix2 += frefstride;
        	t_pix3 += frefstride;
        	t_pix4 += frefstride;
    	}
	
	if(t_res[0] == res[0] && t_res[1] == res[1] && t_res[2] == res[2])
		printf("sad_x3_32x32 test success\n");
	else
		printf("sad_x3_32x32 test fail\n");	
	#endif
}

void sad_x3_64x64(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, intptr_t frefstride, int32_t* res)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2, *t_pix3, *t_pix4;
	int32_t t_res[3] = {0, 0, 0};
	t_pix1 = pix1;
	t_pix2 = pix2;
	t_pix3 = pix3;
	t_pix4 = pix4;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v16u8 rest0, rest1, rest2, rest3, rest4, rest5;	
	v2u64 mid0, mid1, mid2, mid3, mid4, mid5;
	v2i64 sum0, sum1, sum2;
	
	sum0 = (v2i64)__builtin_msa_xor_v((v16u8)sum0, (v16u8)sum0);
	sum1 = (v2i64)__builtin_msa_xor_v((v16u8)sum1, (v16u8)sum1);
	sum2 = (v2i64)__builtin_msa_xor_v((v16u8)sum2, (v16u8)sum2);

	for (int i = 0; i < 64; i++)
	{
		LD_V2_H(pix1, &tmp0, &tmp1);
		LD_V2_H(pix2, &tmp2, &tmp3);
		LD_V2_H(pix3, &tmp4, &tmp5);
		LD_V2_H(pix4, &tmp6, &tmp7);
		
		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp2);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp3);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp6);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp7);
		
		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);
		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
		
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid1);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid5);
		
		LD_V2_H(pix1 + 32, &tmp0, &tmp1);
		LD_V2_H(pix2 + 32, &tmp2, &tmp3);
		LD_V2_H(pix3 + 32, &tmp4, &tmp5);
		LD_V2_H(pix4 + 32, &tmp6, &tmp7);
		
		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp2);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp3);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp6);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp7);
		
		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);
		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
		
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid1);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid5);

		pix1 += (intptr_t)64;
		pix2 += frefstride;
		pix3 += frefstride;
		pix4 += frefstride;		
	}
	
	res[0] = ((v4u32)sum0)[0] + ((v4u32)sum0)[2];
	res[1] = ((v4u32)sum1)[0] + ((v4u32)sum1)[2];
	res[2] = ((v4u32)sum2)[0] + ((v4u32)sum2)[2];
	
	//printf("64x64 result = %d\t%d\t%d\n", res[0], res[1], res[2]);
	
	#ifdef DEBUG
	for (int y = 0; y < 64; y++)
    	{
        	for (int x = 0; x < 64; x++)
       		{
            		t_res[0] += abs(t_pix1[x] - t_pix2[x]);
            		t_res[1] += abs(t_pix1[x] - t_pix3[x]);
            		t_res[2] += abs(t_pix1[x] - t_pix4[x]);
        	}

        	t_pix1 += FENC_STRIDE;
        	t_pix2 += frefstride;
        	t_pix3 += frefstride;
        	t_pix4 += frefstride;
    	}
	
	if(t_res[0] == res[0] && t_res[1] == res[1] && t_res[2] == res[2])
		printf("sad_x3_64x64 test success\n");
	else
		printf("sad_x3_64x64 test fail\n");	
	#endif
}

template<int lx, int ly>
void sad_x3(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, intptr_t frefstride, int32_t* res)
{
    res[0] = 0;
    res[1] = 0;
    res[2] = 0;

        for (int y = 0; y < ly; y++)
    	{
        	for (int x = 0; x < lx; x++)
       		{
            		res[0] += abs(pix1[x] - pix2[x]);
            		res[1] += abs(pix1[x] - pix3[x]);
            		res[2] += abs(pix1[x] - pix4[x]);
        	}

        	pix1 += FENC_STRIDE;
        	pix2 += frefstride;
        	pix3 += frefstride;
        	pix4 += frefstride;
    	}
}

//------------------------------------------------------------------------------------------------------------------------------------------------------
//void sad_x4(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, const pixel* pix5, intptr_t frefstride, int32_t* res)
//enable size 8x8, 16x16, 32x32, 64x64
//------------------------------------------------------------------------------------------------------------------------------------------------------

void sad_x4_8x8(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, const pixel* pix5, intptr_t frefstride, int32_t* res)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2, *t_pix3, *t_pix4, *t_pix5;
	int32_t t_res[4] = {0, 0, 0, 0};
	t_pix1 = pix1;
	t_pix2 = pix2;
	t_pix3 = pix3;
	t_pix4 = pix4;
	t_pix5 = pix5;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v2i64 mid4, mid5, mid6, mid7;
	v16u8 rest0, rest1, rest2, rest3;	
	v2u64 mid0, mid1, mid2, mid3;
	
	//L_8x8_B(pix1, (intptr_t)64, &tmp0, &tmp1, &tmp2, &tmp3);
	//L_8x8_B(pix2, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
 	
	LD4(pix1, (intptr_t)64, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4(pix1 + 4 * (intptr_t)64, (intptr_t)64, &tmp8, &tmp9, &tmp10, &tmp11);
	tmp0 = __builtin_msa_insve_d(tmp0, 1, tmp8);
	tmp1 = __builtin_msa_insve_d(tmp1, 1, tmp9);
	tmp2 = __builtin_msa_insve_d(tmp2, 1, tmp10);
	tmp3 = __builtin_msa_insve_d(tmp3, 1, tmp11);

	LD4(pix2, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix2 + 4 * frefstride, frefstride, &tmp12, &tmp13, &tmp14, &tmp15);
	tmp4 = __builtin_msa_insve_d(tmp4, 1, tmp12);
	tmp5 = __builtin_msa_insve_d(tmp5, 1, tmp13);
	tmp6 = __builtin_msa_insve_d(tmp6, 1, tmp14);
	tmp7 = __builtin_msa_insve_d(tmp7, 1, tmp15);
	
	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid1);
	mid2 = (v2u64)__builtin_msa_addv_d((v2i64)mid2, (v2i64)mid3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid2);
	res[0] = ((v4u32)mid0)[0] + ((v4u32)mid0)[2];

	//L_8x8_B(pix3, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	
	LD4(pix3, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix3 + 4 * frefstride, frefstride, &mid4, &mid5, &mid6, &mid7);
	tmp4 = __builtin_msa_insve_d(tmp4, 1, mid4);
	tmp5 = __builtin_msa_insve_d(tmp5, 1, mid5);
	tmp6 = __builtin_msa_insve_d(tmp6, 1, mid6);
	tmp7 = __builtin_msa_insve_d(tmp7, 1, mid7);

	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid1);
	mid2 = (v2u64)__builtin_msa_addv_d((v2i64)mid2, (v2i64)mid3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid2);
	res[1] = ((v4u32)mid0)[0] + ((v4u32)mid0)[2];

	//L_8x8_B(pix4, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix4, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix4 + 4 * frefstride, frefstride, &mid4, &mid5, &mid6, &mid7);
	tmp4 = __builtin_msa_insve_d(tmp4, 1, mid4);
	tmp5 = __builtin_msa_insve_d(tmp5, 1, mid5);
	tmp6 = __builtin_msa_insve_d(tmp6, 1, mid6);
	tmp7 = __builtin_msa_insve_d(tmp7, 1, mid7);

	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid1);
	mid2 = (v2u64)__builtin_msa_addv_d((v2i64)mid2, (v2i64)mid3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid2);
	res[2] = ((v4u32)mid0)[0] + ((v4u32)mid0)[2];
	
	LD4(pix5, frefstride, &tmp4, &tmp5, &tmp6, &tmp7);
	LD4(pix5 + 4 * frefstride, frefstride, &mid4, &mid5, &mid6, &mid7);
	tmp4 = __builtin_msa_insve_d(tmp4, 1, mid4);
	tmp5 = __builtin_msa_insve_d(tmp5, 1, mid5);
	tmp6 = __builtin_msa_insve_d(tmp6, 1, mid6);
	tmp7 = __builtin_msa_insve_d(tmp7, 1, mid7);

	rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
	rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
	rest2 = __builtin_msa_asub_u_b((v16u8)tmp2, (v16u8)tmp6);
	rest3 = __builtin_msa_asub_u_b((v16u8)tmp3, (v16u8)tmp7);
	mid0 = __builtin_lsx_vacc8b_u_d(rest0);
	mid1 = __builtin_lsx_vacc8b_u_d(rest1);
	mid2 = __builtin_lsx_vacc8b_u_d(rest2);
	mid3 = __builtin_lsx_vacc8b_u_d(rest3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid1);
	mid2 = (v2u64)__builtin_msa_addv_d((v2i64)mid2, (v2i64)mid3);
	mid0 = (v2u64)__builtin_msa_addv_d((v2i64)mid0, (v2i64)mid2);
	res[3] = ((v4u32)mid0)[0] + ((v4u32)mid0)[2];

	//printf("8x8 result = %d\t%d\t%d\n", res[0], res[1], res[2]);
	
	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
    	{
        	for (int x = 0; x < 8; x++)
        	{
            		t_res[0] += abs(t_pix1[x] - t_pix2[x]);
            		t_res[1] += abs(t_pix1[x] - t_pix3[x]);
            		t_res[2] += abs(t_pix1[x] - t_pix4[x]);
            		t_res[3] += abs(t_pix1[x] - t_pix5[x]);
        	}	

        		t_pix1 += FENC_STRIDE;
        		t_pix2 += frefstride;
        		t_pix3 += frefstride;
        		t_pix4 += frefstride;
        		t_pix5 += frefstride;
    	}
	
	if(t_res[0] == res[0] && t_res[1] == res[1] && t_res[2] == res[2] && t_res[3] == res[3])
		printf("sad_x4_8x8 test success\n");
	else 
		printf("sad_x4_8x8 test fail\n");
	#endif
}

void sad_x4_16x16(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, const pixel* pix5, intptr_t frefstride, int32_t* res)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2, *t_pix3, *t_pix4, *t_pix5;
	int32_t t_res[4] = {0, 0, 0, 0};
	t_pix1 = pix1;
	t_pix2 = pix2;
	t_pix3 = pix3;
	t_pix4 = pix4;
	t_pix5 = pix5;
	#endif
	
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v16u8 rest0, rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8, rest9, rest10, rest11, cen4, cen5, cen6, cen7;
	v2u64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7, mid8, mid9, mid10, mid11, cen8, cen9, cen10, cen11;
	v2i64 sum0, sum1, sum2, sum3, sum4, sum5, sum6, sum7;
	v2i64 cen0, cen1, cen2, cen3;
	
	sum0 = (v2i64)__builtin_msa_xor_v((v16u8)sum0, (v16u8)sum0);
	sum1 = (v2i64)__builtin_msa_xor_v((v16u8)sum1, (v16u8)sum1);
	sum2 = (v2i64)__builtin_msa_xor_v((v16u8)sum2, (v16u8)sum2);

	sum3 = (v2i64)__builtin_msa_xor_v((v16u8)sum3, (v16u8)sum3);
	sum4 = (v2i64)__builtin_msa_xor_v((v16u8)sum4, (v16u8)sum4);
	sum5 = (v2i64)__builtin_msa_xor_v((v16u8)sum5, (v16u8)sum5);

	sum6 = (v2i64)__builtin_msa_xor_v((v16u8)sum6, (v16u8)sum6);
	sum7 = (v2i64)__builtin_msa_xor_v((v16u8)sum7, (v16u8)sum7);

	for (int i = 0; i < 4; i++)
	{
		LD_V2(pix1, (intptr_t)64, &tmp0, &tmp1);
		LD_V2(pix2, frefstride, &tmp2, &tmp3);
		LD_V2(pix3, frefstride, &tmp4, &tmp5);
		LD_V2(pix4, frefstride, &tmp6, &tmp7);
		LD_V2(pix5, frefstride, &cen0, &cen1);	
		
		LD_V2(pix1 + 2 * (intptr_t)64, (intptr_t)64, &tmp8, &tmp9);
		LD_V2(pix2 + 2 * frefstride, frefstride, &tmp10, &tmp11);
		LD_V2(pix3 + 2 * frefstride, frefstride, &tmp12, &tmp13);
		LD_V2(pix4 + 2 * frefstride, frefstride, &tmp14, &tmp15);
		LD_V2(pix5 + 2 * frefstride, frefstride, &cen2, &cen3);
		
		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp2);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp3);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp6);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp7);
		cen4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)cen0);
		cen5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)cen1);
		
		rest6 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp10);
		rest7 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp11);
		rest8 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp12);
		rest9 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp13);
		rest10 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp14);
		rest11 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp15);
		cen6 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)cen2);
		cen7 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)cen3);

		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);
		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
		cen8 = __builtin_lsx_vacc8b_u_d(cen4);
		cen9 = __builtin_lsx_vacc8b_u_d(cen5);
		
		mid6 = __builtin_lsx_vacc8b_u_d(rest6);
		mid7 = __builtin_lsx_vacc8b_u_d(rest7);
		mid8 = __builtin_lsx_vacc8b_u_d(rest8);
		mid9 = __builtin_lsx_vacc8b_u_d(rest9);
		mid10 = __builtin_lsx_vacc8b_u_d(rest10);
		mid11 = __builtin_lsx_vacc8b_u_d(rest11);
		cen10 = __builtin_lsx_vacc8b_u_d(cen6);
		cen11 = __builtin_lsx_vacc8b_u_d(cen7);
		
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid1);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid5);

		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid6);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);
		sum4 = __builtin_msa_addv_d(sum4, (v2i64)mid8);
		sum4 = __builtin_msa_addv_d(sum4, (v2i64)mid9);
		sum5 = __builtin_msa_addv_d(sum5, (v2i64)mid10);
		sum5 = __builtin_msa_addv_d(sum5, (v2i64)mid11);
	
		sum6 = __builtin_msa_addv_d(sum6, (v2i64)cen8);
		sum6 = __builtin_msa_addv_d(sum6, (v2i64)cen9);
		sum7 = __builtin_msa_addv_d(sum7, (v2i64)cen10);
		sum7 = __builtin_msa_addv_d(sum7, (v2i64)cen11);	
	
		pix1 += 4 * (intptr_t)64;
		pix2 += 4 * frefstride;
		pix3 += 4 * frefstride;
	 	pix4 += 4 * frefstride;
		pix5 += 4 * frefstride;
	}
	
	res[0] = ((v4u32)sum0)[0] + ((v4u32)sum0)[2];
	res[1] = ((v4u32)sum1)[0] + ((v4u32)sum1)[2];
	res[2] = ((v4u32)sum2)[0] + ((v4u32)sum2)[2];
	
	res[0] += ((v4u32)sum3)[0] + ((v4u32)sum3)[2];
	res[1] += ((v4u32)sum4)[0] + ((v4u32)sum4)[2];
	res[2] += ((v4u32)sum5)[0] + ((v4u32)sum5)[2];

	res[3] = ((v4u32)sum6)[0] + ((v4u32)sum6)[2];
	res[3] += ((v4u32)sum7)[0] + ((v4u32)sum7)[2];	
	
	//printf("16x16 result = %d\t%d\t%d\t%d\n", res[0], res[1], res[2], res[3]);
	
	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
    	{
        	for (int x = 0; x < 16; x++)
        	{
            		t_res[0] += abs(t_pix1[x] - t_pix2[x]);
            		t_res[1] += abs(t_pix1[x] - t_pix3[x]);
            		t_res[2] += abs(t_pix1[x] - t_pix4[x]);
            		t_res[3] += abs(t_pix1[x] - t_pix5[x]);
        	}	

        		t_pix1 += FENC_STRIDE;
        		t_pix2 += frefstride;
        		t_pix3 += frefstride;
        		t_pix4 += frefstride;
        		t_pix5 += frefstride;
    	}
	
	if(t_res[0] == res[0] && t_res[1] == res[1] && t_res[2] == res[2] && t_res[3] == res[3])
		printf("sad_x4_16x16 test success\n");
	else 
		printf("sad_x4_16x16 test fail\n");
	#endif
}

void sad_x4_32x32(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, const pixel* pix5, intptr_t frefstride, int32_t* res)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2, *t_pix3, *t_pix4, *t_pix5;
	int32_t t_res[4] = {0, 0, 0, 0};
	t_pix1 = pix1;
	t_pix2 = pix2;
	t_pix3 = pix3;
	t_pix4 = pix4;
	t_pix5 = pix5;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v16u8 rest0, rest1, rest2, rest3, rest4, rest5, rest6, rest7, rest8, rest9, rest10, rest11, cen4, cen5, cen6, cen7;	
	v2u64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7, mid8, mid9, mid10, mid11, cen8, cen9, cen10, cen11;
	v2i64 sum0, sum1, sum2, sum3, sum4, sum5, sum6, sum7;
	v2i64 cen0, cen1, cen2, cen3;
	
	sum0 = (v2i64)__builtin_msa_xor_v((v16u8)sum0, (v16u8)sum0);
	sum1 = (v2i64)__builtin_msa_xor_v((v16u8)sum1, (v16u8)sum1);
	sum2 = (v2i64)__builtin_msa_xor_v((v16u8)sum2, (v16u8)sum2);

	sum3 = (v2i64)__builtin_msa_xor_v((v16u8)sum3, (v16u8)sum3);
	sum4 = (v2i64)__builtin_msa_xor_v((v16u8)sum4, (v16u8)sum4);
	sum5 = (v2i64)__builtin_msa_xor_v((v16u8)sum5, (v16u8)sum5);
	
	sum6 = (v2i64)__builtin_msa_xor_v((v16u8)sum6, (v16u8)sum6);
	sum7 = (v2i64)__builtin_msa_xor_v((v16u8)sum7, (v16u8)sum7);

	for (int i = 0; i < 16; i++)
	{
		LD_V2_H(pix1, &tmp0, &tmp1);
		LD_V2_H(pix2, &tmp2, &tmp3);
		LD_V2_H(pix3, &tmp4, &tmp5);
		LD_V2_H(pix4, &tmp6, &tmp7);
		LD_V2_H(pix5, &cen0, &cen1);	
		
		LD_V2_H(pix1 + (intptr_t)64, &tmp8, &tmp9);
		LD_V2_H(pix2 + frefstride, &tmp10, &tmp11);
		LD_V2_H(pix3 + frefstride, &tmp12, &tmp13);
		LD_V2_H(pix4 + frefstride, &tmp14, &tmp15);
		LD_V2_H(pix5 + frefstride, &cen2, &cen3);
		
		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp2);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp3);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp6);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp7);
		cen4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)cen0);
		cen5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)cen1);
		
		rest6 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp10);
		rest7 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp11);
		rest8 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp12);
		rest9 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp13);
		rest10 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)tmp14);
		rest11 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)tmp15);
		cen6 = __builtin_msa_asub_u_b((v16u8)tmp8, (v16u8)cen2);
		cen7 = __builtin_msa_asub_u_b((v16u8)tmp9, (v16u8)cen3);
		
		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);
		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
		cen8 = __builtin_lsx_vacc8b_u_d(cen4);
		cen9 = __builtin_lsx_vacc8b_u_d(cen5);
		
		mid6 = __builtin_lsx_vacc8b_u_d(rest6);
		mid7 = __builtin_lsx_vacc8b_u_d(rest7);
		mid8 = __builtin_lsx_vacc8b_u_d(rest8);
		mid9 = __builtin_lsx_vacc8b_u_d(rest9);
		mid10 = __builtin_lsx_vacc8b_u_d(rest10);
		mid11 = __builtin_lsx_vacc8b_u_d(rest11);
		cen10 = __builtin_lsx_vacc8b_u_d(cen6);
		cen11 = __builtin_lsx_vacc8b_u_d(cen7);

		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid1);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid5);
		
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid6);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);
		sum4 = __builtin_msa_addv_d(sum4, (v2i64)mid8);
		sum4 = __builtin_msa_addv_d(sum4, (v2i64)mid9);
		sum5 = __builtin_msa_addv_d(sum5, (v2i64)mid10);
		sum5 = __builtin_msa_addv_d(sum5, (v2i64)mid11);
			
		sum6 = __builtin_msa_addv_d(sum6, (v2i64)cen8);
		sum6 = __builtin_msa_addv_d(sum6, (v2i64)cen9);
		sum7 = __builtin_msa_addv_d(sum7, (v2i64)cen10);
		sum7 = __builtin_msa_addv_d(sum7, (v2i64)cen11);	
		
		pix1 += 2 * (intptr_t)64;
		pix2 += 2 * frefstride;
		pix3 += 2 * frefstride;
		pix4 += 2 * frefstride;		
		pix5 += 2 * frefstride;
	}
	
	res[0] = ((v4u32)sum0)[0] + ((v4u32)sum0)[2];
	res[1] = ((v4u32)sum1)[0] + ((v4u32)sum1)[2];
	res[2] = ((v4u32)sum2)[0] + ((v4u32)sum2)[2];

	res[0] += ((v4u32)sum3)[0] + ((v4u32)sum3)[2];
	res[1] += ((v4u32)sum4)[0] + ((v4u32)sum4)[2];	
	res[2] += ((v4u32)sum5)[0] + ((v4u32)sum5)[2];
	
	res[3] = ((v4u32)sum6)[0] + ((v4u32)sum6)[2];
	res[3] += ((v4u32)sum7)[0] + ((v4u32)sum7)[2];	
	
	//printf("32x32 result = %d\t%d\t%d\t%d \n", res[0], res[1], res[2], rest[3]);
	
	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
    	{
        	for (int x = 0; x < 32; x++)
        	{
            		t_res[0] += abs(t_pix1[x] - t_pix2[x]);
            		t_res[1] += abs(t_pix1[x] - t_pix3[x]);
            		t_res[2] += abs(t_pix1[x] - t_pix4[x]);
            		t_res[3] += abs(t_pix1[x] - t_pix5[x]);
        	}	

        		t_pix1 += FENC_STRIDE;
        		t_pix2 += frefstride;
        		t_pix3 += frefstride;
        		t_pix4 += frefstride;
        		t_pix5 += frefstride;
    	}
	
	if(t_res[0] == res[0] && t_res[1] == res[1] && t_res[2] == res[2] && t_res[3] == res[3])
		printf("sad_x4_32x32 test success\n");
	else 
		printf("sad_x4_32x32 test fail\n");
	#endif
}

void sad_x4_64x64(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, const pixel* pix5, intptr_t frefstride, int32_t* res)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2, *t_pix3, *t_pix4, *t_pix5;
	int32_t t_res[4] = {0, 0, 0, 0};
	t_pix1 = pix1;
	t_pix2 = pix2;
	t_pix3 = pix3;
	t_pix4 = pix4;
	t_pix5 = pix5;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v16u8 rest0, rest1, rest2, rest3, rest4, rest5, rest6, rest7;	
	v2u64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v2i64 sum0, sum1, sum2, sum3;
	v2i64 cen0, cen1;
	
	sum0 = (v2i64)__builtin_msa_xor_v((v16u8)sum0, (v16u8)sum0);
	sum1 = (v2i64)__builtin_msa_xor_v((v16u8)sum1, (v16u8)sum1);
	sum2 = (v2i64)__builtin_msa_xor_v((v16u8)sum2, (v16u8)sum2);
	sum3 = (v2i64)__builtin_msa_xor_v((v16u8)sum3, (v16u8)sum3);
	
	for (int i = 0; i < 64; i++)
	{
		LD_V2_H(pix1, &tmp0, &tmp1);
		LD_V2_H(pix2, &tmp2, &tmp3);
		LD_V2_H(pix3, &tmp4, &tmp5);
		LD_V2_H(pix4, &tmp6, &tmp7);
		LD_V2_H(pix5, &cen0, &cen1);
	
		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp2);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp3);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp6);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp7);
		rest6 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)cen0);
		rest7 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)cen1);
		
		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);
		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
		mid6 = __builtin_lsx_vacc8b_u_d(rest6);
		mid7 = __builtin_lsx_vacc8b_u_d(rest7);
		
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid1);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid5);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid6);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);
		
		LD_V2_H(pix1 + 32, &tmp0, &tmp1);
		LD_V2_H(pix2 + 32, &tmp2, &tmp3);
		LD_V2_H(pix3 + 32, &tmp4, &tmp5);
		LD_V2_H(pix4 + 32, &tmp6, &tmp7);
		LD_V2_H(pix5 + 32, &cen0, &cen1);

		rest0 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp2);
		rest1 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp3);
		rest2 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp4);
		rest3 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp5);
		rest4 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)tmp6);
		rest5 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)tmp7);
		rest6 = __builtin_msa_asub_u_b((v16u8)tmp0, (v16u8)cen0);
		rest7 = __builtin_msa_asub_u_b((v16u8)tmp1, (v16u8)cen1);

		mid0 = __builtin_lsx_vacc8b_u_d(rest0);
		mid1 = __builtin_lsx_vacc8b_u_d(rest1);
		mid2 = __builtin_lsx_vacc8b_u_d(rest2);
		mid3 = __builtin_lsx_vacc8b_u_d(rest3);
		mid4 = __builtin_lsx_vacc8b_u_d(rest4);
		mid5 = __builtin_lsx_vacc8b_u_d(rest5);
		mid6 = __builtin_lsx_vacc8b_u_d(rest6);
		mid7 = __builtin_lsx_vacc8b_u_d(rest7);

		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid0);
		sum0 = __builtin_msa_addv_d(sum0, (v2i64)mid1);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid2);
		sum1 = __builtin_msa_addv_d(sum1, (v2i64)mid3);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid4);
		sum2 = __builtin_msa_addv_d(sum2, (v2i64)mid5);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid6);
		sum3 = __builtin_msa_addv_d(sum3, (v2i64)mid7);

		pix1 += (intptr_t)64;
		pix2 += frefstride;
		pix3 += frefstride;
		pix4 += frefstride;		
		pix5 += frefstride;
	}
	
	res[0] = ((v4u32)sum0)[0] + ((v4u32)sum0)[2];
	res[1] = ((v4u32)sum1)[0] + ((v4u32)sum1)[2];
	res[2] = ((v4u32)sum2)[0] + ((v4u32)sum2)[2];
	res[3] = ((v4u32)sum3)[0] + ((v4u32)sum3)[2]; 	

	//printf("64x64 result = %d\t%d\t%d\t%d\n", res[0], res[1], res[2], res[3]);
	
	#ifdef DEBUG
	for (int y = 0; y < 64; y++)
    	{
        	for (int x = 0; x < 64; x++)
        	{
            		t_res[0] += abs(t_pix1[x] - t_pix2[x]);
            		t_res[1] += abs(t_pix1[x] - t_pix3[x]);
            		t_res[2] += abs(t_pix1[x] - t_pix4[x]);
            		t_res[3] += abs(t_pix1[x] - t_pix5[x]);
        	}	

        		t_pix1 += FENC_STRIDE;
        		t_pix2 += frefstride;
        		t_pix3 += frefstride;
        		t_pix4 += frefstride;
        		t_pix5 += frefstride;
    	}
	
	if(t_res[0] == res[0] && t_res[1] == res[1] && t_res[2] == res[2] && t_res[3] == res[3])
		printf("sad_x4_64x64 test success\n");
	else 
		printf("sad_x4_64x64 test fail\n");
	#endif
}

template<int lx, int ly>
void sad_x4(const pixel* pix1, const pixel* pix2, const pixel* pix3, const pixel* pix4, const pixel* pix5, intptr_t frefstride, int32_t* res)
{
    res[0] = 0;
    res[1] = 0;
    res[2] = 0;
    res[3] = 0;

      	for (int y = 0; y < ly; y++)
    	{
        	for (int x = 0; x < lx; x++)
        	{
            		res[0] += abs(pix1[x] - pix2[x]);
            		res[1] += abs(pix1[x] - pix3[x]);
            		res[2] += abs(pix1[x] - pix4[x]);
            		res[3] += abs(pix1[x] - pix5[x]);
        	}	

        	pix1 += FENC_STRIDE;
        	pix2 += frefstride;
        	pix3 += frefstride;
        	pix4 += frefstride;
        	pix5 += frefstride;
    	}
}

//-------------------------------------------------------------------------------------------------------------
//uint32_t sse_pp_a(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
//enable size 4x4, 8x8, 16x16, 32x32, 64x64
//-------------------------------------------------------------------------------------------------------------

uint32_t sse_pp_a_4x4(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	uint32_t t_sum = 0;
	int tmp;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif
	
	uint32_t sum = 0;
	v8u16 tmp0, tmp1, tmp2, tmp3;
	v8i16 mid0, mid1;
	v4i32 res0;
	
	L_4x4_B_H(pix1, stride_pix1, &tmp0, &tmp1);
	L_4x4_B_H(pix2, stride_pix2, &tmp2, &tmp3);

	mid0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp2);
	mid1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp3);		

	res0 = __builtin_msa_dotp_s_w(mid0, mid0);
	res0 = __builtin_msa_dpadd_s_w(res0, mid1, mid1);

	sum = res0[0] + res0[1] + res0[2] + res0[3];
		
	#ifdef DEBUG
	for (int y = 0; y < 4; y++)
	{
		for (int x = 0; x < 4; x++)
		{
			tmp = t_pix1[x] - t_pix2[x];
			t_sum += (tmp * tmp);
		}
		t_pix1 += stride_pix1;
		t_pix2 += stride_pix2;	
	}
	
	if (sum == t_sum)
		printf("sse_pp_a_4x4 test success\n");
	else 
		printf("sse_pp_a_4x4 test fail\n");
	#endif
	
	return sum;
}

uint32_t sse_pp_a_8x8(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	uint32_t t_sum = 0;
	int tmp;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	uint32_t sum = 0;
	v8u16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v8i16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v4i32 res0, res1, res2, res3;

	LD4_BtoH(pix1, stride_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4_BtoH(pix2, stride_pix2, &tmp4, &tmp5, &tmp6, &tmp7);

	LD4_BtoH(pix1 + 4 * stride_pix1, stride_pix1, &tmp8, &tmp9, &tmp10, &tmp11);
	LD4_BtoH(pix2 + 4 * stride_pix2, stride_pix2, &tmp12, &tmp13, &tmp14, &tmp15);	
	
	mid0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp4);
	mid1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp5);
	mid2 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp6);
	mid3 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp7);
	mid4 = __builtin_msa_subv_h((v8i16)tmp8, (v8i16)tmp12);
	mid5 = __builtin_msa_subv_h((v8i16)tmp9, (v8i16)tmp13);
	mid6 = __builtin_msa_subv_h((v8i16)tmp10, (v8i16)tmp14);
	mid7 = __builtin_msa_subv_h((v8i16)tmp11, (v8i16)tmp15);

	res0 = __builtin_msa_dotp_s_w(mid0, mid0);
	res1 = __builtin_msa_dotp_s_w(mid1, mid1);
	res2 = __builtin_msa_dotp_s_w(mid2, mid2);
	res3 = __builtin_msa_dotp_s_w(mid3, mid3);
	res0 = __builtin_msa_dpadd_s_w(res0, mid4, mid4);
	res1 = __builtin_msa_dpadd_s_w(res1, mid5, mid5);
	res2 = __builtin_msa_dpadd_s_w(res2, mid6, mid6);
	res3 = __builtin_msa_dpadd_s_w(res3, mid7, mid7);
		
	res0 = __builtin_msa_addv_w(res0, res1);
	res2 = __builtin_msa_addv_w(res2, res3);
	res0 = __builtin_msa_addv_w(res0, res2);
	
	sum = res0[0] + res0[1] + res0[2] + res0[3];
	
	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
	{
		for (int x = 0; x < 8; x++)
		{
			tmp = t_pix1[x] - t_pix2[x];
			t_sum += (tmp * tmp);
		}
		t_pix1 += stride_pix1;
		t_pix2 += stride_pix2;	
	}
	
	if (sum == t_sum)
		printf("sse_pp_a_8x8 test success\n");
	else 
		printf("sse_pp_a_8x8 test fail\n");
	#endif

	return sum;
}

uint32_t sse_pp_a_16x16(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	uint32_t t_sum = 0;
	int tmp;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	uint32_t sum = 0;	
	v8u16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v8i16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v4i32 res0, res1, res2, res3;
	
	res0 = (v4i32)__builtin_msa_xor_v((v16u8)res0, (v16u8)res0);
	res1 = (v4i32)__builtin_msa_xor_v((v16u8)res1, (v16u8)res1);
	res2 = (v4i32)__builtin_msa_xor_v((v16u8)res2, (v16u8)res2);
	res3 = (v4i32)__builtin_msa_xor_v((v16u8)res3, (v16u8)res3);
	
	for (int i = 4; i > 0; i--)
	{
		LD2_H_BtoH(pix1, &tmp0, &tmp1);
		LD2_H_BtoH(pix1 + stride_pix1, &tmp2, &tmp3);	
		LD2_H_BtoH(pix1 + 2 * stride_pix1, &tmp4, &tmp5);
		LD2_H_BtoH(pix1 + 3 * stride_pix1, &tmp6, &tmp7);
		LD2_H_BtoH(pix2, &tmp8, &tmp9);
		LD2_H_BtoH(pix2 + stride_pix2, &tmp10, &tmp11);
		LD2_H_BtoH(pix2 + 2 * stride_pix2, &tmp12, &tmp13);
		LD2_H_BtoH(pix2 + 3 * stride_pix2, &tmp14, &tmp15);

		mid0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp8);
		mid1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp9);
		mid2 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp10);
		mid3 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp11);
		mid4 = __builtin_msa_subv_h((v8i16)tmp4, (v8i16)tmp12);
		mid5 = __builtin_msa_subv_h((v8i16)tmp5, (v8i16)tmp13);
		mid6 = __builtin_msa_subv_h((v8i16)tmp6, (v8i16)tmp14);
		mid7 = __builtin_msa_subv_h((v8i16)tmp7, (v8i16)tmp15);

		res0 = __builtin_msa_dpadd_s_w(res0, mid0, mid0);
		res1 = __builtin_msa_dpadd_s_w(res1, mid1, mid1);
		res2 = __builtin_msa_dpadd_s_w(res2, mid2, mid2);
		res3 = __builtin_msa_dpadd_s_w(res3, mid3, mid3);
		res0 = __builtin_msa_dpadd_s_w(res0, mid4, mid4);
		res1 = __builtin_msa_dpadd_s_w(res1, mid5, mid5);
		res2 = __builtin_msa_dpadd_s_w(res2, mid6, mid6);
		res3 = __builtin_msa_dpadd_s_w(res3, mid7, mid7);
		
		pix1 += 4 * stride_pix1;
		pix2 += 4 * stride_pix2;
	}
	
	res0 = __builtin_msa_addv_w(res0, res1);
	res2 = __builtin_msa_addv_w(res2, res3);
	res0 = __builtin_msa_addv_w(res0, res2);
	
	sum = res0[0] + res0[1] + res0[2] + res0[3];
	
	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
	{
		for (int x = 0; x < 16; x++)
		{
			tmp = t_pix1[x] - t_pix2[x];
			t_sum += (tmp * tmp);
		}
		t_pix1 += stride_pix1;
		t_pix2 += stride_pix2;	
	}
	
	if (sum == t_sum)
		printf("sse_pp_a_16x16 test success\n");
	else 
		printf("sse_pp_a_16x16 test fail\n");
	#endif

	return sum;
}

uint32_t sse_pp_a_32x32(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	uint32_t t_sum = 0;
	int tmp;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	uint32_t sum = 0;	
	v8u16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v8i16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v4i32 res0, res1, res2, res3;
	
	res0 = (v4i32)__builtin_msa_xor_v((v16u8)res0, (v16u8)res0);
	res1 = (v4i32)__builtin_msa_xor_v((v16u8)res1, (v16u8)res1);
	res2 = (v4i32)__builtin_msa_xor_v((v16u8)res2, (v16u8)res2);
	res3 = (v4i32)__builtin_msa_xor_v((v16u8)res3, (v16u8)res3);
	
	for (int i = 16; i > 0; i--)
	{
		LD4_H_BtoH(pix1, &tmp0, &tmp1, &tmp2, &tmp3);
		LD4_H_BtoH(pix1 + stride_pix1, &tmp4, &tmp5, &tmp6, &tmp7);
		LD4_H_BtoH(pix2, &tmp8, &tmp9, &tmp10, &tmp11);
		LD4_H_BtoH(pix2 + stride_pix2, &tmp12, &tmp13, &tmp14, &tmp15);

		mid0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp8);
		mid1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp9);
		mid2 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp10);
		mid3 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp11);
		mid4 = __builtin_msa_subv_h((v8i16)tmp4, (v8i16)tmp12);
		mid5 = __builtin_msa_subv_h((v8i16)tmp5, (v8i16)tmp13);
		mid6 = __builtin_msa_subv_h((v8i16)tmp6, (v8i16)tmp14);
		mid7 = __builtin_msa_subv_h((v8i16)tmp7, (v8i16)tmp15);

		res0 = __builtin_msa_dpadd_s_w(res0, mid0, mid0);
		res1 = __builtin_msa_dpadd_s_w(res1, mid1, mid1);
		res2 = __builtin_msa_dpadd_s_w(res2, mid2, mid2);
		res3 = __builtin_msa_dpadd_s_w(res3, mid3, mid3);
		res0 = __builtin_msa_dpadd_s_w(res0, mid4, mid4);
		res1 = __builtin_msa_dpadd_s_w(res1, mid5, mid5);
		res2 = __builtin_msa_dpadd_s_w(res2, mid6, mid6);
		res3 = __builtin_msa_dpadd_s_w(res3, mid7, mid7);
		
		pix1 += 2 * stride_pix1;
		pix2 += 2 * stride_pix2;
	}
	
	res0 = __builtin_msa_addv_w(res0, res1);
	res2 = __builtin_msa_addv_w(res2, res3);
	res0 = __builtin_msa_addv_w(res0, res2);
	
	sum = res0[0] + res0[1] + res0[2] + res0[3];

	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
	{
		for (int x = 0; x < 32; x++)
		{
			tmp = t_pix1[x] - t_pix2[x];
			t_sum += (tmp * tmp);
		}
		t_pix1 += stride_pix1;
		t_pix2 += stride_pix2;	
	}
	
	if (sum == t_sum)
		printf("sse_pp_a_32x32 test success\n");
	else 
		printf("sse_pp_a_32x32 test fail\n");
	#endif

	return sum;
}

uint32_t sse_pp_a_64x64(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	const pixel *t_pix1, *t_pix2;
	uint32_t t_sum = 0;
	int tmp;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	uint32_t sum = 0;	
	v8u16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v8i16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v4i32 res0, res1, res2, res3;
	
	res0 = (v4i32)__builtin_msa_xor_v((v16u8)res0, (v16u8)res0);
	res1 = (v4i32)__builtin_msa_xor_v((v16u8)res1, (v16u8)res1);
	res2 = (v4i32)__builtin_msa_xor_v((v16u8)res2, (v16u8)res2);
	res3 = (v4i32)__builtin_msa_xor_v((v16u8)res3, (v16u8)res3);
	
	for (int i = 64; i > 0; i--)
	{
		LD4_H_BtoH(pix1, &tmp0, &tmp1, &tmp2, &tmp3);
		LD4_H_BtoH(pix1 + 32, &tmp4, &tmp5, &tmp6, &tmp7);
		LD4_H_BtoH(pix2, &tmp8, &tmp9, &tmp10, &tmp11);
		LD4_H_BtoH(pix2 + 32, &tmp12, &tmp13, &tmp14, &tmp15);

		mid0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp8);
		mid1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp9);
		mid2 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp10);
		mid3 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp11);
		mid4 = __builtin_msa_subv_h((v8i16)tmp4, (v8i16)tmp12);
		mid5 = __builtin_msa_subv_h((v8i16)tmp5, (v8i16)tmp13);
		mid6 = __builtin_msa_subv_h((v8i16)tmp6, (v8i16)tmp14);
		mid7 = __builtin_msa_subv_h((v8i16)tmp7, (v8i16)tmp15);

		res0 = __builtin_msa_dpadd_s_w(res0, mid0, mid0);
		res1 = __builtin_msa_dpadd_s_w(res1, mid1, mid1);
		res2 = __builtin_msa_dpadd_s_w(res2, mid2, mid2);
		res3 = __builtin_msa_dpadd_s_w(res3, mid3, mid3);
		res0 = __builtin_msa_dpadd_s_w(res0, mid4, mid4);
		res1 = __builtin_msa_dpadd_s_w(res1, mid5, mid5);
		res2 = __builtin_msa_dpadd_s_w(res2, mid6, mid6);
		res3 = __builtin_msa_dpadd_s_w(res3, mid7, mid7);
		
		pix1 += stride_pix1;
		pix2 += stride_pix2;
	}
	
	res0 = __builtin_msa_addv_w(res0, res1);
	res2 = __builtin_msa_addv_w(res2, res3);
	res0 = __builtin_msa_addv_w(res0, res2);
	
	sum = res0[0] + res0[1] + res0[2] + res0[3];

	#ifdef DEBUG
	for (int y = 0; y < 64; y++)
	{
		for (int x = 0; x < 64; x++)
		{
			tmp = t_pix1[x] - t_pix2[x];
			t_sum += (tmp * tmp);
		}
		t_pix1 += stride_pix1;
		t_pix2 += stride_pix2;	
	}
	
	if (sum == t_sum)
		printf("sse_pp_a_64x64 test success\n");
	else 
		printf("sse_pp_a_64x64 test fail\n");
	#endif

	return sum;
}

template<int lx, int ly>
sse_t sse_pp_a(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
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

#define BITS_PER_SUM (8 * sizeof(sum_t))

#define HADAMARD4(d0, d1, d2, d3, s0, s1, s2, s3) { \
        sum2_t t0 = s0 + s1; \
        sum2_t t1 = s0 - s1; \
        sum2_t t2 = s2 + s3; \
        sum2_t t3 = s2 - s3; \
        d0 = t0 + t2; \
        d2 = t0 - t2; \
        d1 = t1 + t3; \
        d3 = t1 - t3; \
}

// in: a pseudo-simd number of the form x+(y<<16)
// return: abs(x)+(abs(y)<<16)
inline sum2_t abs2(sum2_t a)
{
    sum2_t s = ((a >> (BITS_PER_SUM - 1)) & (((sum2_t)1 << BITS_PER_SUM) + 1)) * ((sum_t)-1);

    return (a + s) ^ s;
}

//--------------------------------------------------------------------------------------------------
//static int satd_4x4(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
//--------------------------------------------------------------------------------------------------

static int satd_4x4(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
    	#ifdef DEBUG
    	sum2_t tmp[4][2];
    	sum2_t a0, a1, a2, a3, b0, b1;
    	sum2_t t_sum = 0;
    	const pixel *t_pix1, *t_pix2;
    	t_pix1 = pix1;
    	t_pix2 = pix2;   
        #endif

	int sum;
	v4i32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
    	//v16i8 con = {-1, 1, -1, 1, 1, 1, 1, 1, -1, 1, -1, 1, 1, 1, 1, 1};
	v8i16 mid0, mid1, mid4, mid5, mid6, mid7, mid8, mid9;
	v8i16 cen0, cen1, cen2;
	v4i32 res0;
	v8u16 bet0, bet1, bet2, bet3;
	v8i16 bet4, bet5, bet6, bet7;
			
	LW4(pix1, stride_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	LW4(pix2, stride_pix2, &tmp4, &tmp5, &tmp6, &tmp7);

	tmp0 = __builtin_msa_insve_w(tmp0, 1, tmp1);
	tmp2 = __builtin_msa_insve_w(tmp2, 1, tmp3);
	tmp4 = __builtin_msa_insve_w(tmp4, 1, tmp5);
	tmp6 = __builtin_msa_insve_w(tmp6, 1, tmp7);
	
	//mid0 = __builtin_msa_subv_h((v8i16)bet0, (v8i16)bet2);
	//mid1 = __builtin_msa_subv_h((v8i16)bet1, (v8i16)bet3);
	
	//tmp1 = __builtin_msa_shf_w(tmp0, 160);
	//tmp3 = __builtin_msa_shf_w(tmp2, 160);
	//tmp5 = __builtin_msa_shf_w(tmp4, 160);
	//tmp7 = __builtin_msa_shf_w(tmp6, 160);
	
	//tmp1 = (v4i32)__builtin_msa_subv_b((v16i8)tmp1, (v16i8)tmp5);
	//tmp3 = (v4i32)__builtin_msa_subv_b((v16i8)tmp3, (v16i8)tmp7);
		
	bet0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	bet1 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	bet2 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	bet3 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);

	bet4 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	bet5 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	bet6 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	bet7 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);

	tmp0 = __builtin_msa_ilvr_w((v4i32)bet4, (v4i32)bet0);
	tmp1 = __builtin_msa_ilvr_w((v4i32)bet5, (v4i32)bet1);
	tmp2 = __builtin_msa_ilvr_w((v4i32)bet6, (v4i32)bet2);	
	tmp3 = __builtin_msa_ilvr_w((v4i32)bet7, (v4i32)bet3);	

	//mid0 = __builtin_msa_dotp_s_h((v16i8)tmp1, con);
	//mid1 = __builtin_msa_dotp_s_h((v16i8)tmp3, con);
	//mid2 = __builtin_msa_dotp_s_h((v16i8)tmp5, con);
	//mid3 = __builtin_msa_dotp_s_h((v16i8)tmp7, con);

	mid0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp2);
	mid1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp3);
 	
	mid4 = __builtin_msa_addv_h(mid0, mid1);
	mid5 = __builtin_msa_subv_h(mid1, mid0);

	mid6 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)mid5);
	mid7 = (v8i16)__builtin_msa_ilvl_d((v2i64)mid5, (v2i64)mid4);
	
	mid8 = __builtin_msa_addv_h(mid6, mid7);
	mid9 = __builtin_msa_subv_h(mid7, mid6);	

	cen0 = __builtin_msa_ilvod_h(mid9, mid8);
	cen1 = __builtin_msa_ilvev_h(mid9, mid8);

	cen0 = __builtin_lsx_vabs_h(cen0);
	cen1 = __builtin_lsx_vabs_h(cen1);

	cen2 = __builtin_msa_max_s_h(cen0, cen1);	
	
	res0 = __builtin_msa_hadd_s_w(cen2, cen2);
	
	sum = res0[0] + res0[1] + res0[2] + res0[3];

	#ifdef DEBUG
	for (int i = 0; i < 4; i++, t_pix1 += stride_pix1, t_pix2 += stride_pix2)
    	{
        	a0 = t_pix1[0] - t_pix2[0];
        	a1 = t_pix1[1] - t_pix2[1];
        	b0 = (a0 + a1) + ((a0 - a1) << BITS_PER_SUM);
        	a2 = t_pix1[2] - t_pix2[2];
        	a3 = t_pix1[3] - t_pix2[3];
        	b1 = (a2 + a3) + ((a2 - a3) << BITS_PER_SUM);
        	tmp[i][0] = b0 + b1;
        	tmp[i][1] = b0 - b1;
    	}

    	for (int i = 0; i < 2; i++)
    	{
    	    HADAMARD4(a0, a1, a2, a3, tmp[0][i], tmp[1][i], tmp[2][i], tmp[3][i]);
    	    a0 = abs2(a0) + abs2(a1) + abs2(a2) + abs2(a3);
    	    t_sum += ((sum_t)a0) + (a0 >> BITS_PER_SUM);
    	}
	
	if (sum == (t_sum >> 1))
		printf("satd_4x4 test success\n");
	else 
		printf("satd_4x4 test fail\n");
	#endif

	return sum;
}

// x264's SWAR version of satd 8x4, performs two 4x4 SATDs at once
static int satd_c_8x4(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
    sum2_t tmp[4][4];
    sum2_t a0, a1, a2, a3;
    sum2_t sum = 0;

    for (int i = 0; i < 4; i++, pix1 += stride_pix1, pix2 += stride_pix2)
    {
        a0 = (pix1[0] - pix2[0]) + ((sum2_t)(pix1[4] - pix2[4]) << BITS_PER_SUM);
        a1 = (pix1[1] - pix2[1]) + ((sum2_t)(pix1[5] - pix2[5]) << BITS_PER_SUM);
        a2 = (pix1[2] - pix2[2]) + ((sum2_t)(pix1[6] - pix2[6]) << BITS_PER_SUM);
        a3 = (pix1[3] - pix2[3]) + ((sum2_t)(pix1[7] - pix2[7]) << BITS_PER_SUM);
        HADAMARD4(tmp[i][0], tmp[i][1], tmp[i][2], tmp[i][3], a0, a1, a2, a3);
    }

    for (int i = 0; i < 4; i++)
    {
        HADAMARD4(a0, a1, a2, a3, tmp[0][i], tmp[1][i], tmp[2][i], tmp[3][i]);
        sum += abs2(a0) + abs2(a1) + abs2(a2) + abs2(a3);
    }

    return (((sum_t)sum) + (sum >> BITS_PER_SUM)) >> 1;
}

inline static int satd_8x4(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	sum2_t tmp[4][4];
    	sum2_t a0, a1, a2, a3;
    	sum2_t t_sum = 0;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	int sum;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
	v8i16 bet0, bet1, bet2, bet3, bet4, bet5;
	v4i32 out0, out1;

	LD4(pix1, stride_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4(pix2, stride_pix2, &tmp4, &tmp5, &tmp6, &tmp7);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	cen0 = __builtin_msa_subv_h(cen0, cen4); 	
	cen1 = __builtin_msa_subv_h(cen1, cen5); 	
	cen2 = __builtin_msa_subv_h(cen2, cen6); 	
	cen3 = __builtin_msa_subv_h(cen3, cen7); 

	res0 = __builtin_msa_addv_h(cen1, cen0);
	res1 = __builtin_msa_subv_h(cen1, cen0);
	res2 = __builtin_msa_addv_h(cen3, cen2);
        res3 = __builtin_msa_subv_h(cen3, cen2);
	
	res4 = __builtin_msa_addv_h(res2, res0);
	res5 = __builtin_msa_asub_s_h(res2, res0);
	res6 = __builtin_msa_addv_h(res3, res1);
	res7 = __builtin_msa_asub_s_h(res3, res1);

	res4 = __builtin_lsx_vabs_h(res4);
	res7 = __builtin_lsx_vabs_h(res7);

	bet0 = __builtin_msa_ilvod_h(res6, res4);
	bet2 = __builtin_msa_ilvod_h(res7, res5);
	bet1 = __builtin_msa_ilvev_h(res6, res4);
	bet3 = __builtin_msa_ilvev_h(res7, res5);

	bet4 = __builtin_msa_max_s_h(bet0, bet1);
	bet5 = __builtin_msa_max_s_h(bet2, bet3);

	out0 = __builtin_msa_hadd_s_w(bet4, bet4);
	out1 = __builtin_msa_hadd_s_w(bet5, bet5);

	out0 = __builtin_msa_addv_w(out0, out1);

	sum = out0[0] + out0[1] + out0[2] + out0[3];

	#ifdef DEBUG
	for (int i = 0; i < 4; i++, t_pix1 += stride_pix1, t_pix2 += stride_pix2)
    	{
        	a0 = (t_pix1[0] - t_pix2[0]) + ((sum2_t)(t_pix1[4] - t_pix2[4]) << BITS_PER_SUM);
        	a1 = (t_pix1[1] - t_pix2[1]) + ((sum2_t)(t_pix1[5] - t_pix2[5]) << BITS_PER_SUM);
        	a2 = (t_pix1[2] - t_pix2[2]) + ((sum2_t)(t_pix1[6] - t_pix2[6]) << BITS_PER_SUM);
        	a3 = (t_pix1[3] - t_pix2[3]) + ((sum2_t)(t_pix1[7] - t_pix2[7]) << BITS_PER_SUM);
        	HADAMARD4(tmp[i][0], tmp[i][1], tmp[i][2], tmp[i][3], a0, a1, a2, a3);
    	}

   	for (int i = 0; i < 4; i++)
   	{
        	HADAMARD4(a0, a1, a2, a3, tmp[0][i], tmp[1][i], tmp[2][i], tmp[3][i]);
        	t_sum += abs2(a0) + abs2(a1) + abs2(a2) + abs2(a3);
    	}

    	t_sum = (((sum_t)t_sum) + (t_sum >> BITS_PER_SUM)) >> 1;

	if (sum == t_sum)
		printf("satd_8x4 test success\n");
	else 
		printf("satd_8x4 test fail\n");
	#endif

	return sum;
}

//----------------------------------------------------------------------------------------------------
//int satd8(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
//enable size 8x8, 16x16, 32x32, 64x64
//----------------------------------------------------------------------------------------------------

int satd8_8x8(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	int t_satd = 0;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	int satd;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8u16 mid8, mid9, mid10, mid11, mid12, mid13, mid14, mid15;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 cen8, cen9, cen10, cen11, cen12, cen13, cen14, cen15;
	v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
	v8i16 res8, res9, res10, res11, res12, res13, res14, res15;
	v8i16 bet0, bet1, bet2, bet3, bet4, bet5;
	v8i16 bet8, bet9, bet10, bet11, bet12, bet13;
	v4i32 out0, out1, out2, out3, output0, output1;

	LD4(pix1, stride_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	pix1 += 4 * stride_pix1;
	LD4(pix1, stride_pix1, &tmp8, &tmp9, &tmp10, &tmp11);

	LD4(pix2, stride_pix2, &tmp4, &tmp5, &tmp6, &tmp7);
	pix2 += 4 * stride_pix2;
	LD4(pix2, stride_pix2, &tmp12, &tmp13, &tmp14, &tmp15);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);
	
	mid8 = __builtin_msa_hadd_u_h((v16u8)tmp8, (v16u8)tmp8);
	mid9 = __builtin_msa_hadd_u_h((v16u8)tmp9, (v16u8)tmp9);
	mid10 = __builtin_msa_hadd_u_h((v16u8)tmp10, (v16u8)tmp10);
	mid11 = __builtin_msa_hadd_u_h((v16u8)tmp11, (v16u8)tmp11);
	mid12 = __builtin_msa_hadd_u_h((v16u8)tmp12, (v16u8)tmp12);
	mid13 = __builtin_msa_hadd_u_h((v16u8)tmp13, (v16u8)tmp13);
	mid14 = __builtin_msa_hadd_u_h((v16u8)tmp14, (v16u8)tmp14);
	mid15 = __builtin_msa_hadd_u_h((v16u8)tmp15, (v16u8)tmp15);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);
	
	cen8 = __builtin_msa_hsub_u_h((v16u8)tmp8, (v16u8)tmp8);
	cen9 = __builtin_msa_hsub_u_h((v16u8)tmp9, (v16u8)tmp9);
	cen10 = __builtin_msa_hsub_u_h((v16u8)tmp10, (v16u8)tmp10);
	cen11 = __builtin_msa_hsub_u_h((v16u8)tmp11, (v16u8)tmp11);
	cen12 = __builtin_msa_hsub_u_h((v16u8)tmp12, (v16u8)tmp12);
	cen13 = __builtin_msa_hsub_u_h((v16u8)tmp13, (v16u8)tmp13);
	cen14 = __builtin_msa_hsub_u_h((v16u8)tmp14, (v16u8)tmp14);
	cen15 = __builtin_msa_hsub_u_h((v16u8)tmp15, (v16u8)tmp15);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	cen8 = (v8i16)__builtin_msa_insve_d((v2i64)mid8, 1, (v2i64)cen8);
	cen9 = (v8i16)__builtin_msa_insve_d((v2i64)mid9, 1, (v2i64)cen9);
	cen10 = (v8i16)__builtin_msa_insve_d((v2i64)mid10, 1, (v2i64)cen10);
	cen11 = (v8i16)__builtin_msa_insve_d((v2i64)mid11, 1, (v2i64)cen11);
	cen12 = (v8i16)__builtin_msa_insve_d((v2i64)mid12, 1, (v2i64)cen12);
	cen13 = (v8i16)__builtin_msa_insve_d((v2i64)mid13, 1, (v2i64)cen13);
	cen14 = (v8i16)__builtin_msa_insve_d((v2i64)mid14, 1, (v2i64)cen14);
	cen15 = (v8i16)__builtin_msa_insve_d((v2i64)mid15, 1, (v2i64)cen15);

	cen0 = __builtin_msa_subv_h(cen0, cen4); 	
	cen1 = __builtin_msa_subv_h(cen1, cen5); 	
	cen2 = __builtin_msa_subv_h(cen2, cen6); 	
	cen3 = __builtin_msa_subv_h(cen3, cen7); 

	cen8 = __builtin_msa_subv_h(cen8, cen12); 	
	cen9 = __builtin_msa_subv_h(cen9, cen13); 	
	cen10 = __builtin_msa_subv_h(cen10, cen14); 	
	cen11 = __builtin_msa_subv_h(cen11, cen15); 

	res0 = __builtin_msa_addv_h(cen1, cen0);
	res1 = __builtin_msa_subv_h(cen1, cen0);
	res2 = __builtin_msa_addv_h(cen3, cen2);
        res3 = __builtin_msa_subv_h(cen3, cen2);

	res8 = __builtin_msa_addv_h(cen9, cen8);
	res9 = __builtin_msa_subv_h(cen9, cen8);
	res10 = __builtin_msa_addv_h(cen11, cen10);
        res11 = __builtin_msa_subv_h(cen11, cen10);

	res4 = __builtin_msa_addv_h(res2, res0);
	res5 = __builtin_msa_asub_s_h(res2, res0);
	res6 = __builtin_msa_addv_h(res3, res1);
	res7 = __builtin_msa_asub_s_h(res3, res1);

	res12 = __builtin_msa_addv_h(res10, res8);
	res13 = __builtin_msa_asub_s_h(res10, res8);
	res14 = __builtin_msa_addv_h(res11, res9);
	res15 = __builtin_msa_asub_s_h(res11, res9);

	res4 = __builtin_lsx_vabs_h(res4);
	res6 = __builtin_lsx_vabs_h(res6);

	res12 = __builtin_lsx_vabs_h(res12);
	res14 = __builtin_lsx_vabs_h(res14);

	bet0 = __builtin_msa_ilvod_h(res6, res4);
	bet2 = __builtin_msa_ilvod_h(res7, res5);
	bet1 = __builtin_msa_ilvev_h(res6, res4);
	bet3 = __builtin_msa_ilvev_h(res7, res5);

	bet8 = __builtin_msa_ilvod_h(res14, res12);
	bet10 = __builtin_msa_ilvod_h(res15, res13);
	bet9 = __builtin_msa_ilvev_h(res14, res12);
	bet11 = __builtin_msa_ilvev_h(res15, res13);

	bet4 = __builtin_msa_max_s_h(bet0, bet1);
	bet5 = __builtin_msa_max_s_h(bet2, bet3);

	bet12 = __builtin_msa_max_s_h(bet8, bet9);
	bet13 = __builtin_msa_max_s_h(bet10, bet11);

	out0 = __builtin_msa_hadd_s_w(bet4, bet4);
	out1 = __builtin_msa_hadd_s_w(bet5, bet5);

	out2 = __builtin_msa_hadd_s_w(bet12, bet12);
	out3 = __builtin_msa_hadd_s_w(bet13, bet13);

	output0 = __builtin_msa_addv_w(out0, out1);
	output1 = __builtin_msa_addv_w(out2, out3);

	output0 = __builtin_msa_addv_w(output0, output1);

	satd = output0[0] + output0[1] + output0[2] + output0[3];

	/*
 	satd = satd_8x4(pix1, stride_pix1, pix2, stride_pix2);
	pix1 += 4 * stride_pix1;
	pix2 += 4 * stride_pix2;
	satd += satd_8x4(pix1, stride_pix1, pix2, stride_pix2);
	*/

	#ifdef DEBUG
	for (int row = 0; row < 8; row += 4)
        	for (int col = 0; col < 8; col += 8)
            		t_satd += satd_c_8x4(t_pix1 + row * stride_pix1 + col, stride_pix1,
                             		 t_pix2 + row * stride_pix2 + col, stride_pix2);

	if (satd == t_satd)
		printf("satd8_8x8 test success\n");
	else
		{
			printf("satd8_8x8 test fail\n");
			printf("right value %d\n", t_satd);
			printf("wrong value %d\n", satd);	
		}
	#endif

	return satd;
}

inline static int satd_16x4(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	int satd;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8u16 mid8, mid9, mid10, mid11, mid12, mid13, mid14, mid15;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 cen8, cen9, cen10, cen11, cen12, cen13, cen14, cen15;
	v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
	v8i16 res8, res9, res10, res11, res12, res13, res14, res15;
	v8i16 bet0, bet1, bet2, bet3;
	v8i16 bet8, bet9, bet10, bet11;
	v4i32 out0, out1, out2, out3, output0, output1;

	LD4(pix1, stride_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	pix1 += 8;
	LD4(pix1, stride_pix1, &tmp8, &tmp9, &tmp10, &tmp11);

	LD4(pix2, stride_pix2, &tmp4, &tmp5, &tmp6, &tmp7);
	pix2 += 8;
	LD4(pix2, stride_pix2, &tmp12, &tmp13, &tmp14, &tmp15);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);
	
	mid8 = __builtin_msa_hadd_u_h((v16u8)tmp8, (v16u8)tmp8);
	mid9 = __builtin_msa_hadd_u_h((v16u8)tmp9, (v16u8)tmp9);
	mid10 = __builtin_msa_hadd_u_h((v16u8)tmp10, (v16u8)tmp10);
	mid11 = __builtin_msa_hadd_u_h((v16u8)tmp11, (v16u8)tmp11);
	mid12 = __builtin_msa_hadd_u_h((v16u8)tmp12, (v16u8)tmp12);
	mid13 = __builtin_msa_hadd_u_h((v16u8)tmp13, (v16u8)tmp13);
	mid14 = __builtin_msa_hadd_u_h((v16u8)tmp14, (v16u8)tmp14);
	mid15 = __builtin_msa_hadd_u_h((v16u8)tmp15, (v16u8)tmp15);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);
	
	cen8 = __builtin_msa_hsub_u_h((v16u8)tmp8, (v16u8)tmp8);
	cen9 = __builtin_msa_hsub_u_h((v16u8)tmp9, (v16u8)tmp9);
	cen10 = __builtin_msa_hsub_u_h((v16u8)tmp10, (v16u8)tmp10);
	cen11 = __builtin_msa_hsub_u_h((v16u8)tmp11, (v16u8)tmp11);
	cen12 = __builtin_msa_hsub_u_h((v16u8)tmp12, (v16u8)tmp12);
	cen13 = __builtin_msa_hsub_u_h((v16u8)tmp13, (v16u8)tmp13);
	cen14 = __builtin_msa_hsub_u_h((v16u8)tmp14, (v16u8)tmp14);
	cen15 = __builtin_msa_hsub_u_h((v16u8)tmp15, (v16u8)tmp15);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	cen8 = (v8i16)__builtin_msa_insve_d((v2i64)mid8, 1, (v2i64)cen8);
	cen9 = (v8i16)__builtin_msa_insve_d((v2i64)mid9, 1, (v2i64)cen9);
	cen10 = (v8i16)__builtin_msa_insve_d((v2i64)mid10, 1, (v2i64)cen10);
	cen11 = (v8i16)__builtin_msa_insve_d((v2i64)mid11, 1, (v2i64)cen11);
	cen12 = (v8i16)__builtin_msa_insve_d((v2i64)mid12, 1, (v2i64)cen12);
	cen13 = (v8i16)__builtin_msa_insve_d((v2i64)mid13, 1, (v2i64)cen13);
	cen14 = (v8i16)__builtin_msa_insve_d((v2i64)mid14, 1, (v2i64)cen14);
	cen15 = (v8i16)__builtin_msa_insve_d((v2i64)mid15, 1, (v2i64)cen15);

	cen0 = __builtin_msa_subv_h(cen0, cen4); 	
	cen1 = __builtin_msa_subv_h(cen1, cen5); 	
	cen2 = __builtin_msa_subv_h(cen2, cen6); 	
	cen3 = __builtin_msa_subv_h(cen3, cen7); 

	cen8 = __builtin_msa_subv_h(cen8, cen12); 	
	cen9 = __builtin_msa_subv_h(cen9, cen13); 	
	cen10 = __builtin_msa_subv_h(cen10, cen14); 	
	cen11 = __builtin_msa_subv_h(cen11, cen15); 

	res0 = __builtin_msa_addv_h(cen1, cen0);
	res1 = __builtin_msa_subv_h(cen1, cen0);
	res2 = __builtin_msa_addv_h(cen3, cen2);
        res3 = __builtin_msa_subv_h(cen3, cen2);

	res8 = __builtin_msa_addv_h(cen9, cen8);
	res9 = __builtin_msa_subv_h(cen9, cen8);
	res10 = __builtin_msa_addv_h(cen11, cen10);
        res11 = __builtin_msa_subv_h(cen11, cen10);

	res4 = __builtin_msa_addv_h(res2, res0);
	res5 = __builtin_msa_asub_s_h(res2, res0);
	res6 = __builtin_msa_addv_h(res3, res1);
	res7 = __builtin_msa_asub_s_h(res3, res1);

	res12 = __builtin_msa_addv_h(res10, res8);
	res13 = __builtin_msa_asub_s_h(res10, res8);
	res14 = __builtin_msa_addv_h(res11, res9);
	res15 = __builtin_msa_asub_s_h(res11, res9);

	res4 = __builtin_lsx_vabs_h(res4);
	res6 = __builtin_lsx_vabs_h(res6);

	res12 = __builtin_lsx_vabs_h(res12);
	res14 = __builtin_lsx_vabs_h(res14);

	bet0 = __builtin_msa_ilvod_h(res6, res4);
	bet2 = __builtin_msa_ilvod_h(res7, res5);
	bet1 = __builtin_msa_ilvev_h(res6, res4);
	bet3 = __builtin_msa_ilvev_h(res7, res5);

	bet8 = __builtin_msa_ilvod_h(res14, res12);
	bet10 = __builtin_msa_ilvod_h(res15, res13);
	bet9 = __builtin_msa_ilvev_h(res14, res12);
	bet11 = __builtin_msa_ilvev_h(res15, res13);

	bet0 = __builtin_msa_max_s_h(bet0, bet1);
	bet2 = __builtin_msa_max_s_h(bet2, bet3);

	bet8 = __builtin_msa_max_s_h(bet8, bet9);
	bet10 = __builtin_msa_max_s_h(bet10, bet11);

	out0 = __builtin_msa_hadd_s_w(bet0, bet0);
	out1 = __builtin_msa_hadd_s_w(bet2, bet2);

	out2 = __builtin_msa_hadd_s_w(bet8, bet8);
	out3 = __builtin_msa_hadd_s_w(bet10, bet10);

	output0 = __builtin_msa_addv_w(out0, out1);
	output1 = __builtin_msa_addv_w(out2, out3);

	output0 = __builtin_msa_addv_w(output0, output1);

	satd = output0[0] + output0[1] + output0[2] + output0[3];

	return satd;
}

int satd8_16x16(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	int t_satd = 0;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	int satd = 0;
	
	for (int i = 0; i < 4; i++)
	{
		satd += satd_16x4(pix1, stride_pix1, pix2, stride_pix2);
	
		pix1 += 4 * stride_pix1;
		pix2 += 4 * stride_pix2;
	}
	
/*	
	satd = satd_16x4(pix1, stride_pix1, pix2, stride_pix2);
	
	pix1 += 4 * stride_pix1;
	pix2 += 4 * stride_pix2;
	
	satd += satd_16x4(pix1, stride_pix1, pix2, stride_pix2);	

	pix1 += 4 * stride_pix1;
	pix2 += 4 * stride_pix2;
	
	satd += satd_16x4(pix1, stride_pix1, pix2, stride_pix2);

	pix1 += 4 * stride_pix1;
	pix2 += 4 * stride_pix2;
	
	satd += satd_16x4(pix1, stride_pix1, pix2, stride_pix2);	
*/

	#ifdef DEBUG
	for (int row = 0; row < 16; row += 4)
        	for (int col = 0; col < 16; col += 8)
            		t_satd += satd_c_8x4(t_pix1 + row * stride_pix1 + col, stride_pix1,
                             		 t_pix2 + row * stride_pix2 + col, stride_pix2);

	if (satd == t_satd)
		printf("satd8_16x16 test success\n");
	else
		printf("satd8_16x16 test fail\n");	
	#endif

	return satd;
}

int satd8_32x32(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	int t_satd = 0;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	int satd = 0;

	for (int i = 0; i < 8; i++)
	{
		for (int j = 0; j < 2; j++)
		{
			satd += satd_16x4(pix1 + 16 * j, stride_pix1, pix2 + 16 * j, stride_pix2);
		}

		pix1 += 4 * stride_pix1;
		pix2 += 4 * stride_pix2;
	}

	#ifdef DEBUG
	for (int row = 0; row < 32; row += 4)
        	for (int col = 0; col < 32; col += 8)
            		t_satd += satd_c_8x4(t_pix1 + row * stride_pix1 + col, stride_pix1,
                             		 t_pix2 + row * stride_pix2 + col, stride_pix2);

	if (satd == t_satd)
		printf("satd8_32x32 test success\n");
	else
		printf("satd8_32x32 test fail\n");	
	#endif

	return satd;	
}

int satd8_64x64(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
	#ifdef DEBUG
	int t_satd = 0;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	int satd = 0;

	for (int i = 0; i < 16; i++)
	{
		for (int j = 0; j < 4; j++)
		{
			satd += satd_16x4(pix1 + 16 * j, stride_pix1, pix2 + 16 * j, stride_pix2);
		}

		pix1 += 4 * stride_pix1;
		pix2 += 4 * stride_pix2;
	}

	#ifdef DEBUG
	for (int row = 0; row < 64; row += 4)
        	for (int col = 0; col < 64; col += 8)
            		t_satd += satd_c_8x4(t_pix1 + row * stride_pix1 + col, stride_pix1,
                             		 t_pix2 + row * stride_pix2 + col, stride_pix2);

	if (satd == t_satd)
		printf("satd8_64x64 test success\n");
	else
		printf("satd8_64x64 test fail\n");	
	#endif

	return satd;	
}

template<int w, int h>
// calculate satd in blocks of 4x4
int satd4(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
    int satd = 0;

    for (int row = 0; row < h; row += 4)
        for (int col = 0; col < w; col += 4)
            satd += satd_4x4(pix1 + row * stride_pix1 + col, stride_pix1,
                             pix2 + row * stride_pix2 + col, stride_pix2);

    return satd;
}

template<int w, int h>
// calculate satd in blocks of 8x4
int satd8(const pixel* pix1, intptr_t stride_pix1, const pixel* pix2, intptr_t stride_pix2)
{
    int satd = 0;

        for (int row = 0; row < h; row += 4)
        	for (int col = 0; col < w; col += 8)
            		satd += satd_8x4(pix1 + row * stride_pix1 + col, stride_pix1, pix2 + row * stride_pix2 + col, stride_pix2);

    return satd;
}

inline int _sa8d_8x8(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
    sum2_t tmp[8][4];
    sum2_t a0, a1, a2, a3, a4, a5, a6, a7, b0, b1, b2, b3;
    sum2_t sum = 0;

    for (int i = 0; i < 8; i++, pix1 += i_pix1, pix2 += i_pix2)
    {
        a0 = pix1[0] - pix2[0];
        a1 = pix1[1] - pix2[1];
        b0 = (a0 + a1) + ((a0 - a1) << BITS_PER_SUM);
        a2 = pix1[2] - pix2[2];
        a3 = pix1[3] - pix2[3];
        b1 = (a2 + a3) + ((a2 - a3) << BITS_PER_SUM);
        a4 = pix1[4] - pix2[4];
        a5 = pix1[5] - pix2[5];
        b2 = (a4 + a5) + ((a4 - a5) << BITS_PER_SUM);
        a6 = pix1[6] - pix2[6];
        a7 = pix1[7] - pix2[7];
        b3 = (a6 + a7) + ((a6 - a7) << BITS_PER_SUM);
        HADAMARD4(tmp[i][0], tmp[i][1], tmp[i][2], tmp[i][3], b0, b1, b2, b3);
    }

    for (int i = 0; i < 4; i++)
    {
        HADAMARD4(a0, a1, a2, a3, tmp[0][i], tmp[1][i], tmp[2][i], tmp[3][i]);
        HADAMARD4(a4, a5, a6, a7, tmp[4][i], tmp[5][i], tmp[6][i], tmp[7][i]);
        b0  = abs2(a0 + a4) + abs2(a0 - a4);
        b0 += abs2(a1 + a5) + abs2(a1 - a5);
        b0 += abs2(a2 + a6) + abs2(a2 - a6);
        b0 += abs2(a3 + a7) + abs2(a3 - a7);
        sum += (sum_t)b0 + (b0 >> BITS_PER_SUM);
    }

    return (int)sum;
}

inline int sa8d_c_8x8(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
    return (int)((_sa8d_8x8(pix1, i_pix1, pix2, i_pix2) + 2) >> 2);
}

inline int sa8d_8x8_internal(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
	#ifdef DEBUG
	int t_sum;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	int sum;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 sub0, sub1, sub2, sub3, sub4, sub5, sub6, sub7;
	v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
	v8i16 bet0, bet1, bet2, bet3, bet4, bet5, bet6, bet7;
	v4i32 out0, out1, out2, out3;
	
	const pixel *pix10, *pix11, *pix12, *pix13, *pix14, *pix15, *pix16, *pix17;

	pix10 = pix1;
	pix11 = pix1 + i_pix1;
	pix12 = pix1 + 2 * i_pix1;
	pix13 = pix1 + 3 * i_pix1;
	pix14 = pix1 + 4 * i_pix1;
	pix15 = pix1 + 5 * i_pix1;
	pix16 = pix1 + 6 * i_pix1;
	pix17 = pix1 + 7 * i_pix1;

	const pixel *pix20, *pix21, *pix22, *pix23, *pix24, *pix25, *pix26, *pix27;

	pix20 = pix2;
	pix21 = pix2 + i_pix2;
	pix22 = pix2 + 2 * i_pix2;
	pix23 = pix2 + 3 * i_pix2;
	pix24 = pix2 + 4 * i_pix2;
	pix25 = pix2 + 5 * i_pix2;
	pix26 = pix2 + 6 * i_pix2;
	pix27 = pix2 + 7 * i_pix2;

	tmp0 = LD(pix10);
	tmp1 = LD(pix11);
	tmp2 = LD(pix12);
	tmp3 = LD(pix13);
	tmp4 = LD(pix20);
	tmp5 = LD(pix21);
	tmp6 = LD(pix22);
	tmp7 = LD(pix23);
	
	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	sub0 = __builtin_msa_subv_h(cen0, cen4); 	
	sub1 = __builtin_msa_subv_h(cen1, cen5); 	
	sub2 = __builtin_msa_subv_h(cen2, cen6); 	
	sub3 = __builtin_msa_subv_h(cen3, cen7); 
	
	tmp0 = LD(pix14);
	tmp1 = LD(pix15);
	tmp2 = LD(pix16);
	tmp3 = LD(pix17);
	tmp4 = LD(pix24);
	tmp5 = LD(pix25);
	tmp6 = LD(pix26);
	tmp7 = LD(pix27);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	sub4 = __builtin_msa_subv_h(cen0, cen4); 	
	sub5 = __builtin_msa_subv_h(cen1, cen5); 	
	sub6 = __builtin_msa_subv_h(cen2, cen6); 	
	sub7 = __builtin_msa_subv_h(cen3, cen7); 

	res0 = __builtin_msa_addv_h(sub1, sub0);
	res1 = __builtin_msa_subv_h(sub1, sub0);
	res2 = __builtin_msa_addv_h(sub3, sub2);	
	res3 = __builtin_msa_subv_h(sub3, sub2);
	res4 = __builtin_msa_addv_h(sub5, sub4);
	res5 = __builtin_msa_subv_h(sub5, sub4);
	res6 = __builtin_msa_addv_h(sub7, sub6);	
	res7 = __builtin_msa_subv_h(sub7, sub6);

	bet0 = __builtin_msa_addv_h(res2, res0);
	bet1 = __builtin_msa_subv_h(res2, res0);
	bet2 = __builtin_msa_addv_h(res3, res1);
	bet3 = __builtin_msa_subv_h(res3, res1);
	bet4 = __builtin_msa_addv_h(res6, res4);
	bet5 = __builtin_msa_subv_h(res6, res4);
	bet6 = __builtin_msa_addv_h(res7, res5);
	bet7 = __builtin_msa_subv_h(res7, res5);

	cen0 = __builtin_msa_addv_h(bet4, bet0);
	cen1 = __builtin_msa_subv_h(bet4, bet0);
	cen2 = __builtin_msa_addv_h(bet6, bet2);
	cen3 = __builtin_msa_subv_h(bet6, bet2);
	cen4 = __builtin_msa_addv_h(bet5, bet1);
	cen5 = __builtin_msa_subv_h(bet5, bet1);
	cen6 = __builtin_msa_addv_h(bet7, bet3);
	cen7 = __builtin_msa_subv_h(bet7, bet3);

	res0 = __builtin_msa_pckod_h(cen1, cen0);
	res1 = __builtin_msa_pckev_h(cen1, cen0);
	res2 = __builtin_msa_pckod_h(cen3, cen2);
	res3 = __builtin_msa_pckev_h(cen3, cen2);
	res4 = __builtin_msa_pckod_h(cen5, cen4);
	res5 = __builtin_msa_pckev_h(cen5, cen4);
	res6 = __builtin_msa_pckod_h(cen7, cen6);
	res7 = __builtin_msa_pckev_h(cen7, cen6);

	bet0 = __builtin_msa_addv_h(res0, res1);
	bet1 = __builtin_msa_asub_s_h(res0, res1);
	bet2 = __builtin_msa_addv_h(res2, res3);
	bet3 = __builtin_msa_asub_s_h(res2, res3);
	bet4 = __builtin_msa_addv_h(res4, res5);
	bet5 = __builtin_msa_asub_s_h(res4, res5);
	bet6 = __builtin_msa_addv_h(res6, res7);
	bet7 = __builtin_msa_asub_s_h(res6, res7);

	bet0 = __builtin_lsx_vabs_h(bet0);
	bet2 = __builtin_lsx_vabs_h(bet2);
	bet4 = __builtin_lsx_vabs_h(bet4);
	bet6 = __builtin_lsx_vabs_h(bet6);

	cen0 = __builtin_msa_ilvod_h(bet0, bet1);
	cen1 = __builtin_msa_ilvev_h(bet0, bet1);
	cen2 = __builtin_msa_ilvod_h(bet2, bet3);
	cen3 = __builtin_msa_ilvev_h(bet2, bet3);
	cen4 = __builtin_msa_ilvod_h(bet4, bet5);
	cen5 = __builtin_msa_ilvev_h(bet4, bet5);
	cen6 = __builtin_msa_ilvod_h(bet6, bet7);
	cen7 = __builtin_msa_ilvev_h(bet6, bet7);

	res0 = __builtin_msa_max_s_h(cen0, cen1);
	res1 = __builtin_msa_max_s_h(cen2, cen3);
	res2 = __builtin_msa_max_s_h(cen4, cen5);
	res3 = __builtin_msa_max_s_h(cen6, cen7);

	out0 = __builtin_msa_hadd_s_w(res0, res0);
	out1 = __builtin_msa_hadd_s_w(res1, res1);
	out2 = __builtin_msa_hadd_s_w(res2, res2);
	out3 = __builtin_msa_hadd_s_w(res3, res3);

	out0 = __builtin_msa_addv_w(out0, out1);
	out2 = __builtin_msa_addv_w(out2, out3);
	out0 = __builtin_msa_addv_w(out0, out2);

	sum = out0[0] + out0[1] + out0[2] + out0[3];

	sum = (sum + 1) >> 1;
	
	#ifdef DEBUG
	t_sum = (int)((_sa8d_8x8(t_pix1, i_pix1, t_pix2, i_pix2) + 2) >> 2);
	if (sum == t_sum)
		printf("sa8d_8x8_internal test success\n");
	else 
		printf("sa8d_8x8_internal test fail\n");
	#endif

	return sum;
}

inline int sa8d_8x8_internal_64(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
	#ifdef DEBUG
	int t_sum;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	int sum;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 sub0, sub1, sub2, sub3, sub4, sub5, sub6, sub7;
	v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
	v8i16 bet0, bet1, bet2, bet3, bet4, bet5, bet6, bet7;
	v4i32 out0, out1, out2, out3;
	
	tmp0 = LD(pix1);
	pix1 += i_pix1;
	tmp1 = LD(pix1);
	pix1 += i_pix1;
	tmp2 = LD(pix1);
	pix1 += i_pix1;
	tmp3 = LD(pix1);
	pix1 += i_pix1;
	
	tmp4 = LD(pix2);
	pix2 += i_pix2;
	tmp5 = LD(pix2);
	pix2 += i_pix2;
	tmp6 = LD(pix2);
	pix2 += i_pix2;
	tmp7 = LD(pix2);
	pix2 += i_pix2;
	
	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	sub0 = __builtin_msa_subv_h(cen0, cen4); 	
	sub1 = __builtin_msa_subv_h(cen1, cen5); 	
	sub2 = __builtin_msa_subv_h(cen2, cen6); 	
	sub3 = __builtin_msa_subv_h(cen3, cen7); 
	
	tmp0 = LD(pix1);
	pix1 += i_pix1;
	tmp1 = LD(pix1);
	pix1 += i_pix1;
	tmp2 = LD(pix1);
	pix1 += i_pix1;
	tmp3 = LD(pix1);

	tmp4 = LD(pix2);
	pix2 += i_pix2;
	tmp5 = LD(pix2);
	pix2 += i_pix2;
	tmp6 = LD(pix2);
	pix2 += i_pix2;
	tmp7 = LD(pix2);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	sub4 = __builtin_msa_subv_h(cen0, cen4); 	
	sub5 = __builtin_msa_subv_h(cen1, cen5); 	
	sub6 = __builtin_msa_subv_h(cen2, cen6); 	
	sub7 = __builtin_msa_subv_h(cen3, cen7); 

	res0 = __builtin_msa_addv_h(sub1, sub0);
	res1 = __builtin_msa_subv_h(sub1, sub0);
	res2 = __builtin_msa_addv_h(sub3, sub2);	
	res3 = __builtin_msa_subv_h(sub3, sub2);
	res4 = __builtin_msa_addv_h(sub5, sub4);
	res5 = __builtin_msa_subv_h(sub5, sub4);
	res6 = __builtin_msa_addv_h(sub7, sub6);	
	res7 = __builtin_msa_subv_h(sub7, sub6);

	bet0 = __builtin_msa_addv_h(res2, res0);
	bet1 = __builtin_msa_subv_h(res2, res0);
	bet2 = __builtin_msa_addv_h(res3, res1);
	bet3 = __builtin_msa_subv_h(res3, res1);
	bet4 = __builtin_msa_addv_h(res6, res4);
	bet5 = __builtin_msa_subv_h(res6, res4);
	bet6 = __builtin_msa_addv_h(res7, res5);
	bet7 = __builtin_msa_subv_h(res7, res5);

	cen0 = __builtin_msa_addv_h(bet4, bet0);
	cen1 = __builtin_msa_subv_h(bet4, bet0);
	cen2 = __builtin_msa_addv_h(bet6, bet2);
	cen3 = __builtin_msa_subv_h(bet6, bet2);
	cen4 = __builtin_msa_addv_h(bet5, bet1);
	cen5 = __builtin_msa_subv_h(bet5, bet1);
	cen6 = __builtin_msa_addv_h(bet7, bet3);
	cen7 = __builtin_msa_subv_h(bet7, bet3);

	res0 = __builtin_msa_pckod_h(cen1, cen0);
	res1 = __builtin_msa_pckev_h(cen1, cen0);
	res2 = __builtin_msa_pckod_h(cen3, cen2);
	res3 = __builtin_msa_pckev_h(cen3, cen2);
	res4 = __builtin_msa_pckod_h(cen5, cen4);
	res5 = __builtin_msa_pckev_h(cen5, cen4);
	res6 = __builtin_msa_pckod_h(cen7, cen6);
	res7 = __builtin_msa_pckev_h(cen7, cen6);

	bet0 = __builtin_msa_addv_h(res0, res1);
	bet1 = __builtin_msa_asub_s_h(res0, res1);
	bet2 = __builtin_msa_addv_h(res2, res3);
	bet3 = __builtin_msa_asub_s_h(res2, res3);
	bet4 = __builtin_msa_addv_h(res4, res5);
	bet5 = __builtin_msa_asub_s_h(res4, res5);
	bet6 = __builtin_msa_addv_h(res6, res7);
	bet7 = __builtin_msa_asub_s_h(res6, res7);

	bet0 = __builtin_lsx_vabs_h(bet0);
	bet2 = __builtin_lsx_vabs_h(bet2);
	bet4 = __builtin_lsx_vabs_h(bet4);
	bet6 = __builtin_lsx_vabs_h(bet6);

	cen0 = __builtin_msa_ilvod_h(bet0, bet1);
	cen1 = __builtin_msa_ilvev_h(bet0, bet1);
	cen2 = __builtin_msa_ilvod_h(bet2, bet3);
	cen3 = __builtin_msa_ilvev_h(bet2, bet3);
	cen4 = __builtin_msa_ilvod_h(bet4, bet5);
	cen5 = __builtin_msa_ilvev_h(bet4, bet5);
	cen6 = __builtin_msa_ilvod_h(bet6, bet7);
	cen7 = __builtin_msa_ilvev_h(bet6, bet7);

	res0 = __builtin_msa_max_s_h(cen0, cen1);
	res1 = __builtin_msa_max_s_h(cen2, cen3);
	res2 = __builtin_msa_max_s_h(cen4, cen5);
	res3 = __builtin_msa_max_s_h(cen6, cen7);

	out0 = __builtin_msa_hadd_s_w(res0, res0);
	out1 = __builtin_msa_hadd_s_w(res1, res1);
	out2 = __builtin_msa_hadd_s_w(res2, res2);
	out3 = __builtin_msa_hadd_s_w(res3, res3);

	out0 = __builtin_msa_addv_w(out0, out1);
	out2 = __builtin_msa_addv_w(out2, out3);
	out0 = __builtin_msa_addv_w(out0, out2);

	sum = out0[0] + out0[1] + out0[2] + out0[3];

	sum = (sum + 1) >> 1;
	
	#ifdef DEBUG
	t_sum = (int)((_sa8d_8x8(t_pix1, i_pix1, t_pix2, i_pix2) + 2) >> 2);
	if (sum == t_sum)
		printf("sa8d_8x8_internal_64 test success\n");
	else 
		printf("sa8d_8x8_internal_64 test fail\n");
	#endif

	return sum;
}

//--------------------------------------------------------------------------------------------------
//int sa8d(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
//enable size 8x8, 16x16, 32x32, 64x64
//--------------------------------------------------------------------------------------------------

int sa8d_8x8(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
	#ifdef DEBUG
	int t_sum;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif

	int sum;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8u16 mid8, mid9, mid10, mid11, mid12, mid13, mid14, mid15;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 cen8, cen9, cen10, cen11, cen12, cen13, cen14, cen15;
	v8i16 sub0, sub1, sub2, sub3, sub4, sub5, sub6, sub7;
	v8i16 res0, res1, res2, res3, res4, res5, res6, res7;
	v8i16 bet0, bet1, bet2, bet3, bet4, bet5, bet6, bet7;
	v4i32 out0, out1, out2, out3;
	
	LD4(pix1, i_pix1, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4(pix2, i_pix2, &tmp4, &tmp5, &tmp6, &tmp7);

	pix1 += 4 * i_pix1;
	pix2 += 4 * i_pix2;

	LD4(pix1, i_pix1, &tmp8, &tmp9, &tmp10, &tmp11);
	LD4(pix2, i_pix2, &tmp12, &tmp13, &tmp14, &tmp15);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	mid8 = __builtin_msa_hadd_u_h((v16u8)tmp8, (v16u8)tmp8);
	mid9 = __builtin_msa_hadd_u_h((v16u8)tmp9, (v16u8)tmp9);
	mid10 = __builtin_msa_hadd_u_h((v16u8)tmp10, (v16u8)tmp10);
	mid11 = __builtin_msa_hadd_u_h((v16u8)tmp11, (v16u8)tmp11);
	mid12 = __builtin_msa_hadd_u_h((v16u8)tmp12, (v16u8)tmp12);
	mid13 = __builtin_msa_hadd_u_h((v16u8)tmp13, (v16u8)tmp13);
	mid14 = __builtin_msa_hadd_u_h((v16u8)tmp14, (v16u8)tmp14);
	mid15 = __builtin_msa_hadd_u_h((v16u8)tmp15, (v16u8)tmp15);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen8 = __builtin_msa_hsub_u_h((v16u8)tmp8, (v16u8)tmp8);
	cen9 = __builtin_msa_hsub_u_h((v16u8)tmp9, (v16u8)tmp9);
	cen10 = __builtin_msa_hsub_u_h((v16u8)tmp10, (v16u8)tmp10);
	cen11 = __builtin_msa_hsub_u_h((v16u8)tmp11, (v16u8)tmp11);
	cen12 = __builtin_msa_hsub_u_h((v16u8)tmp12, (v16u8)tmp12);
	cen13 = __builtin_msa_hsub_u_h((v16u8)tmp13, (v16u8)tmp13);
	cen14 = __builtin_msa_hsub_u_h((v16u8)tmp14, (v16u8)tmp14);
	cen15 = __builtin_msa_hsub_u_h((v16u8)tmp15, (v16u8)tmp15);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	cen8 = (v8i16)__builtin_msa_insve_d((v2i64)mid8, 1, (v2i64)cen8);
	cen9 = (v8i16)__builtin_msa_insve_d((v2i64)mid9, 1, (v2i64)cen9);
	cen10 = (v8i16)__builtin_msa_insve_d((v2i64)mid10, 1, (v2i64)cen10);
	cen11 = (v8i16)__builtin_msa_insve_d((v2i64)mid11, 1, (v2i64)cen11);
	cen12 = (v8i16)__builtin_msa_insve_d((v2i64)mid12, 1, (v2i64)cen12);
	cen13 = (v8i16)__builtin_msa_insve_d((v2i64)mid13, 1, (v2i64)cen13);
	cen14 = (v8i16)__builtin_msa_insve_d((v2i64)mid14, 1, (v2i64)cen14);
	cen15 = (v8i16)__builtin_msa_insve_d((v2i64)mid15, 1, (v2i64)cen15);

	sub0 = __builtin_msa_subv_h(cen0, cen4); 	
	sub1 = __builtin_msa_subv_h(cen1, cen5); 	
	sub2 = __builtin_msa_subv_h(cen2, cen6); 	
	sub3 = __builtin_msa_subv_h(cen3, cen7); 

	sub4 = __builtin_msa_subv_h(cen8, cen12); 	
	sub5 = __builtin_msa_subv_h(cen9, cen13); 	
	sub6 = __builtin_msa_subv_h(cen10, cen14); 	
	sub7 = __builtin_msa_subv_h(cen11, cen15); 

	res0 = __builtin_msa_addv_h(sub1, sub0);
	res1 = __builtin_msa_subv_h(sub1, sub0);
	res2 = __builtin_msa_addv_h(sub3, sub2);
	res3 = __builtin_msa_subv_h(sub3, sub2);
	res4 = __builtin_msa_addv_h(sub5, sub4);
	res5 = __builtin_msa_subv_h(sub5, sub4);
	res6 = __builtin_msa_addv_h(sub7, sub6);
	res7 = __builtin_msa_subv_h(sub7, sub6);

	bet0 = __builtin_msa_addv_h(res2, res0);
	bet1 = __builtin_msa_subv_h(res2, res0);
	bet2 = __builtin_msa_addv_h(res3, res1);
	bet3 = __builtin_msa_subv_h(res3, res1);
	bet4 = __builtin_msa_addv_h(res6, res4);
	bet5 = __builtin_msa_subv_h(res6, res4);
	bet6 = __builtin_msa_addv_h(res7, res5);
	bet7 = __builtin_msa_subv_h(res7, res5);

	cen0 = __builtin_msa_addv_h(bet4, bet0);
	cen1 = __builtin_msa_subv_h(bet4, bet0);
	cen2 = __builtin_msa_addv_h(bet6, bet2);
	cen3 = __builtin_msa_subv_h(bet6, bet2);
	cen4 = __builtin_msa_addv_h(bet5, bet1);
	cen5 = __builtin_msa_subv_h(bet5, bet1);
	cen6 = __builtin_msa_addv_h(bet7, bet3);
	cen7 = __builtin_msa_subv_h(bet7, bet3);

	res0 = __builtin_msa_pckod_h(cen1, cen0);
	res1 = __builtin_msa_pckev_h(cen1, cen0);
	res2 = __builtin_msa_pckod_h(cen3, cen2);
	res3 = __builtin_msa_pckev_h(cen3, cen2);
	res4 = __builtin_msa_pckod_h(cen5, cen4);
	res5 = __builtin_msa_pckev_h(cen5, cen4);
	res6 = __builtin_msa_pckod_h(cen7, cen6);
	res7 = __builtin_msa_pckev_h(cen7, cen6);

	bet0 = __builtin_msa_addv_h(res0, res1);
	bet1 = __builtin_msa_asub_s_h(res0, res1);
	bet2 = __builtin_msa_addv_h(res2, res3);
	bet3 = __builtin_msa_asub_s_h(res2, res3);
	bet4 = __builtin_msa_addv_h(res4, res5);
	bet5 = __builtin_msa_asub_s_h(res4, res5);
	bet6 = __builtin_msa_addv_h(res6, res7);
	bet7 = __builtin_msa_asub_s_h(res6, res7);

	bet0 = __builtin_lsx_vabs_h(bet0);
	bet2 = __builtin_lsx_vabs_h(bet2);
	bet4 = __builtin_lsx_vabs_h(bet4);
	bet6 = __builtin_lsx_vabs_h(bet6);
	
	cen0 = __builtin_msa_ilvod_h(bet0, bet1);
	cen1 = __builtin_msa_ilvev_h(bet0, bet1);
	cen2 = __builtin_msa_ilvod_h(bet2, bet3);
	cen3 = __builtin_msa_ilvev_h(bet2, bet3);
	cen4 = __builtin_msa_ilvod_h(bet4, bet5);
	cen5 = __builtin_msa_ilvev_h(bet4, bet5);
	cen6 = __builtin_msa_ilvod_h(bet6, bet7);
	cen7 = __builtin_msa_ilvev_h(bet6, bet7);

	res0 = __builtin_msa_max_s_h(cen0, cen1);
	res1 = __builtin_msa_max_s_h(cen2, cen3);
	res2 = __builtin_msa_max_s_h(cen4, cen5);
	res3 = __builtin_msa_max_s_h(cen6, cen7);

	out0 = __builtin_msa_hadd_s_w(res0, res0);
	out1 = __builtin_msa_hadd_s_w(res1, res1);
	out2 = __builtin_msa_hadd_s_w(res2, res2);
	out3 = __builtin_msa_hadd_s_w(res3, res3);

	out0 = __builtin_msa_addv_w(out0, out1);
	out2 = __builtin_msa_addv_w(out2, out3);
	out0 = __builtin_msa_addv_w(out0, out2);

	sum = out0[0] + out0[1] + out0[2] + out0[3];

	sum = (sum + 1) >> 1;
	
	#ifdef DEBUG
	t_sum = (int)((_sa8d_8x8(t_pix1, i_pix1, t_pix2, i_pix2) + 2) >> 2);
	if (sum == t_sum)
		printf("sa8d_8x8 test success\n");
	else
		{ 
			printf("sa8d_8x8 test fail\n");
			printf("right value %d\n", t_sum);
			printf("wrong value %d\n", sum);
		}
	#endif

	return sum;
}

/*useless C function
static int sa8d_c_16x16(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
    int sum = _sa8d_8x8(pix1, i_pix1, pix2, i_pix2)
        + _sa8d_8x8(pix1 + 8, i_pix1, pix2 + 8, i_pix2)
        + _sa8d_8x8(pix1 + 8 * i_pix1, i_pix1, pix2 + 8 * i_pix2, i_pix2)
        + _sa8d_8x8(pix1 + 8 + 8 * i_pix1, i_pix1, pix2 + 8 + 8 * i_pix2, i_pix2);

    // This matches x264 sa8d_16x16, but is slightly different from HM's behavior because
    // this version only rounds once at the end
    return (sum + 2) >> 2;
}
*/

int sa8d_16x16(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
	#ifdef DEBUG
	int t_sum;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif
	
	int sum = 0;

	for (int j = 0; j < 2; j++)
	{
		for (int i = 0; i < 2; i++)
		{
			sum += sa8d_8x8_internal(pix1 + i * 8, i_pix1, pix2 + i * 8, i_pix2);
		}
		
		pix1 += 8 * i_pix1;
		pix2 += 8 * i_pix2;
	}

	#ifdef DEBUG
	t_sum = ((_sa8d_8x8(t_pix1, i_pix1, t_pix2, i_pix2) + 2) >> 2)
        + ((_sa8d_8x8(t_pix1 + 8, i_pix1, t_pix2 + 8, i_pix2) + 2) >> 2)
        + ((_sa8d_8x8(t_pix1 + 8 * i_pix1, i_pix1, t_pix2 + 8 * i_pix2, i_pix2) + 2) >> 2)
        + ((_sa8d_8x8(t_pix1 + 8 + 8 * i_pix1, i_pix1, t_pix2 + 8 + 8 * i_pix2, i_pix2) + 2) >> 2);
	
	if (sum == t_sum)
		printf("sa8d_16x16 test success\n");
	else
	{
		printf("sa8d_16x16 test fail\n");
		printf("right value %d\n", t_sum);
		printf("wrong value %d\n", sum);
	}
	
	#endif

	return sum;
}

int sa8d_32x32(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
	#ifdef DEBUG
	int t_sum = 0;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif
	
	int sum = 0;

	for (int j = 0; j < 4; j++)
	{
		for (int i = 0; i < 4; i++)
		{
			sum += sa8d_8x8_internal(pix1 + i * 8, i_pix1, pix2 + i * 8, i_pix2);
		}
		
		pix1 += 8 * i_pix1;
		pix2 += 8 * i_pix2;
	}

	#ifdef DEBUG
	for (int y = 0; y < 32; y += 8)
        	for (int x = 0; x < 32; x += 8)
            		t_sum += sa8d_c_8x8(t_pix1 + i_pix1 * y + x, i_pix1, t_pix2 + i_pix2 * y + x, i_pix2);
	
	if (sum == t_sum)
		printf("sa8d_32x32 test success\n");
	else
		printf("sa8d_32x32 test fail\n");
	#endif

	return sum;
}

int sa8d_64x64(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
	#ifdef DEBUG
	int t_sum = 0;
	const pixel *t_pix1, *t_pix2;
	t_pix1 = pix1;
	t_pix2 = pix2;
	#endif
	
	int sum = 0;

	for (int j = 0; j < 8; j++)
	{
		for (int i = 0; i < 8; i++)
		{
			sum += sa8d_8x8_internal_64(pix1 + i * 8, i_pix1, pix2 + i * 8, i_pix2);
		}
		
		pix1 += 8 * i_pix1;
		pix2 += 8 * i_pix2;
	}

	#ifdef DEBUG
	for (int y = 0; y < 64; y += 8)
        	for (int x = 0; x < 64; x += 8)
            		t_sum += sa8d_c_8x8(t_pix1 + i_pix1 * y + x, i_pix1, t_pix2 + i_pix2 * y + x, i_pix2);
	
	if (sum == t_sum)
		printf("sa8d_64x64 test success\n");
	else
		printf("sa8d_64x64 test fail\n");
	#endif

	return sum;
}

template<int w, int h>
// Calculate sa8d in blocks of 8x8
int sa8d8(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
    int cost = 0;

    for (int y = 0; y < h; y += 8)
        for (int x = 0; x < w; x += 8)
            cost += sa8d_8x8(pix1 + i_pix1 * y + x, i_pix1, pix2 + i_pix2 * y + x, i_pix2);

    return cost;
}

template<int w, int h>
// Calculate sa8d in blocks of 16x16
int sa8d16(const pixel* pix1, intptr_t i_pix1, const pixel* pix2, intptr_t i_pix2)
{
    int cost = 0;

    for (int y = 0; y < h; y += 16)
        for (int x = 0; x < w; x += 16)
            cost += sa8d_16x16(pix1 + i_pix1 * y + x, i_pix1, pix2 + i_pix2 * y + x, i_pix2);

    return cost;
}

//--------------------------------------------------------------------------------------
//void blockfill_s(int16_t* dst, intptr_t dstride, int16_t val)
//enable size 4x4, 8x8, 16x16, 32x32
//--------------------------------------------------------------------------------------

void blockfill_s_4x4(int16_t* dst, intptr_t dstride, int16_t val)
{
	#ifdef DEBUG
	int16_t *t_dst;
	t_dst = dst;
	#endif
	
	v2i64 tmp;

	tmp = (v2i64)__builtin_msa_insert_h((v8i16)tmp, 0, (int)val);
	tmp = (v2i64)__builtin_msa_insert_h((v8i16)tmp, 4, (int)val);
	tmp = (v2i64)__builtin_msa_shf_h((v8i16)tmp, 0);

	SD4(tmp, tmp, tmp, tmp, (pixel *)dst, 2 * dstride);

	#ifdef DEBUG
	for (int y = 0; y < 4; y++)
        	for (int x = 0; x < 4; x++)
		{
            		if (t_dst[y * dstride + x] != val)
			{
				printf("blockfill_s_4x4 test fail\n");
				return;
			}	
		}
	printf("blockfill_s_4x4 test success\n");
	#endif
}

void blockfill_s_8x8(int16_t* dst, intptr_t dstride, int16_t val)
{
	#ifdef DEBUG
	int16_t *t_dst;
	t_dst = dst;
	#endif

	v2i64 tmp;
	
	tmp = (v2i64)__builtin_msa_insert_h((v8i16)tmp, 0, (int)val);
	tmp = (v2i64)__builtin_msa_insert_h((v8i16)tmp, 4, (int)val);
	tmp = (v2i64)__builtin_msa_shf_h((v8i16)tmp, 0);

	ST_V4(tmp, tmp, tmp, tmp, (pixel *)dst, 2 * dstride);
	ST_V4(tmp, tmp, tmp, tmp, (pixel *)(dst + 4 * dstride), 2 * dstride);
	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
        	for (int x = 0; x < 8; x++)
		{
            		if (t_dst[y * dstride + x] != val)
			{
				printf("blockfill_s_8x8 test fail\n");
				return;
			}	
		}
	printf("blockfill_s_8x8 test success\n");
	#endif
}


void blockfill_s_16x16(int16_t* dst, intptr_t dstride, int16_t val)
{
	#ifdef DEBUG
	int16_t *t_dst;
	t_dst = dst;
	#endif

	v2i64 tmp;

	tmp = (v2i64)__builtin_msa_insert_h((v8i16)tmp, 0, (int)val);
	tmp = (v2i64)__builtin_msa_insert_h((v8i16)tmp, 4, (int)val);
	tmp = (v2i64)__builtin_msa_shf_h((v8i16)tmp, 0);

	ST_V2_H(tmp, tmp, (pixel *)dst);
	ST_V2_H(tmp, tmp, (pixel *)(dst + dstride));
	ST_V2_H(tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V2_H(tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;

	ST_V2_H(tmp, tmp, (pixel *)dst);
	ST_V2_H(tmp, tmp, (pixel *)(dst + dstride));
	ST_V2_H(tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V2_H(tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;

	ST_V2_H(tmp, tmp, (pixel *)dst);
	ST_V2_H(tmp, tmp, (pixel *)(dst + dstride));
	ST_V2_H(tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V2_H(tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;

	ST_V2_H(tmp, tmp, (pixel *)dst);
	ST_V2_H(tmp, tmp, (pixel *)(dst + dstride));
	ST_V2_H(tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V2_H(tmp, tmp, (pixel *)(dst + 3 * dstride));

	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
        	for (int x = 0; x < 16; x++)
		{
            		if (t_dst[y * dstride + x] != val)
			{
				printf("blockfill_s_16x16 test fail\n");
				return;
			}	
		}
	printf("blockfill_s_16x16 test success\n");
	#endif
}

void blockfill_s_32x32(int16_t* dst, intptr_t dstride, int16_t val)
{
	#ifdef DEBUG
	int16_t *t_dst;
	t_dst = dst;
	#endif

	v2i64 tmp;

	tmp = (v2i64)__builtin_msa_insert_h((v8i16)tmp, 0, (int)val);
	tmp = (v2i64)__builtin_msa_insert_h((v8i16)tmp, 4, (int)val);
	tmp = (v2i64)__builtin_msa_shf_h((v8i16)tmp, 0);

	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)dst);
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;

	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)dst);
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;
	
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)dst);
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;
	
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)dst);
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;

	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)dst);
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;

	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)dst);
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;

	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)dst);
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 3 * dstride));

	dst += 4 * dstride;

	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)dst);
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 2 * dstride));
	ST_V4_H(tmp, tmp, tmp, tmp, (pixel *)(dst + 3 * dstride));
	
	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
        	for (int x = 0; x < 32; x++)
		{
            		if (t_dst[y * dstride + x] != val)
			{
				printf("blockfill_s_32x32 test fail\n");
				return;
			}	
		}
	printf("blockfill_s_32x32 test success\n");
	#endif
}

template<int size>
void blockfill_s_c(int16_t* dst, intptr_t dstride, int16_t val)
{	
        for (int y = 0; y < size; y++)
        	for (int x = 0; x < size; x++)
            		dst[y * dstride + x] = val;
}

//-----------------------------------------------------------------------------------------------------
//void getResidual(const pixel* fenc, const pixel* pred, int16_t* residual, intptr_t stride)
//enable size 4x4, 8x8, 16x16, 32x32.
//-----------------------------------------------------------------------------------------------------

void getResidual_4x4(const pixel* fenc, const pixel* pred, int16_t* residual, intptr_t stride)
{
	#ifdef DEBUG
	const pixel *t_fenc, *t_pred;
	int16_t *t_residual;
	t_fenc = fenc;
	t_pred = pred;
	t_residual = residual;
	#endif 

	v8u16 tmp0, tmp1, tmp2, tmp3;
	v8i16 res0, res1;

	L_4x4_B_H(fenc, stride, &tmp0, &tmp1);
	L_4x4_B_H(pred, stride, &tmp2, &tmp3);
	res0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp2);
	res1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp3);		
	S_4x4_H(res0, res1, residual, stride);
	
	#ifdef DEBUG
	for (int y = 0; y < 4; y++)
    	{
        	for (int x = 0; x < 4; x++)
		{
			if (t_residual[x] != (static_cast<int16_t>(t_fenc[x]) - static_cast<int16_t>(t_pred[x])))
			{
				printf("getResidual_4x4 test fail\n");
				return;
			}
		}

        	t_fenc += stride;
        	t_residual += stride;
        	t_pred += stride;
    	}
	
	printf("getResidual_4x4 test success\n");
	#endif
}

void getResidual_8x8(const pixel* fenc, const pixel* pred, int16_t* residual, intptr_t stride)
{
	#ifdef DEBUG
	const pixel *t_fenc, *t_pred;
	int16_t *t_residual;
	t_fenc = fenc;
	t_pred = pred;
	t_residual = residual;
	#endif

	v8u16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8i16 res0, res1, res2, res3, res4, res5, res6, res7;

	LD4_BtoH(fenc, stride, &tmp0, &tmp1, &tmp2, &tmp3);

	fenc += 4 * stride;

	LD4_BtoH(fenc, stride, &mid0, &mid1, &mid2, &mid3);

	LD4_BtoH(pred, stride, &tmp4, &tmp5, &tmp6, &tmp7);

	pred += 4 * stride;

	LD4_BtoH(pred, stride, &mid4, &mid5, &mid6, &mid7);

	res0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp4);
	res1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp5);
	res2 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp6);
	res3 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp7);

	res4 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid4);
	res5 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid5);
	res6 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid6);
	res7 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid7);

	ST_V4((v2i64)res0, (v2i64)res1, (v2i64)res2, (v2i64)res3, (pixel *)residual, 2 * stride);

	residual += 4 * stride;

	ST_V4((v2i64)res4, (v2i64)res5, (v2i64)res6, (v2i64)res7, (pixel *)residual, 2 * stride);

	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
    	{
        	for (int x = 0; x < 8; x++)
		{
			if (t_residual[x] != (static_cast<int16_t>(t_fenc[x]) - static_cast<int16_t>(t_pred[x])))
			{
				printf("getResidual_8x8 test fail\n");
				return;
			}
		}

        	t_fenc += stride;
        	t_residual += stride;
        	t_pred += stride;
    	}
	
	printf("getResidual_8x8 test success\n");
	#endif
}

void getResidual_16x16(const pixel* fenc, const pixel* pred, int16_t* residual, intptr_t stride)
{
	#ifdef DEBUG
	const pixel *t_fenc, *t_pred;
	int16_t *t_residual;
	t_fenc = fenc;
	t_pred = pred;
	t_residual = residual;
	#endif 

	v8u16 tmp0, tmp1, tmp2, tmp3, mid0, mid1, mid2, mid3;
	v8u16 tmp8, tmp9, tmp10, tmp11, mid8, mid9, mid10, mid11;
	v8i16 tmp12, tmp13, tmp14, tmp15, mid12, mid13, mid14, mid15;

	for (int i = 4; i > 0; i--)
	{
		LD2_H_BtoH(fenc, &tmp0, &tmp1);
		LD2_H_BtoH(fenc + stride, &tmp2, &tmp3);

		fenc += 2 * stride;
	
		LD2_H_BtoH(fenc, &mid0, &mid1);
		LD2_H_BtoH(fenc + stride, &mid2, &mid3);

		LD2_H_BtoH(pred, &tmp8, &tmp9);
		LD2_H_BtoH(pred + stride, &tmp10, &tmp11);

		pred += 2 * stride;
	
		LD2_H_BtoH(pred, &mid8, &mid9);
		LD2_H_BtoH(pred + stride, &mid10, &mid11);

		tmp12 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp8);
		tmp13 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp9);
		tmp14 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp10);
		tmp15 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp11);

		mid12 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid8);
		mid13 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid9);
		mid14 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid10);
		mid15 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid11);

		ST_V2_H((v2i64)tmp12, (v2i64)tmp13, (pixel *)residual);
		ST_V2_H((v2i64)tmp14, (v2i64)tmp15, (pixel *)(residual + stride));

		residual += 2 * stride;

		ST_V2_H((v2i64)mid12, (v2i64)mid13, (pixel *)residual);
		ST_V2_H((v2i64)mid14, (v2i64)mid15, (pixel *)(residual + stride));

		fenc += 2 * stride;
		pred += 2 * stride;
		residual += 2 * stride;
	}

	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
    	{
        	for (int x = 0; x < 16; x++)
		{
			if (t_residual[x] != (static_cast<int16_t>(t_fenc[x]) - static_cast<int16_t>(t_pred[x])))
			{
				printf("getResidual_16x16 test fail\n");
				return;
			}
		}

        	t_fenc += stride;
        	t_residual += stride;
        	t_pred += stride;
    	}
	
	printf("getResidual_16x16 test success\n");
	#endif
}

void getResidual_32x32(const pixel* fenc, const pixel* pred, int16_t* residual, intptr_t stride)
{
	#ifdef DEBUG
	const pixel *t_fenc, *t_pred;
	int16_t *t_residual;
	t_fenc = fenc;
	t_pred = pred;
	t_residual = residual;
	#endif 

	v8u16 tmp0, tmp1, tmp2, tmp3, mid0, mid1, mid2, mid3;
	v8u16 tmp8, tmp9, tmp10, tmp11, mid8, mid9, mid10, mid11;
	v8i16 tmp12, tmp13, tmp14, tmp15, mid12, mid13, mid14, mid15;

	for (int i = 16; i > 0; i--)
	{
		LD4_H_BtoH(fenc, &tmp0, &tmp1, &tmp2, &tmp3);
		LD4_H_BtoH(pred, &tmp8, &tmp9, &tmp10, &tmp11);
		
		LD4_H_BtoH(fenc + stride, &mid0, &mid1, &mid2, &mid3);
		LD4_H_BtoH(pred + stride, &mid8, &mid9, &mid10, &mid11);
		
		tmp12 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp8);
		tmp13 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp9);
		tmp14 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp10);
		tmp15 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp11);
	
		mid12 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid8);
		mid13 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid9);
		mid14 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid10);
		mid15 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid11);

		ST_V4_H((v2i64)tmp12, (v2i64)tmp13, (v2i64)tmp14, (v2i64)tmp15, (pixel *)residual);
		ST_V4_H((v2i64)mid12, (v2i64)mid13, (v2i64)mid14, (v2i64)mid15, (pixel *)(residual + stride));

		fenc += 2 * stride;
		pred += 2 * stride;
		residual += 2 * stride;
	}

	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
    	{
        	for (int x = 0; x < 32; x++)
		{
			if (t_residual[x] != (static_cast<int16_t>(t_fenc[x]) - static_cast<int16_t>(t_pred[x])))
			{
				printf("getResidual_32x32 test fail\n");
				return;
			}
		}

        	t_fenc += stride;
        	t_residual += stride;
        	t_pred += stride;
    	}
	
	printf("getResidual_32x32 test success\n");
	#endif
}

template<int blockSize>
void getResidual(const pixel* fenc, const pixel* pred, int16_t* residual, intptr_t stride)
{
        for (int y = 0; y < blockSize; y++)
    	{
        	for (int x = 0; x < blockSize; x++)
         		residual[x] = static_cast<int16_t>(fenc[x]) - static_cast<int16_t>(pred[x]);

        	fenc += stride;
        	residual += stride;
        	pred += stride;
    	}
}

/*C function
static void weight_pp_c(const pixel* src, pixel* dst, intptr_t stride, int width, int height, int w0, int round, int shift, int offset)
{
    int x, y;

    const int correction = (IF_INTERNAL_PREC - X265_DEPTH);

    X265_CHECK(!(width & 15), "weightp alignment error\n");
    X265_CHECK(!((w0 << 6) > 32767), "w0 using more than 16 bits, asm output will mismatch\n");
    X265_CHECK(!(round > 32767), "round using more than 16 bits, asm output will mismatch\n");
    X265_CHECK((shift >= correction), "shift must be include factor correction, please update ASM ABI\n");
    X265_CHECK(!(round & ((1 << correction) - 1)), "round must be include factor correction, please update ASM ABI\n");

    for (y = 0; y <= height - 1; y++)
    {
        for (x = 0; x <= width - 1; )
        {
            // simulating pixel to short conversion
            int16_t val = src[x] << correction;
            dst[x] = x265_clip(((w0 * (val) + round) >> shift) + offset);
            x++;
        }

        src += stride;
        dst += stride;
    }
}
*/

//---------------------------------------------------------------------------------------------------------------------------------------
//static void weight_pp(const pixel* src, pixel* dst, intptr_t stride, int width, int height, int w0, int round, int shift, int offset)
//---------------------------------------------------------------------------------------------------------------------------------------

static void weight_pp(const pixel* src, pixel* dst, intptr_t stride, int width, int height, int w0, int round, int shift, int offset)
{
	#ifdef DEBUG
	int x, y;
	const int correction = (IF_INTERNAL_PREC - X265_DEPTH);//16
	const pixel *t_src;
	pixel *t_dst;
	int t_width, t_height, t_w0, t_round, t_shift, t_offset;
	t_src = src;
	t_dst = dst;
	t_width = width;
	t_height = height;
	t_w0 = w0;
	t_round = round;
	t_shift = shift;
	t_offset = offset;
	#endif
		
	int constant;
	w0 = w0 << 6;
	round = round << 16;
	constant = w0 | round;

	width = width >> 4;

	v4i32 con, off, shi;
	v8i16 h_1 = {1, 1, 1, 1, 1, 1, 1, 1};
	v8u16 tmp0, tmp1, tmp2, tmp3;
	v8i16 mid0, mid1, mid2, mid3;
	v4i32 cen0, cen1, cen2, cen3;
	v4i32 res0, res1, res2, res3;
	v16u8 out0, out2;
	
	con = __builtin_msa_insert_w(con, 0, constant);
	con = __builtin_msa_shf_w(con, 0); 

	off = __builtin_msa_insert_w(off, 0, offset);
	off = __builtin_msa_shf_w(off, 0);

	shi = __builtin_msa_insert_w(shi, 0, shift);
	shi = __builtin_msa_shf_w(shi, 0);
	
	for (int j = 0; j < height; j++)
	{
		for (int i = 0; i < width; i++)
		{
			LD2_H_BtoH(src + i * 16, &tmp0, &tmp1);
			
			mid0 = __builtin_msa_ilvr_h(h_1, (v8i16)tmp0);
			mid1 = __builtin_msa_ilvl_h(h_1, (v8i16)tmp0);
			
			mid2 = __builtin_msa_ilvr_h(h_1, (v8i16)tmp1);
			mid3 = __builtin_msa_ilvl_h(h_1, (v8i16)tmp1);

			cen0 = __builtin_msa_dotp_s_w((v8i16)con, mid0);
			cen1 = __builtin_msa_dotp_s_w((v8i16)con, mid1);
			cen2 = __builtin_msa_dotp_s_w((v8i16)con, mid2);
			cen3 = __builtin_msa_dotp_s_w((v8i16)con, mid3);

			res0 = __builtin_msa_srl_w(cen0, shi);
			res1 = __builtin_msa_srl_w(cen1, shi);
			res2 = __builtin_msa_srl_w(cen2, shi);
			res3 = __builtin_msa_srl_w(cen3, shi);
	
			res0 = __builtin_msa_addv_w(res0, off);
			res1 = __builtin_msa_addv_w(res1, off);
			res2 = __builtin_msa_addv_w(res2, off);
			res3 = __builtin_msa_addv_w(res3, off);
			
			tmp0 = __builtin_lsx_vsrains_u_h((v4u32)res0, 0);
			tmp1 = __builtin_lsx_vsrains_u_h((v4u32)res1, 0);
			tmp2 = __builtin_lsx_vsrains_u_h((v4u32)res2, 0);
			tmp3 = __builtin_lsx_vsrains_u_h((v4u32)res3, 0);
	
			tmp0 = (v8u16)__builtin_msa_insve_d((v2i64)tmp0, 1, (v2i64)tmp1);
			tmp2 = (v8u16)__builtin_msa_insve_d((v2i64)tmp2, 1, (v2i64)tmp3);
			
			out0 = __builtin_lsx_vsrlins_u_b(tmp0, 0);
			out2 = __builtin_lsx_vsrlins_u_b(tmp2, 0);

			out0 = (v16u8)__builtin_msa_insve_d((v2i64)out0, 1, (v2i64)out2);

			ST_V((v2i64)out0, dst + i * 16);
		}
		
		src += stride;
		dst += stride; 
	}

	#ifdef DEBUG
	for (y = 0; y <= t_height - 1; y++)
    	{
        	for (x = 0; x <= t_width - 1; )
        	{
            		// simulating pixel to short conversion
            		int16_t val = t_src[x] << correction;
            		if (t_dst[x] != x265_clip(((t_w0 * (val) + t_round) >> t_shift) + t_offset))
			{
				printf("weight_pp test fail\n");
				printf("fail at %d %d\n", y, x);
				printf("source is %d w0 is %d round is %d shift is %d offset is %d\n", t_src[x], t_w0, t_round, t_shift, t_offset);
				printf("right value %d\n", x265_clip(((t_w0 * (val) + t_round) >> t_shift) + t_offset));
				printf("wrong value %d\n", t_dst[x]);
				return;
			}
            		x++;
        	}

        	t_src += stride;
        	t_dst += stride;
    	}
	
	printf("weight_pp test success\n");

	#endif
}

//-------------------------------------------------------------------------------------------------------------------------------------
//void pixelavg_pp(pixel* dst, intptr_t dstride, const pixel* src0, intptr_t sstride0, const pixel* src1, intptr_t sstride1, int)
//only enable size 8x8.
//-------------------------------------------------------------------------------------------------------------------------------------

void pixelavg_pp_8x8(pixel* dst, intptr_t dstride, const pixel* src0, intptr_t sstride0, const pixel* src1, intptr_t sstride1, int)
{
	#ifdef DEBUG
	pixel *t_dst;
	const pixel *t_src0, *t_src1;
	t_dst = dst;
	t_src0 = src0;
	t_src1 = src1;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v16u8 res0, res1, res2, res3;

	LD4(src0, sstride0, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4(src0 + 4 * sstride0, sstride0, &tmp4, &tmp5, &tmp6, &tmp7);

	tmp0 = __builtin_msa_insve_d(tmp0, 1, tmp4);
	tmp1 = __builtin_msa_insve_d(tmp1, 1, tmp5);
	tmp2 = __builtin_msa_insve_d(tmp2, 1, tmp6);
	tmp3 = __builtin_msa_insve_d(tmp3, 1, tmp7);

	LD4(src1, sstride1, &mid0, &mid1, &mid2, &mid3);
	LD4(src1 + 4 * sstride1, sstride1, &mid4, &mid5, &mid6, &mid7);

	mid0 = __builtin_msa_insve_d(mid0, 1, mid4);
	mid1 = __builtin_msa_insve_d(mid1, 1, mid5);
	mid2 = __builtin_msa_insve_d(mid2, 1, mid6);
	mid3 = __builtin_msa_insve_d(mid3, 1, mid7);

	res0 = __builtin_msa_aver_u_b((v16u8)tmp0, (v16u8)mid0);	
	res1 = __builtin_msa_aver_u_b((v16u8)tmp1, (v16u8)mid1);	
	res2 = __builtin_msa_aver_u_b((v16u8)tmp2, (v16u8)mid2);	
	res3 = __builtin_msa_aver_u_b((v16u8)tmp3, (v16u8)mid3);	
	
	SD4((v2i64)res0, (v2i64)res1, (v2i64)res2, (v2i64)res3, dst, dstride);
	SD4_1((v2i64)res0, (v2i64)res1, (v2i64)res2, (v2i64)res3, dst + 4 * dstride, dstride);	
	
	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
    	{
        	for (int x = 0; x < 8; x++)
            	{
			if (t_dst[x] != (t_src0[x] + t_src1[x] + 1) >> 1)
			{
				printf("pixelavg_pp_8x8 test fail\n");
				return;
			}
		}

        	t_src0 += sstride0;
        	t_src1 += sstride1;
        	t_dst += dstride;
    	}	

	printf("pixelavg_pp_8x8 test success\n");	
	#endif
}

template<int lx, int ly>
void pixelavg_pp(pixel* dst, intptr_t dstride, const pixel* src0, intptr_t sstride0, const pixel* src1, intptr_t sstride1, int)
{
    for (int y = 0; y < ly; y++)
    {
        for (int x = 0; x < lx; x++)
            dst[x] = (src0[x] + src1[x] + 1) >> 1;

        src0 += sstride0;
        src1 += sstride1;
        dst += dstride;
    }
}

/* C function
static
void frame_init_lowres_core_c(const pixel* src0, pixel* dst0, pixel* dsth, pixel* dstv, pixel* dstc,
                            intptr_t src_stride, intptr_t dst_stride, int width, int height)
{
    for (int y = 0; y < height; y++)
    {
        const pixel* src1 = src0 + src_stride;
        const pixel* src2 = src1 + src_stride;
        for (int x = 0; x < width; x++)
        {
            // slower than naive bilinear, but matches asm
#define FILTER(a, b, c, d) ((((a + b + 1) >> 1) + ((c + d + 1) >> 1) + 1) >> 1)
            dst0[x] = FILTER(src0[2 * x], src1[2 * x], src0[2 * x + 1], src1[2 * x + 1]);
            dsth[x] = FILTER(src0[2 * x + 1], src1[2 * x + 1], src0[2 * x + 2], src1[2 * x + 2]);
            dstv[x] = FILTER(src1[2 * x], src2[2 * x], src1[2 * x + 1], src2[2 * x + 1]);
            dstc[x] = FILTER(src1[2 * x + 1], src2[2 * x + 1], src1[2 * x + 2], src2[2 * x + 2]);
#undef FILTER
        }
        src0 += src_stride * 2;
        dst0 += dst_stride;
        dsth += dst_stride;
        dstv += dst_stride;
        dstc += dst_stride;
    }
}
*/

//---------------------------------------------------------------------------------------------------------------
//static void frame_init_lowres_core(const pixel* src0, pixel* dst0, pixel* dsth, pixel* dstv, pixel* dstc,
//                            intptr_t src_stride, intptr_t dst_stride, int width, int height)
//---------------------------------------------------------------------------------------------------------------

static
void frame_init_lowres_core(const pixel* src0, pixel* dst0, pixel* dsth, pixel* dstv, pixel* dstc,
                            intptr_t src_stride, intptr_t dst_stride, int width, int height)
{
	#ifdef DEBUG
	const pixel *t_src0;
	pixel *t_dst0, *t_dsth, *t_dstv, *t_dstc;
	int t_width, t_height;
	t_src0 = src0;
	t_dst0 = dst0;
	t_dsth = dsth;
	t_dstv = dstv;
	t_dstc = dstc;
	t_width = width;
	t_height = height;
	#endif

	width = (width + 15) & (~15); //multiple of 16

	src0 += 2 * ((height - 1) * src_stride + width);

	int con0 = (height - 1) * dst_stride + width;
	dst0 += con0;
	dsth += con0;
	dstv += con0;
	dstc += con0;

	int con1 = dst_stride - width;
	int con2 = (src_stride - width) * 2;

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8;
	v16u8 mid0, mid1, mid2, mid3, mid4, mid5;
	v16i8 cen0, cen1, cen2, cen3;
	v16u8 res0, res1, res2, res3;
	v16i8 out0, out1, out2, out3;

	for (int j = 0; j < height; j++)
	{
		LD_V3(src0, src_stride, &tmp0, &tmp1, &tmp2);	
		
		mid0 = __builtin_msa_aver_u_b((v16u8)tmp0, (v16u8)tmp1);
		mid1 = __builtin_msa_aver_u_b((v16u8)tmp1, (v16u8)tmp2);
		
		for (int i = 0; i < (width / 16); i++)
		{
			src0 -= 32;
			dst0 -= 16;
			dsth -= 16;
			dstv -= 16;
			dstc -= 16;

			LD_V3(src0 + 16, src_stride, &tmp3, &tmp4, &tmp5);
			LD_V3(src0, src_stride, &tmp6, &tmp7, &tmp8);

			mid2 = __builtin_msa_aver_u_b((v16u8)tmp3, (v16u8)tmp4);
			mid3 = __builtin_msa_aver_u_b((v16u8)tmp4, (v16u8)tmp5);
			mid4 = __builtin_msa_aver_u_b((v16u8)tmp6, (v16u8)tmp7);
			mid5 = __builtin_msa_aver_u_b((v16u8)tmp7, (v16u8)tmp8);

			cen0 = __builtin_lsx_vextr_v((v16i8)mid0, (v16i8)mid2, 1);
			cen1 = __builtin_lsx_vextr_v((v16i8)mid1, (v16i8)mid3, 1);
			cen2 = __builtin_lsx_vextr_v((v16i8)mid2, (v16i8)mid4, 1);
			cen3 = __builtin_lsx_vextr_v((v16i8)mid3, (v16i8)mid5, 1);

			res0 = __builtin_msa_aver_u_b((v16u8)cen0, mid2);//even row
			res1 = __builtin_msa_aver_u_b((v16u8)cen1, mid3);//odd row
			res2 = __builtin_msa_aver_u_b((v16u8)cen2, mid4);//even
			res3 = __builtin_msa_aver_u_b((v16u8)cen3, mid5);//odd

			out0 = __builtin_msa_pckev_b((v16i8)res0, (v16i8)res2);//even row even column	
			out1 = __builtin_msa_pckod_b((v16i8)res0, (v16i8)res2);//even row odd column
			out2 = __builtin_msa_pckev_b((v16i8)res1, (v16i8)res3);//odd row even column	
			out3 = __builtin_msa_pckod_b((v16i8)res1, (v16i8)res3);//odd row odd column
					
			ST_V((v2i64)out0, dst0);
			ST_V((v2i64)out1, dsth);
			ST_V((v2i64)out2, dstv);
			ST_V((v2i64)out3, dstc);

			mid0 = (v16u8)__builtin_msa_move_v((v16i8)mid4);
			mid1 = (v16u8)__builtin_msa_move_v((v16i8)mid5);
		}
		
		src0 -= con2; 
		dst0 -= con1;
		dsth -= con1;
		dstv -= con1;
		dstc -= con1;
	} 

	#ifdef DEBUG
	for (int y = 0; y < t_height; y++)
    	{
        	const pixel* t_src1 = t_src0 + src_stride;
        	const pixel* t_src2 = t_src1 + src_stride;
        	for (int x = 0; x < t_width; x++)
        	{
            		// slower than naive bilinear, but matches asm
	#define FILTER(a, b, c, d) ((((a + b + 1) >> 1) + ((c + d + 1) >> 1) + 1) >> 1)
            		if (t_dst0[x] != FILTER(t_src0[2 * x], t_src1[2 * x], t_src0[2 * x + 1], t_src1[2 * x + 1]))
			{
				printf("frame_init_lowres_core test fail\n");
				printf("fail at dst0\nright value %d\nwrong value %d\n", FILTER(t_src0[2 * x], t_src1[2 * x], t_src0[2 * x + 1], t_src1[2 * x + 1]), t_dst0[x]);
				printf("width is %d\nheight is %d\n", x, y);
				return;
			}
            		
			if (t_dsth[x] != FILTER(t_src0[2 * x + 1], t_src1[2 * x + 1], t_src0[2 * x + 2], t_src1[2 * x + 2]))
			{
				printf("frame_init_lowres_core test fail\n");
				printf("fail at dsth\nright value %d\nwrong value %d\n", FILTER(t_src0[2 * x + 1], t_src1[2 * x + 1], t_src0[2 * x + 2], t_src1[2 * x + 2]), t_dsth[x]);
				printf("width is %d\nheight is %d\n", x, y);
				return;
			}

            		if (t_dstv[x] != FILTER(t_src1[2 * x], t_src2[2 * x], t_src1[2 * x + 1], t_src2[2 * x + 1]))
			{
				printf("frame_init_lowres_core test fail\n");
				printf("fail at dstv\nright value %d\nwrong value %d\n", FILTER(t_src1[2 * x], t_src2[2 * x], t_src1[2 * x + 1], t_src2[2 * x + 1]), t_dsth[x]);
				printf("width is %d\nheight is %d\n", x, y);
				return;
			}

            		if (t_dstc[x] != FILTER(t_src1[2 * x + 1], t_src2[2 * x + 1], t_src1[2 * x + 2], t_src2[2 * x + 2]))
			{
				printf("frame_init_lowres_core test fail\n");
				printf("fail at dstc\nright value %d\nwrong value %d\n", FILTER(t_src1[2 * x + 1], t_src2[2 * x + 1], t_src1[2 * x + 2], t_src2[2 * x + 2]), t_dsth[x]);
				printf("width is %d\nheight is %d\n", x, y);
				return;
			}
	#undef FILTER
        	}
        	t_src0 += src_stride * 2;
        	t_dst0 += dst_stride;
        	t_dsth += dst_stride;
        	t_dstv += dst_stride;
        	t_dstc += dst_stride;
    	}

	printf("frame_init_lowres_core test success\n");
	#endif
}

//----------------------------------------------------------------------------
//uint64_t pixel_var(const pixel* pix, intptr_t i_stride)
//enable size 8x8, 16x16.
//----------------------------------------------------------------------------

uint64_t pixel_var_8x8(const pixel* pix, intptr_t i_stride)
{
	#ifdef DEBUG
	const pixel *t_pix;
	uint32_t sum = 0, sqr = 0;
	t_pix = pix;
	#endif
	
	//uint32_t output0, output1;
	uint64_t output;
	v8u16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8i16 mid0, mid1, mid2, mid3;
	v4u32 res0, res1, res2, res3, res4, res5, res6, res7;
	v4u32 out0, out1, out2, out3;
	v4i32 cen0, cen1, cen2, cen3, cen4, cen5;
	v2i64 las0, las1;	

	LD4_BtoH(pix, i_stride, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4_BtoH(pix + 4 * i_stride, i_stride, &tmp4, &tmp5, &tmp6, &tmp7);

	mid0 = __builtin_msa_addv_h((v8i16)tmp0, (v8i16)tmp4);
	mid1 = __builtin_msa_addv_h((v8i16)tmp1, (v8i16)tmp5);
	mid2 = __builtin_msa_addv_h((v8i16)tmp2, (v8i16)tmp6);
	mid3 = __builtin_msa_addv_h((v8i16)tmp3, (v8i16)tmp7);

	res0 = __builtin_msa_dotp_u_w(tmp0, tmp0);
	res1 = __builtin_msa_dotp_u_w(tmp1, tmp1);
	res2 = __builtin_msa_dotp_u_w(tmp2, tmp2);
	res3 = __builtin_msa_dotp_u_w(tmp3, tmp3);
	res4 = __builtin_msa_dotp_u_w(tmp4, tmp4);
	res5 = __builtin_msa_dotp_u_w(tmp5, tmp5);
	res6 = __builtin_msa_dotp_u_w(tmp6, tmp6);
	res7 = __builtin_msa_dotp_u_w(tmp7, tmp7);

	out0 = __builtin_msa_hadd_u_w((v8u16)mid0, (v8u16)mid0);
	out1 = __builtin_msa_hadd_u_w((v8u16)mid1, (v8u16)mid1);
	out2 = __builtin_msa_hadd_u_w((v8u16)mid2, (v8u16)mid2);
	out3 = __builtin_msa_hadd_u_w((v8u16)mid3, (v8u16)mid3);
	
	cen0 = __builtin_msa_addv_w((v4i32)res0, (v4i32)res1);
	cen1 = __builtin_msa_addv_w((v4i32)res2, (v4i32)res3);
	cen2 = __builtin_msa_addv_w((v4i32)res4, (v4i32)res5);
	cen3 = __builtin_msa_addv_w((v4i32)res6, (v4i32)res7);

	cen4 = __builtin_msa_addv_w((v4i32)out0, (v4i32)out1);
	cen5 = __builtin_msa_addv_w((v4i32)out2, (v4i32)out3);

	cen0 = __builtin_msa_addv_w(cen0, cen1);
	cen2 = __builtin_msa_addv_w(cen2, cen3);
	
	cen4 = __builtin_msa_addv_w(cen4, cen5); //add

	cen0 = __builtin_msa_addv_w(cen0, cen2); //m add

	las0 = __builtin_msa_hadd_s_d(cen4, cen4); // add
 
	las1 = __builtin_msa_hadd_s_d(cen0, cen0); //m add
		
	las1 = __builtin_msa_slli_d(las1, 32);

	las0 = __builtin_msa_addv_d(las0, las1);
	
	//output0 = (uint32_t)(cen4[0] + cen4[1] + cen4[2] + cen4[3]);
	//output1 = (uint32_t)(cen0[0] + cen0[1] + cen0[2] + cen0[3]); 	

	//output = ((uint64_t)output1 << 32) + output0;	
	
	output = (uint64_t)(las0[0] + las0[1]);

	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
    	{
        	for (int x = 0; x < 8; x++)
        	{
            		sum += t_pix[x];
            		sqr += t_pix[x] * t_pix[x];
        	}

        	t_pix += i_stride;
    	}

	if (output == (sum + ((uint64_t)sqr << 32)))
		printf("pixel_var_8x8 test success\n");
	else
		printf("pixel_var_8x8 test fail\n");
	#endif
		
	return output;
}

uint64_t pixel_var_16x16(const pixel* pix, intptr_t i_stride)
{
	#ifdef DEBUG
	const pixel *t_pix;
	uint32_t sum = 0, sqr = 0;
	t_pix = pix;
	#endif
		
	//uint32_t output0, output1;
	uint64_t output;
	v8u16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, tmp14, tmp15;
	v8i16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v4u32 res0, res1, res2, res3, res4, res5, res6, res7;
	v4u32 res8, res9, res10, res11, res12, res13, res14, res15;
	v4u32 out0, out1, out2, out3, out4, out5, out6, out7;
	v4i32 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v4i32 cen8, cen9, cen10, cen11;
	v4i32 sum0, sum1, sum2, sum3, sum4, sum5;
	v2i64 las0, las1;

	LD2_H_BtoH(pix, &tmp0, &tmp1);
	LD2_H_BtoH(pix + i_stride, &tmp2, &tmp3);
	LD2_H_BtoH(pix + 2 * i_stride, &tmp4, &tmp5);
	LD2_H_BtoH(pix + 3 * i_stride, &tmp6, &tmp7);

	pix += 4 * i_stride;

	LD2_H_BtoH(pix, &tmp8, &tmp9);
	LD2_H_BtoH(pix + i_stride, &tmp10, &tmp11);
	LD2_H_BtoH(pix + 2 * i_stride, &tmp12, &tmp13);
	LD2_H_BtoH(pix + 3 * i_stride, &tmp14, &tmp15);

	pix += 4 * i_stride;
	
	mid0 = __builtin_msa_addv_h((v8i16)tmp0, (v8i16)tmp4);
	mid1 = __builtin_msa_addv_h((v8i16)tmp1, (v8i16)tmp5);
	mid2 = __builtin_msa_addv_h((v8i16)tmp2, (v8i16)tmp6);
	mid3 = __builtin_msa_addv_h((v8i16)tmp3, (v8i16)tmp7);
	mid4 = __builtin_msa_addv_h((v8i16)tmp8, (v8i16)tmp12);
	mid5 = __builtin_msa_addv_h((v8i16)tmp9, (v8i16)tmp13);
	mid6 = __builtin_msa_addv_h((v8i16)tmp10, (v8i16)tmp14);
	mid7 = __builtin_msa_addv_h((v8i16)tmp11, (v8i16)tmp15);

	res0 = __builtin_msa_dotp_u_w(tmp0, tmp0);
	res1 = __builtin_msa_dotp_u_w(tmp1, tmp1);
	res2 = __builtin_msa_dotp_u_w(tmp2, tmp2);
	res3 = __builtin_msa_dotp_u_w(tmp3, tmp3);
	res4 = __builtin_msa_dotp_u_w(tmp4, tmp4);
	res5 = __builtin_msa_dotp_u_w(tmp5, tmp5);
	res6 = __builtin_msa_dotp_u_w(tmp6, tmp6);
	res7 = __builtin_msa_dotp_u_w(tmp7, tmp7);
	res8 = __builtin_msa_dotp_u_w(tmp8, tmp8);
	res9 = __builtin_msa_dotp_u_w(tmp9, tmp9);
	res10 = __builtin_msa_dotp_u_w(tmp10, tmp10);
	res11 = __builtin_msa_dotp_u_w(tmp11, tmp11);
	res12 = __builtin_msa_dotp_u_w(tmp12, tmp12);
	res13 = __builtin_msa_dotp_u_w(tmp13, tmp13);
	res14 = __builtin_msa_dotp_u_w(tmp14, tmp14);
	res15 = __builtin_msa_dotp_u_w(tmp15, tmp15);

	out0 = __builtin_msa_hadd_u_w((v8u16)mid0, (v8u16)mid0);
	out1 = __builtin_msa_hadd_u_w((v8u16)mid1, (v8u16)mid1);
	out2 = __builtin_msa_hadd_u_w((v8u16)mid2, (v8u16)mid2);
	out3 = __builtin_msa_hadd_u_w((v8u16)mid3, (v8u16)mid3);
	out4 = __builtin_msa_hadd_u_w((v8u16)mid4, (v8u16)mid4);
	out5 = __builtin_msa_hadd_u_w((v8u16)mid5, (v8u16)mid5);
	out6 = __builtin_msa_hadd_u_w((v8u16)mid6, (v8u16)mid6);
	out7 = __builtin_msa_hadd_u_w((v8u16)mid7, (v8u16)mid7);

	cen0 = __builtin_msa_addv_w((v4i32)res0, (v4i32)res1);
	cen1 = __builtin_msa_addv_w((v4i32)res2, (v4i32)res3);
	cen2 = __builtin_msa_addv_w((v4i32)res4, (v4i32)res5);
	cen3 = __builtin_msa_addv_w((v4i32)res6, (v4i32)res7);
	cen4 = __builtin_msa_addv_w((v4i32)res8, (v4i32)res9);
	cen5 = __builtin_msa_addv_w((v4i32)res10, (v4i32)res11);
	cen6 = __builtin_msa_addv_w((v4i32)res12, (v4i32)res13);
	cen7 = __builtin_msa_addv_w((v4i32)res14, (v4i32)res15);

	cen8 = __builtin_msa_addv_w((v4i32)out0, (v4i32)out1);
	cen9 = __builtin_msa_addv_w((v4i32)out2, (v4i32)out3);
	cen10 = __builtin_msa_addv_w((v4i32)out4, (v4i32)out5);
	cen11 = __builtin_msa_addv_w((v4i32)out6, (v4i32)out7);

	sum0 = __builtin_msa_addv_w(cen0, cen1);
	sum1 = __builtin_msa_addv_w(cen2, cen3);
	sum2 = __builtin_msa_addv_w(cen4, cen5);
	sum3 = __builtin_msa_addv_w(cen6, cen7);

	sum4 = __builtin_msa_addv_w(cen8, cen9);
	sum5 = __builtin_msa_addv_w(cen10, cen11);
	
	LD2_H_BtoH(pix, &tmp0, &tmp1);
	LD2_H_BtoH(pix + i_stride, &tmp2, &tmp3);
	LD2_H_BtoH(pix + 2 * i_stride, &tmp4, &tmp5);
	LD2_H_BtoH(pix + 3 * i_stride, &tmp6, &tmp7);

	pix += 4 * i_stride;

	LD2_H_BtoH(pix, &tmp8, &tmp9);
	LD2_H_BtoH(pix + i_stride, &tmp10, &tmp11);
	LD2_H_BtoH(pix + 2 * i_stride, &tmp12, &tmp13);
	LD2_H_BtoH(pix + 3 * i_stride, &tmp14, &tmp15);

	mid0 = __builtin_msa_addv_h((v8i16)tmp0, (v8i16)tmp4);
	mid1 = __builtin_msa_addv_h((v8i16)tmp1, (v8i16)tmp5);
	mid2 = __builtin_msa_addv_h((v8i16)tmp2, (v8i16)tmp6);
	mid3 = __builtin_msa_addv_h((v8i16)tmp3, (v8i16)tmp7);
	mid4 = __builtin_msa_addv_h((v8i16)tmp8, (v8i16)tmp12);
	mid5 = __builtin_msa_addv_h((v8i16)tmp9, (v8i16)tmp13);
	mid6 = __builtin_msa_addv_h((v8i16)tmp10, (v8i16)tmp14);
	mid7 = __builtin_msa_addv_h((v8i16)tmp11, (v8i16)tmp15);

	res0 = __builtin_msa_dotp_u_w(tmp0, tmp0);
	res1 = __builtin_msa_dotp_u_w(tmp1, tmp1);
	res2 = __builtin_msa_dotp_u_w(tmp2, tmp2);
	res3 = __builtin_msa_dotp_u_w(tmp3, tmp3);
	res4 = __builtin_msa_dotp_u_w(tmp4, tmp4);
	res5 = __builtin_msa_dotp_u_w(tmp5, tmp5);
	res6 = __builtin_msa_dotp_u_w(tmp6, tmp6);
	res7 = __builtin_msa_dotp_u_w(tmp7, tmp7);
	res8 = __builtin_msa_dotp_u_w(tmp8, tmp8);
	res9 = __builtin_msa_dotp_u_w(tmp9, tmp9);
	res10 = __builtin_msa_dotp_u_w(tmp10, tmp10);
	res11 = __builtin_msa_dotp_u_w(tmp11, tmp11);
	res12 = __builtin_msa_dotp_u_w(tmp12, tmp12);
	res13 = __builtin_msa_dotp_u_w(tmp13, tmp13);
	res14 = __builtin_msa_dotp_u_w(tmp14, tmp14);
	res15 = __builtin_msa_dotp_u_w(tmp15, tmp15);

	out0 = __builtin_msa_hadd_u_w((v8u16)mid0, (v8u16)mid0);
	out1 = __builtin_msa_hadd_u_w((v8u16)mid1, (v8u16)mid1);
	out2 = __builtin_msa_hadd_u_w((v8u16)mid2, (v8u16)mid2);
	out3 = __builtin_msa_hadd_u_w((v8u16)mid3, (v8u16)mid3);
	out4 = __builtin_msa_hadd_u_w((v8u16)mid4, (v8u16)mid4);
	out5 = __builtin_msa_hadd_u_w((v8u16)mid5, (v8u16)mid5);
	out6 = __builtin_msa_hadd_u_w((v8u16)mid6, (v8u16)mid6);
	out7 = __builtin_msa_hadd_u_w((v8u16)mid7, (v8u16)mid7);

	cen0 = __builtin_msa_addv_w((v4i32)res0, (v4i32)res1);
	cen1 = __builtin_msa_addv_w((v4i32)res2, (v4i32)res3);
	cen2 = __builtin_msa_addv_w((v4i32)res4, (v4i32)res5);
	cen3 = __builtin_msa_addv_w((v4i32)res6, (v4i32)res7);
	cen4 = __builtin_msa_addv_w((v4i32)res8, (v4i32)res9);
	cen5 = __builtin_msa_addv_w((v4i32)res10, (v4i32)res11);
	cen6 = __builtin_msa_addv_w((v4i32)res12, (v4i32)res13);
	cen7 = __builtin_msa_addv_w((v4i32)res14, (v4i32)res15);

	cen8 = __builtin_msa_addv_w((v4i32)out0, (v4i32)out1);
	cen9 = __builtin_msa_addv_w((v4i32)out2, (v4i32)out3);
	cen10 = __builtin_msa_addv_w((v4i32)out4, (v4i32)out5);
	cen11 = __builtin_msa_addv_w((v4i32)out6, (v4i32)out7);

	cen0 = __builtin_msa_addv_w(cen0, cen1);
	cen2 = __builtin_msa_addv_w(cen2, cen3);
	cen4 = __builtin_msa_addv_w(cen4, cen5);
	cen6 = __builtin_msa_addv_w(cen6, cen7);

	cen8 = __builtin_msa_addv_w(cen8, cen9);
	cen10 = __builtin_msa_addv_w(cen10, cen11);

	sum0 = __builtin_msa_addv_w(sum0, cen0);
	sum1 = __builtin_msa_addv_w(sum1, cen2);
	sum2 = __builtin_msa_addv_w(sum2, cen4);
	sum3 = __builtin_msa_addv_w(sum3, cen6);

	sum4 = __builtin_msa_addv_w(sum4, cen8);
	sum5 = __builtin_msa_addv_w(sum5, cen10);

	sum0 = __builtin_msa_addv_w(sum0, sum1);	
	sum2 = __builtin_msa_addv_w(sum2, sum3);

	sum4 = __builtin_msa_addv_w(sum4, sum5);//add

	sum0 = __builtin_msa_addv_w(sum0, sum2);//m add

	las0 = __builtin_msa_hadd_s_d(sum4, sum4); // add
 
	las1 = __builtin_msa_hadd_s_d(sum0, sum0); //m add
		
	las1 = __builtin_msa_slli_d(las1, 32);

	las0 = __builtin_msa_addv_d(las0, las1);

	//output0 = (uint32_t)(sum4[0] + sum4[1] + sum4[2] + sum4[3]);
	//output1 = (uint32_t)(sum0[0] + sum0[1] + sum0[2] + sum0[3]); 	

	//output = ((uint64_t)output1 << 32) + output0;	
	
	output = (uint64_t)(las0[0] + las0[1]);

	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
    	{
        	for (int x = 0; x < 16; x++)
        	{
            		sum += t_pix[x];
            		sqr += t_pix[x] * t_pix[x];
        	}

        	t_pix += i_stride;
    	}

	if (output == (sum + ((uint64_t)sqr << 32)))
		printf("pixel_var_16x16 test success\n");
	else
		printf("pixel_var_16x16 test fail\n");
	#endif

	return output;	
}

template<int size>
uint64_t pixel_var(const pixel* pix, intptr_t i_stride)
{
    uint32_t sum = 0, sqr = 0;

    for (int y = 0; y < size; y++)
    {
        for (int x = 0; x < size; x++)
        {
            sum += pix[x];
            sqr += pix[x] * pix[x];
        }

        pix += i_stride;
    }

    return sum + ((uint64_t)sqr << 32);
}

//-----------------------------------------------------------------------------------------------------
//int psyCost_pp(const pixel* source, intptr_t sstride, const pixel* recon, intptr_t rstride)
//enable size 4x4, 8x8, 16x16, 32x32.
//-----------------------------------------------------------------------------------------------------

int psyCost_pp_4x4(const pixel* source, intptr_t sstride, const pixel* recon, intptr_t rstride)
{
	#ifdef DEBUG
	const pixel *t_source, *t_recon;
	int t_sourceEnergy, t_reconEnergy;
    	static pixel zeroBuf[8] /* = { 0 } */;
	t_source = source;
	t_recon = recon;
	#endif 	

	//int sourceEnergy, reconEnergy;
	int output;
	v4i32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8i16 mid0, mid1, mid2, mid3, mid4, mid5;
	v8i16 mid6, mid7, mid8, mid9, mid10, mid11;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5;
	v8u16 bet0, bet1, bet4, bet5;
	v8i16 bet2, bet3, bet6, bet7;
	v8i16 out0, out1;
	v4i32 res0, res1, res2, res3;
	
	LW4(source, sstride, &tmp0, &tmp1, &tmp2, &tmp3);
	LW4(recon, rstride, &tmp4, &tmp5, &tmp6, &tmp7);

	tmp0 = __builtin_msa_insve_w(tmp0, 1, tmp1);
	tmp2 = __builtin_msa_insve_w(tmp2, 1, tmp3);
	tmp4 = __builtin_msa_insve_w(tmp4, 1, tmp5);
	tmp6 = __builtin_msa_insve_w(tmp6, 1, tmp7);

	bet0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	bet1 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	bet4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	bet5 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);

	bet2 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	bet3 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	bet6 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	bet7 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);

	out0 = __builtin_msa_addv_h((v8i16)bet0, (v8i16)bet1);
	out1 = __builtin_msa_addv_h((v8i16)bet4, (v8i16)bet5);
	
	res0 = __builtin_msa_hadd_s_w(out0, out0);
	res2 = __builtin_msa_hadd_s_w(out1, out1);

	res0 = (v4i32)__builtin_msa_hadd_s_d(res0, res0);
	res2 = (v4i32)__builtin_msa_hadd_s_d(res2, res2);

	res1 = __builtin_msa_srli_w(res0, 2);
	res3 = __builtin_msa_srli_w(res2, 2);

	//sourceEnergy_DC = (res0[0] + res0[1]) >> 2;

	tmp0 = __builtin_msa_ilvr_w((v4i32)bet2, (v4i32)bet0);
	tmp1 = __builtin_msa_ilvr_w((v4i32)bet3, (v4i32)bet1);
	tmp2 = __builtin_msa_ilvr_w((v4i32)bet6, (v4i32)bet4);
	tmp3 = __builtin_msa_ilvr_w((v4i32)bet7, (v4i32)bet5);

	mid0 = __builtin_msa_addv_h((v8i16)tmp0, (v8i16)tmp1);
	mid1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp0);
	mid6 = __builtin_msa_addv_h((v8i16)tmp2, (v8i16)tmp3);
	mid7 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp2);

	mid2 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)mid1);
	mid3 = (v8i16)__builtin_msa_ilvl_d((v2i64)mid1, (v2i64)mid0);
	mid8 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)mid7);
	mid9 = (v8i16)__builtin_msa_ilvl_d((v2i64)mid7, (v2i64)mid6);

	mid4 = __builtin_msa_addv_h(mid2, mid3);
	mid5 = __builtin_msa_subv_h(mid3, mid2);	
	mid10 = __builtin_msa_addv_h(mid8, mid9);
	mid11 = __builtin_msa_subv_h(mid9, mid8);	

	cen0 = __builtin_msa_ilvod_h(mid5, mid4);
	cen1 = __builtin_msa_ilvev_h(mid5, mid4);
	cen3 = __builtin_msa_ilvod_h(mid11, mid10);
	cen4 = __builtin_msa_ilvev_h(mid11, mid10);

	cen0 = __builtin_lsx_vabs_h(cen0);
	cen1 = __builtin_lsx_vabs_h(cen1);
	cen3 = __builtin_lsx_vabs_h(cen3);
	cen4 = __builtin_lsx_vabs_h(cen4);

	cen2 = __builtin_msa_max_s_h(cen0, cen1);	
	cen5 = __builtin_msa_max_s_h(cen3, cen4);	
	
	res0 = __builtin_msa_hadd_s_w(cen2, cen2);
	res2 = __builtin_msa_hadd_s_w(cen5, cen5);

	res1 = __builtin_msa_subv_w(res0, res1); 
	res3 = __builtin_msa_subv_w(res2, res3); 

	res1 = __builtin_msa_subv_w(res1, res3);
	res0 = __builtin_msa_subv_w(res0, res2);
	
	//sourceEnergy = res1[0] + res1[1] + res0[2] + res0[3];
	//reconEnergy = res3[0] + res3[1] + res2[2] + res2[2];
	
	output = res1[0] + res0[1] + res0[2] + res0[3];
	
	output = abs(output);

	#ifdef DEBUG
	t_sourceEnergy = satd_4x4(t_source, sstride, zeroBuf, 0) - (sad<4, 4>(t_source, sstride, zeroBuf, 0) >> 2);
        t_reconEnergy = satd_4x4(t_recon, rstride, zeroBuf, 0) - (sad<4, 4>(t_recon, rstride, zeroBuf, 0) >> 2);
	
	if (output == abs(t_sourceEnergy - t_reconEnergy))
		printf("psyCost_pp_4x4 test success\n");
	else
	{
		printf("psyCost_pp_4x4 test fail\n");
		printf("right value %d\n", abs(t_sourceEnergy - t_reconEnergy));
		printf("wrong value %d\n", output);
	}
	#endif

	return output;
}

int psyCost_pp_8x8(const pixel* source, intptr_t sstride, const pixel* recon, intptr_t rstride)
{
	#ifdef DEBUG
	const pixel *t_source, *t_recon;
	int t_sourceEnergy, t_reconEnergy;
    	static pixel zeroBuf[8];
	t_source = source;
	t_recon = recon;
	#endif 	

	int output;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 cen8, cen9, cen10, cen11, cen12, cen13, cen14, cen15;
	v8i16 bet0, bet1, bet2, bet3, bet4, bet5, bet6, bet7; 
	v8i16 bet8, bet9, bet10, bet11, bet12, bet13, bet14, bet15;
	v8i16 val0, val1, val2, val3, val4, val5, val6, val7; 
	v8i16 val8, val9, val10, val11, val12, val13, val14, val15;
	v8i16 out0, out1, out2, out3;
	v4i32 res0, res1, res2, res3, res4, res5;
	v4i32 res6, res7, res8, res9, res10, res11;
	
	LD4(source, sstride, &tmp0, &tmp1, &tmp2, &tmp3);
	
	source += 4 * sstride;
	
	LD4(source, sstride, &tmp4, &tmp5, &tmp6, &tmp7);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	out0 = __builtin_msa_addv_h((v8i16)mid0, (v8i16)mid1);
	out1 = __builtin_msa_addv_h((v8i16)mid2, (v8i16)mid3);
	out2 = __builtin_msa_addv_h((v8i16)mid4, (v8i16)mid5);
	out3 = __builtin_msa_addv_h((v8i16)mid6, (v8i16)mid7);

	out0 = __builtin_msa_addv_h(out0, out1);
	out2 = __builtin_msa_addv_h(out2, out3);
	
	out0 = __builtin_msa_addv_h(out0, out2);

	res0 = __builtin_msa_hadd_s_w(out0, out0);
	
	res0 = (v4i32)__builtin_msa_hadd_s_d(res0, res0);

	res1 = __builtin_msa_srli_w(res0, 2);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	LD4(recon, rstride, &tmp0, &tmp1, &tmp2, &tmp3);
	
	recon += 4 * rstride;
	
	LD4(recon, rstride, &tmp4, &tmp5, &tmp6, &tmp7);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen8 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen9 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen10 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen11 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen12 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen13 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen14 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen15 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	out0 = __builtin_msa_addv_h((v8i16)mid0, (v8i16)mid1);
	out1 = __builtin_msa_addv_h((v8i16)mid2, (v8i16)mid3);
	out2 = __builtin_msa_addv_h((v8i16)mid4, (v8i16)mid5);
	out3 = __builtin_msa_addv_h((v8i16)mid6, (v8i16)mid7);

	out0 = __builtin_msa_addv_h(out0, out1);
	out2 = __builtin_msa_addv_h(out2, out3);
	
	out0 = __builtin_msa_addv_h(out0, out2);

	res6 = __builtin_msa_hadd_s_w(out0, out0);
	
	res6 = (v4i32)__builtin_msa_hadd_s_d(res6, res6);

	res7 = __builtin_msa_srli_w(res6, 2);

	res1 = __builtin_msa_subv_w(res1, res7);// sad source - recon
	
	cen8 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen8);
	cen9 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen9);
	cen10 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen10);
	cen11 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen11);
	cen12 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen12);
	cen13 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen13);
	cen14 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen14);
	cen15 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen15);
	
	bet0 = __builtin_msa_addv_h(cen1, cen0);
	bet1 = __builtin_msa_subv_h(cen1, cen0);
	bet2 = __builtin_msa_addv_h(cen3, cen2);
	bet3 = __builtin_msa_subv_h(cen3, cen2);
	bet4 = __builtin_msa_addv_h(cen5, cen4);
	bet5 = __builtin_msa_subv_h(cen5, cen4);
	bet6 = __builtin_msa_addv_h(cen7, cen6);
	bet7 = __builtin_msa_subv_h(cen7, cen6);

	bet8 = __builtin_msa_addv_h(cen9, cen8);
	bet9 = __builtin_msa_subv_h(cen9, cen8);
	bet10 = __builtin_msa_addv_h(cen11, cen10);
	bet11 = __builtin_msa_subv_h(cen11, cen10);
	bet12 = __builtin_msa_addv_h(cen13, cen12);
	bet13 = __builtin_msa_subv_h(cen13, cen12);
	bet14 = __builtin_msa_addv_h(cen15, cen14);
	bet15 = __builtin_msa_subv_h(cen15, cen14);

	val0 = __builtin_msa_addv_h(bet2, bet0);
	val1 = __builtin_msa_subv_h(bet2, bet0);
	val2 = __builtin_msa_addv_h(bet3, bet1);
	val3 = __builtin_msa_subv_h(bet3, bet1);
	val4 = __builtin_msa_addv_h(bet6, bet4);
	val5 = __builtin_msa_subv_h(bet6, bet4);
	val6 = __builtin_msa_addv_h(bet7, bet5);
	val7 = __builtin_msa_subv_h(bet7, bet5);

	val8 = __builtin_msa_addv_h(bet10, bet8);
	val9 = __builtin_msa_subv_h(bet10, bet8);
	val10 = __builtin_msa_addv_h(bet11, bet9);
	val11 = __builtin_msa_subv_h(bet11, bet9);
	val12 = __builtin_msa_addv_h(bet14, bet12);
	val13 = __builtin_msa_subv_h(bet14, bet12);
	val14 = __builtin_msa_addv_h(bet15, bet13);
	val15 = __builtin_msa_subv_h(bet15, bet13);

	cen0 = __builtin_msa_addv_h(val4, val0);
	cen1 = __builtin_msa_subv_h(val4, val0);
	cen2 = __builtin_msa_addv_h(val6, val2);
	cen3 = __builtin_msa_subv_h(val6, val2);
	cen4 = __builtin_msa_addv_h(val5, val1);
	cen5 = __builtin_msa_subv_h(val5, val1);
	cen6 = __builtin_msa_addv_h(val7, val3);
	cen7 = __builtin_msa_subv_h(val7, val3);

	cen8 = __builtin_msa_addv_h(val12, val8);
	cen9 = __builtin_msa_subv_h(val12, val8);
	cen10 = __builtin_msa_addv_h(val14, val10);
	cen11 = __builtin_msa_subv_h(val14, val10);
	cen12 = __builtin_msa_addv_h(val13, val9);
	cen13 = __builtin_msa_subv_h(val13, val9);
	cen14 = __builtin_msa_addv_h(val15, val11);
	cen15 = __builtin_msa_subv_h(val15, val11);

	bet0 = __builtin_msa_pckod_h(cen1, cen0);
	bet1 = __builtin_msa_pckev_h(cen1, cen0);
	bet2 = __builtin_msa_pckod_h(cen3, cen2);
	bet3 = __builtin_msa_pckev_h(cen3, cen2);
	bet4 = __builtin_msa_pckod_h(cen5, cen4);
	bet5 = __builtin_msa_pckev_h(cen5, cen4);
	bet6 = __builtin_msa_pckod_h(cen7, cen6);
	bet7 = __builtin_msa_pckev_h(cen7, cen6);

	bet8 = __builtin_msa_pckod_h(cen9, cen8);
	bet9 = __builtin_msa_pckev_h(cen9, cen8);
	bet10 = __builtin_msa_pckod_h(cen11, cen10);
	bet11 = __builtin_msa_pckev_h(cen11, cen10);
	bet12 = __builtin_msa_pckod_h(cen13, cen12);
	bet13 = __builtin_msa_pckev_h(cen13, cen12);
	bet14 = __builtin_msa_pckod_h(cen15, cen14);
	bet15 = __builtin_msa_pckev_h(cen15, cen14);

	val0 = __builtin_msa_addv_h(bet0, bet1);
	val1 = __builtin_msa_asub_s_h(bet0, bet1);
	val2 = __builtin_msa_addv_h(bet2, bet3);
	val3 = __builtin_msa_asub_s_h(bet2, bet3);
	val4 = __builtin_msa_addv_h(bet4, bet5);
	val5 = __builtin_msa_asub_s_h(bet4, bet5);
	val6 = __builtin_msa_addv_h(bet6, bet7);
	val7 = __builtin_msa_asub_s_h(bet6, bet7);

	val8 = __builtin_msa_addv_h(bet8, bet9);
	val9 = __builtin_msa_asub_s_h(bet8, bet9);
	val10 = __builtin_msa_addv_h(bet10, bet11);
	val11 = __builtin_msa_asub_s_h(bet10, bet11);
	val12 = __builtin_msa_addv_h(bet12, bet13);
	val13 = __builtin_msa_asub_s_h(bet12, bet13);
	val14 = __builtin_msa_addv_h(bet14, bet15);
	val15 = __builtin_msa_asub_s_h(bet14, bet15);

	val0 = __builtin_lsx_vabs_h(val0);
	val2 = __builtin_lsx_vabs_h(val2);
	val4 = __builtin_lsx_vabs_h(val4);
	val6 = __builtin_lsx_vabs_h(val6);

	val8 = __builtin_lsx_vabs_h(val8);
	val10 = __builtin_lsx_vabs_h(val10);
	val12 = __builtin_lsx_vabs_h(val12);
	val14 = __builtin_lsx_vabs_h(val14);

	cen0 = __builtin_msa_ilvod_h(val0, val1);
	cen1 = __builtin_msa_ilvev_h(val0, val1);
	cen2 = __builtin_msa_ilvod_h(val2, val3);
	cen3 = __builtin_msa_ilvev_h(val2, val3);
	cen4 = __builtin_msa_ilvod_h(val4, val5);
	cen5 = __builtin_msa_ilvev_h(val4, val5);
	cen6 = __builtin_msa_ilvod_h(val6, val7);
	cen7 = __builtin_msa_ilvev_h(val6, val7);

	cen8 = __builtin_msa_ilvod_h(val8, val9);
	cen9 = __builtin_msa_ilvev_h(val8, val9);
	cen10 = __builtin_msa_ilvod_h(val10, val11);
	cen11 = __builtin_msa_ilvev_h(val10, val11);
	cen12 = __builtin_msa_ilvod_h(val12, val13);
	cen13 = __builtin_msa_ilvev_h(val12, val13);
	cen14 = __builtin_msa_ilvod_h(val14, val15);
	cen15 = __builtin_msa_ilvev_h(val14, val15);

	bet0 = __builtin_msa_max_s_h(cen0, cen1);
	bet1 = __builtin_msa_max_s_h(cen2, cen3);
	bet2 = __builtin_msa_max_s_h(cen4, cen5);
	bet3 = __builtin_msa_max_s_h(cen6, cen7);

	bet8 = __builtin_msa_max_s_h(cen8, cen9);
	bet9 = __builtin_msa_max_s_h(cen10, cen11);
	bet10 = __builtin_msa_max_s_h(cen12, cen13);
	bet11 = __builtin_msa_max_s_h(cen14, cen15);

	res2 = __builtin_msa_hadd_s_w(bet0, bet0);
	res3 = __builtin_msa_hadd_s_w(bet1, bet1);
	res4 = __builtin_msa_hadd_s_w(bet2, bet2);
	res5 = __builtin_msa_hadd_s_w(bet3, bet3);

	res8 = __builtin_msa_hadd_s_w(bet8, bet8);
	res9 = __builtin_msa_hadd_s_w(bet9, bet9);
	res10 = __builtin_msa_hadd_s_w(bet10, bet10);
	res11 = __builtin_msa_hadd_s_w(bet11, bet11);

	res2 = __builtin_msa_addv_w(res2, res3);
	res4 = __builtin_msa_addv_w(res4, res5);
	
	res8 = __builtin_msa_addv_w(res8, res9);
	res10 = __builtin_msa_addv_w(res10, res11);

	res2 = __builtin_msa_addv_w(res2, res4);//1 2 3 source
	res8 = __builtin_msa_addv_w(res8, res10);//1 2 3 recon

	res2 = (v4i32)__builtin_msa_hadd_s_d(res2, res2);
	res8 = (v4i32)__builtin_msa_hadd_s_d(res8, res8);

	int sa8d = ((res2[0] + res2[2] + 1) >> 1) - ((res8[0] + res8[2] + 1) >> 1);	
	int sad = res1[0];

	output = abs(sa8d - sad);

	//printf("wrong source sa8d %d\n", ((res2[0] + res2[2] + 1) >> 1));
	//printf("wrong recon sa8d %d\n", ((res8[0] + res8[2] + 1) >> 1));

	//printf("wrong source sad %d\n", res1[0] + res7[0]);
	//printf("wrong recon sad %d\n", res7[0]);
	
	//res1 = __builtin_msa_subv_w(res2, res1);//0 source
	//res7 = __builtin_msa_subv_w(res8, res7);//0 recon
	
	//res2 = __builtin_msa_subv_w(res2, res8);//1 2 3 total
	//res1 = __builtin_msa_subv_w(res1, res7);//0 total

	//output = res1[0] + res2[1] + res2[2] + res2[3];
	
	#ifdef DEBUG
	uint32_t totEnergy = 0;
        for (int i = 0; i < 8; i += 8)
        {
            for (int j = 0; j < 8; j += 8)
            {
                /* AC energy, measured by sa8d (AC + DC) minus SAD (DC) */
                t_sourceEnergy = sa8d_8x8(t_source + i * sstride + j, sstride, zeroBuf, 0) - 
                                   (sad_8x8(t_source + i * sstride + j, sstride, zeroBuf, 0) >> 2);
                t_reconEnergy =  sa8d_8x8(t_recon + i * rstride + j, rstride, zeroBuf, 0) - 
                                   (sad_8x8(t_recon + i * rstride + j, rstride, zeroBuf, 0) >> 2);

                totEnergy += abs(t_sourceEnergy - t_reconEnergy);
            }
        }

	if (output == totEnergy)
		printf("psyCost_pp_8x8 test success\n");
	else
	{
		printf("psyCost_pp_8x8 test fail\n");	
		printf("right value %d\n", totEnergy);
		printf("wrong value %d\n", output);
		printf("right source sa8d_8x8 %d\n", sa8d_8x8(t_source, sstride, zeroBuf, 0));
		printf("right source sad %d\n", (sad_8x8(t_source, sstride, zeroBuf, 0) >> 2));
		printf("right recon sa8d_8x8 %d\n", sa8d_8x8(t_recon, rstride, zeroBuf, 0));
		printf("right recon sad %d\n", (sad_8x8(t_recon, rstride, zeroBuf, 0) >> 2));
	}
	#endif

	return output;
}

inline int psyCost_pp_8x8_internal(const pixel* source, intptr_t sstride, const pixel* recon, intptr_t rstride)
{
	#ifdef DEBUG
	const pixel *t_source, *t_recon;
	int t_sourceEnergy, t_reconEnergy;
    	static pixel zeroBuf[8];
	t_source = source;
	t_recon = recon;
	#endif 	

	int output;
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 bet0, bet1, bet2, bet3, bet4, bet5, bet6, bet7; 
	v8i16 val0, val1, val2, val3, val4, val5, val6, val7; 
	v8i16 out0, out1, out2, out3;
	v4i32 res0, res1, res2, res3, res4, res5;
	v4i32 res6, res7, res8, res10;
	
	const pixel *source0, *source1, *source2, *source3, *source4, *source5, *source6, *source7;

	source0 = source;
	source1 = source + sstride;
	source2 = source + 2 * sstride;
	source3 = source + 3 * sstride;
	source4 = source + 4 * sstride;
	source5 = source + 5 * sstride;
	source6 = source + 6 * sstride;
	source7 = source + 7 * sstride;
	
	const pixel *recon0, *recon1, *recon2, *recon3, *recon4, *recon5, *recon6, *recon7;

	recon0 = recon;
	recon1 = recon + rstride;
	recon2 = recon + 2 * rstride;
	recon3 = recon + 3 * rstride;
	recon4 = recon + 4 * rstride;
	recon5 = recon + 5 * rstride;
	recon6 = recon + 6 * rstride;
	recon7 = recon + 7 * rstride;

	tmp0 = LD(source0);
	tmp1 = LD(source1);
	tmp2 = LD(source2);
	tmp3 = LD(source3);
	
	tmp4 = LD(source4);
	tmp5 = LD(source5);
	tmp6 = LD(source6);
	tmp7 = LD(source7);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	out0 = __builtin_msa_addv_h((v8i16)mid0, (v8i16)mid1);
	out1 = __builtin_msa_addv_h((v8i16)mid2, (v8i16)mid3);
	out2 = __builtin_msa_addv_h((v8i16)mid4, (v8i16)mid5);
	out3 = __builtin_msa_addv_h((v8i16)mid6, (v8i16)mid7);

	out0 = __builtin_msa_addv_h(out0, out1);
	out2 = __builtin_msa_addv_h(out2, out3);
	
	out0 = __builtin_msa_addv_h(out0, out2);

	res0 = __builtin_msa_hadd_s_w(out0, out0);
	
	res0 = (v4i32)__builtin_msa_hadd_s_d(res0, res0);

	res1 = __builtin_msa_srli_w(res0, 2);

	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);

	bet0 = __builtin_msa_addv_h(cen1, cen0);
	bet1 = __builtin_msa_subv_h(cen1, cen0);
	bet2 = __builtin_msa_addv_h(cen3, cen2);
	bet3 = __builtin_msa_subv_h(cen3, cen2);
	bet4 = __builtin_msa_addv_h(cen5, cen4);
	bet5 = __builtin_msa_subv_h(cen5, cen4);
	bet6 = __builtin_msa_addv_h(cen7, cen6);
	bet7 = __builtin_msa_subv_h(cen7, cen6);

	val0 = __builtin_msa_addv_h(bet2, bet0);
	val1 = __builtin_msa_subv_h(bet2, bet0);
	val2 = __builtin_msa_addv_h(bet3, bet1);
	val3 = __builtin_msa_subv_h(bet3, bet1);
	val4 = __builtin_msa_addv_h(bet6, bet4);
	val5 = __builtin_msa_subv_h(bet6, bet4);
	val6 = __builtin_msa_addv_h(bet7, bet5);
	val7 = __builtin_msa_subv_h(bet7, bet5);

	cen0 = __builtin_msa_addv_h(val4, val0);
	cen1 = __builtin_msa_subv_h(val4, val0);
	cen2 = __builtin_msa_addv_h(val6, val2);
	cen3 = __builtin_msa_subv_h(val6, val2);
	cen4 = __builtin_msa_addv_h(val5, val1);
	cen5 = __builtin_msa_subv_h(val5, val1);
	cen6 = __builtin_msa_addv_h(val7, val3);
	cen7 = __builtin_msa_subv_h(val7, val3);

	bet0 = __builtin_msa_pckod_h(cen1, cen0);
	bet1 = __builtin_msa_pckev_h(cen1, cen0);
	bet2 = __builtin_msa_pckod_h(cen3, cen2);
	bet3 = __builtin_msa_pckev_h(cen3, cen2);
	bet4 = __builtin_msa_pckod_h(cen5, cen4);
	bet5 = __builtin_msa_pckev_h(cen5, cen4);
	bet6 = __builtin_msa_pckod_h(cen7, cen6);
	bet7 = __builtin_msa_pckev_h(cen7, cen6);

	val0 = __builtin_msa_addv_h(bet0, bet1);
	val1 = __builtin_msa_asub_s_h(bet0, bet1);
	val2 = __builtin_msa_addv_h(bet2, bet3);
	val3 = __builtin_msa_asub_s_h(bet2, bet3);
	val4 = __builtin_msa_addv_h(bet4, bet5);
	val5 = __builtin_msa_asub_s_h(bet4, bet5);
	val6 = __builtin_msa_addv_h(bet6, bet7);
	val7 = __builtin_msa_asub_s_h(bet6, bet7);
	
	val0 = __builtin_lsx_vabs_h(val0);
	val2 = __builtin_lsx_vabs_h(val2);
	val4 = __builtin_lsx_vabs_h(val4);
	val6 = __builtin_lsx_vabs_h(val6);
	
	cen0 = __builtin_msa_ilvod_h(val0, val1);
	cen1 = __builtin_msa_ilvev_h(val0, val1);
	cen2 = __builtin_msa_ilvod_h(val2, val3);
	cen3 = __builtin_msa_ilvev_h(val2, val3);
	cen4 = __builtin_msa_ilvod_h(val4, val5);
	cen5 = __builtin_msa_ilvev_h(val4, val5);
	cen6 = __builtin_msa_ilvod_h(val6, val7);
	cen7 = __builtin_msa_ilvev_h(val6, val7);

	bet0 = __builtin_msa_max_s_h(cen0, cen1);
	bet1 = __builtin_msa_max_s_h(cen2, cen3);
	bet2 = __builtin_msa_max_s_h(cen4, cen5);
	bet3 = __builtin_msa_max_s_h(cen6, cen7);

	res2 = __builtin_msa_hadd_s_w(bet0, bet0);
	res3 = __builtin_msa_hadd_s_w(bet1, bet1);
	res4 = __builtin_msa_hadd_s_w(bet2, bet2);
	res5 = __builtin_msa_hadd_s_w(bet3, bet3);
	
	res8 = __builtin_msa_addv_w(res2, res3);
	res10 = __builtin_msa_addv_w(res4, res5);

	tmp0 = LD(recon0);
	tmp1 = LD(recon1);
	tmp2 = LD(recon2);
	tmp3 = LD(recon3);
	
	tmp4 = LD(recon4);
	tmp5 = LD(recon5);
	tmp6 = LD(recon6);
	tmp7 = LD(recon7);

	mid0 = __builtin_msa_hadd_u_h((v16u8)tmp0, (v16u8)tmp0);
	mid1 = __builtin_msa_hadd_u_h((v16u8)tmp1, (v16u8)tmp1);
	mid2 = __builtin_msa_hadd_u_h((v16u8)tmp2, (v16u8)tmp2);
	mid3 = __builtin_msa_hadd_u_h((v16u8)tmp3, (v16u8)tmp3);
	mid4 = __builtin_msa_hadd_u_h((v16u8)tmp4, (v16u8)tmp4);
	mid5 = __builtin_msa_hadd_u_h((v16u8)tmp5, (v16u8)tmp5);
	mid6 = __builtin_msa_hadd_u_h((v16u8)tmp6, (v16u8)tmp6);
	mid7 = __builtin_msa_hadd_u_h((v16u8)tmp7, (v16u8)tmp7);

	cen0 = __builtin_msa_hsub_u_h((v16u8)tmp0, (v16u8)tmp0);
	cen1 = __builtin_msa_hsub_u_h((v16u8)tmp1, (v16u8)tmp1);
	cen2 = __builtin_msa_hsub_u_h((v16u8)tmp2, (v16u8)tmp2);
	cen3 = __builtin_msa_hsub_u_h((v16u8)tmp3, (v16u8)tmp3);
	cen4 = __builtin_msa_hsub_u_h((v16u8)tmp4, (v16u8)tmp4);
	cen5 = __builtin_msa_hsub_u_h((v16u8)tmp5, (v16u8)tmp5);
	cen6 = __builtin_msa_hsub_u_h((v16u8)tmp6, (v16u8)tmp6);
	cen7 = __builtin_msa_hsub_u_h((v16u8)tmp7, (v16u8)tmp7);

	out0 = __builtin_msa_addv_h((v8i16)mid0, (v8i16)mid1);
	out1 = __builtin_msa_addv_h((v8i16)mid2, (v8i16)mid3);
	out2 = __builtin_msa_addv_h((v8i16)mid4, (v8i16)mid5);
	out3 = __builtin_msa_addv_h((v8i16)mid6, (v8i16)mid7);

	out0 = __builtin_msa_addv_h(out0, out1);
	out2 = __builtin_msa_addv_h(out2, out3);
	
	out0 = __builtin_msa_addv_h(out0, out2);

	res6 = __builtin_msa_hadd_s_w(out0, out0);
	
	res6 = (v4i32)__builtin_msa_hadd_s_d(res6, res6);

	res7 = __builtin_msa_srli_w(res6, 2);

	res1 = __builtin_msa_subv_w(res1, res7);// sad source - recon
	
	cen0 = (v8i16)__builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)cen0);
	cen1 = (v8i16)__builtin_msa_insve_d((v2i64)mid1, 1, (v2i64)cen1);
	cen2 = (v8i16)__builtin_msa_insve_d((v2i64)mid2, 1, (v2i64)cen2);
	cen3 = (v8i16)__builtin_msa_insve_d((v2i64)mid3, 1, (v2i64)cen3);
	cen4 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 1, (v2i64)cen4);
	cen5 = (v8i16)__builtin_msa_insve_d((v2i64)mid5, 1, (v2i64)cen5);
	cen6 = (v8i16)__builtin_msa_insve_d((v2i64)mid6, 1, (v2i64)cen6);
	cen7 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 1, (v2i64)cen7);
		
	bet0 = __builtin_msa_addv_h(cen1, cen0);
	bet1 = __builtin_msa_subv_h(cen1, cen0);
	bet2 = __builtin_msa_addv_h(cen3, cen2);
	bet3 = __builtin_msa_subv_h(cen3, cen2);
	bet4 = __builtin_msa_addv_h(cen5, cen4);
	bet5 = __builtin_msa_subv_h(cen5, cen4);
	bet6 = __builtin_msa_addv_h(cen7, cen6);
	bet7 = __builtin_msa_subv_h(cen7, cen6);
	
	val0 = __builtin_msa_addv_h(bet2, bet0);
	val1 = __builtin_msa_subv_h(bet2, bet0);
	val2 = __builtin_msa_addv_h(bet3, bet1);
	val3 = __builtin_msa_subv_h(bet3, bet1);
	val4 = __builtin_msa_addv_h(bet6, bet4);
	val5 = __builtin_msa_subv_h(bet6, bet4);
	val6 = __builtin_msa_addv_h(bet7, bet5);
	val7 = __builtin_msa_subv_h(bet7, bet5);

	cen0 = __builtin_msa_addv_h(val4, val0);
	cen1 = __builtin_msa_subv_h(val4, val0);
	cen2 = __builtin_msa_addv_h(val6, val2);
	cen3 = __builtin_msa_subv_h(val6, val2);
	cen4 = __builtin_msa_addv_h(val5, val1);
	cen5 = __builtin_msa_subv_h(val5, val1);
	cen6 = __builtin_msa_addv_h(val7, val3);
	cen7 = __builtin_msa_subv_h(val7, val3);

	bet0 = __builtin_msa_pckod_h(cen1, cen0);
	bet1 = __builtin_msa_pckev_h(cen1, cen0);
	bet2 = __builtin_msa_pckod_h(cen3, cen2);
	bet3 = __builtin_msa_pckev_h(cen3, cen2);
	bet4 = __builtin_msa_pckod_h(cen5, cen4);
	bet5 = __builtin_msa_pckev_h(cen5, cen4);
	bet6 = __builtin_msa_pckod_h(cen7, cen6);
	bet7 = __builtin_msa_pckev_h(cen7, cen6);

	val0 = __builtin_msa_addv_h(bet0, bet1);
	val1 = __builtin_msa_asub_s_h(bet0, bet1);
	val2 = __builtin_msa_addv_h(bet2, bet3);
	val3 = __builtin_msa_asub_s_h(bet2, bet3);
	val4 = __builtin_msa_addv_h(bet4, bet5);
	val5 = __builtin_msa_asub_s_h(bet4, bet5);
	val6 = __builtin_msa_addv_h(bet6, bet7);
	val7 = __builtin_msa_asub_s_h(bet6, bet7);

	val0 = __builtin_lsx_vabs_h(val0);
	val2 = __builtin_lsx_vabs_h(val2);
	val4 = __builtin_lsx_vabs_h(val4);
	val6 = __builtin_lsx_vabs_h(val6);

	cen0 = __builtin_msa_ilvod_h(val0, val1);
	cen1 = __builtin_msa_ilvev_h(val0, val1);
	cen2 = __builtin_msa_ilvod_h(val2, val3);
	cen3 = __builtin_msa_ilvev_h(val2, val3);
	cen4 = __builtin_msa_ilvod_h(val4, val5);
	cen5 = __builtin_msa_ilvev_h(val4, val5);
	cen6 = __builtin_msa_ilvod_h(val6, val7);
	cen7 = __builtin_msa_ilvev_h(val6, val7);

	bet0 = __builtin_msa_max_s_h(cen0, cen1);
	bet1 = __builtin_msa_max_s_h(cen2, cen3);
	bet2 = __builtin_msa_max_s_h(cen4, cen5);
	bet3 = __builtin_msa_max_s_h(cen6, cen7);

	res2 = __builtin_msa_hadd_s_w(bet0, bet0);
	res3 = __builtin_msa_hadd_s_w(bet1, bet1);
	res4 = __builtin_msa_hadd_s_w(bet2, bet2);
	res5 = __builtin_msa_hadd_s_w(bet3, bet3);

	res2 = __builtin_msa_addv_w(res2, res3);
	res4 = __builtin_msa_addv_w(res4, res5);
	
	res2 = __builtin_msa_addv_w(res2, res4);//1 2 3 recon
	res8 = __builtin_msa_addv_w(res8, res10);//1 2 3 source

	res2 = (v4i32)__builtin_msa_hadd_s_d(res2, res2);
	res8 = (v4i32)__builtin_msa_hadd_s_d(res8, res8);

	int sa8d = ((res8[0] + res8[2] + 1) >> 1) - ((res2[0] + res2[2] + 1) >> 1);	
	int sad = res1[0];

	output = abs(sa8d - sad);

	#ifdef DEBUG
	uint32_t totEnergy = 0;
        for (int i = 0; i < 8; i += 8)
        {
            for (int j = 0; j < 8; j += 8)
            {
                /* AC energy, measured by sa8d (AC + DC) minus SAD (DC) */
                t_sourceEnergy = sa8d_8x8(t_source + i * sstride + j, sstride, zeroBuf, 0) - 
                                   (sad_8x8(t_source + i * sstride + j, sstride, zeroBuf, 0) >> 2);
                t_reconEnergy =  sa8d_8x8(t_recon + i * rstride + j, rstride, zeroBuf, 0) - 
                                   (sad_8x8(t_recon + i * rstride + j, rstride, zeroBuf, 0) >> 2);

                totEnergy += abs(t_sourceEnergy - t_reconEnergy);
            }
        }

	if (output == totEnergy)
		printf("psyCost_pp_8x8_internal test success\n");
	else
	{
		printf("psyCost_pp_8x8_internal test fail\n");	
		printf("right value %d\n", totEnergy);
		printf("wrong value %d\n", output);
		printf("right source sa8d_8x8 %d\n", sa8d_8x8(t_source, sstride, zeroBuf, 0));
		printf("right source sad %d\n", (sad_8x8(t_source, sstride, zeroBuf, 0) >> 2));
		printf("right recon sa8d_8x8 %d\n", sa8d_8x8(t_recon, rstride, zeroBuf, 0));
		printf("right recon sad %d\n", (sad_8x8(t_recon, rstride, zeroBuf, 0) >> 2));
	}
	#endif

	return output;
}

int psyCost_pp_16x16(const pixel* source, intptr_t sstride, const pixel* recon, intptr_t rstride)
{
	#ifdef DEBUG
	const pixel *t_source, *t_recon;
	int t_sourceEnergy, t_reconEnergy;
    	static pixel zeroBuf[8];
	t_source = source;
	t_recon = recon;
	#endif 	

	uint32_t totEnergy = 0;
	
	for (int j = 0; j < 2; j++)
	{
		for (int i = 0; i < 2; i++)
		{
			totEnergy += psyCost_pp_8x8_internal(source + i * 8, sstride, recon + i * 8, rstride);	
		}
		
		source += 8 * sstride;
		recon += 8 * rstride;
	}
	
	#ifdef DEBUG
	uint32_t t_totEnergy = 0;
        for (int i = 0; i < 16; i += 8)
        {
            for (int j = 0; j < 16; j += 8)
            {
                /* AC energy, measured by sa8d (AC + DC) minus SAD (DC) */
                t_sourceEnergy = sa8d_8x8(t_source + i * sstride + j, sstride, zeroBuf, 0) - 
                                   (sad_8x8(t_source + i * sstride + j, sstride, zeroBuf, 0) >> 2);
                t_reconEnergy =  sa8d_8x8(t_recon + i * rstride + j, rstride, zeroBuf, 0) - 
                                   (sad_8x8(t_recon + i * rstride + j, rstride, zeroBuf, 0) >> 2);

                t_totEnergy += abs(t_sourceEnergy - t_reconEnergy);
            }
        }

	if (t_totEnergy == totEnergy)
		printf("psyCost_pp_16x16 test success\n");
	else
	{
		printf("psyCost_pp_16x16 test fail\n");	
	}
	#endif

	return totEnergy;
}

int psyCost_pp_32x32(const pixel* source, intptr_t sstride, const pixel* recon, intptr_t rstride)
{
	#ifdef DEBUG
	const pixel *t_source, *t_recon;
	int t_sourceEnergy, t_reconEnergy;
    	static pixel zeroBuf[8];
	t_source = source;
	t_recon = recon;
	#endif 	

	uint32_t totEnergy = 0;
	
	for (int j = 0; j < 4; j++)
	{
		for (int i = 0; i < 4; i++)
		{
			totEnergy += psyCost_pp_8x8_internal(source + i * 8, sstride, recon + i * 8, rstride);	
		}
	
		source += 8 * sstride;
		recon += 8 * rstride;
	}

	#ifdef DEBUG
	uint32_t t_totEnergy = 0;
        for (int i = 0; i < 32; i += 8)
        {
            for (int j = 0; j < 32; j += 8)
            {
                /* AC energy, measured by sa8d (AC + DC) minus SAD (DC) */
                t_sourceEnergy = sa8d_8x8(t_source + i * sstride + j, sstride, zeroBuf, 0) - 
                                   (sad_8x8(t_source + i * sstride + j, sstride, zeroBuf, 0) >> 2);
                t_reconEnergy =  sa8d_8x8(t_recon + i * rstride + j, rstride, zeroBuf, 0) - 
                                   (sad_8x8(t_recon + i * rstride + j, rstride, zeroBuf, 0) >> 2);

                t_totEnergy += abs(t_sourceEnergy - t_reconEnergy);
            }
        }

	if (t_totEnergy == totEnergy)
		printf("psyCost_pp_32x32 test success\n");
	else
	{
		printf("psyCost_pp_32x32 test fail\n");	
	}
	#endif

	return totEnergy;
}

template<int size>
int psyCost_pp(const pixel* source, intptr_t sstride, const pixel* recon, intptr_t rstride)
{
    static pixel zeroBuf[8] /* = { 0 } */;

    if (size)
    {
        int dim = 1 << (size + 2);
        uint32_t totEnergy = 0;
        for (int i = 0; i < dim; i += 8)
        {
            for (int j = 0; j < dim; j+= 8)
            {
                /* AC energy, measured by sa8d (AC + DC) minus SAD (DC) */
                int sourceEnergy = sa8d_8x8(source + i * sstride + j, sstride, zeroBuf, 0) - 
                                   (sad<8, 8>(source + i * sstride + j, sstride, zeroBuf, 0) >> 2);
                int reconEnergy =  sa8d_8x8(recon + i * rstride + j, rstride, zeroBuf, 0) - 
                                   (sad<8, 8>(recon + i * rstride + j, rstride, zeroBuf, 0) >> 2);

                totEnergy += abs(sourceEnergy - reconEnergy);
            }
        }
        return totEnergy;
    }
    else
    {
        /* 4x4 is too small for sa8d */
        int sourceEnergy = satd_4x4(source, sstride, zeroBuf, 0) - (sad<4, 4>(source, sstride, zeroBuf, 0) >> 2);
        int reconEnergy = satd_4x4(recon, rstride, zeroBuf, 0) - (sad<4, 4>(recon, rstride, zeroBuf, 0) >> 2);
        return abs(sourceEnergy - reconEnergy);
    }
}

//----------------------------------------------------------------------------------------------
//void blockcopy_pp(pixel* a, intptr_t stridea, const pixel* b, intptr_t strideb)
//enable size 4x4, 8x8, 16x16, 32x32, 64x64.
//----------------------------------------------------------------------------------------------

void blockcopy_pp_4x4(pixel* a, intptr_t stridea, const pixel* b, intptr_t strideb)
{
	#ifdef DEBUG
	const pixel *t_b;
	pixel *t_a;
	t_b = b;
	t_a = a;
	#endif
	
	v4i32 tmp0, tmp1, tmp2, tmp3;

	LW4(b, strideb, &tmp0, &tmp1, &tmp2, &tmp3);	

	SW4(tmp0, tmp1, tmp2, tmp3, a, stridea);

	#ifdef DEBUG
	for (int y = 0; y < 4; y++)
	{
		for (int x = 0; x < 4; x++)
		{
			if (t_a[x] != t_b[x])
			{
				printf("blockcopy_pp_4x4 test fail\n");
				return;
			}
		}
		
		t_a += stridea;
		t_b += strideb;
	}

	printf("blockcopy_pp_4x4 test success\n");
	#endif
}

void blockcopy_pp_8x8(pixel* a, intptr_t stridea, const pixel* b, intptr_t strideb)
{
	#ifdef DEBUG
	const pixel *t_b;
	pixel *t_a;
	t_b = b;
	t_a = a;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;

	LD4(b, strideb, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4(b + 4 * strideb, strideb, &tmp4, &tmp5, &tmp6, &tmp7);

	SD4(tmp0, tmp1, tmp2, tmp3, a, stridea);
	SD4(tmp4, tmp5, tmp6, tmp7, a + 4 * stridea, stridea);

	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
	{
		for (int x = 0; x < 8; x++)
		{
			if (t_a[x] != t_b[x])
			{	
				printf("blockcopy_pp_8x8 test fail\n");
				return;
			}
		}
		
		t_a += stridea;
		t_b += strideb;
	}

	printf("blockcopy_pp_8x8 test success\n");
	#endif
}

void blockcopy_pp_16x16(pixel* a, intptr_t stridea, const pixel* b, intptr_t strideb)
{
	#ifdef DEBUG
	const pixel *t_b;
	pixel *t_a;
	t_b = b;
	t_a = a;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;	
	v2i64 val0, val1, val2, val3, val4, val5, val6, val7;

	LD_V4(b, strideb, &tmp0, &tmp1, &tmp2, &tmp3);
	LD_V4(b + 4 * strideb, strideb, &tmp4, &tmp5, &tmp6, &tmp7);

	b += 8 * strideb;

	LD_V4(b, strideb, &val0, &val1, &val2, &val3);
	LD_V4(b + 4 * strideb, strideb, &val4, &val5, &val6, &val7);

	ST_V4(tmp0, tmp1, tmp2, tmp3, a, stridea);
	ST_V4(tmp4, tmp5, tmp6, tmp7, a + 4 * stridea, stridea);

	a += 8 * stridea;

	ST_V4(val0, val1, val2, val3, a, stridea);
	ST_V4(val4, val5, val6, val7, a + 4 * stridea, stridea);
	
	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
	{
		for (int x = 0; x < 16; x++)
		{
			if (t_a[x] != t_b[x])
			{	
				printf("blockcopy_pp_16x16 test fail\n");
				return;
			}
		}
		
		t_a += stridea;
		t_b += strideb;
	}

	printf("blockcopy_pp_16x16 test success\n");
	#endif
}

void blockcopy_pp_32x32(pixel* a, intptr_t stridea, const pixel* b, intptr_t strideb)
{
	#ifdef DEBUG
	const pixel *t_b;
	pixel *t_a;
	t_b = b;
	t_a = a;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 val0, val1, val2, val3, val4, val5, val6, val7;
	v2i64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v2i64 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	
	for (int i = 0; i < 2; i++)
	{
		LD_V2_H(b, &tmp0, &tmp1);
		b += strideb;
		LD_V2_H(b, &tmp2, &tmp3);
		b += strideb;	
		LD_V2_H(b, &tmp4, &tmp5);
		b += strideb;
		LD_V2_H(b, &tmp6, &tmp7);
		b += strideb;
		LD_V2_H(b, &val0, &val1);
		b += strideb;
		LD_V2_H(b, &val2, &val3);
		b += strideb;
		LD_V2_H(b, &val4, &val5);
		b += strideb;
		LD_V2_H(b, &val6, &val7);
		b += strideb;
		LD_V2_H(b, &mid0, &mid1);
		b += strideb;
		LD_V2_H(b, &mid2, &mid3);
		b += strideb;	
		LD_V2_H(b, &mid4, &mid5);
		b += strideb;
		LD_V2_H(b, &mid6, &mid7);
		b += strideb;
		LD_V2_H(b, &cen0, &cen1);
		b += strideb;
		LD_V2_H(b, &cen2, &cen3);
		b += strideb;
		LD_V2_H(b, &cen4, &cen5);
		b += strideb;
		LD_V2_H(b, &cen6, &cen7);


		ST_V2_H(tmp0, tmp1, a);	
		a += stridea;
		ST_V2_H(tmp2, tmp3, a);
		a += stridea;
		ST_V2_H(tmp4, tmp5, a);
		a += stridea;
		ST_V2_H(tmp6, tmp7, a);
		a += stridea;
		ST_V2_H(val0, val1, a);	
		a += stridea;
		ST_V2_H(val2, val3, a);
		a += stridea;
		ST_V2_H(val4, val5, a);
		a += stridea;
		ST_V2_H(val6, val7, a);
		a += stridea;
		ST_V2_H(mid0, mid1, a);	
		a += stridea;
		ST_V2_H(mid2, mid3, a);
		a += stridea;
		ST_V2_H(mid4, mid5, a);
		a += stridea;
		ST_V2_H(mid6, mid7, a);
		a += stridea;
		ST_V2_H(cen0, cen1, a);	
		a += stridea;
		ST_V2_H(cen2, cen3, a);
		a += stridea;
		ST_V2_H(cen4, cen5, a);
		a += stridea;
		ST_V2_H(cen6, cen7, a);

		b += strideb;
		a += stridea;
	}	

	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
	{
		for (int x = 0; x < 32; x++)
		{
			if (t_a[x] != t_b[x])
			{	
				printf("blockcopy_pp_32x32 test fail\n");
				return;
			}
		}
		
		t_a += stridea;
		t_b += strideb;
	}

	printf("blockcopy_pp_32x32 test success\n");
	#endif
}

void blockcopy_pp_64x64(pixel* a, intptr_t stridea, const pixel* b, intptr_t strideb)
{
	#ifdef DEBUG
	const pixel *t_b;
	pixel *t_a;
	t_b = b;
	t_a = a;
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 val0, val1, val2, val3, val4, val5, val6, val7;
	v2i64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v2i64 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;

	const pixel *b0, *b1, *b2, *b3, *b4, *b5, *b6, *b7;
	pixel *a0, *a1, *a2, *a3, *a4, *a5, *a6, *a7;
	
	b0 = b;
	b1 = b + strideb;
	b2 = b + 2 * strideb;
	b3 = b + 3 * strideb;
	b4 = b + 4 * strideb;
	b5 = b + 5 * strideb;
	b6 = b + 6 * strideb;
	b7 = b + 7 * strideb;

	a0 = a;
	a1 = a + stridea;
	a2 = a + 2 * stridea;
	a3 = a + 3 * stridea;
	a4 = a + 4 * stridea;
	a5 = a + 5 * stridea;
	a6 = a + 6 * stridea;
	a7 = a + 7 * stridea;

	for (int i = 0; i < 8; i++)
	{
		LD_V4_H(b0, &tmp0, &tmp1, &tmp2, &tmp3);
		LD_V4_H(b1, &tmp4, &tmp5, &tmp6, &tmp7);
		LD_V4_H(b2, &val0, &val1, &val2, &val3);
		LD_V4_H(b3, &val4, &val5, &val6, &val7);
	
		LD_V4_H(b4, &mid0, &mid1, &mid2, &mid3);
		LD_V4_H(b5, &mid4, &mid5, &mid6, &mid7);
		LD_V4_H(b6, &cen0, &cen1, &cen2, &cen3);
		LD_V4_H(b7, &cen4, &cen5, &cen6, &cen7);
	
		b0 += 8 * strideb;
		b1 += 8 * strideb;
		b2 += 8 * strideb;
		b3 += 8 * strideb;
		b4 += 8 * strideb;
		b5 += 8 * strideb;
		b6 += 8 * strideb;
		b7 += 8 * strideb;

	/*
		LD_V4_H(b, &mid0, &mid1, &mid2, &mid3);
		b += strideb;
		LD_V4_H(b, &mid4, &mid5, &mid6, &mid7);
		b += strideb;
		LD_V4_H(b, &cen0, &cen1, &cen2, &cen3);
		b += strideb;
		LD_V4_H(b, &cen4, &cen5, &cen6, &cen7);
	*/
		ST_V4_H(tmp0, tmp1, tmp2, tmp3, a0);
		ST_V4_H(tmp4, tmp5, tmp6, tmp7, a1);	
		ST_V4_H(val0, val1, val2, val3, a2);
		ST_V4_H(val4, val5, val6, val7, a3);	
	
		ST_V4_H(mid0, mid1, mid2, mid3, a4);
		ST_V4_H(mid4, mid5, mid6, mid7, a5);	
		ST_V4_H(cen0, cen1, cen2, cen3, a6);
		ST_V4_H(cen4, cen5, cen6, cen7, a7);	
	
		a0 += 8 * stridea;
		a1 += 8 * stridea;
		a2 += 8 * stridea;
		a3 += 8 * stridea;
		a4 += 8 * stridea;
		a5 += 8 * stridea;
		a6 += 8 * stridea;
		a7 += 8 * stridea;

	/*
		ST_V4_H(mid0, mid1, mid2, mid3, a);
		a += stridea;
		ST_V4_H(mid4, mid5, mid6, mid7, a);	
		a += stridea;
		ST_V4_H(cen0, cen1, cen2, cen3, a);
		a += stridea;
		ST_V4_H(cen4, cen5, cen6, cen7, a);	
	*/
		//b += strideb;
		//a += stridea;
	}

	#ifdef DEBUG
	for (int y = 0; y < 64; y++)
	{
		for (int x = 0; x < 64; x++)
		{
			if (t_a[x] != t_b[x])
			{
				printf("blockcopy_pp_64x64 test fail\n");
				return;
			}
		}
		
		t_a += stridea;
		t_b += strideb;
	}

	printf("blockcopy_pp_64x64 test success\n");
	#endif
}

template<int bx, int by>
void blockcopy_pp_c(pixel* a, intptr_t stridea, const pixel* b, intptr_t strideb)
{
    for (int y = 0; y < by; y++)
    {
        for (int x = 0; x < bx; x++)
            a[x] = b[x];

        a += stridea;
        b += strideb;
    }
}

//------------------------------------------------------------------------------------------
//void blockcopy_ss(int16_t* a, intptr_t stridea, const int16_t* b, intptr_t strideb)
//enable size 4x4, 8x8, 16x16, 32x32.
//------------------------------------------------------------------------------------------

void blockcopy_ss_4x4(int16_t* a, intptr_t stridea, const int16_t* b, intptr_t strideb)
{
	#ifdef DEBUG
	const int16_t *t_b;
	int16_t *t_a;
	t_b = b;
	t_a = a;
	#endif	

	v2i64 tmp0, tmp1, tmp2, tmp3;

	LD4((const pixel*)b, 2 * strideb, &tmp0, &tmp1, &tmp2, &tmp3);

	SD4(tmp0, tmp1, tmp2, tmp3, (pixel*)a, 2 * stridea);

	#ifdef DEBUG
	for (int y = 0; y < 4; y++)
    	{
        	for (int x = 0; x < 4; x++)
		{
            		if (t_a[x] != t_b[x])
			{
				printf("blockcopy_ss_4x4 test fail\n");
				return;
			}
		}
		
        	t_a += stridea;
        	t_b += strideb;
    	}

	printf("blockcopy_ss_4x4 test success\n");
	#endif
}

void blockcopy_ss_8x8(int16_t* a, intptr_t stridea, const int16_t* b, intptr_t strideb)
{
	#ifdef DEBUG
	const int16_t *t_b;
	int16_t *t_a;
	t_b = b;
	t_a = a;
	#endif	

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;

	LD_V4((const pixel*)b, 2 * strideb, &tmp0, &tmp1, &tmp2, &tmp3);
	LD_V4((const pixel*)(b + 4 * strideb), 2 * strideb, &tmp4, &tmp5, &tmp6, &tmp7);

	ST_V4(tmp0, tmp1, tmp2, tmp3, (pixel*)a, 2 * stridea);
	ST_V4(tmp4, tmp5, tmp6, tmp7, (pixel*)(a + 4 * stridea), 2 * stridea);

	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
    	{
        	for (int x = 0; x < 8; x++)
		{
            		if (t_a[x] != t_b[x])
			{
				printf("blockcopy_ss_8x8 test fail\n");
				return;
			}
		}
		
        	t_a += stridea;
        	t_b += strideb;
    	}

	printf("blockcopy_ss_8x8 test success\n");
	#endif
}

void blockcopy_ss_16x16(int16_t* a, intptr_t stridea, const int16_t* b, intptr_t strideb)
{
	#ifdef DEBUG
	const int16_t *t_b;
	int16_t *t_a;
	t_b = b;
	t_a = a;
	#endif	

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 val0, val1, val2, val3, val4, val5, val6, val7;
	v2i64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v2i64 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;

	LD_V2_H((const pixel*)b, &tmp0, &tmp1);
	b += strideb;
	LD_V2_H((const pixel*)b, &tmp2, &tmp3);
	b += strideb;
	LD_V2_H((const pixel*)b, &tmp4, &tmp5);
	b += strideb;
	LD_V2_H((const pixel*)b, &tmp6, &tmp7);
	b += strideb;
	LD_V2_H((const pixel*)b, &val0, &val1);
	b += strideb;
	LD_V2_H((const pixel*)b, &val2, &val3);
	b += strideb;
	LD_V2_H((const pixel*)b, &val4, &val5);
	b += strideb;
	LD_V2_H((const pixel*)b, &val6, &val7);
	b += strideb;
	LD_V2_H((const pixel*)b, &mid0, &mid1);
	b += strideb;
	LD_V2_H((const pixel*)b, &mid2, &mid3);
	b += strideb;
	LD_V2_H((const pixel*)b, &mid4, &mid5);
	b += strideb;
	LD_V2_H((const pixel*)b, &mid6, &mid7);
	b += strideb;
	LD_V2_H((const pixel*)b, &cen0, &cen1);
	b += strideb;
	LD_V2_H((const pixel*)b, &cen2, &cen3);
	b += strideb;
	LD_V2_H((const pixel*)b, &cen4, &cen5);
	b += strideb;
	LD_V2_H((const pixel*)b, &cen6, &cen7);

	ST_V2_H(tmp0, tmp1, (pixel*)a);
	a += stridea;
	ST_V2_H(tmp2, tmp3, (pixel*)a);
	a += stridea;
	ST_V2_H(tmp4, tmp5, (pixel*)a);
	a += stridea;
	ST_V2_H(tmp6, tmp7, (pixel*)a);
	a += stridea;
	ST_V2_H(val0, val1, (pixel*)a);
	a += stridea;
	ST_V2_H(val2, val3, (pixel*)a);
	a += stridea;
	ST_V2_H(val4, val5, (pixel*)a);
	a += stridea;
	ST_V2_H(val6, val7, (pixel*)a);
	a += stridea;
	ST_V2_H(mid0, mid1, (pixel*)a);
	a += stridea;
	ST_V2_H(mid2, mid3, (pixel*)a);
	a += stridea;
	ST_V2_H(mid4, mid5, (pixel*)a);
	a += stridea;
	ST_V2_H(mid6, mid7, (pixel*)a);
	a += stridea;
	ST_V2_H(cen0, cen1, (pixel*)a);
	a += stridea;
	ST_V2_H(cen2, cen3, (pixel*)a);
	a += stridea;
	ST_V2_H(cen4, cen5, (pixel*)a);
	a += stridea;
	ST_V2_H(cen6, cen7, (pixel*)a);

	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
    	{
        	for (int x = 0; x < 16; x++)
		{
            		if (t_a[x] != t_b[x])
			{
				printf("blockcopy_ss_16x16 test fail\n");
				return;
			}
		}
		
        	t_a += stridea;
        	t_b += strideb;
    	}

	printf("blockcopy_ss_16x16 test success\n");
	#endif
}

void blockcopy_ss_32x32(int16_t* a, intptr_t stridea, const int16_t* b, intptr_t strideb)
{
	#ifdef DEBUG
	const int16_t *t_b;
	int16_t *t_a;
	t_b = b;
	t_a = a;
	#endif	

	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v2i64 val0, val1, val2, val3, val4, val5, val6, val7;
	v2i64 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v2i64 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;

	const int16_t *b0, *b1, *b2, *b3, *b4, *b5, *b6, *b7;
	int16_t *a0, *a1, *a2, *a3, *a4, *a5, *a6, *a7;
	
	b0 = b;
	b1 = b + strideb;
	b2 = b + 2 * strideb;
	b3 = b + 3 * strideb;
	b4 = b + 4 * strideb;
	b5 = b + 5 * strideb;
	b6 = b + 6 * strideb;
	b7 = b + 7 * strideb;

	a0 = a;
	a1 = a + stridea;
	a2 = a + 2 * stridea;
	a3 = a + 3 * stridea;
	a4 = a + 4 * stridea;
	a5 = a + 5 * stridea;
	a6 = a + 6 * stridea;
	a7 = a + 7 * stridea;

	for (int i = 0; i < 4; i++)
	{
		LD_V4_H((const pixel*)b0, &tmp0, &tmp1, &tmp2, &tmp3);
		LD_V4_H((const pixel*)b1, &tmp4, &tmp5, &tmp6, &tmp7);
		LD_V4_H((const pixel*)b2, &val0, &val1, &val2, &val3);
		LD_V4_H((const pixel*)b3, &val4, &val5, &val6, &val7);
	
		LD_V4_H((const pixel*)b4, &mid0, &mid1, &mid2, &mid3);
		LD_V4_H((const pixel*)b5, &mid4, &mid5, &mid6, &mid7);
		LD_V4_H((const pixel*)b6, &cen0, &cen1, &cen2, &cen3);
		LD_V4_H((const pixel*)b7, &cen4, &cen5, &cen6, &cen7);
	
		b0 += 8 * strideb;
		b1 += 8 * strideb;
		b2 += 8 * strideb;
		b3 += 8 * strideb;
		b4 += 8 * strideb;
		b5 += 8 * strideb;
		b6 += 8 * strideb;
		b7 += 8 * strideb;

		ST_V4_H(tmp0, tmp1, tmp2, tmp3, (pixel*)a0);
		ST_V4_H(tmp4, tmp5, tmp6, tmp7, (pixel*)a1);	
		ST_V4_H(val0, val1, val2, val3, (pixel*)a2);
		ST_V4_H(val4, val5, val6, val7, (pixel*)a3);	
	
		ST_V4_H(mid0, mid1, mid2, mid3, (pixel*)a4);
		ST_V4_H(mid4, mid5, mid6, mid7, (pixel*)a5);	
		ST_V4_H(cen0, cen1, cen2, cen3, (pixel*)a6);
		ST_V4_H(cen4, cen5, cen6, cen7, (pixel*)a7);	
	
		a0 += 8 * stridea;
		a1 += 8 * stridea;
		a2 += 8 * stridea;
		a3 += 8 * stridea;
		a4 += 8 * stridea;
		a5 += 8 * stridea;
		a6 += 8 * stridea;
		a7 += 8 * stridea;
	}

	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
    	{
        	for (int x = 0; x < 32; x++)
		{
            		if (t_a[x] != t_b[x])
			{
				printf("blockcopy_ss_32x32 test fail\n");
				return;
			}
		}
		
        	t_a += stridea;
        	t_b += strideb;
    	}

	printf("blockcopy_ss_32x32 test success\n");
	#endif
}

template<int bx, int by>
void blockcopy_ss_c(int16_t* a, intptr_t stridea, const int16_t* b, intptr_t strideb)
{
    for (int y = 0; y < by; y++)
    {
        for (int x = 0; x < bx; x++)
            a[x] = b[x];

        a += stridea;
        b += strideb;
    }
}

//----------------------------------------------------------------------------------------------------------------------------
//void sub_ps(int16_t* a, intptr_t dstride, const pixel* b0, const pixel* b1, intptr_t sstride0, intptr_t sstride1)
//enable size 4x4, 8x8, 16x16, 32x32, 64x64.
//----------------------------------------------------------------------------------------------------------------------------

void sub_ps_8x8(int16_t* a, intptr_t dstride, const pixel* b0, const pixel* b1, intptr_t sstride0, intptr_t sstride1)
{
	#ifdef DEBUG
	int16_t* t_a;
	const pixel *t_b0, *t_b1;
	t_a = a;
	t_b0 = b0;
	t_b1 = b1;
	#endif

	v8u16 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8i16 res0, res1, res2, res3, res4, res5, res6, res7;

	LD4_BtoH(b0, sstride0, &tmp0, &tmp1, &tmp2, &tmp3);
	LD4_BtoH(b1, sstride1, &tmp4, &tmp5, &tmp6, &tmp7);

	b0 += 4 * sstride0;
	b1 += 4 * sstride1;

	LD4_BtoH(b0, sstride0, &mid0, &mid1, &mid2, &mid3);
	LD4_BtoH(b1, sstride1, &mid4, &mid5, &mid6, &mid7);

	res0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp4);
	res1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp5);
	res2 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp6);
	res3 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp7);

	res4 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid4);
	res5 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid5);
	res6 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid6);
	res7 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid7);

	ST_V4((v2i64)res0, (v2i64)res1, (v2i64)res2, (v2i64)res3, (pixel *)a, 2 * dstride);

	a += 4 * dstride;
	
	ST_V4((v2i64)res4, (v2i64)res5, (v2i64)res6, (v2i64)res7, (pixel *)a, 2 * dstride);

/*		
	tmp0 = __builtin_lsx_vbld(0, b0);
	tmp1 = __builtin_lsx_vbld(0, b0 + sstride0);
	tmp2 = __builtin_lsx_vbld(0, b0 + 2 * sstride0);
	tmp3 = __builtin_lsx_vbld(0, b0 + 3 * sstride0);
		
	mid0 = __builtin_lsx_vextb_u_h((v16i8)tmp0);
	mid1 = __builtin_lsx_vextb_u_h((v16i8)tmp1);
	mid2 = __builtin_lsx_vextb_u_h((v16i8)tmp2);
	mid3 = __builtin_lsx_vextb_u_h((v16i8)tmp3);

	tmp4 = __builtin_lsx_vbld(0, b1);
	tmp5 = __builtin_lsx_vbld(0, b1 + sstride1);
	tmp6 = __builtin_lsx_vbld(0, b1 + 2 * sstride1);
	tmp7 = __builtin_lsx_vbld(0, b1 + 3 * sstride1);
		
	mid4 = __builtin_lsx_vextb_u_h((v16i8)tmp4);
	mid5 = __builtin_lsx_vextb_u_h((v16i8)tmp5);
	mid6 = __builtin_lsx_vextb_u_h((v16i8)tmp6);
	mid7 = __builtin_lsx_vextb_u_h((v16i8)tmp7);	
	
	res0 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid4);
	res1 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid5);
	res2 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid6);
	res3 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid7);

	__builtin_msa_st_d((v2i64)res0, a, 0);
	__builtin_msa_st_d((v2i64)res1, a + dstride, 0);
	__builtin_msa_st_d((v2i64)res2, a + 2 * dstride, 0);	
	__builtin_msa_st_d((v2i64)res3, a + 3 * dstride, 0);

	b0 += 4 * sstride0;
	b1 += 4 * sstride1;
	a += 4 * dstride;						 
       
	tmp0 = __builtin_lsx_vbld(0, b0);
	tmp1 = __builtin_lsx_vbld(0, b0 + sstride0);
	tmp2 = __builtin_lsx_vbld(0, b0 + 2 * sstride0);
	tmp3 = __builtin_lsx_vbld(0, b0 + 3 * sstride0);
		
	mid0 = __builtin_lsx_vextb_u_h((v16i8)tmp0);
	mid1 = __builtin_lsx_vextb_u_h((v16i8)tmp1);
	mid2 = __builtin_lsx_vextb_u_h((v16i8)tmp2);
	mid3 = __builtin_lsx_vextb_u_h((v16i8)tmp3);

	tmp4 = __builtin_lsx_vbld(0, b1);
	tmp5 = __builtin_lsx_vbld(0, b1 + sstride1);
	tmp6 = __builtin_lsx_vbld(0, b1 + 2 * sstride1);
	tmp7 = __builtin_lsx_vbld(0, b1 + 3 * sstride1);
		
	mid4 = __builtin_lsx_vextb_u_h((v16i8)tmp4);
	mid5 = __builtin_lsx_vextb_u_h((v16i8)tmp5);
	mid6 = __builtin_lsx_vextb_u_h((v16i8)tmp6);
	mid7 = __builtin_lsx_vextb_u_h((v16i8)tmp7);	
	
	res0 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid4);
	res1 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid5);
	res2 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid6);
	res3 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid7);

	__builtin_msa_st_d((v2i64)res0, a, 0);
	__builtin_msa_st_d((v2i64)res1, a + dstride, 0);
	__builtin_msa_st_d((v2i64)res2, a + 2 * dstride, 0);	
	__builtin_msa_st_d((v2i64)res3, a + 3 * dstride, 0);
*/
	/*Debug
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
 	*/		
	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
    	{
        	for (int x = 0; x < 8; x++)
		{
            		if (t_a[x] != (int16_t)(t_b0[x] - t_b1[x]))
			{
				printf("sub_ps_8x8 test fail\n");
				return;
			}
		}	
        	t_b0 += sstride0;
        	t_b1 += sstride1;
        	t_a += dstride;
    	}
	printf("sub_ps_8x8 test success\n");
	#endif
}

void sub_ps_4x4(int16_t* a, intptr_t dstride, const pixel* b0, const pixel* b1, intptr_t sstride0, intptr_t sstride1)
{
	/*printf("\n\n\n");
	for (int n = 0; n < 4; n++)
	{	
		for (int m = 0; m < 4; m++)
			printf("%x\t", b0[m]);
		b0 = b0 + sstride0;
		printf("\n");	
	}
	abort();*/	
	
	#ifdef DEBUG
	int16_t* t_a;
	const pixel *t_b0, *t_b1;
	t_a = a;
	t_b0 = b0;
	t_b1 = b1;
	#endif

	v8u16 tmp0, tmp1, tmp2, tmp3;
	v8i16 rest0, rest1;
	//v2i64 i0, i1, i2, i3;	
	//LD4(b0, sstride0, i0, i1, i2, i3);
	L_4x4_B_H(b0, sstride0, &tmp0, &tmp1);
	L_4x4_B_H(b1, sstride1, &tmp2, &tmp3);
	rest0 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp2);
	rest1 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp3);		
	S_4x4_H(rest0, rest1, a, dstride);
	/*printf("\n\n\n");
	for (int n = 0; n < 4; n++)
	{	
		for (int m = 0; m < 4; m++)
			printf("%x\t", a[m]);
		a = a + dstride;
		printf("\n");	
	}
	abort();*/	
	
	#ifdef DEBUG
	for (int y = 0; y < 4; y++)
    	{
        	for (int x = 0; x < 4; x++)
		{
            		if (t_a[x] != (int16_t)(t_b0[x] - t_b1[x]))
			{
				printf("sub_ps_4x4 test fail\n");
				return;
			}
		}	
        	t_b0 += sstride0;
        	t_b1 += sstride1;
        	t_a += dstride;
    	}
	printf("sub_ps_4x4 test success\n");
	#endif
}

void sub_ps_16x16(int16_t* a, intptr_t dstride, const pixel* b0, const pixel* b1, intptr_t sstride0, intptr_t sstride1)
{
	/*printf("\n\n\n");
	for (int n = 0; n < 16; n++)
	{	
		for (int m = 0; m < 16; m++)
			printf("%x\t", b0[m]);
		b0 = b0 + sstride0;
		printf("\n\n");	
	}
	abort();	*/
	#ifdef DEBUG
	int16_t* t_a;
	const pixel *t_b0, *t_b1;
	t_a = a;
	t_b0 = b0;
	t_b1 = b1;
	#endif

	v8u16 tmp0, tmp1, tmp2, tmp3, mid0, mid1, mid2, mid3;
	v8u16 tmp8, tmp9, tmp10, tmp11, mid8, mid9, mid10, mid11; 
	v8i16 tmp12, tmp13, tmp14, tmp15, mid12, mid13, mid14, mid15;

	for (int i = 4; i > 0; i--)
	{
		//LD4(b0, sstride0, &tmp0, &tmp1, &tmp2, &tmp3);
		/*printf("%x\t", ((v4i32)tmp0)[0]);	
		printf("%x\t", ((v4i32)tmp0)[1]);	
		printf("%x\t", ((v4i32)tmp1)[0]);
		printf("%x\t", ((v4i32)tmp1)[1]);
		printf("%x\t", ((v4i32)tmp2)[0]);
		printf("%x\t", ((v4i32)tmp2)[1]);
		printf("%x\t", ((v4i32)tmp3)[0]);
		printf("%x\t", ((v4i32)tmp3)[1]);*/
		//LD4(b1, sstride1, &tmp8, &tmp9, &tmp10, &tmp11);
		
		//LD4(b0 + 8, sstride0, &mid0, &mid1, &mid2, &mid3);
		//LD4(b1 + 8, sstride1, &mid8, &mid9, &mid10, &mid11);

		//LD2_H(b0, &tmp0, &tmp1);
		//LD2_H(b0 + sstride0, &tmp2, &tmp3);
		//LD2_H(b1, &tmp8, &tmp9);
		//LD2_H(b1 + sstride1, &tmp10, &tmp11);
		
		LD_H_BtoH(b0, &tmp0);
		LD_H_BtoH(b0 + 8, &tmp1);
		
		b0 += sstride0;
	
		LD_H_BtoH(b0, &tmp2);
		LD_H_BtoH(b0 + 8, &tmp3);

		b0 += sstride0;

		LD_H_BtoH(b0, &mid0);
		LD_H_BtoH(b0 + 8, &mid1);
		
		b0 += sstride0;
	
		LD_H_BtoH(b0, &mid2);
		LD_H_BtoH(b0 + 8, &mid3);

		LD_H_BtoH(b1, &tmp8);
		LD_H_BtoH(b1 + 8, &tmp9);
		
		b1 += sstride0;
	
		LD_H_BtoH(b1, &tmp10);
		LD_H_BtoH(b1 + 8, &tmp11);

		b1 += sstride0;

		LD_H_BtoH(b1, &mid8);
		LD_H_BtoH(b1 + 8, &mid9);
		
		b1 += sstride0;
	
		LD_H_BtoH(b1, &mid10);
		LD_H_BtoH(b1 + 8, &mid11);

		/*
 		LD2_H(b0 + 2 * sstride0, &mid0, &mid1);
		LD2_H(b0 + 3 * sstride0, &mid2, &mid3);
		LD2_H(b1 + 2 * sstride1, &mid8, &mid9);
		LD2_H(b1 + 3 * sstride1, &mid10, &mid11);
		*/

		/*	
		tmp4 = __builtin_lsx_vextb_u_h((v16i8)tmp0);
		tmp5 = __builtin_lsx_vextb_u_h((v16i8)tmp1);
		tmp6 = __builtin_lsx_vextb_u_h((v16i8)tmp2);
		tmp7 = __builtin_lsx_vextb_u_h((v16i8)tmp3);
		tmp12 = __builtin_lsx_vextb_u_h((v16i8)tmp8);
		tmp13 = __builtin_lsx_vextb_u_h((v16i8)tmp9);
		tmp14 = __builtin_lsx_vextb_u_h((v16i8)tmp10);
		tmp15 = __builtin_lsx_vextb_u_h((v16i8)tmp11);
		*/

		/*mid4 = __builtin_lsx_vextb_u_h((v16i8)mid0);
		mid5 = __builtin_lsx_vextb_u_h((v16i8)mid1);
		mid6 = __builtin_lsx_vextb_u_h((v16i8)mid2);
		mid7 = __builtin_lsx_vextb_u_h((v16i8)mid3);
		mid12 = __builtin_lsx_vextb_u_h((v16i8)mid8);
		mid13 = __builtin_lsx_vextb_u_h((v16i8)mid9);
		mid14 = __builtin_lsx_vextb_u_h((v16i8)mid10);
		mid15 = __builtin_lsx_vextb_u_h((v16i8)mid11);
		*/

		/*
		tmp0 = (v2i64)__builtin_msa_subv_h((v8i16)tmp4, (v8i16)tmp12);
		tmp1 = (v2i64)__builtin_msa_subv_h((v8i16)tmp5, (v8i16)tmp13);
		tmp2 = (v2i64)__builtin_msa_subv_h((v8i16)tmp6, (v8i16)tmp14);
		tmp3 = (v2i64)__builtin_msa_subv_h((v8i16)tmp7, (v8i16)tmp15);
		*/
		
		tmp12 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp8);
		tmp13 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp9);
		tmp14 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp10);
		tmp15 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp11);

		mid12 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid8);
		mid13 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid9);
		mid14 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid10);
		mid15 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid11);

		
		/*
		mid0 = (v2i64)__builtin_msa_subv_h((v8i16)mid4, (v8i16)mid12);
		mid1 = (v2i64)__builtin_msa_subv_h((v8i16)mid5, (v8i16)mid13);
		mid2 = (v2i64)__builtin_msa_subv_h((v8i16)mid6, (v8i16)mid14);
		mid3 = (v2i64)__builtin_msa_subv_h((v8i16)mid7, (v8i16)mid15);
		*/
		/*printf("\n\n\n");
		printf("%x\n", ((v4i32)tmp0)[0]);
		printf("%x\n", ((v4i32)tmp0)[1]);
		printf("%x\n", ((v4i32)tmp1)[0]);
		printf("%x\n", ((v4i32)tmp1)[1]);
		printf("%x\n", ((v4i32)tmp2)[0]);
		printf("%x\n", ((v4i32)tmp2)[1]);
		printf("%x\n", ((v4i32)tmp3)[0]);
		printf("%x\n", ((v4i32)tmp3)[1]);*/
				
		//ST_V4(tmp0, tmp1, tmp2, tmp3, (pixel *)a, dstride * 2);
		//ST_V4(mid0, mid1, mid2, mid3, (pixel *)(a + 8), dstride * 2);
	
		ST_V2_H((v2i64)tmp12, (v2i64)tmp13, (pixel *)a);
		ST_V2_H((v2i64)tmp14, (v2i64)tmp15, (pixel *)(a + dstride));

		a += 2 * dstride;

		ST_V2_H((v2i64)mid12, (v2i64)mid13, (pixel *)a);
		ST_V2_H((v2i64)mid14, (v2i64)mid15, (pixel *)(a + dstride));

		//ST_V2_H(tmp0, tmp1, (pixel *)a);
		//ST_V2_H(tmp2, tmp3, (pixel *)(a + dstride));
		//ST_V2_H(mid0, mid1, (pixel *)(a + 2 * dstride));
		//ST_V2_H(mid2, mid3, (pixel *)(a + 3 * dstride));
				
		b0 += sstride0;
		b1 += sstride1;
		a += 2 * dstride;
	}

       /*printf("\n\n\n");
	a = a - 16 * dstride;
	for (int n = 0; n < 16; n++)
	{	
		for (int m = 0; m < 16; m++)
			printf("%x\t", a[m]);
		a = a + dstride;
		printf("\n\n");	
	}
	abort();*/
	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
    	{
        	for (int x = 0; x < 16; x++)
		{
            		if (t_a[x] != (int16_t)(t_b0[x] - t_b1[x]))
			{
				printf("sub_ps_16x16 test fail\n");
				return;
			}
		}	
        	t_b0 += sstride0;
        	t_b1 += sstride1;
        	t_a += dstride;
    	}
	printf("sub_ps_16x16 test success\n");
	#endif
}

void sub_ps_32x32(int16_t* a, intptr_t dstride, const pixel* b0, const pixel* b1, intptr_t sstride0, intptr_t sstride1)
{
	#ifdef DEBUG
	int16_t* t_a;
	const pixel *t_b0, *t_b1;
	t_a = a;
	t_b0 = b0;
	t_b1 = b1;
	#endif
	
	v8u16 tmp0, tmp1, tmp2, tmp3, mid0, mid1, mid2, mid3;
	v8u16 tmp8, tmp9, tmp10, tmp11, mid8, mid9, mid10, mid11;
	v8i16 tmp12, tmp13, tmp14, tmp15, mid12, mid13, mid14, mid15;

	for (int i = 16; i > 0; i--)
	{
		LD4_H_BtoH(b0, &tmp0, &tmp1, &tmp2, &tmp3);
		LD4_H_BtoH(b1, &tmp8, &tmp9, &tmp10, &tmp11);
		
		LD4_H_BtoH(b0 + sstride0, &mid0, &mid1, &mid2, &mid3);
		LD4_H_BtoH(b1 + sstride1, &mid8, &mid9, &mid10, &mid11);
		
		tmp12 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp8);
		tmp13 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp9);
		tmp14 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp10);
		tmp15 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp11);
	
		mid12 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid8);
		mid13 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid9);
		mid14 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid10);
		mid15 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid11);

		ST_V4_H((v2i64)tmp12, (v2i64)tmp13, (v2i64)tmp14, (v2i64)tmp15, (pixel *)a);
		ST_V4_H((v2i64)mid12, (v2i64)mid13, (v2i64)mid14, (v2i64)mid15, (pixel *)(a + dstride));

		b0 += 2 * sstride0;
		b1 += 2 * sstride1; 
		a += 2 * dstride;
		/*
		LD4_H(b0, &tmp0, &tmp1, &tmp2, &tmp3);
		LD4_H(b1, &tmp8, &tmp9, &tmp10, &tmp11);
		
		LD4_H(b0 + sstride0, &mid0, &mid1, &mid2, &mid3);
		LD4_H(b1 + sstride1, &mid8, &mid9, &mid10, &mid11);

		tmp4 = __builtin_lsx_vextb_u_h((v16i8)tmp0);
		tmp5 = __builtin_lsx_vextb_u_h((v16i8)tmp1);
		tmp6 = __builtin_lsx_vextb_u_h((v16i8)tmp2);
		tmp7 = __builtin_lsx_vextb_u_h((v16i8)tmp3);
		tmp12 = __builtin_lsx_vextb_u_h((v16i8)tmp8);
		tmp12 = __builtin_lsx_vextb_u_h((v16i8)tmp8);
		tmp13 = __builtin_lsx_vextb_u_h((v16i8)tmp9);
		tmp14 = __builtin_lsx_vextb_u_h((v16i8)tmp10);
		tmp15 = __builtin_lsx_vextb_u_h((v16i8)tmp11);
		
		mid4 = __builtin_lsx_vextb_u_h((v16i8)mid0);
		mid5 = __builtin_lsx_vextb_u_h((v16i8)mid1);
		mid6 = __builtin_lsx_vextb_u_h((v16i8)mid2);
		mid7 = __builtin_lsx_vextb_u_h((v16i8)mid3);
		mid12 = __builtin_lsx_vextb_u_h((v16i8)mid8);
		mid13 = __builtin_lsx_vextb_u_h((v16i8)mid9);
		mid14 = __builtin_lsx_vextb_u_h((v16i8)mid10);
		mid15 = __builtin_lsx_vextb_u_h((v16i8)mid11);
	
		tmp0 = (v2i64)__builtin_msa_subv_h((v8i16)tmp4, (v8i16)tmp12);
		tmp1 = (v2i64)__builtin_msa_subv_h((v8i16)tmp5, (v8i16)tmp13);
		tmp2 = (v2i64)__builtin_msa_subv_h((v8i16)tmp6, (v8i16)tmp14);
		tmp3 = (v2i64)__builtin_msa_subv_h((v8i16)tmp7, (v8i16)tmp15);
		
		mid0 = (v2i64)__builtin_msa_subv_h((v8i16)mid4, (v8i16)mid12);
		mid1 = (v2i64)__builtin_msa_subv_h((v8i16)mid5, (v8i16)mid13);
		mid2 = (v2i64)__builtin_msa_subv_h((v8i16)mid6, (v8i16)mid14);
		mid3 = (v2i64)__builtin_msa_subv_h((v8i16)mid7, (v8i16)mid15);
		
		ST_V4_H(tmp0, tmp1, tmp2, tmp3, (pixel *)a);
		ST_V4_H(mid0, mid1, mid2, mid3, (pixel *)(a + dstride));
		
		b0 = b0 + 2 * sstride0;
		b1 = b1 + 2 * sstride1;
		a = a + 2 * dstride;	
*/
	}

	/*printf("\n\n\n");
	a = a - 32 * dstride;
	for (int n = 0; n < 32; n++)
	{	
		for (int m = 0; m < 32; m++)
			printf("%x\t", a[m]);
		a = a + dstride;
		printf("\n\n");	
	}
	abort();*/	
	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
    	{
        	for (int x = 0; x < 32; x++)
		{
            		if (t_a[x] != (int16_t)(t_b0[x] - t_b1[x]))
			{
				printf("sub_ps_32x32 test fail\n");
				return;
			}
		}	
        	t_b0 += sstride0;
        	t_b1 += sstride1;
        	t_a += dstride;
    	}
	printf("sub_ps_32x32 test success\n");
	#endif
	
}

void sub_ps_64x64(int16_t* a, intptr_t dstride, const pixel* b0, const pixel* b1, intptr_t sstride0, intptr_t sstride1)
{
	#ifdef DEBUG
	int16_t* t_a;
	const pixel *t_b0, *t_b1;
	t_a = a;
	t_b0 = b0;
	t_b1 = b1;
	#endif
			
	v8u16 tmp0, tmp1, tmp2, tmp3, mid0, mid1, mid2, mid3;
	v8u16 tmp8, tmp9, tmp10, tmp11, mid8, mid9, mid10, mid11;
	v8i16 tmp12, tmp13, tmp14, tmp15, mid12, mid13, mid14, mid15;

	for (int i = 64; i > 0; i--)
	{
		
		LD4_H_BtoH(b0, &tmp0, &tmp1, &tmp2, &tmp3);
		LD4_H_BtoH(b1, &tmp8, &tmp9, &tmp10, &tmp11);

		LD4_H_BtoH(b0 + 32, &mid0, &mid1, &mid2, &mid3);
		LD4_H_BtoH(b1 + 32, &mid8, &mid9, &mid10, &mid11);

		tmp12 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp8);
		tmp13 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp9);
		tmp14 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp10);
		tmp15 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp11);
	
		mid12 = __builtin_msa_subv_h((v8i16)mid0, (v8i16)mid8);
		mid13 = __builtin_msa_subv_h((v8i16)mid1, (v8i16)mid9);
		mid14 = __builtin_msa_subv_h((v8i16)mid2, (v8i16)mid10);
		mid15 = __builtin_msa_subv_h((v8i16)mid3, (v8i16)mid11);

		ST_V4_H((v2i64)tmp12, (v2i64)tmp13, (v2i64)tmp14, (v2i64)tmp15, (pixel *)a);
		ST_V4_H((v2i64)mid12, (v2i64)mid13, (v2i64)mid14, (v2i64)mid15, (pixel *)(a + 32));

		b0 += sstride0;
		b1 += sstride1;
		a += dstride;
	
		/*
		LD4_H(b0, &tmp0, &tmp1, &tmp2, &tmp3);
		LD4_H(b1, &tmp8, &tmp9, &tmp10, &tmp11);
		
		//printf("%lx\n", tmp8[0]);
		//printf("%lx\n", tmp9[1]);
		//abort();	
		LD4_H(b0 + 32, &mid0, &mid1, &mid2, &mid3);
		LD4_H(b1 + 32, &mid8, &mid9, &mid10, &mid11);

		tmp4 = __builtin_lsx_vextb_u_h((v16i8)tmp0);
		tmp5 = __builtin_lsx_vextb_u_h((v16i8)tmp1);
		tmp6 = __builtin_lsx_vextb_u_h((v16i8)tmp2);
		tmp7 = __builtin_lsx_vextb_u_h((v16i8)tmp3);
		tmp12 = __builtin_lsx_vextb_u_h((v16i8)tmp8);
		tmp13 = __builtin_lsx_vextb_u_h((v16i8)tmp9);
		tmp14 = __builtin_lsx_vextb_u_h((v16i8)tmp10);
		tmp15 = __builtin_lsx_vextb_u_h((v16i8)tmp11);
	
		mid4 = __builtin_lsx_vextb_u_h((v16i8)mid0);
		mid5 = __builtin_lsx_vextb_u_h((v16i8)mid1);
		mid6 = __builtin_lsx_vextb_u_h((v16i8)mid2);
		mid7 = __builtin_lsx_vextb_u_h((v16i8)mid3);
		mid12 = __builtin_lsx_vextb_u_h((v16i8)mid8);
		mid13 = __builtin_lsx_vextb_u_h((v16i8)mid9);
		mid14 = __builtin_lsx_vextb_u_h((v16i8)mid10);
		mid15 = __builtin_lsx_vextb_u_h((v16i8)mid11);

		tmp0 = (v2i64)__builtin_msa_subv_h((v8i16)tmp4, (v8i16)tmp12);
		tmp1 = (v2i64)__builtin_msa_subv_h((v8i16)tmp5, (v8i16)tmp13);
		tmp2 = (v2i64)__builtin_msa_subv_h((v8i16)tmp6, (v8i16)tmp14);
		tmp3 = (v2i64)__builtin_msa_subv_h((v8i16)tmp7, (v8i16)tmp15);
	
		mid0 = (v2i64)__builtin_msa_subv_h((v8i16)mid4, (v8i16)mid12);
		mid1 = (v2i64)__builtin_msa_subv_h((v8i16)mid5, (v8i16)mid13);
		mid2 = (v2i64)__builtin_msa_subv_h((v8i16)mid6, (v8i16)mid14);
		mid3 = (v2i64)__builtin_msa_subv_h((v8i16)mid7, (v8i16)mid15);

		//printf("%lx\n", tmp0[0]);
		//printf("%lx\n", tmp0[1]);
		//abort();		

		ST_V4_H(tmp0, tmp1, tmp2, tmp3, (pixel *)a);
		ST_V4_H(mid0, mid1, mid2, mid3, (pixel *)(a + 32));

		b0 = b0 + sstride0;
		b1 = b1 + sstride1;
		a = a + dstride;
		*/

	}
	/*printf("\n\n\n");
	a = a - 64 * dstride;
	for (int n = 0; n < 64; n++)
	{	
		for (int m = 0; m < 64; m++)
			printf("%x\t", a[m]);
		a = a + dstride;
		printf("\n\n");	
	}
	abort();*/		
	#ifdef DEBUG
	for (int y = 0; y < 64; y++)
    	{
        	for (int x = 0; x < 64; x++)
		{
            		if (t_a[x] != (int16_t)(t_b0[x] - t_b1[x]))
			{
				printf("sub_ps_64x64 test fail\n");
				return;
			}
		}	
        	t_b0 += sstride0;
        	t_b1 += sstride1;
        	t_a += dstride;
    	}
	printf("sub_ps_64x64 test success\n");
	#endif
}


template<int bx, int by>
void pixel_sub_ps_c(int16_t* a, intptr_t dstride, const pixel* b0, const pixel* b1, intptr_t sstride0, intptr_t sstride1)
{
    	for (int y = 0; y < by; y++)
    	{
        	for (int x = 0; x < bx; x++)
            		a[x] = (int16_t)(b0[x] - b1[x]);
	
        	b0 += sstride0;
        	b1 += sstride1;
        	a += dstride;
    	}
}

//-------------------------------------------------------------------------------------------------------------------------------
//void pixel_add_ps(pixel* a, intptr_t dstride, const pixel* b0, const int16_t* b1, intptr_t sstride0, intptr_t sstride1)
//enable size 4x4, 8x8, 16x16, 32x32.
//-------------------------------------------------------------------------------------------------------------------------------

void pixel_add_ps_4x4(pixel* a, intptr_t dstride, const pixel* b0, const int16_t* b1, intptr_t sstride0, intptr_t sstride1)
{
	#ifdef DEBUG
	pixel *t_a;
	const pixel *t_b0;
	const int16_t *t_b1;
	t_a = a;
	t_b0 = b0;
	t_b1 = b1;
	#endif
	
	v4i32 tmp0, tmp1, tmp2, tmp3;
	v8u16 mid0, mid1;
	v2i64 val0, val1, val2, val3;
	v8i16 cen0, cen1;
	v16u8 res0, res1;	

	LW4(b0, sstride0, &tmp0, &tmp1, &tmp2, &tmp3);	
	
	tmp0 = __builtin_msa_insve_w(tmp0, 1, tmp2);
	tmp1 = __builtin_msa_insve_w(tmp1, 1, tmp3);

	mid0 = __builtin_lsx_vextb_u_h((v16i8)tmp0);
	mid1 = __builtin_lsx_vextb_u_h((v16i8)tmp1);

	LD4((const pixel*)b1, 2 * sstride1, &val0, &val1, &val2, &val3);	

	val0 = __builtin_msa_insve_d(val0, 1, val2);	
	val1 = __builtin_msa_insve_d(val1, 1, val3);

	cen0 = __builtin_msa_addv_h((v8i16)mid0, (v8i16)val0);
	cen1 = __builtin_msa_addv_h((v8i16)mid1, (v8i16)val1);
	
	res0 = __builtin_lsx_vsrains_u_b((v8u16)cen0, 0);
	res1 = __builtin_lsx_vsrains_u_b((v8u16)cen1, 0);

	SW2((v4i32)res0, (v4i32)res1, a, dstride);
	SW2_1((v4i32)res0, (v4i32)res1, a + 2 * dstride, dstride);

	#ifdef DEBUG
	for (int y = 0; y < 4; y++)
    	{
        	for (int x = 0; x < 4; x++)
		{
            		if (t_a[x] != x265_clip(t_b0[x] + t_b1[x]))
			{
				printf("pixel_add_ps_4x4 test fail\n");
				return;
			}
		}
	
        	t_b0 += sstride0;
        	t_b1 += sstride1;
        	t_a += dstride;
    	}

	printf("pixel_add_ps_4x4 test success\n");
	#endif
}

void pixel_add_ps_8x8(pixel* a, intptr_t dstride, const pixel* b0, const int16_t* b1, intptr_t sstride0, intptr_t sstride1)
{
	#ifdef DEBUG
	pixel *t_a;
	const pixel *t_b0;
	const int16_t *t_b1;
	t_a = a;
	t_b0 = b0;
	t_b1 = b1;
	#endif
	
	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v2i64 val0, val1, val2, val3, val4, val5, val6, val7;	
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v16u8 res0, res1, res2, res3, res4, res5, res6, res7;
	
	LD4_BtoH(b0, sstride0, &mid0, &mid1, &mid2, &mid3);
	b0 += 4 * sstride0;
	LD4_BtoH(b0, sstride0, &mid4, &mid5, &mid6, &mid7);
	
	LD_V4((const pixel*)b1, 2 * sstride1, &val0, &val1, &val2, &val3);
	b1 += 4 * sstride1;
	LD_V4((const pixel*)b1, 2 * sstride1, &val4, &val5, &val6, &val7);

	cen0 = __builtin_msa_addv_h((v8i16)mid0, (v8i16)val0);
	cen1 = __builtin_msa_addv_h((v8i16)mid1, (v8i16)val1);
	cen2 = __builtin_msa_addv_h((v8i16)mid2, (v8i16)val2);
	cen3 = __builtin_msa_addv_h((v8i16)mid3, (v8i16)val3);
	cen4 = __builtin_msa_addv_h((v8i16)mid4, (v8i16)val4);
	cen5 = __builtin_msa_addv_h((v8i16)mid5, (v8i16)val5);
	cen6 = __builtin_msa_addv_h((v8i16)mid6, (v8i16)val6);
	cen7 = __builtin_msa_addv_h((v8i16)mid7, (v8i16)val7);

	res0 = __builtin_lsx_vsrains_u_b((v8u16)cen0, 0);
	res1 = __builtin_lsx_vsrains_u_b((v8u16)cen1, 0);
	res2 = __builtin_lsx_vsrains_u_b((v8u16)cen2, 0);
	res3 = __builtin_lsx_vsrains_u_b((v8u16)cen3, 0);
	res4 = __builtin_lsx_vsrains_u_b((v8u16)cen4, 0);
	res5 = __builtin_lsx_vsrains_u_b((v8u16)cen5, 0);
	res6 = __builtin_lsx_vsrains_u_b((v8u16)cen6, 0);
	res7 = __builtin_lsx_vsrains_u_b((v8u16)cen7, 0);

	SD4((v2i64)res0, (v2i64)res1, (v2i64)res2, (v2i64)res3, a, dstride);
	a += 4 * dstride;
	SD4((v2i64)res4, (v2i64)res5, (v2i64)res6, (v2i64)res7, a, dstride);

	#ifdef DEBUG
	for (int y = 0; y < 8; y++)
    	{
        	for (int x = 0; x < 8; x++)
		{
            		if (t_a[x] != x265_clip(t_b0[x] + t_b1[x]))
			{
				printf("pixel_add_ps_8x8 test fail\n");
				return;
			}
		}
	
        	t_b0 += sstride0;
        	t_b1 += sstride1;
        	t_a += dstride;
    	}

	printf("pixel_add_ps_8x8 test success\n");
	#endif
}

void pixel_add_ps_16x16(pixel* a, intptr_t dstride, const pixel* b0, const int16_t* b1, intptr_t sstride0, intptr_t sstride1)
{
	#ifdef DEBUG
	pixel *t_a;
	const pixel *t_b0;
	const int16_t *t_b1;
	t_a = a;
	t_b0 = b0;
	t_b1 = b1;
	#endif

	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	//v8u16 mid8, mid9, mid10, mid11, mid12, mid13, mid14, mid15;
	v2i64 val0, val1, val2, val3, val4, val5, val6, val7;
	//v2i64 val8, val9, val10, val11, val12, val13, val14, val15;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 cen8, cen9, cen10, cen11, cen12, cen13, cen14, cen15;
	v16u8 res0, res1, res2, res3, res4, res5, res6, res7;
	//v16u8 res8, res9, res10, res11, res12, res13, res14, res15;

	const pixel *b0_0, *b0_1, *b0_2, *b0_3;//*b0_4, *b0_5, *b0_6, *b0_7;

	b0_0 = b0;
	b0_1 = b0 + sstride0;
	b0_2 = b0 + 2 * sstride0;
	b0_3 = b0 + 3 * sstride0;
	//b0_4 = b0 + 4 * sstride0;
	//b0_5 = b0 + 5 * sstride0;
	//b0_6 = b0 + 6 * sstride0;
	//b0_7 = b0 + 7 * sstride0;

	const int16_t *b1_0, *b1_1, *b1_2, *b1_3;// *b1_4, *b1_5, *b1_6, *b1_7;

	b1_0 = b1;
	b1_1 = b1 + sstride1;
	b1_2 = b1 + 2 * sstride1;
	b1_3 = b1 + 3 * sstride1;
	//b1_4 = b1 + 4 * sstride1;
	//b1_5 = b1 + 5 * sstride1;
	//b1_6 = b1 + 6 * sstride1;
	//b1_7 = b1 + 7 * sstride1;
	
	pixel *a_0, *a_1, *a_2, *a_3;// *a_4, *a_5, *a_6, *a_7;
	
	a_0 = a;
	a_1 = a + dstride;
	a_2 = a + 2 * dstride;
	a_3 = a + 3 * dstride;
	//a_4 = a + 4 * dstride;
	//a_5 = a + 5 * dstride;
	//a_6 = a + 6 * dstride;
	//a_7 = a + 7 * dstride;
	
	for (int i = 0; i < 2; i++)
	{
		LD2_H_BtoH(b0_0, &mid0, &mid1);
		LD2_H_BtoH(b0_1, &mid2, &mid3);
		LD2_H_BtoH(b0_2, &mid4, &mid5);
		LD2_H_BtoH(b0_3, &mid6, &mid7);
/*
	LD2_H_BtoH(b0_4, &mid8, &mid9);
	LD2_H_BtoH(b0_5, &mid10, &mid11);
	LD2_H_BtoH(b0_6, &mid12, &mid13);
	LD2_H_BtoH(b0_7, &mid14, &mid15);
*/
		LD_V2_H((const pixel*)b1_0, &val0, &val1);
		LD_V2_H((const pixel*)b1_1, &val2, &val3);
		LD_V2_H((const pixel*)b1_2, &val4, &val5);
		LD_V2_H((const pixel*)b1_3, &val6, &val7);
/*
	LD_V2_H((const pixel*)b1_4, &val8, &val9);
	LD_V2_H((const pixel*)b1_5, &val10, &val11);
	LD_V2_H((const pixel*)b1_6, &val12, &val13);
	LD_V2_H((const pixel*)b1_7, &val14, &val15);
*/
		cen0 = __builtin_msa_addv_h((v8i16)mid0, (v8i16)val0);
		cen1 = __builtin_msa_addv_h((v8i16)mid1, (v8i16)val1);
		cen2 = __builtin_msa_addv_h((v8i16)mid2, (v8i16)val2);
		cen3 = __builtin_msa_addv_h((v8i16)mid3, (v8i16)val3);
		cen4 = __builtin_msa_addv_h((v8i16)mid4, (v8i16)val4);
		cen5 = __builtin_msa_addv_h((v8i16)mid5, (v8i16)val5);
		cen6 = __builtin_msa_addv_h((v8i16)mid6, (v8i16)val6);
		cen7 = __builtin_msa_addv_h((v8i16)mid7, (v8i16)val7);
/*	
	cen8 = __builtin_msa_addv_h((v8i16)mid8, (v8i16)val8);
	cen9 = __builtin_msa_addv_h((v8i16)mid9, (v8i16)val9);
	cen10 = __builtin_msa_addv_h((v8i16)mid10, (v8i16)val10);
	cen11 = __builtin_msa_addv_h((v8i16)mid11, (v8i16)val11);
	cen12 = __builtin_msa_addv_h((v8i16)mid12, (v8i16)val12);
	cen13 = __builtin_msa_addv_h((v8i16)mid13, (v8i16)val13);
	cen14 = __builtin_msa_addv_h((v8i16)mid14, (v8i16)val14);
	cen15 = __builtin_msa_addv_h((v8i16)mid15, (v8i16)val15);
*/

		b0_0 += 4 * sstride0;	
		b0_1 += 4 * sstride0;	
		b0_2 += 4 * sstride0;	
		b0_3 += 4 * sstride0;	

		b1_0 += 4 * sstride1;
		b1_1 += 4 * sstride1;
		b1_2 += 4 * sstride1;
		b1_3 += 4 * sstride1;
	
		LD2_H_BtoH(b0_0, &mid0, &mid1);
		LD2_H_BtoH(b0_1, &mid2, &mid3);
		LD2_H_BtoH(b0_2, &mid4, &mid5);
		LD2_H_BtoH(b0_3, &mid6, &mid7);

		LD_V2_H((const pixel*)b1_0, &val0, &val1);
		LD_V2_H((const pixel*)b1_1, &val2, &val3);
		LD_V2_H((const pixel*)b1_2, &val4, &val5);
		LD_V2_H((const pixel*)b1_3, &val6, &val7);

		cen8 = __builtin_msa_addv_h((v8i16)mid0, (v8i16)val0);
		cen9 = __builtin_msa_addv_h((v8i16)mid1, (v8i16)val1);
		cen10 = __builtin_msa_addv_h((v8i16)mid2, (v8i16)val2);
		cen11 = __builtin_msa_addv_h((v8i16)mid3, (v8i16)val3);
		cen12 = __builtin_msa_addv_h((v8i16)mid4, (v8i16)val4);
		cen13 = __builtin_msa_addv_h((v8i16)mid5, (v8i16)val5);
		cen14 = __builtin_msa_addv_h((v8i16)mid6, (v8i16)val6);
		cen15 = __builtin_msa_addv_h((v8i16)mid7, (v8i16)val7);

		res0 = __builtin_lsx_vsrains_u_b((v8u16)cen0, 0);
		res1 = __builtin_lsx_vsrains_u_b((v8u16)cen1, 0);
		res2 = __builtin_lsx_vsrains_u_b((v8u16)cen2, 0);
		res3 = __builtin_lsx_vsrains_u_b((v8u16)cen3, 0);
		res4 = __builtin_lsx_vsrains_u_b((v8u16)cen4, 0);
		res5 = __builtin_lsx_vsrains_u_b((v8u16)cen5, 0);
		res6 = __builtin_lsx_vsrains_u_b((v8u16)cen6, 0);
		res7 = __builtin_lsx_vsrains_u_b((v8u16)cen7, 0);

		SD2_H((v2i64)res0, (v2i64)res1, a_0);
		SD2_H((v2i64)res2, (v2i64)res3, a_1);
		SD2_H((v2i64)res4, (v2i64)res5, a_2);
		SD2_H((v2i64)res6, (v2i64)res7, a_3);
		
		res0 = __builtin_lsx_vsrains_u_b((v8u16)cen8, 0);
		res1 = __builtin_lsx_vsrains_u_b((v8u16)cen9, 0);
		res2 = __builtin_lsx_vsrains_u_b((v8u16)cen10, 0);
		res3 = __builtin_lsx_vsrains_u_b((v8u16)cen11, 0);
		res4 = __builtin_lsx_vsrains_u_b((v8u16)cen12, 0);
		res5 = __builtin_lsx_vsrains_u_b((v8u16)cen13, 0);
		res6 = __builtin_lsx_vsrains_u_b((v8u16)cen14, 0);
		res7 = __builtin_lsx_vsrains_u_b((v8u16)cen15, 0);
	
		a_0 += 4 * dstride;
		a_1 += 4 * dstride;
		a_2 += 4 * dstride;
		a_3 += 4 * dstride;

		SD2_H((v2i64)res0, (v2i64)res1, a_0);
		SD2_H((v2i64)res2, (v2i64)res3, a_1);
		SD2_H((v2i64)res4, (v2i64)res5, a_2);
		SD2_H((v2i64)res6, (v2i64)res7, a_3);

/*
	SD2_H((v2i64)res8, (v2i64)res9, a_0);
	SD2_H((v2i64)res10, (v2i64)res11, a_1);
	SD2_H((v2i64)res12, (v2i64)res13, a_2);
	SD2_H((v2i64)res14, (v2i64)res15, a_3);
*/	
		b0_0 += 4 * sstride0;
		b0_1 += 4 * sstride0;
		b0_2 += 4 * sstride0;
		b0_3 += 4 * sstride0;

		b1_0 += 4 * sstride1;
		b1_1 += 4 * sstride1;
		b1_2 += 4 * sstride1;
		b1_3 += 4 * sstride1;

		a_0 += 4 * dstride;
		a_1 += 4 * dstride;
		a_2 += 4 * dstride;
		a_3 += 4 * dstride;
	}

	#ifdef DEBUG
	for (int y = 0; y < 16; y++)
    	{
        	for (int x = 0; x < 16; x++)
		{
            		if (t_a[x] != x265_clip(t_b0[x] + t_b1[x]))
			{
				printf("pixel_add_ps_16x16 test fail\n");
				return;
			}
		}
	
        	t_b0 += sstride0;
        	t_b1 += sstride1;
        	t_a += dstride;
    	}

	printf("pixel_add_ps_16x16 test success\n");
	#endif
}

void pixel_add_ps_32x32(pixel* a, intptr_t dstride, const pixel* b0, const int16_t* b1, intptr_t sstride0, intptr_t sstride1)
{
	#ifdef DEBUG
	pixel *t_a;
	const pixel *t_b0;
	const int16_t *t_b1;
	t_a = a;
	t_b0 = b0;
	t_b1 = b1;
	#endif

	v8u16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v8u16 mid8, mid9, mid10, mid11, mid12, mid13, mid14, mid15;
	v2i64 val0, val1, val2, val3, val4, val5, val6, val7;
	v2i64 val8, val9, val10, val11, val12, val13, val14, val15;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 cen8, cen9, cen10, cen11, cen12, cen13, cen14, cen15;
	v16u8 res0, res1, res2, res3, res4, res5, res6, res7;
	v16u8 res8, res9, res10, res11, res12, res13, res14, res15;

	const pixel *b0_0, *b0_1, *b0_2, *b0_3;

	b0_0 = b0;
	b0_1 = b0 + sstride0;
	b0_2 = b0 + 2 * sstride0;
	b0_3 = b0 + 3 * sstride0;

	const int16_t *b1_0, *b1_1, *b1_2, *b1_3;
	
	b1_0 = b1;
	b1_1 = b1 + sstride1;
	b1_2 = b1 + 2 * sstride1;
	b1_3 = b1 + 3 * sstride1;
	
	pixel *a_0, *a_1, *a_2, *a_3;	
	
	a_0 = a;
	a_1 = a + dstride;
	a_2 = a + 2 * dstride;
	a_3 = a + 3 * dstride;

	for (int i = 0; i < 8; i++)
	{
		LD4_H_BtoH(b0_0, &mid0, &mid1, &mid2, &mid3);	
		LD4_H_BtoH(b0_1, &mid4, &mid5, &mid6, &mid7);	
		LD4_H_BtoH(b0_2, &mid8, &mid9, &mid10, &mid11);	
		LD4_H_BtoH(b0_3, &mid12, &mid13, &mid14, &mid15);

		LD_V4_H((const pixel*)b1_0, &val0, &val1, &val2, &val3);
		LD_V4_H((const pixel*)b1_1, &val4, &val5, &val6, &val7);
		LD_V4_H((const pixel*)b1_2, &val8, &val9, &val10, &val11);
		LD_V4_H((const pixel*)b1_3, &val12, &val13, &val14, &val15);

		cen0 = __builtin_msa_addv_h((v8i16)mid0, (v8i16)val0);
		cen1 = __builtin_msa_addv_h((v8i16)mid1, (v8i16)val1);
		cen2 = __builtin_msa_addv_h((v8i16)mid2, (v8i16)val2);
		cen3 = __builtin_msa_addv_h((v8i16)mid3, (v8i16)val3);
		cen4 = __builtin_msa_addv_h((v8i16)mid4, (v8i16)val4);
		cen5 = __builtin_msa_addv_h((v8i16)mid5, (v8i16)val5);
		cen6 = __builtin_msa_addv_h((v8i16)mid6, (v8i16)val6);
		cen7 = __builtin_msa_addv_h((v8i16)mid7, (v8i16)val7);

		cen8 = __builtin_msa_addv_h((v8i16)mid8, (v8i16)val8);
		cen9 = __builtin_msa_addv_h((v8i16)mid9, (v8i16)val9);
		cen10 = __builtin_msa_addv_h((v8i16)mid10, (v8i16)val10);
		cen11 = __builtin_msa_addv_h((v8i16)mid11, (v8i16)val11);
		cen12 = __builtin_msa_addv_h((v8i16)mid12, (v8i16)val12);
		cen13 = __builtin_msa_addv_h((v8i16)mid13, (v8i16)val13);
		cen14 = __builtin_msa_addv_h((v8i16)mid14, (v8i16)val14);
		cen15 = __builtin_msa_addv_h((v8i16)mid15, (v8i16)val15);

		res0 = __builtin_lsx_vsrains_u_b((v8u16)cen0, 0);
		res1 = __builtin_lsx_vsrains_u_b((v8u16)cen1, 0);
		res2 = __builtin_lsx_vsrains_u_b((v8u16)cen2, 0);
		res3 = __builtin_lsx_vsrains_u_b((v8u16)cen3, 0);
		res4 = __builtin_lsx_vsrains_u_b((v8u16)cen4, 0);
		res5 = __builtin_lsx_vsrains_u_b((v8u16)cen5, 0);
		res6 = __builtin_lsx_vsrains_u_b((v8u16)cen6, 0);
		res7 = __builtin_lsx_vsrains_u_b((v8u16)cen7, 0);

		res8 = __builtin_lsx_vsrains_u_b((v8u16)cen8, 0);
		res9 = __builtin_lsx_vsrains_u_b((v8u16)cen9, 0);
		res10 = __builtin_lsx_vsrains_u_b((v8u16)cen10, 0);
		res11 = __builtin_lsx_vsrains_u_b((v8u16)cen11, 0);
		res12 = __builtin_lsx_vsrains_u_b((v8u16)cen12, 0);
		res13 = __builtin_lsx_vsrains_u_b((v8u16)cen13, 0);
		res14 = __builtin_lsx_vsrains_u_b((v8u16)cen14, 0);
		res15 = __builtin_lsx_vsrains_u_b((v8u16)cen15, 0);

		SD4_H((v2i64)res0, (v2i64)res1, (v2i64)res2, (v2i64)res3, a_0);
		SD4_H((v2i64)res4, (v2i64)res5, (v2i64)res6, (v2i64)res7, a_1);
		SD4_H((v2i64)res8, (v2i64)res9, (v2i64)res10, (v2i64)res11, a_2);
		SD4_H((v2i64)res12, (v2i64)res13, (v2i64)res14, (v2i64)res15, a_3);

		b0_0 += 4 * sstride0;	
		b0_1 += 4 * sstride0;	
		b0_2 += 4 * sstride0;	
		b0_3 += 4 * sstride0;	

		b1_0 += 4 * sstride1;
		b1_1 += 4 * sstride1;
		b1_2 += 4 * sstride1;
		b1_3 += 4 * sstride1;

		a_0 += 4 * dstride;
		a_1 += 4 * dstride;
		a_2 += 4 * dstride;
		a_3 += 4 * dstride;
	}

	#ifdef DEBUG
	for (int y = 0; y < 32; y++)
    	{
        	for (int x = 0; x < 32; x++)
		{
            		if (t_a[x] != x265_clip(t_b0[x] + t_b1[x]))
			{
				printf("pixel_add_ps_32x32 test fail\n");
				return;
			}
		}
	
        	t_b0 += sstride0;
        	t_b1 += sstride1;
        	t_a += dstride;
    	}

	printf("pixel_add_ps_32x32 test success\n");
	#endif
}

template<int bx, int by>
void pixel_add_ps_c(pixel* a, intptr_t dstride, const pixel* b0, const int16_t* b1, intptr_t sstride0, intptr_t sstride1)
{
    for (int y = 0; y < by; y++)
    {
        for (int x = 0; x < bx; x++)
            a[x] = x265_clip(b0[x] + b1[x]);

        b0 += sstride0;
        b1 += sstride1;
        a += dstride;
    }
}

} //end anonymous namespace

static void partialButterfly4(const int16_t* src, int16_t* dst, int shift, int line)
{
    int j;
    int E[2], O[2];
    int add = 1 << (shift - 1);

    for (j = 0; j < line; j++)
    {
        /* E and O */
        E[0] = src[0] + src[3];
        O[0] = src[0] - src[3];
        E[1] = src[1] + src[2];
        O[1] = src[1] - src[2];

        dst[0] = (int16_t)((g_t4[0][0] * E[0] + g_t4[0][1] * E[1] + add) >> shift);
        dst[2 * line] = (int16_t)((g_t4[2][0] * E[0] + g_t4[2][1] * E[1] + add) >> shift);
        dst[line] = (int16_t)((g_t4[1][0] * O[0] + g_t4[1][1] * O[1] + add) >> shift);
        dst[3 * line] = (int16_t)((g_t4[3][0] * O[0] + g_t4[3][1] * O[1] + add) >> shift);

        src += 4;
        dst++;
    }
}

/*C function
static void dct4_c(const int16_t* src, int16_t* dst, intptr_t srcStride)
{
    const int shift_1st = 1 + X265_DEPTH - 8;
    const int shift_2nd = 8;

    ALIGN_VAR_32(int16_t, coef[4 * 4]);
    ALIGN_VAR_32(int16_t, block[4 * 4]);

    for (int i = 0; i < 4; i++)
    {
        memcpy(&block[i * 4], &src[i * srcStride], 4 * sizeof(int16_t));
    }

    partialButterfly4(block, coef, shift_1st, 4);
    partialButterfly4(coef, dst, shift_2nd, 4);
}
*/

//----------------------------------------------------------------------------------------
//static void dct4(const int16_t* src, int16_t* dst, intptr_t srcStride)
//idct4, dst4, idst4.
//----------------------------------------------------------------------------------------

static void dct4(const int16_t* src, int16_t* dst, intptr_t srcStride)
{
	#ifdef DEBUG
	const int16_t *t_src;
	const int shift_1st = 1 + X265_DEPTH - 8;
    	const int shift_2nd = 8;
	int16_t nw[16];
	int16_t *t_dst;
	t_dst = nw;
	t_src = src;

	ALIGN_VAR_32(int16_t, coef[4 * 4]);
    	ALIGN_VAR_32(int16_t, block[4 * 4]);
	
	for (int i = 0; i < 4; i++)
    	{
        	memcpy(&block[i * 4], &t_src[i * srcStride], 4 * sizeof(int16_t));
    	}
	
	partialButterfly4(block, coef, shift_1st, 4);
	
	/*
	printf("coef %d %d %d %d\n", coef[0], coef[1], coef[2], coef[3]);
	printf("coef %d %d %d %d\n", coef[4], coef[5], coef[6], coef[7]);
	printf("coef %d %d %d %d\n", coef[8], coef[9], coef[10], coef[11]);
	printf("coef %d %d %d %d\n", coef[12], coef[13], coef[14], coef[15]);
	*/

    	partialButterfly4(coef, t_dst, shift_2nd, 4);
	#endif
	
	v2i64 tmp0, tmp1, tmp2, tmp3;
	//v4i32 mid0, mid1;
	v4i32 val0, val1;	
	v8i16 cen0, cen1;
	v4i32 col0, col1, col2, col3;
	v8i16 coll0, coll1, coll2, coll3;
	v2i64 col10, col32;
	v4i32 row0, row1, row2, row3;	
	v8i16 rowl0, rowl1, rowl2, rowl3;
	v2i64 res0, res1;

	v8i16 con0 = {64, 64, 64, 64, 64, 64, 64, 64};
	v8i16 con1 = {83, 36, 83, 36, 83, 36, 83, 36};
	v8i16 con2 = {64, -64, 64, -64, 64, -64, 64, -64};
	v8i16 con3 = {36, -83, 36, -83, 36, -83, 36, -83};

	LD4((const pixel*)src, 2 * srcStride, &tmp0, &tmp1, &tmp2, &tmp3);

	tmp0 = __builtin_msa_insve_d(tmp0, 1, tmp1);
	tmp2 = __builtin_msa_insve_d(tmp2, 1, tmp3);

	/*
	mid0 = __builtin_msa_shf_w((v4i32)tmp0, 216);
	mid1 = __builtin_msa_shf_w((v4i32)tmp2, 216);

	val0 = __builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)mid1);
	//val1 = __builtin_msa_insve_d((v2i64)mid1, 0, (v2i64)mid0);
	val1 = __builtin_msa_pckod_d((v2i64)mid1, (v2i64)mid0);
	*/

	val0 = __builtin_msa_pckev_w((v4i32)tmp2, (v4i32)tmp0);
	val1 = __builtin_msa_pckod_w((v4i32)tmp2, (v4i32)tmp0);
	
	val1 = (v4i32)__builtin_msa_shf_h((v8i16)val1, 177);

	cen0 = __builtin_msa_addv_h((v8i16)val0, (v8i16)val1);
	cen1 = __builtin_msa_subv_h((v8i16)val0, (v8i16)val1);

	col0 = __builtin_msa_dotp_s_w(cen0, con0);
	col1 = __builtin_msa_dotp_s_w(cen1, con1);
	col2 = __builtin_msa_dotp_s_w(cen0, con2);
	col3 = __builtin_msa_dotp_s_w(cen1, con3);

	coll0 = __builtin_lsx_vsrarin_h(col0, 1);
	coll1 = __builtin_lsx_vsrarin_h(col1, 1);
	coll2 = __builtin_lsx_vsrarin_h(col2, 1);
	coll3 = __builtin_lsx_vsrarin_h(col3, 1);

	col10 = __builtin_msa_insve_d((v2i64)coll0, 1, (v2i64)coll1);
	col32 = __builtin_msa_insve_d((v2i64)coll2, 1, (v2i64)coll3);
	
	/*
	printf("col0 %d %d %d %d\n", ((v8i16)col10)[0], ((v8i16)col10)[1], ((v8i16)col10)[2], ((v8i16)col10)[3]);
	printf("col1 %d %d %d %d\n", ((v8i16)col10)[4], ((v8i16)col10)[5], ((v8i16)col10)[6], ((v8i16)col10)[7]);
	printf("col2 %d %d %d %d\n", ((v8i16)col32)[0], ((v8i16)col32)[1], ((v8i16)col32)[2], ((v8i16)col32)[3]);
	printf("col3 %d %d %d %d\n", ((v8i16)col32)[4], ((v8i16)col32)[5], ((v8i16)col32)[6], ((v8i16)col32)[7]);
	*/

	/*
	mid0 = __builtin_msa_shf_w((v4i32)col10, 216);
	mid1 = __builtin_msa_shf_w((v4i32)col32, 216);

	val0 = __builtin_msa_insve_d((v2i64)mid0, 1, (v2i64)mid1);
	//val1 = __builtin_msa_insve_d((v2i64)mid1, 0, (v2i64)mid0);
	val1 = __builtin_msa_pckod_d((v2i64)mid1, (v2i64)mid0);
	*/
	
	val0 = __builtin_msa_pckev_w((v4i32)col32, (v4i32)col10);
	val1 = __builtin_msa_pckod_w((v4i32)col32, (v4i32)col10);
	
	val1 = (v4i32)__builtin_msa_shf_h((v8i16)val1, 177);

	cen0 = __builtin_msa_addv_h((v8i16)val0, (v8i16)val1);
	cen1 = __builtin_msa_subv_h((v8i16)val0, (v8i16)val1);

	row0 = __builtin_msa_dotp_s_w(cen0, con0);
	row1 = __builtin_msa_dotp_s_w(cen1, con1);
	row2 = __builtin_msa_dotp_s_w(cen0, con2);
	row3 = __builtin_msa_dotp_s_w(cen1, con3);

	rowl0 = __builtin_lsx_vsrarin_h(row0, 8);
	rowl1 = __builtin_lsx_vsrarin_h(row1, 8);
	rowl2 = __builtin_lsx_vsrarin_h(row2, 8);
	rowl3 = __builtin_lsx_vsrarin_h(row3, 8);

	res0 = __builtin_msa_insve_d((v2i64)rowl0, 1, (v2i64)rowl1);
	res1 = __builtin_msa_insve_d((v2i64)rowl2, 1, (v2i64)rowl3);

	ST_V2_H(res0, res1, (pixel*)dst);

	#ifdef DEBUG
	for (int j = 0; j < 16; j++)
	{		
		if (dst[j] != t_dst[j])
		{
			printf("dct4 test fail\n");
			printf("right value %d\n", t_dst[j]);
			printf("wrong value %d\n", dst[j]);
			printf("wrong at %d\n", j);
			return;
		}	

		//printf("right value %d\n", t_dst[j]);
		//printf("wrong value %d\n", dst[j]);
	}

	printf("dct4 test success\n");
	#endif
}	

static void partialButterflyInverse4(const int16_t* src, int16_t* dst, int shift, int line)
{
    int j;
    int E[2], O[2];
    int add = 1 << (shift - 1);

    for (j = 0; j < line; j++)
    {
        /* Utilizing symmetry properties to the maximum to minimize the number of multiplications */
        O[0] = g_t4[1][0] * src[line] + g_t4[3][0] * src[3 * line];
        O[1] = g_t4[1][1] * src[line] + g_t4[3][1] * src[3 * line];
        E[0] = g_t4[0][0] * src[0] + g_t4[2][0] * src[2 * line];
        E[1] = g_t4[0][1] * src[0] + g_t4[2][1] * src[2 * line];

        /* Combining even and odd terms at each hierarchy levels to calculate the final spatial domain vector */
        dst[0] = (int16_t)(x265_clip3(-32768, 32767, (E[0] + O[0] + add) >> shift));
        dst[1] = (int16_t)(x265_clip3(-32768, 32767, (E[1] + O[1] + add) >> shift));
        dst[2] = (int16_t)(x265_clip3(-32768, 32767, (E[1] - O[1] + add) >> shift));
        dst[3] = (int16_t)(x265_clip3(-32768, 32767, (E[0] - O[0] + add) >> shift));

        src++;
        dst += 4;
    }
}

/*
static void idct4_c(const int16_t* src, int16_t* dst, intptr_t dstStride)
{
    const int shift_1st = 7;
    const int shift_2nd = 12 - (X265_DEPTH - 8);

    ALIGN_VAR_32(int16_t, coef[4 * 4]);
    ALIGN_VAR_32(int16_t, block[4 * 4]);

    partialButterflyInverse4(src, coef, shift_1st, 4); // Forward DST BY FAST ALGORITHM, block input, coef output
    partialButterflyInverse4(coef, block, shift_2nd, 4); // Forward DST BY FAST ALGORITHM, coef input, coeff output

    for (int i = 0; i < 4; i++)
    {
        memcpy(&dst[i * dstStride], &block[i * 4], 4 * sizeof(int16_t));
    }
}
*/

static void idct4(const int16_t* src, int16_t* dst, intptr_t dstStride)
{
	#ifdef DEBUG
	const int16_t *t_src;
	int16_t *t_dst;
	int16_t *n_dst;
	const int shift_1st = 7;
    	const int shift_2nd = 12 - (X265_DEPTH - 8);
	int16_t nw[4 * dstStride];
	t_dst = dst;
	t_src = src;
	n_dst = nw;
	
    	ALIGN_VAR_32(int16_t, coef[4 * 4]);
   	ALIGN_VAR_32(int16_t, block[4 * 4]);

	partialButterflyInverse4(t_src, coef, shift_1st, 4); // Forward DST BY FAST ALGORITHM, block input, coef output
    	partialButterflyInverse4(coef, block, shift_2nd, 4); // Forward DST BY FAST ALGORITHM, coef input, coeff output

/*
	printf("right value\n");

	for (int y = 0; y < 16; y++)
	{
		printf("%d ", block[y]);
	}
	
	printf("\n");

	for (int y = 0; y < 16; y++)
	{
		printf("%d ", coef[y]);
	}
	
	printf("\n");
*/

	for (int i = 0; i < 4; i++)
    	{
        	memcpy(&n_dst[i * dstStride], &block[i * 4], 4 * sizeof(int16_t));
    	}
	#endif
	
	v2i64 tmp0, tmp1;
	v8i16 val0, val1;
	v4i32 mid0, mid1, mid2, mid3;
	v4i32 res0, res1, res2, res3;
	v8i16 row0, row1, row2, row3;
	v8i16 col0, col1, col2, col3;
	v8i16 out0, out1;	

	v8i16 con0 = {64, 64, 64, 64, 64, 64, 64, 64};
	v8i16 con1 = {83, 36, 83, 36, 83, 36, 83, 36};
	v8i16 con2 = {64, -64, 64, -64, 64, -64, 64, -64};
	v8i16 con3 = {36, -83, 36, -83, 36, -83, 36, -83};

	LD_V2_H((const pixel*)src, &tmp0, &tmp1);

	/*
	val0 = __builtin_msa_pckev_h((v8i16)tmp1, (v8i16)tmp0);//col2, col0	
	val1 = __builtin_msa_pckod_h((v8i16)tmp1, (v8i16)tmp0);//col3, col1

	mid0 = __builtin_msa_dotp_s_w(val0, con0);//64*col2+64*col0
	mid1 = __builtin_msa_dotp_s_w(val0, con2);//-64*col2+64*col0
	mid2 = __builtin_msa_dotp_s_w(val1, con1);//36*col3+83*col1
	mid3 = __builtin_msa_dotp_s_w(val1, con3);//-83*col3+36*col1
	*/
	
	val0 = __builtin_msa_ilvr_h((v8i16)tmp1, (v8i16)tmp0); //even row
	val1 = __builtin_msa_ilvl_h((v8i16)tmp1, (v8i16)tmp0); //odd row

	mid0 = __builtin_msa_dotp_s_w(val0, con0); //64*row2+64*row0
	mid1 = __builtin_msa_dotp_s_w(val0, con2); //-64*row2+64*row0
	mid2 = __builtin_msa_dotp_s_w(val1, con1); //36*row3+83*row1
	mid3 = __builtin_msa_dotp_s_w(val1, con3); //-83*row3+36*row1

	res0 = __builtin_msa_addv_w(mid0, mid2);//row0
	res1 = __builtin_msa_addv_w(mid1, mid3);//row1
	res2 = __builtin_msa_subv_w(mid1, mid3);//row2
	res3 = __builtin_msa_subv_w(mid0, mid2);//row3

	row0 = __builtin_lsx_vsrarin_h(res0, 7);	
	row1 = __builtin_lsx_vsrarin_h(res1, 7);	
	row2 = __builtin_lsx_vsrarin_h(res2, 7);	
	row3 = __builtin_lsx_vsrarin_h(res3, 7);

/*	
	printf("%d %d %d %d\n", row0[0], row0[1], row0[2], row0[3]);
	printf("%d %d %d %d\n", row1[0], row1[1], row1[2], row1[3]);
	printf("%d %d %d %d\n", row2[0], row2[1], row2[2], row2[3]);
	printf("%d %d %d %d\n", row3[0], row3[1], row3[2], row3[3]);
*/
		
	//val0 = __builtin_msa_ilvr_h(row2, row0);
	//val1 = __builtin_msa_ilvr_h(row3, row1);
	
	out0 = (v8i16)__builtin_msa_insve_d((v2i64)row0, 1, (v2i64)row1);//row1 row0
	out1 = (v8i16)__builtin_msa_insve_d((v2i64)row2, 1, (v2i64)row3);//row3 row2

	val0 = __builtin_msa_pckev_h(out1, out0);
	val1 = __builtin_msa_pckod_h(out1, out0);

	//out0 = __builtin_msa_ilvr_h(val1, val0);//can be replaced by ilvev ilvod
	//out1 = __builtin_msa_ilvl_h(val1, val0);

	//val0 = __builtin_msa_ilvr_h(out1, out0); //even col
	//val1 = __builtin_msa_ilvl_h(out1, out0); //odd col

	mid0 = __builtin_msa_dotp_s_w(val0, con0); //64*col2+64*col0
	mid1 = __builtin_msa_dotp_s_w(val0, con2); //-64*col2+64*col0
	mid2 = __builtin_msa_dotp_s_w(val1, con1); //36*col3+83*col1
	mid3 = __builtin_msa_dotp_s_w(val1, con3); //-83*col3+36*col1

	res0 = __builtin_msa_addv_w(mid0, mid2);//col0
	res1 = __builtin_msa_addv_w(mid1, mid3);//col1
	res2 = __builtin_msa_subv_w(mid1, mid3);//col2
	res3 = __builtin_msa_subv_w(mid0, mid2);//col3

	col0 = __builtin_lsx_vsrarin_h(res0, 12);	
	col1 = __builtin_lsx_vsrarin_h(res1, 12);	
	col2 = __builtin_lsx_vsrarin_h(res2, 12);	
	col3 = __builtin_lsx_vsrarin_h(res3, 12);

	val0 = __builtin_msa_ilvr_h(col2, col0);
	val1 = __builtin_msa_ilvr_h(col3, col1);
	
	out0 = __builtin_msa_ilvr_h(val1, val0);
	out1 = __builtin_msa_ilvl_h(val1, val0);

	SD((v2i64)out0, (pixel*)dst);
	SD_1((v2i64)out0, (pixel*)(dst + dstStride));
	SD((v2i64)out1, (pixel*)(dst + 2 * dstStride));
	SD_1((v2i64)out1, (pixel*)(dst + 3 * dstStride));

	#ifdef DEBUG
	for (int j = 0; j < 4; j++)
	{
		for (int i = 0; i < 4; i++)
		{
			if (n_dst[i] != t_dst[i])
			{
				printf("idct4 test fail\n");
				printf("right value %d\n", n_dst[i]);
				printf("wrong value %d\n", t_dst[i]);
				printf("wrong at %d %d\n", j, i);
				return;
			}	
		}
		
		n_dst += dstStride;
		t_dst += dstStride;
	}

	printf("idct4 test success\n");
	#endif
}

static void fastForwardDst(const int16_t* block, int16_t* coeff, int shift)  // input block, output coeff
{
    int c[4];
    int rnd_factor = 1 << (shift - 1);

    for (int i = 0; i < 4; i++)
    {
        // Intermediate Variables
        c[0] = block[4 * i + 0] + block[4 * i + 3];
        c[1] = block[4 * i + 1] + block[4 * i + 3];
        c[2] = block[4 * i + 0] - block[4 * i + 1];
        c[3] = 74 * block[4 * i + 2];

        coeff[i] =      (int16_t)((29 * c[0] + 55 * c[1]  + c[3] + rnd_factor) >> shift);
        coeff[4 + i] =  (int16_t)((74 * (block[4 * i + 0] + block[4 * i + 1] - block[4 * i + 3]) + rnd_factor) >> shift);
        coeff[8 + i] =  (int16_t)((29 * c[2] + 55 * c[0]  - c[3] + rnd_factor) >> shift);
        coeff[12 + i] = (int16_t)((55 * c[2] - 29 * c[1] + c[3] + rnd_factor) >> shift);
    }
}

/*
static void dst4_c(const int16_t* src, int16_t* dst, intptr_t srcStride)
{
    const int shift_1st = 1 + X265_DEPTH - 8;
    const int shift_2nd = 8;

    ALIGN_VAR_32(int16_t, coef[4 * 4]);
    ALIGN_VAR_32(int16_t, block[4 * 4]);

    for (int i = 0; i < 4; i++)
    {
        memcpy(&block[i * 4], &src[i * srcStride], 4 * sizeof(int16_t));
    }

    fastForwardDst(block, coef, shift_1st);
    fastForwardDst(coef, dst, shift_2nd);
}
*/

static void dst4(const int16_t* src, int16_t* dst, intptr_t srcStride)
{
	#ifdef DEBUG
	const int16_t *t_src;
	int16_t nw[16];
	int16_t *t_dst;
	t_src = src;
	t_dst = nw;

	const int shift_1st = 1 + X265_DEPTH - 8;
    	const int shift_2nd = 8;

    	ALIGN_VAR_32(int16_t, coef[4 * 4]);
    	ALIGN_VAR_32(int16_t, block[4 * 4]);

    	for (int i = 0; i < 4; i++)
    	{
    		memcpy(&block[i * 4], &t_src[i * srcStride], 4 * sizeof(int16_t));
    	}

    	fastForwardDst(block, coef, shift_1st);
    	fastForwardDst(coef, t_dst, shift_2nd);
	#endif

	v2i64 tmp0, tmp1, tmp2, tmp3;
	v8i16 val0, val1;
	v4i32 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;	
	v4i32 col0, col1, col2, col3;
	v8i16 coll0, coll1, coll2, coll3;	
	v4i32 row0, row1, row2, row3;
	v8i16 res0, res1, res2, res3;
	v2i64 out0, out1;
	
	v8i16 con0 = {29, 55, 74, 84, 29, 55, 74, 84};
	v8i16 con1 = {74, 74, 0, -74, 74, 74, 0, -74};
	v8i16 con2 = {84, -29, -74, 55, 84, -29, -74, 55};
	v8i16 con3 = {55, -84, 74, -29, 55, -84, 74, -29};

	LD4((const pixel*)src, 2 * srcStride, &tmp0, &tmp1, &tmp2, &tmp3);

	val0 = (v8i16)__builtin_msa_insve_d(tmp0, 1, tmp1);//row1, row0
	val1 = (v8i16)__builtin_msa_insve_d(tmp2, 1, tmp3);//row3, row2

	mid0 = __builtin_msa_dotp_s_w(val0, con0);//84*col3+74*col2, 55*col1+29*col0
	mid1 = __builtin_msa_dotp_s_w(val1, con0);
	mid2 = __builtin_msa_dotp_s_w(val0, con1);
	mid3 = __builtin_msa_dotp_s_w(val1, con1);
	mid4 = __builtin_msa_dotp_s_w(val0, con2);
	mid5 = __builtin_msa_dotp_s_w(val1, con2);
	mid6 = __builtin_msa_dotp_s_w(val0, con3);
	mid7 = __builtin_msa_dotp_s_w(val1, con3);

	mid0 = (v4i32)__builtin_msa_hadd_s_d(mid0, mid0);
	mid1 = (v4i32)__builtin_msa_hadd_s_d(mid1, mid1);
	mid2 = (v4i32)__builtin_msa_hadd_s_d(mid2, mid2);
	mid3 = (v4i32)__builtin_msa_hadd_s_d(mid3, mid3);
	mid4 = (v4i32)__builtin_msa_hadd_s_d(mid4, mid4);
	mid5 = (v4i32)__builtin_msa_hadd_s_d(mid5, mid5);
	mid6 = (v4i32)__builtin_msa_hadd_s_d(mid6, mid6);
	mid7 = (v4i32)__builtin_msa_hadd_s_d(mid7, mid7);

	col0 = __builtin_msa_pckev_w(mid1, mid0);
	col1 = __builtin_msa_pckev_w(mid3, mid2);
	col2 = __builtin_msa_pckev_w(mid5, mid4);
	col3 = __builtin_msa_pckev_w(mid7, mid6);

	coll0 = __builtin_lsx_vsrarin_h(col0, 1);
	coll1 = __builtin_lsx_vsrarin_h(col1, 1);
	coll2 = __builtin_lsx_vsrarin_h(col2, 1);
	coll3 = __builtin_lsx_vsrarin_h(col3, 1);

	val0 = (v8i16)__builtin_msa_insve_d((v2i64)coll0, 1, (v2i64)coll1);//col1, col0
	val1 = (v8i16)__builtin_msa_insve_d((v2i64)coll2, 1, (v2i64)coll3);//col3, col2

	mid0 = __builtin_msa_dotp_s_w(val0, con0);//84*row3+74*row2, 55*row1+29*row0
	mid1 = __builtin_msa_dotp_s_w(val1, con0);
	mid2 = __builtin_msa_dotp_s_w(val0, con1);
	mid3 = __builtin_msa_dotp_s_w(val1, con1);
	mid4 = __builtin_msa_dotp_s_w(val0, con2);
	mid5 = __builtin_msa_dotp_s_w(val1, con2);
	mid6 = __builtin_msa_dotp_s_w(val0, con3);
	mid7 = __builtin_msa_dotp_s_w(val1, con3);

	mid0 = (v4i32)__builtin_msa_hadd_s_d(mid0, mid0);
	mid1 = (v4i32)__builtin_msa_hadd_s_d(mid1, mid1);
	mid2 = (v4i32)__builtin_msa_hadd_s_d(mid2, mid2);
	mid3 = (v4i32)__builtin_msa_hadd_s_d(mid3, mid3);
	mid4 = (v4i32)__builtin_msa_hadd_s_d(mid4, mid4);
	mid5 = (v4i32)__builtin_msa_hadd_s_d(mid5, mid5);
	mid6 = (v4i32)__builtin_msa_hadd_s_d(mid6, mid6);
	mid7 = (v4i32)__builtin_msa_hadd_s_d(mid7, mid7);

	row0 = __builtin_msa_pckev_w(mid1, mid0);
	row1 = __builtin_msa_pckev_w(mid3, mid2);
	row2 = __builtin_msa_pckev_w(mid5, mid4);
	row3 = __builtin_msa_pckev_w(mid7, mid6);

	res0 = __builtin_lsx_vsrarin_h(row0, 8);
	res1 = __builtin_lsx_vsrarin_h(row1, 8);
	res2 = __builtin_lsx_vsrarin_h(row2, 8);
	res3 = __builtin_lsx_vsrarin_h(row3, 8);

	out0 = __builtin_msa_insve_d((v2i64)res0, 1, (v2i64)res1);
	out1 = __builtin_msa_insve_d((v2i64)res2, 1, (v2i64)res3);

	ST_V2_H(out0, out1, (pixel*)dst);

	#ifdef DEBUG
	for (int i = 0; i < 16; i++)
	{
		//printf("%d ", dst[i]);
		if (dst[i] != t_dst[i])
		{
			printf("dst4 test fail\n");
			printf("right value %d\n", t_dst[i]);
			printf("wrong value %d\n", dst[i]);
			printf("wrong at %d\n", i);
			return;
		}
		
	}
	
	printf("dst4 test success\n");
	#endif
}

static void inversedst(const int16_t* tmp, int16_t* block, int shift)  // input tmp, output block
{
    int i, c[4];
    int rnd_factor = 1 << (shift - 1);

    for (i = 0; i < 4; i++)
    {
        // Intermediate Variables
        c[0] = tmp[i] + tmp[8 + i];
        c[1] = tmp[8 + i] + tmp[12 + i];
        c[2] = tmp[i] - tmp[12 + i];
        c[3] = 74 * tmp[4 + i];

        block[4 * i + 0] = (int16_t)x265_clip3(-32768, 32767, (29 * c[0] + 55 * c[1]     + c[3]               + rnd_factor) >> shift);
        block[4 * i + 1] = (int16_t)x265_clip3(-32768, 32767, (55 * c[2] - 29 * c[1]     + c[3]               + rnd_factor) >> shift);
        block[4 * i + 2] = (int16_t)x265_clip3(-32768, 32767, (74 * (tmp[i] - tmp[8 + i]  + tmp[12 + i])      + rnd_factor) >> shift);
        block[4 * i + 3] = (int16_t)x265_clip3(-32768, 32767, (55 * c[0] + 29 * c[2]     - c[3]               + rnd_factor) >> shift);
    }
}

/*
static void idst4_c(const int16_t* src, int16_t* dst, intptr_t dstStride)
{
    const int shift_1st = 7;
    const int shift_2nd = 12 - (X265_DEPTH - 8);

    ALIGN_VAR_32(int16_t, coef[4 * 4]);
    ALIGN_VAR_32(int16_t, block[4 * 4]);

    inversedst(src, coef, shift_1st); // Forward DST BY FAST ALGORITHM, block input, coef output
    inversedst(coef, block, shift_2nd); // Forward DST BY FAST ALGORITHM, coef input, coeff output

    for (int i = 0; i < 4; i++)
    {
        memcpy(&dst[i * dstStride], &block[i * 4], 4 * sizeof(int16_t));
    }
}
*/

static void idst4(const int16_t* src, int16_t* dst, intptr_t dstStride)
{
	#ifdef DEBUG
	const int16_t *t_src;
	int16_t *t_dst;
	int16_t *n_dst;
	const int shift_1st = 7;
    	const int shift_2nd = 12 - (X265_DEPTH - 8);
	int16_t nw[4 * dstStride];
	t_dst = dst;
	t_src = src;
	n_dst = nw;
	
    	ALIGN_VAR_32(int16_t, coef[4 * 4]);
    	ALIGN_VAR_32(int16_t, block[4 * 4]);

	inversedst(t_src, coef, shift_1st); // Forward DST BY FAST ALGORITHM, block input, coef output
    	inversedst(coef, block, shift_2nd); // Forward DST BY FAST ALGORITHM, coef input, coeff output

    	for (int i = 0; i < 4; i++)
    	{
        	memcpy(&n_dst[i * dstStride], &block[i * 4], 4 * sizeof(int16_t));
    	}
	#endif
	
	v2i64 tmp0, tmp1;
	v8i16 val0, val1;
	v4i32 mid0, mid1, mid2, mid3;//mid4, mid5, mid6, mid7;
	v8i16 row0, row1, row2, row3;
	v8i16 row10, row32;
	v8i16 col0, col1, col2, col3;
	v8i16 out0, out1;	

	v8i16 con0 = {29, 84, 29, 84, 29, 84, 29, 84};
	v8i16 con1 = {74, 55, 74, 55, 74, 55, 74, 55};
	v8i16 con2 = {55, -29, 55, -29, 55, -29, 55, -29};
	v8i16 con3 = {74, -84, 74, -84, 74, -84, 74, -84};
	v8i16 con4 = {74, -74, 74, -74, 74, -74, 74, -74};
	v8i16 con5 = {0, 74, 0, 74, 0, 74, 0, 74};
	v8i16 con6 = {84, 55, 84, 55, 84, 55, 84, 55};
	v8i16 con7 = {-74, -29, -74, -29, -74, -29, -74, -29};

	LD_V2_H((const pixel*)src, &tmp0, &tmp1);

	val0 = __builtin_msa_ilvr_h((v8i16)tmp1, (v8i16)tmp0);//row2, row0
	val1 = __builtin_msa_ilvl_h((v8i16)tmp1, (v8i16)tmp0);//row3, row1

	mid0 = __builtin_msa_dotp_s_w(val0, con0);
	mid1 = __builtin_msa_dotp_s_w(val0, con2);
	mid2 = __builtin_msa_dotp_s_w(val0, con4);
	mid3 = __builtin_msa_dotp_s_w(val0, con6);
	
	mid0 = __builtin_msa_dpadd_s_w(mid0, val1, con1);
	mid1 = __builtin_msa_dpadd_s_w(mid1, val1, con3);
	mid2 = __builtin_msa_dpadd_s_w(mid2, val1, con5);
	mid3 = __builtin_msa_dpadd_s_w(mid3, val1, con7);

	row0 = __builtin_lsx_vsrarin_h(mid0, 7);
	row1 = __builtin_lsx_vsrarin_h(mid1, 7);
	row2 = __builtin_lsx_vsrarin_h(mid2, 7);
	row3 = __builtin_lsx_vsrarin_h(mid3, 7);

	row10 = (v8i16)__builtin_msa_insve_d((v2i64)row0, 1, (v2i64)row1);
	row32 = (v8i16)__builtin_msa_insve_d((v2i64)row2, 1, (v2i64)row3);

	val0 = __builtin_msa_pckev_h(row32, row10);
	val1 = __builtin_msa_pckod_h(row32, row10);

	mid0 = __builtin_msa_dotp_s_w(val0, con0);
	mid1 = __builtin_msa_dotp_s_w(val0, con2);
	mid2 = __builtin_msa_dotp_s_w(val0, con4);
	mid3 = __builtin_msa_dotp_s_w(val0, con6);
	
	mid0 = __builtin_msa_dpadd_s_w(mid0, val1, con1);
	mid1 = __builtin_msa_dpadd_s_w(mid1, val1, con3);
	mid2 = __builtin_msa_dpadd_s_w(mid2, val1, con5);
	mid3 = __builtin_msa_dpadd_s_w(mid3, val1, con7);

	col0 = __builtin_lsx_vsrarin_h(mid0, 12);
	col1 = __builtin_lsx_vsrarin_h(mid1, 12);
	col2 = __builtin_lsx_vsrarin_h(mid2, 12);
	col3 = __builtin_lsx_vsrarin_h(mid3, 12);

	val0 = __builtin_msa_ilvr_h(col2, col0);
	val1 = __builtin_msa_ilvr_h(col3, col1);
	
	out0 = __builtin_msa_ilvr_h(val1, val0);
	out1 = __builtin_msa_ilvl_h(val1, val0);
	
	SD((v2i64)out0, (pixel*)dst);
	SD_1((v2i64)out0, (pixel*)(dst + dstStride));
	SD((v2i64)out1, (pixel*)(dst + 2 * dstStride));
	SD_1((v2i64)out1, (pixel*)(dst + 3 * dstStride));

	#ifdef DEBUG
	for (int j = 0; j < 4; j++)
	{
		for (int i = 0; i < 4; i++)
		{
			if (n_dst[i] != t_dst[i])
			{
				printf("idst4 test fail\n");
				printf("right value %d\n", n_dst[i]);
				printf("wrong value %d\n", t_dst[i]);
				printf("wrong at %d %d\n", j, i);
				return;
			}	
		}
		
		n_dst += dstStride;
		t_dst += dstStride;
	}

	printf("idst4 test success\n");
	#endif
}

static void partialButterfly8(const int16_t* src, int16_t* dst, int shift, int line)
{
    int j, k;
    int E[4], O[4];
    int EE[2], EO[2];
    int add = 1 << (shift - 1);

    for (j = 0; j < line; j++)
    {
        /* E and O*/
        for (k = 0; k < 4; k++)
        {
            E[k] = src[k] + src[7 - k];
            O[k] = src[k] - src[7 - k];
        }

        /* EE and EO */
        EE[0] = E[0] + E[3];
        EO[0] = E[0] - E[3];
        EE[1] = E[1] + E[2];
        EO[1] = E[1] - E[2];

        dst[0] = (int16_t)((g_t8[0][0] * EE[0] + g_t8[0][1] * EE[1] + add) >> shift);
        dst[4 * line] = (int16_t)((g_t8[4][0] * EE[0] + g_t8[4][1] * EE[1] + add) >> shift);
        dst[2 * line] = (int16_t)((g_t8[2][0] * EO[0] + g_t8[2][1] * EO[1] + add) >> shift);
        dst[6 * line] = (int16_t)((g_t8[6][0] * EO[0] + g_t8[6][1] * EO[1] + add) >> shift);

        dst[line] = (int16_t)((g_t8[1][0] * O[0] + g_t8[1][1] * O[1] + g_t8[1][2] * O[2] + g_t8[1][3] * O[3] + add) >> shift);
        dst[3 * line] = (int16_t)((g_t8[3][0] * O[0] + g_t8[3][1] * O[1] + g_t8[3][2] * O[2] + g_t8[3][3] * O[3] + add) >> shift);
        dst[5 * line] = (int16_t)((g_t8[5][0] * O[0] + g_t8[5][1] * O[1] + g_t8[5][2] * O[2] + g_t8[5][3] * O[3] + add) >> shift);
        dst[7 * line] = (int16_t)((g_t8[7][0] * O[0] + g_t8[7][1] * O[1] + g_t8[7][2] * O[2] + g_t8[7][3] * O[3] + add) >> shift);

        src += 8;
        dst++;
    }
}

/*
static void dct8_c(const int16_t* src, int16_t* dst, intptr_t srcStride)
{
    const int shift_1st = 2 + X265_DEPTH - 8;
    const int shift_2nd = 9;

    ALIGN_VAR_32(int16_t, coef[8 * 8]);
    ALIGN_VAR_32(int16_t, block[8 * 8]);

    for (int i = 0; i < 8; i++)
    {
        memcpy(&block[i * 8], &src[i * srcStride], 8 * sizeof(int16_t));
    }

    partialButterfly8(block, coef, shift_1st, 8);
    partialButterfly8(coef, dst, shift_2nd, 8);
}
*/

/*
int16_t tab_dct8_1[32] =
{
	89, 50, 75, 18, 89, 50, 75, 18,
	75, -89, -18, -50, 75, -89, -18, -50, 
	50, 18, -89, 75, 50, 18, -89, 75,
	18, 75, -50, -89, 18, 75, -50, -89
};
*/
int16_t tab_dct8_1[32] = 
{
	89, 50, 89, 50, 89, 50, 89, 50,
	75, 18, 75, 18, 75, 18, 75, 18,
	75, -89, 75, -89, 75, -89, 75, -89,
	-18, -50, -18, -50, -18, -50, -18, -50
};

int16_t tab_dct8_11[32] = 
{
	50, 18, 50, 18, 50, 18, 50, 18,
	-89, 75, -89, 75, -89, 75, -89, 75,
	18, 75, 18, 75, 18, 75, 18, 75,
	-50, -89, -50, -89, -50, -89, -50, -89
};

int16_t tab_dct4[32] = 
{
	64, 64, 64, 64, 64, 64, 64, 64, 
	83, 36, 83, 36, 83, 36, 83, 36, 
	64, -64, 64, -64, 64, -64, 64, -64, 
	36, -83, 36, -83, 36, -83, 36, -83
};

int tab_dct8_2[24] = 
{	
	//83, 36, 83, 36,//before
	36, 83, 36, 83,//turn 
	//36, 83, 36, 83,//before 
	-83, 36, -83, 36,//turn
	89, 75, 50, 18,
	75, -18, -89, -50,
	50, -89, 18, 75,
	18, -50, 75, -89
};	//not need {64, 64, 64, 64}

//-------------------------------------------------------------------------------------
//static void dct8(const int16_t* src, int16_t* dst, intptr_t srcStride)
//-------------------------------------------------------------------------------------

static void dct8(const int16_t* src, int16_t* dst, intptr_t srcStride)
{
	#ifdef DEBUG
	const int16_t *t_src;
	int16_t *t_dst;
	int16_t nw[64];
	const int shift_1st = 2 + X265_DEPTH - 8;
    	const int shift_2nd = 9;
	t_src = src;
	t_dst = nw;
	
	ALIGN_VAR_32(int16_t, coef[8 * 8]);
    	ALIGN_VAR_32(int16_t, block[8 * 8]);

	for (int i = 0; i < 8; i++)
    	{
        	memcpy(&block[i * 8], &t_src[i * srcStride], 8 * sizeof(int16_t));
    	}

	partialButterfly8(block, coef, shift_1st, 8);
    	partialButterfly8(coef, t_dst, shift_2nd, 8);
	#endif

	/*
	pixel *temp = NULL;
	temp = (pixel*)malloc(256 * sizeof(pixel));
	if (temp == NULL)
	{
		printf("memory allocate fail.\n");
		abort();
	}
	*/

	//temp = (pixel*)dst;//used for test

	int16_t *dst_0, *dst_1, *dst_2, *dst_3;
	
	dst_0 = dst;
	dst_1 = dst + 16;
	dst_2 = dst + 32;
	dst_3 = dst + 48;

/*
	pixel *temp0, *temp1, *temp2, *temp3;
	
	temp0 = temp;
	temp1 = temp + 64;
	temp2 = temp + 128;
	temp3 = temp + 192;
*/
	
	v2i64 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
	v8i16 mid0, mid1, mid2, mid3, mid4, mid5, mid6, mid7;
	v4i32 val0, val1, val2, val3, val4, val5, val6, val7;
	v4i32 val8, val9, val10, val11, val12, val13, val14, val15;
	v4i32 out0, out1, out2, out3, out4, out5, out6, out7;
	v4i32 out8, out9, out10, out11, out12, out13, out14, out15;
	v8i16 cen0, cen1, cen2, cen3, cen4, cen5, cen6, cen7;
	v8i16 res0, res1, res2, res3, res4, res5;// res6, res7;
	v2i64 con0, con1, con2, con3, con4, con5, con6, con7;
	v2i64 cons0, cons1, cons2, cons3;
	v4i32 sub0, sub1, sub2, sub3, sub4, sub5, sub6, sub7;
	
/*	********replaced by load operation**********
	v8i16 con0 = {89, 50, 75, 18, 89, 50, 75, 18};
	v8i16 con1 = {75, -89, -18, -50, 75, -89, -18, -50};
	v8i16 con2 = {50, 18, -89, 75, 50, 18, -89, 75};
	v8i16 con3 = {18, 75, -50, -89, 18, 75, -50, -89};
	v8i16 con4 = {64, 64, 64, 64, 64, 64, 64, 64};
	v8i16 con5 = {83, 36, 83, 36, 83, 36, 83, 36};
	v8i16 con6 = {64, -64, 64, -64, 64, -64, 64, -64};
	v8i16 con7 = {36, -83, 36, -83, 36, -83, 36, -83};
*/
	
	LD_V4((const pixel*)src, 2 * srcStride, &tmp0, &tmp1, &tmp2, &tmp3);
	LD_V4((const pixel*)(src + 4 * srcStride), 2 * srcStride, &tmp4, &tmp5, &tmp6, &tmp7);

	LD_V4_H((const pixel*)tab_dct8_1, &con0, &con1, &con2, &con3);
	LD_V4_H((const pixel*)tab_dct8_11, &cons0, &cons1, &cons2, &cons3);//add
	LD_V4_H((const pixel*)tab_dct4, &con4, &con5, &con6, &con7);

	mid0 = __builtin_msa_ilvr_h((v8i16)tmp1, (v8i16)tmp0);
	mid1 = __builtin_msa_ilvl_h((v8i16)tmp1, (v8i16)tmp0);
	mid2 = __builtin_msa_ilvr_h((v8i16)tmp3, (v8i16)tmp2);
	mid3 = __builtin_msa_ilvl_h((v8i16)tmp3, (v8i16)tmp2);
	
	mid4 = __builtin_msa_ilvr_h((v8i16)tmp5, (v8i16)tmp4);
	mid5 = __builtin_msa_ilvl_h((v8i16)tmp5, (v8i16)tmp4);
	mid6 = __builtin_msa_ilvr_h((v8i16)tmp7, (v8i16)tmp6);
	mid7 = __builtin_msa_ilvl_h((v8i16)tmp7, (v8i16)tmp6);
	
	val0 = __builtin_msa_ilvr_w((v4i32)mid2, (v4i32)mid0);
	val1 = __builtin_msa_ilvl_w((v4i32)mid2, (v4i32)mid0);
	val2 = __builtin_msa_ilvr_w((v4i32)mid3, (v4i32)mid1);
	val3 = __builtin_msa_ilvl_w((v4i32)mid3, (v4i32)mid1);

	val4 = __builtin_msa_ilvr_w((v4i32)mid6, (v4i32)mid4);
	val5 = __builtin_msa_ilvl_w((v4i32)mid6, (v4i32)mid4);
	val6 = __builtin_msa_ilvr_w((v4i32)mid7, (v4i32)mid5);
	val7 = __builtin_msa_ilvl_w((v4i32)mid7, (v4i32)mid5);
	
	val2 = __builtin_msa_shf_w(val2, 78);
	val3 = __builtin_msa_shf_w(val3, 78);
	
	val6 = __builtin_msa_shf_w(val6, 78);
	val7 = __builtin_msa_shf_w(val7, 78);

	cen0 = __builtin_msa_addv_h((v8i16)val0, (v8i16)val3);//col1+col6, col0+col7
	cen1 = __builtin_msa_subv_h((v8i16)val0, (v8i16)val3);
	cen2 = __builtin_msa_addv_h((v8i16)val1, (v8i16)val2);//col3+col4, col2+col5
	cen3 = __builtin_msa_subv_h((v8i16)val1, (v8i16)val2);

	cen4 = __builtin_msa_addv_h((v8i16)val4, (v8i16)val7);//col1+col6, col0+col7
	cen5 = __builtin_msa_subv_h((v8i16)val4, (v8i16)val7);
	cen6 = __builtin_msa_addv_h((v8i16)val5, (v8i16)val6);//col3+col4, col2+col5
	cen7 = __builtin_msa_subv_h((v8i16)val5, (v8i16)val6);
	
	//add
	/*
	tmp0 = __builtin_msa_ilvr_d((v2i64)cen2, (v2i64)cen0);//col2 + col5, col0 + col7
	tmp1 = __builtin_msa_ilvl_d((v2i64)cen0, (v2i64)cen2);//col1 + col6, col3 + col4

	tmp2 = __builtin_msa_ilvr_d((v2i64)cen6, (v2i64)cen4);//col2 + col5, col0 + col7
	tmp3 = __builtin_msa_ilvl_d((v2i64)cen4, (v2i64)cen6);//col1 + col6, col3 + col4
	*/
	
	cen2 = (v8i16)__builtin_msa_shf_w((v4i32)cen2, 78);//col2+col5, col3+col4

	cen6 = (v8i16)__builtin_msa_shf_w((v4i32)cen6, 78);
	
	//sub
	res0 = __builtin_msa_ilvr_h(cen3, cen1);//row3, row2, row1, row0(col2-5, col0-7)
	res1 = __builtin_msa_ilvl_h(cen3, cen1);//col3-4, col1-6
	
	res4 = __builtin_msa_ilvr_h(cen7, cen5);
	res5 = __builtin_msa_ilvl_h(cen7, cen5);

	//add
	/*
	mid2 = __builtin_msa_addv_h((v8i16)tmp0, (v8i16)tmp1);
	//col2 + col5 + col1 + col6, col0 + col7 + col3 + col4
	mid3 = __builtin_msa_subv_h((v8i16)tmp0, (v8i16)tmp1);
	mid4 = __builtin_msa_subv_h((v8i16)tmp1, (v8i16)tmp0);

	mid3 = (v8i16)__builtin_msa_insve_d((v2i64)mid4, 0, (v2i64)mid3);
	//col1 + col6 - col2 - col5, col0 + col7 - col3 - col4	

	mid5 = __builtin_msa_addv_h((v8i16)tmp2, (v8i16)tmp3);
	//col2 + col5 + col1 + col6, col0 + col7 + col3 + col4
	mid6 = __builtin_msa_subv_h((v8i16)tmp2, (v8i16)tmp3);
	mid7 = __builtin_msa_subv_h((v8i16)tmp3, (v8i16)tmp2);

	mid6 = (v8i16)__builtin_msa_insve_d((v2i64)mid7, 0, (v2i64)mid6);
	//col1 + col6 - col2 - col5, col0 + col7 - col3 - col4	
	*/

	mid2 = __builtin_msa_addv_h(cen0, cen2);
	//col2 + col5 + col1 + col6, col0 + col7 + col3 + col4
	mid3 = __builtin_msa_subv_h(cen0, cen2);
	//col1 + col6 - col2 - col5, col0 + col7 - col3 - col4	

	mid5 = __builtin_msa_addv_h(cen4, cen6);
	//col2 + col5 + col1 + col6, col0 + col7 + col3 + col4
	mid6 = __builtin_msa_subv_h(cen4, cen6);
	//col1 + col6 - col2 - col5, col0 + col7 - col3 - col4	

	//sub
	/*
	res2 = (v8i16)__builtin_msa_ilvr_w((v4i32)res1, (v4i32)res0);//row1, row0
	res3 = (v8i16)__builtin_msa_ilvl_w((v4i32)res1, (v4i32)res0);//row3, row2

	res6 = (v8i16)__builtin_msa_ilvr_w((v4i32)res5, (v4i32)res4);//row5, row4
	res7 = (v8i16)__builtin_msa_ilvl_w((v4i32)res5, (v4i32)res4);//row7, row6
	*/

	val0 = __builtin_msa_dotp_s_w(res0, (v8i16)con0);
	val1 = __builtin_msa_dotp_s_w(res1, (v8i16)con1);
	val2 = __builtin_msa_dotp_s_w(res0, (v8i16)con2);
	val3 = __builtin_msa_dotp_s_w(res1, (v8i16)con3);
	val4 = __builtin_msa_dotp_s_w(res0, (v8i16)cons0);
	val5 = __builtin_msa_dotp_s_w(res1, (v8i16)cons1);
	val6 = __builtin_msa_dotp_s_w(res0, (v8i16)cons2);
	val7 = __builtin_msa_dotp_s_w(res1, (v8i16)cons3);

	out0 = __builtin_msa_dotp_s_w(res4, (v8i16)con0);
	out1 = __builtin_msa_dotp_s_w(res5, (v8i16)con1);
	out2 = __builtin_msa_dotp_s_w(res4, (v8i16)con2);
	out3 = __builtin_msa_dotp_s_w(res5, (v8i16)con3);
	out4 = __builtin_msa_dotp_s_w(res4, (v8i16)cons0);
	out5 = __builtin_msa_dotp_s_w(res5, (v8i16)cons1);
	out6 = __builtin_msa_dotp_s_w(res4, (v8i16)cons2);
	out7 = __builtin_msa_dotp_s_w(res5, (v8i16)cons3);

	//add
	mid2 = (v8i16)__builtin_msa_shf_w((v4i32)mid2, 216);
	mid3 = (v8i16)__builtin_msa_shf_w((v4i32)mid3, 216);

	mid5 = (v8i16)__builtin_msa_shf_w((v4i32)mid5, 216);
	mid6 = (v8i16)__builtin_msa_shf_w((v4i32)mid6, 216);

	//sub
	/*
	val0 = __builtin_msa_dotp_s_w(res2, (v8i16)con0);
	val1 = __builtin_msa_dotp_s_w(res3, (v8i16)con0);
	val2 = __builtin_msa_dotp_s_w(res2, (v8i16)con1);
	val3 = __builtin_msa_dotp_s_w(res3, (v8i16)con1);
	val4 = __builtin_msa_dotp_s_w(res2, (v8i16)con2);
	val5 = __builtin_msa_dotp_s_w(res3, (v8i16)con2);
	val6 = __builtin_msa_dotp_s_w(res2, (v8i16)con3);
	val7 = __builtin_msa_dotp_s_w(res3, (v8i16)con3);

	out0 = __builtin_msa_dotp_s_w(res6, (v8i16)con0);
	out1 = __builtin_msa_dotp_s_w(res7, (v8i16)con0);
	out2 = __builtin_msa_dotp_s_w(res6, (v8i16)con1);
	out3 = __builtin_msa_dotp_s_w(res7, (v8i16)con1);
	out4 = __builtin_msa_dotp_s_w(res6, (v8i16)con2);
	out5 = __builtin_msa_dotp_s_w(res7, (v8i16)con2);
	out6 = __builtin_msa_dotp_s_w(res6, (v8i16)con3);
	out7 = __builtin_msa_dotp_s_w(res7, (v8i16)con3);
	*/
	
	val12 = __builtin_msa_addv_w(val0, val1);//row1(0, 1, 2, 3) without shift
	val13 = __builtin_msa_addv_w(val2, val3);//row3(0, 1, 2, 3)
	val14 = __builtin_msa_addv_w(val4, val5);//row5(0, 1, 2, 3)
	val15 = __builtin_msa_addv_w(val6, val7);//row7(0, 1, 2, 3)

	out12 = __builtin_msa_addv_w(out0, out1);//row1(4, 5, 6, 7) without shift
	out13 = __builtin_msa_addv_w(out2, out3);//row3(4, 5, 6, 7)
	out14 = __builtin_msa_addv_w(out4, out5);//row5(4, 5, 6, 7)
	out15 = __builtin_msa_addv_w(out6, out7);//row7(4, 5, 6, 7)

	//add
	mid2 = __builtin_msa_shf_h(mid2, 216);
	mid3 = __builtin_msa_shf_h(mid3, 216);
	
	mid5 = __builtin_msa_shf_h(mid5, 216);
	mid6 = __builtin_msa_shf_h(mid6, 216);

	//sub
	/*
	val0 = (v4i32)__builtin_msa_hadd_s_d(val0, val0);
	val1 = (v4i32)__builtin_msa_hadd_s_d(val1, val1);
	val2 = (v4i32)__builtin_msa_hadd_s_d(val2, val2);
	val3 = (v4i32)__builtin_msa_hadd_s_d(val3, val3);
	val4 = (v4i32)__builtin_msa_hadd_s_d(val4, val4);
	val5 = (v4i32)__builtin_msa_hadd_s_d(val5, val5);
	val6 = (v4i32)__builtin_msa_hadd_s_d(val6, val6);
	val7 = (v4i32)__builtin_msa_hadd_s_d(val7, val7);

	out0 = (v4i32)__builtin_msa_hadd_s_d(out0, out0);
	out1 = (v4i32)__builtin_msa_hadd_s_d(out1, out1);
	out2 = (v4i32)__builtin_msa_hadd_s_d(out2, out2);
	out3 = (v4i32)__builtin_msa_hadd_s_d(out3, out3);
	out4 = (v4i32)__builtin_msa_hadd_s_d(out4, out4);
	out5 = (v4i32)__builtin_msa_hadd_s_d(out5, out5);
	out6 = (v4i32)__builtin_msa_hadd_s_d(out6, out6);
	out7 = (v4i32)__builtin_msa_hadd_s_d(out7, out7);
	*/
	
	//add
	val8 = __builtin_msa_dotp_s_w(mid2, (v8i16)con4);//row0(0, 1, 2, 3) without shift
	val9 = __builtin_msa_dotp_s_w(mid3, (v8i16)con5);//row2(0, 1, 2, 3)
	val10 = __builtin_msa_dotp_s_w(mid2, (v8i16)con6);//row4(0, 1, 2, 3)
	val11 = __builtin_msa_dotp_s_w(mid3, (v8i16)con7);//row6(0, 1, 2, 3)
	
	out8 = __builtin_msa_dotp_s_w(mid5, (v8i16)con4);//row0(4, 5, 6, 7) without shift
	out9 = __builtin_msa_dotp_s_w(mid6, (v8i16)con5);//row2(4, 5, 6, 7)
	out10 = __builtin_msa_dotp_s_w(mid5, (v8i16)con6);//row4(4, 5, 6, 7)
	out11 = __builtin_msa_dotp_s_w(mid6, (v8i16)con7);//row6(4, 5, 6, 7)

	//sub
	/*
	val12 = __builtin_msa_pckev_w(val1, val0);//row1(0, 1, 2, 3) without shift
	val13 = __builtin_msa_pckev_w(val3, val2);//row3(0, 1, 2, 3)
	val14 = __builtin_msa_pckev_w(val5, val4);//row5(0, 1, 2, 3)
	val15 = __builtin_msa_pckev_w(val7, val6);//row7(0, 1, 2, 3)

	out12 = __builtin_msa_pckev_w(out1, out0);//row1(4, 5, 6, 7) without shift
	out13 = __builtin_msa_pckev_w(out3, out2);//row3(4, 5, 6, 7)
	out14 = __builtin_msa_pckev_w(out5, out4);//row5(4, 5, 6, 7)
	out15 = __builtin_msa_pckev_w(out7, out6);//row7(4, 5, 6, 7)
	*/
		
	val12 = __builtin_msa_srari_w(val12, 2);//row1(0, 1, 2, 3) with shift *****
	val13 = __builtin_msa_srari_w(val13, 2);//row3(0, 1, 2, 3) ******
	val14 = __builtin_msa_srari_w(val14, 2);//row5(0, 1, 2, 3) ******
	val15 = __builtin_msa_srari_w(val15, 2);//row7(0, 1, 2, 3) ******
	
	out12 = __builtin_msa_srari_w(out12, 2);//row1(4, 5, 6, 7) with shift
	out13 = __builtin_msa_srari_w(out13, 2);//row3(4, 5, 6, 7)
	out14 = __builtin_msa_srari_w(out14, 2);//row5(4, 5, 6, 7)
	out15 = __builtin_msa_srari_w(out15, 2);//row7(4, 5, 6, 7)

	//add
	val8 = __builtin_msa_srari_w(val8, 2);//row0(0, 1, 2, 3) with shift *****
	val9 = __builtin_msa_srari_w(val9, 2);//row2(0, 1, 2, 3) *****
	val10 = __builtin_msa_srari_w(val10, 2);//row4(0, 1, 2, 3) ******
	val11 = __builtin_msa_srari_w(val11, 2);//row6(0, 1, 2, 3) ******

	out8 = __builtin_msa_srari_w(out8, 2);//row0(4, 5, 6, 7) with shift
	out9 = __builtin_msa_srari_w(out9, 2);//row2(4, 5, 6, 7)
	out10 = __builtin_msa_srari_w(out10, 2);//row4(4, 5, 6, 7)
	out11 = __builtin_msa_srari_w(out11, 2);//row6(4, 5, 6, 7)

	//sub
	/*
	val12 = __builtin_msa_srari_w(val12, 2);//row1(0, 1, 2, 3) with shift *****
	val13 = __builtin_msa_srari_w(val13, 2);//row3(0, 1, 2, 3) ******
	val14 = __builtin_msa_srari_w(val14, 2);//row5(0, 1, 2, 3) ******
	val15 = __builtin_msa_srari_w(val15, 2);//row7(0, 1, 2, 3) ******
	
	out12 = __builtin_msa_srari_w(out12, 2);//row1(4, 5, 6, 7) with shift
	out13 = __builtin_msa_srari_w(out13, 2);//row3(4, 5, 6, 7)
	out14 = __builtin_msa_srari_w(out14, 2);//row5(4, 5, 6, 7)
	out15 = __builtin_msa_srari_w(out15, 2);//row7(4, 5, 6, 7)
	*/
	
	out8 = __builtin_msa_shf_w(out8, 27);//row0(7, 6, 5, 4) ******
	out9 = __builtin_msa_shf_w(out9, 27);//row2 ******
	out10 = __builtin_msa_shf_w(out10, 27);//row4 ******
	out11 = __builtin_msa_shf_w(out11, 27);//row6 ******

	out12 = __builtin_msa_shf_w(out12, 27);//row1(7, 6, 5, 4) ******
	out13 = __builtin_msa_shf_w(out13, 27);//row3 ******
	out14 = __builtin_msa_shf_w(out14, 27);//row5 ******
	out15 = __builtin_msa_shf_w(out15, 27);//row7 ******
		
	/*
	ST_V4_H((v2i64)val8, (v2i64)out8, (v2i64)val12, (v2i64)out12, temp0);
	ST_V4_H((v2i64)val9, (v2i64)out9, (v2i64)val13, (v2i64)out13, temp1);
	ST_V4_H((v2i64)val10, (v2i64)out10, (v2i64)val14, (v2i64)out14, temp2);
	ST_V4_H((v2i64)val11, (v2i64)out11, (v2i64)val15, (v2i64)out15, temp3);
	*/
	
	LD_V6_H((const pixel*)tab_dct8_2, &con0, &con1, &con2, &con3, &con4, &con5);

	//****** deal with row0 and row1 ***********
	val0 = __builtin_msa_addv_w(val8, out8);//col0  
	val1 = __builtin_msa_addv_w(val12, out12);//col1
	val2 = __builtin_msa_subv_w(val8, out8);//col0  3-4, 2-5, 1-6, 0-7
	val3 = __builtin_msa_subv_w(val12, out12);//col1 ....

	//add
	val0 = __builtin_msa_shf_w(val0, 54);//col0 0+7, 3+4, 1+6, 2+5
	val1 = __builtin_msa_shf_w(val1, 54);//col1

	//sub
	/* in order to reduce parallelism.    before changing
	sub0 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con2);
	sub1 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con2);
	sub2 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con3);
	sub3 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con3);
	
	sub4 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con4);
	sub5 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con4);
	sub6 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con5);
	sub7 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con5);
	*/

	sub0 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con4);
	sub1 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con4);
	sub2 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con5);
	sub3 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con5);

	sub4 = __builtin_msa_pckev_w(sub1, sub0);
	sub6 = __builtin_msa_pckev_w(sub3, sub2);

	//add
	/* in order to reduce parallelism. before changing
	val4 = (v4i32)__builtin_msa_hadd_s_d(val0, val0);
	val5 = (v4i32)__builtin_msa_hadd_s_d(val1, val1);
	val6 = (v4i32)__builtin_msa_hsub_s_d(val0, val0);
	val7 = (v4i32)__builtin_msa_hsub_s_d(val1, val1);
	*/

	val4 = (v4i32)__builtin_msa_hsub_s_d(val0, val0);
	val5 = (v4i32)__builtin_msa_hsub_s_d(val1, val1);

	val6 = __builtin_msa_pckev_w(val5, val4);
	//col1(0+7-3-4), col1(1+6-2-5), col0(0+7-3-4), col0(1+6-2-5)

	//sub
	sub0 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con2);
	sub1 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con2);
	sub2 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con3);
	sub3 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con3);
	
	sub0 = __builtin_msa_pckev_w(sub1, sub0);
	sub2 = __builtin_msa_pckev_w(sub3, sub2);

	/* before changing
	sub0 = __builtin_msa_pckev_w(sub1, sub0);
	sub2 = __builtin_msa_pckev_w(sub3, sub2);

	sub4 = __builtin_msa_pckev_w(sub5, sub4);
	sub6 = __builtin_msa_pckev_w(sub7, sub6);
	*/	

	//add
	/* before changing
	val4 = __builtin_msa_pckev_w(val5, val4);
	//col1(0+7+3+4), col1(1+6+2+5), col0(0+7+3+4), col0(1+6+2+5)
	val6 = __builtin_msa_pckev_w(val7, val6);
	//col1(0+7-3-4), col1(1+6-2-5), col0(0+7-3-4), col0(1+6-2-5)
	*/

	val4 = (v4i32)__builtin_msa_hadd_s_d(val0, val0);
	val5 = (v4i32)__builtin_msa_hadd_s_d(val1, val1);

	val4 = __builtin_msa_pckev_w(val5, val4);
	//col1(0+7+3+4), col1(1+6+2+5), col0(0+7+3+4), col0(1+6+2+5)

	//sub
	sub0 = (v4i32)__builtin_msa_hadd_s_d(sub0, sub0);
	sub2 = (v4i32)__builtin_msa_hadd_s_d(sub2, sub2);
	
	sub4 = (v4i32)__builtin_msa_hadd_s_d(sub4, sub4);
	sub6 = (v4i32)__builtin_msa_hadd_s_d(sub6, sub6);

	//add
	val5 = __builtin_msa_slli_w(val4, 6);
	out0 = (v4i32)__builtin_msa_hadd_s_d(val5, val5);
	out2 = (v4i32)__builtin_msa_hsub_s_d(val5, val5);

	//out3 = __builtin_msa_mulv_w(val6, (v4i32)con1);
	//out3 = (v4i32)__builtin_msa_hsub_s_d(out3, out3);
	
	out3 = (v4i32)__builtin_msa_dotp_s_d(val6, (v4i32)con1);	

	out1 = (v4i32)__builtin_msa_dotp_s_d(val6, (v4i32)con0);

	//sub
	sub0 = __builtin_msa_pckev_w(sub2, sub0);
	sub4 = __builtin_msa_pckev_w(sub6, sub4);	

	//add	
	out0 = __builtin_msa_pckev_w(out1, out0);
	out2 = __builtin_msa_pckev_w(out3, out2);

	//sub
	res2 = __builtin_lsx_vsrarin_h(sub0, 9); //31 30 11 10 high to low (16b)
	res3 = __builtin_lsx_vsrarin_h(sub4, 9); //71 70 51 50
	
	//add
	res0 = __builtin_lsx_vsrarin_h(out0, 9); //21 20 01 00 high to low (16b)
	res1 = __builtin_lsx_vsrarin_h(out2, 9); //61 60 41 40

	SW2((v4i32)res0, (v4i32)res2, (pixel*)dst_0, 16);
	SW2_1((v4i32)res0, (v4i32)res2, (pixel*)dst_1, 16);
	SW2((v4i32)res1, (v4i32)res3, (pixel*)dst_2, 16);
	SW2_1((v4i32)res1, (v4i32)res3, (pixel*)dst_3, 16);

	dst_0 += 2;
	dst_1 += 2;
	dst_2 += 2;
	dst_3 += 2;
	
	//********* deal with row2 and row3 **************
	val0 = __builtin_msa_addv_w(val9, out9);//col2
	val1 = __builtin_msa_addv_w(val13, out13);//col3
	val2 = __builtin_msa_subv_w(val9, out9);//col2 3-4, 2-5, 1-6, 0-7
	val3 = __builtin_msa_subv_w(val13, out13);//col3 ....

	//add
	val0 = __builtin_msa_shf_w(val0, 54);//col2 0+7, 3+4, 1+6, 2+5
	val1 = __builtin_msa_shf_w(val1, 54);//col3

	//sub
	sub0 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con2);
	sub1 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con2);
	sub2 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con3);
	sub3 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con3);
	
	sub4 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con4);
	sub5 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con4);
	sub6 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con5);
	sub7 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con5);
	
	//add
	val4 = (v4i32)__builtin_msa_hadd_s_d(val0, val0);
	val5 = (v4i32)__builtin_msa_hadd_s_d(val1, val1);
	val6 = (v4i32)__builtin_msa_hsub_s_d(val0, val0);
	val7 = (v4i32)__builtin_msa_hsub_s_d(val1, val1);

	//sub
	sub0 = __builtin_msa_pckev_w(sub1, sub0);
	sub2 = __builtin_msa_pckev_w(sub3, sub2);

	sub4 = __builtin_msa_pckev_w(sub5, sub4);
	sub6 = __builtin_msa_pckev_w(sub7, sub6);

	//add
	val4 = __builtin_msa_pckev_w(val5, val4);
	//col3(0+7+3+4), col3(1+6+2+5), col2(0+7+3+4), col2(1+6+2+5)
	val6 = __builtin_msa_pckev_w(val7, val6);
	//col3(0+7-3-4), col3(1+6-2-5), col2(0+7-3-4), col2(1+6-2-5)

	//sub
	sub0 = (v4i32)__builtin_msa_hadd_s_d(sub0, sub0);
	sub2 = (v4i32)__builtin_msa_hadd_s_d(sub2, sub2);
	
	sub4 = (v4i32)__builtin_msa_hadd_s_d(sub4, sub4);
	sub6 = (v4i32)__builtin_msa_hadd_s_d(sub6, sub6);
	
	//add
	val5 = __builtin_msa_slli_w(val4, 6);
	out0 = (v4i32)__builtin_msa_hadd_s_d(val5, val5);
	out2 = (v4i32)__builtin_msa_hsub_s_d(val5, val5);

	//out3 = __builtin_msa_mulv_w(val6, (v4i32)con1);
	//out3 = (v4i32)__builtin_msa_hsub_s_d(out3, out3);
		
	out3 = (v4i32)__builtin_msa_dotp_s_d(val6, (v4i32)con1);	

	out1 = (v4i32)__builtin_msa_dotp_s_d(val6, (v4i32)con0);

	//sub
	sub0 = __builtin_msa_pckev_w(sub2, sub0);
	sub4 = __builtin_msa_pckev_w(sub6, sub4);	

	//add	
	out0 = __builtin_msa_pckev_w(out1, out0);
	out2 = __builtin_msa_pckev_w(out3, out2);

	//sub
	res2 = __builtin_lsx_vsrarin_h(sub0, 9); //33 32 13 12 high to low (16b)
	res3 = __builtin_lsx_vsrarin_h(sub4, 9); //73 72 53 52
	
	//add
	res0 = __builtin_lsx_vsrarin_h(out0, 9); //23 22 03 02 high to low (16b)
	res1 = __builtin_lsx_vsrarin_h(out2, 9); //63 62 43 42

	SW2((v4i32)res0, (v4i32)res2, (pixel*)dst_0, 16);
	SW2_1((v4i32)res0, (v4i32)res2, (pixel*)dst_1, 16);
	SW2((v4i32)res1, (v4i32)res3, (pixel*)dst_2, 16);
	SW2_1((v4i32)res1, (v4i32)res3, (pixel*)dst_3, 16);

	dst_0 += 2;
	dst_1 += 2;
	dst_2 += 2;
	dst_3 += 2;
	
	//*********** deal with row4 and row5 *************
	val0 = __builtin_msa_addv_w(val10, out10);//col4
	val1 = __builtin_msa_addv_w(val14, out14);//col5
	val2 = __builtin_msa_subv_w(val10, out10);//col4 3-4, 2-5, 1-6, 0-7
	val3 = __builtin_msa_subv_w(val14, out14);//col5 ....

	//add
	val0 = __builtin_msa_shf_w(val0, 54);//col4 0+7, 3+4, 1+6, 2+5
	val1 = __builtin_msa_shf_w(val1, 54);//col5

	//sub
	sub0 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con2);
	sub1 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con2);
	sub2 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con3);
	sub3 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con3);
	
	sub4 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con4);
	sub5 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con4);
	sub6 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con5);
	sub7 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con5);

	//add
	val4 = (v4i32)__builtin_msa_hadd_s_d(val0, val0);
	val5 = (v4i32)__builtin_msa_hadd_s_d(val1, val1);
	val6 = (v4i32)__builtin_msa_hsub_s_d(val0, val0);
	val7 = (v4i32)__builtin_msa_hsub_s_d(val1, val1);

	//sub
	sub0 = __builtin_msa_pckev_w(sub1, sub0);
	sub2 = __builtin_msa_pckev_w(sub3, sub2);

	sub4 = __builtin_msa_pckev_w(sub5, sub4);
	sub6 = __builtin_msa_pckev_w(sub7, sub6);
	
	//add
	val4 = __builtin_msa_pckev_w(val5, val4);
	//col5(0+7+3+4), col5(1+6+2+5), col4(0+7+3+4), col4(1+6+2+5)
	val6 = __builtin_msa_pckev_w(val7, val6);
	//col5(0+7-3-4), col5(1+6-2-5), col4(0+7-3-4), col4(1+6-2-5)

	//sub
	sub0 = (v4i32)__builtin_msa_hadd_s_d(sub0, sub0);
	sub2 = (v4i32)__builtin_msa_hadd_s_d(sub2, sub2);
	
	sub4 = (v4i32)__builtin_msa_hadd_s_d(sub4, sub4);
	sub6 = (v4i32)__builtin_msa_hadd_s_d(sub6, sub6);
	
	//add
	val5 = __builtin_msa_slli_w(val4, 6);
	out0 = (v4i32)__builtin_msa_hadd_s_d(val5, val5);
	out2 = (v4i32)__builtin_msa_hsub_s_d(val5, val5);

	//out3 = __builtin_msa_mulv_w(val6, (v4i32)con1);
	//out3 = (v4i32)__builtin_msa_hsub_s_d(out3, out3);
	
	out3 = (v4i32)__builtin_msa_dotp_s_d(val6, (v4i32)con1);

	out1 = (v4i32)__builtin_msa_dotp_s_d(val6, (v4i32)con0);

	//sub
	sub0 = __builtin_msa_pckev_w(sub2, sub0);
	sub4 = __builtin_msa_pckev_w(sub6, sub4);	

	//add	
	out0 = __builtin_msa_pckev_w(out1, out0);
	out2 = __builtin_msa_pckev_w(out3, out2);

	//sub
	res2 = __builtin_lsx_vsrarin_h(sub0, 9); //35 34 15 14 high to low (16b)
	res3 = __builtin_lsx_vsrarin_h(sub4, 9); //75 74 55 54
	
	//add
	res0 = __builtin_lsx_vsrarin_h(out0, 9); //25 24 05 04 high to low (16b)
	res1 = __builtin_lsx_vsrarin_h(out2, 9); //65 64 45 44

	SW2((v4i32)res0, (v4i32)res2, (pixel*)dst_0, 16);
	SW2_1((v4i32)res0, (v4i32)res2, (pixel*)dst_1, 16);
	SW2((v4i32)res1, (v4i32)res3, (pixel*)dst_2, 16);
	SW2_1((v4i32)res1, (v4i32)res3, (pixel*)dst_3, 16);

	dst_0 += 2;
	dst_1 += 2;
	dst_2 += 2;
	dst_3 += 2;

	//********* deal with row6 and row7 ************
	val0 = __builtin_msa_addv_w(val11, out11);//col6
	val1 = __builtin_msa_addv_w(val15, out15);//col7
	val2 = __builtin_msa_subv_w(val11, out11);//col6 3-4, 2-5, 1-6, 0-7
	val3 = __builtin_msa_subv_w(val15, out15);//col7 ....

	//add
	val0 = __builtin_msa_shf_w(val0, 54);//col6 0+7, 3+4, 1+6, 2+5
	val1 = __builtin_msa_shf_w(val1, 54);//col7

	//sub
	sub0 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con2);
	sub1 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con2);
	sub2 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con3);
	sub3 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con3);
	
	sub4 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con4);
	sub5 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con4);
	sub6 = (v4i32)__builtin_msa_dotp_s_d(val2, (v4i32)con5);
	sub7 = (v4i32)__builtin_msa_dotp_s_d(val3, (v4i32)con5);

	//add
	val4 = (v4i32)__builtin_msa_hadd_s_d(val0, val0);
	val5 = (v4i32)__builtin_msa_hadd_s_d(val1, val1);
	val6 = (v4i32)__builtin_msa_hsub_s_d(val0, val0);
	val7 = (v4i32)__builtin_msa_hsub_s_d(val1, val1);

	//sub
	sub0 = __builtin_msa_pckev_w(sub1, sub0);
	sub2 = __builtin_msa_pckev_w(sub3, sub2);

	sub4 = __builtin_msa_pckev_w(sub5, sub4);
	sub6 = __builtin_msa_pckev_w(sub7, sub6);
	
	//add
	val4 = __builtin_msa_pckev_w(val5, val4);
	//col7(0+7+3+4), col7(1+6+2+5), col6(0+7+3+4), col6(1+6+2+5)
	val6 = __builtin_msa_pckev_w(val7, val6);
	//col7(0+7-3-4), col7(1+6-2-5), col6(0+7-3-4), col6(1+6-2-5)

	//sub
	sub0 = (v4i32)__builtin_msa_hadd_s_d(sub0, sub0);
	sub2 = (v4i32)__builtin_msa_hadd_s_d(sub2, sub2);
	
	sub4 = (v4i32)__builtin_msa_hadd_s_d(sub4, sub4);
	sub6 = (v4i32)__builtin_msa_hadd_s_d(sub6, sub6);
	
	//add
	val5 = __builtin_msa_slli_w(val4, 6);
	out0 = (v4i32)__builtin_msa_hadd_s_d(val5, val5);
	out2 = (v4i32)__builtin_msa_hsub_s_d(val5, val5);

	//out3 = __builtin_msa_mulv_w(val6, (v4i32)con1);
	//out3 = (v4i32)__builtin_msa_hsub_s_d(out3, out3);
	
	out3 = (v4i32)__builtin_msa_dotp_s_d(val6, (v4i32)con1);	
	
	out1 = (v4i32)__builtin_msa_dotp_s_d(val6, (v4i32)con0);

	//sub
	sub0 = __builtin_msa_pckev_w(sub2, sub0);
	sub4 = __builtin_msa_pckev_w(sub6, sub4);	

	//add	
	out0 = __builtin_msa_pckev_w(out1, out0);
	out2 = __builtin_msa_pckev_w(out3, out2);

	//sub
	res2 = __builtin_lsx_vsrarin_h(sub0, 9); //37 36 17 16 high to low (16b)
	res3 = __builtin_lsx_vsrarin_h(sub4, 9); //77 76 57 56
	
	//add
	res0 = __builtin_lsx_vsrarin_h(out0, 9); //27 26 07 06 high to low (16b)
	res1 = __builtin_lsx_vsrarin_h(out2, 9); //67 66 47 46

	SW2((v4i32)res0, (v4i32)res2, (pixel*)dst_0, 16);
	SW2_1((v4i32)res0, (v4i32)res2, (pixel*)dst_1, 16);
	SW2((v4i32)res1, (v4i32)res3, (pixel*)dst_2, 16);
	SW2_1((v4i32)res1, (v4i32)res3, (pixel*)dst_3, 16);

	#ifdef DEBUG	
	for (int j = 0; j < 64; j++)
	{		
		if (dst[j] != t_dst[j])
		{
			printf("dct8 test fail\n");
			printf("right value %d\n", t_dst[j]);
			printf("wrong value %d\n", dst[j]);
			printf("wrong at %d\n", j);
			return;
		}	

		//printf("right value %d\n", t_dst[j]);
		//printf("wrong value %d\n", dst[j]);
	}

	printf("dct8 test success\n");
	#endif
}

namespace X265_NS {

void setupLoongson_asmPrimitives(EncoderPrimitives &p)
{
#define LUMA_PU(W, H)\
    p.pu[LUMA_ ## W ## x ## H].sad = sad<W, H>;   \
    p.pu[LUMA_ ## W ## x ## H].sad_x4 = sad_x4<W, H>; 	\
    p.pu[LUMA_ ## W ## x ## H].sad_x3 = sad_x3<W, H>;   \
    p.pu[LUMA_ ## W ## x ## H].copy_pp = blockcopy_pp_c<W, H>; \
    p.pu[LUMA_ ## W ## x ## H].pixelavg_pp = pixelavg_pp<W, H>;

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

    p.pu[LUMA_4x4].sad = sad_4x4; 
    p.pu[LUMA_8x8].sad = sad_8x8;
    p.pu[LUMA_16x16].sad = sad_16x16;
    p.pu[LUMA_32x32].sad = sad_32x32;
    p.pu[LUMA_64x64].sad = sad_64x64;

    p.pu[LUMA_8x8].sad_x3 = sad_x3_8x8;
    p.pu[LUMA_16x16].sad_x3 = sad_x3_16x16;
    p.pu[LUMA_32x32].sad_x3 = sad_x3_32x32;
    p.pu[LUMA_64x64].sad_x3 = sad_x3_64x64;

    p.pu[LUMA_8x8].sad_x4 = sad_x4_8x8;
    p.pu[LUMA_16x16].sad_x4 = sad_x4_16x16;
    p.pu[LUMA_32x32].sad_x4 = sad_x4_32x32;
    p.pu[LUMA_64x64].sad_x4 = sad_x4_64x64;
	
    p.pu[LUMA_8x8].pixelavg_pp = pixelavg_pp_8x8;

    p.pu[LUMA_4x4].copy_pp = blockcopy_pp_4x4;
    p.pu[LUMA_8x8].copy_pp = blockcopy_pp_8x8;
    p.pu[LUMA_16x16].copy_pp = blockcopy_pp_16x16;
    p.pu[LUMA_32x32].copy_pp = blockcopy_pp_32x32;
    p.pu[LUMA_64x64].copy_pp = blockcopy_pp_64x64;

    p.pu[LUMA_4x4].satd   = satd_4x4;
    //p.pu[LUMA_8x8].satd   = satd8<8, 8>;
    p.pu[LUMA_8x8].satd   = satd8_8x8;
    p.pu[LUMA_8x4].satd   = satd_8x4;
    p.pu[LUMA_4x8].satd   = satd4<4, 8>;
    //p.pu[LUMA_16x16].satd = satd8<16, 16>;
    p.pu[LUMA_16x16].satd = satd8_16x16;
    p.pu[LUMA_16x8].satd  = satd8<16, 8>;
    p.pu[LUMA_8x16].satd  = satd8<8, 16>;
    p.pu[LUMA_16x12].satd = satd8<16, 12>;
    p.pu[LUMA_12x16].satd = satd4<12, 16>;
    p.pu[LUMA_16x4].satd  = satd8<16, 4>;
    p.pu[LUMA_4x16].satd  = satd4<4, 16>;
    //p.pu[LUMA_32x32].satd = satd8<32, 32>;
    p.pu[LUMA_32x32].satd = satd8_32x32;
    p.pu[LUMA_32x16].satd = satd8<32, 16>;
    p.pu[LUMA_16x32].satd = satd8<16, 32>;
    p.pu[LUMA_32x24].satd = satd8<32, 24>;
    p.pu[LUMA_24x32].satd = satd8<24, 32>;
    p.pu[LUMA_32x8].satd  = satd8<32, 8>;
    p.pu[LUMA_8x32].satd  = satd8<8, 32>;
    //p.pu[LUMA_64x64].satd = satd8<64, 64>;
    p.pu[LUMA_64x64].satd = satd8_64x64;
    p.pu[LUMA_64x32].satd = satd8<64, 32>;
    p.pu[LUMA_32x64].satd = satd8<32, 64>;
    p.pu[LUMA_64x48].satd = satd8<64, 48>;
    p.pu[LUMA_48x64].satd = satd8<48, 64>;
    p.pu[LUMA_64x16].satd = satd8<64, 16>;
    p.pu[LUMA_16x64].satd = satd8<16, 64>;

	
#define LUMA_CU(W, H) \
    p.cu[BLOCK_ ## W ## x ## H].var  = pixel_var<W>; 

    //p.cu[BLOCK_ ## W ## x ## H].add_ps	= pixel_add_ps_c<W, H>;
    //p.cu[BLOCK_ ## W ## x ## H].calcresidual  = getResidual<W>; 
    //p.cu[BLOCK_ ## W ## x ## H].sub_ps        = pixel_sub_ps_c<W, H>; 
    //p.cu[BLOCK_ ## W ## x ## H].blockfill_s   = blockfill_s_c<W>;  
    //p.cu[BLOCK_ ## W ## x ## H].sse_pp        = sse_pp_a<W, H>; 
    //p.cu[BLOCK_ ## W ## x ## H].copy_ss       = blockcopy_ss_c<W, H>; 

    LUMA_CU(4, 4);
    LUMA_CU(8, 8);
    LUMA_CU(16, 16);
    LUMA_CU(32, 32);
    LUMA_CU(64, 64);

    p.cu[BLOCK_4x4].sse_pp = sse_pp_a_4x4;
    p.cu[BLOCK_8x8].sse_pp = sse_pp_a_8x8;
    p.cu[BLOCK_16x16].sse_pp = sse_pp_a_16x16;
    p.cu[BLOCK_32x32].sse_pp = sse_pp_a_32x32;
    p.cu[BLOCK_64x64].sse_pp = sse_pp_a_64x64;
    
    p.cu[BLOCK_4x4].blockfill_s = blockfill_s_4x4;
    p.cu[BLOCK_8x8].blockfill_s = blockfill_s_8x8;
    p.cu[BLOCK_16x16].blockfill_s = blockfill_s_16x16;
    p.cu[BLOCK_32x32].blockfill_s = blockfill_s_32x32;
    p.cu[BLOCK_64x64].blockfill_s = blockfill_s_c<64>;
  
    p.cu[BLOCK_4x4].sub_ps = sub_ps_4x4;
    p.cu[BLOCK_8x8].sub_ps = sub_ps_8x8;
    p.cu[BLOCK_16x16].sub_ps = sub_ps_16x16;
    p.cu[BLOCK_32x32].sub_ps = sub_ps_32x32;
    p.cu[BLOCK_64x64].sub_ps = sub_ps_64x64;

    p.cu[BLOCK_4x4].add_ps = pixel_add_ps_4x4;
    p.cu[BLOCK_8x8].add_ps = pixel_add_ps_8x8;
    p.cu[BLOCK_16x16].add_ps = pixel_add_ps_16x16;
    p.cu[BLOCK_32x32].add_ps = pixel_add_ps_32x32;
    p.cu[BLOCK_64x64].add_ps = pixel_add_ps_c<64, 64>;
 
    p.cu[BLOCK_4x4].calcresidual = getResidual_4x4;
    p.cu[BLOCK_8x8].calcresidual = getResidual_8x8;
    p.cu[BLOCK_16x16].calcresidual = getResidual_16x16;
    p.cu[BLOCK_32x32].calcresidual = getResidual_32x32;
    p.cu[BLOCK_64x64].calcresidual = getResidual<64>; 

    p.cu[BLOCK_8x8].var = pixel_var_8x8;
    p.cu[BLOCK_16x16].var = pixel_var_16x16;

    p.cu[BLOCK_4x4].psy_cost_pp = psyCost_pp_4x4;
    p.cu[BLOCK_8x8].psy_cost_pp = psyCost_pp_8x8;
    p.cu[BLOCK_16x16].psy_cost_pp = psyCost_pp_16x16;
    p.cu[BLOCK_32x32].psy_cost_pp = psyCost_pp_32x32;
    p.cu[BLOCK_64x64].psy_cost_pp = psyCost_pp<BLOCK_64x64>;

    p.cu[BLOCK_4x4].copy_ss = blockcopy_ss_4x4;
    p.cu[BLOCK_8x8].copy_ss = blockcopy_ss_8x8;
    p.cu[BLOCK_16x16].copy_ss = blockcopy_ss_16x16;
    p.cu[BLOCK_32x32].copy_ss = blockcopy_ss_32x32;
    p.cu[BLOCK_64x64].copy_ss = blockcopy_ss_c<64, 64>;

    p.cu[BLOCK_4x4].sa8d   = satd_4x4;
    p.cu[BLOCK_8x8].sa8d   = sa8d_8x8;
    p.cu[BLOCK_16x16].sa8d = sa8d_16x16;
    //p.cu[BLOCK_32x32].sa8d = sa8d16<32, 32>;
    p.cu[BLOCK_32x32].sa8d = sa8d_32x32;
    //p.cu[BLOCK_64x64].sa8d = sa8d16<64, 64>;
    p.cu[BLOCK_64x64].sa8d = sa8d_64x64;

#define CHROMA_PU_420(W, H) \
    p.chroma[X265_CSP_I420].pu[CHROMA_420_ ## W ## x ## H].copy_pp = blockcopy_pp_c<W, H>; 

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

    p.chroma[X265_CSP_I420].pu[CHROMA_420_4x4].copy_pp = blockcopy_pp_4x4;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_8x8].copy_pp = blockcopy_pp_8x8;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_16x16].copy_pp = blockcopy_pp_16x16;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_32x32].copy_pp = blockcopy_pp_32x32;

    p.chroma[X265_CSP_I420].pu[CHROMA_420_2x2].satd   = NULL;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_4x4].satd   = satd_4x4;
    //p.chroma[X265_CSP_I420].pu[CHROMA_420_8x8].satd   = satd8<8, 8>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_8x8].satd   = satd8_8x8;
    //p.chroma[X265_CSP_I420].pu[CHROMA_420_16x16].satd = satd8<16, 16>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_16x16].satd = satd8_16x16;
    //p.chroma[X265_CSP_I420].pu[CHROMA_420_32x32].satd = satd8<32, 32>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_32x32].satd = satd8_32x32;

    p.chroma[X265_CSP_I420].pu[CHROMA_420_4x2].satd   = NULL;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_2x4].satd   = NULL;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_8x4].satd   = satd_8x4;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_4x8].satd   = satd4<4, 8>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_16x8].satd  = satd8<16, 8>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_8x16].satd  = satd8<8, 16>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_32x16].satd = satd8<32, 16>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_16x32].satd = satd8<16, 32>;

    p.chroma[X265_CSP_I420].pu[CHROMA_420_8x6].satd   = NULL;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_6x8].satd   = NULL;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_8x2].satd   = NULL;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_2x8].satd   = NULL;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_16x12].satd = satd4<16, 12>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_12x16].satd = satd4<12, 16>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_16x4].satd  = satd4<16, 4>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_4x16].satd  = satd4<4, 16>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_32x24].satd = satd8<32, 24>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_24x32].satd = satd8<24, 32>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_32x8].satd  = satd8<32, 8>;
    p.chroma[X265_CSP_I420].pu[CHROMA_420_8x32].satd  = satd8<8, 32>;


    //p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].add_ps = pixel_add_ps_c<W, H>;
    //p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].copy_ss = blockcopy_ss_c<W, H>;
    //p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].sub_ps = pixel_sub_ps_c<W, H>;  
    //p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].sse_pp  = sse_pp_a<W, H>; 

    p.chroma[X265_CSP_I420].cu[BLOCK_420_2x2].sse_pp = sse_pp_a<2, 2>; 
    p.chroma[X265_CSP_I420].cu[BLOCK_420_4x4].sse_pp = sse_pp_a_4x4; 
    p.chroma[X265_CSP_I420].cu[BLOCK_420_8x8].sse_pp = sse_pp_a_8x8; 
    p.chroma[X265_CSP_I420].cu[BLOCK_420_16x16].sse_pp = sse_pp_a_16x16; 
    p.chroma[X265_CSP_I420].cu[BLOCK_420_32x32].sse_pp = sse_pp_a_32x32; 

    p.chroma[X265_CSP_I420].cu[BLOCK_420_2x2].sub_ps = pixel_sub_ps_c<2, 2>;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_4x4].sub_ps = sub_ps_4x4;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_8x8].sub_ps = sub_ps_8x8;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_16x16].sub_ps = sub_ps_16x16;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_32x32].sub_ps = sub_ps_32x32;
	
    p.chroma[X265_CSP_I420].cu[BLOCK_420_2x2].add_ps = pixel_add_ps_c<2, 2>;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_4x4].add_ps = pixel_add_ps_4x4;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_8x8].add_ps = pixel_add_ps_8x8;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_16x16].add_ps = pixel_add_ps_16x16;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_32x32].add_ps = pixel_add_ps_32x32;

    p.chroma[X265_CSP_I420].cu[BLOCK_420_2x2].copy_ss = blockcopy_ss_c<2, 2>;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_4x4].copy_ss = blockcopy_ss_4x4;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_8x8].copy_ss = blockcopy_ss_8x8;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_16x16].copy_ss = blockcopy_ss_16x16;
    p.chroma[X265_CSP_I420].cu[BLOCK_420_32x32].copy_ss = blockcopy_ss_32x32;
 
    p.chroma[X265_CSP_I420].cu[BLOCK_8x8].sa8d   = p.chroma[X265_CSP_I420].pu[CHROMA_420_4x4].satd;
    //p.chroma[X265_CSP_I420].cu[BLOCK_16x16].sa8d = sa8d8<8, 8>;
    p.chroma[X265_CSP_I420].cu[BLOCK_16x16].sa8d = sa8d_8x8;
    //p.chroma[X265_CSP_I420].cu[BLOCK_32x32].sa8d = sa8d16<16, 16>;
    p.chroma[X265_CSP_I420].cu[BLOCK_32x32].sa8d = sa8d_16x16;
    //p.chroma[X265_CSP_I420].cu[BLOCK_64x64].sa8d = sa8d16<32, 32>;
    p.chroma[X265_CSP_I420].cu[BLOCK_64x64].sa8d = sa8d_32x32;

#define CHROMA_PU_422(W, H) \
    p.chroma[X265_CSP_I422].pu[CHROMA_422_ ## W ## x ## H].copy_pp = blockcopy_pp_c<W, H>; 

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

    p.chroma[X265_CSP_I422].pu[CHROMA_422_4x4].copy_pp = blockcopy_pp_4x4;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_8x8].copy_pp = blockcopy_pp_8x8;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_16x16].copy_pp = blockcopy_pp_16x16;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_32x32].copy_pp = blockcopy_pp_32x32;

    p.chroma[X265_CSP_I422].pu[CHROMA_422_2x4].satd   = NULL;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_4x8].satd   = satd4<4, 8>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_8x16].satd  = satd8<8, 16>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_16x32].satd = satd8<16, 32>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_32x64].satd = satd8<32, 64>;

    p.chroma[X265_CSP_I422].pu[CHROMA_422_4x4].satd   = satd_4x4;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_2x8].satd   = NULL;
    //p.chroma[X265_CSP_I422].pu[CHROMA_422_8x8].satd   = satd8<8, 8>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_8x8].satd   = satd8_8x8;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_4x16].satd  = satd4<4, 16>;
    //p.chroma[X265_CSP_I422].pu[CHROMA_422_16x16].satd = satd8<16, 16>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_16x16].satd = satd8_16x16;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_8x32].satd  = satd8<8, 32>;
    //p.chroma[X265_CSP_I422].pu[CHROMA_422_32x32].satd = satd8<32, 32>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_32x32].satd = satd8_32x32;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_16x64].satd = satd8<16, 64>;

    p.chroma[X265_CSP_I422].pu[CHROMA_422_8x12].satd  = satd4<8, 12>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_6x16].satd  = NULL;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_8x4].satd   = satd4<8, 4>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_2x16].satd  = NULL;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_16x24].satd = satd8<16, 24>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_12x32].satd = satd4<12, 32>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_16x8].satd  = satd8<16, 8>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_4x32].satd  = satd4<4, 32>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_32x48].satd = satd8<32, 48>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_24x64].satd = satd8<24, 64>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_32x16].satd = satd8<32, 16>;
    p.chroma[X265_CSP_I422].pu[CHROMA_422_8x64].satd  = satd8<8, 64>;


#define CHROMA_CU_422(W, H) \
    p.chroma[X265_CSP_I422].cu[BLOCK_422_ ## W ## x ## H].sse_pp  = sse_pp_a<W, H>; \
    p.chroma[X265_CSP_I422].cu[BLOCK_422_ ## W ## x ## H].copy_ss = blockcopy_ss_c<W, H>; \
    p.chroma[X265_CSP_I422].cu[BLOCK_422_ ## W ## x ## H].sub_ps = pixel_sub_ps_c<W, H>; \
    p.chroma[X265_CSP_I422].cu[BLOCK_422_ ## W ## x ## H].add_ps = pixel_add_ps_c<W, H>;

    CHROMA_CU_422(2, 4)
    CHROMA_CU_422(4, 8)
    CHROMA_CU_422(8, 16)
    CHROMA_CU_422(16, 32)
    CHROMA_CU_422(32, 64)
 
    p.chroma[X265_CSP_I422].cu[BLOCK_8x8].sa8d   = p.chroma[X265_CSP_I422].pu[CHROMA_422_4x8].satd;
    p.chroma[X265_CSP_I422].cu[BLOCK_16x16].sa8d = sa8d8<8, 16>;
    p.chroma[X265_CSP_I422].cu[BLOCK_32x32].sa8d = sa8d16<16, 32>;
    p.chroma[X265_CSP_I422].cu[BLOCK_64x64].sa8d = sa8d16<32, 64>;

    p.weight_pp = weight_pp;

    p.frameInitLowres = frame_init_lowres_core;

//*****************this content is DCT function***********************

    p.cu[BLOCK_4x4].dct   = dct4;
    p.cu[BLOCK_8x8].dct   = dct8;
    p.cu[BLOCK_4x4].idct   = idct4;
    p.dst4x4 = dst4;
    p.idst4x4 = idst4;
}

}
