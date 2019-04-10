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

#include "common.h"
#include "slicetype.h"      // LOWRES_COST_MASK
#include "primitives.h"
#include "x265.h"
#include "ld_st.h"

#include <cstdlib> // abs()

using namespace X265_NS;


namespace {
// place functions in anonymous namespace (file static)

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
    if (lx == 4 && ly == 4)
	{
		sum = sad_4x4(pix1, stride_pix1, pix2, stride_pix2);
		//printf("\n\n\n\n%d\n", sum);
		//abort();
	}
    else if (lx == 8 && ly == 8)
	{
		sum = sad_8x8(pix1, stride_pix1, pix2, stride_pix2);
		//printf("\n\n\n\n%d\n", sum);
		//abort();
	}
    else if (lx == 16 && ly == 16)
	{
		sum = sad_16x16(pix1, stride_pix1, pix2, stride_pix2);
		//printf("\n\n\n\n%d\n", sum);
		//abort();
	}
    else if (lx == 32 && ly == 32)
	{
		sum = sad_32x32(pix1, stride_pix1, pix2, stride_pix2);
		//printf("\n\n\n\n%d\n", sum);
		//abort();
	}
    else if (lx == 64 && ly == 64)
	{
		sum = sad_64x64(pix1, stride_pix1, pix2, stride_pix2);
		//printf("\n\n\n\n%d\n", sum);
		//abort();
	}
    else
    {
    	for (int y = 0; y < ly; y++)
    	{
        	for (int x = 0; x < lx; x++)
            	sum += abs(pix1[x] - pix2[x]);
	
        	pix1 += stride_pix1;
       	 	pix2 += stride_pix2;
    	}
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
    if (lx == 8 && ly == 8)
	sad_x3_8x8(pix1, pix2, pix3, pix4, frefstride, res);
    else if (lx == 16 && ly == 16)
	sad_x3_16x16(pix1, pix2, pix3, pix4, frefstride, res);
    else if (lx == 32 && ly == 32)
	sad_x3_32x32(pix1, pix2, pix3, pix4, frefstride, res);
    else if (lx == 64 && ly == 64)
	sad_x3_64x64(pix1, pix2, pix3, pix4, frefstride, res);
    else 
    {
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
}

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

    if (lx == 8 && ly == 8)
    {
	sad_x4_8x8(pix1, pix2, pix3, pix4, pix5, frefstride, res);	
    } 
    else if (lx == 16 && ly == 16)
    {
	sad_x4_16x16(pix1, pix2, pix3, pix4, pix5, frefstride, res);
    }
    else if (lx == 32 && ly == 32)
    {
	sad_x4_32x32(pix1, pix2, pix3, pix4, pix5, frefstride, res);
    }
    else if (lx == 64 && ly == 64)
    {
	sad_x4_64x64(pix1, pix2, pix3, pix4, pix5, frefstride, res);
    }
    else
    {
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
}

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
	
    if (lx == 4 && ly == 4)
    {
	sum = sse_pp_a_4x4(pix1, stride_pix1, pix2, stride_pix2); 
    }
    else if (lx == 8 && ly == 8)
    {
	sum = sse_pp_a_8x8(pix1, stride_pix1, pix2, stride_pix2);
    }
    else if (lx == 16 && ly == 16)
    {
	sum = sse_pp_a_16x16(pix1, stride_pix1, pix2, stride_pix2);
    }  
    else if (lx == 32 && ly == 32)
    {
	sum = sse_pp_a_32x32(pix1, stride_pix1, pix2, stride_pix2);
    }
    else if (lx == 64 && ly == 64)
    {
	sum = sse_pp_a_64x64(pix1, stride_pix1, pix2, stride_pix2);
    }
    else
    {
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
    }

    return sum;
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

    if (w == 8 && h == 8)
	satd = satd8_8x8(pix1, stride_pix1, pix2, stride_pix2);
    else if (w == 16 && h == 16)
	satd = satd8_16x16(pix1, stride_pix1, pix2, stride_pix2);
    else if (w == 32 && h == 32)
	satd = satd8_32x32(pix1, stride_pix1, pix2, stride_pix2);
    else if (w == 64 && h == 64)
	satd = satd8_64x64(pix1, stride_pix1, pix2, stride_pix2);
    else
    {
    	for (int row = 0; row < h; row += 4)
        	for (int col = 0; col < w; col += 8)
            		satd += satd_8x4(pix1 + row * stride_pix1 + col, stride_pix1,
                             		 pix2 + row * stride_pix2 + col, stride_pix2);
    }

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
	
	tmp0 = LD(pix1);
	tmp4 = LD(pix2);

	pix1 += i_pix1;
	pix2 += i_pix2;

	tmp1 = LD(pix1);
	tmp5 = LD(pix2);

	pix1 += i_pix1;
	pix2 += i_pix2;

	tmp2 = LD(pix1);
	tmp6 = LD(pix2);

	pix1 += i_pix1;
	pix2 += i_pix2;

	tmp3 = LD(pix1);
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

	sub0 = __builtin_msa_subv_h(cen0, cen4); 	
	sub1 = __builtin_msa_subv_h(cen1, cen5); 	
	sub2 = __builtin_msa_subv_h(cen2, cen6); 	
	sub3 = __builtin_msa_subv_h(cen3, cen7); 
	
	pix1 += i_pix1;
	pix2 += i_pix2;

	tmp0 = LD(pix1);
	tmp4 = LD(pix2);

	pix1 += i_pix1;
	pix2 += i_pix2;

	tmp1 = LD(pix1);
	tmp5 = LD(pix2);

	pix1 += i_pix1;
	pix2 += i_pix2;

	tmp2 = LD(pix1);
	tmp6 = LD(pix2);

	pix1 += i_pix1;
	pix2 += i_pix2;

	tmp3 = LD(pix1);
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
		printf("sa8d_8x8_internal test success\n");
	else 
		printf("sa8d_8x8_internal test fail\n");
	#endif

	return sum;
}

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
			sum += sa8d_8x8_internal(pix1 + i * 8, i_pix1, pix2 + i * 8, i_pix2);
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
    if (size == 4)
    {
	blockfill_s_4x4(dst, dstride, val);
    }
    else if (size == 8)
    {
	blockfill_s_8x8(dst, dstride, val);
    }
    else if (size == 16)
    {
	blockfill_s_16x16(dst, dstride, val);
    }
    else if (size == 32)
    {
	blockfill_s_32x32(dst, dstride, val);
    }
    else
    {
    	for (int y = 0; y < size; y++)
        	for (int x = 0; x < size; x++)
            		dst[y * dstride + x] = val;
    }
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
    if (blockSize == 4)
    {
	getResidual_4x4(fenc, pred, residual, stride);
    }
    else if (blockSize == 8)
    {
	getResidual_8x8(fenc, pred, residual, stride);
    }
    else if (blockSize == 16)
    {
	getResidual_16x16(fenc, pred, residual, stride);
    }
    else if (blockSize == 32)
    {
	getResidual_32x32(fenc, pred, residual, stride);
    }
    else
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

#if defined(_MSC_VER)
#pragma warning(disable: 4127) // conditional expression is constant
#endif

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
    //unsigned int begin, end;	
    if (by == 4 && bx == 4)
	{
		//asm volatile ("rdhwr %0, $2\n":"=r"(begin));
		sub_ps_4x4(a, dstride, b0, b1, sstride0, sstride1);	
		//asm volatile ("rdhwr %0, $2\n":"=r"(end));
		//printf("4x4 %d\t", end - begin);
	}
    else if (by == 8 && bx == 8)
	{
		//asm volatile ("rdhwr %0, $2\n":"=r"(begin));
		sub_ps_8x8(a, dstride, b0, b1, sstride0, sstride1);
		//asm volatile ("rdhwr %0, $2\n":"=r"(end));
		//printf("8x8 %d\t", end - begin);
    	}
    else if (by == 16 && bx == 16)
	{
		//asm volatile ("rdhwr %0, $2\n":"=r"(begin));
		sub_ps_16x16(a, dstride, b0, b1, sstride0, sstride1);
		//asm volatile ("rdhwr %0, $2\n":"=r"(end));
		//printf("16x16 %d\t", end - begin);
	}
    else if (by == 32 && bx == 32)
	{
		//asm volatile ("rdhwr %0, $2\n":"=r"(begin));
		sub_ps_32x32(a, dstride, b0, b1, sstride0, sstride1);
		//asm volatile ("rdhwr %0, $2\n":"=r"(end));
		//printf("32x32 %d\t", end - begin);
	}
    else if (by == 64 && bx == 64)
	{
		//asm volatile ("rdhwr %0, $2\n":"=r"(begin));
		sub_ps_64x64(a, dstride, b0, b1, sstride0, sstride1);//have problem
		//asm volatile ("rdhwr %0, $2\n":"=r"(end));
		//printf("64x64 %d\t", end - begin);
	}
    else
    {
	/*	
	if (by == 64 && bx == 64)
	{
		for (int n = 0; n < 64; n++)
	{	
		for (int m = 0; m < 64; m++)
			printf("%x\t", b1[m]);
		b1 = b1 + sstride1;
		printf("\n\n");	
	}
	abort();

	}
	*/
    	for (int y = 0; y < by; y++)
    	{
        	for (int x = 0; x < bx; x++)
            	a[x] = (int16_t)(b0[x] - b1[x]);
	
        	b0 += sstride0;
        	b1 += sstride1;
        	a += dstride;
    	}
   }
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
    p.pu[LUMA_ ## W ## x ## H].copy_pp = blockcopy_pp_c<W, H>; \
    p.pu[LUMA_ ## W ## x ## H].addAvg = addAvg<W, H>; \
    p.pu[LUMA_ ## W ## x ## H].pixelavg_pp = pixelavg_pp<W, H>;

    //p.pu[LUMA_ ## W ## x ## H].sad = sad<W, H>; 
    //p.pu[LUMA_ ## W ## x ## H].sad_x4 = sad_x4<W, H>; 	
    //p.pu[LUMA_ ## W ## x ## H].sad_x3 = sad_x3<W, H>; 

#define LUMA_CU(W, H) \
    p.cu[BLOCK_ ## W ## x ## H].add_ps        = pixel_add_ps_c<W, H>; \
    p.cu[BLOCK_ ## W ## x ## H].copy_sp       = blockcopy_sp_c<W, H>; \
    p.cu[BLOCK_ ## W ## x ## H].copy_ps       = blockcopy_ps_c<W, H>; \
    p.cu[BLOCK_ ## W ## x ## H].copy_ss       = blockcopy_ss_c<W, H>; \
    p.cu[BLOCK_ ## W ## x ## H].cpy2Dto1D_shl = cpy2Dto1D_shl<W>; \
    p.cu[BLOCK_ ## W ## x ## H].cpy2Dto1D_shr = cpy2Dto1D_shr<W>; \
    p.cu[BLOCK_ ## W ## x ## H].cpy1Dto2D_shl = cpy1Dto2D_shl<W>; \
    p.cu[BLOCK_ ## W ## x ## H].cpy1Dto2D_shr = cpy1Dto2D_shr<W>; \
    p.cu[BLOCK_ ## W ## x ## H].psy_cost_pp   = psyCost_pp<BLOCK_ ## W ## x ## H>; \
    p.cu[BLOCK_ ## W ## x ## H].transpose     = transpose<W>; \
    p.cu[BLOCK_ ## W ## x ## H].ssd_s         = pixel_ssd_s_c<W>; \
    p.cu[BLOCK_ ## W ## x ## H].var           = pixel_var<W>; \
    p.cu[BLOCK_ ## W ## x ## H].sse_ss        = sse<W, H, int16_t, int16_t>;

    //p.cu[BLOCK_ ## W ## x ## H].calcresidual  = getResidual<W>; 
    //p.cu[BLOCK_ ## W ## x ## H].sub_ps        = pixel_sub_ps_c<W, H>; 
    //p.cu[BLOCK_ ## W ## x ## H].blockfill_s   = blockfill_s_c<W>;  
    //p.cu[BLOCK_ ## W ## x ## H].sse_pp        = sse_pp_a<W, H>; 

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

    //p.pu[LUMA_ ## W ## x ## H].sad = sad<W, H>; 
    p.pu[LUMA_4x4].sad = sad_4x4; 
    p.pu[LUMA_8x8].sad = sad_8x8;
    p.pu[LUMA_16x16].sad = sad_16x16;
    p.pu[LUMA_32x32].sad = sad_32x32;
    p.pu[LUMA_64x64].sad = sad_64x64;
    p.pu[LUMA_4x8].sad = sad<4, 8>;
    p.pu[LUMA_8x4].sad = sad<8, 4>;
    p.pu[LUMA_16x8].sad = sad<16, 8>;
    p.pu[LUMA_8x16].sad = sad<8, 16>;
    p.pu[LUMA_16x12].sad = sad<16, 12>;
    p.pu[LUMA_12x16].sad = sad<12, 16>;
    p.pu[LUMA_16x4].sad = sad<16, 4>;
    p.pu[LUMA_4x16].sad = sad<4, 16>;
    p.pu[LUMA_32x16].sad = sad<32, 16>;
    p.pu[LUMA_16x32].sad = sad<16, 32>;
    p.pu[LUMA_32x24].sad = sad<32, 24>;
    p.pu[LUMA_24x32].sad = sad<24, 32>;
    p.pu[LUMA_32x8].sad = sad<32, 8>;
    p.pu[LUMA_8x32].sad = sad<8, 32>;
    p.pu[LUMA_64x32].sad = sad<64, 32>;
    p.pu[LUMA_32x64].sad = sad<32, 64>;
    p.pu[LUMA_64x48].sad = sad<64, 48>;
    p.pu[LUMA_48x64].sad = sad<48, 64>;
    p.pu[LUMA_64x16].sad = sad<64, 16>;
    p.pu[LUMA_16x64].sad = sad<16, 64>;

    //p.pu[LUMA_ ## W ## x ## H].sad_x3 = sad_x3<W, H>; 
    p.pu[LUMA_4x4].sad_x3 = sad_x3<4, 4>; 
    p.pu[LUMA_8x8].sad_x3 = sad_x3_8x8;
    p.pu[LUMA_16x16].sad_x3 = sad_x3_16x16;
    p.pu[LUMA_32x32].sad_x3 = sad_x3_32x32;
    p.pu[LUMA_64x64].sad_x3 = sad_x3_64x64;
    p.pu[LUMA_4x8].sad_x3 = sad_x3<4, 8>;
    p.pu[LUMA_8x4].sad_x3 = sad_x3<8, 4>;
    p.pu[LUMA_16x8].sad_x3 = sad_x3<16, 8>;
    p.pu[LUMA_8x16].sad_x3 = sad_x3<8, 16>;
    p.pu[LUMA_16x12].sad_x3 = sad_x3<16, 12>;
    p.pu[LUMA_12x16].sad_x3 = sad_x3<12, 16>;
    p.pu[LUMA_16x4].sad_x3 = sad_x3<16, 4>;
    p.pu[LUMA_4x16].sad_x3 = sad_x3<4, 16>;
    p.pu[LUMA_32x16].sad_x3 = sad_x3<32, 16>;
    p.pu[LUMA_16x32].sad_x3 = sad_x3<16, 32>;
    p.pu[LUMA_32x24].sad_x3 = sad_x3<32, 24>;
    p.pu[LUMA_24x32].sad_x3 = sad_x3<24, 32>;
    p.pu[LUMA_32x8].sad_x3 = sad_x3<32, 8>;
    p.pu[LUMA_8x32].sad_x3 = sad_x3<8, 32>;
    p.pu[LUMA_64x32].sad_x3 = sad_x3<64, 32>;
    p.pu[LUMA_32x64].sad_x3 = sad_x3<32, 64>;
    p.pu[LUMA_64x48].sad_x3 = sad_x3<64, 48>;
    p.pu[LUMA_48x64].sad_x3 = sad_x3<48, 64>;
    p.pu[LUMA_64x16].sad_x3 = sad_x3<64, 16>;
    p.pu[LUMA_16x64].sad_x3 = sad_x3<16, 64>;

    p.pu[LUMA_4x4].sad_x4 = sad_x4<4, 4>; 
    p.pu[LUMA_8x8].sad_x4 = sad_x4_8x8;
    p.pu[LUMA_16x16].sad_x4 = sad_x4_16x16;
    p.pu[LUMA_32x32].sad_x4 = sad_x4_32x32;
    p.pu[LUMA_64x64].sad_x4 = sad_x4_64x64;
    p.pu[LUMA_4x8].sad_x4 = sad_x4<4, 8>;
    p.pu[LUMA_8x4].sad_x4 = sad_x4<8, 4>;
    p.pu[LUMA_16x8].sad_x4 = sad_x4<16, 8>;
    p.pu[LUMA_8x16].sad_x4 = sad_x4<8, 16>;
    p.pu[LUMA_16x12].sad_x4 = sad_x4<16, 12>;
    p.pu[LUMA_12x16].sad_x4 = sad_x4<12, 16>;
    p.pu[LUMA_16x4].sad_x4 = sad_x4<16, 4>;
    p.pu[LUMA_4x16].sad_x4 = sad_x4<4, 16>;
    p.pu[LUMA_32x16].sad_x4 = sad_x4<32, 16>;
    p.pu[LUMA_16x32].sad_x4 = sad_x4<16, 32>;
    p.pu[LUMA_32x24].sad_x4 = sad_x4<32, 24>;
    p.pu[LUMA_24x32].sad_x4 = sad_x4<24, 32>;
    p.pu[LUMA_32x8].sad_x4 = sad_x4<32, 8>;
    p.pu[LUMA_8x32].sad_x4 = sad_x4<8, 32>;
    p.pu[LUMA_64x32].sad_x4 = sad_x4<64, 32>;
    p.pu[LUMA_32x64].sad_x4 = sad_x4<32, 64>;
    p.pu[LUMA_64x48].sad_x4 = sad_x4<64, 48>;
    p.pu[LUMA_48x64].sad_x4 = sad_x4<48, 64>;
    p.pu[LUMA_64x16].sad_x4 = sad_x4<64, 16>;
    p.pu[LUMA_16x64].sad_x4 = sad_x4<16, 64>;

    //p.pu[LUMA_ ## W ## x ## H].pixelavg_pp = pixelavg_pp<W, H>;
    p.pu[LUMA_8x8].pixelavg_pp = pixelavg_pp_8x8;


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
	 
    p.cu[BLOCK_4x4].calcresidual = getResidual_4x4;
    p.cu[BLOCK_8x8].calcresidual = getResidual_8x8;
    p.cu[BLOCK_16x16].calcresidual = getResidual_16x16;
    p.cu[BLOCK_32x32].calcresidual = getResidual_32x32;
    p.cu[BLOCK_64x64].calcresidual = getResidual<64>; 


    p.cu[BLOCK_4x4].sa8d   = satd_4x4;
    p.cu[BLOCK_8x8].sa8d   = sa8d_8x8;
    p.cu[BLOCK_16x16].sa8d = sa8d_16x16;
    //p.cu[BLOCK_32x32].sa8d = sa8d16<32, 32>;
    p.cu[BLOCK_32x32].sa8d = sa8d_32x32;
    //p.cu[BLOCK_64x64].sa8d = sa8d16<64, 64>;
    p.cu[BLOCK_64x64].sa8d = sa8d_64x64;

#define CHROMA_PU_420(W, H) \
    p.chroma[X265_CSP_I420].pu[CHROMA_420_ ## W ## x ## H].addAvg  = addAvg<W, H>;         \
    p.chroma[X265_CSP_I420].pu[CHROMA_420_ ## W ## x ## H].copy_pp = blockcopy_pp_c<W, H>; \

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

#define CHROMA_CU_420(W, H) \
    p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].copy_sp = blockcopy_sp_c<W, H>; \
    p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].copy_ps = blockcopy_ps_c<W, H>; \
    p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].copy_ss = blockcopy_ss_c<W, H>; \
    p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].add_ps = pixel_add_ps_c<W, H>;

    //p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].sub_ps = pixel_sub_ps_c<W, H>;  
    //p.chroma[X265_CSP_I420].cu[BLOCK_420_ ## W ## x ## H].sse_pp  = sse_pp_a<W, H>; 

    CHROMA_CU_420(2, 2)
    CHROMA_CU_420(4, 4)
    CHROMA_CU_420(8, 8)
    CHROMA_CU_420(16, 16)
    CHROMA_CU_420(32, 32)
  
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


    p.chroma[X265_CSP_I420].cu[BLOCK_8x8].sa8d   = p.chroma[X265_CSP_I420].pu[CHROMA_420_4x4].satd;
    //p.chroma[X265_CSP_I420].cu[BLOCK_16x16].sa8d = sa8d8<8, 8>;
    p.chroma[X265_CSP_I420].cu[BLOCK_16x16].sa8d = sa8d_8x8;
    //p.chroma[X265_CSP_I420].cu[BLOCK_32x32].sa8d = sa8d16<16, 16>;
    p.chroma[X265_CSP_I420].cu[BLOCK_32x32].sa8d = sa8d_16x16;
    //p.chroma[X265_CSP_I420].cu[BLOCK_64x64].sa8d = sa8d16<32, 32>;
    p.chroma[X265_CSP_I420].cu[BLOCK_64x64].sa8d = sa8d_32x32;

#define CHROMA_PU_422(W, H) \
    p.chroma[X265_CSP_I422].pu[CHROMA_422_ ## W ## x ## H].addAvg  = addAvg<W, H>;         \
    p.chroma[X265_CSP_I422].pu[CHROMA_422_ ## W ## x ## H].copy_pp = blockcopy_pp_c<W, H>; \

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
    p.chroma[X265_CSP_I422].cu[BLOCK_422_ ## W ## x ## H].copy_sp = blockcopy_sp_c<W, H>; \
    p.chroma[X265_CSP_I422].cu[BLOCK_422_ ## W ## x ## H].copy_ps = blockcopy_ps_c<W, H>; \
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
    p.weight_sp = weight_sp_c;

    p.scale1D_128to64 = scale1D_128to64;
    p.scale2D_64to32 = scale2D_64to32;
    p.frameInitLowres = frame_init_lowres_core;
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
