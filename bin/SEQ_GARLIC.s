	.include "MPlayDef.s"

	.equ	SEQ_GARLIC_grp, voicegroup000
	.equ	SEQ_GARLIC_pri, 0
	.equ	SEQ_GARLIC_rev, 0
	.equ	SEQ_GARLIC_mvl, 127
	.equ	SEQ_GARLIC_key, 0
	.equ	SEQ_GARLIC_tbs, 1
	.equ	SEQ_GARLIC_exg, 0
	.equ	SEQ_GARLIC_cmp, 1

	.section .rodata
	.global	SEQ_GARLIC
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

SEQ_GARLIC_1:
	.byte	KEYSH , SEQ_GARLIC_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 160*SEQ_GARLIC_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 127*SEQ_GARLIC_mvl/mxv
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Ds2 , v116
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 001   ----------------------------------------
SEQ_GARLIC_1_001:
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte		        Fs1 , v127
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Ds2 , v116
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 004   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_001
@ 005   ----------------------------------------
	.byte		N06   , Cs1 , v127
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
@ 006   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
@ 007   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
@ 008   ----------------------------------------
SEQ_GARLIC_1_008:
	.byte		N06   , Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Ds2 , v116
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Fs1 , v127
	.byte	W24
@ 010   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_008
@ 012   ----------------------------------------
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W24
@ 013   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 014   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 015   ----------------------------------------
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
@ 016   ----------------------------------------
SEQ_GARLIC_1_016:
	.byte		N06   , Cs1 , v116
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
SEQ_GARLIC_1_017:
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Ds2 , v116
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
SEQ_GARLIC_1_018:
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
SEQ_GARLIC_1_019:
	.byte		N06   , Cs1 , v116
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Fs2 , v116
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_019
@ 026   ----------------------------------------
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Fs2 , v116
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 027   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
@ 028   ----------------------------------------
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 , v116
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
@ 029   ----------------------------------------
SEQ_GARLIC_1_029:
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte	PEND
@ 030   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 031   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_001
@ 032   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_029
@ 033   ----------------------------------------
	.byte		VOL   , 127*SEQ_GARLIC_mvl/mxv
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 034   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cs1 , v048
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
@ 035   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 036   ----------------------------------------
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cs1 , v048
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 037   ----------------------------------------
	.byte		VOL   , 127*SEQ_GARLIC_mvl/mxv
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 038   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
@ 039   ----------------------------------------
	.byte		        Dn1 , v116
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 040   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 041   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
@ 042   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
@ 043   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cs1 , v048
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
@ 044   ----------------------------------------
	.byte		        Cs2 , v116
	.byte	W06
	.byte		        Cn2 
	.byte	W18
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 045   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Fs1 , v127
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 046   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Fs1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
@ 047   ----------------------------------------
	.byte		        En1 , v116
	.byte	W06
	.byte		N06   
	.byte	W18
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
@ 048   ----------------------------------------
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Cs1 , v127
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 049   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Fs1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W06
@ 050   ----------------------------------------
	.byte		        Gn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Fn2 , v116
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 051   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
@ 052   ----------------------------------------
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W36
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 053   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Fs2 , v116
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 054   ----------------------------------------
SEQ_GARLIC_1_054:
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte	PEND
@ 055   ----------------------------------------
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Fs2 , v116
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 056   ----------------------------------------
	.byte		        Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W12
@ 057   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
@ 058   ----------------------------------------
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W24
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
@ 059   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W12
@ 060   ----------------------------------------
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
@ 061   ----------------------------------------
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cs1 , v048
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W18
	.byte		        Cs1 , v056
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
@ 062   ----------------------------------------
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cs1 , v048
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W06
	.byte		        Cs1 , v056
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
@ 063   ----------------------------------------
SEQ_GARLIC_1_063:
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte	PEND
@ 064   ----------------------------------------
	.byte		        Ds2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Ds1 , v060
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N06   , Ds1 , v060
	.byte	W12
	.byte		        En1 , v088
	.byte	W12
	.byte		        Dn1 , v116
	.byte	W24
@ 065   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_054
@ 066   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_063
@ 067   ----------------------------------------
	.byte		N06   , Ds2 , v127
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
@ 068   ----------------------------------------
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En1 , v088
	.byte	W06
	.byte		        Cs1 , v127
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		        Ds1 , v060
	.byte	W06
	.byte		        Cs1 , v048
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W12
@ 069   ----------------------------------------
	.byte	W06
	.byte		        Cs1 , v056
	.byte	W06
	.byte		        Fs1 , v127
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		        En2 , v052
	.byte	W06
	.byte		        Cn1 , v076
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 , v080
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds2 , v104
	.byte	W12
@ 070   ----------------------------------------
SEQ_GARLIC_1_070:
	.byte		N06   , Dn2 , v104
	.byte	W06
	.byte		        En2 , v052
	.byte	W06
	.byte		        Fn2 , v080
	.byte	W06
	.byte		        Dn2 , v104
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W12
	.byte		        Cn1 , v076
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 , v080
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N12   , Ds2 , v104
	.byte	W12
	.byte	PEND
@ 071   ----------------------------------------
SEQ_GARLIC_1_071:
	.byte		N06   , En2 , v052
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cn2 , v127
	.byte	W06
	.byte		        En2 , v052
	.byte	W06
	.byte		        Cn1 , v076
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn2 , v080
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Ds2 , v104
	.byte	W12
	.byte	PEND
@ 072   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_070
@ 073   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_071
@ 074   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_070
@ 075   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_071
@ 076   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_070
@ 077   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_071
@ 078   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_070
@ 079   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_071
@ 080   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_070
@ 081   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_071
@ 082   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_070
@ 083   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_071
@ 084   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_1_070
@ 085   ----------------------------------------
	.byte		N06   , En2 , v052
	.byte	W06
	.byte		        Cs2 , v104
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

SEQ_GARLIC_2:
	.byte	KEYSH , SEQ_GARLIC_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 2
	.byte		VOL   , 127*SEQ_GARLIC_mvl/mxv
	.byte		N06   , Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v124
	.byte	W06
	.byte		        GsM1, v044
	.byte	W06
	.byte		        GsM1, v112
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
@ 001   ----------------------------------------
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        Ds0 , v084
	.byte	W06
	.byte		        Ds0 , v080
	.byte	W06
	.byte		        Ds0 , v124
	.byte	W06
	.byte		        Ds0 , v100
	.byte	W06
	.byte		        Ds0 , v092
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v040
	.byte	W06
@ 002   ----------------------------------------
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v036
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v092
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        En0 , v040
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fs0 , v100
	.byte	W06
	.byte		        Gn0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
@ 003   ----------------------------------------
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v124
	.byte	W06
	.byte		        GsM1, v044
	.byte	W06
	.byte		        GsM1, v112
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        Ds0 , v068
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        Ds0 , v080
	.byte	W06
	.byte		        Ds0 , v124
	.byte	W06
	.byte		        Ds0 , v100
	.byte	W06
	.byte		        Ds0 , v092
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v040
	.byte	W06
@ 005   ----------------------------------------
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v036
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W36
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W72
	.byte		        Dn0 
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
@ 008   ----------------------------------------
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v124
	.byte	W06
	.byte		        GsM1, v044
	.byte	W06
	.byte		        GsM1, v112
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        Ds0 , v084
	.byte	W06
@ 009   ----------------------------------------
SEQ_GARLIC_2_009:
	.byte		N06   , Ds0 , v080
	.byte	W06
	.byte		        Ds0 , v124
	.byte	W06
	.byte		        Ds0 , v100
	.byte	W06
	.byte		        Ds0 , v092
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v036
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
	.byte		        Dn0 , v092
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        En0 , v040
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fs0 , v100
	.byte	W06
	.byte		        Gn0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
@ 011   ----------------------------------------
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v124
	.byte	W06
	.byte		        GsM1, v044
	.byte	W06
	.byte		        GsM1, v112
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        Ds0 , v068
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
@ 012   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_009
@ 013   ----------------------------------------
	.byte		N06   , Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W60
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W48
	.byte		        En0 
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 016   ----------------------------------------
SEQ_GARLIC_2_016:
	.byte		N06   , Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v088
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 017   ----------------------------------------
SEQ_GARLIC_2_017:
	.byte		N06   , En0 , v127
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        BnM1, v127
	.byte	W06
	.byte		        BnM1, v044
	.byte	W06
	.byte		        BnM1, v127
	.byte	W06
	.byte		        BnM1, v108
	.byte	W06
	.byte	PEND
@ 018   ----------------------------------------
SEQ_GARLIC_2_018:
	.byte		N06   , BnM1, v068
	.byte	W06
	.byte		        BnM1, v100
	.byte	W06
	.byte		        BnM1, v127
	.byte	W06
	.byte		        BnM1, v052
	.byte	W06
	.byte		        BnM1, v127
	.byte	W06
	.byte		        BnM1, v088
	.byte	W06
	.byte		        BnM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 019   ----------------------------------------
SEQ_GARLIC_2_019:
	.byte		N06   , Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v088
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 020   ----------------------------------------
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W18
	.byte		        BnM1, v127
	.byte	W12
@ 021   ----------------------------------------
	.byte		        BnM1, v068
	.byte	W06
	.byte		        BnM1, v100
	.byte	W06
	.byte		        BnM1, v127
	.byte	W36
	.byte		        En0 
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 022   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_017
@ 024   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_018
@ 025   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_019
@ 026   ----------------------------------------
	.byte		N06   , En0 , v127
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v036
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W30
@ 027   ----------------------------------------
	.byte	W48
	.byte		        BnM1, v127
	.byte	W12
	.byte		        BnM1, v068
	.byte	W06
	.byte		        BnM1, v100
	.byte	W06
	.byte		        BnM1, v127
	.byte	W24
@ 028   ----------------------------------------
	.byte		N06   
	.byte	W12
	.byte		        BnM1, v068
	.byte	W06
	.byte		        BnM1, v100
	.byte	W06
	.byte		        BnM1, v127
	.byte	W06
	.byte		        BnM1, v068
	.byte	W06
	.byte		        BnM1, v100
	.byte	W06
	.byte		        BnM1, v127
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        An0 , v040
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v044
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v108
	.byte	W06
@ 029   ----------------------------------------
SEQ_GARLIC_2_029:
	.byte		N06   , An0 , v068
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		        AsM1, v112
	.byte	W06
	.byte		        AsM1, v052
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v036
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v044
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v108
	.byte	W06
	.byte	PEND
@ 030   ----------------------------------------
	.byte		        En0 , v068
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
@ 031   ----------------------------------------
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v112
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v088
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v040
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v044
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v108
	.byte	W06
@ 032   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_029
@ 033   ----------------------------------------
	.byte		VOL   , 127*SEQ_GARLIC_mvl/mxv
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte		        127*SEQ_GARLIC_mvl/mxv
	.byte		N06   , An0 , v127
	.byte	W06
	.byte		        An0 , v040
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v044
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v108
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		        AsM1, v112
	.byte	W06
	.byte		        AsM1, v052
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v036
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 038   ----------------------------------------
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v044
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v108
	.byte	W06
	.byte		        En0 , v068
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 039   ----------------------------------------
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v112
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v088
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 040   ----------------------------------------
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v040
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v044
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v108
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		        AsM1, v112
	.byte	W06
	.byte		        AsM1, v052
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v036
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 041   ----------------------------------------
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v044
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v108
	.byte	W30
	.byte		        Fn0 , v127
	.byte	W24
@ 042   ----------------------------------------
	.byte		        Fn0 , v092
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W18
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v108
	.byte	W18
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v104
	.byte	W06
	.byte		        Fn0 , v096
	.byte	W12
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v092
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W12
@ 043   ----------------------------------------
	.byte		        Fn0 , v088
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Cs0 , v112
	.byte	W06
	.byte		        Ds0 
	.byte	W06
	.byte		        Fn0 , v116
	.byte	W06
	.byte		        Fs0 , v120
	.byte	W06
	.byte		        Gs0 , v116
	.byte	W06
	.byte		        As0 , v112
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v124
	.byte	W06
@ 044   ----------------------------------------
	.byte		        GsM1, v044
	.byte	W06
	.byte		        GsM1, v112
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        Ds0 , v084
	.byte	W06
	.byte		        Ds0 , v080
	.byte	W06
	.byte		        Ds0 , v124
	.byte	W06
	.byte		        Ds0 , v100
	.byte	W06
	.byte		        Ds0 , v092
	.byte	W06
@ 045   ----------------------------------------
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v036
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v092
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
@ 046   ----------------------------------------
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        En0 , v040
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fs0 , v100
	.byte	W06
	.byte		        Gn0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v124
	.byte	W06
@ 047   ----------------------------------------
	.byte		        GsM1, v044
	.byte	W06
	.byte		        GsM1, v112
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        Ds0 , v068
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        Ds0 , v080
	.byte	W06
	.byte		        Ds0 , v124
	.byte	W06
	.byte		        Ds0 , v100
	.byte	W06
	.byte		        Ds0 , v092
	.byte	W06
@ 048   ----------------------------------------
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v040
	.byte	W06
	.byte		        GsM1, v127
	.byte	W06
	.byte		        GsM1, v036
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v036
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
@ 049   ----------------------------------------
	.byte		        Dn0 , v127
	.byte	W06
	.byte		        Dn0 , v040
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W84
@ 050   ----------------------------------------
	.byte	W24
	.byte		        En0 
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
@ 051   ----------------------------------------
SEQ_GARLIC_2_051:
	.byte		N06   , Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v088
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte	PEND
@ 052   ----------------------------------------
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        BnM1, v127
	.byte	W12
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		        BnM1, v052
	.byte	W06
@ 053   ----------------------------------------
	.byte		        BnM1, v127
	.byte	W24
	.byte		        En0 
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
@ 054   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_051
@ 055   ----------------------------------------
	.byte		N06   , En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W18
	.byte		        BnM1, v127
	.byte	W12
	.byte		        BnM1, v068
	.byte	W06
	.byte		        BnM1, v100
	.byte	W06
	.byte		        BnM1, v127
	.byte	W12
@ 056   ----------------------------------------
	.byte	W24
	.byte		        An0 
	.byte	W06
	.byte		        An0 , v040
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v044
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v108
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		        AsM1, v112
	.byte	W06
	.byte		        AsM1, v052
	.byte	W06
@ 057   ----------------------------------------
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v036
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v044
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v108
	.byte	W06
	.byte		        En0 , v068
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
@ 058   ----------------------------------------
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v112
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
@ 059   ----------------------------------------
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v088
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v040
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v044
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v108
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		        AsM1, v112
	.byte	W06
	.byte		        AsM1, v052
	.byte	W06
@ 060   ----------------------------------------
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v036
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v044
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v108
	.byte	W30
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W72
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v040
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
@ 063   ----------------------------------------
SEQ_GARLIC_2_063:
	.byte		N06   , An0 , v127
	.byte	W06
	.byte		        An0 , v044
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
	.byte		        An0 , v108
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		        AsM1, v112
	.byte	W06
	.byte		        AsM1, v052
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v036
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte	PEND
@ 064   ----------------------------------------
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v044
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v108
	.byte	W06
	.byte		        En0 , v068
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		        En0 , v112
	.byte	W06
	.byte		        En0 , v052
	.byte	W06
	.byte		        En0 , v127
	.byte	W06
	.byte		        En0 , v036
	.byte	W06
	.byte		        En0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v040
	.byte	W06
	.byte		        Fn0 , v068
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
@ 065   ----------------------------------------
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v044
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v108
	.byte	W06
	.byte		        Gs0 , v068
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		        Gs0 , v112
	.byte	W06
	.byte		        Gs0 , v052
	.byte	W06
	.byte		        Gs0 , v127
	.byte	W06
	.byte		        Gs0 , v088
	.byte	W06
	.byte		        Gs0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An0 , v127
	.byte	W06
	.byte		        An0 , v040
	.byte	W06
	.byte		        An0 , v068
	.byte	W06
	.byte		        An0 , v100
	.byte	W06
@ 066   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_063
@ 067   ----------------------------------------
	.byte		N06   , Fn0 , v127
	.byte	W06
	.byte		        Fn0 , v044
	.byte	W06
	.byte		        Fn0 , v100
	.byte	W06
	.byte		        Fn0 , v108
	.byte	W78
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W24
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v040
	.byte	W06
	.byte		        Cn0 , v068
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v044
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cn0 , v108
	.byte	W06
	.byte		        Cn0 , v068
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cn0 , v112
	.byte	W06
	.byte		        Cn0 , v052
	.byte	W06
@ 070   ----------------------------------------
SEQ_GARLIC_2_070:
	.byte		N06   , Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v036
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        AsM1, v127
	.byte	W06
	.byte		        AsM1, v040
	.byte	W06
	.byte		        AsM1, v068
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		        AsM1, v127
	.byte	W06
	.byte		        AsM1, v044
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		        AsM1, v108
	.byte	W06
	.byte		        AsM1, v068
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		        AsM1, v112
	.byte	W06
	.byte		        AsM1, v052
	.byte	W06
	.byte	PEND
@ 071   ----------------------------------------
	.byte		        AsM1, v127
	.byte	W06
	.byte		        AsM1, v036
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v040
	.byte	W06
	.byte		        Cn0 , v068
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v044
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cn0 , v108
	.byte	W06
	.byte		        Cn0 , v068
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cn0 , v112
	.byte	W06
	.byte		        Cn0 , v052
	.byte	W06
@ 072   ----------------------------------------
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v036
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        Ds0 , v120
	.byte	W06
	.byte		        Ds0 , v112
	.byte	W24
	.byte		        Ds0 , v100
	.byte	W06
	.byte		        Ds0 , v108
	.byte	W06
	.byte		        Ds0 , v068
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v112
	.byte	W06
	.byte		        Cs0 , v052
	.byte	W06
@ 073   ----------------------------------------
	.byte		        Cs0 , v127
	.byte	W06
	.byte		        Cs0 , v036
	.byte	W06
	.byte		        Cs0 , v100
	.byte	W06
	.byte		        Cn0 
	.byte	W06
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v040
	.byte	W06
	.byte		        Cn0 , v068
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v044
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cn0 , v108
	.byte	W06
	.byte		        Cn0 , v068
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cn0 , v112
	.byte	W06
	.byte		        Cn0 , v052
	.byte	W06
@ 074   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_070
@ 075   ----------------------------------------
	.byte		N06   , AsM1, v127
	.byte	W06
	.byte		        AsM1, v036
	.byte	W06
	.byte		        AsM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v040
	.byte	W06
	.byte		        Cn0 , v068
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Cn0 , v108
	.byte	W18
	.byte		        Cn0 , v112
	.byte	W06
	.byte		        Cn0 , v052
	.byte	W06
@ 076   ----------------------------------------
	.byte	W12
	.byte		        Cn0 , v100
	.byte	W06
	.byte		N06   
	.byte	W78
@ 077   ----------------------------------------
	.byte	W24
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v040
	.byte	W06
	.byte		        Ds0 , v068
	.byte	W06
	.byte		        Ds0 , v100
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v108
	.byte	W06
	.byte		        Dn0 , v068
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v112
	.byte	W06
	.byte		        Cs0 , v052
	.byte	W06
@ 078   ----------------------------------------
SEQ_GARLIC_2_078:
	.byte		N06   , Cs0 , v127
	.byte	W06
	.byte		        Cs0 , v036
	.byte	W06
	.byte		        Cs0 , v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v040
	.byte	W06
	.byte		        Ds0 , v068
	.byte	W06
	.byte		        Ds0 , v100
	.byte	W06
	.byte		        Ds0 , v127
	.byte	W06
	.byte		        Ds0 , v044
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		        GsM1, v108
	.byte	W06
	.byte		        GsM1, v068
	.byte	W06
	.byte		        GsM1, v100
	.byte	W06
	.byte		        AnM1, v112
	.byte	W06
	.byte		        AnM1, v052
	.byte	W06
	.byte	PEND
@ 079   ----------------------------------------
SEQ_GARLIC_2_079:
	.byte		N06   , AsM1, v127
	.byte	W06
	.byte		        AsM1, v036
	.byte	W06
	.byte		        BnM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v040
	.byte	W06
	.byte		        Ds0 , v068
	.byte	W06
	.byte		        Ds0 , v100
	.byte	W18
	.byte		N06   
	.byte	W06
	.byte		        Dn0 , v108
	.byte	W06
	.byte		        Dn0 , v068
	.byte	W06
	.byte		        Dn0 , v100
	.byte	W06
	.byte		        Dn0 , v112
	.byte	W06
	.byte		        Cs0 , v052
	.byte	W06
	.byte	PEND
@ 080   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_078
@ 081   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_079
@ 082   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_2_078
@ 083   ----------------------------------------
	.byte		N06   , AsM1, v127
	.byte	W06
	.byte		        AsM1, v036
	.byte	W06
	.byte		        BnM1, v100
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        Cn0 , v127
	.byte	W24
	.byte		N06   
	.byte	W24
	.byte		        Cn0 , v068
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W18
@ 084   ----------------------------------------
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v108
	.byte	W18
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v084
	.byte	W06
	.byte		        Cn0 , v068
	.byte	W12
	.byte		        Cn0 , v127
	.byte	W06
	.byte		        Cn0 , v092
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W12
	.byte		        Cn0 , v088
	.byte	W06
	.byte		        Cn0 , v100
	.byte	W06
	.byte		        Cs0 , v112
	.byte	W06
	.byte		        Ds0 
	.byte	W06
@ 085   ----------------------------------------
	.byte		        Fn0 , v116
	.byte	W06
	.byte		        Fs0 , v120
	.byte	W06
	.byte		        Gs0 , v116
	.byte	W06
	.byte		        As0 , v112
	.byte	W06
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

SEQ_GARLIC_3:
	.byte	KEYSH , SEQ_GARLIC_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 3
	.byte		VOL   , 85*SEQ_GARLIC_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Dn3 , v120
	.byte		TIE   , Dn4 , v104
	.byte	W36
	.byte		N36   , Gs2 , v120
	.byte	W36
	.byte		        Dn3 
	.byte	W24
@ 001   ----------------------------------------
SEQ_GARLIC_3_001:
	.byte	W12
	.byte		N36   , Ds3 , v120
	.byte	W36
	.byte		        Dn3 
	.byte	W36
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn3 
	.byte	W24
	.byte		EOT   , Dn4 
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		        Fn3 , v120
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		N06   , Gn3 , v120
	.byte		N06   , Gn4 , v127
	.byte	W24
@ 003   ----------------------------------------
	.byte		N36   , Dn3 , v120
	.byte		TIE   , Dn4 , v104
	.byte	W36
	.byte		N36   , Gs2 , v120
	.byte	W36
	.byte		        Dn3 
	.byte	W24
@ 004   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_001
@ 005   ----------------------------------------
	.byte	W24
	.byte		N24   , Dn3 , v120
	.byte	W24
	.byte		EOT   , Dn4 
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		        Fn3 , v120
	.byte		N12   , Fn4 , v127
	.byte	W36
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W72
	.byte		MOD   , 0
	.byte		N36   , Dn3 , v120
	.byte		TIE   , Dn4 , v104
	.byte	W24
@ 008   ----------------------------------------
SEQ_GARLIC_3_008:
	.byte	W12
	.byte		N36   , Gs2 , v120
	.byte	W36
	.byte		        Dn3 
	.byte	W36
	.byte		        Ds3 
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
SEQ_GARLIC_3_009:
	.byte	W24
	.byte		N36   , Dn3 , v120
	.byte	W36
	.byte		        Gs2 
	.byte	W36
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N24   , Dn3 
	.byte	W24
	.byte		EOT   , Dn4 
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		        Fn3 , v120
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		N06   , Gn3 , v120
	.byte		N06   , Gn4 , v127
	.byte	W24
	.byte		N36   , Dn3 , v120
	.byte		TIE   , Dn4 , v104
	.byte	W24
@ 011   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_008
@ 012   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_009
@ 013   ----------------------------------------
	.byte		N24   , Dn3 , v120
	.byte	W24
	.byte		EOT   , Dn4 
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		        Fn3 , v120
	.byte		N12   , Fn4 , v127
	.byte	W60
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W48
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
@ 016   ----------------------------------------
SEQ_GARLIC_3_016:
	.byte		N24   , Fn3 , v127
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N72   , Gs3 
	.byte		N72   , Gs4 
	.byte	W72
	.byte	PEND
@ 017   ----------------------------------------
SEQ_GARLIC_3_017:
	.byte		N48   , En3 , v127
	.byte		N48   , En4 
	.byte	W48
	.byte		N24   , Fn3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N48   , Bn2 
	.byte		N48   , Bn3 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W48
@ 019   ----------------------------------------
SEQ_GARLIC_3_019:
	.byte		N24   , Fn3 , v127
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N48   , Gs3 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte	PEND
@ 020   ----------------------------------------
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
	.byte		N36   , Fn3 
	.byte		N36   , Fn4 
	.byte	W48
@ 021   ----------------------------------------
	.byte	W48
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W48
@ 022   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_016
@ 023   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_017
@ 024   ----------------------------------------
	.byte	W48
	.byte		N48   , En3 , v127
	.byte		N48   , En4 
	.byte	W48
@ 025   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_019
@ 026   ----------------------------------------
	.byte		N24   , En3 , v127
	.byte		N24   , En4 
	.byte	W24
	.byte		TIE   , Fn3 
	.byte		TIE   , Fn4 
	.byte	W72
@ 027   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fn3 
	.byte		        Fn4 
	.byte	W48
@ 028   ----------------------------------------
SEQ_GARLIC_3_028:
	.byte	W48
	.byte		N54   , An2 , v127
	.byte		N54   , En3 
	.byte	W48
	.byte	PEND
@ 029   ----------------------------------------
SEQ_GARLIC_3_029:
	.byte	W06
	.byte		N18   , Cs3 , v127
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N66   , As2 
	.byte		N66   , Fn3 
	.byte	W72
	.byte	PEND
@ 030   ----------------------------------------
	.byte		N54   , An2 
	.byte		N54   , En3 
	.byte	W54
	.byte		N18   , Cs3 
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N66   , Gs2 
	.byte		N66   , Ds3 
	.byte	W24
@ 031   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_028
@ 032   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_029
@ 033   ----------------------------------------
	.byte		VOL   , 85*SEQ_GARLIC_mvl/mxv
	.byte		TIE   , Ds2 , v127
	.byte		TIE   , En2 
	.byte		TIE   , Gs3 
	.byte		TIE   , An3 
	.byte		TIE   , Gs4 
	.byte		TIE   , An4 
	.byte	W08
	.byte		VOL   , 84*SEQ_GARLIC_mvl/mxv
	.byte	W03
	.byte		        83*SEQ_GARLIC_mvl/mxv
	.byte	W07
	.byte		        82*SEQ_GARLIC_mvl/mxv
	.byte	W06
	.byte		        81*SEQ_GARLIC_mvl/mxv
	.byte	W03
	.byte		MOD   , 1
	.byte	W03
	.byte		VOL   , 80*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W04
	.byte		        c_v-2
	.byte	W02
	.byte		VOL   , 79*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		        c_v-3
	.byte	W02
	.byte		VOL   , 78*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		        c_v-3
	.byte	W02
	.byte		MOD   , 7
	.byte	W01
	.byte		VOL   , 77*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		        c_v-4
	.byte	W02
	.byte		VOL   , 76*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		        c_v-5
	.byte	W02
	.byte		VOL   , 75*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W04
	.byte		        c_v-6
	.byte	W01
	.byte		MOD   , 14
	.byte	W01
	.byte		VOL   , 74*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-7
	.byte	W02
	.byte		VOL   , 73*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-8
	.byte	W04
	.byte		        c_v-8
	.byte	W02
	.byte		VOL   , 72*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W03
	.byte		        c_v-9
	.byte	W02
	.byte		VOL   , 71*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W03
	.byte		        c_v-10
	.byte	W01
@ 034   ----------------------------------------
	.byte	W01
	.byte		MOD   , 17
	.byte	W01
	.byte		VOL   , 70*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-10
	.byte	W03
	.byte		        c_v-11
	.byte	W02
	.byte		VOL   , 69*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W03
	.byte		        c_v-12
	.byte	W02
	.byte		VOL   , 68*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-12
	.byte	W04
	.byte		        c_v-12
	.byte	W01
	.byte		MOD   , 23
	.byte	W01
	.byte		VOL   , 67*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W03
	.byte		        c_v-13
	.byte	W02
	.byte		VOL   , 66*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-14
	.byte	W03
	.byte		        c_v-14
	.byte	W03
	.byte		VOL   , 65*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-15
	.byte	W03
	.byte		        c_v-15
	.byte	W02
	.byte		VOL   , 64*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-15
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-16
	.byte	W02
	.byte		MOD   , 31
	.byte	W01
	.byte		VOL   , 63*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-17
	.byte	W03
	.byte		        c_v-17
	.byte	W02
	.byte		VOL   , 62*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W03
	.byte		        c_v-18
	.byte	W02
	.byte		VOL   , 61*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W04
	.byte		        c_v-19
	.byte	W02
	.byte		VOL   , 60*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-19
	.byte	W03
	.byte		        c_v-20
	.byte	W01
	.byte		MOD   , 36
	.byte	W01
	.byte		VOL   , 59*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-20
	.byte	W03
	.byte		        c_v-21
	.byte	W03
	.byte		VOL   , 58*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-21
	.byte	W03
	.byte		        c_v-21
	.byte	W02
	.byte		VOL   , 57*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-22
	.byte	W03
	.byte		        c_v-22
	.byte	W02
	.byte		VOL   , 56*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-23
	.byte	W01
@ 035   ----------------------------------------
	.byte	W02
	.byte		MOD   , 47
	.byte	W01
	.byte		BEND  , c_v-23
	.byte	W02
	.byte		VOL   , 55*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-24
	.byte	W02
	.byte		VOL   , 54*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-25
	.byte	W04
	.byte		        c_v-25
	.byte	W02
	.byte		VOL   , 53*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		MOD   , 56
	.byte		BEND  , c_v-26
	.byte	W03
	.byte		        c_v-26
	.byte	W02
	.byte		VOL   , 52*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W03
	.byte		        c_v-27
	.byte	W03
	.byte		VOL   , 51*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W03
	.byte		        c_v-28
	.byte	W02
	.byte		VOL   , 50*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W03
	.byte		        c_v-29
	.byte	W02
	.byte		VOL   , 49*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-29
	.byte	W02
	.byte		MOD   , 65
	.byte	W02
	.byte		BEND  , c_v-30
	.byte	W02
	.byte		VOL   , 48*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-30
	.byte	W03
	.byte		        c_v-30
	.byte	W02
	.byte		VOL   , 47*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-31
	.byte	W03
	.byte		        c_v-31
	.byte	W03
	.byte		VOL   , 46*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W02
	.byte		MOD   , 76
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W02
	.byte		VOL   , 45*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W03
	.byte		        c_v-33
	.byte	W02
	.byte		VOL   , 44*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-33
	.byte	W04
	.byte		        c_v-34
	.byte	W03
	.byte		        c_v-34
	.byte	W02
	.byte		VOL   , 43*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W03
	.byte		        c_v-35
	.byte	W02
	.byte		VOL   , 42*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W01
@ 036   ----------------------------------------
	.byte	W01
	.byte		MOD   , 86
	.byte	W01
	.byte		VOL   , 42*SEQ_GARLIC_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-36
	.byte	W03
	.byte		        c_v-36
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v-37
	.byte	W03
	.byte		        c_v-38
	.byte	W04
	.byte		        c_v-38
	.byte	W03
	.byte		        c_v-38
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-40
	.byte	W04
	.byte		        c_v-40
	.byte	W03
	.byte		        c_v-41
	.byte	W03
	.byte		        c_v-41
	.byte	W03
	.byte		        c_v-41
	.byte	W03
	.byte		        c_v-42
	.byte	W04
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v-43
	.byte	W03
	.byte		        c_v-43
	.byte	W03
	.byte		        c_v-44
	.byte	W03
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-44
	.byte	W32
	.byte		EOT   , Ds2 
	.byte		        En2 
	.byte		        Gs3 
	.byte		        An3 
	.byte		        Gs4 
	.byte		        An4 
@ 037   ----------------------------------------
	.byte		VOL   , 85*SEQ_GARLIC_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N72   , An2 
	.byte		TIE   , Cn3 
	.byte		N72   , En3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W68
	.byte	W01
	.byte		N72   , Gs2 
	.byte		N72   , Fn3 
	.byte	W24
@ 038   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cn3 
	.byte		N72   , Gn2 
	.byte		TIE   , Bn2 
	.byte		N72   , En3 
	.byte	W48
@ 039   ----------------------------------------
	.byte	W24
	.byte		N66   , Gs2 
	.byte		N66   , Ds3 
	.byte	W72
	.byte		EOT   , Bn2 
@ 040   ----------------------------------------
	.byte		BEND  , c_v+0
	.byte		N72   , An2 
	.byte		TIE   , Cn3 
	.byte		N72   , En3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W66
	.byte	W01
	.byte		        0
	.byte	W02
	.byte		TIE   , Gs2 
	.byte		TIE   , Fn3 
	.byte	W22
	.byte		MOD   , 30
	.byte	W02
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W48
	.byte		EOT   , Gs2 
	.byte		        Cn3 
	.byte		        Fn3 
	.byte	W48
@ 043   ----------------------------------------
	.byte	W48
	.byte		MOD   , 0
	.byte		N36   , Dn3 , v120
	.byte		TIE   , Dn4 , v104
	.byte	W36
	.byte		N36   , Gs2 , v120
	.byte	W12
@ 044   ----------------------------------------
SEQ_GARLIC_3_044:
	.byte	W24
	.byte		N36   , Dn3 , v120
	.byte	W36
	.byte		        Ds3 
	.byte	W36
	.byte	PEND
@ 045   ----------------------------------------
SEQ_GARLIC_3_045:
	.byte		N36   , Dn3 , v120
	.byte	W36
	.byte		        Gs2 
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte	PEND
	.byte		EOT   , Dn4 
@ 046   ----------------------------------------
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		        Fn3 , v120
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		N06   , Gn3 , v120
	.byte		N06   , Gn4 , v127
	.byte	W24
	.byte		N36   , Dn3 , v120
	.byte		TIE   , Dn4 , v104
	.byte	W36
	.byte		N36   , Gs2 , v120
	.byte	W12
@ 047   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_044
@ 048   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_045
	.byte		EOT   , Dn4 
@ 049   ----------------------------------------
	.byte		N12   , Ds3 , v120
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		N60   , Fn3 , v120
	.byte		N60   , Fn4 , v127
	.byte	W84
@ 050   ----------------------------------------
SEQ_GARLIC_3_050:
	.byte	W24
	.byte		N48   , En3 , v127
	.byte		N48   , En4 
	.byte	W48
	.byte		N24   , Fn3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte	PEND
@ 051   ----------------------------------------
SEQ_GARLIC_3_051:
	.byte		N72   , Gs3 , v127
	.byte		N72   , Gs4 
	.byte	W72
	.byte		N48   , En3 
	.byte		N48   , En4 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
	.byte	W24
	.byte		N24   , Fn3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N48   , Bn2 
	.byte		N48   , Bn3 
	.byte	W48
@ 053   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_050
@ 054   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_051
@ 055   ----------------------------------------
	.byte	W24
	.byte		N24   , Fn3 , v127
	.byte		N24   , Fn4 
	.byte	W36
	.byte		N36   , Bn2 
	.byte		N36   , Bn3 
	.byte	W36
@ 056   ----------------------------------------
SEQ_GARLIC_3_056:
	.byte	W24
	.byte		N54   , An2 , v127
	.byte		N54   , En3 
	.byte	W54
	.byte		N18   , Cs3 
	.byte		N18   , Gs3 
	.byte	W18
	.byte	PEND
@ 057   ----------------------------------------
	.byte		N66   , As2 
	.byte		N66   , Fn3 
	.byte	W72
	.byte		N54   , An2 
	.byte		N54   , En3 
	.byte	W24
@ 058   ----------------------------------------
	.byte	W30
	.byte		N18   , Cs3 
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N66   , Gs2 
	.byte		N66   , Ds3 
	.byte	W48
@ 059   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_056
@ 060   ----------------------------------------
	.byte		N66   , As2 , v127
	.byte		N66   , Fn3 
	.byte	W72
	.byte		TIE   , Ds2 
	.byte		TIE   , En2 
	.byte		TIE   , Gs3 
	.byte		TIE   , An3 
	.byte		TIE   , Gs4 
	.byte		TIE   , An4 
	.byte	W01
	.byte		MOD   , 0
	.byte	W09
	.byte		        0
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte	W06
	.byte		MOD   , 6
	.byte		BEND  , c_v-6
	.byte	W07
@ 061   ----------------------------------------
	.byte		MOD   , 12
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		MOD   , 17
	.byte	W01
	.byte		BEND  , c_v-17
	.byte	W06
	.byte		MOD   , 23
	.byte		BEND  , c_v-22
	.byte	W07
	.byte		MOD   , 28
	.byte		BEND  , c_v-27
	.byte	W06
	.byte		MOD   , 34
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W06
	.byte		MOD   , 39
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W06
	.byte		MOD   , 45
	.byte		BEND  , c_v-42
	.byte	W07
	.byte		MOD   , 50
	.byte		BEND  , c_v-47
	.byte	W06
	.byte		MOD   , 56
	.byte	W01
	.byte		BEND  , c_v-52
	.byte	W06
	.byte		MOD   , 61
	.byte		BEND  , c_v-57
	.byte	W07
	.byte		MOD   , 66
	.byte	W03
	.byte		BEND  , c_v-64
	.byte	W24
	.byte	W02
@ 062   ----------------------------------------
	.byte	W48
	.byte		EOT   , Ds2 
	.byte		        En2 
	.byte		        Gs3 
	.byte		        An3 
	.byte		        Gs4 
	.byte		        An4 
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N72   , An2 
	.byte		TIE   , Cn3 
	.byte		N72   , En3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W21
@ 063   ----------------------------------------
SEQ_GARLIC_3_063:
	.byte	W48
	.byte		N72   , Gs2 , v127
	.byte		N72   , Fn3 
	.byte	W48
	.byte	PEND
@ 064   ----------------------------------------
	.byte	W24
	.byte		EOT   , Cn3 
	.byte		N72   , Gn2 
	.byte		TIE   , Bn2 
	.byte		N72   , En3 
	.byte	W72
@ 065   ----------------------------------------
	.byte		N66   , Gs2 
	.byte		N66   , Ds3 
	.byte	W72
	.byte		EOT   , Bn2 
	.byte		BEND  , c_v+0
	.byte		N72   , An2 
	.byte		TIE   , Cn3 
	.byte		N72   , En3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W21
@ 066   ----------------------------------------
	.byte	PATT
	 .word	SEQ_GARLIC_3_063
@ 067   ----------------------------------------
	.byte	W24
	.byte		EOT   , Cn3 
	.byte	W72
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W24
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

SEQ_GARLIC_4:
	.byte	KEYSH , SEQ_GARLIC_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 93*SEQ_GARLIC_mvl/mxv
	.byte		PAN   , c_v-64
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W72
	.byte		        c_v+63
	.byte		N03   , An4 , v020
	.byte	W01
	.byte		PAN   , c_v+62
	.byte	W05
	.byte		N03   , As4 , v024
	.byte	W02
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W03
	.byte		N03   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+53
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		N03   , An4 , v028
	.byte	W03
	.byte		PAN   , c_v+48
	.byte	W02
	.byte		BEND  , c_v-6
	.byte	W01
@ 006   ----------------------------------------
	.byte		N03   , As4 , v032
	.byte	W04
	.byte		PAN   , c_v+44
	.byte	W02
	.byte		BEND  , c_v-8
	.byte		N03   , Ds5 
	.byte	W04
	.byte		PAN   , c_v+39
	.byte	W02
	.byte		BEND  , c_v-11
	.byte		N03   , An4 , v036
	.byte	W05
	.byte		PAN   , c_v+35
	.byte	W01
	.byte		N03   , As4 , v040
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W05
	.byte		PAN   , c_v+30
	.byte		N03   , Ds5 , v036
	.byte	W02
	.byte		BEND  , c_v-15
	.byte	W04
	.byte		N03   , An4 , v044
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W04
	.byte		N03   , As4 , v048
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W02
	.byte		BEND  , c_v-20
	.byte	W03
	.byte		N03   , Ds5 , v044
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W02
	.byte		BEND  , c_v-23
	.byte	W02
	.byte		N03   , An4 , v052
	.byte	W03
	.byte		PAN   , c_v+12
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		N03   , As4 , v056
	.byte	W04
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		N03   , Ds5 , v052
	.byte	W04
	.byte		PAN   , c_v+3
	.byte	W02
	.byte		BEND  , c_v-30
	.byte		N03   , An4 , v060
	.byte	W05
	.byte		PAN   , c_v-1
	.byte	W01
	.byte		N03   , An4 , v064
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W05
	.byte		PAN   , c_v-6
	.byte		N03   , As4 
	.byte	W01
	.byte		BEND  , c_v-34
	.byte	W05
	.byte		PAN   , c_v-10
	.byte		N03   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v-37
	.byte	W04
	.byte		N03   , An4 , v072
	.byte	W01
	.byte		PAN   , c_v-15
	.byte	W02
	.byte		BEND  , c_v-39
	.byte	W03
@ 007   ----------------------------------------
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		BEND  , c_v-42
	.byte	W02
	.byte		N03   , Ds5 , v068
	.byte	W03
	.byte		PAN   , c_v-24
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W02
	.byte		N03   , An4 , v080
	.byte	W03
	.byte		PAN   , c_v-28
	.byte	W02
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		N03   , As4 
	.byte	W04
	.byte		PAN   , c_v-33
	.byte	W02
	.byte		BEND  , c_v-49
	.byte		N03   , Ds5 , v076
	.byte	W05
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		N03   , An4 , v088
	.byte	W01
	.byte		BEND  , c_v-51
	.byte	W04
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		N03   , As4 
	.byte	W01
	.byte		BEND  , c_v-53
	.byte	W05
	.byte		PAN   , c_v-46
	.byte		N03   , Ds5 , v080
	.byte	W02
	.byte		BEND  , c_v-56
	.byte	W04
	.byte		N03   , An4 , v096
	.byte	W01
	.byte		PAN   , c_v-50
	.byte	W02
	.byte		BEND  , c_v-58
	.byte	W03
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-55
	.byte	W01
	.byte		BEND  , c_v-61
	.byte	W03
	.byte		N03   , Ds5 , v088
	.byte	W02
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		N03   , An4 , v104
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W24
	.byte	W02
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W48
	.byte		        c_v+63
	.byte		N03   , An4 , v020
	.byte	W01
	.byte		PAN   , c_v+62
	.byte	W05
	.byte		N03   , As4 , v024
	.byte	W02
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W03
	.byte		N03   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+53
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		N03   , An4 , v028
	.byte	W03
	.byte		PAN   , c_v+48
	.byte	W02
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		N03   , As4 , v032
	.byte	W04
	.byte		PAN   , c_v+44
	.byte	W02
	.byte		BEND  , c_v-8
	.byte		N03   , Ds5 
	.byte	W04
	.byte		PAN   , c_v+39
	.byte	W02
	.byte		BEND  , c_v-11
	.byte		N03   , An4 , v036
	.byte	W05
	.byte		PAN   , c_v+35
	.byte	W01
	.byte		N03   , As4 , v040
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W05
@ 014   ----------------------------------------
	.byte		PAN   , c_v+30
	.byte		N03   , Ds5 , v036
	.byte	W02
	.byte		BEND  , c_v-15
	.byte	W04
	.byte		N03   , An4 , v044
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W04
	.byte		N03   , As4 , v048
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W02
	.byte		BEND  , c_v-20
	.byte	W03
	.byte		N03   , Ds5 , v044
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W02
	.byte		BEND  , c_v-23
	.byte	W02
	.byte		N03   , An4 , v052
	.byte	W03
	.byte		PAN   , c_v+12
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		N03   , As4 , v056
	.byte	W04
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		N03   , Ds5 , v052
	.byte	W04
	.byte		PAN   , c_v+3
	.byte	W02
	.byte		BEND  , c_v-30
	.byte		N03   , An4 , v060
	.byte	W05
	.byte		PAN   , c_v-1
	.byte	W01
	.byte		N03   , An4 , v064
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W05
	.byte		PAN   , c_v-6
	.byte		N03   , As4 
	.byte	W01
	.byte		BEND  , c_v-34
	.byte	W05
	.byte		PAN   , c_v-10
	.byte		N03   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v-37
	.byte	W04
	.byte		N03   , An4 , v072
	.byte	W01
	.byte		PAN   , c_v-15
	.byte	W02
	.byte		BEND  , c_v-39
	.byte	W03
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		BEND  , c_v-42
	.byte	W02
	.byte		N03   , Ds5 , v068
	.byte	W03
	.byte		PAN   , c_v-24
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W02
	.byte		N03   , An4 , v080
	.byte	W03
	.byte		PAN   , c_v-28
	.byte	W02
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		N03   , As4 
	.byte	W04
	.byte		PAN   , c_v-33
	.byte	W02
@ 015   ----------------------------------------
	.byte		BEND  , c_v-49
	.byte		N03   , Ds5 , v076
	.byte	W05
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		N03   , An4 , v088
	.byte	W01
	.byte		BEND  , c_v-51
	.byte	W04
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		N03   , As4 
	.byte	W01
	.byte		BEND  , c_v-53
	.byte	W05
	.byte		PAN   , c_v-46
	.byte		N03   , Ds5 , v080
	.byte	W02
	.byte		BEND  , c_v-56
	.byte	W04
	.byte		N03   , An4 , v096
	.byte	W01
	.byte		PAN   , c_v-50
	.byte	W02
	.byte		BEND  , c_v-58
	.byte	W03
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-55
	.byte	W01
	.byte		BEND  , c_v-61
	.byte	W03
	.byte		N03   , Ds5 , v088
	.byte	W02
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		N03   , An4 , v104
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W48
	.byte	W02
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte		VOL   , 93*SEQ_GARLIC_mvl/mxv
	.byte		BEND  , c_v-1
	.byte		N03   , An4 , v032
	.byte	W03
	.byte		PAN   , c_v-62
	.byte	W03
	.byte		N03   , As4 
	.byte	W03
	.byte		PAN   , c_v-58
	.byte	W03
	.byte		N03   , Ds5 
	.byte	W04
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		N03   , An4 , v036
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W03
	.byte		PAN   , c_v-49
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		N03   , As4 
	.byte	W02
	.byte		BEND  , c_v-5
	.byte	W04
	.byte		PAN   , c_v-45
	.byte		BEND  , c_v-6
	.byte		N03   , Ds5 
	.byte	W03
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		PAN   , c_v-40
	.byte		BEND  , c_v-7
	.byte		N03   , An4 
	.byte	W03
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-8
	.byte		N03   , As4 , v040
	.byte	W01
	.byte		PAN   , c_v-36
	.byte	W03
	.byte		BEND  , c_v-9
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		BEND  , c_v-10
	.byte	W02
	.byte		N03   , An4 
	.byte	W01
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		N03   , As4 , v044
	.byte	W02
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W02
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		N03   , Ds5 
	.byte	W02
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		N03   , An4 
	.byte	W02
	.byte		BEND  , c_v-14
	.byte	W03
	.byte		PAN   , c_v-13
	.byte	W01
	.byte		BEND  , c_v-15
	.byte		N03   , As4 
	.byte	W03
	.byte		BEND  , c_v-15
	.byte	W02
	.byte		PAN   , c_v-9
	.byte	W01
	.byte		BEND  , c_v-16
	.byte		N03   , Ds5 , v048
	.byte	W03
	.byte		BEND  , c_v-16
	.byte	W03
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v-17
	.byte		N03   , An4 
	.byte	W04
	.byte		BEND  , c_v-17
	.byte	W02
@ 034   ----------------------------------------
	.byte		N03   
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-18
	.byte	W03
	.byte		        c_v-19
	.byte	W02
	.byte		N03   , As4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v-19
	.byte	W03
	.byte		        c_v-20
	.byte	W02
	.byte		N03   , Ds5 , v052
	.byte	W02
	.byte		PAN   , c_v+9
	.byte		BEND  , c_v-20
	.byte	W03
	.byte		        c_v-21
	.byte	W01
	.byte		N03   , An4 
	.byte	W02
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		PAN   , c_v+14
	.byte	W02
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		N03   , As4 
	.byte	W02
	.byte		BEND  , c_v-23
	.byte	W02
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		BEND  , c_v-23
	.byte		N03   , Ds5 , v056
	.byte	W03
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		PAN   , c_v+23
	.byte	W02
	.byte		BEND  , c_v-24
	.byte		N03   , An4 
	.byte	W03
	.byte		BEND  , c_v-25
	.byte	W02
	.byte		PAN   , c_v+27
	.byte	W01
	.byte		BEND  , c_v-26
	.byte		N03   , As4 
	.byte	W04
	.byte		BEND  , c_v-26
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N03   , Ds5 
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W03
	.byte		        c_v-27
	.byte	W02
	.byte		N03   , An4 , v060
	.byte	W01
	.byte		PAN   , c_v+36
	.byte		BEND  , c_v-28
	.byte	W03
	.byte		        c_v-28
	.byte	W02
	.byte		N03   , As4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		BEND  , c_v-29
	.byte	W03
	.byte		        c_v-30
	.byte	W01
	.byte		N03   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+45
	.byte		BEND  , c_v-30
	.byte	W03
	.byte		        c_v-31
	.byte	W01
	.byte		N03   , An4 , v064
	.byte	W02
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		PAN   , c_v+49
	.byte	W03
	.byte		BEND  , c_v-32
	.byte		N03   , As4 
	.byte	W03
	.byte		PAN   , c_v+54
	.byte		BEND  , c_v-32
	.byte	W03
	.byte		        c_v-33
	.byte		N03   , Ds5 
	.byte	W03
	.byte		BEND  , c_v-34
	.byte	W01
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		BEND  , c_v-34
	.byte		N03   , An4 
	.byte	W04
	.byte		BEND  , c_v-35
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W01
@ 035   ----------------------------------------
	.byte		N03   , An4 , v068
	.byte	W01
	.byte		BEND  , c_v-35
	.byte	W02
	.byte		PAN   , c_v-62
	.byte	W01
	.byte		BEND  , c_v-36
	.byte	W02
	.byte		N03   , As4 
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		PAN   , c_v-58
	.byte	W01
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W02
	.byte		BEND  , c_v-38
	.byte	W02
	.byte		PAN   , c_v-54
	.byte	W01
	.byte		BEND  , c_v-38
	.byte	W01
	.byte		N03   , An4 
	.byte	W02
	.byte		BEND  , c_v-39
	.byte	W03
	.byte		PAN   , c_v-49
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		N03   , As4 , v072
	.byte	W02
	.byte		BEND  , c_v-40
	.byte	W04
	.byte		PAN   , c_v-45
	.byte		BEND  , c_v-41
	.byte		N03   , Ds5 
	.byte	W03
	.byte		BEND  , c_v-41
	.byte	W03
	.byte		PAN   , c_v-40
	.byte		BEND  , c_v-42
	.byte		N03   , An4 
	.byte	W03
	.byte		BEND  , c_v-42
	.byte	W03
	.byte		        c_v-43
	.byte		N03   , As4 , v076
	.byte	W01
	.byte		PAN   , c_v-36
	.byte	W03
	.byte		BEND  , c_v-44
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W01
	.byte		PAN   , c_v-31
	.byte	W02
	.byte		BEND  , c_v-45
	.byte	W02
	.byte		N03   , An4 
	.byte	W01
	.byte		BEND  , c_v-45
	.byte	W01
	.byte		PAN   , c_v-27
	.byte	W02
	.byte		BEND  , c_v-46
	.byte	W02
	.byte		N03   , As4 
	.byte	W02
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		PAN   , c_v-22
	.byte	W02
	.byte		BEND  , c_v-47
	.byte	W01
	.byte		N03   , Ds5 , v080
	.byte	W02
	.byte		BEND  , c_v-48
	.byte	W02
	.byte		PAN   , c_v-18
	.byte	W01
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		N03   , An4 
	.byte	W02
	.byte		BEND  , c_v-49
	.byte	W03
	.byte		PAN   , c_v-13
	.byte	W01
	.byte		BEND  , c_v-49
	.byte		N03   , As4 
	.byte	W03
	.byte		BEND  , c_v-50
	.byte	W02
	.byte		PAN   , c_v-9
	.byte	W01
	.byte		BEND  , c_v-50
	.byte		N03   , Ds5 , v084
	.byte	W03
	.byte		BEND  , c_v-51
	.byte	W03
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v-52
	.byte		N03   , An4 
	.byte	W04
	.byte		BEND  , c_v-52
	.byte	W02
@ 036   ----------------------------------------
	.byte		N03   
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-53
	.byte	W03
	.byte		        c_v-53
	.byte	W02
	.byte		N03   , As4 
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v-54
	.byte	W03
	.byte		        c_v-55
	.byte	W02
	.byte		N03   , Ds5 , v088
	.byte	W02
	.byte		PAN   , c_v+9
	.byte		BEND  , c_v-55
	.byte	W03
	.byte		        c_v-56
	.byte	W01
	.byte		N03   , An4 
	.byte	W02
	.byte		BEND  , c_v-56
	.byte	W01
	.byte		PAN   , c_v+14
	.byte	W02
	.byte		BEND  , c_v-57
	.byte	W01
	.byte		N03   , As4 
	.byte	W02
	.byte		BEND  , c_v-57
	.byte	W02
	.byte		PAN   , c_v+18
	.byte	W02
	.byte		BEND  , c_v-58
	.byte		N03   , Ds5 
	.byte	W03
	.byte		BEND  , c_v-59
	.byte	W01
	.byte		PAN   , c_v+23
	.byte	W02
	.byte		BEND  , c_v-59
	.byte		N03   , An4 , v092
	.byte	W03
	.byte		BEND  , c_v-60
	.byte	W02
	.byte		PAN   , c_v+27
	.byte	W01
	.byte		BEND  , c_v-60
	.byte		N03   , As4 
	.byte	W04
	.byte		BEND  , c_v-61
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N03   , Ds5 
	.byte	W01
	.byte		BEND  , c_v-62
	.byte	W03
	.byte		        c_v-62
	.byte	W02
	.byte		N03   , An4 , v096
	.byte	W01
	.byte		PAN   , c_v+36
	.byte		BEND  , c_v-63
	.byte	W03
	.byte		        c_v-63
	.byte	W02
	.byte		N03   , As4 
	.byte	W01
	.byte		PAN   , c_v+40
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W03
	.byte		        c_v-64
	.byte	W01
	.byte		N03   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+45
	.byte	W04
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v+49
	.byte	W03
	.byte		N03   , As4 , v100
	.byte	W03
	.byte		PAN   , c_v+54
	.byte	W03
	.byte		N03   , Ds5 
	.byte	W04
	.byte		PAN   , c_v+58
	.byte	W02
	.byte		N03   , An4 
	.byte	W05
	.byte		PAN   , c_v+63
	.byte	W01
@ 037   ----------------------------------------
	.byte		VOL   , 93*SEQ_GARLIC_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W32
	.byte		BEND  , c_v-1
	.byte	W64
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W72
	.byte	W03
	.byte		        c_v-1
	.byte	W21
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W23
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v+63
	.byte		N03   , An4 , v020
	.byte	W01
	.byte		PAN   , c_v+62
	.byte	W05
	.byte		N03   , As4 , v024
	.byte	W02
	.byte		PAN   , c_v+57
	.byte	W01
	.byte		BEND  , c_v-1
	.byte	W03
	.byte		N03   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+53
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		N03   , An4 , v028
	.byte	W03
	.byte		PAN   , c_v+48
	.byte	W02
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		N03   , As4 , v032
	.byte	W04
	.byte		PAN   , c_v+44
	.byte	W02
	.byte		BEND  , c_v-8
	.byte		N03   , Ds5 
	.byte	W04
	.byte		PAN   , c_v+39
	.byte	W02
	.byte		BEND  , c_v-11
	.byte		N03   , An4 , v036
	.byte	W05
	.byte		PAN   , c_v+35
	.byte	W01
	.byte		N03   , As4 , v040
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W05
	.byte		PAN   , c_v+30
	.byte		N03   , Ds5 , v036
	.byte	W02
	.byte		BEND  , c_v-15
	.byte	W04
	.byte		N03   , An4 , v044
	.byte	W01
	.byte		PAN   , c_v+26
	.byte	W01
	.byte		BEND  , c_v-18
	.byte	W04
	.byte		N03   , As4 , v048
	.byte	W01
	.byte		PAN   , c_v+21
	.byte	W02
	.byte		BEND  , c_v-20
	.byte	W03
	.byte		N03   , Ds5 , v044
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W02
	.byte		BEND  , c_v-23
	.byte	W02
@ 068   ----------------------------------------
	.byte		N03   , An4 , v052
	.byte	W03
	.byte		PAN   , c_v+12
	.byte	W02
	.byte		BEND  , c_v-25
	.byte	W01
	.byte		N03   , As4 , v056
	.byte	W04
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		N03   , Ds5 , v052
	.byte	W04
	.byte		PAN   , c_v+3
	.byte	W02
	.byte		BEND  , c_v-30
	.byte		N03   , An4 , v060
	.byte	W05
	.byte		PAN   , c_v-1
	.byte	W01
	.byte		N03   , An4 , v064
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W05
	.byte		PAN   , c_v-6
	.byte		N03   , As4 
	.byte	W01
	.byte		BEND  , c_v-34
	.byte	W05
	.byte		PAN   , c_v-10
	.byte		N03   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v-37
	.byte	W04
	.byte		N03   , An4 , v072
	.byte	W01
	.byte		PAN   , c_v-15
	.byte	W02
	.byte		BEND  , c_v-39
	.byte	W03
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-19
	.byte	W02
	.byte		BEND  , c_v-42
	.byte	W02
	.byte		N03   , Ds5 , v068
	.byte	W03
	.byte		PAN   , c_v-24
	.byte	W01
	.byte		BEND  , c_v-44
	.byte	W02
	.byte		N03   , An4 , v080
	.byte	W03
	.byte		PAN   , c_v-28
	.byte	W02
	.byte		BEND  , c_v-46
	.byte	W01
	.byte		N03   , As4 
	.byte	W04
	.byte		PAN   , c_v-33
	.byte	W02
	.byte		BEND  , c_v-49
	.byte		N03   , Ds5 , v076
	.byte	W05
	.byte		PAN   , c_v-37
	.byte	W01
	.byte		N03   , An4 , v088
	.byte	W01
	.byte		BEND  , c_v-51
	.byte	W04
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		N03   , As4 
	.byte	W01
	.byte		BEND  , c_v-53
	.byte	W05
	.byte		PAN   , c_v-46
	.byte		N03   , Ds5 , v080
	.byte	W02
	.byte		BEND  , c_v-56
	.byte	W04
@ 069   ----------------------------------------
	.byte		N03   , An4 , v096
	.byte	W01
	.byte		PAN   , c_v-50
	.byte	W02
	.byte		BEND  , c_v-58
	.byte	W03
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-55
	.byte	W01
	.byte		BEND  , c_v-61
	.byte	W03
	.byte		N03   , Ds5 , v088
	.byte	W02
	.byte		PAN   , c_v-59
	.byte	W02
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		N03   , An4 , v104
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W02
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		        c_v-64
	.byte	W72
@ 070   ----------------------------------------
	.byte	W28
	.byte		BEND  , c_v-1
	.byte	W68
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W24
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

SEQ_GARLIC_5:
	.byte	KEYSH , SEQ_GARLIC_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 6
	.byte		VOL   , 127*SEQ_GARLIC_mvl/mxv
	.byte		N72   , Cn1 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W72
	.byte		N72   
	.byte	W24
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W48
	.byte		        Bn0 
	.byte	W48
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte		VOL   , 127*SEQ_GARLIC_mvl/mxv
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte		        127*SEQ_GARLIC_mvl/mxv
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W48
	.byte		N72   , Cn1 
	.byte	W48
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Cn2 
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W72
	.byte		        Cn1 
	.byte	W24
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W48
	.byte		        Cn2 
	.byte	W48
@ 069   ----------------------------------------
	.byte	W24
	.byte		        Cn1 
	.byte	W72
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W24
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

SEQ_GARLIC_6:
	.byte	KEYSH , SEQ_GARLIC_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 5
	.byte		VOL   , 93*SEQ_GARLIC_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W72
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		N03   , An4 , v020
	.byte	W05
	.byte		PAN   , c_v-60
	.byte	W01
	.byte		N03   , As4 , v024
	.byte	W05
	.byte		PAN   , c_v-55
	.byte	W01
	.byte		N03   , Ds5 
	.byte	W06
	.byte		PAN   , c_v-51
	.byte		N03   , An4 , v028
	.byte	W03
@ 006   ----------------------------------------
	.byte	W03
	.byte		        As4 , v032
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W05
	.byte		N03   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte	W05
	.byte		N03   , An4 , v036
	.byte	W02
	.byte		PAN   , c_v-37
	.byte	W04
	.byte		N03   , As4 , v040
	.byte	W03
	.byte		PAN   , c_v-33
	.byte	W03
	.byte		N03   , Ds5 , v036
	.byte	W04
	.byte		PAN   , c_v-28
	.byte	W02
	.byte		N03   , An4 , v044
	.byte	W04
	.byte		PAN   , c_v-24
	.byte	W02
	.byte		N03   , As4 , v048
	.byte	W05
	.byte		PAN   , c_v-19
	.byte	W01
	.byte		N03   , Ds5 , v044
	.byte	W06
	.byte		PAN   , c_v-15
	.byte		N03   , An4 , v052
	.byte	W06
	.byte		        As4 , v056
	.byte	W01
	.byte		PAN   , c_v-10
	.byte	W05
	.byte		N03   , Ds5 , v052
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W05
	.byte		N03   , An4 , v064
	.byte	W02
	.byte		PAN   , c_v-1
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		PAN   , c_v+3
	.byte	W03
	.byte		N03   , As4 , v068
	.byte	W03
	.byte		PAN   , c_v+8
	.byte	W03
	.byte		N03   , Ds5 , v064
	.byte	W04
	.byte		PAN   , c_v+13
	.byte	W02
	.byte		N03   , An4 , v072
	.byte	W03
@ 007   ----------------------------------------
	.byte	W02
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		N03   , As4 , v076
	.byte	W06
	.byte		PAN   , c_v+22
	.byte		N03   , Ds5 , v068
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N03   , An4 , v080
	.byte	W06
	.byte		        As4 , v084
	.byte	W01
	.byte		PAN   , c_v+31
	.byte	W05
	.byte		N03   , Ds5 , v076
	.byte	W02
	.byte		PAN   , c_v+35
	.byte	W04
	.byte		N03   , An4 , v088
	.byte	W02
	.byte		PAN   , c_v+40
	.byte	W04
	.byte		N03   , As4 , v092
	.byte	W03
	.byte		PAN   , c_v+44
	.byte	W03
	.byte		N03   , Ds5 , v084
	.byte	W04
	.byte		PAN   , c_v+49
	.byte	W02
	.byte		N03   , An4 , v096
	.byte	W05
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		N03   , As4 , v100
	.byte	W05
	.byte		PAN   , c_v+58
	.byte	W01
	.byte		N03   , Ds5 , v092
	.byte	W06
	.byte		PAN   , c_v+62
	.byte		N03   , An4 , v108
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W24
	.byte	W01
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W48
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		N03   , An4 , v020
	.byte	W05
	.byte		PAN   , c_v-60
	.byte	W01
	.byte		N03   , As4 , v024
	.byte	W05
	.byte		PAN   , c_v-55
	.byte	W01
	.byte		N03   , Ds5 
	.byte	W06
	.byte		PAN   , c_v-51
	.byte		N03   , An4 , v028
	.byte	W06
	.byte		        As4 , v032
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W05
	.byte		N03   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte	W05
	.byte		N03   , An4 , v036
	.byte	W02
	.byte		PAN   , c_v-37
	.byte	W04
	.byte		N03   , As4 , v040
	.byte	W03
@ 014   ----------------------------------------
	.byte		PAN   , c_v-33
	.byte	W03
	.byte		N03   , Ds5 , v036
	.byte	W04
	.byte		PAN   , c_v-28
	.byte	W02
	.byte		N03   , An4 , v044
	.byte	W04
	.byte		PAN   , c_v-24
	.byte	W02
	.byte		N03   , As4 , v048
	.byte	W05
	.byte		PAN   , c_v-19
	.byte	W01
	.byte		N03   , Ds5 , v044
	.byte	W06
	.byte		PAN   , c_v-15
	.byte		N03   , An4 , v052
	.byte	W06
	.byte		        As4 , v056
	.byte	W01
	.byte		PAN   , c_v-10
	.byte	W05
	.byte		N03   , Ds5 , v052
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W05
	.byte		N03   , An4 , v064
	.byte	W02
	.byte		PAN   , c_v-1
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		PAN   , c_v+3
	.byte	W03
	.byte		N03   , As4 , v068
	.byte	W03
	.byte		PAN   , c_v+8
	.byte	W03
	.byte		N03   , Ds5 , v064
	.byte	W04
	.byte		PAN   , c_v+13
	.byte	W02
	.byte		N03   , An4 , v072
	.byte	W05
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		N03   , As4 , v076
	.byte	W06
	.byte		PAN   , c_v+22
	.byte		N03   , Ds5 , v068
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N03   , An4 , v080
	.byte	W06
	.byte		        As4 , v084
	.byte	W01
	.byte		PAN   , c_v+31
	.byte	W02
@ 015   ----------------------------------------
	.byte	W03
	.byte		N03   , Ds5 , v076
	.byte	W02
	.byte		PAN   , c_v+35
	.byte	W04
	.byte		N03   , An4 , v088
	.byte	W02
	.byte		PAN   , c_v+40
	.byte	W04
	.byte		N03   , As4 , v092
	.byte	W03
	.byte		PAN   , c_v+44
	.byte	W03
	.byte		N03   , Ds5 , v084
	.byte	W04
	.byte		PAN   , c_v+49
	.byte	W02
	.byte		N03   , An4 , v096
	.byte	W05
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		N03   , As4 , v100
	.byte	W05
	.byte		PAN   , c_v+58
	.byte	W01
	.byte		N03   , Ds5 , v092
	.byte	W06
	.byte		PAN   , c_v+62
	.byte		N03   , An4 , v108
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W48
	.byte	W01
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte		VOL   , 93*SEQ_GARLIC_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N03   , An4 , v032
	.byte	W03
	.byte		PAN   , c_v+59
	.byte	W03
	.byte		N03   , As4 
	.byte	W04
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W05
	.byte		PAN   , c_v+50
	.byte	W01
	.byte		N03   , An4 , v036
	.byte	W06
	.byte		PAN   , c_v+45
	.byte		N03   , As4 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N03   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W05
	.byte		N03   , As4 , v040
	.byte	W02
	.byte		PAN   , c_v+31
	.byte	W04
	.byte		N03   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+27
	.byte	W04
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		N03   , As4 , v044
	.byte	W04
	.byte		PAN   , c_v+17
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W05
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		N03   , An4 
	.byte	W05
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		N03   , As4 
	.byte	W06
	.byte		PAN   , c_v+3
	.byte		N03   , Ds5 , v048
	.byte	W06
	.byte		        An4 
	.byte	W01
	.byte		PAN   , c_v-1
	.byte	W02
@ 034   ----------------------------------------
	.byte	W03
	.byte		N03   
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W05
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W04
	.byte		N03   , Ds5 , v052
	.byte	W03
	.byte		PAN   , c_v-15
	.byte	W03
	.byte		N03   , An4 
	.byte	W04
	.byte		PAN   , c_v-20
	.byte	W02
	.byte		N03   , As4 
	.byte	W04
	.byte		PAN   , c_v-24
	.byte	W02
	.byte		N03   , Ds5 , v056
	.byte	W05
	.byte		PAN   , c_v-29
	.byte	W01
	.byte		N03   , An4 
	.byte	W06
	.byte		PAN   , c_v-34
	.byte		N03   , As4 
	.byte	W06
	.byte		PAN   , c_v-38
	.byte		N03   , Ds5 
	.byte	W06
	.byte		        An4 , v060
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W05
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-47
	.byte	W04
	.byte		N03   , Ds5 
	.byte	W03
	.byte		PAN   , c_v-52
	.byte	W03
	.byte		N03   , An4 , v064
	.byte	W03
	.byte		PAN   , c_v-57
	.byte	W03
	.byte		N03   , As4 
	.byte	W04
	.byte		PAN   , c_v-61
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W03
	.byte		N03   , An4 
	.byte	W03
@ 035   ----------------------------------------
	.byte		PAN   , c_v+63
	.byte	W03
	.byte		N03   , An4 , v068
	.byte	W03
	.byte		PAN   , c_v+59
	.byte	W03
	.byte		N03   , As4 
	.byte	W04
	.byte		PAN   , c_v+54
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W05
	.byte		PAN   , c_v+50
	.byte	W01
	.byte		N03   , An4 
	.byte	W06
	.byte		PAN   , c_v+45
	.byte		N03   , As4 , v072
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N03   , Ds5 
	.byte	W06
	.byte		        An4 
	.byte	W01
	.byte		PAN   , c_v+36
	.byte	W05
	.byte		N03   , As4 , v076
	.byte	W02
	.byte		PAN   , c_v+31
	.byte	W04
	.byte		N03   , Ds5 
	.byte	W02
	.byte		PAN   , c_v+27
	.byte	W04
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v+22
	.byte	W03
	.byte		N03   , As4 
	.byte	W04
	.byte		PAN   , c_v+17
	.byte	W02
	.byte		N03   , Ds5 , v080
	.byte	W05
	.byte		PAN   , c_v+13
	.byte	W01
	.byte		N03   , An4 
	.byte	W05
	.byte		PAN   , c_v+8
	.byte	W01
	.byte		N03   , As4 
	.byte	W06
	.byte		PAN   , c_v+3
	.byte		N03   , Ds5 , v084
	.byte	W06
	.byte		        An4 
	.byte	W01
	.byte		PAN   , c_v-1
	.byte	W02
@ 036   ----------------------------------------
	.byte	W03
	.byte		N03   
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W05
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-10
	.byte	W04
	.byte		N03   , Ds5 , v088
	.byte	W03
	.byte		PAN   , c_v-15
	.byte	W03
	.byte		N03   , An4 
	.byte	W04
	.byte		PAN   , c_v-20
	.byte	W02
	.byte		N03   , As4 
	.byte	W04
	.byte		PAN   , c_v-24
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W05
	.byte		PAN   , c_v-29
	.byte	W01
	.byte		N03   , An4 , v092
	.byte	W06
	.byte		PAN   , c_v-34
	.byte		N03   , As4 
	.byte	W06
	.byte		PAN   , c_v-38
	.byte		N03   , Ds5 
	.byte	W06
	.byte		        An4 , v096
	.byte	W01
	.byte		PAN   , c_v-43
	.byte	W05
	.byte		N03   , As4 
	.byte	W02
	.byte		PAN   , c_v-47
	.byte	W04
	.byte		N03   , Ds5 
	.byte	W03
	.byte		PAN   , c_v-52
	.byte	W03
	.byte		N03   , An4 
	.byte	W03
	.byte		PAN   , c_v-57
	.byte	W03
	.byte		N03   , As4 , v100
	.byte	W04
	.byte		PAN   , c_v-61
	.byte	W02
	.byte		N03   , Ds5 
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W03
	.byte		N03   , An4 
	.byte	W03
@ 037   ----------------------------------------
	.byte		VOL   , 93*SEQ_GARLIC_mvl/mxv
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W23
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		        c_v-64
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		N03   , An4 , v020
	.byte	W05
	.byte		PAN   , c_v-60
	.byte	W01
	.byte		N03   , As4 , v024
	.byte	W05
	.byte		PAN   , c_v-55
	.byte	W01
	.byte		N03   , Ds5 
	.byte	W06
	.byte		PAN   , c_v-51
	.byte		N03   , An4 , v028
	.byte	W06
	.byte		        As4 , v032
	.byte	W01
	.byte		PAN   , c_v-46
	.byte	W05
	.byte		N03   , Ds5 
	.byte	W01
	.byte		PAN   , c_v-42
	.byte	W05
	.byte		N03   , An4 , v036
	.byte	W02
	.byte		PAN   , c_v-37
	.byte	W04
	.byte		N03   , As4 , v040
	.byte	W03
	.byte		PAN   , c_v-33
	.byte	W03
	.byte		N03   , Ds5 , v036
	.byte	W04
	.byte		PAN   , c_v-28
	.byte	W02
	.byte		N03   , An4 , v044
	.byte	W04
	.byte		PAN   , c_v-24
	.byte	W02
	.byte		N03   , As4 , v048
	.byte	W05
	.byte		PAN   , c_v-19
	.byte	W01
	.byte		N03   , Ds5 , v044
	.byte	W03
@ 068   ----------------------------------------
	.byte	W03
	.byte		PAN   , c_v-15
	.byte		N03   , An4 , v052
	.byte	W06
	.byte		        As4 , v056
	.byte	W01
	.byte		PAN   , c_v-10
	.byte	W05
	.byte		N03   , Ds5 , v052
	.byte	W01
	.byte		PAN   , c_v-6
	.byte	W05
	.byte		N03   , An4 , v064
	.byte	W02
	.byte		PAN   , c_v-1
	.byte	W04
	.byte		N03   
	.byte	W03
	.byte		PAN   , c_v+3
	.byte	W03
	.byte		N03   , As4 , v068
	.byte	W03
	.byte		PAN   , c_v+8
	.byte	W03
	.byte		N03   , Ds5 , v064
	.byte	W04
	.byte		PAN   , c_v+13
	.byte	W02
	.byte		N03   , An4 , v072
	.byte	W05
	.byte		PAN   , c_v+17
	.byte	W01
	.byte		N03   , As4 , v076
	.byte	W06
	.byte		PAN   , c_v+22
	.byte		N03   , Ds5 , v068
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N03   , An4 , v080
	.byte	W06
	.byte		        As4 , v084
	.byte	W01
	.byte		PAN   , c_v+31
	.byte	W05
	.byte		N03   , Ds5 , v076
	.byte	W02
	.byte		PAN   , c_v+35
	.byte	W04
	.byte		N03   , An4 , v088
	.byte	W02
	.byte		PAN   , c_v+40
	.byte	W04
	.byte		N03   , As4 , v092
	.byte	W03
	.byte		PAN   , c_v+44
	.byte	W03
	.byte		N03   , Ds5 , v084
	.byte	W03
@ 069   ----------------------------------------
	.byte	W01
	.byte		PAN   , c_v+49
	.byte	W02
	.byte		N03   , An4 , v096
	.byte	W05
	.byte		PAN   , c_v+53
	.byte	W01
	.byte		N03   , As4 , v100
	.byte	W05
	.byte		PAN   , c_v+58
	.byte	W01
	.byte		N03   , Ds5 , v092
	.byte	W06
	.byte		PAN   , c_v+62
	.byte		N03   , An4 , v108
	.byte	W02
	.byte		PAN   , c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W72
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

SEQ_GARLIC:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	SEQ_GARLIC_pri	@ Priority
	.byte	SEQ_GARLIC_rev	@ Reverb.

	.word	SEQ_GARLIC_grp

	.word	SEQ_GARLIC_1
	.word	SEQ_GARLIC_2
	.word	SEQ_GARLIC_3
	.word	SEQ_GARLIC_4
	.word	SEQ_GARLIC_5
	.word	SEQ_GARLIC_6

	.end
