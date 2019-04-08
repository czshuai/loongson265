#include "common.h"
#include "x265.h"
#include <msa.h>
#include <stdlib.h>
#include <loongson-sx.h>
#include <stdint.h>

v2i64 LD(const pixel *psrc) 
{	
	v2i64 tmpp; 
	tmpp = __builtin_lsx_vbld(0, psrc);	
	return tmpp;	
} 

void LD2(const pixel *psrc, intptr_t stride, v2i64 *out0, v2i64 *out1)	
{
	//const pixel *ptr = psrc + stride;	
	*out0 = LD(psrc);	
	*out1 = LD(psrc + stride);	
	//*out1 = LD(ptr);
}

void LD4(const pixel *psrc, intptr_t stride, v2i64 *out0, v2i64 *out1, v2i64 *out2, v2i64 *out3)	
{
	//const pixel *ptr = psrc + 2 * stride;	
	LD2(psrc, stride, out0, out1);               
	LD2(psrc + 2 * stride, stride, out2, out3);  		
	//LD2(ptr, stride, out2, out3);  		
}

void LD2_BtoH(const pixel *psrc, intptr_t stride, v8u16 *out0, v8u16 *out1)
{	
	v2i64 tmp0, tmp1;
	tmp0 = LD(psrc);
	tmp1 = LD(psrc + stride);
	*out0 = __builtin_lsx_vextb_u_h((v16i8)tmp0);
	*out1 = __builtin_lsx_vextb_u_h((v16i8)tmp1);
}
		
void LD4_BtoH(const pixel *psrc, intptr_t stride, v8u16 *out0, v8u16 *out1, v8u16 *out2, v8u16 *out3)
{
	LD2_BtoH(psrc, stride, out0, out1);
	LD2_BtoH(psrc + 2 * stride, stride, out2, out3);	
}

void LD_H_BtoH(const pixel *psrc, v8u16 *out)
{
	v2i64 tmp;
	tmp = LD(psrc);
	*out = __builtin_lsx_vextb_u_h((v16i8)tmp);
}

void LD2_H_BtoH(const pixel *psrc, v8u16 *out0, v8u16 *out1)
{
	v2i64 tmp0, tmp1;
	tmp0 = LD(psrc);
	tmp1 = LD(psrc + 8);
	*out0 = __builtin_lsx_vextb_u_h((v16i8)tmp0);
	*out1 = __builtin_lsx_vextb_u_h((v16i8)tmp1);
}

void LD4_H_BtoH(const pixel *psrc, v8u16 *out0, v8u16 *out1, v8u16 *out2, v8u16 *out3)
{
	LD2_H_BtoH(psrc, out0, out1);
	LD2_H_BtoH(psrc + 16, out2, out3);
}

void LD2_H(const pixel *psrc, v2i64 *out0, v2i64 *out1)
{
	*out0 = LD(psrc);
	*out1 = LD(psrc + 8);		
}

void LD4_H(const pixel *psrc, v2i64 *out0, v2i64 *out1, v2i64 *out2, v2i64 *out3)
{
	LD2_H(psrc, out0, out1);
	LD2_H(psrc + 16, out2, out3);		
}

#define LH(psrc)	\
{	\
	v8i16 tmpp;	\
	tmpp = __builtin_lsx_vblh(0, psrc);	\
	return tmpp;	\
}

v4i32 LW(const pixel *psrc)	
{	
	v4i32 tmpp;	
	tmpp = __builtin_lsx_vblw(0, psrc);	
	return tmpp;	
}

void LW4(const pixel *psrc, intptr_t stride, v4i32 *out0, v4i32 *out1, v4i32 *out2, v4i32 *out3)
{	
	*out0 = LW((psrc));	
	*out1 = LW((psrc) + stride);	
	*out2 = LW((psrc) + 2 * stride);		
	*out3 = LW((psrc) + 3 * stride);		
}
#define LW2(psrc, stride, out0, out1)	\
{	\
	out0 = LW((psrc));	\
	out1 = LW((psrc) + stride);	\
}

v2i64 LD_V(const pixel *psrc)	
{	
	v2i64 tmpp;	
	tmpp = __builtin_msa_ld_d(psrc, 0);	
	return tmpp;	
} 

#define LD_UB(...) LD_V(v16u8, __VA_ARGS__)
#define LD_SB(...) LD_V(v16i8, __VA_ARGS__)
#define LD_UH(...) LD_V(v8u16, __VA_ARGS__)
#define LD_SH(...) LD_V(v8i16, __VA_ARGS__)
#define LD_UW(...) LD_V(v4u32, __VA_ARGS__)
#define LD_SW(...) LD_V(v4i32, __VA_ARGS__)

void LD_V2(const pixel *psrc, intptr_t stride, v2i64 *out0, v2i64 *out1)	
{	
	*out0 = LD_V(psrc);	
	*out1 = LD_V(psrc + stride);	
}

void LD_V2_H(const pixel *psrc, v2i64 *out0, v2i64 *out1)
{
	*out0 = LD_V(psrc);
	*out1 = LD_V(psrc + 16);	
}
#define LD_UB2(...) LD_V2(v16u8, __VA_ARGS__)
#define LD_SB2(...) LD_V2(v16i8, __VA_ARGS__)
#define LD_UH2(...) LD_V2(v8u16, __VA_ARGS__)
#define LD_SH2(...) LD_V2(v8i16, __VA_ARGS__)
#define LD_SW2(...) LD_V2(v4i32, __VA_ARGS__)

#define LD_V3(RTYPE, psrc, stride, out0, out1, out2)	\
{	\
	LD_V2(RTYPE, (psrc), stride, out0, out1);	\
	out2 = LD_V(RTYPE, (psrc) + 2 * stride);	\
}

#define LD_UB3(...) LD_V3(v16u8, __VA_ARGS__)
#define LD_SB3(...) LD_V3(v16i8, __VA_ARGS__)

void LD_V4(const pixel *psrc, intptr_t stride, v2i64 *out0, v2i64 *out1, v2i64 *out2, v2i64 *out3)   
{	
	LD_V2(psrc, stride, out0, out1);	
	LD_V2(psrc + 2 * stride , stride, out2, out3);	
}

void LD_V4_H(const pixel *psrc, v2i64 *out0, v2i64 *out1, v2i64 *out2, v2i64 *out3)
{
	LD_V2_H(psrc, out0, out1);
	LD_V2_H(psrc + 32, out2, out3);
}

#define LD_UB4(...) LD_V4(v16u8, __VA_ARGS__)
#define LD_SB4(...) LD_V4(v16i8, __VA_ARGS__)
#define LD_UH4(...) LD_V4(v8u16, __VA_ARGS__)
#define LD_SH4(...) LD_V4(v8i16, __VA_ARGS__)

#define LD_V5(RTYPE, psrc, stride, out0, out1, out2, out3, out4)	\
{	\
	LD_V4(RTYPE, (psrc), stride, out0, out1, out2, out3);	\
	out4 = LD_V(RTYPE, (psrc) + 4 * stride);	\
}

#define LD_UB5(...) LD_V5(v16u8, __VA_ARGS__)
#define LD_SB5(...) LD_V5(v16i8, __VA_ARGS__)

#define LD_V6(RTYPE, psrc, stride, out0, out1, out2, out3, out4, out5)  \
{	\
	LD_V4(RTYPE, (psrc), stride, out0, out1, out2, out3);	\
	LD_V2(RTYPE, (psrc) + 4 * stride, stride, out4, out5);	\
}

#define LD_UB6(...) LD_V6(v16u8, __VA_ARGS__)
#define LD_SB6(...) LD_V6(v16i8, __VA_ARGS__)
#define LD_UH6(...) LD_V6(v8u16, __VA_ARGS__)
#define LD_SH6(...) LD_V6(v8i16, __VA_ARGS__)

#define LD_V7(RTYPE, psrc, stride,                               \
	      out0, out1, out2, out3, out4, out5, out6)          \
{	\
	LD_V5(RTYPE, (psrc), stride, out0, out1, out2, out3, out4);  \
	LD_V2(RTYPE, (psrc) + 5 * stride, stride, out5, out6);	\
}

#define LD_UB7(...) LD_V7(v16u8, __VA_ARGS__)
#define LD_SB7(...) LD_V7(v16i8, __VA_ARGS__)

void LD_V8(const pixel *psrc, intptr_t stride, v2i64 *out0, v2i64 *out1, v2i64 *out2, v2i64 *out3, v2i64 *out4, v2i64 *out5, v2i64 *out6, v2i64 *out7)    
{	
	LD_V4(psrc, stride, out0, out1, out2, out3);               
	LD_V4(psrc + 4 * stride, stride, out4, out5, out6, out7);  
}

#define LD_UB8(...) LD_V8(v16u8, __VA_ARGS__)
#define LD_SB8(...) LD_V8(v16i8, __VA_ARGS__)
#define LD_UH8(...) LD_V8(v8u16, __VA_ARGS__)
#define LD_SH8(...) LD_V8(v8i16, __VA_ARGS__)

#define LD_V16(RTYPE, psrc, stride,                                   \
	       out0, out1, out2, out3, out4, out5, out6, out7,        \
	       out8, out9, out10, out11, out12, out13, out14, out15)  \
{	\
	LD_V8(RTYPE, (psrc), stride,                                      \
	      out0, out1, out2, out3, out4, out5, out6, out7);            \
	LD_V8(RTYPE, (psrc) + 8 * stride, stride,                         \
	      out8, out9, out10, out11, out12, out13, out14, out15);      \
}

#define LD_SH16(...) LD_V16(v8i16, __VA_ARGS__)

v4i32 L_4x4_B(const pixel *psrc,intptr_t stride)	
{	
	v4i32 tmpp0, tmpp1, tmpp2, tmpp3; 	
	LW4(psrc, stride, &tmpp0, &tmpp1, &tmpp2, &tmpp3);	
	tmpp0 = __builtin_msa_insve_w(tmpp0, 1, tmpp1);	
	tmpp0 = __builtin_msa_insve_w(tmpp0, 2, tmpp2);	
	tmpp0 = __builtin_msa_insve_w(tmpp0, 3, tmpp3);	
	return tmpp0;
}

void L_8x8_B(const pixel *psrc, intptr_t stride, v2i64 *out0, v2i64 *out1, v2i64 *out2, v2i64 *out3)
{
	v2i64 tmp0, tmp1, tmp2, tmp3;
	//*out0 = L_4x4_B(psrc, stride);
	//*out1 = L_4x4_B(psrc + 4, stride);
	//*out2 = L_4x4_B(psrc + 4 * stride, stride);
	//*out3 = L_4x4_B(psrc + 4 + 4 * stride, stride);
	/* 		
   		*****this function can not be used as macro****	
 		8x8
 	        - - - - - - - - -
	       |       |       	|
	       	  out0    out1
	       |       |       	|			
	        - - - - - - - - - 
	       |       |        |
		  out2    out3
	       |       |        |
	        - - - - - - - - -
	*/		
	LD4(psrc, stride, out0, out1, out2, out3);	
	LD4(psrc + 4 * stride, stride, &tmp0, &tmp1, &tmp2, &tmp3);
	*out0 = __builtin_msa_insve_d(*out0, 1, tmp0);
	*out1 = __builtin_msa_insve_d(*out1, 1, tmp1);
	*out2 = __builtin_msa_insve_d(*out2, 1, tmp2);
	*out3 = __builtin_msa_insve_d(*out3, 1, tmp3);
	//the first and fifth lines make up the out0 
}
	
//out's type if v8u16 
void L_4x4_B_H(const pixel *psrc,intptr_t stride, v8u16 *out0, v8u16 *out1)	
{	
	v4i32 tmpp0, tmpp1, tmpp2, tmpp3;	
	LW4(psrc, stride, &tmpp0, &tmpp1, &tmpp2, &tmpp3);      
	tmpp0 = __builtin_msa_insve_w(tmpp0, 1, tmpp1);    
	*out0 = __builtin_lsx_vextb_u_h((v16i8)tmpp0);	
	tmpp2 = __builtin_msa_insve_w(tmpp2, 1, tmpp3);	
	*out1 = __builtin_lsx_vextb_u_h((v16i8)tmpp2);	
}

void S_4x4_B(v16u8 val,pixel *pdst,intptr_t stride)	
{	
	__builtin_lsx_vsw((v4i32)val, 0, 0, pdst);	
	__builtin_lsx_vsw((v4i32)val, 1, 0, pdst + stride);	
	__builtin_lsx_vsw((v4i32)val, 2, 0, pdst + 2 * stride);	
	__builtin_lsx_vsw((v4i32)val, 3, 0, pdst + 3 * stride);	
}

void S_4x4_H(v8i16 val0,v8i16 val1,int16_t *pdst,intptr_t stride)	
{	
	__builtin_lsx_vsd((v2i64)val0, 0, 0, pdst);	
	__builtin_lsx_vsd((v2i64)val0, 1, 0, pdst + stride);	
	__builtin_lsx_vsd((v2i64)val1, 0, 0, pdst + 2 * stride);	
	__builtin_lsx_vsd((v2i64)val1, 1, 0, pdst + 3 * stride);	
}

#define SH(val, pdst) __builtin_lsx_vsh(val, 0, 0, pdst)
#define SW(val, pdst) __builtin_lsx_vsw(val, 0, 0, pdst)
void SD(v2i64 val, pixel *pdst)
{
	__builtin_lsx_vsd(val, 0, 0, pdst);
}

void SD2(v2i64 in0, v2i64 in1, pixel *pdst, intptr_t stride)
{
	SD(in0, pdst);
	SD(in1, pdst + stride);
}

void SD4(v2i64 in0, v2i64 in1, v2i64 in2, v2i64 in3, pixel *pdst, intptr_t stride)
{
	SD2(in0, in1, pdst, stride);
	SD2(in2, in3, pdst + 2 * stride, stride);
}

void SD_1(v2i64 val, pixel *pdst)
{
	__builtin_lsx_vsd(val, 1, 0, pdst);
}

void SD2_1(v2i64 in0, v2i64 in1, pixel *pdst, intptr_t stride)
{
	SD_1(in0, pdst);
	SD_1(in1, pdst + stride);
}

void SD4_1(v2i64 in0, v2i64 in1, v2i64 in2, v2i64 in3, pixel *pdst, intptr_t stride)
{
	SD2_1(in0, in1, pdst, stride);
	SD2_1(in2, in3, pdst + 2 * stride, stride);
}

#define SW4(in0, in1, in2, in3, pdst, stride)  \
{	\
	SW(in0, (pdst));	\
	SW(in1, (pdst) + stride);	\
	SW(in2, (pdst) + 2 * stride);	\
	SW(in3, (pdst) + 3 * stride);	\
}

void ST_V(v2i64 in, pixel *pdst)	
{	
	__builtin_msa_st_d(in, pdst, 0);		
}
void ST_V2(v2i64 in0, v2i64 in1, pixel *pdst, intptr_t stride)	
{	
	ST_V(in0, pdst);	
	ST_V(in1, pdst + stride);	
}

void ST_V4(v2i64 in0, v2i64 in1, v2i64 in2, v2i64 in3, pixel *pdst, intptr_t stride)		
{	
	ST_V2(in0, in1, pdst, stride);	
	ST_V2(in2, in3, pdst + 2 * stride, stride);	
}

void ST_V2_H(v2i64 in0, v2i64 in1, pixel *pdst)
{
	ST_V(in0, pdst);
	ST_V(in1, pdst + 16);	
}

void ST_V4_H(v2i64 in0, v2i64 in1, v2i64 in2, v2i64 in3, pixel *pdst)
{
	ST_V2_H(in0, in1, pdst);
	ST_V2_H(in2, in3, pdst + 32);
}

#define ST_V6(in0, in1, in2, in3, in4, in5, pdst, stride)	\
{	\
	ST_V4(in0, in1, in2, in3, (pdst), stride);	\
	ST_V2(in4, in5, (pdst) + 4 * stride, stride);	\
}

#define ST_V8(in0, in1, in2, in3, in4, in5, in6, in7, pdst, stride)	\
{	\
	ST_V4(in0, in1, in2, in3, (pdst), stride);	\
	ST_V4(in4, in5, in6, in7, (pdst) + 4 * stride, stride);		\
}


