	.include "MPlayDef.s"

	.equ	BGM_M45_grp, voicegroup000
	.equ	BGM_M45_pri, 0
	.equ	BGM_M45_rev, 0
	.equ	BGM_M45_mvl, 64
	.equ	BGM_M45_key, 0
	.equ	BGM_M45_tbs, 1
	.equ	BGM_M45_exg, 0
	.equ	BGM_M45_cmp, 1

	.section .rodata
	.global	BGM_M45
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

BGM_M45_1:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_1:
BGM_M45_loop_1:
@ 000   ----------------------------------------
	.byte	TEMPO , 104*BGM_M45_tbs/2
	.byte		VOICE , 87
	.byte		VOL   , 120*BGM_M45_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N05   , En2 , v124
	.byte	W06
	.byte		N11   , En3 , v127
	.byte	W12
	.byte		N04   , En2 , v124
	.byte	W06
	.byte		N11   , En3 , v127
	.byte	W12
	.byte		N05   , En2 , v124
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N07   , En2 , v120
	.byte	W06
	.byte		N14   , En3 , v127
	.byte	W12
	.byte		N22   , Fn3 
	.byte	W24
@ 001   ----------------------------------------
	.byte		N05   , En2 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		N06   , En2 , v112
	.byte	W06
	.byte		N12   , En3 , v127
	.byte	W12
	.byte		N07   , En2 , v120
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N07   , En2 , v100
	.byte	W06
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v+29
	.byte	W02
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+63
	.byte	W19
@ 002   ----------------------------------------
	.byte		N05   , En2 , v124
	.byte	W01
	.byte		BEND  , c_v+59
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		N11   , En3 
	.byte	W12
	.byte		N04   , En2 , v127
	.byte	W06
	.byte		N12   , En3 , v116
	.byte	W12
	.byte		N07   , En2 , v112
	.byte	W06
	.byte		N12   , En3 , v127
	.byte	W12
	.byte		N06   , En2 , v112
	.byte	W06
	.byte		N16   , En3 , v108
	.byte	W12
	.byte		N22   , Fn3 , v127
	.byte	W24
@ 003   ----------------------------------------
	.byte		N04   , En2 , v124
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N04   , En2 , v127
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N05   , En2 , v104
	.byte	W06
	.byte		N12   , En3 , v092
	.byte	W12
	.byte		N08   , Dn3 , v116
	.byte	W06
	.byte		N09   , Bn2 , v124
	.byte	W06
	.byte		N05   , An2 , v104
	.byte	W06
	.byte		N04   , Gn2 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        En2 , v108
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		N04   , En2 , v116
	.byte	W06
	.byte		N12   , En3 , v127
	.byte	W12
	.byte		N05   , En2 , v124
	.byte	W06
	.byte		N11   , En3 , v127
	.byte	W12
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		N36   , En3 , v127
	.byte	W09
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+19
	.byte	W02
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+31
	.byte	W04
	.byte		        c_v+30
	.byte	W13
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+14
	.byte	W01
@ 005   ----------------------------------------
	.byte		        c_v+0
	.byte		N05   , En2 , v116
	.byte	W06
	.byte		N11   , En3 , v112
	.byte	W12
	.byte		N05   , En2 , v120
	.byte	W06
	.byte		N13   , En3 , v104
	.byte	W12
	.byte		N06   , En2 , v124
	.byte	W06
	.byte		N14   , En3 , v100
	.byte	W12
	.byte		N05   , En2 , v116
	.byte	W06
	.byte		N14   , En3 , v104
	.byte	W12
	.byte		N22   , Gn3 , v127
	.byte	W24
@ 006   ----------------------------------------
	.byte		N05   , En2 
	.byte	W06
	.byte		N11   , En3 , v124
	.byte	W12
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N12   , En3 , v124
	.byte	W12
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N36   , En3 , v104
	.byte	W10
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte	W03
	.byte		        c_v+23
	.byte	W15
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+17
	.byte	W01
@ 007   ----------------------------------------
	.byte		        c_v+0
	.byte		N04   , En2 , v124
	.byte	W06
	.byte		N13   , En3 , v120
	.byte	W12
	.byte		N04   , En2 , v127
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N04   , En2 
	.byte	W06
	.byte		N13   , En3 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N16   , En3 , v112
	.byte	W12
	.byte		N08   , Bn2 , v108
	.byte	W06
	.byte		        As2 , v127
	.byte	W06
	.byte		N05   , An2 , v116
	.byte	W06
	.byte		N04   , Gn2 , v112
	.byte	W06
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
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte		N05   , En2 , v124
	.byte	W06
	.byte		N11   , En3 , v127
	.byte	W11
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_1
	.byte	GOTO
	 .word	BGM_M45_loop_1
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

BGM_M45_2:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_2:
BGM_M45_loop_2:
@ 000   ----------------------------------------
	.byte		VOICE , 87
	.byte		VOL   , 64*BGM_M45_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		BEND  , c_v+6
	.byte	W08
	.byte		N05   , En2 , v124
	.byte	W06
	.byte		N11   , En3 , v127
	.byte	W12
	.byte		N04   , En2 , v124
	.byte	W06
	.byte		N11   , En3 , v127
	.byte	W12
	.byte		N05   , En2 , v124
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N07   , En2 , v120
	.byte	W06
	.byte		N14   , En3 , v127
	.byte	W12
	.byte		N22   , Fn3 
	.byte	W16
@ 001   ----------------------------------------
	.byte	W08
	.byte		N05   , En2 
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		N06   , En2 , v112
	.byte	W06
	.byte		N12   , En3 , v127
	.byte	W12
	.byte		N07   , En2 , v120
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N07   , En2 , v100
	.byte	W06
	.byte		N12   , En3 , v108
	.byte	W12
	.byte		N23   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v+29
	.byte	W02
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+63
	.byte	W11
@ 002   ----------------------------------------
	.byte	W08
	.byte		N05   , En2 , v124
	.byte	W01
	.byte		BEND  , c_v+59
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		N11   , En3 
	.byte	W12
	.byte		N04   , En2 , v127
	.byte	W06
	.byte		N12   , En3 , v116
	.byte	W12
	.byte		N07   , En2 , v112
	.byte	W06
	.byte		N12   , En3 , v127
	.byte	W12
	.byte		N06   , En2 , v112
	.byte	W06
	.byte		N16   , En3 , v108
	.byte	W12
	.byte		N22   , Fn3 , v127
	.byte	W16
@ 003   ----------------------------------------
	.byte	W08
	.byte		N04   , En2 , v124
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N04   , En2 , v127
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N05   , En2 , v104
	.byte	W06
	.byte		N12   , En3 , v092
	.byte	W12
	.byte		N08   , Dn3 , v116
	.byte	W06
	.byte		N09   , Bn2 , v124
	.byte	W06
	.byte		N05   , An2 , v104
	.byte	W04
@ 004   ----------------------------------------
	.byte	W02
	.byte		N04   , Gn2 
	.byte	W06
	.byte		        En2 , v108
	.byte	W06
	.byte		N11   , En3 
	.byte	W12
	.byte		N04   , En2 , v116
	.byte	W06
	.byte		N12   , En3 , v127
	.byte	W12
	.byte		N05   , En2 , v124
	.byte	W06
	.byte		N11   , En3 , v127
	.byte	W12
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		N36   , En3 , v127
	.byte	W09
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+19
	.byte	W02
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+31
	.byte	W04
	.byte		        c_v+30
	.byte	W09
@ 005   ----------------------------------------
	.byte	W04
	.byte		        c_v+29
	.byte	W01
	.byte		        c_v+26
	.byte	W02
	.byte		        c_v+14
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , En2 , v116
	.byte	W06
	.byte		N11   , En3 , v112
	.byte	W12
	.byte		N05   , En2 , v120
	.byte	W06
	.byte		N13   , En3 , v104
	.byte	W12
	.byte		N06   , En2 , v124
	.byte	W06
	.byte		N14   , En3 , v100
	.byte	W12
	.byte		N05   , En2 , v116
	.byte	W06
	.byte		N14   , En3 , v104
	.byte	W12
	.byte		N22   , Gn3 , v127
	.byte	W16
@ 006   ----------------------------------------
	.byte	W08
	.byte		N05   , En2 
	.byte	W06
	.byte		N11   , En3 , v124
	.byte	W12
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N12   , En3 , v124
	.byte	W12
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		N36   , En3 , v104
	.byte	W10
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+13
	.byte	W02
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+24
	.byte	W03
	.byte		        c_v+23
	.byte	W10
@ 007   ----------------------------------------
	.byte	W05
	.byte		        c_v+22
	.byte	W02
	.byte		        c_v+17
	.byte	W01
	.byte		        c_v+0
	.byte		N04   , En2 , v124
	.byte	W06
	.byte		N13   , En3 , v120
	.byte	W12
	.byte		N04   , En2 , v127
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		N04   , En2 
	.byte	W06
	.byte		N13   , En3 
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N16   , En3 , v112
	.byte	W12
	.byte		N08   , Bn2 , v108
	.byte	W06
	.byte		        As2 , v127
	.byte	W06
	.byte		N05   , An2 , v116
	.byte	W04
@ 008   ----------------------------------------
	.byte	W02
	.byte		N04   , Gn2 , v112
	.byte	W92
	.byte	W02
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
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W17
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_2
	.byte	GOTO
	 .word	BGM_M45_loop_2
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

BGM_M45_3:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_3:
BGM_M45_loop_3:
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 114*BGM_M45_mvl/mxv
	.byte		PAN   , c_v-40
	.byte		BEND  , c_v+0
	.byte		N03   , En1 , v124
	.byte		N03   , Bn1 , v104
	.byte	W06
	.byte		N06   , En1 , v100
	.byte		N05   , Bn1 , v104
	.byte	W12
	.byte		N03   , En1 , v108
	.byte		N04   , Bn1 , v112
	.byte	W06
	.byte		N07   , En1 , v120
	.byte		N06   , Bn1 , v112
	.byte	W12
	.byte		N04   , En1 , v104
	.byte		N03   , Bn1 , v116
	.byte	W06
	.byte		N07   , En1 , v127
	.byte		N07   , Bn1 
	.byte	W12
	.byte		N03   , En1 , v124
	.byte		N04   , Bn1 
	.byte	W06
	.byte		N06   , En1 , v127
	.byte		N07   , Bn1 
	.byte	W12
	.byte		N21   , Fn1 
	.byte		N23   , Cn2 
	.byte	W24
@ 001   ----------------------------------------
	.byte		N04   , En1 
	.byte		N03   , Bn1 , v124
	.byte	W06
	.byte		N06   , En1 , v108
	.byte		N06   , Bn1 , v112
	.byte	W12
	.byte		N03   , En1 , v104
	.byte		N03   , Bn1 , v116
	.byte	W06
	.byte		N09   , En1 , v124
	.byte		N08   , Bn1 , v127
	.byte	W12
	.byte		N03   , En1 , v116
	.byte		N03   , Bn1 , v104
	.byte	W06
	.byte		N07   , En1 , v124
	.byte		N07   , Bn1 , v127
	.byte	W12
	.byte		N04   , En1 , v092
	.byte		N04   , Bn1 
	.byte	W06
	.byte		N07   , En1 , v120
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N20   , Gn1 , v127
	.byte		N23   , Dn2 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N03   , En1 , v104
	.byte		N03   , Bn1 , v096
	.byte	W06
	.byte		N09   , En1 , v104
	.byte		N07   , Bn1 , v127
	.byte	W12
	.byte		N02   , En1 , v104
	.byte		N03   , Bn1 , v088
	.byte	W06
	.byte		N08   , En1 , v112
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N04   , En1 , v104
	.byte		N04   , Bn1 , v096
	.byte	W06
	.byte		N07   , En1 , v116
	.byte		N06   , Bn1 , v127
	.byte	W12
	.byte		N03   , En1 , v096
	.byte		N03   , Bn1 , v084
	.byte	W06
	.byte		N06   , En1 , v127
	.byte		N06   , Bn1 , v124
	.byte	W12
	.byte		N24   , Fn1 , v127
	.byte		N23   , Cn2 , v108
	.byte	W24
@ 003   ----------------------------------------
	.byte		N07   , En1 , v088
	.byte	W06
	.byte		N13   , Gn1 , v127
	.byte	W12
	.byte		        Gs1 , v124
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N15   , As1 , v112
	.byte	W12
	.byte		N13   , Bn1 , v116
	.byte	W12
	.byte		N07   , Dn2 , v112
	.byte	W06
	.byte		N06   , Bn1 , v104
	.byte	W06
	.byte		N05   , As1 , v088
	.byte	W06
	.byte		N07   , An1 
	.byte	W06
	.byte		N05   , Gn1 , v076
	.byte	W06
@ 004   ----------------------------------------
	.byte		N03   , En1 , v127
	.byte		N03   , Bn1 
	.byte	W06
	.byte		N05   , En1 
	.byte		N05   , Bn1 
	.byte	W12
	.byte		N03   , En1 , v116
	.byte		N03   , Bn1 , v120
	.byte	W06
	.byte		N08   , En1 , v127
	.byte		N07   , Bn1 
	.byte	W12
	.byte		N03   , En1 , v096
	.byte		N03   , Bn1 , v112
	.byte	W06
	.byte		N07   , En1 , v127
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N03   , En1 , v124
	.byte		N03   , Bn1 , v092
	.byte	W06
	.byte		N06   , En1 , v127
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N24   , Fn1 , v127
	.byte		N24   , Cn2 
	.byte	W24
@ 005   ----------------------------------------
	.byte		N02   , En1 , v104
	.byte		N02   , Bn1 , v112
	.byte	W06
	.byte		N07   , En1 
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N02   , En1 , v100
	.byte		N04   , Bn1 , v112
	.byte	W06
	.byte		N08   , En1 , v116
	.byte		N07   , Bn1 , v127
	.byte	W12
	.byte		N03   , En1 , v100
	.byte		N04   , Bn1 , v092
	.byte	W06
	.byte		N07   , En1 , v127
	.byte		N07   , Bn1 , v112
	.byte	W12
	.byte		N04   , En1 , v096
	.byte		N04   , Bn1 , v088
	.byte	W06
	.byte		N06   , En1 , v124
	.byte		N07   , Bn1 
	.byte	W12
	.byte		N22   , Gn1 , v127
	.byte		N24   , Dn2 
	.byte	W24
@ 006   ----------------------------------------
	.byte		N03   , En1 , v108
	.byte		N02   , Bn1 , v096
	.byte	W06
	.byte		N07   , En1 , v127
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N04   , En1 , v092
	.byte		N04   , Bn1 
	.byte	W06
	.byte		N05   , En1 , v127
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N04   , En1 , v112
	.byte		N04   , Bn1 , v096
	.byte	W06
	.byte		N06   , En1 , v060
	.byte		N06   , Bn1 , v120
	.byte	W12
	.byte		N03   , En1 , v112
	.byte		N03   , Bn1 , v088
	.byte	W06
	.byte		N06   , En1 , v124
	.byte		N07   , Bn1 , v116
	.byte	W12
	.byte		N24   , Fn1 , v127
	.byte		N24   , Cn2 , v120
	.byte	W24
@ 007   ----------------------------------------
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		N13   , En2 , v120
	.byte	W12
	.byte		N14   , Ds2 , v124
	.byte	W12
	.byte		N13   , Dn2 
	.byte	W12
	.byte		N14   , Bn1 , v127
	.byte	W12
	.byte		N13   , An1 , v112
	.byte	W12
	.byte		N12   , As1 , v127
	.byte	W06
	.byte		N07   , Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 , v124
	.byte	W06
	.byte		N04   , Gn1 , v127
	.byte	W06
@ 008   ----------------------------------------
BGM_M45_3_008:
	.byte		N09   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N07   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v104
	.byte	W12
	.byte		N09   , En2 , v127
	.byte	W12
	.byte		        En2 , v084
	.byte	W06
	.byte		N08   , An1 
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		N07   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N11   , Bn1 , v100
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
BGM_M45_3_009:
	.byte		N09   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v112
	.byte	W12
	.byte		N10   , En2 , v127
	.byte	W12
	.byte		N07   , En2 , v096
	.byte	W06
	.byte		N08   , Dn2 , v092
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N07   , As1 , v127
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N15   , Gn1 , v112
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
BGM_M45_3_010:
	.byte		N09   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N07   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v104
	.byte	W12
	.byte		N09   , En2 , v127
	.byte	W12
	.byte		        En2 , v084
	.byte	W06
	.byte		N08   , An1 
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		N07   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N11   , Bn1 , v100
	.byte	W11
	.byte		N02   , Ds2 , v124
	.byte	W01
	.byte	PEND
@ 011   ----------------------------------------
BGM_M45_3_011:
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		N13   , Gn2 
	.byte	W12
	.byte		N07   , Dn2 
	.byte	W06
	.byte		N11   , En2 , v116
	.byte	W12
	.byte		N14   , Bn1 , v127
	.byte	W12
	.byte		N12   , Dn2 , v124
	.byte	W12
	.byte		N15   , As1 , v120
	.byte	W12
	.byte		N07   , An1 , v116
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_008
@ 015   ----------------------------------------
BGM_M45_3_015:
	.byte		N09   , As1 , v124
	.byte	W06
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N05   , As1 , v112
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En2 , v100
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N11   , En1 , v124
	.byte	W12
	.byte		N12   , Fs1 , v112
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
	.byte		TIE   , Gn1 
	.byte		TIE   , Dn2 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        An1 
	.byte		N96   , En2 , v108
	.byte	W04
	.byte		EOT   , Gn1 
	.byte		        Dn2 
	.byte	W92
@ 018   ----------------------------------------
	.byte		N09   , En1 , v124
	.byte	W01
	.byte		EOT   , An1 
	.byte	W11
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N07   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v104
	.byte	W12
	.byte		N09   , En2 , v127
	.byte	W12
	.byte		        En2 , v084
	.byte	W06
	.byte		N08   , An1 
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		N07   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N11   , Bn1 , v100
	.byte	W12
@ 019   ----------------------------------------
BGM_M45_3_019:
	.byte		N09   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v112
	.byte	W12
	.byte		N10   , En2 , v127
	.byte	W12
	.byte		N08   , En2 , v116
	.byte	W06
	.byte		N11   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v092
	.byte	W12
	.byte		N12   , Fs1 , v116
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
	.byte		TIE   , Gn1 , v104
	.byte		TIE   , Dn2 , v108
	.byte	W96
@ 021   ----------------------------------------
	.byte		N48   , An1 , v104
	.byte		N44   , En2 , v108
	.byte	W03
	.byte		EOT   , Gn1 
	.byte		        Dn2 
	.byte	W44
	.byte	W01
	.byte		N44   
	.byte		N44   , An2 
	.byte	W48
@ 022   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte		TIE   , Fs2 
	.byte	W96
@ 023   ----------------------------------------
	.byte	W66
	.byte		EOT   , Bn1 
	.byte	W04
	.byte		        Fs2 
	.byte	W02
	.byte		N07   , Bn1 , v127
	.byte	W06
	.byte		N05   , As1 , v112
	.byte	W06
	.byte		N07   , An1 , v124
	.byte	W06
	.byte		N06   , Gn1 , v127
	.byte	W06
@ 024   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_008
@ 031   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_015
@ 032   ----------------------------------------
BGM_M45_3_032:
	.byte		TIE   , Gn1 , v104
	.byte		TIE   , Dn2 
	.byte	W96
	.byte	PEND
@ 033   ----------------------------------------
	.byte		        An1 
	.byte		N96   , En2 
	.byte	W04
	.byte		EOT   , Gn1 
	.byte		        Dn2 
	.byte	W92
@ 034   ----------------------------------------
	.byte		N09   , En1 , v124
	.byte	W01
	.byte		EOT   , An1 
	.byte	W11
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N07   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v104
	.byte	W12
	.byte		N09   , En2 , v127
	.byte	W12
	.byte		        En2 , v084
	.byte	W06
	.byte		N08   , An1 
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		N07   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N11   , Bn1 , v100
	.byte	W12
@ 035   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_3_032
@ 037   ----------------------------------------
	.byte		N48   , An1 , v104
	.byte		N44   , En2 
	.byte	W03
	.byte		EOT   , Gn1 
	.byte		        Dn2 
	.byte	W44
	.byte	W01
	.byte		N44   
	.byte		N44   , An2 
	.byte	W48
@ 038   ----------------------------------------
	.byte		TIE   , Bn1 
	.byte		TIE   , Fs2 
	.byte	W96
@ 039   ----------------------------------------
	.byte	W66
	.byte		EOT   , Bn1 
	.byte	W04
	.byte		        Fs2 
	.byte	W02
	.byte		N07   , Bn1 , v127
	.byte	W06
	.byte		N05   , As1 , v112
	.byte	W06
	.byte		N07   , An1 , v124
	.byte	W06
	.byte		N06   , Gn1 , v127
	.byte	W06
@ 040   ----------------------------------------
	.byte		N03   , En1 , v124
	.byte		N03   , Bn1 , v104
	.byte	W06
	.byte		N06   , En1 , v100
	.byte		N05   , Bn1 , v104
	.byte	W11
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_3
	.byte	GOTO
	 .word	BGM_M45_loop_3
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

BGM_M45_4:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_4:
BGM_M45_loop_4:
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 56*BGM_M45_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		BEND  , c_v+5
	.byte	W08
	.byte		N03   , En1 , v124
	.byte		N03   , Bn1 , v104
	.byte	W06
	.byte		N06   , En1 , v100
	.byte		N05   , Bn1 , v104
	.byte	W12
	.byte		N03   , En1 , v108
	.byte		N04   , Bn1 , v112
	.byte	W06
	.byte		N07   , En1 , v120
	.byte		N06   , Bn1 , v112
	.byte	W12
	.byte		N04   , En1 , v104
	.byte		N03   , Bn1 , v116
	.byte	W06
	.byte		N07   , En1 , v127
	.byte		N07   , Bn1 
	.byte	W12
	.byte		N03   , En1 , v124
	.byte		N04   , Bn1 
	.byte	W06
	.byte		N06   , En1 , v127
	.byte		N07   , Bn1 
	.byte	W12
	.byte		N21   , Fn1 
	.byte		N23   , Cn2 
	.byte	W16
@ 001   ----------------------------------------
	.byte	W08
	.byte		N04   , En1 
	.byte		N03   , Bn1 , v124
	.byte	W06
	.byte		N06   , En1 , v108
	.byte		N06   , Bn1 , v112
	.byte	W12
	.byte		N03   , En1 , v104
	.byte		N03   , Bn1 , v116
	.byte	W06
	.byte		N09   , En1 , v124
	.byte		N08   , Bn1 , v127
	.byte	W12
	.byte		N03   , En1 , v116
	.byte		N03   , Bn1 , v104
	.byte	W06
	.byte		N07   , En1 , v124
	.byte		N07   , Bn1 , v127
	.byte	W12
	.byte		N04   , En1 , v092
	.byte		N04   , Bn1 
	.byte	W06
	.byte		N07   , En1 , v120
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N20   , Gn1 , v127
	.byte		N23   , Dn2 
	.byte	W16
@ 002   ----------------------------------------
	.byte	W08
	.byte		N03   , En1 , v104
	.byte		N03   , Bn1 , v096
	.byte	W06
	.byte		N09   , En1 , v104
	.byte		N07   , Bn1 , v127
	.byte	W12
	.byte		N02   , En1 , v104
	.byte		N03   , Bn1 , v088
	.byte	W06
	.byte		N08   , En1 , v112
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N04   , En1 , v104
	.byte		N04   , Bn1 , v096
	.byte	W06
	.byte		N07   , En1 , v116
	.byte		N06   , Bn1 , v127
	.byte	W12
	.byte		N03   , En1 , v096
	.byte		N03   , Bn1 , v084
	.byte	W06
	.byte		N06   , En1 , v127
	.byte		N06   , Bn1 , v124
	.byte	W12
	.byte		N24   , Fn1 , v127
	.byte		N23   , Cn2 , v108
	.byte	W16
@ 003   ----------------------------------------
	.byte	W08
	.byte		N07   , En1 , v088
	.byte	W06
	.byte		N13   , Gn1 , v127
	.byte	W12
	.byte		        Gs1 , v124
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N15   , As1 , v112
	.byte	W12
	.byte		N13   , Bn1 , v116
	.byte	W12
	.byte		N07   , Dn2 , v112
	.byte	W06
	.byte		N06   , Bn1 , v104
	.byte	W06
	.byte		N05   , As1 , v088
	.byte	W06
	.byte		N07   , An1 
	.byte	W04
@ 004   ----------------------------------------
	.byte	W02
	.byte		N05   , Gn1 , v076
	.byte	W06
	.byte		N03   , En1 , v127
	.byte		N03   , Bn1 
	.byte	W06
	.byte		N05   , En1 
	.byte		N05   , Bn1 
	.byte	W12
	.byte		N03   , En1 , v116
	.byte		N03   , Bn1 , v120
	.byte	W06
	.byte		N08   , En1 , v127
	.byte		N07   , Bn1 
	.byte	W12
	.byte		N03   , En1 , v096
	.byte		N03   , Bn1 , v112
	.byte	W06
	.byte		N07   , En1 , v127
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N03   , En1 , v124
	.byte		N03   , Bn1 , v092
	.byte	W06
	.byte		N06   , En1 , v127
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N24   , Fn1 , v127
	.byte		N24   , Cn2 
	.byte	W16
@ 005   ----------------------------------------
	.byte	W08
	.byte		N02   , En1 , v104
	.byte		N02   , Bn1 , v112
	.byte	W06
	.byte		N07   , En1 
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N02   , En1 , v100
	.byte		N04   , Bn1 , v112
	.byte	W06
	.byte		N08   , En1 , v116
	.byte		N07   , Bn1 , v127
	.byte	W12
	.byte		N03   , En1 , v100
	.byte		N04   , Bn1 , v092
	.byte	W06
	.byte		N07   , En1 , v127
	.byte		N07   , Bn1 , v112
	.byte	W12
	.byte		N04   , En1 , v096
	.byte		N04   , Bn1 , v088
	.byte	W06
	.byte		N06   , En1 , v124
	.byte		N07   , Bn1 
	.byte	W12
	.byte		N22   , Gn1 , v127
	.byte		N24   , Dn2 
	.byte	W16
@ 006   ----------------------------------------
	.byte	W08
	.byte		N03   , En1 , v108
	.byte		N02   , Bn1 , v096
	.byte	W06
	.byte		N07   , En1 , v127
	.byte		N07   , Bn1 , v124
	.byte	W12
	.byte		N04   , En1 , v092
	.byte		N04   , Bn1 
	.byte	W06
	.byte		N05   , En1 , v127
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N04   , En1 , v112
	.byte		N04   , Bn1 , v096
	.byte	W06
	.byte		N06   , En1 , v060
	.byte		N06   , Bn1 , v120
	.byte	W12
	.byte		N03   , En1 , v112
	.byte		N03   , Bn1 , v088
	.byte	W06
	.byte		N06   , En1 , v124
	.byte		N07   , Bn1 , v116
	.byte	W12
	.byte		N24   , Fn1 , v127
	.byte		N24   , Cn2 , v120
	.byte	W16
@ 007   ----------------------------------------
	.byte	W08
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		N13   , En2 , v120
	.byte	W12
	.byte		N14   , Ds2 , v124
	.byte	W12
	.byte		N13   , Dn2 
	.byte	W12
	.byte		N14   , Bn1 , v127
	.byte	W12
	.byte		N13   , An1 , v112
	.byte	W12
	.byte		N12   , As1 , v127
	.byte	W06
	.byte		N07   , Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 , v124
	.byte	W04
@ 008   ----------------------------------------
	.byte	W02
	.byte		N04   , Gn1 , v127
	.byte	W06
	.byte		N09   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N07   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v104
	.byte	W12
	.byte		N09   , En2 , v127
	.byte	W12
	.byte		        En2 , v084
	.byte	W06
	.byte		N08   , An1 
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		N07   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N11   , Bn1 , v100
	.byte	W04
@ 009   ----------------------------------------
BGM_M45_4_009:
	.byte	W08
	.byte		N09   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v112
	.byte	W12
	.byte		N10   , En2 , v127
	.byte	W12
	.byte		N07   , En2 , v096
	.byte	W06
	.byte		N08   , Dn2 , v092
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N07   , As1 , v127
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N15   , Gn1 , v112
	.byte	W04
	.byte	PEND
@ 010   ----------------------------------------
BGM_M45_4_010:
	.byte	W08
	.byte		N09   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N07   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v104
	.byte	W12
	.byte		N09   , En2 , v127
	.byte	W12
	.byte		        En2 , v084
	.byte	W06
	.byte		N08   , An1 
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		N07   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N11   , Bn1 , v100
	.byte	W04
	.byte	PEND
@ 011   ----------------------------------------
BGM_M45_4_011:
	.byte	W07
	.byte		N02   , Ds2 , v124
	.byte	W01
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		N13   , Gn2 
	.byte	W12
	.byte		N07   , Dn2 
	.byte	W06
	.byte		N11   , En2 , v116
	.byte	W12
	.byte		N14   , Bn1 , v127
	.byte	W12
	.byte		N12   , Dn2 , v124
	.byte	W12
	.byte		N15   , As1 , v120
	.byte	W12
	.byte		N07   , An1 , v116
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W04
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_010
@ 015   ----------------------------------------
BGM_M45_4_015:
	.byte	W08
	.byte		N09   , As1 , v124
	.byte	W06
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N05   , As1 , v112
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		N11   , En2 , v100
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		N05   , Gn1 
	.byte	W06
	.byte		N11   , En1 , v124
	.byte	W12
	.byte		N12   , Fs1 , v112
	.byte	W04
	.byte	PEND
@ 016   ----------------------------------------
	.byte	W08
	.byte		TIE   , Gn1 
	.byte		TIE   , Dn2 
	.byte	W88
@ 017   ----------------------------------------
	.byte	W08
	.byte		        An1 
	.byte		N96   , En2 , v108
	.byte	W04
	.byte		EOT   , Gn1 
	.byte		        Dn2 
	.byte	W84
@ 018   ----------------------------------------
	.byte	W08
	.byte		N09   , En1 , v124
	.byte	W01
	.byte		EOT   , An1 
	.byte	W11
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N07   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v104
	.byte	W12
	.byte		N09   , En2 , v127
	.byte	W12
	.byte		        En2 , v084
	.byte	W06
	.byte		N08   , An1 
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		N07   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N11   , Bn1 , v100
	.byte	W04
@ 019   ----------------------------------------
BGM_M45_4_019:
	.byte	W08
	.byte		N09   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v112
	.byte	W12
	.byte		N10   , En2 , v127
	.byte	W12
	.byte		N08   , En2 , v116
	.byte	W06
	.byte		N11   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v092
	.byte	W12
	.byte		N12   , Fs1 , v116
	.byte	W04
	.byte	PEND
@ 020   ----------------------------------------
	.byte	W08
	.byte		TIE   , Gn1 , v104
	.byte		TIE   , Dn2 , v108
	.byte	W88
@ 021   ----------------------------------------
	.byte	W08
	.byte		N48   , An1 , v104
	.byte		N44   , En2 , v108
	.byte	W03
	.byte		EOT   , Gn1 
	.byte		        Dn2 
	.byte	W44
	.byte	W01
	.byte		N44   
	.byte		N44   , An2 
	.byte	W40
@ 022   ----------------------------------------
	.byte	W08
	.byte		TIE   , Bn1 
	.byte		TIE   , Fs2 
	.byte	W88
@ 023   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		EOT   , Bn1 
	.byte	W04
	.byte		        Fs2 
	.byte	W02
	.byte		N07   , Bn1 , v127
	.byte	W06
	.byte		N05   , As1 , v112
	.byte	W06
	.byte		N07   , An1 , v124
	.byte	W04
@ 024   ----------------------------------------
	.byte	W02
	.byte		N06   , Gn1 , v127
	.byte	W06
	.byte		N09   , En1 , v124
	.byte	W12
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N07   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v104
	.byte	W12
	.byte		N09   , En2 , v127
	.byte	W12
	.byte		        En2 , v084
	.byte	W06
	.byte		N08   , An1 
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		N07   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N11   , Bn1 , v100
	.byte	W04
@ 025   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_010
@ 029   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_015
@ 032   ----------------------------------------
BGM_M45_4_032:
	.byte	W08
	.byte		TIE   , Gn1 , v104
	.byte		TIE   , Dn2 
	.byte	W88
	.byte	PEND
@ 033   ----------------------------------------
	.byte	W08
	.byte		        An1 
	.byte		N96   , En2 
	.byte	W04
	.byte		EOT   , Gn1 
	.byte		        Dn2 
	.byte	W84
@ 034   ----------------------------------------
	.byte	W08
	.byte		N09   , En1 , v124
	.byte	W01
	.byte		EOT   , An1 
	.byte	W11
	.byte		N14   , En1 , v084
	.byte	W12
	.byte		N07   , En2 , v127
	.byte	W06
	.byte		N14   , En1 , v104
	.byte	W12
	.byte		N09   , En2 , v127
	.byte	W12
	.byte		        En2 , v084
	.byte	W06
	.byte		N08   , An1 
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte		N07   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N11   , Bn1 , v100
	.byte	W04
@ 035   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_4_032
@ 037   ----------------------------------------
	.byte	W08
	.byte		N48   , An1 , v104
	.byte		N44   , En2 
	.byte	W03
	.byte		EOT   , Gn1 
	.byte		        Dn2 
	.byte	W44
	.byte	W01
	.byte		N44   
	.byte		N44   , An2 
	.byte	W40
@ 038   ----------------------------------------
	.byte	W08
	.byte		TIE   , Bn1 
	.byte		TIE   , Fs2 
	.byte	W88
@ 039   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		EOT   , Bn1 
	.byte	W04
	.byte		        Fs2 
	.byte	W02
	.byte		N07   , Bn1 , v127
	.byte	W06
	.byte		N05   , As1 , v112
	.byte	W06
	.byte		N07   , An1 , v124
	.byte	W04
@ 040   ----------------------------------------
	.byte	W02
	.byte		N06   , Gn1 , v127
	.byte	W15
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_4
	.byte	GOTO
	 .word	BGM_M45_loop_4
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

BGM_M45_5:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_5:
BGM_M45_loop_5:
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 127*BGM_M45_mvl/mxv
	.byte		PAN   , c_v+40
	.byte		BEND  , c_v+0
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N16   , Gn4 , v120
	.byte	W18
	.byte		N18   , Gn4 , v127
	.byte	W18
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N24   , Gs4 , v127
	.byte	W24
@ 001   ----------------------------------------
BGM_M45_5_001:
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N16   , Gn4 , v120
	.byte	W18
	.byte		N18   , Gn4 , v127
	.byte	W18
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N24   , An4 , v127
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
BGM_M45_5_002:
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N16   , Gn4 , v120
	.byte	W18
	.byte		N18   , Gn4 , v127
	.byte	W18
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N24   , Gs4 , v127
	.byte	W24
	.byte	PEND
@ 003   ----------------------------------------
	.byte		N68   , As4 
	.byte	W56
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+0
	.byte	W14
@ 004   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_5_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_5_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_5_002
@ 007   ----------------------------------------
	.byte		N68   , As4 , v127
	.byte	W16
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-18
	.byte	W02
	.byte		        c_v-19
	.byte	W03
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-26
	.byte	W02
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W02
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-36
	.byte	W02
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-44
	.byte	W02
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-64
	.byte	W07
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+0
	.byte	W06
@ 008   ----------------------------------------
	.byte		TIE   , Cn3 , v112
	.byte	W32
	.byte		MOD   , 2
	.byte	W03
	.byte		        6
	.byte	W01
	.byte		        7
	.byte	W03
	.byte		        8
	.byte	W02
	.byte		        9
	.byte	W07
	.byte		        10
	.byte	W01
	.byte		        11
	.byte	W02
	.byte		        12
	.byte	W02
	.byte		        13
	.byte	W02
	.byte		        14
	.byte	W02
	.byte		        15
	.byte	W03
	.byte		        18
	.byte	W03
	.byte		        21
	.byte	W01
	.byte		        22
	.byte	W02
	.byte		        23
	.byte	W02
	.byte		        24
	.byte	W14
	.byte		        23
	.byte	W02
	.byte		        22
	.byte	W12
@ 009   ----------------------------------------
	.byte		        21
	.byte	W03
	.byte		        20
	.byte	W17
	.byte		        19
	.byte	W04
	.byte		        16
	.byte	W02
	.byte		        13
	.byte	W03
	.byte		        9
	.byte	W11
	.byte		        8
	.byte	W01
	.byte		        7
	.byte	W02
	.byte		        6
	.byte	W02
	.byte		        3
	.byte	W03
	.byte		        0
	.byte	W48
	.byte		EOT   
@ 010   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W56
	.byte	W03
	.byte		MOD   , 2
	.byte	W01
	.byte		        4
	.byte	W02
	.byte		        5
	.byte	W01
	.byte		        6
	.byte	W05
	.byte		        8
	.byte	W03
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W05
	.byte		        13
	.byte	W05
	.byte		        14
	.byte	W02
	.byte		        15
	.byte	W03
	.byte		        16
	.byte	W01
@ 011   ----------------------------------------
	.byte	W03
	.byte		        17
	.byte	W02
	.byte		        18
	.byte	W06
	.byte		        19
	.byte	W04
	.byte		        20
	.byte	W05
	.byte		        21
	.byte	W04
	.byte		        22
	.byte	W02
	.byte		        23
	.byte	W04
	.byte		        25
	.byte	W02
	.byte		        27
	.byte	W02
	.byte		        28
	.byte	W19
	.byte		        26
	.byte	W04
	.byte		        25
	.byte	W02
	.byte		        24
	.byte	W02
	.byte		        23
	.byte	W02
	.byte		        19
	.byte	W03
	.byte		        11
	.byte	W02
	.byte		        0
	.byte	W28
	.byte		EOT   
@ 012   ----------------------------------------
	.byte		TIE   , Cn3 
	.byte	W24
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        7
	.byte	W02
	.byte		        8
	.byte	W01
	.byte		        9
	.byte	W02
	.byte		        11
	.byte	W01
	.byte		        12
	.byte	W02
	.byte		        13
	.byte	W05
	.byte		        14
	.byte	W04
	.byte		        15
	.byte	W03
	.byte		        16
	.byte	W05
	.byte		        17
	.byte	W02
	.byte		        18
	.byte	W03
	.byte		        19
	.byte	W05
	.byte		        20
	.byte	W05
	.byte		        21
	.byte	W01
	.byte		        22
	.byte	W03
	.byte		        23
	.byte	W02
	.byte		        24
	.byte	W01
	.byte		        25
	.byte	W02
	.byte		        27
	.byte	W01
	.byte		        28
	.byte	W02
	.byte		        29
	.byte	W02
	.byte		        30
	.byte	W08
@ 013   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		        30
	.byte	W03
	.byte		        20
	.byte	W02
	.byte		        10
	.byte	W03
	.byte		        0
	.byte	W18
	.byte		EOT   
@ 014   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W68
	.byte	W02
	.byte		MOD   , 4
	.byte	W03
	.byte		        9
	.byte	W03
	.byte		        14
	.byte	W02
	.byte		        18
	.byte	W02
	.byte		        20
	.byte	W02
	.byte		        26
	.byte	W03
	.byte		        30
	.byte	W11
@ 015   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		        30
	.byte	W03
	.byte		        19
	.byte	W02
	.byte		        0
	.byte	W32
	.byte	W02
	.byte		EOT   
@ 016   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 017   ----------------------------------------
	.byte		        Ds3 
	.byte	W96
@ 018   ----------------------------------------
	.byte		        En3 
	.byte	W32
	.byte	W01
	.byte		MOD   , 1
	.byte	W02
	.byte		        5
	.byte	W02
	.byte		        7
	.byte	W05
	.byte		        6
	.byte	W02
	.byte		        0
	.byte	W52
@ 019   ----------------------------------------
	.byte		N96   , Fn3 
	.byte	W80
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-22
	.byte	W01
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-57
	.byte	W04
@ 020   ----------------------------------------
	.byte		        c_v+0
	.byte		N96   , Dn3 
	.byte	W96
@ 021   ----------------------------------------
	.byte		N48   , Ds3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 022   ----------------------------------------
	.byte		N80   , Gn3 , v120
	.byte	W96
@ 023   ----------------------------------------
	.byte		N76   , Gs3 , v124
	.byte	W56
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-64
	.byte	W08
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W02
@ 024   ----------------------------------------
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		N12   , En1 , v120
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N10   , En1 
	.byte	W10
	.byte		N08   , En2 , v112
	.byte	W13
	.byte		        En2 , v100
	.byte	W06
	.byte		N07   , An1 , v108
	.byte	W05
	.byte		N06   , As1 , v104
	.byte	W06
	.byte		N07   , Bn1 
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		N12   , Bn1 , v096
	.byte	W14
@ 025   ----------------------------------------
	.byte		N06   , En1 , v108
	.byte	W12
	.byte		N12   , En1 , v120
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N11   , En1 , v112
	.byte	W10
	.byte		N08   , En2 
	.byte	W14
	.byte		        En2 , v108
	.byte	W06
	.byte		N10   , Dn2 
	.byte	W07
	.byte		N07   , Bn1 , v096
	.byte	W04
	.byte		N06   , As1 , v112
	.byte	W06
	.byte		N05   , An1 , v108
	.byte	W05
	.byte		N13   , Gn1 , v100
	.byte	W14
@ 026   ----------------------------------------
	.byte		N07   , En1 , v116
	.byte	W12
	.byte		N11   , En1 , v112
	.byte	W10
	.byte		N06   , En2 , v124
	.byte	W07
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N07   , En2 , v124
	.byte	W12
	.byte		N08   , En2 , v108
	.byte	W06
	.byte		N07   , An1 , v112
	.byte	W06
	.byte		N08   , As1 
	.byte	W06
	.byte		N06   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		N14   , Bn1 , v096
	.byte	W13
@ 027   ----------------------------------------
	.byte		N44   , Dn2 , v127
	.byte	W02
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+63
	.byte	W30
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+17
	.byte	W02
	.byte		        c_v+0
	.byte	W05
	.byte		N44   , Bn1 , v120
	.byte	W14
	.byte		MOD   , 3
	.byte	W02
	.byte		        35
	.byte	W03
	.byte		        74
	.byte	W02
	.byte		        94
	.byte	W03
	.byte		        102
	.byte	W02
	.byte		        104
	.byte	W02
	.byte		        105
	.byte	W04
	.byte		        105
	.byte	W02
	.byte		        104
	.byte	W03
	.byte		        103
	.byte	W01
	.byte		        102
	.byte	W02
	.byte		        99
	.byte	W02
	.byte		        82
	.byte	W03
	.byte		        38
	.byte	W02
	.byte		        0
	.byte	W05
@ 028   ----------------------------------------
	.byte		N08   , En1 , v116
	.byte	W12
	.byte		N11   , En1 , v112
	.byte	W11
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N12   , En1 , v116
	.byte	W12
	.byte		N07   , En2 , v124
	.byte	W12
	.byte		        En2 , v100
	.byte	W06
	.byte		N11   , An1 , v112
	.byte	W06
	.byte		N07   , As1 
	.byte	W07
	.byte		N06   , Bn1 , v116
	.byte	W05
	.byte		N07   , Dn2 
	.byte	W07
	.byte		N10   , Bn1 , v096
	.byte	W12
@ 029   ----------------------------------------
	.byte		N08   , En1 , v116
	.byte	W12
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N07   , En2 , v124
	.byte	W07
	.byte		N13   , En1 , v116
	.byte	W11
	.byte		N08   , En2 , v127
	.byte	W13
	.byte		        En2 , v112
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W05
	.byte		N07   , Bn1 , v096
	.byte	W06
	.byte		N05   , As1 , v116
	.byte	W05
	.byte		        An1 , v104
	.byte	W06
	.byte		N13   , Gn1 
	.byte	W13
@ 030   ----------------------------------------
	.byte		N06   , En1 , v112
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N07   , En2 
	.byte	W06
	.byte		N15   , En1 , v116
	.byte	W13
	.byte		N07   , En2 
	.byte	W02
	.byte		N05   , Cs2 , v068
	.byte	W09
	.byte		N08   , En2 , v100
	.byte	W06
	.byte		N07   , An1 , v108
	.byte	W06
	.byte		N09   , As1 
	.byte	W07
	.byte		N07   , Bn1 
	.byte	W05
	.byte		        Dn2 
	.byte	W06
	.byte		N11   , Bn1 , v104
	.byte	W12
	.byte		N96   , An3 , v127
	.byte	W01
@ 031   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		MOD   , 7
	.byte	W02
	.byte		        20
	.byte	W03
	.byte		        31
	.byte	W02
	.byte		        43
	.byte	W03
	.byte		        51
	.byte	W02
	.byte		        56
	.byte	W03
	.byte		        61
	.byte	W02
	.byte		        64
	.byte	W02
	.byte		        66
	.byte	W10
	.byte		        67
	.byte	W02
	.byte		        68
	.byte	W03
	.byte		        69
	.byte	W06
	.byte		        65
	.byte	W02
	.byte		        60
	.byte	W03
	.byte		        57
	.byte	W01
	.byte		        56
	.byte	W04
	.byte		        55
	.byte	W01
	.byte		        54
	.byte	W02
	.byte		        53
	.byte	W02
	.byte		        46
	.byte	W03
	.byte		        39
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		MOD   , 31
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		MOD   , 21
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		MOD   , 10
	.byte	W01
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-63
	.byte	W02
@ 032   ----------------------------------------
	.byte		        c_v+0
	.byte	W01
	.byte		N42   , As3 
	.byte	W32
	.byte	W03
	.byte		N60   , Bn3 
	.byte	W60
@ 033   ----------------------------------------
	.byte	W01
	.byte		N36   , Cn4 , v116
	.byte	W32
	.byte	W03
	.byte		N60   , Cs4 , v127
	.byte	W60
@ 034   ----------------------------------------
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N11   , En1 , v127
	.byte	W13
	.byte		N06   , En2 
	.byte	W06
	.byte		N14   , En1 , v120
	.byte	W11
	.byte		N08   , En2 , v124
	.byte	W12
	.byte		N07   , En2 , v108
	.byte	W06
	.byte		        An1 , v112
	.byte	W06
	.byte		N06   , As1 , v116
	.byte	W05
	.byte		N07   , Bn1 , v112
	.byte	W07
	.byte		N06   , Dn2 , v116
	.byte	W05
	.byte		N10   , Bn1 , v108
	.byte	W13
@ 035   ----------------------------------------
	.byte		N08   , En1 , v120
	.byte	W12
	.byte		N12   , En1 , v127
	.byte	W11
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		N24   , En1 
	.byte	W13
	.byte		N06   , En2 
	.byte	W11
	.byte		N08   , En2 , v116
	.byte	W08
	.byte		        En1 , v108
	.byte	W10
	.byte		N14   , En1 , v127
	.byte	W13
	.byte		N12   , Fs1 
	.byte	W12
@ 036   ----------------------------------------
	.byte		N96   , Dn4 
	.byte	W96
@ 037   ----------------------------------------
	.byte		N48   , Ds4 
	.byte	W48
	.byte		N44   , En4 
	.byte	W48
@ 038   ----------------------------------------
	.byte		N76   , Fn4 
	.byte	W68
	.byte	W03
	.byte		TIE   , Fs4 
	.byte	W24
	.byte	W01
@ 039   ----------------------------------------
	.byte	W15
	.byte		MOD   , 2
	.byte	W02
	.byte		        25
	.byte	W03
	.byte		        44
	.byte	W02
	.byte		        55
	.byte	W03
	.byte		        60
	.byte	W02
	.byte		        63
	.byte	W02
	.byte		        64
	.byte	W03
	.byte		        68
	.byte	W02
	.byte		        72
	.byte	W02
	.byte		        73
	.byte	W03
	.byte		        74
	.byte	W11
	.byte		        73
	.byte	W01
	.byte		        72
	.byte	W03
	.byte		        69
	.byte	W02
	.byte		        65
	.byte	W03
	.byte		        61
	.byte	W02
	.byte		        56
	.byte	W03
	.byte		        46
	.byte	W02
	.byte		        34
	.byte	W03
	.byte		        18
	.byte	W02
	.byte		        9
	.byte	W03
	.byte		        5
	.byte	W02
	.byte		        0
	.byte	W19
	.byte		EOT   
	.byte	W01
@ 040   ----------------------------------------
	.byte		N17   , Gn4 , v116
	.byte	W17
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_5
	.byte	GOTO
	 .word	BGM_M45_loop_5
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

BGM_M45_6:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_6:
BGM_M45_loop_6:
@ 000   ----------------------------------------
	.byte		VOICE , 30
	.byte		VOL   , 70*BGM_M45_mvl/mxv
	.byte		PAN   , c_v+20
	.byte		BEND  , c_v+1
	.byte	W08
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N16   , Gn4 , v120
	.byte	W18
	.byte		N18   , Gn4 , v127
	.byte	W18
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N24   , Gs4 , v127
	.byte	W16
@ 001   ----------------------------------------
BGM_M45_6_001:
	.byte	W08
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N16   , Gn4 , v120
	.byte	W18
	.byte		N18   , Gn4 , v127
	.byte	W18
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N24   , An4 , v127
	.byte	W16
	.byte	PEND
@ 002   ----------------------------------------
BGM_M45_6_002:
	.byte	W08
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N16   , Gn4 , v120
	.byte	W18
	.byte		N18   , Gn4 , v127
	.byte	W18
	.byte		N17   , Gn4 , v116
	.byte	W18
	.byte		N24   , Gs4 , v127
	.byte	W16
	.byte	PEND
@ 003   ----------------------------------------
	.byte	W08
	.byte		N68   , As4 
	.byte	W56
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-5
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-20
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-41
	.byte	W02
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-57
	.byte	W02
	.byte		        c_v-52
	.byte	W01
	.byte		        c_v-40
	.byte	W01
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v+0
	.byte	W06
@ 004   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_6_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_6_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_6_002
@ 007   ----------------------------------------
	.byte	W08
	.byte		N68   , As4 , v127
	.byte	W16
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-9
	.byte	W02
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-13
	.byte	W03
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W02
	.byte		        c_v-16
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-18
	.byte	W02
	.byte		        c_v-19
	.byte	W03
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-21
	.byte	W02
	.byte		        c_v-22
	.byte	W02
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-24
	.byte	W02
	.byte		        c_v-25
	.byte	W02
	.byte		        c_v-26
	.byte	W02
	.byte		        c_v-27
	.byte	W01
	.byte		        c_v-28
	.byte	W02
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-31
	.byte	W02
	.byte		        c_v-32
	.byte	W01
	.byte		        c_v-34
	.byte	W01
	.byte		        c_v-36
	.byte	W02
	.byte		        c_v-37
	.byte	W01
	.byte		        c_v-39
	.byte	W01
	.byte		        c_v-41
	.byte	W01
	.byte		        c_v-44
	.byte	W02
	.byte		        c_v-49
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-58
	.byte	W01
	.byte		        c_v-59
	.byte	W02
	.byte		        c_v-64
	.byte	W07
	.byte		        c_v-61
	.byte	W01
	.byte		        c_v-37
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+1
	.byte	W01
@ 008   ----------------------------------------
	.byte		        c_v+5
	.byte	W02
	.byte		        c_v+0
	.byte	W06
	.byte		TIE   , Cn3 , v112
	.byte	W32
	.byte		MOD   , 2
	.byte	W03
	.byte		        6
	.byte	W01
	.byte		        7
	.byte	W03
	.byte		        8
	.byte	W02
	.byte		        9
	.byte	W07
	.byte		        10
	.byte	W01
	.byte		        11
	.byte	W02
	.byte		        12
	.byte	W02
	.byte		        13
	.byte	W02
	.byte		        14
	.byte	W02
	.byte		        15
	.byte	W03
	.byte		        18
	.byte	W03
	.byte		        21
	.byte	W01
	.byte		        22
	.byte	W02
	.byte		        23
	.byte	W02
	.byte		        24
	.byte	W14
	.byte		        23
	.byte	W02
	.byte		        22
	.byte	W04
@ 009   ----------------------------------------
	.byte	W08
	.byte		        21
	.byte	W03
	.byte		        20
	.byte	W17
	.byte		        19
	.byte	W04
	.byte		        16
	.byte	W02
	.byte		        13
	.byte	W03
	.byte		        9
	.byte	W11
	.byte		        8
	.byte	W01
	.byte		        7
	.byte	W02
	.byte		        6
	.byte	W02
	.byte		        3
	.byte	W03
	.byte		        0
	.byte	W40
@ 010   ----------------------------------------
	.byte	W08
	.byte		EOT   
	.byte		TIE   , Cs3 
	.byte	W56
	.byte	W03
	.byte		MOD   , 2
	.byte	W01
	.byte		        4
	.byte	W02
	.byte		        5
	.byte	W01
	.byte		        6
	.byte	W05
	.byte		        8
	.byte	W03
	.byte		        9
	.byte	W04
	.byte		        10
	.byte	W02
	.byte		        11
	.byte	W03
	.byte		        12
	.byte	W05
	.byte		        13
	.byte	W03
@ 011   ----------------------------------------
	.byte	W02
	.byte		        14
	.byte	W02
	.byte		        15
	.byte	W03
	.byte		        16
	.byte	W04
	.byte		        17
	.byte	W02
	.byte		        18
	.byte	W06
	.byte		        19
	.byte	W04
	.byte		        20
	.byte	W05
	.byte		        21
	.byte	W04
	.byte		        22
	.byte	W02
	.byte		        23
	.byte	W04
	.byte		        25
	.byte	W02
	.byte		        27
	.byte	W02
	.byte		        28
	.byte	W19
	.byte		        26
	.byte	W04
	.byte		        25
	.byte	W02
	.byte		        24
	.byte	W02
	.byte		        23
	.byte	W02
	.byte		        19
	.byte	W03
	.byte		        11
	.byte	W02
	.byte		        0
	.byte	W20
@ 012   ----------------------------------------
	.byte	W08
	.byte		EOT   
	.byte		TIE   , Cn3 
	.byte	W24
	.byte		MOD   , 1
	.byte	W04
	.byte		        2
	.byte	W02
	.byte		        3
	.byte	W01
	.byte		        4
	.byte	W02
	.byte		        6
	.byte	W01
	.byte		        7
	.byte	W02
	.byte		        8
	.byte	W01
	.byte		        9
	.byte	W02
	.byte		        11
	.byte	W01
	.byte		        12
	.byte	W02
	.byte		        13
	.byte	W05
	.byte		        14
	.byte	W04
	.byte		        15
	.byte	W03
	.byte		        16
	.byte	W05
	.byte		        17
	.byte	W02
	.byte		        18
	.byte	W03
	.byte		        19
	.byte	W05
	.byte		        20
	.byte	W05
	.byte		        21
	.byte	W01
	.byte		        22
	.byte	W03
	.byte		        23
	.byte	W02
	.byte		        24
	.byte	W01
	.byte		        25
	.byte	W02
	.byte		        27
	.byte	W01
	.byte		        28
	.byte	W02
	.byte		        29
	.byte	W02
@ 013   ----------------------------------------
	.byte		        30
	.byte	W78
	.byte		        30
	.byte	W03
	.byte		        20
	.byte	W02
	.byte		        10
	.byte	W03
	.byte		        0
	.byte	W10
@ 014   ----------------------------------------
	.byte	W08
	.byte		EOT   
	.byte		TIE   , Cs3 
	.byte	W68
	.byte	W02
	.byte		MOD   , 4
	.byte	W03
	.byte		        9
	.byte	W03
	.byte		        14
	.byte	W02
	.byte		        18
	.byte	W02
	.byte		        20
	.byte	W02
	.byte		        26
	.byte	W03
	.byte		        30
	.byte	W03
@ 015   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		        30
	.byte	W03
	.byte		        19
	.byte	W02
	.byte		        0
	.byte	W24
	.byte	W02
@ 016   ----------------------------------------
	.byte	W08
	.byte		EOT   
	.byte		N96   , Dn3 
	.byte	W88
@ 017   ----------------------------------------
	.byte	W08
	.byte		        Ds3 
	.byte	W88
@ 018   ----------------------------------------
	.byte	W08
	.byte		        En3 
	.byte	W32
	.byte	W01
	.byte		MOD   , 1
	.byte	W02
	.byte		        5
	.byte	W02
	.byte		        7
	.byte	W05
	.byte		        6
	.byte	W02
	.byte		        0
	.byte	W44
@ 019   ----------------------------------------
	.byte	W08
	.byte		N96   , Fn3 
	.byte	W80
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-22
	.byte	W01
@ 020   ----------------------------------------
	.byte		        c_v-30
	.byte	W01
	.byte		        c_v-40
	.byte	W02
	.byte		        c_v-47
	.byte	W01
	.byte		        c_v-57
	.byte	W04
	.byte		        c_v+0
	.byte		N96   , Dn3 
	.byte	W88
@ 021   ----------------------------------------
	.byte	W08
	.byte		N48   , Ds3 
	.byte	W48
	.byte		        Fs3 
	.byte	W40
@ 022   ----------------------------------------
	.byte	W08
	.byte		N80   , Gn3 , v120
	.byte	W88
@ 023   ----------------------------------------
	.byte	W08
	.byte		N76   , Gs3 , v124
	.byte	W56
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W02
	.byte		        c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W02
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-23
	.byte	W02
	.byte		        c_v-29
	.byte	W01
	.byte		        c_v-38
	.byte	W01
	.byte		        c_v-48
	.byte	W01
	.byte		        c_v-58
	.byte	W02
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-64
	.byte	W07
@ 024   ----------------------------------------
	.byte	W01
	.byte		        c_v-62
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-19
	.byte	W02
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		N12   , En1 , v120
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N10   , En1 
	.byte	W10
	.byte		N08   , En2 , v112
	.byte	W13
	.byte		        En2 , v100
	.byte	W06
	.byte		N07   , An1 , v108
	.byte	W05
	.byte		N06   , As1 , v104
	.byte	W06
	.byte		N07   , Bn1 
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		N12   , Bn1 , v096
	.byte	W06
@ 025   ----------------------------------------
	.byte	W08
	.byte		N06   , En1 , v108
	.byte	W12
	.byte		N12   , En1 , v120
	.byte	W12
	.byte		N05   , En2 
	.byte	W06
	.byte		N11   , En1 , v112
	.byte	W10
	.byte		N08   , En2 
	.byte	W14
	.byte		        En2 , v108
	.byte	W06
	.byte		N10   , Dn2 
	.byte	W07
	.byte		N07   , Bn1 , v096
	.byte	W04
	.byte		N06   , As1 , v112
	.byte	W06
	.byte		N05   , An1 , v108
	.byte	W05
	.byte		N13   , Gn1 , v100
	.byte	W06
@ 026   ----------------------------------------
	.byte	W08
	.byte		N07   , En1 , v116
	.byte	W12
	.byte		N11   , En1 , v112
	.byte	W10
	.byte		N06   , En2 , v124
	.byte	W07
	.byte		N11   , En1 , v116
	.byte	W12
	.byte		N07   , En2 , v124
	.byte	W12
	.byte		N08   , En2 , v108
	.byte	W06
	.byte		N07   , An1 , v112
	.byte	W06
	.byte		N08   , As1 
	.byte	W06
	.byte		N06   , Bn1 , v116
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		N14   , Bn1 , v096
	.byte	W05
@ 027   ----------------------------------------
	.byte	W08
	.byte		N44   , Dn2 , v127
	.byte	W02
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+18
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+63
	.byte	W30
	.byte		        c_v+62
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+17
	.byte	W02
	.byte		        c_v+0
	.byte	W05
	.byte		N44   , Bn1 , v120
	.byte	W14
	.byte		MOD   , 3
	.byte	W02
	.byte		        35
	.byte	W03
	.byte		        74
	.byte	W02
	.byte		        94
	.byte	W03
	.byte		        102
	.byte	W02
	.byte		        104
	.byte	W02
	.byte		        105
	.byte	W04
	.byte		        105
	.byte	W02
	.byte		        104
	.byte	W03
	.byte		        103
	.byte	W01
	.byte		        102
	.byte	W02
	.byte		        99
	.byte	W02
	.byte		        82
	.byte	W02
@ 028   ----------------------------------------
	.byte	W01
	.byte		        38
	.byte	W02
	.byte		        0
	.byte	W05
	.byte		N08   , En1 , v116
	.byte	W12
	.byte		N11   , En1 , v112
	.byte	W11
	.byte		N05   , En2 , v127
	.byte	W06
	.byte		N12   , En1 , v116
	.byte	W12
	.byte		N07   , En2 , v124
	.byte	W12
	.byte		        En2 , v100
	.byte	W06
	.byte		N11   , An1 , v112
	.byte	W06
	.byte		N07   , As1 
	.byte	W07
	.byte		N06   , Bn1 , v116
	.byte	W05
	.byte		N07   , Dn2 
	.byte	W07
	.byte		N10   , Bn1 , v096
	.byte	W04
@ 029   ----------------------------------------
	.byte	W08
	.byte		N08   , En1 , v116
	.byte	W12
	.byte		N11   , En1 , v112
	.byte	W12
	.byte		N07   , En2 , v124
	.byte	W07
	.byte		N13   , En1 , v116
	.byte	W11
	.byte		N08   , En2 , v127
	.byte	W13
	.byte		        En2 , v112
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W05
	.byte		N07   , Bn1 , v096
	.byte	W06
	.byte		N05   , As1 , v116
	.byte	W05
	.byte		        An1 , v104
	.byte	W06
	.byte		N13   , Gn1 
	.byte	W05
@ 030   ----------------------------------------
	.byte	W08
	.byte		N06   , En1 , v112
	.byte	W12
	.byte		N11   
	.byte	W11
	.byte		N07   , En2 
	.byte	W06
	.byte		N15   , En1 , v116
	.byte	W13
	.byte		N07   , En2 
	.byte	W02
	.byte		N05   , Cs2 , v068
	.byte	W09
	.byte		N08   , En2 , v100
	.byte	W06
	.byte		N07   , An1 , v108
	.byte	W06
	.byte		N09   , As1 
	.byte	W07
	.byte		N07   , Bn1 
	.byte	W05
	.byte		        Dn2 
	.byte	W06
	.byte		N11   , Bn1 , v104
	.byte	W05
@ 031   ----------------------------------------
	.byte	W07
	.byte		N96   , An3 , v127
	.byte	W24
	.byte	W03
	.byte		MOD   , 7
	.byte	W02
	.byte		        20
	.byte	W03
	.byte		        31
	.byte	W02
	.byte		        43
	.byte	W03
	.byte		        51
	.byte	W02
	.byte		        56
	.byte	W03
	.byte		        61
	.byte	W02
	.byte		        64
	.byte	W02
	.byte		        66
	.byte	W10
	.byte		        67
	.byte	W02
	.byte		        68
	.byte	W03
	.byte		        69
	.byte	W06
	.byte		        65
	.byte	W02
	.byte		        60
	.byte	W03
	.byte		        57
	.byte	W01
	.byte		        56
	.byte	W04
	.byte		        55
	.byte	W01
	.byte		        54
	.byte	W02
	.byte		        53
	.byte	W02
	.byte		        46
	.byte	W03
	.byte		        39
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		MOD   , 31
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
@ 032   ----------------------------------------
	.byte		        c_v-12
	.byte	W01
	.byte		MOD   , 21
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		        c_v-23
	.byte	W01
	.byte		MOD   , 10
	.byte	W01
	.byte		BEND  , c_v-31
	.byte	W01
	.byte		        c_v-53
	.byte	W01
	.byte		MOD   , 0
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		N42   , As3 
	.byte	W32
	.byte	W03
	.byte		N60   , Bn3 
	.byte	W52
@ 033   ----------------------------------------
	.byte	W09
	.byte		N36   , Cn4 , v116
	.byte	W32
	.byte	W03
	.byte		N60   , Cs4 , v127
	.byte	W52
@ 034   ----------------------------------------
	.byte	W08
	.byte		N08   , En1 , v124
	.byte	W12
	.byte		N11   , En1 , v127
	.byte	W13
	.byte		N06   , En2 
	.byte	W06
	.byte		N14   , En1 , v120
	.byte	W11
	.byte		N08   , En2 , v124
	.byte	W12
	.byte		N07   , En2 , v108
	.byte	W06
	.byte		        An1 , v112
	.byte	W06
	.byte		N06   , As1 , v116
	.byte	W05
	.byte		N07   , Bn1 , v112
	.byte	W07
	.byte		N06   , Dn2 , v116
	.byte	W05
	.byte		N10   , Bn1 , v108
	.byte	W05
@ 035   ----------------------------------------
	.byte	W08
	.byte		N08   , En1 , v120
	.byte	W12
	.byte		N12   , En1 , v127
	.byte	W11
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		N24   , En1 
	.byte	W13
	.byte		N06   , En2 
	.byte	W11
	.byte		N08   , En2 , v116
	.byte	W08
	.byte		        En1 , v108
	.byte	W10
	.byte		N14   , En1 , v127
	.byte	W13
	.byte		N12   , Fs1 
	.byte	W04
@ 036   ----------------------------------------
	.byte	W08
	.byte		N96   , Dn4 
	.byte	W88
@ 037   ----------------------------------------
	.byte	W08
	.byte		N48   , Ds4 
	.byte	W48
	.byte		N44   , En4 
	.byte	W40
@ 038   ----------------------------------------
	.byte	W08
	.byte		N76   , Fn4 
	.byte	W68
	.byte	W03
	.byte		TIE   , Fs4 
	.byte	W17
@ 039   ----------------------------------------
	.byte	W23
	.byte		MOD   , 2
	.byte	W02
	.byte		        25
	.byte	W03
	.byte		        44
	.byte	W02
	.byte		        55
	.byte	W03
	.byte		        60
	.byte	W02
	.byte		        63
	.byte	W02
	.byte		        64
	.byte	W03
	.byte		        68
	.byte	W02
	.byte		        72
	.byte	W02
	.byte		        73
	.byte	W03
	.byte		        74
	.byte	W11
	.byte		        73
	.byte	W01
	.byte		        72
	.byte	W03
	.byte		        69
	.byte	W02
	.byte		        65
	.byte	W03
	.byte		        61
	.byte	W02
	.byte		        56
	.byte	W03
	.byte		        46
	.byte	W02
	.byte		        34
	.byte	W03
	.byte		        18
	.byte	W02
	.byte		        9
	.byte	W03
	.byte		        5
	.byte	W02
	.byte		        0
	.byte	W12
@ 040   ----------------------------------------
	.byte	W07
	.byte		EOT   
	.byte	W10
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_6
	.byte	GOTO
	 .word	BGM_M45_loop_6
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

BGM_M45_7:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_7:
BGM_M45_loop_7:
@ 000   ----------------------------------------
	.byte		VOICE , 34
	.byte		VOL   , 127*BGM_M45_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N02   , En0 , v124
	.byte	W06
	.byte		N07   , En0 , v127
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N08   , En0 , v124
	.byte	W12
	.byte		N09   , Fn0 , v127
	.byte	W06
	.byte		N06   , Cn1 , v116
	.byte	W06
	.byte		N05   , Fn1 , v124
	.byte	W06
	.byte		N04   , Fn0 , v127
	.byte	W06
@ 001   ----------------------------------------
	.byte		N03   , En0 
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N03   , En0 , v096
	.byte	W06
	.byte		N05   , En0 , v108
	.byte	W12
	.byte		N07   , Gn0 , v120
	.byte	W06
	.byte		N06   , Dn1 , v116
	.byte	W06
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		        Gn0 
	.byte	W06
@ 002   ----------------------------------------
	.byte		N04   , En0 
	.byte	W06
	.byte		N06   , En0 , v124
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N05   , En0 , v127
	.byte	W12
	.byte		N04   , En0 , v124
	.byte	W06
	.byte		N05   , En0 , v127
	.byte	W12
	.byte		N02   , En0 , v100
	.byte	W06
	.byte		N05   , En0 , v116
	.byte	W12
	.byte		N08   , Fn0 , v108
	.byte	W06
	.byte		N07   , Cn1 , v096
	.byte	W06
	.byte		N04   , Fn1 , v112
	.byte	W06
	.byte		N05   , Fn0 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N05   , En0 , v112
	.byte	W06
	.byte		N07   , En1 , v127
	.byte	W06
	.byte		N13   , Dn1 
	.byte	W12
	.byte		N07   , Bn0 
	.byte	W12
	.byte		N04   , As0 , v080
	.byte	W06
	.byte		        An0 , v124
	.byte	W06
	.byte		        Gn0 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        En0 , v127
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N08   , Fn0 , v124
	.byte	W06
	.byte		N06   , Cn1 , v112
	.byte	W06
	.byte		N04   , Fn1 , v104
	.byte	W06
	.byte		N07   , Fn0 , v116
	.byte	W06
@ 005   ----------------------------------------
	.byte		N03   , En0 , v127
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N07   , En0 , v127
	.byte	W12
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N03   , En0 , v116
	.byte	W06
	.byte		N04   , En0 , v127
	.byte	W12
	.byte		N08   , Gn0 , v124
	.byte	W06
	.byte		N06   , Dn1 , v092
	.byte	W06
	.byte		N05   , Gn1 , v112
	.byte	W06
	.byte		        Gn0 , v124
	.byte	W06
@ 006   ----------------------------------------
	.byte		N04   , En0 , v127
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N03   , En0 , v080
	.byte	W06
	.byte		N05   , En0 , v127
	.byte	W12
	.byte		N08   , Fn0 
	.byte	W06
	.byte		N07   , Cn1 , v120
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N04   , Fn0 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N10   , En1 
	.byte	W72
	.byte		N07   , Bn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        An0 , v124
	.byte	W06
	.byte		N04   , Gn0 , v127
	.byte	W06
@ 008   ----------------------------------------
BGM_M45_7_008:
	.byte		N08   , En0 , v127
	.byte	W12
	.byte		N11   , En0 , v112
	.byte	W12
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N10   , En0 , v112
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N07   , En1 , v096
	.byte	W06
	.byte		        An0 , v092
	.byte	W06
	.byte		N06   , As0 , v096
	.byte	W06
	.byte		N08   , Bn0 , v104
	.byte	W06
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
BGM_M45_7_009:
	.byte		N07   , En0 , v100
	.byte	W12
	.byte		N11   , En0 , v096
	.byte	W12
	.byte		N06   , En1 , v116
	.byte	W06
	.byte		N11   , En0 , v104
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N07   , En1 , v096
	.byte	W06
	.byte		        Dn1 , v084
	.byte	W06
	.byte		N06   , Bn0 , v088
	.byte	W06
	.byte		N08   , As0 , v104
	.byte	W06
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   , Gn0 , v092
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
BGM_M45_7_010:
	.byte		N08   , En0 , v108
	.byte	W12
	.byte		N12   , En0 , v124
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W06
	.byte		N14   , En0 , v112
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W12
	.byte		        En1 , v104
	.byte	W06
	.byte		        An0 , v092
	.byte	W06
	.byte		        As0 , v104
	.byte	W06
	.byte		N08   , Bn0 , v100
	.byte	W06
	.byte		N06   , Dn1 , v096
	.byte	W06
	.byte		N14   , Bn0 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
BGM_M45_7_011:
	.byte		N08   , En0 , v104
	.byte	W12
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		N05   , En1 , v112
	.byte	W06
	.byte		N13   , En0 , v104
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N11   , Dn1 , v096
	.byte	W12
	.byte		        As0 , v080
	.byte	W12
	.byte		N05   , An0 , v104
	.byte	W06
	.byte		N15   , Gn0 , v092
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
BGM_M45_7_012:
	.byte		N08   , En0 , v124
	.byte	W12
	.byte		N12   , En0 , v116
	.byte	W12
	.byte		N06   , En1 , v120
	.byte	W06
	.byte		N13   , En0 , v112
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N07   , En1 , v096
	.byte	W06
	.byte		        An0 , v076
	.byte	W06
	.byte		N06   , As0 , v108
	.byte	W06
	.byte		N07   , Bn0 , v116
	.byte	W06
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		N12   , Bn0 , v100
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
BGM_M45_7_013:
	.byte		N08   , En0 , v112
	.byte	W12
	.byte		N12   , En0 , v104
	.byte	W12
	.byte		N06   , En1 , v124
	.byte	W06
	.byte		N15   , En0 , v108
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W12
	.byte		        En1 , v092
	.byte	W06
	.byte		N09   , Dn1 
	.byte	W06
	.byte		N07   , Bn0 
	.byte	W06
	.byte		        As0 , v104
	.byte	W06
	.byte		N08   , An0 , v116
	.byte	W06
	.byte		N13   , Gn0 , v100
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
BGM_M45_7_014:
	.byte		N07   , En0 , v124
	.byte	W12
	.byte		N11   , En0 , v096
	.byte	W12
	.byte		N06   , En1 , v124
	.byte	W06
	.byte		N15   , En0 , v120
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N07   , En1 , v092
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        As0 , v104
	.byte	W06
	.byte		        Bn0 , v100
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		N15   , Bn0 , v088
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
BGM_M45_7_015:
	.byte		N07   , En0 , v104
	.byte	W12
	.byte		N12   , En0 , v108
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte	W06
	.byte		N12   , En1 , v100
	.byte	W12
	.byte		N07   , Bn0 , v127
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		N11   , An0 , v088
	.byte	W12
	.byte		N09   , Gn0 , v112
	.byte	W06
	.byte		N13   , En0 , v124
	.byte	W12
	.byte		N14   , Fs0 , v104
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
BGM_M45_7_016:
	.byte		N07   , Gn0 , v127
	.byte	W12
	.byte		N13   , Gn0 , v124
	.byte	W12
	.byte		N10   , Dn1 
	.byte	W06
	.byte		N23   , Gn0 , v100
	.byte	W12
	.byte		N08   , Gn1 , v116
	.byte	W12
	.byte		N06   , Gn1 , v092
	.byte	W06
	.byte		N13   , Dn1 , v127
	.byte	W12
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
BGM_M45_7_017:
	.byte		N08   , An0 , v127
	.byte	W12
	.byte		N13   , An0 , v104
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		N16   , An0 , v100
	.byte	W12
	.byte		N08   , An1 , v127
	.byte	W12
	.byte		        An1 , v112
	.byte	W06
	.byte		N06   , En1 
	.byte	W06
	.byte		N07   , Gn1 , v120
	.byte	W06
	.byte		N08   , An1 , v127
	.byte	W06
	.byte		N07   , Gn1 , v088
	.byte	W06
	.byte		N10   , En1 , v127
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
BGM_M45_7_018:
	.byte		N08   , En0 , v124
	.byte	W12
	.byte		N11   , En0 , v120
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W06
	.byte		N14   , En0 , v116
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		        En1 , v092
	.byte	W06
	.byte		N07   , An0 , v096
	.byte	W06
	.byte		N06   , As0 , v112
	.byte	W06
	.byte		N07   , Bn0 , v104
	.byte	W06
	.byte		        Dn1 , v127
	.byte	W06
	.byte		N14   , Bn0 , v104
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
BGM_M45_7_019:
	.byte		N09   , En0 , v112
	.byte	W12
	.byte		N13   
	.byte	W12
	.byte		N07   , En1 , v124
	.byte	W06
	.byte		N16   , En0 , v104
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W12
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N12   , Bn0 , v108
	.byte	W12
	.byte		N14   , En0 , v124
	.byte	W12
	.byte		N11   , Fs0 , v120
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
BGM_M45_7_020:
	.byte		N08   , Gn0 , v127
	.byte	W12
	.byte		N13   , Gn0 , v112
	.byte	W12
	.byte		N07   , Dn1 , v127
	.byte	W06
	.byte		N15   , Gn0 , v100
	.byte	W12
	.byte		N09   , Gn1 , v127
	.byte	W12
	.byte		N07   , Gn1 , v096
	.byte	W06
	.byte		N13   , Dn1 , v127
	.byte	W12
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N15   , Gn1 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
BGM_M45_7_021:
	.byte		N08   , An0 , v127
	.byte	W12
	.byte		N13   , An0 , v104
	.byte	W12
	.byte		N06   , En1 , v112
	.byte	W06
	.byte		N21   , An0 , v100
	.byte	W12
	.byte		N07   , An1 , v127
	.byte	W12
	.byte		N09   , Dn1 , v104
	.byte	W06
	.byte		N07   , An0 , v127
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N08   , Dn1 , v127
	.byte	W06
	.byte		N07   , Cn1 , v096
	.byte	W06
	.byte		N12   , An0 , v108
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
BGM_M45_7_022:
	.byte		N07   , Bn0 , v127
	.byte	W12
	.byte		N13   , Bn0 , v084
	.byte	W12
	.byte		N09   , Fs1 , v112
	.byte	W06
	.byte		N17   , Bn0 , v096
	.byte	W12
	.byte		N08   , Bn1 , v127
	.byte	W12
	.byte		        Bn1 , v100
	.byte	W06
	.byte		N13   , Fs1 , v124
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 , v108
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
BGM_M45_7_023:
	.byte		N09   , Bn1 , v127
	.byte	W06
	.byte		N14   , An1 , v108
	.byte	W12
	.byte		N12   , Fs1 , v124
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        Ds1 , v112
	.byte	W12
	.byte		N10   , An0 , v127
	.byte	W12
	.byte		N12   , As0 
	.byte	W06
	.byte		N07   , Bn0 
	.byte	W06
	.byte		N05   , As0 , v112
	.byte	W06
	.byte		N07   , An0 , v124
	.byte	W06
	.byte		N06   , Gn0 , v127
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_7_023
@ 040   ----------------------------------------
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W11
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_7
	.byte	GOTO
	 .word	BGM_M45_loop_7
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

BGM_M45_8:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_8:
BGM_M45_loop_8:
@ 000   ----------------------------------------
	.byte		VOICE , 34
	.byte		VOL   , 115*BGM_M45_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		BEND  , c_v+0
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N02   , En0 , v124
	.byte	W06
	.byte		N07   , En0 , v127
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N08   , En0 , v124
	.byte	W12
	.byte		N09   , Fn0 , v127
	.byte	W06
	.byte		N06   , Cn1 , v116
	.byte	W06
	.byte		N05   , Fn1 , v124
	.byte	W06
	.byte		N04   , Fn0 , v127
	.byte	W06
@ 001   ----------------------------------------
	.byte		N03   , En0 
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N03   , En0 , v096
	.byte	W06
	.byte		N05   , En0 , v108
	.byte	W12
	.byte		N07   , Gn0 , v120
	.byte	W06
	.byte		N06   , Dn1 , v116
	.byte	W06
	.byte		N05   , Gn1 , v127
	.byte	W06
	.byte		        Gn0 
	.byte	W06
@ 002   ----------------------------------------
	.byte		N04   , En0 
	.byte	W06
	.byte		N06   , En0 , v124
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N05   , En0 , v127
	.byte	W12
	.byte		N04   , En0 , v124
	.byte	W06
	.byte		N05   , En0 , v127
	.byte	W12
	.byte		N02   , En0 , v100
	.byte	W06
	.byte		N05   , En0 , v116
	.byte	W12
	.byte		N08   , Fn0 , v108
	.byte	W06
	.byte		N07   , Cn1 , v096
	.byte	W06
	.byte		N04   , Fn1 , v112
	.byte	W06
	.byte		N05   , Fn0 
	.byte	W06
@ 003   ----------------------------------------
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N05   , En0 , v112
	.byte	W06
	.byte		N07   , En1 , v127
	.byte	W06
	.byte		N13   , Dn1 
	.byte	W12
	.byte		N07   , Bn0 
	.byte	W12
	.byte		N04   , As0 , v080
	.byte	W06
	.byte		        An0 , v124
	.byte	W06
	.byte		        Gn0 
	.byte	W06
@ 004   ----------------------------------------
	.byte		        En0 , v127
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N08   , Fn0 , v124
	.byte	W06
	.byte		N06   , Cn1 , v112
	.byte	W06
	.byte		N04   , Fn1 , v104
	.byte	W06
	.byte		N07   , Fn0 , v116
	.byte	W06
@ 005   ----------------------------------------
	.byte		N03   , En0 , v127
	.byte	W06
	.byte		N07   
	.byte	W12
	.byte		N03   , En0 , v112
	.byte	W06
	.byte		N07   , En0 , v127
	.byte	W12
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W12
	.byte		N03   , En0 , v116
	.byte	W06
	.byte		N04   , En0 , v127
	.byte	W12
	.byte		N08   , Gn0 , v124
	.byte	W06
	.byte		N06   , Dn1 , v092
	.byte	W06
	.byte		N05   , Gn1 , v112
	.byte	W06
	.byte		        Gn0 , v124
	.byte	W06
@ 006   ----------------------------------------
	.byte		N04   , En0 , v127
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N03   , En0 , v080
	.byte	W06
	.byte		N05   , En0 , v127
	.byte	W12
	.byte		N08   , Fn0 
	.byte	W06
	.byte		N07   , Cn1 , v120
	.byte	W06
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N04   , Fn0 
	.byte	W06
@ 007   ----------------------------------------
	.byte		N10   , En1 
	.byte	W72
	.byte		N07   , Bn0 
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		        An0 , v124
	.byte	W06
	.byte		N04   , Gn0 , v127
	.byte	W06
@ 008   ----------------------------------------
BGM_M45_8_008:
	.byte		N08   , En0 , v127
	.byte	W12
	.byte		N11   , En0 , v112
	.byte	W12
	.byte		N05   , En1 , v127
	.byte	W06
	.byte		N10   , En0 , v112
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N07   , En1 , v096
	.byte	W06
	.byte		        An0 , v092
	.byte	W06
	.byte		N06   , As0 , v096
	.byte	W06
	.byte		N08   , Bn0 , v104
	.byte	W06
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N11   , Bn0 , v092
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
BGM_M45_8_009:
	.byte		N07   , En0 , v100
	.byte	W12
	.byte		N11   , En0 , v096
	.byte	W12
	.byte		N06   , En1 , v116
	.byte	W06
	.byte		N11   , En0 , v104
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N07   , En1 , v096
	.byte	W06
	.byte		        Dn1 , v084
	.byte	W06
	.byte		N06   , Bn0 , v088
	.byte	W06
	.byte		N08   , As0 , v104
	.byte	W06
	.byte		N06   , An0 
	.byte	W06
	.byte		N12   , Gn0 , v092
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
BGM_M45_8_010:
	.byte		N08   , En0 , v108
	.byte	W12
	.byte		N12   , En0 , v124
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W06
	.byte		N14   , En0 , v112
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W12
	.byte		        En1 , v104
	.byte	W06
	.byte		        An0 , v092
	.byte	W06
	.byte		        As0 , v104
	.byte	W06
	.byte		N08   , Bn0 , v100
	.byte	W06
	.byte		N06   , Dn1 , v096
	.byte	W06
	.byte		N14   , Bn0 
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
BGM_M45_8_011:
	.byte		N08   , En0 , v104
	.byte	W12
	.byte		N12   , En0 , v096
	.byte	W12
	.byte		N05   , En1 , v112
	.byte	W06
	.byte		N13   , En0 , v104
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N11   , Dn1 , v096
	.byte	W12
	.byte		        As0 , v080
	.byte	W12
	.byte		N05   , An0 , v104
	.byte	W06
	.byte		N15   , Gn0 , v092
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
BGM_M45_8_012:
	.byte		N08   , En0 , v124
	.byte	W12
	.byte		N12   , En0 , v116
	.byte	W12
	.byte		N06   , En1 , v120
	.byte	W06
	.byte		N13   , En0 , v112
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N07   , En1 , v096
	.byte	W06
	.byte		        An0 , v076
	.byte	W06
	.byte		N06   , As0 , v108
	.byte	W06
	.byte		N07   , Bn0 , v116
	.byte	W06
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		N12   , Bn0 , v100
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
BGM_M45_8_013:
	.byte		N08   , En0 , v112
	.byte	W12
	.byte		N12   , En0 , v104
	.byte	W12
	.byte		N06   , En1 , v124
	.byte	W06
	.byte		N15   , En0 , v108
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W12
	.byte		        En1 , v092
	.byte	W06
	.byte		N09   , Dn1 
	.byte	W06
	.byte		N07   , Bn0 
	.byte	W06
	.byte		        As0 , v104
	.byte	W06
	.byte		N08   , An0 , v116
	.byte	W06
	.byte		N13   , Gn0 , v100
	.byte	W12
	.byte	PEND
@ 014   ----------------------------------------
BGM_M45_8_014:
	.byte		N07   , En0 , v124
	.byte	W12
	.byte		N11   , En0 , v096
	.byte	W12
	.byte		N06   , En1 , v124
	.byte	W06
	.byte		N15   , En0 , v120
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		N07   , En1 , v092
	.byte	W06
	.byte		        An0 
	.byte	W06
	.byte		        As0 , v104
	.byte	W06
	.byte		        Bn0 , v100
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		N15   , Bn0 , v088
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
BGM_M45_8_015:
	.byte		N07   , En0 , v104
	.byte	W12
	.byte		N12   , En0 , v108
	.byte	W12
	.byte		N06   , Bn0 , v112
	.byte	W06
	.byte		N12   , En1 , v100
	.byte	W12
	.byte		N07   , Bn0 , v127
	.byte	W06
	.byte		        As0 
	.byte	W06
	.byte		N11   , An0 , v088
	.byte	W12
	.byte		N09   , Gn0 , v112
	.byte	W06
	.byte		N13   , En0 , v124
	.byte	W12
	.byte		N14   , Fs0 , v104
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
BGM_M45_8_016:
	.byte		N07   , Gn0 , v127
	.byte	W12
	.byte		N13   , Gn0 , v124
	.byte	W12
	.byte		N10   , Dn1 
	.byte	W06
	.byte		N23   , Gn0 , v100
	.byte	W12
	.byte		N08   , Gn1 , v116
	.byte	W12
	.byte		N06   , Gn1 , v092
	.byte	W06
	.byte		N13   , Dn1 , v127
	.byte	W12
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
BGM_M45_8_017:
	.byte		N08   , An0 , v127
	.byte	W12
	.byte		N13   , An0 , v104
	.byte	W12
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		N16   , An0 , v100
	.byte	W12
	.byte		N08   , An1 , v127
	.byte	W12
	.byte		        An1 , v112
	.byte	W06
	.byte		N06   , En1 
	.byte	W06
	.byte		N07   , Gn1 , v120
	.byte	W06
	.byte		N08   , An1 , v127
	.byte	W06
	.byte		N07   , Gn1 , v088
	.byte	W06
	.byte		N10   , En1 , v127
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
BGM_M45_8_018:
	.byte		N08   , En0 , v124
	.byte	W12
	.byte		N11   , En0 , v120
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W06
	.byte		N14   , En0 , v116
	.byte	W12
	.byte		N08   , En1 , v127
	.byte	W12
	.byte		        En1 , v092
	.byte	W06
	.byte		N07   , An0 , v096
	.byte	W06
	.byte		N06   , As0 , v112
	.byte	W06
	.byte		N07   , Bn0 , v104
	.byte	W06
	.byte		        Dn1 , v127
	.byte	W06
	.byte		N14   , Bn0 , v104
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
BGM_M45_8_019:
	.byte		N09   , En0 , v112
	.byte	W12
	.byte		N13   
	.byte	W12
	.byte		N07   , En1 , v124
	.byte	W06
	.byte		N16   , En0 , v104
	.byte	W12
	.byte		N07   , En1 , v127
	.byte	W12
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		N12   , Bn0 , v108
	.byte	W12
	.byte		N14   , En0 , v124
	.byte	W12
	.byte		N11   , Fs0 , v120
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
BGM_M45_8_020:
	.byte		N08   , Gn0 , v127
	.byte	W12
	.byte		N13   , Gn0 , v112
	.byte	W12
	.byte		N07   , Dn1 , v127
	.byte	W06
	.byte		N15   , Gn0 , v100
	.byte	W12
	.byte		N09   , Gn1 , v127
	.byte	W12
	.byte		N07   , Gn1 , v096
	.byte	W06
	.byte		N13   , Dn1 , v127
	.byte	W12
	.byte		N11   , Gn0 
	.byte	W12
	.byte		N15   , Gn1 
	.byte	W12
	.byte	PEND
@ 021   ----------------------------------------
BGM_M45_8_021:
	.byte		N08   , An0 , v127
	.byte	W12
	.byte		N13   , An0 , v104
	.byte	W12
	.byte		N06   , En1 , v112
	.byte	W06
	.byte		N21   , An0 , v100
	.byte	W12
	.byte		N07   , An1 , v127
	.byte	W12
	.byte		N09   , Dn1 , v104
	.byte	W06
	.byte		N07   , An0 , v127
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N08   , Dn1 , v127
	.byte	W06
	.byte		N07   , Cn1 , v096
	.byte	W06
	.byte		N12   , An0 , v108
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
BGM_M45_8_022:
	.byte		N07   , Bn0 , v127
	.byte	W12
	.byte		N13   , Bn0 , v084
	.byte	W12
	.byte		N09   , Fs1 , v112
	.byte	W06
	.byte		N17   , Bn0 , v096
	.byte	W12
	.byte		N08   , Bn1 , v127
	.byte	W12
	.byte		        Bn1 , v100
	.byte	W06
	.byte		N13   , Fs1 , v124
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 , v108
	.byte	W12
	.byte	PEND
@ 023   ----------------------------------------
BGM_M45_8_023:
	.byte		N09   , Bn1 , v127
	.byte	W06
	.byte		N14   , An1 , v108
	.byte	W12
	.byte		N12   , Fs1 , v124
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        Ds1 , v112
	.byte	W12
	.byte		N10   , An0 , v127
	.byte	W12
	.byte		N12   , As0 
	.byte	W06
	.byte		N07   , Bn0 
	.byte	W06
	.byte		N05   , As0 , v112
	.byte	W06
	.byte		N07   , An0 , v124
	.byte	W06
	.byte		N06   , Gn0 , v127
	.byte	W06
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_017
@ 034   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_018
@ 035   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_019
@ 036   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_020
@ 037   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_021
@ 038   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_022
@ 039   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_8_023
@ 040   ----------------------------------------
	.byte		N03   , En0 , v124
	.byte	W06
	.byte		N06   , En0 , v127
	.byte	W11
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_8
	.byte	GOTO
	 .word	BGM_M45_loop_8
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

BGM_M45_9:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_9:
BGM_M45_loop_9:
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*BGM_M45_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Cn1 , v108
	.byte	W06
	.byte		N04   , Cn1 , v104
	.byte	W12
	.byte		N03   , Cn1 , v116
	.byte	W06
	.byte		N05   , Cn1 , v127
	.byte	W12
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   , Cn1 , v100
	.byte	W06
	.byte		N11   , Cn1 , v108
	.byte	W36
@ 001   ----------------------------------------
	.byte		N03   , Cn1 , v124
	.byte	W06
	.byte		N05   , Cn1 , v127
	.byte	W12
	.byte		N03   , Cn1 , v112
	.byte	W06
	.byte		N05   , Cn1 , v116
	.byte	W12
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		N05   , Cn1 , v127
	.byte	W12
	.byte		N03   , Cn1 , v096
	.byte	W06
	.byte		N05   , Cn1 , v108
	.byte	W12
	.byte		N08   , Cn1 , v127
	.byte	W24
@ 002   ----------------------------------------
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   , Cn1 , v108
	.byte	W06
	.byte		N05   , Cn1 , v104
	.byte	W12
	.byte		N03   , Cn1 , v112
	.byte	W06
	.byte		N05   , Cn1 , v104
	.byte	W12
	.byte		N02   , Cn1 , v100
	.byte	W06
	.byte		N10   , Cn1 , v124
	.byte	W36
@ 003   ----------------------------------------
	.byte	W06
	.byte		N09   , Cn1 , v127
	.byte	W18
	.byte		N10   
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N05   
	.byte	W18
	.byte		N06   
	.byte	W18
@ 004   ----------------------------------------
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N01   , Cn1 , v100
	.byte	W06
	.byte		N04   , Cn1 , v112
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   , Cn1 , v108
	.byte	W12
	.byte		N03   , Cn1 , v096
	.byte	W06
	.byte		N10   , Cn1 , v127
	.byte	W36
@ 005   ----------------------------------------
	.byte		N03   , Cn1 , v112
	.byte	W06
	.byte		N04   , Cn1 , v108
	.byte	W12
	.byte		N03   , Cn1 , v112
	.byte	W06
	.byte		N06   , Cn1 , v116
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N05   , Cn1 , v124
	.byte	W12
	.byte		N03   , Cn1 , v104
	.byte	W06
	.byte		N06   
	.byte	W36
@ 006   ----------------------------------------
	.byte		N02   , Cn1 , v124
	.byte	W06
	.byte		N05   , Cn1 , v120
	.byte	W12
	.byte		N02   , Cn1 , v116
	.byte	W06
	.byte		N05   , Cn1 , v112
	.byte	W12
	.byte		N03   , Cn1 , v120
	.byte	W06
	.byte		N05   , Cn1 , v127
	.byte	W12
	.byte		N03   , Cn1 , v116
	.byte	W06
	.byte		N09   , Cn1 , v120
	.byte	W36
@ 007   ----------------------------------------
	.byte		        Cn1 , v127
	.byte	W48
	.byte		N03   
	.byte	W06
	.byte		N08   , Cn1 , v096
	.byte	W18
	.byte		N04   , Cn1 , v127
	.byte	W24
@ 008   ----------------------------------------
BGM_M45_9_008:
	.byte		N04   , Cn1 , v112
	.byte	W12
	.byte		N03   , Cn1 , v080
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N09   , Cn1 , v108
	.byte	W30
	.byte		N02   , Cn1 , v084
	.byte	W06
	.byte		N04   , Cn1 , v100
	.byte	W18
	.byte		N05   , Cn1 , v092
	.byte	W12
	.byte	PEND
@ 009   ----------------------------------------
BGM_M45_9_009:
	.byte		N06   , Cn1 , v124
	.byte	W12
	.byte		N02   , Cn1 , v088
	.byte	W06
	.byte		N04   
	.byte	W12
	.byte		N09   , Cn1 , v084
	.byte	W30
	.byte		N02   , Cn1 , v080
	.byte	W06
	.byte		N04   , Cn1 , v092
	.byte	W18
	.byte		N05   , Cn1 , v084
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
BGM_M45_9_010:
	.byte		N07   , Cn1 , v127
	.byte	W12
	.byte		N03   , Cn1 , v088
	.byte	W06
	.byte		N04   , Cn1 , v108
	.byte	W12
	.byte		N08   , Cn1 , v104
	.byte	W30
	.byte		N01   , Cn1 , v080
	.byte	W06
	.byte		N04   , Cn1 , v104
	.byte	W18
	.byte		        Cn1 , v092
	.byte	W12
	.byte	PEND
@ 011   ----------------------------------------
BGM_M45_9_011:
	.byte		N05   , Cn1 , v127
	.byte	W12
	.byte		N03   , Cn1 , v088
	.byte	W06
	.byte		N04   , Cn1 , v104
	.byte	W12
	.byte		N07   
	.byte	W30
	.byte		N03   , Cn1 , v092
	.byte	W06
	.byte		        Cn1 , v112
	.byte	W18
	.byte		        Cn1 , v124
	.byte	W12
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_9_011
@ 040   ----------------------------------------
	.byte		N02   , Cn1 , v108
	.byte	W06
	.byte		N04   , Cn1 , v104
	.byte	W11
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_9
	.byte	GOTO
	 .word	BGM_M45_loop_9
	.byte	FINE

@**************** Track 10 (Midi-Chn.11) ****************@

BGM_M45_10:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_10:
BGM_M45_loop_10:
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*BGM_M45_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N03   , En1 , v104
	.byte	W06
	.byte		N04   , En1 , v116
	.byte	W12
	.byte		N02   , En1 , v108
	.byte	W06
	.byte		N05   , En1 , v116
	.byte	W12
	.byte		N03   , En1 , v108
	.byte	W06
	.byte		N05   , En1 , v116
	.byte	W12
	.byte		N03   , En1 , v092
	.byte	W06
	.byte		N10   , En1 , v104
	.byte	W36
@ 001   ----------------------------------------
	.byte		N03   , En1 , v112
	.byte	W06
	.byte		N04   , En1 , v116
	.byte	W12
	.byte		N02   , En1 , v100
	.byte	W06
	.byte		N05   , En1 , v112
	.byte	W12
	.byte		N02   , En1 , v108
	.byte	W06
	.byte		N06   , En1 , v112
	.byte	W12
	.byte		N02   , En1 , v100
	.byte	W06
	.byte		N06   , En1 , v108
	.byte	W12
	.byte		N08   , En1 , v116
	.byte	W24
@ 002   ----------------------------------------
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N05   , En1 , v108
	.byte	W12
	.byte		N02   , En1 , v100
	.byte	W06
	.byte		N10   
	.byte	W36
@ 003   ----------------------------------------
	.byte		N09   , En1 , v116
	.byte	W18
	.byte		N07   
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N05   , En1 , v108
	.byte	W12
	.byte		N03   , En1 , v116
	.byte	W06
	.byte		N02   
	.byte	W06
@ 004   ----------------------------------------
	.byte		N03   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N01   , En1 , v088
	.byte	W06
	.byte		N04   , En1 , v116
	.byte	W12
	.byte		N03   , En1 , v104
	.byte	W06
	.byte		N05   , En1 , v116
	.byte	W12
	.byte		N03   , En1 , v100
	.byte	W06
	.byte		N10   , En1 , v108
	.byte	W36
@ 005   ----------------------------------------
	.byte		N03   , En1 , v116
	.byte	W06
	.byte		N05   , En1 , v092
	.byte	W12
	.byte		N02   , En1 , v108
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N02   , En1 , v100
	.byte	W06
	.byte		N06   , En1 , v104
	.byte	W36
@ 006   ----------------------------------------
	.byte		N03   , En1 , v116
	.byte	W06
	.byte		N04   
	.byte	W12
	.byte		N02   
	.byte	W06
	.byte		N05   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N04   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N10   
	.byte	W36
@ 007   ----------------------------------------
	.byte		N09   
	.byte	W48
	.byte		N04   
	.byte	W18
	.byte		N03   
	.byte	W12
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N04   
	.byte	W06
@ 008   ----------------------------------------
BGM_M45_10_008:
	.byte	W24
	.byte		N06   , En1 , v112
	.byte	W18
	.byte		        En1 , v104
	.byte	W12
	.byte		N05   , En1 , v084
	.byte	W18
	.byte		N12   , En1 , v112
	.byte	W18
	.byte		N08   , En1 , v076
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
BGM_M45_10_009:
	.byte	W24
	.byte		N07   , En1 , v104
	.byte	W18
	.byte		N05   , En1 , v088
	.byte	W12
	.byte		N06   , En1 , v080
	.byte	W18
	.byte		N12   , En1 , v116
	.byte	W18
	.byte		N08   , En1 , v076
	.byte	W06
	.byte	PEND
@ 010   ----------------------------------------
BGM_M45_10_010:
	.byte	W24
	.byte		N07   , En1 , v112
	.byte	W18
	.byte		N06   , En1 , v116
	.byte	W12
	.byte		N05   , En1 , v088
	.byte	W18
	.byte		N13   , En1 , v116
	.byte	W18
	.byte		N08   , En1 , v080
	.byte	W06
	.byte	PEND
@ 011   ----------------------------------------
BGM_M45_10_011:
	.byte	W24
	.byte		N07   , En1 , v116
	.byte	W18
	.byte		N05   
	.byte	W12
	.byte		        En1 , v100
	.byte	W18
	.byte		N03   , En1 , v108
	.byte	W06
	.byte		        En1 , v116
	.byte	W12
	.byte		N04   
	.byte	W06
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_010
@ 015   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_011
@ 016   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_008
@ 021   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_010
@ 023   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_011
@ 024   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_008
@ 025   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_009
@ 026   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_010
@ 027   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_011
@ 028   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_008
@ 029   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_009
@ 030   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_010
@ 031   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_011
@ 032   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_008
@ 033   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_009
@ 034   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_010
@ 035   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_011
@ 036   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_008
@ 037   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_009
@ 038   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_010
@ 039   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_10_011
@ 040   ----------------------------------------
	.byte		N03   , En1 , v104
	.byte	W06
	.byte		N04   , En1 , v116
	.byte	W11
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_10
	.byte	GOTO
	 .word	BGM_M45_loop_10
	.byte	FINE

@**************** Track 11 (Midi-Chn.12) ****************@

BGM_M45_11:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_11:
BGM_M45_loop_11:
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*BGM_M45_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N04   , An1 , v127
	.byte	W06
	.byte		N05   , Gn1 , v116
	.byte	W06
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		N04   , An1 , v127
	.byte	W78
@ 001   ----------------------------------------
	.byte	W06
	.byte		N02   , Fn1 , v104
	.byte	W06
	.byte		N03   , Fn1 , v108
	.byte	W06
	.byte		N04   , An1 , v127
	.byte	W78
@ 002   ----------------------------------------
	.byte		N09   
	.byte	W06
	.byte		N08   , Gn1 , v100
	.byte	W06
	.byte		N06   , Fn1 , v096
	.byte	W06
	.byte		N03   , An1 , v100
	.byte	W78
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N04   , An1 , v127
	.byte	W06
	.byte		        Gn1 , v120
	.byte	W06
	.byte		N03   , Fn1 , v112
	.byte	W06
	.byte		N04   , An1 , v124
	.byte	W78
@ 005   ----------------------------------------
	.byte		N03   , Fn1 , v120
	.byte	W06
	.byte		        An1 , v127
	.byte	W06
	.byte		N04   
	.byte	W06
	.byte		        Fn1 
	.byte	W78
@ 006   ----------------------------------------
	.byte		        An1 
	.byte	W06
	.byte		N03   , Fn1 , v124
	.byte	W06
	.byte		N05   
	.byte	W06
	.byte		N04   , An1 , v112
	.byte	W78
@ 007   ----------------------------------------
	.byte	W96
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
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte		        An1 , v127
	.byte	W06
	.byte		N05   , Gn1 , v116
	.byte	W11
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_11
	.byte	GOTO
	 .word	BGM_M45_loop_11
	.byte	FINE

@**************** Track 12 (Midi-Chn.13) ****************@

BGM_M45_12:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_12:
BGM_M45_loop_12:
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*BGM_M45_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N48   , Cs2 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 002   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 005   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 006   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 007   ----------------------------------------
	.byte		        En2 
	.byte	W96
@ 008   ----------------------------------------
	.byte		        Cs2 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 017   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 018   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 021   ----------------------------------------
BGM_M45_12_021:
	.byte		N48   , Cs2 , v127
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 022   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 033   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 034   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte		N48   
	.byte	W96
@ 037   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_12_021
@ 038   ----------------------------------------
	.byte		N48   , Cs2 , v127
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte	GOTO
	 .word	BGM_M45_loop_12
	.byte	GOTO
	 .word	BGM_M45_loop_12
	.byte	FINE

@**************** Track 13 (Midi-Chn.14) ****************@

BGM_M45_13:
	.byte	KEYSH , BGM_M45_key+0
BGM_M45_loop_13:
BGM_M45_loop_13:
@ 000   ----------------------------------------
	.byte		VOICE , 127
	.byte		VOL   , 127*BGM_M45_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N05   , Gs1 , v108
	.byte	W12
	.byte		N04   , Gs1 , v112
	.byte	W12
	.byte		N06   , Gs1 , v116
	.byte	W12
	.byte		N05   , Gs1 , v100
	.byte	W12
	.byte		N06   , Gs1 , v124
	.byte	W12
	.byte		N05   , Gs1 , v096
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N05   , Gs1 , v100
	.byte	W12
@ 001   ----------------------------------------
BGM_M45_13_001:
	.byte		N06   , Gs1 , v124
	.byte	W12
	.byte		N05   , Gs1 , v096
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N04   , Gs1 , v092
	.byte	W12
	.byte		N06   , Gs1 , v124
	.byte	W12
	.byte		N05   , Gs1 , v100
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N04   , Gs1 , v100
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
BGM_M45_13_002:
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N04   , Gs1 , v092
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N04   , Gs1 , v088
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N04   , Gs1 , v104
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N05   , Gs1 , v096
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
BGM_M45_13_003:
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N05   , Gs1 , v104
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N05   , Gs1 , v112
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		        Gs1 , v108
	.byte	W12
	.byte		        Gs1 , v124
	.byte	W12
	.byte		N04   , Gs1 , v096
	.byte	W06
	.byte		        As1 , v112
	.byte	W06
	.byte	PEND
@ 004   ----------------------------------------
BGM_M45_13_004:
	.byte		N05   , Gs1 , v108
	.byte	W12
	.byte		N04   , Gs1 , v112
	.byte	W12
	.byte		N06   , Gs1 , v116
	.byte	W12
	.byte		N05   , Gs1 , v100
	.byte	W12
	.byte		N06   , Gs1 , v124
	.byte	W12
	.byte		N05   , Gs1 , v096
	.byte	W12
	.byte		N06   , Gs1 , v127
	.byte	W12
	.byte		N05   , Gs1 , v100
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_003
@ 008   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_004
@ 009   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_002
@ 011   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_003
@ 012   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_004
@ 013   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_002
@ 015   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_003
@ 016   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_004
@ 017   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_001
@ 018   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_002
@ 019   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_003
@ 020   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_004
@ 021   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_003
@ 024   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_004
@ 025   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_001
@ 026   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_002
@ 027   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_003
@ 028   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_004
@ 029   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_001
@ 030   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_002
@ 031   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_003
@ 032   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_004
@ 033   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_001
@ 034   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_002
@ 035   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_003
@ 036   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_004
@ 037   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_001
@ 038   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_002
@ 039   ----------------------------------------
	.byte	PATT
	 .word	BGM_M45_13_003
@ 040   ----------------------------------------
	.byte		N05   , Gs1 , v108
	.byte	W17
	.byte	W01
	.byte	W30
	.byte	GOTO
	 .word	BGM_M45_loop_13
	.byte	GOTO
	 .word	BGM_M45_loop_13
	.byte	FINE

@******************************************************@
	.align	2

BGM_M45:
	.byte	13	@ NumTrks
	.byte	0	@ NumBlks
	.byte	BGM_M45_pri	@ Priority
	.byte	BGM_M45_rev	@ Reverb.

	.word	BGM_M45_grp

	.word	BGM_M45_1
	.word	BGM_M45_2
	.word	BGM_M45_3
	.word	BGM_M45_4
	.word	BGM_M45_5
	.word	BGM_M45_6
	.word	BGM_M45_7
	.word	BGM_M45_8
	.word	BGM_M45_9
	.word	BGM_M45_10
	.word	BGM_M45_11
	.word	BGM_M45_12
	.word	BGM_M45_13

	.end


