;; This is the hand hacked output of the TI C compiler for a simple
;; test program that contains static, global, and extern data variables.

	.file	"relocs2.s"
	.global	_x_char
	.global	_x_short
	.global	_x_long
	.global	_x_float
	.global	_x_double
	.global	_x_char_p
	.global	_g_char
	.global	_g_short
	.global	_g_int
	.global	_g_long
	.global	_g_float
	.global	_g_double
	.global	_g_char_p
	.global	_main

_main:
         ld.b      _s_char+0(r0),r2
         st.b      _x_char+0(r0),r2
         ld.b      _x_char+0(r0),r2
         st.b      _g_char+0(r0),r2
         ld.h      _s_short+0(r0),r2
         st.h      _x_short+0(r0),r2
         ld.h      _x_short+0(r0),r2
         st.h      _g_short+0(r0),r2
         ld        _s_int+0(r0),r2
         st        _x_int+0(r0),r2
         ld        _x_int+0(r0),r2
         st        _g_int+0(r0),r2
         ld        _s_long+0(r0),r2
         st        _x_long+0(r0),r2
         ld        _x_long+0(r0),r2
         st        _g_long+0(r0),r2
         ld        _s_float+0(r0),r2
         st        _x_float+0(r0),r2
         ld        _x_float+0(r0),r2
         st        _g_float+0(r0),r2
         ld.d      _s_double+0(r0),r2
         st.d      _x_double+0(r0),r2
         ld.d      _x_double+0(r0),r2
         st.d      _g_double+0(r0),r2
         ld        _s_char_p+0(r0),r2
         st        _x_char_p+0(r0),r2
         ld        _x_char_p+0(r0),r2
         st        _g_char_p+0(r0),r2
         jsr.a     r31(r0),r0

	.global	_g_char_p
	.bss	_g_char_p,4,4
	.global	_g_long
	.bss	_g_long,4,4
	.bss	_s_double,8,8
	.bss	_s_long,4,4
	.global	_g_char
	.bss	_g_char,1,4
	.global	_g_int
	.bss	_g_int,4,4
	.bss	_s_char,1,4
	.bss	_s_int,4,4
	.global	_g_double
	.bss	_g_double,8,8
	.bss	_s_float,4,4
	.global	_g_short
	.bss	_g_short,2,4
	.global	_g_float
	.bss	_g_float,4,4
	.bss	_s_short,2,4
	.bss	_x_int,4,4
	.bss	_s_char_p,4,4
