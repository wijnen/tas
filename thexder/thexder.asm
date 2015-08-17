; z80dasm 1.1.3
; command line: z80dasm -t -a -g 0x4000 thexder.rom

	org	04000h

	ld b,c			;4000	41 	A 
	ld b,d			;4001	42 	B 
	inc b			;4002	04 	. 
	ld b,b			;4003	40 	@ 
	jr $+83		;4004	18 51 	. Q 
	jr nz,$+79		;4006	20 4d 	  M 
	ld b,c			;4008	41 	A 
	ld b,h			;4009	44 	D 
	ld b,l			;400a	45 	E 
	jr nz,$+68		;400b	20 42 	  B 
	ld e,c			;400d	59 	Y 
	jr nz,$+89		;400e	20 57 	  W 
	ld b,c			;4010	41 	A 
	ld c,a			;4011	4f 	O 
	jr nz,$+75		;4012	20 49 	  I 
	ld d,e			;4014	53 	S 
	ld b,l			;4015	45 	E 
	ld b,l			;4016	45 	E 
	jr nz,$+34		;4017	20 20 	    
	jr nz,$+85		;4019	20 53 	  S 
	ld d,b			;401b	50 	P 
	ld b,l			;401c	45 	E 
	ld b,e			;401d	43 	C 
	ld c,c			;401e	49 	I 
	ld b,c			;401f	41 	A 
	ld c,h			;4020	4c 	L 
	jr nz,$+86		;4021	20 54 	  T 
	ld c,b			;4023	48 	H 
	ld b,c			;4024	41 	A 
	ld c,(hl)			;4025	4e 	N 
	ld c,e			;4026	4b 	K 
	ld d,e			;4027	53 	S 
	jr nz,$+47		;4028	20 2d 	  - 
	jr nz,$+79		;402a	20 4d 	  M 
	ld l,04dh		;402c	2e 4d 	. M 
	ld c,c			;402e	49 	I 
	ld e,c			;402f	59 	Y 
	ld b,c			;4030	41 	A 
	ld c,l			;4031	4d 	M 
	ld c,a			;4032	4f 	O 
	ld d,h			;4033	54 	T 
	ld c,a			;4034	4f 	O 
	jr nz,$+76		;4035	20 4a 	  J 
	ld b,l			;4037	45 	E 
	ld c,l			;4038	4d 	M 
	ld c,c			;4039	49 	I 
	ld c,(hl)			;403a	4e 	N 
	ld c,c			;403b	49 	I 
	jr nz,$+76		;403c	20 4a 	  J 
	ld b,c			;403e	41 	A 
	ld c,(hl)			;403f	4e 	N 
	jr nz,$+34		;4040	20 20 	    
	ld c,h			;4042	4c 	L 
	ld d,l			;4043	55 	U 
	ld c,(hl)			;4044	4e 	N 
	ld b,c			;4045	41 	A 
	ld d,d			;4046	52 	R 
	ld c,c			;4047	49 	I 
	ld b,c			;4048	41 	A 
	ld c,(hl)			;4049	4e 	N 
	jr nz,$+82		;404a	20 50 	  P 
	ld b,c			;404c	41 	A 
	ld c,h			;404d	4c 	L 
	jr nz,$+82		;404e	20 50 	  P 
	ld b,c			;4050	41 	A 
	ld b,e			;4051	43 	C 
	jr nz,$+79		;4052	20 4d 	  M 
	ld c,a			;4054	4f 	O 
	ld c,a			;4055	4f 	O 
	jr nz,$-11		;4056	20 f3 	  . 
	ld sp,0f280h		;4058	31 80 f2 	1 . . 
	ld a,0c3h		;405b	3e c3 	> . 
	ld (0fd9ah),a		;405d	32 9a fd 	2 . . 
	ld hl,04339h		;4060	21 39 43 	! 9 C 
	ld (0fd9bh),hl		;4063	22 9b fd 	" . . 
	call 04316h		;4066	cd 16 43 	. . C 
	call 0464ch		;4069	cd 4c 46 	. L F 
	di			;406c	f3 	. 
	ld hl,0c000h		;406d	21 00 c0 	! . . 
	ld de,0c001h		;4070	11 01 c0 	. . . 
	ld bc,0337fh		;4073	01 7f 33 	.  3 
	ld (hl),000h		;4076	36 00 	6 . 
	ldir		;4078	ed b0 	. . 
	ld sp,hl			;407a	f9 	. 
	call 04580h		;407b	cd 80 45 	. . E 
	ld b,003h		;407e	06 03 	. . 
	ld hl,06728h		;4080	21 28 67 	! ( g 
	call 066d1h		;4083	cd d1 66 	. . f 
	call 06906h		;4086	cd 06 69 	. . i 
	call 0bc79h		;4089	cd 79 bc 	. y . 
	call 0bc7dh		;408c	cd 7d bc 	. } . 
	call 06600h		;408f	cd 00 66 	. . f 
	call 046ech		;4092	cd ec 46 	. . F 
	ld hl,0e320h		;4095	21 20 e3 	!   . 
	ld (0f2c2h),hl		;4098	22 c2 f2 	" . . 
	ld hl,00004h		;409b	21 04 00 	! . . 
	ld (0f2b1h),hl		;409e	22 b1 f2 	" . . 
	ld a,002h		;40a1	3e 02 	> . 
	ld (0f2b3h),a		;40a3	32 b3 f2 	2 . . 
	ld hl,00064h		;40a6	21 64 00 	! d . 
	ld (0f2d4h),hl		;40a9	22 d4 f2 	" . . 
	ld hl,0f281h		;40ac	21 81 f2 	! . . 
	res 1,(hl)		;40af	cb 8e 	. . 
	call 0463dh		;40b1	cd 3d 46 	. = F 
	ld hl,0f29ah		;40b4	21 9a f2 	! . . 
	ld a,(hl)			;40b7	7e 	~ 
	cp 004h		;40b8	fe 04 	. . 
	jr c,$-9		;40ba	38 f5 	8 . 
	ld (hl),000h		;40bc	36 00 	6 . 
	ld a,(0f2ddh)		;40be	3a dd f2 	: . . 
	or a			;40c1	b7 	. 
	jr z,$+5		;40c2	28 03 	( . 
	call 05920h		;40c4	cd 20 59 	.   Y 
	ld hl,0f299h		;40c7	21 99 f2 	! . . 
	res 0,(hl)		;40ca	cb 86 	. . 
	call 04889h		;40cc	cd 89 48 	. . H 
	call 041efh		;40cf	cd ef 41 	. . A 
	call 05603h		;40d2	cd 03 56 	. . V 
	call 05e2fh		;40d5	cd 2f 5e 	. / ^ 
	ld a,(0f2deh)		;40d8	3a de f2 	: . . 
	call 05968h		;40db	cd 68 59 	. h Y 
	ld (0f2deh),a		;40de	32 de f2 	2 . . 
	ld hl,0f2cah		;40e1	21 ca f2 	! . . 
	inc (hl)			;40e4	34 	4 
	call 040f2h		;40e5	cd f2 40 	. . @ 
	ld a,(0f281h)		;40e8	3a 81 f2 	: . . 
	bit 1,a		;40eb	cb 4f 	. O 
	jp nz,05fdfh		;40ed	c2 df 5f 	. . _ 
	jr $-63		;40f0	18 bf 	. . 
	ld hl,0f29eh		;40f2	21 9e f2 	! . . 
	bit 0,(hl)		;40f5	cb 46 	. F 
	ret z			;40f7	c8 	. 
	bit 4,(hl)		;40f8	cb 66 	. f 
	jr nz,$-2		;40fa	20 fc 	  . 
	res 0,(hl)		;40fc	cb 86 	. . 
	push hl			;40fe	e5 	. 
	ld hl,0f2e9h		;40ff	21 e9 f2 	! . . 
	bit 0,(hl)		;4102	cb 46 	. F 
	jr nz,$+20		;4104	20 12 	  . 
	call 06702h		;4106	cd 02 67 	. . g 
	bit 0,(hl)		;4109	cb 46 	. F 
	jr z,$+13		;410b	28 0b 	( . 
	ld b,005h		;410d	06 05 	. . 
	push bc			;410f	c5 	. 
	ld a,064h		;4110	3e 64 	> d 
	call 05968h		;4112	cd 68 59 	. h Y 
	pop bc			;4115	c1 	. 
	djnz $-7		;4116	10 f7 	. . 
	pop hl			;4118	e1 	. 
	bit 0,(hl)		;4119	cb 46 	. F 
	jr z,$-29		;411b	28 e1 	( . 
	res 0,(hl)		;411d	cb 86 	. . 
	ld hl,0f281h		;411f	21 81 f2 	! . . 
	res 1,(hl)		;4122	cb 8e 	. . 
	ret			;4124	c9 	. 
	ld bc,0ee00h		;4125	01 00 ee 	. . . 
	ld hl,00000h		;4128	21 00 00 	! . . 
	ld de,00024h		;412b	11 24 00 	. $ . 
	ld a,015h		;412e	3e 15 	> . 
	call 0413eh		;4130	cd 3e 41 	. > A 
	ld bc,0ee2ah		;4133	01 2a ee 	. * . 
	ld hl,00000h		;4136	21 00 00 	! . . 
	ld de,00078h		;4139	11 78 00 	. x . 
	ld a,02ch		;413c	3e 2c 	> , 
	ex af,af'			;413e	08 	. 
	ld a,l			;413f	7d 	} 
	ld (bc),a			;4140	02 	. 
	inc bc			;4141	03 	. 
	ld a,h			;4142	7c 	| 
	ld (bc),a			;4143	02 	. 
	inc bc			;4144	03 	. 
	add hl,de			;4145	19 	. 
	ex af,af'			;4146	08 	. 
	dec a			;4147	3d 	= 
	jr nz,$-10		;4148	20 f4 	  . 
	ld hl,04156h		;414a	21 56 41 	! V A 
	ld de,0eed0h		;414d	11 d0 ee 	. . . 
	ld bc,00010h		;4150	01 10 00 	. . . 
	ldir		;4153	ed b0 	. . 
	ret			;4155	c9 	. 
	rst 38h			;4156	ff 	. 
	ld (hl),h			;4157	74 	t 
	sub b			;4158	90 	. 
	rrca			;4159	0f 	. 
	rst 38h			;415a	ff 	. 
	ld (hl),h			;415b	74 	t 
	sbc a,b			;415c	98 	. 
	rrca			;415d	0f 	. 
	rst 38h			;415e	ff 	. 
	add a,h			;415f	84 	. 
	sub h			;4160	94 	. 
	rrca			;4161	0f 	. 
	rst 38h			;4162	ff 	. 
	add a,h			;4163	84 	. 
	sbc a,h			;4164	9c 	. 
	rrca			;4165	0f 	. 
	bit 3,(ix+006h)		;4166	dd cb 06 5e 	. . . ^ 
	jr z,$+7		;416a	28 05 	( . 
	call 041d0h		;416c	cd d0 41 	. . A 
	jr $+12		;416f	18 0a 	. . 
	ld a,(0e315h)		;4171	3a 15 e3 	: . . 
	and 00ch		;4174	e6 0c 	. . 
	jr z,$+5		;4176	28 03 	( . 
	call 041d0h		;4178	cd d0 41 	. . A 
	ld hl,(0f2b1h)		;417b	2a b1 f2 	* . . 
	ld a,l			;417e	7d 	} 
	srl h		;417f	cb 3c 	. < 
	rra			;4181	1f 	. 
	srl h		;4182	cb 3c 	. < 
	rra			;4184	1f 	. 
	ld l,a			;4185	6f 	o 
	push hl			;4186	e5 	. 
	ld a,(0f2b3h)		;4187	3a b3 f2 	: . . 
	add a,a			;418a	87 	. 
	ld hl,0ee2ah		;418b	21 2a ee 	! * . 
	ld e,a			;418e	5f 	_ 
	ld d,000h		;418f	16 00 	. . 
	add hl,de			;4191	19 	. 
	ld e,(hl)			;4192	5e 	^ 
	inc hl			;4193	23 	# 
	ld d,(hl)			;4194	56 	V 
	pop hl			;4195	e1 	. 
	add hl,de			;4196	19 	. 
	ld bc,0ce58h		;4197	01 58 ce 	. X . 
	add hl,bc			;419a	09 	. 
	ld de,0ead8h		;419b	11 d8 ea 	. . . 
	exx			;419e	d9 	. 
	ld b,015h		;419f	06 15 	. . 
	exx			;41a1	d9 	. 
	ld b,009h		;41a2	06 09 	. . 
	push bc			;41a4	c5 	. 
	ld a,(hl)			;41a5	7e 	~ 
	ld c,a			;41a6	4f 	O 
	and 0c0h		;41a7	e6 c0 	. . 
	rla			;41a9	17 	. 
	rla			;41aa	17 	. 
	rla			;41ab	17 	. 
	ld b,a			;41ac	47 	G 
	ld (de),a			;41ad	12 	. 
	inc de			;41ae	13 	. 
	ld a,c			;41af	79 	y 
	and 030h		;41b0	e6 30 	. 0 
	rrca			;41b2	0f 	. 
	rrca			;41b3	0f 	. 
	rrca			;41b4	0f 	. 
	rrca			;41b5	0f 	. 
	ld (de),a			;41b6	12 	. 
	inc de			;41b7	13 	. 
	ld a,c			;41b8	79 	y 
	and 00ch		;41b9	e6 0c 	. . 
	rrca			;41bb	0f 	. 
	rrca			;41bc	0f 	. 
	ld (de),a			;41bd	12 	. 
	inc de			;41be	13 	. 
	ld a,c			;41bf	79 	y 
	and 003h		;41c0	e6 03 	. . 
	ld (de),a			;41c2	12 	. 
	inc de			;41c3	13 	. 
	inc hl			;41c4	23 	# 
	pop bc			;41c5	c1 	. 
	djnz $-34		;41c6	10 dc 	. . 
	ld bc,0006fh		;41c8	01 6f 00 	. o . 
	add hl,bc			;41cb	09 	. 
	exx			;41cc	d9 	. 
	djnz $-44		;41cd	10 d2 	. . 
	ret			;41cf	c9 	. 
	ld a,(0e314h)		;41d0	3a 14 e3 	: . . 
	cp 00ah		;41d3	fe 0a 	. . 
	jr c,$+10		;41d5	38 08 	8 . 
	cp 024h		;41d7	fe 24 	. $ 
	jr nc,$+10		;41d9	30 08 	0 . 
	ld b,002h		;41db	06 02 	. . 
	jr $+8		;41dd	18 06 	. . 
	ld b,003h		;41df	06 03 	. . 
	jr $+4		;41e1	18 02 	. . 
	ld b,006h		;41e3	06 06 	. . 
	ld a,(0f2d0h)		;41e5	3a d0 f2 	: . . 
	and 0f8h		;41e8	e6 f8 	. . 
	or b			;41ea	b0 	. 
	ld (0f2d0h),a		;41eb	32 d0 f2 	2 . . 
	ret			;41ee	c9 	. 
	call 0462ah		;41ef	cd 2a 46 	. * F 
	ld hl,03800h		;41f2	21 00 38 	! . 8 
	call 00053h		;41f5	cd 53 00 	. S . 
	ld bc,(00007h)		;41f8	ed 4b 07 00 	. K . . 
	ld a,(0f2b1h)		;41fc	3a b1 f2 	: . . 
	and 003h		;41ff	e6 03 	. . 
	ld h,000h		;4201	26 00 	& . 
	ld l,a			;4203	6f 	o 
	ld de,0ead8h		;4204	11 d8 ea 	. . . 
	add hl,de			;4207	19 	. 
	ld a,015h		;4208	3e 15 	> . 
	ex af,af'			;420a	08 	. 
	xor a			;420b	af 	. 
	out (c),a		;420c	ed 79 	. y 
	inc hl			;420e	23 	# 
	ld de,0001fh		;420f	11 1f 00 	. . . 
	outi		;4212	ed a3 	. . 
	dec de			;4214	1b 	. 
	ld a,d			;4215	7a 	z 
	or e			;4216	b3 	. 
	jr nz,$-5		;4217	20 f9 	  . 
	ld de,00004h		;4219	11 04 00 	. . . 
	add hl,de			;421c	19 	. 
	ex af,af'			;421d	08 	. 
	dec a			;421e	3d 	= 
	jr nz,$-21		;421f	20 e9 	  . 
	call 0463dh		;4221	cd 3d 46 	. = F 
	ret			;4224	c9 	. 
	res 5,(ix+001h)		;4225	dd cb 01 ae 	. . . . 
	ld de,(0f2b1h)		;4229	ed 5b b1 f2 	. [ . . 
	call 05d8eh		;422d	cd 8e 5d 	. . ] 
	or a			;4230	b7 	. 
	sbc hl,de		;4231	ed 52 	. R 
	jr c,$+66		;4233	38 40 	8 @ 
	ld a,020h		;4235	3e 20 	>   
	cp l			;4237	bd 	. 
	jr c,$+61		;4238	38 3b 	8 ; 
	xor a			;423a	af 	. 
	or h			;423b	b4 	. 
	jr nz,$+57		;423c	20 37 	  7 
	ld (ix+003h),l		;423e	dd 75 03 	. u . 
	ex de,hl			;4241	eb 	. 
	ld a,(0f2b3h)		;4242	3a b3 f2 	: . . 
	ld b,a			;4245	47 	G 
	ld a,(ix+014h)		;4246	dd 7e 14 	. ~ . 
	sub b			;4249	90 	. 
	jr c,$+45		;424a	38 2b 	8 + 
	ld (ix+002h),a		;424c	dd 77 02 	. w . 
	cp 015h		;424f	fe 15 	. . 
	jr nc,$+34		;4251	30 20 	0   
	add a,a			;4253	87 	. 
	ld c,a			;4254	4f 	O 
	ld b,000h		;4255	06 00 	. . 
	ld hl,0ee00h		;4257	21 00 ee 	! . . 
	add hl,bc			;425a	09 	. 
	ld c,(hl)			;425b	4e 	N 
	inc hl			;425c	23 	# 
	ld b,(hl)			;425d	46 	F 
	ld hl,0ead8h		;425e	21 d8 ea 	! . . 
	add hl,bc			;4261	09 	. 
	add hl,de			;4262	19 	. 
	ld a,(0f2b1h)		;4263	3a b1 f2 	: . . 
	and 003h		;4266	e6 03 	. . 
	ld d,000h		;4268	16 00 	. . 
	ld e,a			;426a	5f 	_ 
	add hl,de			;426b	19 	. 
	set 5,(ix+001h)		;426c	dd cb 01 ee 	. . . . 
	ld (0f2cdh),hl		;4270	22 cd f2 	" . . 
	or a			;4273	b7 	. 
	ret			;4274	c9 	. 
	scf			;4275	37 	7 
	ret			;4276	c9 	. 
	inc a			;4277	3c 	< 
	jr nz,$-5		;4278	20 f9 	  . 
	ld bc,0ffdch		;427a	01 dc ff 	. . . 
	jr $-31		;427d	18 df 	. . 
	ld c,001h		;427f	0e 01 	. . 
	jr $+4		;4281	18 02 	. . 
	ld c,000h		;4283	0e 00 	. . 
	call 0428ah		;4285	cd 8a 42 	. . B 
	jr $+44		;4288	18 2a 	. * 
	ld a,(ix+014h)		;428a	dd 7e 14 	. ~ . 
	add a,a			;428d	87 	. 
	ld hl,0ee2ah		;428e	21 2a ee 	! * . 
	ld e,a			;4291	5f 	_ 
	ld d,000h		;4292	16 00 	. . 
	add hl,de			;4294	19 	. 
	ld e,(hl)			;4295	5e 	^ 
	inc hl			;4296	23 	# 
	ld d,(hl)			;4297	56 	V 
	ld hl,0ce58h		;4298	21 58 ce 	! X . 
	add hl,de			;429b	19 	. 
	ex de,hl			;429c	eb 	. 
	call 05d8eh		;429d	cd 8e 5d 	. . ] 
	ld a,l			;42a0	7d 	} 
	and 003h		;42a1	e6 03 	. . 
	ld b,a			;42a3	47 	G 
	srl h		;42a4	cb 3c 	. < 
	rr l		;42a6	cb 1d 	. . 
	srl h		;42a8	cb 3c 	. < 
	rr l		;42aa	cb 1d 	. . 
	add hl,de			;42ac	19 	. 
	ld (0f2a1h),hl		;42ad	22 a1 f2 	" . . 
	ld (0f2a3h),a		;42b0	32 a3 f2 	2 . . 
	ret			;42b3	c9 	. 
	push hl			;42b4	e5 	. 
	ld d,(hl)			;42b5	56 	V 
	inc hl			;42b6	23 	# 
	ld e,(hl)			;42b7	5e 	^ 
	bit 0,c		;42b8	cb 41 	. A 
	jr nz,$+37		;42ba	20 23 	  # 
	ld hl,0f000h		;42bc	21 00 f0 	! . . 
	ld a,b			;42bf	78 	x 
	or a			;42c0	b7 	. 
	jr z,$+21		;42c1	28 13 	( . 
	bit 7,c		;42c3	cb 79 	. y 
	jr nz,$+14		;42c5	20 0c 	  . 
	srl h		;42c7	cb 3c 	. < 
	rr l		;42c9	cb 1d 	. . 
	srl h		;42cb	cb 3c 	. < 
	rr l		;42cd	cb 1d 	. . 
	djnz $-12		;42cf	10 f2 	. . 
	jr $+5		;42d1	18 03 	. . 
	ld hl,(0f2a9h)		;42d3	2a a9 f2 	* . . 
	ld b,a			;42d6	47 	G 
	ld a,d			;42d7	7a 	z 
	or h			;42d8	b4 	. 
	ld d,a			;42d9	57 	W 
	ld a,e			;42da	7b 	{ 
	or l			;42db	b5 	. 
	ld e,a			;42dc	5f 	_ 
	jr $+37		;42dd	18 23 	. # 
	ld hl,00fffh		;42df	21 ff 0f 	! . . 
	ld a,b			;42e2	78 	x 
	or a			;42e3	b7 	. 
	jr z,$+23		;42e4	28 15 	( . 
	bit 7,c		;42e6	cb 79 	. y 
	jr nz,$+16		;42e8	20 0e 	  . 
	scf			;42ea	37 	7 
	rr h		;42eb	cb 1c 	. . 
	rr l		;42ed	cb 1d 	. . 
	scf			;42ef	37 	7 
	rr h		;42f0	cb 1c 	. . 
	rr l		;42f2	cb 1d 	. . 
	djnz $-14		;42f4	10 f0 	. . 
	jr $+5		;42f6	18 03 	. . 
	ld hl,(0f2a9h)		;42f8	2a a9 f2 	* . . 
	ld b,a			;42fb	47 	G 
	ld a,d			;42fc	7a 	z 
	and h			;42fd	a4 	. 
	ld d,a			;42fe	57 	W 
	ld a,e			;42ff	7b 	{ 
	and l			;4300	a5 	. 
	ld e,a			;4301	5f 	_ 
	ld (0f2a9h),hl		;4302	22 a9 f2 	" . . 
	pop hl			;4305	e1 	. 
	ld (hl),d			;4306	72 	r 
	inc hl			;4307	23 	# 
	ld (hl),e			;4308	73 	s 
	dec hl			;4309	2b 	+ 
	bit 7,c		;430a	cb 79 	. y 
	ret nz			;430c	c0 	. 
	ld de,00078h		;430d	11 78 00 	. x . 
	add hl,de			;4310	19 	. 
	set 7,c		;4311	cb f9 	. . 
	jp 042b4h		;4313	c3 b4 42 	. . B 
	di			;4316	f3 	. 
	call 00138h		;4317	cd 38 01 	. 8 . 
	rrca			;431a	0f 	. 
	rrca			;431b	0f 	. 
	and 003h		;431c	e6 03 	. . 
	ld c,a			;431e	4f 	O 
	ld b,000h		;431f	06 00 	. . 
	ld hl,0fcc1h		;4321	21 c1 fc 	! . . 
	add hl,bc			;4324	09 	. 
	or (hl)			;4325	b6 	. 
	jp p,04332h		;4326	f2 32 43 	. 2 C 
	ld c,a			;4329	4f 	O 
	inc hl			;432a	23 	# 
	inc hl			;432b	23 	# 
	inc hl			;432c	23 	# 
	inc hl			;432d	23 	# 
	ld a,(hl)			;432e	7e 	~ 
	and 00ch		;432f	e6 0c 	. . 
	or c			;4331	b1 	. 
	ld hl,08000h		;4332	21 00 80 	! . . 
	call 00024h		;4335	cd 24 00 	. $ . 
	ret			;4338	c9 	. 
	pop af			;4339	f1 	. 
	call 0013eh		;433a	cd 3e 01 	. > . 
	call 0462ah		;433d	cd 2a 46 	. * F 
	ld a,(0f2ach)		;4340	3a ac f2 	: . . 
	bit 2,a		;4343	cb 57 	. W 
	jp nz,043f1h		;4345	c2 f1 43 	. . C 
	ld a,(0f29bh)		;4348	3a 9b f2 	: . . 
	and 001h		;434b	e6 01 	. . 
	jr z,$+29		;434d	28 1b 	( . 
	ld a,(0f298h)		;434f	3a 98 f2 	: . . 
	inc a			;4352	3c 	< 
	and 00fh		;4353	e6 0f 	. . 
	cp 002h		;4355	fe 02 	. . 
	jr nc,$+4		;4357	30 02 	0 . 
	ld a,002h		;4359	3e 02 	> . 
	ld (0f298h),a		;435b	32 98 f2 	2 . . 
	ld hl,0e865h		;435e	21 65 e8 	! e . 
	ld de,00020h		;4361	11 20 00 	.   . 
	ld b,00dh		;4364	06 0d 	. . 
	ld (hl),a			;4366	77 	w 
	add hl,de			;4367	19 	. 
	djnz $-2		;4368	10 fc 	. . 
	ld hl,03b00h		;436a	21 00 3b 	! . ; 
	call 00053h		;436d	cd 53 00 	. S . 
	ld hl,0f29bh		;4370	21 9b f2 	! . . 
	inc (hl)			;4373	34 	4 
	bit 0,(hl)		;4374	cb 46 	. F 
	jr z,$+71		;4376	28 45 	( E 
	ld ix,0e860h		;4378	dd 21 60 e8 	. ! ` . 
	ld de,00020h		;437c	11 20 00 	.   . 
	ld bc,(00007h)		;437f	ed 4b 07 00 	. K . . 
	ld b,00dh		;4383	06 0d 	. . 
	ld a,(ix+001h)		;4385	dd 7e 01 	. ~ . 
	bit 7,a		;4388	cb 7f 	.  
	jr z,$+37		;438a	28 23 	( # 
	bit 6,a		;438c	cb 77 	. w 
	jr nz,$+33		;438e	20 1f 	  . 
	ld a,(ix+002h)		;4390	dd 7e 02 	. ~ . 
	dec a			;4393	3d 	= 
	cp 0d0h		;4394	fe d0 	. . 
	jr z,$+25		;4396	28 17 	( . 
	out (c),a		;4398	ed 79 	. y 
	ld a,(ix+003h)		;439a	dd 7e 03 	. ~ . 
	push af			;439d	f5 	. 
	out (c),a		;439e	ed 79 	. y 
	pop af			;43a0	f1 	. 
	ld a,(ix+004h)		;43a1	dd 7e 04 	. ~ . 
	push af			;43a4	f5 	. 
	out (c),a		;43a5	ed 79 	. y 
	pop af			;43a7	f1 	. 
	ld a,(ix+005h)		;43a8	dd 7e 05 	. ~ . 
	exx			;43ab	d9 	. 
	exx			;43ac	d9 	. 
	out (c),a		;43ad	ed 79 	. y 
	add ix,de		;43af	dd 19 	. . 
	djnz $-44		;43b1	10 d2 	. . 
	ld hl,0f29bh		;43b3	21 9b f2 	! . . 
	bit 0,(hl)		;43b6	cb 46 	. F 
	call nz,043c9h		;43b8	c4 c9 43 	. . C 
	jr $+37		;43bb	18 23 	. # 
	ld ix,0e9e0h		;43bd	dd 21 e0 e9 	. ! . . 
	ld de,0ffe0h		;43c1	11 e0 ff 	. . . 
	call 043c9h		;43c4	cd c9 43 	. . C 
	jr $-72		;43c7	18 b6 	. . 
	ld hl,0eed0h		;43c9	21 d0 ee 	! . . 
	ld a,(hl)			;43cc	7e 	~ 
	inc a			;43cd	3c 	< 
	ret z			;43ce	c8 	. 
	ld b,014h		;43cf	06 14 	. . 
	outi		;43d1	ed a3 	. . 
	push af			;43d3	f5 	. 
	outi		;43d4	ed a3 	. . 
	pop af			;43d6	f1 	. 
	outi		;43d7	ed a3 	. . 
	push af			;43d9	f5 	. 
	outi		;43da	ed a3 	. . 
	pop af			;43dc	f1 	. 
	djnz $-12		;43dd	10 f2 	. . 
	ret			;43df	c9 	. 
	ld a,0d0h		;43e0	3e d0 	> . 
	out (c),a		;43e2	ed 79 	. y 
	call 0449bh		;43e4	cd 9b 44 	. . D 
	call 0440bh		;43e7	cd 0b 44 	. . D 
	ld a,(0f2ach)		;43ea	3a ac f2 	: . . 
	bit 0,a		;43ed	cb 47 	. G 
	jr nz,$+2		;43ef	20 00 	  . 
	call 0ba9ch		;43f1	cd 9c ba 	. . . 
	ld hl,0f29ah		;43f4	21 9a f2 	! . . 
	inc (hl)			;43f7	34 	4 
	call 0463dh		;43f8	cd 3d 46 	. = F 
	pop ix		;43fb	dd e1 	. . 
	pop iy		;43fd	fd e1 	. . 
	pop af			;43ff	f1 	. 
	pop bc			;4400	c1 	. 
	pop de			;4401	d1 	. 
	pop hl			;4402	e1 	. 
	ex af,af'			;4403	08 	. 
	exx			;4404	d9 	. 
	pop af			;4405	f1 	. 
	pop bc			;4406	c1 	. 
	pop de			;4407	d1 	. 
	pop hl			;4408	e1 	. 
	ei			;4409	fb 	. 
	ret			;440a	c9 	. 
	ld a,007h		;440b	3e 07 	> . 
	call 00141h		;440d	cd 41 01 	. A . 
	ld c,a			;4410	4f 	O 
	ld a,(0f29eh)		;4411	3a 9e f2 	: . . 
	bit 4,c		;4414	cb 61 	. a 
	jr nz,$+33		;4416	20 1f 	  . 
	bit 4,a		;4418	cb 67 	. g 
	ret nz			;441a	c0 	. 
	bit 4,c		;441b	cb 61 	. a 
	jr nz,$+6		;441d	20 04 	  . 
	set 4,a		;441f	cb e7 	. . 
	set 0,a		;4421	cb c7 	. . 
	ld (0f29eh),a		;4423	32 9e f2 	2 . . 
	bit 2,c		;4426	cb 51 	. Q 
	ret nz			;4428	c0 	. 
	ld a,004h		;4429	3e 04 	> . 
	call 00141h		;442b	cd 41 01 	. A . 
	bit 6,a		;442e	cb 77 	. w 
	ret nz			;4430	c0 	. 
	ld hl,0f281h		;4431	21 81 f2 	! . . 
	set 1,(hl)		;4434	cb ce 	. . 
	ret			;4436	c9 	. 
	res 4,a		;4437	cb a7 	. . 
	jr $-22		;4439	18 e8 	. . 
	ld ix,0e300h		;443b	dd 21 00 e3 	. ! . . 
	ld a,(ix+000h)		;443f	dd 7e 00 	. ~ . 
	cp 008h		;4442	fe 08 	. . 
	ret z			;4444	c8 	. 
	ld a,(ix+001h)		;4445	dd 7e 01 	. ~ . 
	and 0e0h		;4448	e6 e0 	. . 
	cp 0e0h		;444a	fe e0 	. . 
	jr nz,$+71		;444c	20 45 	  E 
	ld l,(ix+017h)		;444e	dd 6e 17 	. n . 
	ld h,(ix+018h)		;4451	dd 66 18 	. f . 
	ld a,(ix+016h)		;4454	dd 7e 16 	. ~ . 
	ld c,a			;4457	4f 	O 
	and 00fh		;4458	e6 0f 	. . 
	jr z,$+57		;445a	28 37 	( 7 
	ld b,a			;445c	47 	G 
	ld a,c			;445d	79 	y 
	srl a		;445e	cb 3f 	. ? 
	srl a		;4460	cb 3f 	. ? 
	srl a		;4462	cb 3f 	. ? 
	srl a		;4464	cb 3f 	. ? 
	jr z,$+45		;4466	28 2b 	( + 
	ld c,a			;4468	4f 	O 
	ld a,(ix+01fh)		;4469	dd 7e 1f 	. ~ . 
	bit 4,a		;446c	cb 67 	. g 
	jr z,$+18		;446e	28 10 	( . 
	exx			;4470	d9 	. 
	ex de,hl			;4471	eb 	. 
	ld b,000h		;4472	06 00 	. . 
	ld c,02ah		;4474	0e 2a 	. * 
	ld hl,0eea0h		;4476	21 a0 ee 	! . . 
	add hl,bc			;4479	09 	. 
	ld a,(hl)			;447a	7e 	~ 
	ex de,hl			;447b	eb 	. 
	exx			;447c	d9 	. 
	ld (ix+004h),a		;447d	dd 77 04 	. w . 
	ld a,(ix+004h)		;4480	dd 7e 04 	. ~ . 
	push hl			;4483	e5 	. 
	ld d,b			;4484	50 	P 
	ld (hl),a			;4485	77 	w 
	inc a			;4486	3c 	< 
	inc hl			;4487	23 	# 
	djnz $-3		;4488	10 fb 	. . 
	ld b,d			;448a	42 	B 
	pop hl			;448b	e1 	. 
	ld de,00024h		;448c	11 24 00 	. $ . 
	add hl,de			;448f	19 	. 
	dec c			;4490	0d 	. 
	jr nz,$-14		;4491	20 f0 	  . 
	ld de,00020h		;4493	11 20 00 	.   . 
	add ix,de		;4496	dd 19 	. . 
	jp 0443fh		;4498	c3 3f 44 	. ? D 
	ld a,(0f2d0h)		;449b	3a d0 f2 	: . . 
	bit 7,a		;449e	cb 7f 	.  
	ret nz			;44a0	c0 	. 
	and 007h		;44a1	e6 07 	. . 
	ret z			;44a3	c8 	. 
	ld a,(0f2b4h)		;44a4	3a b4 f2 	: . . 
	add a,a			;44a7	87 	. 
	ld hl,0548bh		;44a8	21 8b 54 	! . T 
	ld d,000h		;44ab	16 00 	. . 
	ld e,a			;44ad	5f 	_ 
	add hl,de			;44ae	19 	. 
	ld e,(hl)			;44af	5e 	^ 
	inc hl			;44b0	23 	# 
	ld d,(hl)			;44b1	56 	V 
	ld bc,(00007h)		;44b2	ed 4b 07 00 	. K . . 
	ld hl,00820h		;44b6	21 20 08 	!   . 
	call 044dah		;44b9	cd da 44 	. . D 
	ld a,(0f2d0h)		;44bc	3a d0 f2 	: . . 
	ld b,a			;44bf	47 	G 
	and 080h		;44c0	e6 80 	. . 
	ld (0f2d0h),a		;44c2	32 d0 f2 	2 . . 
	bit 0,b		;44c5	cb 40 	. @ 
	jr nz,$+7		;44c7	20 05 	  . 
	bit 2,b		;44c9	cb 50 	. P 
	jr nz,$+9		;44cb	20 07 	  . 
	ret			;44cd	c9 	. 
	ex de,hl			;44ce	eb 	. 
	ld hl,00020h		;44cf	21 20 00 	!   . 
	jr $+8		;44d2	18 06 	. . 
	ex de,hl			;44d4	eb 	. 
	ld hl,01020h		;44d5	21 20 10 	!   . 
	jr $+2		;44d8	18 00 	. . 
	call 00053h		;44da	cd 53 00 	. S . 
	ex de,hl			;44dd	eb 	. 
	push hl			;44de	e5 	. 
	ld a,(0f2c6h)		;44df	3a c6 f2 	: . . 
	outi		;44e2	ed a3 	. . 
	dec a			;44e4	3d 	= 
	jr nz,$-3		;44e5	20 fb 	  . 
	push hl			;44e7	e5 	. 
	ld hl,02000h		;44e8	21 00 20 	! .   
	add hl,de			;44eb	19 	. 
	call 00053h		;44ec	cd 53 00 	. S . 
	pop hl			;44ef	e1 	. 
	ld a,(0f2b4h)		;44f0	3a b4 f2 	: . . 
	cp 006h		;44f3	fe 06 	. . 
	jr nz,$+7		;44f5	20 05 	  . 
	ld hl,0ea48h		;44f7	21 48 ea 	! H . 
	jr $+68		;44fa	18 42 	. B 
	exx			;44fc	d9 	. 
	ld hl,054c5h		;44fd	21 c5 54 	! . T 
	ld bc,0000fh		;4500	01 0f 00 	. . . 
	cpir		;4503	ed b1 	. . 
	exx			;4505	d9 	. 
	jr z,$+56		;4506	28 36 	( 6 
	ld a,(0f2c6h)		;4508	3a c6 f2 	: . . 
	neg		;450b	ed 44 	. D 
	ld e,a			;450d	5f 	_ 
	ld d,0ffh		;450e	16 ff 	. . 
	add hl,de			;4510	19 	. 
	add hl,de			;4511	19 	. 
	cp 0b8h		;4512	fe b8 	. . 
	jr z,$+6		;4514	28 04 	( . 
	ld a,004h		;4516	3e 04 	> . 
	jr $+4		;4518	18 02 	. . 
	ld a,003h		;451a	3e 03 	> . 
	ld de,00010h		;451c	11 10 00 	. . . 
	add hl,de			;451f	19 	. 
	ld b,008h		;4520	06 08 	. . 
	outi		;4522	ed a3 	. . 
	jr nz,$-2		;4524	20 fc 	  . 
	or a			;4526	b7 	. 
	sbc hl,de		;4527	ed 52 	. R 
	ld b,008h		;4529	06 08 	. . 
	outi		;452b	ed a3 	. . 
	jr nz,$-2		;452d	20 fc 	  . 
	or a			;452f	b7 	. 
	sbc hl,de		;4530	ed 52 	. R 
	ld b,008h		;4532	06 08 	. . 
	outi		;4534	ed a3 	. . 
	jr nz,$-2		;4536	20 fc 	  . 
	add hl,de			;4538	19 	. 
	dec a			;4539	3d 	= 
	jr nz,$-30		;453a	20 e0 	  . 
	pop hl			;453c	e1 	. 
	ret			;453d	c9 	. 
	ld a,(0f2c6h)		;453e	3a c6 f2 	: . . 
	ld b,a			;4541	47 	G 
	outi		;4542	ed a3 	. . 
	jr nz,$-2		;4544	20 fc 	  . 
	pop hl			;4546	e1 	. 
	ret			;4547	c9 	. 
	ld hl,0e320h		;4548	21 20 e3 	!   . 
	ld de,0e321h		;454b	11 21 e3 	. ! . 
	ld bc,006dfh		;454e	01 df 06 	. . . 
	jr $+11		;4551	18 09 	. . 
	ld hl,0e300h		;4553	21 00 e3 	! . . 
	ld de,0e301h		;4556	11 01 e3 	. . . 
	ld bc,006ffh		;4559	01 ff 06 	. . . 
	ld (hl),000h		;455c	36 00 	6 . 
	ldir		;455e	ed b0 	. . 
	ld b,038h		;4560	06 38 	. 8 
	ld hl,0e320h		;4562	21 20 e3 	!   . 
	ld de,0001fh		;4565	11 1f 00 	. . . 
	ld (hl),000h		;4568	36 00 	6 . 
	inc hl			;456a	23 	# 
	ld (hl),000h		;456b	36 00 	6 . 
	add hl,de			;456d	19 	. 
	djnz $-6		;456e	10 f8 	. . 
	ld a,0d0h		;4570	3e d0 	> . 
	ld hl,03b00h		;4572	21 00 3b 	! . ; 
	ld bc,00080h		;4575	01 80 00 	. . . 
	call 04672h		;4578	cd 72 46 	. r F 
	xor a			;457b	af 	. 
	ld (0e305h),a		;457c	32 05 e3 	2 . . 
	ret			;457f	c9 	. 
	xor a			;4580	af 	. 
	ld hl,03800h		;4581	21 00 38 	! . 8 
	ld bc,00300h		;4584	01 00 03 	. . . 
	jp 04672h		;4587	c3 72 46 	. r F 
	ld hl,03800h		;458a	21 00 38 	! . 8 
	ld bc,002a0h		;458d	01 a0 02 	. . . 
	xor a			;4590	af 	. 
	jp 04672h		;4591	c3 72 46 	. r F 
	push af			;4594	f5 	. 
	push de			;4595	d5 	. 
	ld de,01388h		;4596	11 88 13 	. . . 
	dec de			;4599	1b 	. 
	ld a,e			;459a	7b 	{ 
	or d			;459b	b2 	. 
	jr nz,$-3		;459c	20 fb 	  . 
	pop de			;459e	d1 	. 
	pop af			;459f	f1 	. 
	dec e			;45a0	1d 	. 
	jr nz,$-13		;45a1	20 f1 	  . 
	ret			;45a3	c9 	. 
	call 0462ah		;45a4	cd 2a 46 	. * F 
	ld a,00fh		;45a7	3e 0f 	> . 
	ld e,08fh		;45a9	1e 8f 	. . 
	call 00093h		;45ab	cd 93 00 	. . . 
	ld a,00eh		;45ae	3e 0e 	> . 
	call 00096h		;45b0	cd 96 00 	. . . 
	ld l,a			;45b3	6f 	o 
	ld a,00fh		;45b4	3e 0f 	> . 
	ld e,0cfh		;45b6	1e cf 	. . 
	call 00093h		;45b8	cd 93 00 	. . . 
	ld a,00eh		;45bb	3e 0e 	> . 
	call 00096h		;45bd	cd 96 00 	. . . 
	and l			;45c0	a5 	. 
	ld l,a			;45c1	6f 	o 
	ld a,006h		;45c2	3e 06 	> . 
	call 00141h		;45c4	cd 41 01 	. A . 
	bit 0,a		;45c7	cb 47 	. G 
	jr nz,$+4		;45c9	20 02 	  . 
	res 5,l		;45cb	cb ad 	. . 
	ld a,008h		;45cd	3e 08 	> . 
	call 00141h		;45cf	cd 41 01 	. A . 
	bit 0,a		;45d2	cb 47 	. G 
	jr nz,$+4		;45d4	20 02 	  . 
	res 4,l		;45d6	cb a5 	. . 
	bit 5,a		;45d8	cb 6f 	. o 
	jr nz,$+4		;45da	20 02 	  . 
	res 0,l		;45dc	cb 85 	. . 
	bit 6,a		;45de	cb 77 	. w 
	jr nz,$+4		;45e0	20 02 	  . 
	res 1,l		;45e2	cb 8d 	. . 
	bit 4,a		;45e4	cb 67 	. g 
	jr nz,$+4		;45e6	20 02 	  . 
	res 2,l		;45e8	cb 95 	. . 
	bit 7,a		;45ea	cb 7f 	.  
	jr nz,$+4		;45ec	20 02 	  . 
	res 3,l		;45ee	cb 9d 	. . 
	ld a,004h		;45f0	3e 04 	> . 
	bit 0,l		;45f2	cb 45 	. E 
	jr nz,$+4		;45f4	20 02 	  . 
	add a,001h		;45f6	c6 01 	. . 
	bit 1,l		;45f8	cb 4d 	. M 
	jr nz,$+4		;45fa	20 02 	  . 
	sub 001h		;45fc	d6 01 	. . 
	bit 3,l		;45fe	cb 5d 	. ] 
	jr nz,$+4		;4600	20 02 	  . 
	add a,003h		;4602	c6 03 	. . 
	bit 2,l		;4604	cb 55 	. U 
	jr nz,$+4		;4606	20 02 	  . 
	sub 003h		;4608	d6 03 	. . 
	ld (0f297h),a		;460a	32 97 f2 	2 . . 
	ld a,l			;460d	7d 	} 
	ld (0f280h),a		;460e	32 80 f2 	2 . . 
	jp 0463dh		;4611	c3 3d 46 	. = F 
	ld c,0ffh		;4614	0e ff 	. . 
	ld b,00ah		;4616	06 0a 	. . 
	sub b			;4618	90 	. 
	inc c			;4619	0c 	. 
	jr nc,$-2		;461a	30 fc 	0 . 
	add a,b			;461c	80 	. 
	ld b,a			;461d	47 	G 
	ld a,030h		;461e	3e 30 	> 0 
	add a,c			;4620	81 	. 
	call 0466ah		;4621	cd 6a 46 	. j F 
	inc hl			;4624	23 	# 
	ld a,030h		;4625	3e 30 	> 0 
	add a,b			;4627	80 	. 
	jr $+66		;4628	18 40 	. @ 
	push af			;462a	f5 	. 
	push bc			;462b	c5 	. 
	ld a,(0f2ach)		;462c	3a ac f2 	: . . 
	and 040h		;462f	e6 40 	. @ 
	ld b,082h		;4631	06 82 	. . 
	or b			;4633	b0 	. 
	ld b,a			;4634	47 	G 
	ld c,001h		;4635	0e 01 	. . 
	call 00047h		;4637	cd 47 00 	. G . 
	pop bc			;463a	c1 	. 
	pop af			;463b	f1 	. 
	ret			;463c	c9 	. 
	push af			;463d	f5 	. 
	push bc			;463e	c5 	. 
	ld a,(0f2ach)		;463f	3a ac f2 	: . . 
	and 040h		;4642	e6 40 	. @ 
	ld b,0a2h		;4644	06 a2 	. . 
	or b			;4646	b0 	. 
	ld b,a			;4647	47 	G 
	ld c,001h		;4648	0e 01 	. . 
	jr $-19		;464a	18 eb 	. . 
	ld a,(0f2ach)		;464c	3a ac f2 	: . . 
	res 6,a		;464f	cb b7 	. . 
	ld (0f2ach),a		;4651	32 ac f2 	2 . . 
	jp 00041h		;4654	c3 41 00 	. A . 
	ld a,(0f2ach)		;4657	3a ac f2 	: . . 
	set 6,a		;465a	cb f7 	. . 
	ld (0f2ach),a		;465c	32 ac f2 	2 . . 
	jp 00044h		;465f	c3 44 00 	. D . 
	call 0462ah		;4662	cd 2a 46 	. * F 
	call 0004ah		;4665	cd 4a 00 	. J . 
	jr $-43		;4668	18 d3 	. . 
	call 0462ah		;466a	cd 2a 46 	. * F 
	call 0004dh		;466d	cd 4d 00 	. M . 
	jr $-51		;4670	18 cb 	. . 
	call 0462ah		;4672	cd 2a 46 	. * F 
	call 00056h		;4675	cd 56 00 	. V . 
	jr $-59		;4678	18 c3 	. . 
	call 0462ah		;467a	cd 2a 46 	. * F 
	call 0005ch		;467d	cd 5c 00 	. \ . 
	jr $-67		;4680	18 bb 	. . 
	ld a,d			;4682	7a 	z 
	or e			;4683	b3 	. 
	jr nz,$+6		;4684	20 04 	  . 
	ld h,d			;4686	62 	b 
	ld l,d			;4687	6a 	j 
	scf			;4688	37 	7 
	ret			;4689	c9 	. 
	ld a,h			;468a	7c 	| 
	ld b,l			;468b	45 	E 
	ld hl,00000h		;468c	21 00 00 	! . . 
	call 0469bh		;468f	cd 9b 46 	. . F 
	ld c,a			;4692	4f 	O 
	ld a,b			;4693	78 	x 
	call 0469bh		;4694	cd 9b 46 	. . F 
	ex de,hl			;4697	eb 	. 
	ld h,c			;4698	61 	a 
	ld l,a			;4699	6f 	o 
	ret			;469a	c9 	. 
	add a,a			;469b	87 	. 
	adc hl,hl		;469c	ed 6a 	. j 
	inc a			;469e	3c 	< 
	sbc hl,de		;469f	ed 52 	. R 
	jr nc,$+4		;46a1	30 02 	0 . 
	add hl,de			;46a3	19 	. 
	dec a			;46a4	3d 	= 
	add a,a			;46a5	87 	. 
	adc hl,hl		;46a6	ed 6a 	. j 
	inc a			;46a8	3c 	< 
	sbc hl,de		;46a9	ed 52 	. R 
	jr nc,$+4		;46ab	30 02 	0 . 
	add hl,de			;46ad	19 	. 
	dec a			;46ae	3d 	= 
	add a,a			;46af	87 	. 
	adc hl,hl		;46b0	ed 6a 	. j 
	inc a			;46b2	3c 	< 
	sbc hl,de		;46b3	ed 52 	. R 
	jr nc,$+4		;46b5	30 02 	0 . 
	add hl,de			;46b7	19 	. 
	dec a			;46b8	3d 	= 
	add a,a			;46b9	87 	. 
	adc hl,hl		;46ba	ed 6a 	. j 
	inc a			;46bc	3c 	< 
	sbc hl,de		;46bd	ed 52 	. R 
	jr nc,$+4		;46bf	30 02 	0 . 
	add hl,de			;46c1	19 	. 
	dec a			;46c2	3d 	= 
	add a,a			;46c3	87 	. 
	adc hl,hl		;46c4	ed 6a 	. j 
	inc a			;46c6	3c 	< 
	sbc hl,de		;46c7	ed 52 	. R 
	jr nc,$+4		;46c9	30 02 	0 . 
	add hl,de			;46cb	19 	. 
	dec a			;46cc	3d 	= 
	add a,a			;46cd	87 	. 
	adc hl,hl		;46ce	ed 6a 	. j 
	inc a			;46d0	3c 	< 
	sbc hl,de		;46d1	ed 52 	. R 
	jr nc,$+4		;46d3	30 02 	0 . 
	add hl,de			;46d5	19 	. 
	dec a			;46d6	3d 	= 
	add a,a			;46d7	87 	. 
	adc hl,hl		;46d8	ed 6a 	. j 
	inc a			;46da	3c 	< 
	sbc hl,de		;46db	ed 52 	. R 
	jr nc,$+4		;46dd	30 02 	0 . 
	add hl,de			;46df	19 	. 
	dec a			;46e0	3d 	= 
	add a,a			;46e1	87 	. 
	adc hl,hl		;46e2	ed 6a 	. j 
	inc a			;46e4	3c 	< 
	sbc hl,de		;46e5	ed 52 	. R 
	jr nc,$+4		;46e7	30 02 	0 . 
	add hl,de			;46e9	19 	. 
	dec a			;46ea	3d 	= 
	ret			;46eb	c9 	. 
	call 04560h		;46ec	cd 60 45 	. ` E 
	xor a			;46ef	af 	. 
	ld (0f2eah),a		;46f0	32 ea f2 	2 . . 
	ld hl,0e332h		;46f3	21 32 e3 	! 2 . 
	ld (hl),0f4h		;46f6	36 f4 	6 . 
	call 06d1fh		;46f8	cd 1f 6d 	. . m 
	ld a,(0f2d8h)		;46fb	3a d8 f2 	: . . 
	add a,a			;46fe	87 	. 
	ld b,a			;46ff	47 	G 
	add a,a			;4700	87 	. 
	add a,a			;4701	87 	. 
	add a,b			;4702	80 	. 
	ld hl,04825h		;4703	21 25 48 	! % H 
	ld d,000h		;4706	16 00 	. . 
	ld e,a			;4708	5f 	_ 
	add hl,de			;4709	19 	. 
	ld e,(hl)			;470a	5e 	^ 
	inc hl			;470b	23 	# 
	ld d,(hl)			;470c	56 	V 
	inc hl			;470d	23 	# 
	push hl			;470e	e5 	. 
	ex de,hl			;470f	eb 	. 
	ld de,(0f2eeh)		;4710	ed 5b ee f2 	. [ . . 
	or a			;4714	b7 	. 
	sbc hl,de		;4715	ed 52 	. R 
	ld (0f2ebh),hl		;4717	22 eb f2 	" . . 
	pop hl			;471a	e1 	. 
	ld e,(hl)			;471b	5e 	^ 
	inc hl			;471c	23 	# 
	ld d,(hl)			;471d	56 	V 
	inc hl			;471e	23 	# 
	push hl			;471f	e5 	. 
	call 06baeh		;4720	cd ae 6b 	. . k 
	call 0685eh		;4723	cd 5e 68 	. ^ h 
	pop hl			;4726	e1 	. 
	ld e,(hl)			;4727	5e 	^ 
	inc hl			;4728	23 	# 
	ld d,(hl)			;4729	56 	V 
	inc hl			;472a	23 	# 
	ld (0f2e2h),de		;472b	ed 53 e2 f2 	. S . . 
	ld e,(hl)			;472f	5e 	^ 
	inc hl			;4730	23 	# 
	ld d,(hl)			;4731	56 	V 
	inc hl			;4732	23 	# 
	ld (0f2e6h),de		;4733	ed 53 e6 f2 	. S . . 
	ld e,(hl)			;4737	5e 	^ 
	inc hl			;4738	23 	# 
	ld d,(hl)			;4739	56 	V 
	ld hl,0f2ach		;473a	21 ac f2 	! . . 
	set 2,(hl)		;473d	cb d6 	. . 
	push hl			;473f	e5 	. 
	call 06a41h		;4740	cd 41 6a 	. A j 
	pop hl			;4743	e1 	. 
	res 2,(hl)		;4744	cb 96 	. . 
	call 068beh		;4746	cd be 68 	. . h 
	call 04560h		;4749	cd 60 45 	. ` E 
	call 04548h		;474c	cd 48 45 	. H E 
	ld hl,047a4h		;474f	21 a4 47 	! . G 
	call 04783h		;4752	cd 83 47 	. . G 
	call 04125h		;4755	cd 25 41 	. % A 
	ld ix,0e320h		;4758	dd 21 20 e3 	. !   . 
	ld iy,0ef70h		;475c	fd 21 70 ef 	. ! p . 
	ld a,(iy+000h)		;4760	fd 7e 00 	. ~ . 
	inc a			;4763	3c 	< 
	ret z			;4764	c8 	. 
	dec a			;4765	3d 	= 
	and 03fh		;4766	e6 3f 	. ? 
	ld (ix+014h),a		;4768	dd 77 14 	. w . 
	ld a,(iy+001h)		;476b	fd 7e 01 	. ~ . 
	ld (ix+012h),a		;476e	dd 77 12 	. w . 
	ld a,(iy+002h)		;4771	fd 7e 02 	. ~ . 
	and 001h		;4774	e6 01 	. . 
	ld (ix+013h),a		;4776	dd 77 13 	. w . 
	call 04283h		;4779	cd 83 42 	. . B 
	ld de,00004h		;477c	11 04 00 	. . . 
	add iy,de		;477f	fd 19 	. . 
	jr $-33		;4781	18 dd 	. . 
	ld b,02ah		;4783	06 2a 	. * 
	ld ix,0e320h		;4785	dd 21 20 e3 	. !   . 
	ld (ix-020h),001h		;4789	dd 36 e0 01 	. 6 . . 
	ld de,00020h		;478d	11 20 00 	.   . 
	ld (ix+000h),000h		;4790	dd 36 00 00 	. 6 . . 
	add ix,de		;4794	dd 19 	. . 
	djnz $-6		;4796	10 f8 	. . 
	ld b,00eh		;4798	06 0e 	. . 
	ld a,(hl)			;479a	7e 	~ 
	ld (ix+000h),a		;479b	dd 77 00 	. w . 
	inc hl			;479e	23 	# 
	add ix,de		;479f	dd 19 	. . 
	djnz $-7		;47a1	10 f7 	. . 
	ret			;47a3	c9 	. 
	ex af,af'			;47a4	08 	. 
	ex af,af'			;47a5	08 	. 
	ex af,af'			;47a6	08 	. 
	ex af,af'			;47a7	08 	. 
	ex af,af'			;47a8	08 	. 
	ld (bc),a			;47a9	02 	. 
	inc bc			;47aa	03 	. 
	inc bc			;47ab	03 	. 
	inc bc			;47ac	03 	. 
	inc bc			;47ad	03 	. 
	inc bc			;47ae	03 	. 
	inc bc			;47af	03 	. 
	inc bc			;47b0	03 	. 
	rst 38h			;47b1	ff 	. 
	inc bc			;47b2	03 	. 
	jr nz,$+24		;47b3	20 16 	  . 
	ld (01e14h),hl		;47b5	22 14 1e 	" . . 
	inc de			;47b8	13 	. 
	rla			;47b9	17 	. 
	ld hl,(0ff00h)		;47ba	2a 00 ff 	* . . 
	ld (bc),a			;47bd	02 	. 
	ex af,af'			;47be	08 	. 
	inc de			;47bf	13 	. 
	inc d			;47c0	14 	. 
	ld e,01ch		;47c1	1e 1c 	. . 
	ld (02a23h),hl		;47c3	22 23 2a 	" # * 
	nop			;47c6	00 	. 
	rst 38h			;47c7	ff 	. 
	inc b			;47c8	04 	. 
	ld (bc),a			;47c9	02 	. 
	ex af,af'			;47ca	08 	. 
	inc hl			;47cb	23 	# 
	ld a,(de)			;47cc	1a 	. 
	inc d			;47cd	14 	. 
	rra			;47ce	1f 	. 
	ld e,013h		;47cf	1e 13 	. . 
	ld hl,(02827h)		;47d1	2a 27 28 	* ' ( 
	inc h			;47d4	24 	$ 
	ld h,02bh		;47d5	26 2b 	& + 
	dec l			;47d7	2d 	- 
	nop			;47d8	00 	. 
	rst 38h			;47d9	ff 	. 
	inc b			;47da	04 	. 
	rrca			;47db	0f 	. 
	dec bc			;47dc	0b 	. 
	ld a,(bc)			;47dd	0a 	. 
	djnz $+29		;47de	10 1b 	. . 
	inc d			;47e0	14 	. 
	ld e,013h		;47e1	1e 13 	. . 
	ld hl,(00105h)		;47e3	2a 05 01 	* . . 
	nop			;47e6	00 	. 
	rst 38h			;47e7	ff 	. 
	dec b			;47e8	05 	. 
	ld bc,02426h		;47e9	01 26 24 	. & $ 
	daa			;47ec	27 	' 
	dec hl			;47ed	2b 	+ 
	inc l			;47ee	2c 	, 
	dec de			;47ef	1b 	. 
	inc d			;47f0	14 	. 
	rra			;47f1	1f 	. 
	rra			;47f2	1f 	. 
	inc de			;47f3	13 	. 
	dec l			;47f4	2d 	- 
	ld hl,(02928h)		;47f5	2a 28 29 	* ( ) 
	nop			;47f8	00 	. 
	rst 38h			;47f9	ff 	. 
	dec b			;47fa	05 	. 
	ld bc,02827h		;47fb	01 27 28 	. ' ( 
	add hl,hl			;47fe	29 	) 
	ld (de),a			;47ff	12 	. 
	rlca			;4800	07 	. 
	ld de,02119h		;4801	11 19 21 	. . ! 
	rra			;4804	1f 	. 
	dec e			;4805	1d 	. 
	ld e,02ah		;4806	1e 2a 	. * 
	nop			;4808	00 	. 
	rst 38h			;4809	ff 	. 
	ld b,024h		;480a	06 24 	. $ 
	ld c,00dh		;480c	0e 0d 	. . 
	dec d			;480e	15 	. 
	ld (de),a			;480f	12 	. 
	ld hl,02827h		;4810	21 27 28 	! ' ( 
	add hl,hl			;4813	29 	) 
	ld h,02ah		;4814	26 2a 	& * 
	dec hl			;4816	2b 	+ 
	nop			;4817	00 	. 
	rst 38h			;4818	ff 	. 
	add hl,bc			;4819	09 	. 
	dec h			;481a	25 	% 
	inc h			;481b	24 	$ 
	ld h,029h		;481c	26 29 	& ) 
	inc l			;481e	2c 	, 
	dec l			;481f	2d 	- 
	jr z,$+31		;4820	28 1d 	( . 
	ld hl,(0ff00h)		;4822	2a 00 ff 	* . . 
	rst 38h			;4825	ff 	. 
	rst 38h			;4826	ff 	. 
	or d			;4827	b2 	. 
	ld b,a			;4828	47 	G 
	rra			;4829	1f 	. 
	adc a,(hl)			;482a	8e 	. 
	sub a			;482b	97 	. 
	sub b			;482c	90 	. 
	or e			;482d	b3 	. 
	adc a,(hl)			;482e	8e 	. 
	nop			;482f	00 	. 
	inc c			;4830	0c 	. 
	cp l			;4831	bd 	. 
	ld b,a			;4832	47 	G 
	call m,02191h		;4833	fc 91 21 	. . ! 
	sub h			;4836	94 	. 
	sbc a,l			;4837	9d 	. 
	sub d			;4838	92 	. 
	nop			;4839	00 	. 
	inc c			;483a	0c 	. 
	ret z			;483b	c8 	. 
	ld b,a			;483c	47 	G 
	dec hl			;483d	2b 	+ 
	sub l			;483e	95 	. 
	defb 0edh;next byte illegal after ed		;483f	ed 	. 
	sub a			;4840	97 	. 
	jp m,00095h		;4841	fa 95 00 	. . . 
	inc c			;4844	0c 	. 
	ret z			;4845	c8 	. 
	ld b,a			;4846	47 	G 
	ld d,c			;4847	51 	Q 
	sbc a,c			;4848	99 	. 
	daa			;4849	27 	' 
	sbc a,h			;484a	9c 	. 
	ex de,hl			;484b	eb 	. 
	sbc a,c			;484c	99 	. 
	nop			;484d	00 	. 
	inc c			;484e	0c 	. 
	jp c,0cc47h		;484f	da 47 cc 	. G . 
	sbc a,l			;4852	9d 	. 
	ld c,a			;4853	4f 	O 
	and e			;4854	a3 	. 
	push af			;4855	f5 	. 
	sbc a,(hl)			;4856	9e 	. 
	nop			;4857	00 	. 
	inc c			;4858	0c 	. 
	jp c,00447h		;4859	da 47 04 	. G . 
	and h			;485c	a4 	. 
	ld c,0a8h		;485d	0e a8 	. . 
	call pe,000a4h		;485f	ec a4 00 	. . . 
	inc c			;4862	0c 	. 
	ret pe			;4863	e8 	. 
	ld b,a			;4864	47 	G 
	dec b			;4865	05 	. 
	xor c			;4866	a9 	. 
	ret po			;4867	e0 	. 
	xor h			;4868	ac 	. 
	ret p			;4869	f0 	. 
	xor c			;486a	a9 	. 
	nop			;486b	00 	. 
	inc c			;486c	0c 	. 
	jp m,09c47h		;486d	fa 47 9c 	. G . 
	xor (hl)			;4870	ae 	. 
	ld a,(bc)			;4871	0a 	. 
	or d			;4872	b2 	. 
	add a,h			;4873	84 	. 
	xor a			;4874	af 	. 
	nop			;4875	00 	. 
	add hl,bc			;4876	09 	. 
	ld a,(bc)			;4877	0a 	. 
	ld c,b			;4878	48 	H 
	jr z,$-75		;4879	28 b3 	( . 
	or 0b8h		;487b	f6 b8 	. . 
	ld e,h			;487d	5c 	\ 
	or h			;487e	b4 	. 
	rst 38h			;487f	ff 	. 
	rst 38h			;4880	ff 	. 
	add hl,de			;4881	19 	. 
	ld c,b			;4882	48 	H 
	call 017b9h		;4883	cd b9 17 	. . . 
	cp d			;4886	ba 	. 
	jp p,006b9h		;4887	f2 b9 06 	. . . 
	jr c,$-33		;488a	38 dd 	8 . 
	ld hl,0e300h		;488c	21 00 e3 	! . . 
	push bc			;488f	c5 	. 
	push ix		;4890	dd e5 	. . 
	ld a,(ix+000h)		;4892	dd 7e 00 	. ~ . 
	or a			;4895	b7 	. 
	jp z,0494bh		;4896	ca 4b 49 	. K I 
	ld l,a			;4899	6f 	o 
	ld h,000h		;489a	26 00 	& . 
	add hl,hl			;489c	29 	) 
	ld de,04971h		;489d	11 71 49 	. q I 
	add hl,de			;48a0	19 	. 
	ld a,(hl)			;48a1	7e 	~ 
	inc hl			;48a2	23 	# 
	ld h,(hl)			;48a3	66 	f 
	ld l,a			;48a4	6f 	o 
	ld a,h			;48a5	7c 	| 
	cp 0e4h		;48a6	fe e4 	. . 
	jp nc,0494bh		;48a8	d2 4b 49 	. K I 
	ld de,048b2h		;48ab	11 b2 48 	. . H 
	push de			;48ae	d5 	. 
	ld (hl),000h		;48af	36 00 	6 . 
	jp (hl)			;48b1	e9 	. 
	call 05584h		;48b2	cd 84 55 	. . U 
	ld hl,(0f2cdh)		;48b5	2a cd f2 	* . . 
	ld (ix+017h),l		;48b8	dd 75 17 	. u . 
	ld (ix+018h),h		;48bb	dd 74 18 	. t . 
	ld a,(ix+001h)		;48be	dd 7e 01 	. ~ . 
	and 0c1h		;48c1	e6 c1 	. . 
	cp 0c0h		;48c3	fe c0 	. . 
	jr nz,$+112		;48c5	20 6e 	  n 
	ld a,(0f2ddh)		;48c7	3a dd f2 	: . . 
	or a			;48ca	b7 	. 
	jr z,$+99		;48cb	28 61 	( a 
	bit 5,(ix+001h)		;48cd	dd cb 01 6e 	. . . n 
	jr z,$+93		;48d1	28 5b 	( [ 
	ld a,(0e314h)		;48d3	3a 14 e3 	: . . 
	ld b,a			;48d6	47 	G 
	ld a,(ix+014h)		;48d7	dd 7e 14 	. ~ . 
	inc a			;48da	3c 	< 
	sub b			;48db	90 	. 
	jr c,$+82		;48dc	38 50 	8 P 
	ex af,af'			;48de	08 	. 
	ld a,(0e316h)		;48df	3a 16 e3 	: . . 
	cp 043h		;48e2	fe 43 	. C 
	jr nz,$+7		;48e4	20 05 	  . 
	ex af,af'			;48e6	08 	. 
	cp 005h		;48e7	fe 05 	. . 
	jr $+5		;48e9	18 03 	. . 
	ex af,af'			;48eb	08 	. 
	cp 004h		;48ec	fe 04 	. . 
	jr nc,$+64		;48ee	30 3e 	0 > 
	ld de,(0e312h)		;48f0	ed 5b 12 e3 	. [ . . 
	ld l,(ix+012h)		;48f4	dd 6e 12 	. n . 
	ld h,(ix+013h)		;48f7	dd 66 13 	. f . 
	inc hl			;48fa	23 	# 
	or a			;48fb	b7 	. 
	sbc hl,de		;48fc	ed 52 	. R 
	jr c,$+48		;48fe	38 2e 	8 . 
	ld a,h			;4900	7c 	| 
	or a			;4901	b7 	. 
	jr nz,$+44		;4902	20 2a 	  * 
	ld a,l			;4904	7d 	} 
	cp 004h		;4905	fe 04 	. . 
	jr nc,$+39		;4907	30 25 	0 % 
	push ix		;4909	dd e5 	. . 
	ld a,004h		;490b	3e 04 	> . 
	call 05674h		;490d	cd 74 56 	. t V 
	pop ix		;4910	dd e1 	. . 
	ld a,(ix+019h)		;4912	dd 7e 19 	. ~ . 
	or a			;4915	b7 	. 
	jr z,$+7		;4916	28 05 	( . 
	dec (ix+019h)		;4918	dd 35 19 	. 5 . 
	jr $+19		;491b	18 11 	. . 
	xor a			;491d	af 	. 
	ld (ix+000h),a		;491e	dd 77 00 	. w . 
	ld (ix+001h),a		;4921	dd 77 01 	. w . 
	ld a,(ix+01fh)		;4924	dd 7e 1f 	. ~ . 
	and 00fh		;4927	e6 0f 	. . 
	call 05710h		;4929	cd 10 57 	. . W 
	jr $+9		;492c	18 07 	. . 
	bit 4,(ix+001h)		;492e	dd cb 01 66 	. . . f 
	call nz,04283h		;4932	c4 83 42 	. . B 
	ld a,(ix+020h)		;4935	dd 7e 20 	. ~   
	cp 008h		;4938	fe 08 	. . 
	jr nz,$+17		;493a	20 0f 	  . 
	ld hl,0f299h		;493c	21 99 f2 	! . . 
	bit 0,(hl)		;493f	cb 46 	. F 
	jr nz,$+10		;4941	20 08 	  . 
	set 0,(hl)		;4943	cb c6 	. . 
	call 04166h		;4945	cd 66 41 	. f A 
	call 0443bh		;4948	cd 3b 44 	. ; D 
	pop ix		;494b	dd e1 	. . 
	ld a,(ix+006h)		;494d	dd 7e 06 	. ~ . 
	and 020h		;4950	e6 20 	.   
	ld (ix+006h),a		;4952	dd 77 06 	. w . 
	bit 0,(ix+001h)		;4955	dd cb 01 46 	. . . F 
	jr z,$+13		;4959	28 0b 	( . 
	ld a,(ix+015h)		;495b	dd 7e 15 	. ~ . 
	ld (0f2a4h),a		;495e	32 a4 f2 	2 . . 
	and 0c3h		;4961	e6 c3 	. . 
	ld (ix+015h),a		;4963	dd 77 15 	. w . 
	ld bc,00020h		;4966	01 20 00 	.   . 
	add ix,bc		;4969	dd 09 	. . 
	pop bc			;496b	c1 	. 
	dec b			;496c	05 	. 
	jp nz,0488fh		;496d	c2 8f 48 	. . H 
	ret			;4970	c9 	. 
	ld (hl),b			;4971	70 	p 
	ld c,c			;4972	49 	I 
	inc b			;4973	04 	. 
	ld c,e			;4974	4b 	K 
	add hl,bc			;4975	09 	. 
	ld h,e			;4976	63 	c 
	and h			;4977	a4 	. 
	ld h,e			;4978	63 	c 
	adc a,(hl)			;4979	8e 	. 
	ld h,l			;497a	65 	e 
	pop bc			;497b	c1 	. 
	ld e,c			;497c	59 	Y 
	call nc,00454h		;497d	d4 54 04 	. T . 
	ld c,e			;4980	4b 	K 
	sub l			;4981	95 	. 
	ld e,l			;4982	5d 	] 
	pop bc			;4983	c1 	. 
	ld e,c			;4984	59 	Y 
	ld ix,0ef70h		;4985	dd 21 70 ef 	. ! p . 
	ld a,(ix+000h)		;4989	dd 7e 00 	. ~ . 
	inc a			;498c	3c 	< 
	ret z			;498d	c8 	. 
	inc a			;498e	3c 	< 
	jp z,04a6ah		;498f	ca 6a 4a 	. j J 
	inc a			;4992	3c 	< 
	jp z,04a6ah		;4993	ca 6a 4a 	. j J 
	ld de,(0f2b1h)		;4996	ed 5b b1 f2 	. [ . . 
	ld l,(ix+001h)		;499a	dd 6e 01 	. n . 
	ld a,(ix+002h)		;499d	dd 7e 02 	. ~ . 
	and 001h		;49a0	e6 01 	. . 
	ld h,a			;49a2	67 	g 
	sbc hl,de		;49a3	ed 52 	. R 
	jp c,04a6ah		;49a5	da 6a 4a 	. j J 
	ld a,01fh		;49a8	3e 1f 	> . 
	cp l			;49aa	bd 	. 
	jp c,04a6ah		;49ab	da 6a 4a 	. j J 
	xor a			;49ae	af 	. 
	or h			;49af	b4 	. 
	jp nz,04a6ah		;49b0	c2 6a 4a 	. j J 
	ex de,hl			;49b3	eb 	. 
	ld hl,0e300h		;49b4	21 00 e3 	! . . 
	ld bc,00020h		;49b7	01 20 00 	.   . 
	ld a,(hl)			;49ba	7e 	~ 
	inc a			;49bb	3c 	< 
	ret z			;49bc	c8 	. 
	dec a			;49bd	3d 	= 
	or a			;49be	b7 	. 
	jr z,$+9		;49bf	28 07 	( . 
	cp 009h		;49c1	fe 09 	. . 
	jr z,$+5		;49c3	28 03 	( . 
	add hl,bc			;49c5	09 	. 
	jr $-12		;49c6	18 f2 	. . 
	push hl			;49c8	e5 	. 
	pop iy		;49c9	fd e1 	. . 
	push ix		;49cb	dd e5 	. . 
	pop hl			;49cd	e1 	. 
	ld (iy+001h),000h		;49ce	fd 36 01 00 	. 6 . . 
	ld a,(ix+000h)		;49d2	dd 7e 00 	. ~ . 
	ld c,a			;49d5	4f 	O 
	and 03fh		;49d6	e6 3f 	. ? 
	ld (iy+014h),a		;49d8	fd 77 14 	. w . 
	bit 7,c		;49db	cb 79 	. y 
	jr z,$+8		;49dd	28 06 	( . 
	ld (iy+01fh),0efh		;49df	fd 36 1f ef 	. 6 . . 
	jr $+6		;49e3	18 04 	. . 
	ld (iy+01fh),0ffh		;49e5	fd 36 1f ff 	. 6 . . 
	ld a,(ix+001h)		;49e9	dd 7e 01 	. ~ . 
	ld (iy+012h),a		;49ec	fd 77 12 	. w . 
	ld a,(ix+002h)		;49ef	dd 7e 02 	. ~ . 
	ld b,a			;49f2	47 	G 
	and 001h		;49f3	e6 01 	. . 
	ld (iy+013h),a		;49f5	fd 77 13 	. w . 
	ld a,(ix+003h)		;49f8	dd 7e 03 	. ~ . 
	ld d,a			;49fb	57 	W 
	and 00fh		;49fc	e6 0f 	. . 
	ld (iy+019h),a		;49fe	fd 77 19 	. w . 
	srl d		;4a01	cb 3a 	. : 
	srl d		;4a03	cb 3a 	. : 
	srl d		;4a05	cb 3a 	. : 
	srl d		;4a07	cb 3a 	. : 
	ld (iy+011h),d		;4a09	fd 72 11 	. r . 
	ld (iy+01bh),l		;4a0c	fd 75 1b 	. u . 
	ld (iy+01ch),h		;4a0f	fd 74 1c 	. t . 
	srl b		;4a12	cb 38 	. 8 
	ld (iy+01dh),b		;4a14	fd 70 1d 	. p . 
	ld (ix+000h),0feh		;4a17	dd 36 00 fe 	. 6 . . 
	set 5,(iy+001h)		;4a1b	fd cb 01 ee 	. . . . 
	ld (iy+004h),000h		;4a1f	fd 36 04 00 	. 6 . . 
	ld (iy+000h),005h		;4a23	fd 36 00 05 	. 6 . . 
	ld a,b			;4a27	78 	x 
	add a,a			;4a28	87 	. 
	ld e,a			;4a29	5f 	_ 
	ld d,000h		;4a2a	16 00 	. . 
	ld hl,05a72h		;4a2c	21 72 5a 	! r Z 
	add hl,de			;4a2f	19 	. 
	ld b,(hl)			;4a30	46 	F 
	ld (iy+01eh),b		;4a31	fd 70 1e 	. p . 
	inc hl			;4a34	23 	# 
	ld a,(hl)			;4a35	7e 	~ 
	and (iy+01fh)		;4a36	fd a6 1f 	. . . 
	ld (iy+01fh),a		;4a39	fd 77 1f 	. w . 
	bit 6,c		;4a3c	cb 71 	. q 
	jr z,$+33		;4a3e	28 1f 	( . 
	set 5,(iy+01fh)		;4a40	fd cb 1f ee 	. . . . 
	ld a,(iy+01dh)		;4a44	fd 7e 1d 	. ~ . 
	ld hl,04a72h		;4a47	21 72 4a 	! r J 
	ld bc,00004h		;4a4a	01 04 00 	. . . 
	cpir		;4a4d	ed b1 	. . 
	ld hl,04a76h		;4a4f	21 76 4a 	! v J 
	add hl,bc			;4a52	09 	. 
	ld a,(hl)			;4a53	7e 	~ 
	ld (iy+011h),a		;4a54	fd 77 11 	. w . 
	ld a,(ix+003h)		;4a57	dd 7e 03 	. ~ . 
	ld (iy+019h),a		;4a5a	fd 77 19 	. w . 
	jr $+13		;4a5d	18 0b 	. . 
	ld a,(iy+01dh)		;4a5f	fd 7e 1d 	. ~ . 
	cp 02ah		;4a62	fe 2a 	. * 
	jr nz,$+6		;4a64	20 04 	  . 
	ld (iy+019h),000h		;4a66	fd 36 19 00 	. 6 . . 
	ld de,00004h		;4a6a	11 04 00 	. . . 
	add ix,de		;4a6d	dd 19 	. . 
	jp 04989h		;4a6f	c3 89 49 	. . I 
	dec h			;4a72	25 	% 
	ld h,017h		;4a73	26 17 	& . 
	rra			;4a75	1f 	. 
	inc bc			;4a76	03 	. 
	inc bc			;4a77	03 	. 
	ld bc,02a02h		;4a78	01 02 2a 	. . * 
	ex de,hl			;4a7b	eb 	. 
	jp p,0b47dh		;4a7c	f2 7d b4 	. } . 
	jr z,$+7		;4a7f	28 05 	( . 
	dec hl			;4a81	2b 	+ 
	ld (0f2ebh),hl		;4a82	22 eb f2 	" . . 
	ret			;4a85	c9 	. 
	ld a,(0f2cah)		;4a86	3a ca f2 	: . . 
	and 00fh		;4a89	e6 0f 	. . 
	ret nz			;4a8b	c0 	. 
	ld a,(0e314h)		;4a8c	3a 14 e3 	: . . 
	cp 00eh		;4a8f	fe 0e 	. . 
	jr c,$+12		;4a91	38 0a 	8 . 
	ld hl,(0e312h)		;4a93	2a 12 e3 	* . . 
	ld de,00170h		;4a96	11 70 01 	. p . 
	or a			;4a99	b7 	. 
	sbc hl,de		;4a9a	ed 52 	. R 
	ret nc			;4a9c	d0 	. 
	ld hl,0e840h		;4a9d	21 40 e8 	! @ . 
	ld a,(hl)			;4aa0	7e 	~ 
	or a			;4aa1	b7 	. 
	jr z,$+17		;4aa2	28 0f 	( . 
	cp 001h		;4aa4	fe 01 	. . 
	ret z			;4aa6	c8 	. 
	cp 007h		;4aa7	fe 07 	. . 
	ret z			;4aa9	c8 	. 
	cp 005h		;4aaa	fe 05 	. . 
	ret z			;4aac	c8 	. 
	ld de,0ffe0h		;4aad	11 e0 ff 	. . . 
	add hl,de			;4ab0	19 	. 
	jr $-17		;4ab1	18 ed 	. . 
	ld a,r		;4ab3	ed 5f 	. _ 
	bit 0,a		;4ab5	cb 47 	. G 
	jr z,$+9		;4ab7	28 07 	( . 
	ld de,0fff2h		;4ab9	11 f2 ff 	. . . 
	xor a			;4abc	af 	. 
	ex af,af'			;4abd	08 	. 
	jr $+8		;4abe	18 06 	. . 
	ld de,0000fh		;4ac0	11 0f 00 	. . . 
	ld a,004h		;4ac3	3e 04 	> . 
	ex af,af'			;4ac5	08 	. 
	push hl			;4ac6	e5 	. 
	pop ix		;4ac7	dd e1 	. . 
	ld a,(0e314h)		;4ac9	3a 14 e3 	: . . 
	ld (ix+014h),a		;4acc	dd 77 14 	. w . 
	ld hl,(0e312h)		;4acf	2a 12 e3 	* . . 
	add hl,de			;4ad2	19 	. 
	call 05d87h		;4ad3	cd 87 5d 	. . ] 
	call 0428ah		;4ad6	cd 8a 42 	. . B 
	call 05e04h		;4ad9	cd 04 5e 	. . ^ 
	ld c,d			;4adc	4a 	J 
	call 05e04h		;4add	cd 04 5e 	. . ^ 
	ld a,d			;4ae0	7a 	z 
	or c			;4ae1	b1 	. 
	and 03ch		;4ae2	e6 3c 	. < 
	ret nz			;4ae4	c0 	. 
	ld (ix+011h),004h		;4ae5	dd 36 11 04 	. 6 . . 
	ld (ix+000h),009h		;4ae9	dd 36 00 09 	. 6 . . 
	xor a			;4aed	af 	. 
	ld (ix+01dh),a		;4aee	dd 77 1d 	. w . 
	ld (ix+01ch),a		;4af1	dd 77 1c 	. w . 
	ld (ix+01eh),a		;4af4	dd 77 1e 	. w . 
	ld (ix+019h),00dh		;4af7	dd 36 19 0d 	. 6 . . 
	ld (ix+01fh),007h		;4afb	dd 36 1f 07 	. 6 . . 
	ex af,af'			;4aff	08 	. 
	ld (ix+008h),a		;4b00	dd 77 08 	. w . 
	ret			;4b03	c9 	. 
	bit 7,(ix+001h)		;4b04	dd cb 01 7e 	. . . ~ 
	jr nz,$+63		;4b08	20 3d 	  = 
	ld hl,04b40h		;4b0a	21 40 4b 	! @ K 
	ld de,08080h		;4b0d	11 80 80 	. . . 
	call 05439h		;4b10	cd 39 54 	. 9 T 
	ld a,001h		;4b13	3e 01 	> . 
	ld (ix+00dh),a		;4b15	dd 77 0d 	. w . 
	call 0bc99h		;4b18	cd 99 bc 	. . . 
	ld a,0c1h		;4b1b	3e c1 	> . 
	ld (ix+001h),a		;4b1d	dd 77 01 	. w . 
	ld hl,00013h		;4b20	21 13 00 	! . . 
	ld (0e312h),hl		;4b23	22 12 e3 	" . . 
	ld (ix+014h),00bh		;4b26	dd 36 14 0b 	. 6 . . 
	ld a,060h		;4b2a	3e 60 	> ` 
	ld (0f2c6h),a		;4b2c	32 c6 f2 	2 . . 
	ld a,004h		;4b2f	3e 04 	> . 
	ld (0f2c8h),a		;4b31	32 c8 f2 	2 . . 
	ld a,007h		;4b34	3e 07 	> . 
	ld (0f2d0h),a		;4b36	32 d0 f2 	2 . . 
	inc a			;4b39	3c 	< 
	ld (0f2b4h),a		;4b3a	32 b4 f2 	2 . . 
	jp 04225h		;4b3d	c3 25 42 	. % B 
	inc b			;4b40	04 	. 
	nop			;4b41	00 	. 
	ld b,001h		;4b42	06 01 	. . 
	ld b,e			;4b44	43 	C 
	ld (hl),h			;4b45	74 	t 
	ld d,h			;4b46	54 	T 
	bit 1,(ix+015h)		;4b47	dd cb 15 4e 	. . . N 
	jr z,$+12		;4b4b	28 0a 	( . 
	call 045a4h		;4b4d	cd a4 45 	. . E 
	ld a,004h		;4b50	3e 04 	> . 
	ld (0f297h),a		;4b52	32 97 f2 	2 . . 
	jr $+8		;4b55	18 06 	. . 
	call 045a4h		;4b57	cd a4 45 	. . E 
	ld a,(0f297h)		;4b5a	3a 97 f2 	: . . 
	ld hl,0e315h		;4b5d	21 15 e3 	! . . 
	bit 6,(hl)		;4b60	cb 76 	. v 
	push hl			;4b62	e5 	. 
	call nz,0531eh		;4b63	c4 1e 53 	. . S 
	pop hl			;4b66	e1 	. 
	bit 7,(hl)		;4b67	cb 7e 	. ~ 
	jr z,$+20		;4b69	28 12 	( . 
	res 7,(hl)		;4b6b	cb be 	. . 
	ld a,(0e301h)		;4b6d	3a 01 e3 	: . . 
	xor 002h		;4b70	ee 02 	. . 
	ld (0e301h),a		;4b72	32 01 e3 	2 . . 
	call 0539dh		;4b75	cd 9d 53 	. . S 
	call 04fa7h		;4b78	cd a7 4f 	. . O 
	jr $-52		;4b7b	18 ca 	. . 
	call 04bbfh		;4b7d	cd bf 4b 	. . K 
	ld a,(0e301h)		;4b80	3a 01 e3 	: . . 
	bit 4,a		;4b83	cb 67 	. g 
	jr nz,$+17		;4b85	20 0f 	  . 
	ld a,(0f297h)		;4b87	3a 97 f2 	: . . 
	cp 009h		;4b8a	fe 09 	. . 
	jr nz,$+10		;4b8c	20 08 	  . 
	ld a,004h		;4b8e	3e 04 	> . 
	ld (0f297h),a		;4b90	32 97 f2 	2 . . 
	call 04bbfh		;4b93	cd bf 4b 	. . K 
	call 0503eh		;4b96	cd 3e 50 	. > P 
	ld a,(0e300h)		;4b99	3a 00 e3 	: . . 
	dec a			;4b9c	3d 	= 
	jr z,$+10		;4b9d	28 08 	( . 
	ld a,(0e301h)		;4b9f	3a 01 e3 	: . . 
	bit 4,a		;4ba2	cb 67 	. g 
	call z,04fa7h		;4ba4	cc a7 4f 	. . O 
	set 6,(ix+006h)		;4ba7	dd cb 06 f6 	. . . . 
	call 041d0h		;4bab	cd d0 41 	. . A 
	call 04225h		;4bae	cd 25 42 	. % B 
	push ix		;4bb1	dd e5 	. . 
	call 04985h		;4bb3	cd 85 49 	. . I 
	call 04a7ah		;4bb6	cd 7a 4a 	. z J 
	pop ix		;4bb9	dd e1 	. . 
	ret			;4bbb	c9 	. 
	ld (0f297h),a		;4bbc	32 97 f2 	2 . . 
	res 4,(ix+001h)		;4bbf	dd cb 01 a6 	. . . . 
	call 0539dh		;4bc3	cd 9d 53 	. . S 
	ret c			;4bc6	d8 	. 
	ld a,(0f297h)		;4bc7	3a 97 f2 	: . . 
	ld hl,04bdah		;4bca	21 da 4b 	! . K 
	cp 009h		;4bcd	fe 09 	. . 
	ret nc			;4bcf	d0 	. 
	add a,a			;4bd0	87 	. 
	ld e,a			;4bd1	5f 	_ 
	ld d,000h		;4bd2	16 00 	. . 
	add hl,de			;4bd4	19 	. 
	ld a,(hl)			;4bd5	7e 	~ 
	inc hl			;4bd6	23 	# 
	ld h,(hl)			;4bd7	66 	f 
	ld l,a			;4bd8	6f 	o 
	jp (hl)			;4bd9	e9 	. 
	call pe,0584bh		;4bda	ec 4b 58 	. K X 
	ld c,h			;4bdd	4c 	L 
	defb 0ddh,04ch,04ah	;illegal sequence		;4bde	dd 4c 4a 	. L J 
	ld c,l			;4be1	4d 	M 
	or b			;4be2	b0 	. 
	ld c,l			;4be3	4d 	M 
	ex (sp),hl			;4be4	e3 	. 
	ld c,l			;4be5	4d 	M 
	ld c,h			;4be6	4c 	L 
	ld c,(hl)			;4be7	4e 	N 
	or (hl)			;4be8	b6 	. 
	ld c,(hl)			;4be9	4e 	N 
	ld a,(0dd4fh)		;4bea	3a 4f dd 	: O . 
	ld a,(hl)			;4bed	7e 	~ 
	nop			;4bee	00 	. 
	dec a			;4bef	3d 	= 
	jp z,04fa7h		;4bf0	ca a7 4f 	. . O 
	ld a,(0f2c5h)		;4bf3	3a c5 f2 	: . . 
	ld c,a			;4bf6	4f 	O 
	and 029h		;4bf7	e6 29 	. ) 
	cp 029h		;4bf9	fe 29 	. ) 
	jr nz,$+10		;4bfb	20 08 	  . 
	call 05134h		;4bfd	cd 34 51 	. 4 Q 
	call 05236h		;4c00	cd 36 52 	. 6 R 
	jr $+55		;4c03	18 35 	. 5 
	xor a			;4c05	af 	. 
	ld hl,0f2a4h		;4c06	21 a4 f2 	! . . 
	bit 3,(hl)		;4c09	cb 5e 	. ^ 
	jr z,$+14		;4c0b	28 0c 	( . 
	bit 0,c		;4c0d	cb 41 	. A 
	jr z,$+7		;4c0f	28 05 	( . 
	call 05134h		;4c11	cd 34 51 	. 4 Q 
	jr $+38		;4c14	18 24 	. $ 
	or a			;4c16	b7 	. 
	ret nz			;4c17	c0 	. 
	inc a			;4c18	3c 	< 
	bit 3,c		;4c19	cb 59 	. Y 
	jr z,$+7		;4c1b	28 05 	( . 
	call 05236h		;4c1d	cd 36 52 	. 6 R 
	jr $+26		;4c20	18 18 	. . 
	or a			;4c22	b7 	. 
	ret nz			;4c23	c0 	. 
	inc a			;4c24	3c 	< 
	jr $-24		;4c25	18 e6 	. . 
	ld a,(0f2c5h)		;4c27	3a c5 f2 	: . . 
	bit 0,a		;4c2a	cb 47 	. G 
	jr z,$+11		;4c2c	28 09 	( . 
	bit 5,a		;4c2e	cb 6f 	. o 
	jr nz,$+7		;4c30	20 05 	  . 
	bit 3,a		;4c32	cb 5f 	. _ 
	ret nz			;4c34	c0 	. 
	jr nz,$+5		;4c35	20 03 	  . 
	call 05236h		;4c37	cd 36 52 	. 6 R 
	ld a,(ix+000h)		;4c3a	dd 7e 00 	. ~ . 
	cp 007h		;4c3d	fe 07 	. . 
	ret nz			;4c3f	c0 	. 
	ld a,(0e315h)		;4c40	3a 15 e3 	: . . 
	bit 4,a		;4c43	cb 67 	. g 
	jr z,$+11		;4c45	28 09 	( . 
	bit 3,a		;4c47	cb 5f 	. _ 
	ret nz			;4c49	c0 	. 
	ld a,001h		;4c4a	3e 01 	> . 
	ld (0f297h),a		;4c4c	32 97 f2 	2 . . 
	ret			;4c4f	c9 	. 
	bit 3,a		;4c50	cb 5f 	. _ 
	jr z,$-8		;4c52	28 f6 	( . 
	ld a,003h		;4c54	3e 03 	> . 
	jr $-10		;4c56	18 f4 	. . 
	ld a,(0e300h)		;4c58	3a 00 e3 	: . . 
	dec a			;4c5b	3d 	= 
	jr nz,$+19		;4c5c	20 11 	  . 
	ld a,(0f2c5h)		;4c5e	3a c5 f2 	: . . 
	bit 3,a		;4c61	cb 5f 	. _ 
	call nz,05236h		;4c63	c4 36 52 	. 6 R 
	bit 4,(ix+001h)		;4c66	dd cb 01 66 	. . . f 
	jr z,$+5		;4c6a	28 03 	( . 
	call 0538eh		;4c6c	cd 8e 53 	. . S 
	call 05134h		;4c6f	cd 34 51 	. 4 Q 
	bit 4,(ix+001h)		;4c72	dd cb 01 66 	. . . f 
	jr nz,$+42		;4c76	20 28 	  ( 
	ld a,(0f2c5h)		;4c78	3a c5 f2 	: . . 
	bit 2,a		;4c7b	cb 57 	. W 
	jr z,$+35		;4c7d	28 21 	( ! 
	ex af,af'			;4c7f	08 	. 
	call 05393h		;4c80	cd 93 53 	. . S 
	ld a,(0f2c5h)		;4c83	3a c5 f2 	: . . 
	bit 0,a		;4c86	cb 47 	. G 
	jr z,$+20		;4c88	28 12 	( . 
	call 05134h		;4c8a	cd 34 51 	. 4 Q 
	call 051f9h		;4c8d	cd f9 51 	. . Q 
	ld a,(ix+000h)		;4c90	dd 7e 00 	. ~ . 
	cp 007h		;4c93	fe 07 	. . 
	ret nz			;4c95	c0 	. 
	ld a,002h		;4c96	3e 02 	> . 
	ld (0f297h),a		;4c98	32 97 f2 	2 . . 
	ret			;4c9b	c9 	. 
	ex af,af'			;4c9c	08 	. 
	ld (0f2c5h),a		;4c9d	32 c5 f2 	2 . . 
	ex af,af'			;4ca0	08 	. 
	ld a,(ix+000h)		;4ca1	dd 7e 00 	. ~ . 
	dec a			;4ca4	3d 	= 
	jr nz,$+8		;4ca5	20 06 	  . 
	ld (0f2c7h),a		;4ca7	32 c7 f2 	2 . . 
	jp 04c27h		;4caa	c3 27 4c 	. ' L 
	bit 4,(ix+001h)		;4cad	dd cb 01 66 	. . . f 
	ret nz			;4cb1	c0 	. 
	ex af,af'			;4cb2	08 	. 
	bit 3,a		;4cb3	cb 5f 	. _ 
	ret z			;4cb5	c8 	. 
	ex af,af'			;4cb6	08 	. 
	call 0538eh		;4cb7	cd 8e 53 	. . S 
	ld a,(0f2c5h)		;4cba	3a c5 f2 	: . . 
	bit 0,a		;4cbd	cb 47 	. G 
	jp z,04cd8h		;4cbf	ca d8 4c 	. . L 
	call 05134h		;4cc2	cd 34 51 	. 4 Q 
	ex af,af'			;4cc5	08 	. 
	ld (0f2c5h),a		;4cc6	32 c5 f2 	2 . . 
	call 0524dh		;4cc9	cd 4d 52 	. M R 
	ld a,(ix+000h)		;4ccc	dd 7e 00 	. ~ . 
	cp 007h		;4ccf	fe 07 	. . 
	ret nz			;4cd1	c0 	. 
	ld a,000h		;4cd2	3e 00 	> . 
	ld (0f297h),a		;4cd4	32 97 f2 	2 . . 
	ret			;4cd7	c9 	. 
	ex af,af'			;4cd8	08 	. 
	ld (0f2c5h),a		;4cd9	32 c5 f2 	2 . . 
	ret			;4cdc	c9 	. 
	ld a,(0f2c5h)		;4cdd	3a c5 f2 	: . . 
	ld c,a			;4ce0	4f 	O 
	and 015h		;4ce1	e6 15 	. . 
	cp 015h		;4ce3	fe 15 	. . 
	jr nz,$+10		;4ce5	20 08 	  . 
	call 05134h		;4ce7	cd 34 51 	. 4 Q 
	call 051e8h		;4cea	cd e8 51 	. . Q 
	jr $+63		;4ced	18 3d 	. = 
	xor a			;4cef	af 	. 
	ld hl,0f2a4h		;4cf0	21 a4 f2 	! . . 
	bit 2,(hl)		;4cf3	cb 56 	. V 
	jr z,$+36		;4cf5	28 22 	( " 
	bit 0,c		;4cf7	cb 41 	. A 
	jr z,$+28		;4cf9	28 1a 	( . 
	call 05134h		;4cfb	cd 34 51 	. 4 Q 
	ld a,(0e300h)		;4cfe	3a 00 e3 	: . . 
	dec a			;4d01	3d 	= 
	jr nz,$+42		;4d02	20 28 	  ( 
	bit 4,(ix+001h)		;4d04	dd cb 01 66 	. . . f 
	jr z,$+52		;4d08	28 32 	( 2 
	ld de,0ffffh		;4d0a	11 ff ff 	. . . 
	call 05396h		;4d0d	cd 96 53 	. . S 
	call 051e8h		;4d10	cd e8 51 	. . Q 
	jr $+25		;4d13	18 17 	. . 
	or a			;4d15	b7 	. 
	jr nz,$+22		;4d16	20 14 	  . 
	inc a			;4d18	3c 	< 
	push af			;4d19	f5 	. 
	call 051e8h		;4d1a	cd e8 51 	. . Q 
	pop af			;4d1d	f1 	. 
	bit 4,(ix+001h)		;4d1e	dd cb 01 66 	. . . f 
	jr z,$+4		;4d22	28 02 	( . 
	jr $+8		;4d24	18 06 	. . 
	or a			;4d26	b7 	. 
	jr nz,$+5		;4d27	20 03 	  . 
	inc a			;4d29	3c 	< 
	jr $-51		;4d2a	18 cb 	. . 
	ld a,(0e300h)		;4d2c	3a 00 e3 	: . . 
	cp 007h		;4d2f	fe 07 	. . 
	ret nz			;4d31	c0 	. 
	ld a,(0e315h)		;4d32	3a 15 e3 	: . . 
	bit 4,a		;4d35	cb 67 	. g 
	jr z,$+11		;4d37	28 09 	( . 
	bit 2,a		;4d39	cb 57 	. W 
	ret nz			;4d3b	c0 	. 
	ld a,001h		;4d3c	3e 01 	> . 
	ld (0f297h),a		;4d3e	32 97 f2 	2 . . 
	ret			;4d41	c9 	. 
	bit 2,a		;4d42	cb 57 	. W 
	jr z,$-8		;4d44	28 f6 	( . 
	ld a,005h		;4d46	3e 05 	> . 
	jr $-10		;4d48	18 f4 	. . 
	ld a,(ix+000h)		;4d4a	dd 7e 00 	. ~ . 
	dec a			;4d4d	3d 	= 
	jp z,04fa7h		;4d4e	ca a7 4f 	. . O 
	call 05236h		;4d51	cd 36 52 	. 6 R 
	bit 4,(ix+001h)		;4d54	dd cb 01 66 	. . . f 
	ret nz			;4d58	c0 	. 
	ld l,(ix+017h)		;4d59	dd 6e 17 	. n . 
	ld h,(ix+018h)		;4d5c	dd 66 18 	. f . 
	ld a,(0f2c5h)		;4d5f	3a c5 f2 	: . . 
	bit 0,a		;4d62	cb 47 	. G 
	jr z,$+35		;4d64	28 21 	( ! 
	ex af,af'			;4d66	08 	. 
	push hl			;4d67	e5 	. 
	dec hl			;4d68	2b 	+ 
	call 0539ah		;4d69	cd 9a 53 	. . S 
	call 05236h		;4d6c	cd 36 52 	. 6 R 
	pop hl			;4d6f	e1 	. 
	bit 4,(ix+001h)		;4d70	dd cb 01 66 	. . . f 
	jr z,$+15		;4d74	28 0d 	( . 
	ex af,af'			;4d76	08 	. 
	ld (0f2c5h),a		;4d77	32 c5 f2 	2 . . 
	call 05149h		;4d7a	cd 49 51 	. I Q 
	ld a,000h		;4d7d	3e 00 	> . 
	ld (0f297h),a		;4d7f	32 97 f2 	2 . . 
	ret			;4d82	c9 	. 
	ex af,af'			;4d83	08 	. 
	ld (0f2c5h),a		;4d84	32 c5 f2 	2 . . 
	bit 1,a		;4d87	cb 4f 	. O 
	jr z,$+33		;4d89	28 1f 	( . 
	ex af,af'			;4d8b	08 	. 
	inc hl			;4d8c	23 	# 
	call 0539ah		;4d8d	cd 9a 53 	. . S 
	call 05236h		;4d90	cd 36 52 	. 6 R 
	bit 4,(ix+001h)		;4d93	dd cb 01 66 	. . . f 
	jr z,$+15		;4d97	28 0d 	( . 
	ex af,af'			;4d99	08 	. 
	ld (0f2c5h),a		;4d9a	32 c5 f2 	2 . . 
	call 05197h		;4d9d	cd 97 51 	. . Q 
	ld a,006h		;4da0	3e 06 	> . 
	ld (0f297h),a		;4da2	32 97 f2 	2 . . 
	ret			;4da5	c9 	. 
	ex af,af'			;4da6	08 	. 
	ld (0f2c5h),a		;4da7	32 c5 f2 	2 . . 
	ld a,009h		;4daa	3e 09 	> . 
	ld (0f297h),a		;4dac	32 97 f2 	2 . . 
	ret			;4daf	c9 	. 
	ld a,(ix+000h)		;4db0	dd 7e 00 	. ~ . 
	dec a			;4db3	3d 	= 
	jr z,$+20		;4db4	28 12 	( . 
	cp 006h		;4db6	fe 06 	. . 
	ret nz			;4db8	c0 	. 
	ld a,(0f2b5h)		;4db9	3a b5 f2 	: . . 
	ld hl,0548ah		;4dbc	21 8a 54 	! . T 
	ld bc,00009h		;4dbf	01 09 00 	. . . 
	cpdr		;4dc2	ed b9 	. . 
	ld a,c			;4dc4	79 	y 
	jp 04bcah		;4dc5	c3 ca 4b 	. . K 
	xor a			;4dc8	af 	. 
	ld (0f2c7h),a		;4dc9	32 c7 f2 	2 . . 
	call 05236h		;4dcc	cd 36 52 	. 6 R 
	bit 6,(ix+015h)		;4dcf	dd cb 15 76 	. . . v 
	ret nz			;4dd3	c0 	. 
	ld a,(0f2b4h)		;4dd4	3a b4 f2 	: . . 
	cp 014h		;4dd7	fe 14 	. . 
	ret c			;4dd9	d8 	. 
	ld (ix+00bh),005h		;4dda	dd 36 0b 05 	. 6 . . 
	set 2,(ix+006h)		;4dde	dd cb 06 d6 	. . . . 
	ret			;4de2	c9 	. 
	call 051e8h		;4de3	cd e8 51 	. . Q 
	bit 4,(ix+001h)		;4de6	dd cb 01 66 	. . . f 
	ret nz			;4dea	c0 	. 
	ld a,(ix+000h)		;4deb	dd 7e 00 	. ~ . 
	dec a			;4dee	3d 	= 
	ret z			;4def	c8 	. 
	ld l,(ix+017h)		;4df0	dd 6e 17 	. n . 
	ld h,(ix+018h)		;4df3	dd 66 18 	. f . 
	ld a,(0f2c5h)		;4df6	3a c5 f2 	: . . 
	bit 0,a		;4df9	cb 47 	. G 
	jr z,$+35		;4dfb	28 21 	( ! 
	ex af,af'			;4dfd	08 	. 
	push hl			;4dfe	e5 	. 
	dec hl			;4dff	2b 	+ 
	call 0539ah		;4e00	cd 9a 53 	. . S 
	call 051e8h		;4e03	cd e8 51 	. . Q 
	pop hl			;4e06	e1 	. 
	bit 4,(ix+001h)		;4e07	dd cb 01 66 	. . . f 
	jr z,$+15		;4e0b	28 0d 	( . 
	ex af,af'			;4e0d	08 	. 
	ld (0f2c5h),a		;4e0e	32 c5 f2 	2 . . 
	call 05149h		;4e11	cd 49 51 	. I Q 
	ld a,002h		;4e14	3e 02 	> . 
	ld (0f297h),a		;4e16	32 97 f2 	2 . . 
	ret			;4e19	c9 	. 
	ex af,af'			;4e1a	08 	. 
	ld (0f2c5h),a		;4e1b	32 c5 f2 	2 . . 
	bit 1,a		;4e1e	cb 4f 	. O 
	jr z,$+30		;4e20	28 1c 	( . 
	ex af,af'			;4e22	08 	. 
	inc hl			;4e23	23 	# 
	call 0539ah		;4e24	cd 9a 53 	. . S 
	call 051e8h		;4e27	cd e8 51 	. . Q 
	bit 4,(ix+001h)		;4e2a	dd cb 01 66 	. . . f 
	jr z,$+15		;4e2e	28 0d 	( . 
	ex af,af'			;4e30	08 	. 
	ld (0f2c5h),a		;4e31	32 c5 f2 	2 . . 
	call 05197h		;4e34	cd 97 51 	. . Q 
	ld a,008h		;4e37	3e 08 	> . 
	ld (0f297h),a		;4e39	32 97 f2 	2 . . 
	ret			;4e3c	c9 	. 
	ex af,af'			;4e3d	08 	. 
	ld (0f2c5h),a		;4e3e	32 c5 f2 	2 . . 
	ld a,(0e300h)		;4e41	3a 00 e3 	: . . 
	dec a			;4e44	3d 	= 
	ret z			;4e45	c8 	. 
	ld a,009h		;4e46	3e 09 	> . 
	ld (0f297h),a		;4e48	32 97 f2 	2 . . 
	ret			;4e4b	c9 	. 
	ld a,(ix+000h)		;4e4c	dd 7e 00 	. ~ . 
	dec a			;4e4f	3d 	= 
	jp z,04fa7h		;4e50	ca a7 4f 	. . O 
	ld a,(0f2c5h)		;4e53	3a c5 f2 	: . . 
	and 08ah		;4e56	e6 8a 	. . 
	cp 08ah		;4e58	fe 8a 	. . 
	jr nz,$+10		;4e5a	20 08 	  . 
	call 05182h		;4e5c	cd 82 51 	. . Q 
	call 05236h		;4e5f	cd 36 52 	. 6 R 
	jr $+54		;4e62	18 34 	. 4 
	xor a			;4e64	af 	. 
	ld hl,0f2a4h		;4e65	21 a4 f2 	! . . 
	bit 3,(hl)		;4e68	cb 5e 	. ^ 
	jr z,$+14		;4e6a	28 0c 	( . 
	bit 1,c		;4e6c	cb 49 	. I 
	jr z,$+7		;4e6e	28 05 	( . 
	call 05182h		;4e70	cd 82 51 	. . Q 
	jr $+37		;4e73	18 23 	. # 
	or a			;4e75	b7 	. 
	ret nz			;4e76	c0 	. 
	inc a			;4e77	3c 	< 
	bit 3,c		;4e78	cb 59 	. Y 
	jr z,$+7		;4e7a	28 05 	( . 
	call 05236h		;4e7c	cd 36 52 	. 6 R 
	jr $+25		;4e7f	18 17 	. . 
	or a			;4e81	b7 	. 
	ret nz			;4e82	c0 	. 
	inc a			;4e83	3c 	< 
	jr $-24		;4e84	18 e6 	. . 
	ld a,(0f2c5h)		;4e86	3a c5 f2 	: . . 
	bit 1,a		;4e89	cb 4f 	. O 
	jr z,$+10		;4e8b	28 08 	( . 
	bit 7,a		;4e8d	cb 7f 	.  
	jr nz,$+6		;4e8f	20 04 	  . 
	bit 3,a		;4e91	cb 5f 	. _ 
	jr nz,$+5		;4e93	20 03 	  . 
	call 05236h		;4e95	cd 36 52 	. 6 R 
	ld a,(ix+000h)		;4e98	dd 7e 00 	. ~ . 
	cp 007h		;4e9b	fe 07 	. . 
	ret nz			;4e9d	c0 	. 
	ld a,(0e315h)		;4e9e	3a 15 e3 	: . . 
	bit 5,a		;4ea1	cb 6f 	. o 
	jr z,$+11		;4ea3	28 09 	( . 
	bit 3,a		;4ea5	cb 5f 	. _ 
	ret nz			;4ea7	c0 	. 
	ld a,007h		;4ea8	3e 07 	> . 
	ld (0f297h),a		;4eaa	32 97 f2 	2 . . 
	ret			;4ead	c9 	. 
	bit 3,a		;4eae	cb 5f 	. _ 
	jr z,$-8		;4eb0	28 f6 	( . 
	ld a,003h		;4eb2	3e 03 	> . 
	jr $-10		;4eb4	18 f4 	. . 
	ld a,(0e300h)		;4eb6	3a 00 e3 	: . . 
	dec a			;4eb9	3d 	= 
	jr nz,$+19		;4eba	20 11 	  . 
	ld a,(0f2c5h)		;4ebc	3a c5 f2 	: . . 
	bit 3,a		;4ebf	cb 5f 	. _ 
	call nz,05236h		;4ec1	c4 36 52 	. 6 R 
	bit 4,(ix+001h)		;4ec4	dd cb 01 66 	. . . f 
	jr z,$+5		;4ec8	28 03 	( . 
	call 0538eh		;4eca	cd 8e 53 	. . S 
	call 05182h		;4ecd	cd 82 51 	. . Q 
	bit 4,(ix+001h)		;4ed0	dd cb 01 66 	. . . f 
	jr nz,$+42		;4ed4	20 28 	  ( 
	ld a,(0f2c5h)		;4ed6	3a c5 f2 	: . . 
	bit 2,a		;4ed9	cb 57 	. W 
	jr z,$+35		;4edb	28 21 	( ! 
	ex af,af'			;4edd	08 	. 
	call 05393h		;4ede	cd 93 53 	. . S 
	ld a,(0f2c5h)		;4ee1	3a c5 f2 	: . . 
	bit 1,a		;4ee4	cb 4f 	. O 
	jr z,$+20		;4ee6	28 12 	( . 
	call 05182h		;4ee8	cd 82 51 	. . Q 
	call 051f9h		;4eeb	cd f9 51 	. . Q 
	ld a,(ix+000h)		;4eee	dd 7e 00 	. ~ . 
	cp 007h		;4ef1	fe 07 	. . 
	ret nz			;4ef3	c0 	. 
	ld a,008h		;4ef4	3e 08 	> . 
	ld (0f297h),a		;4ef6	32 97 f2 	2 . . 
	ret			;4ef9	c9 	. 
	ex af,af'			;4efa	08 	. 
	ld (0f2c5h),a		;4efb	32 c5 f2 	2 . . 
	ex af,af'			;4efe	08 	. 
	ld a,(ix+000h)		;4eff	dd 7e 00 	. ~ . 
	dec a			;4f02	3d 	= 
	jr nz,$+8		;4f03	20 06 	  . 
	ld (0f2c7h),a		;4f05	32 c7 f2 	2 . . 
	jp 04e86h		;4f08	c3 86 4e 	. . N 
	bit 4,(ix+001h)		;4f0b	dd cb 01 66 	. . . f 
	ret nz			;4f0f	c0 	. 
	ex af,af'			;4f10	08 	. 
	bit 3,a		;4f11	cb 5f 	. _ 
	ret z			;4f13	c8 	. 
	ex af,af'			;4f14	08 	. 
	call 0538eh		;4f15	cd 8e 53 	. . S 
	ld a,(0f2c5h)		;4f18	3a c5 f2 	: . . 
	bit 1,a		;4f1b	cb 4f 	. O 
	jr z,$+24		;4f1d	28 16 	( . 
	call 05182h		;4f1f	cd 82 51 	. . Q 
	ex af,af'			;4f22	08 	. 
	ld (0f2c5h),a		;4f23	32 c5 f2 	2 . . 
	call 0524dh		;4f26	cd 4d 52 	. M R 
	ld a,(ix+000h)		;4f29	dd 7e 00 	. ~ . 
	cp 007h		;4f2c	fe 07 	. . 
	ret nz			;4f2e	c0 	. 
	ld a,006h		;4f2f	3e 06 	> . 
	ld (0f297h),a		;4f31	32 97 f2 	2 . . 
	ret			;4f34	c9 	. 
	ex af,af'			;4f35	08 	. 
	ld (0f2c5h),a		;4f36	32 c5 f2 	2 . . 
	ret			;4f39	c9 	. 
	ld a,(0f2c5h)		;4f3a	3a c5 f2 	: . . 
	ld c,a			;4f3d	4f 	O 
	and 046h		;4f3e	e6 46 	. F 
	cp 046h		;4f40	fe 46 	. F 
	jr nz,$+10		;4f42	20 08 	  . 
	call 05182h		;4f44	cd 82 51 	. . Q 
	call 051e8h		;4f47	cd e8 51 	. . Q 
	jr $+63		;4f4a	18 3d 	. = 
	xor a			;4f4c	af 	. 
	ld hl,0f2a4h		;4f4d	21 a4 f2 	! . . 
	bit 2,(hl)		;4f50	cb 56 	. V 
	jr z,$+36		;4f52	28 22 	( " 
	bit 1,c		;4f54	cb 49 	. I 
	jr z,$+28		;4f56	28 1a 	( . 
	call 05182h		;4f58	cd 82 51 	. . Q 
	ld a,(0e300h)		;4f5b	3a 00 e3 	: . . 
	dec a			;4f5e	3d 	= 
	jr nz,$+42		;4f5f	20 28 	  ( 
	bit 4,(ix+001h)		;4f61	dd cb 01 66 	. . . f 
	jr z,$+52		;4f65	28 32 	( 2 
	ld de,00001h		;4f67	11 01 00 	. . . 
	call 05396h		;4f6a	cd 96 53 	. . S 
	call 051e8h		;4f6d	cd e8 51 	. . Q 
	jr $+25		;4f70	18 17 	. . 
	or a			;4f72	b7 	. 
	jr nz,$+22		;4f73	20 14 	  . 
	inc a			;4f75	3c 	< 
	push af			;4f76	f5 	. 
	call 051e8h		;4f77	cd e8 51 	. . Q 
	pop af			;4f7a	f1 	. 
	bit 4,(ix+001h)		;4f7b	dd cb 01 66 	. . . f 
	jr z,$+4		;4f7f	28 02 	( . 
	jr $+8		;4f81	18 06 	. . 
	or a			;4f83	b7 	. 
	jr nz,$+5		;4f84	20 03 	  . 
	inc a			;4f86	3c 	< 
	jr $-51		;4f87	18 cb 	. . 
	ld a,(0e300h)		;4f89	3a 00 e3 	: . . 
	cp 007h		;4f8c	fe 07 	. . 
	ret nz			;4f8e	c0 	. 
	ld a,(0e315h)		;4f8f	3a 15 e3 	: . . 
	bit 5,a		;4f92	cb 6f 	. o 
	jr z,$+11		;4f94	28 09 	( . 
	bit 2,a		;4f96	cb 57 	. W 
	ret nz			;4f98	c0 	. 
	ld a,007h		;4f99	3e 07 	> . 
	ld (0f297h),a		;4f9b	32 97 f2 	2 . . 
	ret			;4f9e	c9 	. 
	bit 2,a		;4f9f	cb 57 	. W 
	jr z,$-8		;4fa1	28 f6 	( . 
	ld a,005h		;4fa3	3e 05 	> . 
	jr $-10		;4fa5	18 f4 	. . 
	ld a,(0f2c5h)		;4fa7	3a c5 f2 	: . . 
	bit 3,a		;4faa	cb 5f 	. _ 
	jr z,$+13		;4fac	28 0b 	( . 
	push af			;4fae	f5 	. 
	call 0538eh		;4faf	cd 8e 53 	. . S 
	call 05236h		;4fb2	cd 36 52 	. 6 R 
	pop af			;4fb5	f1 	. 
	ld (0f2c5h),a		;4fb6	32 c5 f2 	2 . . 
	ld a,004h		;4fb9	3e 04 	> . 
	ld (0f2c8h),a		;4fbb	32 c8 f2 	2 . . 
	res 6,(ix+015h)		;4fbe	dd cb 15 b6 	. . . . 
	ld a,(ix+00dh)		;4fc2	dd 7e 0d 	. ~ . 
	dec a			;4fc5	3d 	= 
	jr nz,$+65		;4fc6	20 3f 	  ? 
	ld a,007h		;4fc8	3e 07 	> . 
	bit 1,(ix+001h)		;4fca	dd cb 01 4e 	. . . N 
	jr z,$+7		;4fce	28 05 	( . 
	ld hl,0556eh		;4fd0	21 6e 55 	! n U 
	jr $+5		;4fd3	18 03 	. . 
	ld hl,05573h		;4fd5	21 73 55 	! s U 
	ld (0e30eh),hl		;4fd8	22 0e e3 	" . . 
	ld (ix+00dh),a		;4fdb	dd 77 0d 	. w . 
	ld (ix+000h),006h		;4fde	dd 36 00 06 	. 6 . . 
	ld a,001h		;4fe2	3e 01 	> . 
	ld (ix+00bh),a		;4fe4	dd 77 0b 	. w . 
	ld (ix+009h),a		;4fe7	dd 77 09 	. w . 
	inc a			;4fea	3c 	< 
	ld (ix+00ah),a		;4feb	dd 77 0a 	. w . 
	ld (ix+00ch),005h		;4fee	dd 36 0c 05 	. 6 . . 
	call 0558fh		;4ff2	cd 8f 55 	. . U 
	ld a,(ix+004h)		;4ff5	dd 7e 04 	. ~ . 
	ld (0f2b4h),a		;4ff8	32 b4 f2 	2 . . 
	ld (ix+004h),004h		;4ffb	dd 36 04 04 	. 6 . . 
	set 3,(ix+006h)		;4fff	dd cb 06 de 	. . . . 
	pop hl			;5003	e1 	. 
	jp 04ba7h		;5004	c3 a7 4b 	. . K 
	ld a,(0f2c5h)		;5007	3a c5 f2 	: . . 
	bit 3,a		;500a	cb 5f 	. _ 
	jr nz,$+9		;500c	20 07 	  . 
	bit 2,a		;500e	cb 57 	. W 
	jr z,$+23		;5010	28 15 	( . 
	call 051e8h		;5012	cd e8 51 	. . Q 
	ld a,001h		;5015	3e 01 	> . 
	bit 1,(ix+001h)		;5017	dd cb 01 4e 	. . . N 
	jr z,$+7		;501b	28 05 	( . 
	ld hl,05578h		;501d	21 78 55 	! x U 
	jr $-72		;5020	18 b6 	. . 
	ld hl,0557eh		;5022	21 7e 55 	! ~ U 
	jr $-77		;5025	18 b1 	. . 
	ld hl,0e315h		;5027	21 15 e3 	! . . 
	bit 1,(hl)		;502a	cb 4e 	. N 
	ret nz			;502c	c0 	. 
	ld a,(0f2b5h)		;502d	3a b5 f2 	: . . 
	add a,004h		;5030	c6 04 	. . 
	and 007h		;5032	e6 07 	. . 
	ld (0f2b5h),a		;5034	32 b5 f2 	2 . . 
	ld (ix+009h),001h		;5037	dd 36 09 01 	. 6 . . 
	set 1,(hl)		;503b	cb ce 	. . 
	ret			;503d	c9 	. 
	ld a,(ix+015h)		;503e	dd 7e 15 	. ~ . 
	bit 6,a		;5041	cb 77 	. w 
	jr nz,$+10		;5043	20 08 	  . 
	bit 0,a		;5045	cb 47 	. G 
	jr z,$+6		;5047	28 04 	( . 
	res 2,(ix+006h)		;5049	dd cb 06 96 	. . . . 
	ld a,(ix+000h)		;504d	dd 7e 00 	. ~ . 
	dec a			;5050	3d 	= 
	jr nz,$+24		;5051	20 16 	  . 
	call 05584h		;5053	cd 84 55 	. . U 
	bit 3,(ix+006h)		;5056	dd cb 06 5e 	. . . ^ 
	jp z,050e5h		;505a	ca e5 50 	. . P 
	ld a,(ix+004h)		;505d	dd 7e 04 	. ~ . 
	ld (0f2b4h),a		;5060	32 b4 f2 	2 . . 
	ld (ix+004h),004h		;5063	dd 36 04 04 	. 6 . . 
	jr $+126		;5067	18 7c 	. | 
	ld de,01800h		;5069	11 00 18 	. . . 
	ld bc,00020h		;506c	01 20 00 	.   . 
	exx			;506f	d9 	. 
	ld a,(0f297h)		;5070	3a 97 f2 	: . . 
	ld hl,05482h		;5073	21 82 54 	! . T 
	ld d,000h		;5076	16 00 	. . 
	ld e,a			;5078	5f 	_ 
	add hl,de			;5079	19 	. 
	ld a,(hl)			;507a	7e 	~ 
	cp 008h		;507b	fe 08 	. . 
	jr z,$+59		;507d	28 39 	( 9 
	ld b,a			;507f	47 	G 
	ld a,(0f2b5h)		;5080	3a b5 f2 	: . . 
	cp b			;5083	b8 	. 
	jr z,$+52		;5084	28 32 	( 2 
	bit 1,(ix+015h)		;5086	dd cb 15 4e 	. . . N 
	jr nz,$+21		;508a	20 13 	  . 
	sub b			;508c	90 	. 
	jr nc,$+4		;508d	30 02 	0 . 
	neg		;508f	ed 44 	. D 
	cp 003h		;5091	fe 03 	. . 
	jr c,$+12		;5093	38 0a 	8 . 
	cp 006h		;5095	fe 06 	. . 
	jr nc,$+8		;5097	30 06 	0 . 
	set 7,(ix+015h)		;5099	dd cb 15 fe 	. . . . 
	jr $+27		;509d	18 19 	. . 
	ld a,b			;509f	78 	x 
	ld (0f2b5h),a		;50a0	32 b5 f2 	2 . . 
	ld a,(0f2b5h)		;50a3	3a b5 f2 	: . . 
	ld b,a			;50a6	47 	G 
	ld a,(0f2b4h)		;50a7	3a b4 f2 	: . . 
	sub b			;50aa	90 	. 
	bit 2,a		;50ab	cb 57 	. W 
	jr nz,$+6		;50ad	20 04 	  . 
	ld a,0ffh		;50af	3e ff 	> . 
	jr $+4		;50b1	18 02 	. . 
	ld a,001h		;50b3	3e 01 	> . 
	ld (0f2b6h),a		;50b5	32 b6 f2 	2 . . 
	ld a,(0f2b4h)		;50b8	3a b4 f2 	: . . 
	ld b,a			;50bb	47 	G 
	ld a,(0f2b5h)		;50bc	3a b5 f2 	: . . 
	cp b			;50bf	b8 	. 
	jr z,$+37		;50c0	28 23 	( # 
	ld a,(0f2c9h)		;50c2	3a c9 f2 	: . . 
	or a			;50c5	b7 	. 
	jr z,$+7		;50c6	28 05 	( . 
	dec a			;50c8	3d 	= 
	ld (0f2c9h),a		;50c9	32 c9 f2 	2 . . 
	ret			;50cc	c9 	. 
	ld a,002h		;50cd	3e 02 	> . 
	ld (0f2c9h),a		;50cf	32 c9 f2 	2 . . 
	ld a,(0f2b6h)		;50d2	3a b6 f2 	: . . 
	add a,b			;50d5	80 	. 
	and 007h		;50d6	e6 07 	. . 
	ld (0f2b4h),a		;50d8	32 b4 f2 	2 . . 
	set 3,(ix+006h)		;50db	dd cb 06 de 	. . . . 
	res 1,(ix+015h)		;50df	dd cb 15 8e 	. . . . 
	jr $+6		;50e3	18 04 	. . 
	res 1,(ix+015h)		;50e5	dd cb 15 8e 	. . . . 
	ld de,0e901h		;50e9	11 01 e9 	. . . 
	ld a,(0f280h)		;50ec	3a 80 f2 	: . . 
	and 030h		;50ef	e6 30 	. 0 
	cp 030h		;50f1	fe 30 	. 0 
	bit 5,a		;50f3	cb 6f 	. o 
	call z,058deh		;50f5	cc de 58 	. . X 
	bit 4,a		;50f8	cb 67 	. g 
	jr nz,$+45		;50fa	20 2b 	  + 
	bit 6,(ix+015h)		;50fc	dd cb 15 76 	. . . v 
	jr nz,$+39		;5100	20 25 	  % 
	ex de,hl			;5102	eb 	. 
	set 7,(hl)		;5103	cb fe 	. . 
	set 6,(hl)		;5105	cb f6 	. . 
	push hl			;5107	e5 	. 
	call 06105h		;5108	cd 05 61 	. . a 
	pop hl			;510b	e1 	. 
	bit 7,(hl)		;510c	cb 7e 	. ~ 
	ret z			;510e	c8 	. 
	ld hl,0f2e8h		;510f	21 e8 f2 	! . . 
	inc (hl)			;5112	34 	4 
	ld a,010h		;5113	3e 10 	> . 
	cp (hl)			;5115	be 	. 
	jr nc,$+12		;5116	30 0a 	0 . 
	ld a,(0f2deh)		;5118	3a de f2 	: . . 
	add a,0ffh		;511b	c6 ff 	. . 
	ld (0f2deh),a		;511d	32 de f2 	2 . . 
	ld (hl),000h		;5120	36 00 	6 . 
	ld a,002h		;5122	3e 02 	> . 
	jp 0bc99h		;5124	c3 99 bc 	. . . 
	ld hl,0e905h		;5127	21 05 e9 	! . . 
	ld (hl),002h		;512a	36 02 	6 . 
	ex de,hl			;512c	eb 	. 
	res 7,(hl)		;512d	cb be 	. . 
	inc hl			;512f	23 	# 
	inc hl			;5130	23 	# 
	ld (hl),0e0h		;5131	36 e0 	6 . 
	ret			;5133	c9 	. 
	bit 1,(ix+001h)		;5134	dd cb 01 4e 	. . . N 
	jr nz,$+17		;5138	20 0f 	  . 
	res 6,(ix+015h)		;513a	dd cb 15 b6 	. . . . 
	call 0531eh		;513e	cd 1e 53 	. . S 
	set 1,(ix+001h)		;5141	dd cb 01 ce 	. . . . 
	set 4,(ix+001h)		;5145	dd cb 01 e6 	. . . . 
	ld a,(0f2c5h)		;5149	3a c5 f2 	: . . 
	bit 0,a		;514c	cb 47 	. G 
	ret z			;514e	c8 	. 
	set 2,(ix+006h)		;514f	dd cb 06 d6 	. . . . 
	set 4,(ix+001h)		;5153	dd cb 01 e6 	. . . . 
	set 4,(ix+015h)		;5157	dd cb 15 e6 	. . . . 
	bit 0,(ix+001h)		;515b	dd cb 01 46 	. . . F 
	jr z,$+6		;515f	28 04 	( . 
	call 05174h		;5161	cd 74 51 	. t Q 
	ret z			;5164	c8 	. 
	call 05d8eh		;5165	cd 8e 5d 	. . ] 
	dec hl			;5168	2b 	+ 
	call 05d87h		;5169	cd 87 5d 	. . ] 
	ld hl,(0f2cdh)		;516c	2a cd f2 	* . . 
	dec hl			;516f	2b 	+ 
	ld (0f2cdh),hl		;5170	22 cd f2 	" . . 
	ret			;5173	c9 	. 
	ld hl,(0f2b1h)		;5174	2a b1 f2 	* . . 
	ld a,h			;5177	7c 	| 
	or l			;5178	b5 	. 
	ret z			;5179	c8 	. 
	ld hl,(0f2b1h)		;517a	2a b1 f2 	* . . 
	dec hl			;517d	2b 	+ 
	ld (0f2b1h),hl		;517e	22 b1 f2 	" . . 
	ret			;5181	c9 	. 
	bit 1,(ix+001h)		;5182	dd cb 01 4e 	. . . N 
	jr z,$+17		;5186	28 0f 	( . 
	res 6,(ix+015h)		;5188	dd cb 15 b6 	. . . . 
	call 0531eh		;518c	cd 1e 53 	. . S 
	res 1,(ix+001h)		;518f	dd cb 01 8e 	. . . . 
	set 4,(ix+001h)		;5193	dd cb 01 e6 	. . . . 
	ld a,(0f2c5h)		;5197	3a c5 f2 	: . . 
	bit 1,a		;519a	cb 4f 	. O 
	ret z			;519c	c8 	. 
	set 2,(ix+006h)		;519d	dd cb 06 d6 	. . . . 
	set 4,(ix+001h)		;51a1	dd cb 01 e6 	. . . . 
	set 5,(ix+015h)		;51a5	dd cb 15 ee 	. . . . 
	bit 0,(ix+001h)		;51a9	dd cb 01 46 	. . . F 
	jr z,$+6		;51ad	28 04 	( . 
	call 051c2h		;51af	cd c2 51 	. . Q 
	ret c			;51b2	d8 	. 
	call 05d8eh		;51b3	cd 8e 5d 	. . ] 
	inc hl			;51b6	23 	# 
	call 05d87h		;51b7	cd 87 5d 	. . ] 
	ld hl,(0f2cdh)		;51ba	2a cd f2 	* . . 
	inc hl			;51bd	23 	# 
	ld (0f2cdh),hl		;51be	22 cd f2 	" . . 
	ret			;51c1	c9 	. 
	ld hl,(0f2b1h)		;51c2	2a b1 f2 	* . . 
	ld a,(0f2d8h)		;51c5	3a d8 f2 	: . . 
	cp 009h		;51c8	fe 09 	. . 
	jr z,$+18		;51ca	28 10 	( . 
	dec h			;51cc	25 	% 
	jr nz,$+6		;51cd	20 04 	  . 
	ld a,0beh		;51cf	3e be 	> . 
	cp l			;51d1	bd 	. 
	ret c			;51d2	d8 	. 
	or a			;51d3	b7 	. 
	ld hl,(0f2b1h)		;51d4	2a b1 f2 	* . . 
	inc hl			;51d7	23 	# 
	ld (0f2b1h),hl		;51d8	22 b1 f2 	" . . 
	ret			;51db	c9 	. 
	ld a,h			;51dc	7c 	| 
	or a			;51dd	b7 	. 
	jr z,$+4		;51de	28 02 	( . 
	scf			;51e0	37 	7 
	ret			;51e1	c9 	. 
	ld a,03ah		;51e2	3e 3a 	> : 
	cp l			;51e4	bd 	. 
	jr nc,$-18		;51e5	30 ec 	0 . 
	ret			;51e7	c9 	. 
	set 3,(ix+001h)		;51e8	dd cb 01 de 	. . . . 
	ld a,(ix+000h)		;51ec	dd 7e 00 	. ~ . 
	dec a			;51ef	3d 	= 
	jp z,052cch		;51f0	ca cc 52 	. . R 
	ld a,(0f2c5h)		;51f3	3a c5 f2 	: . . 
	bit 2,a		;51f6	cb 57 	. W 
	ret z			;51f8	c8 	. 
	ld b,0ffh		;51f9	06 ff 	. . 
	ld de,0ffdch		;51fb	11 dc ff 	. . . 
	set 4,(ix+001h)		;51fe	dd cb 01 e6 	. . . . 
	set 2,(ix+015h)		;5202	dd cb 15 d6 	. . . . 
	bit 0,(ix+001h)		;5206	dd cb 01 46 	. . . F 
	jr z,$+22		;520a	28 14 	( . 
	ld a,(0f2b3h)		;520c	3a b3 f2 	: . . 
	or a			;520f	b7 	. 
	jr z,$+16		;5210	28 0e 	( . 
	ld a,(ix+014h)		;5212	dd 7e 14 	. ~ . 
	cp 021h		;5215	fe 21 	. ! 
	jr nc,$+9		;5217	30 07 	0 . 
	ld a,(0f2b3h)		;5219	3a b3 f2 	: . . 
	add a,b			;521c	80 	. 
	ld (0f2b3h),a		;521d	32 b3 f2 	2 . . 
	ld hl,(0f2cdh)		;5220	2a cd f2 	* . . 
	add hl,de			;5223	19 	. 
	ld (0f2cdh),hl		;5224	22 cd f2 	" . . 
	ld a,(ix+014h)		;5227	dd 7e 14 	. ~ . 
	add a,b			;522a	80 	. 
	ld (ix+014h),a		;522b	dd 77 14 	. w . 
	ld a,(ix+002h)		;522e	dd 7e 02 	. ~ . 
	add a,b			;5231	80 	. 
	ld (ix+002h),a		;5232	dd 77 02 	. w . 
	ret			;5235	c9 	. 
	res 3,(ix+001h)		;5236	dd cb 01 9e 	. . . . 
	bit 3,(ix+015h)		;523a	dd cb 15 5e 	. . . ^ 
	ret nz			;523e	c0 	. 
	ld a,(0f2c5h)		;523f	3a c5 f2 	: . . 
	bit 3,a		;5242	cb 5f 	. _ 
	jr z,$+62		;5244	28 3c 	( < 
	ld a,(ix+014h)		;5246	dd 7e 14 	. ~ . 
	cp 02bh		;5249	fe 2b 	. + 
	jr nc,$+55		;524b	30 35 	0 5 
	ld b,001h		;524d	06 01 	. . 
	ld de,00024h		;524f	11 24 00 	. $ . 
	set 4,(ix+001h)		;5252	dd cb 01 e6 	. . . . 
	set 3,(ix+015h)		;5256	dd cb 15 de 	. . . . 
	bit 0,(ix+001h)		;525a	dd cb 01 46 	. . . F 
	jr z,$-62		;525e	28 c0 	( . 
	ld a,(ix+000h)		;5260	dd 7e 00 	. ~ . 
	dec a			;5263	3d 	= 
	jr nz,$+9		;5264	20 07 	  . 
	bit 0,(ix+015h)		;5266	dd cb 15 46 	. . . F 
	call z,05307h		;526a	cc 07 53 	. . S 
	ld b,001h		;526d	06 01 	. . 
	ld de,00024h		;526f	11 24 00 	. $ . 
	ld a,(0f2b3h)		;5272	3a b3 f2 	: . . 
	cp 017h		;5275	fe 17 	. . 
	jr z,$-87		;5277	28 a7 	( . 
	ld a,(ix+014h)		;5279	dd 7e 14 	. ~ . 
	cp 009h		;527c	fe 09 	. . 
	jr c,$-94		;527e	38 a0 	8 . 
	jr $-103		;5280	18 97 	. . 
	ld a,(ix+000h)		;5282	dd 7e 00 	. ~ . 
	dec a			;5285	3d 	= 
	jr z,$+7		;5286	28 05 	( . 
	res 0,(ix+015h)		;5288	dd cb 15 86 	. . . . 
	ret			;528c	c9 	. 
	ld a,(0f2b4h)		;528d	3a b4 f2 	: . . 
	sub 014h		;5290	d6 14 	. . 
	jr z,$+39		;5292	28 25 	( % 
	dec a			;5294	3d 	= 
	jr z,$+36		;5295	28 22 	( " 
	ld a,(0e315h)		;5297	3a 15 e3 	: . . 
	bit 0,a		;529a	cb 47 	. G 
	ret z			;529c	c8 	. 
	bit 6,a		;529d	cb 77 	. w 
	ret nz			;529f	c0 	. 
	ld (ix+009h),004h		;52a0	dd 36 09 04 	. 6 . . 
	set 3,(ix+006h)		;52a4	dd cb 06 de 	. . . . 
	bit 1,(ix+001h)		;52a8	dd cb 01 4e 	. . . N 
	ld hl,0e304h		;52ac	21 04 e3 	! . . 
	jr z,$+6		;52af	28 04 	( . 
	ld (hl),015h		;52b1	36 15 	6 . 
	jr $-43		;52b3	18 d3 	. . 
	ld (hl),014h		;52b5	36 14 	6 . 
	jr $-47		;52b7	18 cf 	. . 
	bit 6,(ix+015h)		;52b9	dd cb 15 76 	. . . v 
	ret nz			;52bd	c0 	. 
	set 2,(ix+006h)		;52be	dd cb 06 d6 	. . . . 
	ld a,(ix+009h)		;52c2	dd 7e 09 	. ~ . 
	dec a			;52c5	3d 	= 
	ret nz			;52c6	c0 	. 
	ld (ix+00bh),005h		;52c7	dd 36 0b 05 	. 6 . . 
	ret			;52cb	c9 	. 
	ld a,(0f2c5h)		;52cc	3a c5 f2 	: . . 
	bit 2,a		;52cf	cb 57 	. W 
	jr z,$+8		;52d1	28 06 	( . 
	ld a,(ix+014h)		;52d3	dd 7e 14 	. ~ . 
	or a			;52d6	b7 	. 
	jr nz,$+22		;52d7	20 14 	  . 
	xor a			;52d9	af 	. 
	ld (0f2c7h),a		;52da	32 c7 f2 	2 . . 
	ld a,(0e301h)		;52dd	3a 01 e3 	: . . 
	bit 4,a		;52e0	cb 67 	. g 
	jp z,05236h		;52e2	ca 36 52 	. 6 R 
	bit 1,a		;52e5	cb 4f 	. O 
	jp z,04e86h		;52e7	ca 86 4e 	. . N 
	jp 04c27h		;52ea	c3 27 4c 	. ' L 
	ld a,(0f2c7h)		;52ed	3a c7 f2 	: . . 
	or a			;52f0	b7 	. 
	jr nz,$+15		;52f1	20 0d 	  . 
	bit 0,(ix+015h)		;52f3	dd cb 15 46 	. . . F 
	jr nz,$-26		;52f7	20 e4 	  . 
	call 05307h		;52f9	cd 07 53 	. . S 
	ld a,00fh		;52fc	3e 0f 	> . 
	jr $+3		;52fe	18 01 	. . 
	dec a			;5300	3d 	= 
	ld (0f2c7h),a		;5301	32 c7 f2 	2 . . 
	jp 051f9h		;5304	c3 f9 51 	. . Q 
	set 0,(ix+015h)		;5307	dd cb 15 c6 	. . . . 
	set 3,(ix+006h)		;530b	dd cb 06 de 	. . . . 
	bit 1,(ix+001h)		;530f	dd cb 01 4e 	. . . N 
	ld hl,0e304h		;5313	21 04 e3 	! . . 
	jr nz,$+5		;5316	20 03 	  . 
	ld (hl),00ch		;5318	36 0c 	6 . 
	ret			;531a	c9 	. 
	ld (hl),012h		;531b	36 12 	6 . 
	ret			;531d	c9 	. 
	bit 6,(ix+015h)		;531e	dd cb 15 76 	. . . v 
	jr nz,$+49		;5322	20 2f 	  / 
	ld a,(ix+000h)		;5324	dd 7e 00 	. ~ . 
	dec a			;5327	3d 	= 
	ret nz			;5328	c0 	. 
	bit 1,(ix+001h)		;5329	dd cb 01 4e 	. . . N 
	jr nz,$+7		;532d	20 05 	  . 
	ld hl,0547ah		;532f	21 7a 54 	! z T 
	jr $+5		;5332	18 03 	. . 
	ld hl,0547eh		;5334	21 7e 54 	! ~ T 
	ld (0e30eh),hl		;5337	22 0e e3 	" . . 
	ld a,(0f2c8h)		;533a	3a c8 f2 	: . . 
	cp 005h		;533d	fe 05 	. . 
	jr c,$+4		;533f	38 02 	8 . 
	ld a,004h		;5341	3e 04 	> . 
	ld b,a			;5343	47 	G 
	ld a,004h		;5344	3e 04 	> . 
	sub b			;5346	90 	. 
	ld (0e30bh),a		;5347	32 0b e3 	2 . . 
	set 6,(ix+015h)		;534a	dd cb 15 f6 	. . . . 
	ld (ix+00ah),001h		;534e	dd 36 0a 01 	. 6 . . 
	ret			;5352	c9 	. 
	ld a,(0e30bh)		;5353	3a 0b e3 	: . . 
	cp 004h		;5356	fe 04 	. . 
	jr nc,$+10		;5358	30 08 	0 . 
	ld (0f2c8h),a		;535a	32 c8 f2 	2 . . 
	set 2,(ix+006h)		;535d	dd cb 06 d6 	. . . . 
	ret			;5361	c9 	. 
	ld a,003h		;5362	3e 03 	> . 
	ld (0f2c8h),a		;5364	32 c8 f2 	2 . . 
	res 6,(hl)		;5367	cb b6 	. . 
	set 3,(ix+006h)		;5369	dd cb 06 de 	. . . . 
	call 05374h		;536d	cd 74 53 	. t S 
	ld (ix+004h),a		;5370	dd 77 04 	. w . 
	ret			;5373	c9 	. 
	bit 1,(ix+001h)		;5374	dd cb 01 4e 	. . . N 
	jr z,$+9		;5378	28 07 	( . 
	ld a,00eh		;537a	3e 0e 	> . 
	ld hl,0546eh		;537c	21 6e 54 	! n T 
	jr $+7		;537f	18 05 	. . 
	ld a,008h		;5381	3e 08 	> . 
	ld hl,05474h		;5383	21 74 54 	! t T 
	ld (0e30eh),hl		;5386	22 0e e3 	" . . 
	ld (ix+00ah),001h		;5389	dd 36 0a 01 	. 6 . . 
	ret			;538d	c9 	. 
	ld de,00024h		;538e	11 24 00 	. $ . 
	jr $+5		;5391	18 03 	. . 
	ld de,0ffdch		;5393	11 dc ff 	. . . 
	ld hl,(0e317h)		;5396	2a 17 e3 	* . . 
	add hl,de			;5399	19 	. 
	or a			;539a	b7 	. 
	jr $+8		;539b	18 06 	. . 
	call 04225h		;539d	cd 25 42 	. % B 
	ld hl,(0e317h)		;53a0	2a 17 e3 	* . . 
	ld c,000h		;53a3	0e 00 	. . 
	jp c,05434h		;53a5	da 34 54 	. 4 T 
	ld a,(ix+000h)		;53a8	dd 7e 00 	. ~ . 
	cp 007h		;53ab	fe 07 	. . 
	jr nz,$+6		;53ad	20 04 	  . 
	ld a,003h		;53af	3e 03 	> . 
	jr $+4		;53b1	18 02 	. . 
	ld a,004h		;53b3	3e 04 	> . 
	ld (0f2c4h),a		;53b5	32 c4 f2 	2 . . 
	push hl			;53b8	e5 	. 
	ld a,(0f2c4h)		;53b9	3a c4 f2 	: . . 
	dec a			;53bc	3d 	= 
	ld b,a			;53bd	47 	G 
	dec hl			;53be	2b 	+ 
	ld a,(hl)			;53bf	7e 	~ 
	ld de,00024h		;53c0	11 24 00 	. $ . 
	add hl,de			;53c3	19 	. 
	ld d,a			;53c4	57 	W 
	ld a,(hl)			;53c5	7e 	~ 
	or d			;53c6	b2 	. 
	djnz $-7		;53c7	10 f7 	. . 
	jr nz,$+4		;53c9	20 02 	  . 
	set 0,c		;53cb	cb c1 	. . 
	pop hl			;53cd	e1 	. 
	push hl			;53ce	e5 	. 
	ld de,00003h		;53cf	11 03 00 	. . . 
	add hl,de			;53d2	19 	. 
	ld a,(0f2c4h)		;53d3	3a c4 f2 	: . . 
	dec a			;53d6	3d 	= 
	ld b,a			;53d7	47 	G 
	ld a,(hl)			;53d8	7e 	~ 
	ld de,00024h		;53d9	11 24 00 	. $ . 
	add hl,de			;53dc	19 	. 
	ld d,a			;53dd	57 	W 
	ld a,(hl)			;53de	7e 	~ 
	or d			;53df	b2 	. 
	djnz $-7		;53e0	10 f7 	. . 
	jr nz,$+4		;53e2	20 02 	  . 
	set 1,c		;53e4	cb c9 	. . 
	pop hl			;53e6	e1 	. 
	push hl			;53e7	e5 	. 
	ld a,(ix+014h)		;53e8	dd 7e 14 	. ~ . 
	or a			;53eb	b7 	. 
	jr z,$+33		;53ec	28 1f 	( . 
	ld b,002h		;53ee	06 02 	. . 
	ld de,0ffdbh		;53f0	11 db ff 	. . . 
	add hl,de			;53f3	19 	. 
	ld a,(hl)			;53f4	7e 	~ 
	or a			;53f5	b7 	. 
	jr nz,$+4		;53f6	20 02 	  . 
	set 4,c		;53f8	cb e1 	. . 
	inc hl			;53fa	23 	# 
	ld a,(hl)			;53fb	7e 	~ 
	inc hl			;53fc	23 	# 
	ld d,a			;53fd	57 	W 
	ld a,(hl)			;53fe	7e 	~ 
	or d			;53ff	b2 	. 
	djnz $-4		;5400	10 fa 	. . 
	jr nz,$+4		;5402	20 02 	  . 
	set 2,c		;5404	cb d1 	. . 
	inc hl			;5406	23 	# 
	ld a,(hl)			;5407	7e 	~ 
	or a			;5408	b7 	. 
	jr nz,$+4		;5409	20 02 	  . 
	set 6,c		;540b	cb f1 	. . 
	pop hl			;540d	e1 	. 
	ld a,(0f2c4h)		;540e	3a c4 f2 	: . . 
	ld b,a			;5411	47 	G 
	ld de,00024h		;5412	11 24 00 	. $ . 
	add hl,de			;5415	19 	. 
	djnz $-4		;5416	10 fa 	. . 
	ld b,002h		;5418	06 02 	. . 
	dec hl			;541a	2b 	+ 
	ld a,(hl)			;541b	7e 	~ 
	inc hl			;541c	23 	# 
	or a			;541d	b7 	. 
	jr nz,$+4		;541e	20 02 	  . 
	set 5,c		;5420	cb e9 	. . 
	ld a,(hl)			;5422	7e 	~ 
	inc hl			;5423	23 	# 
	ld d,a			;5424	57 	W 
	ld a,(hl)			;5425	7e 	~ 
	or d			;5426	b2 	. 
	djnz $-4		;5427	10 fa 	. . 
	jr nz,$+4		;5429	20 02 	  . 
	set 3,c		;542b	cb d9 	. . 
	inc hl			;542d	23 	# 
	ld a,(hl)			;542e	7e 	~ 
	or a			;542f	b7 	. 
	jr nz,$+4		;5430	20 02 	  . 
	set 7,c		;5432	cb f9 	. . 
	ld a,c			;5434	79 	y 
	ld (0f2c5h),a		;5435	32 c5 f2 	2 . . 
	ret			;5438	c9 	. 
	ld (ix+003h),d		;5439	dd 72 03 	. r . 
	ld (ix+002h),e		;543c	dd 73 02 	. s . 
	ld a,(hl)			;543f	7e 	~ 
	ld (ix+004h),a		;5440	dd 77 04 	. w . 
	inc hl			;5443	23 	# 
	ld a,(hl)			;5444	7e 	~ 
	ld (ix+005h),a		;5445	dd 77 05 	. w . 
	inc hl			;5448	23 	# 
	ld a,(hl)			;5449	7e 	~ 
	ld (ix+00ch),a		;544a	dd 77 0c 	. w . 
	inc hl			;544d	23 	# 
	ld a,(hl)			;544e	7e 	~ 
	ld (ix+00ah),a		;544f	dd 77 0a 	. w . 
	inc hl			;5452	23 	# 
	ld a,(hl)			;5453	7e 	~ 
	ld (ix+016h),a		;5454	dd 77 16 	. w . 
	inc hl			;5457	23 	# 
	ld a,(hl)			;5458	7e 	~ 
	ld (ix+00eh),a		;5459	dd 77 0e 	. w . 
	inc hl			;545c	23 	# 
	ld a,(hl)			;545d	7e 	~ 
	ld (ix+00fh),a		;545e	dd 77 0f 	. w . 
	set 7,(ix+001h)		;5461	dd cb 01 fe 	. . . . 
	ld (ix+00bh),001h		;5465	dd 36 0b 01 	. 6 . . 
	ld (ix+009h),001h		;5469	dd 36 09 01 	. 6 . . 
	ret			;546d	c9 	. 
	ld c,00fh		;546e	0e 0f 	. . 
	djnz $+19		;5470	10 11 	. . 
	ld (de),a			;5472	12 	. 
	inc de			;5473	13 	. 
	ex af,af'			;5474	08 	. 
	add hl,bc			;5475	09 	. 
	ld a,(bc)			;5476	0a 	. 
	dec bc			;5477	0b 	. 
	inc c			;5478	0c 	. 
	dec c			;5479	0d 	. 
	dec bc			;547a	0b 	. 
	ld d,017h		;547b	16 17 	. . 
	ld de,01711h		;547d	11 11 17 	. . . 
	ld d,00bh		;5480	16 0b 	. . 
	dec b			;5482	05 	. 
	inc b			;5483	04 	. 
	inc bc			;5484	03 	. 
	ld b,008h		;5485	06 08 	. . 
	ld (bc),a			;5487	02 	. 
	rlca			;5488	07 	. 
	nop			;5489	00 	. 
	ld bc,0c000h		;548a	01 00 c0 	. . . 
	ret c			;548d	d8 	. 
	ret nz			;548e	c0 	. 
	or b			;548f	b0 	. 
	pop bc			;5490	c1 	. 
	ld l,b			;5491	68 	h 
	pop bc			;5492	c1 	. 
	sub b			;5493	90 	. 
	ret nz			;5494	c0 	. 
	jr $-59		;5495	18 c3 	. . 
	ld b,b			;5497	40 	@ 
	jp nz,0c288h		;5498	c2 88 c2 	. . . 
	ld e,b			;549b	58 	X 
	push bc			;549c	c5 	. 
	ld a,b			;549d	78 	x 
	add a,098h		;549e	c6 98 	. . 
	rst 0			;54a0	c7 	. 
	cp b			;54a1	b8 	. 
	ret z			;54a2	c8 	. 
	ret c			;54a3	d8 	. 
	ret			;54a4	c9 	. 
	ret m			;54a5	f8 	. 
	jp z,0c618h		;54a6	ca 18 c6 	. . . 
	jr c,$-55		;54a9	38 c7 	8 . 
	ld e,b			;54ab	58 	X 
	ret z			;54ac	c8 	. 
	ld a,b			;54ad	78 	x 
	ret			;54ae	c9 	. 
	sbc a,b			;54af	98 	. 
	jp z,0cbb8h		;54b0	ca b8 cb 	. . . 
	jr c,$-49		;54b3	38 cd 	8 . 
	ret m			;54b5	f8 	. 
	call 0cc18h		;54b6	cd 18 cc 	. . . 
	ret c			;54b9	d8 	. 
	call z,0c360h		;54ba	cc 60 c3 	. ` . 
	jr c,$-58		;54bd	38 c4 	8 . 
	ret p			;54bf	f0 	. 
	jp 0c4f8h		;54c0	c3 f8 c4 	. . . 
	ld e,b			;54c3	58 	X 
	adc a,000h		;54c4	ce 00 	. . 
	ld bc,00702h		;54c6	01 02 07 	. . . 
	ex af,af'			;54c9	08 	. 
	add hl,bc			;54ca	09 	. 
	ld a,(bc)			;54cb	0a 	. 
	dec bc			;54cc	0b 	. 
	inc c			;54cd	0c 	. 
	dec c			;54ce	0d 	. 
	inc d			;54cf	14 	. 
	ld d,018h		;54d0	16 18 	. . 
	add hl,de			;54d2	19 	. 
	inc e			;54d3	1c 	. 
	ld a,(0e30bh)		;54d4	3a 0b e3 	: . . 
	or a			;54d7	b7 	. 
	jr z,$+82		;54d8	28 50 	( P 
	call 0558fh		;54da	cd 8f 55 	. . U 
	bit 3,(ix+006h)		;54dd	dd cb 06 5e 	. . . ^ 
	jp z,04ba7h		;54e1	ca a7 4b 	. . K 
	ld a,(0e304h)		;54e4	3a 04 e3 	: . . 
	cp 018h		;54e7	fe 18 	. . 
	jr z,$+6		;54e9	28 04 	( . 
	cp 01ah		;54eb	fe 1a 	. . 
	jr nz,$+15		;54ed	20 0d 	  . 
	ex af,af'			;54ef	08 	. 
	ld a,048h		;54f0	3e 48 	> H 
	ld (0f2c6h),a		;54f2	32 c6 f2 	2 . . 
	ld (ix+016h),033h		;54f5	dd 36 16 33 	. 6 . 3 
	ex af,af'			;54f9	08 	. 
	jr $+21		;54fa	18 13 	. . 
	cp 019h		;54fc	fe 19 	. . 
	jr z,$+6		;54fe	28 04 	( . 
	cp 01bh		;5500	fe 1b 	. . 
	jr nz,$+13		;5502	20 0b 	  . 
	ex af,af'			;5504	08 	. 
	ld a,060h		;5505	3e 60 	> ` 
	ld (0f2c6h),a		;5507	32 c6 f2 	2 . . 
	ld (ix+016h),043h		;550a	dd 36 16 43 	. 6 . C 
	ex af,af'			;550e	08 	. 
	ld (0f2b4h),a		;550f	32 b4 f2 	2 . . 
	ld (0f2b5h),a		;5512	32 b5 f2 	2 . . 
	ld (ix+004h),004h		;5515	dd 36 04 04 	. 6 . . 
	push af			;5519	f5 	. 
	push ix		;551a	dd e5 	. . 
	call 04166h		;551c	cd 66 41 	. f A 
	call 04225h		;551f	cd 25 42 	. % B 
	pop ix		;5522	dd e1 	. . 
	pop af			;5524	f1 	. 
	set 6,(ix+001h)		;5525	dd cb 01 f6 	. . . . 
	ret			;5529	c9 	. 
	ld (ix+00ch),006h		;552a	dd 36 0c 06 	. 6 . . 
	ld (ix+00ah),001h		;552e	dd 36 0a 01 	. 6 . . 
	ld a,(0e30dh)		;5532	3a 0d e3 	: . . 
	ld (0e300h),a		;5535	32 00 e3 	2 . . 
	dec a			;5538	3d 	= 
	jr nz,$+11		;5539	20 09 	  . 
	call 05374h		;553b	cd 74 53 	. t S 
	ld (0f2b4h),a		;553e	32 b4 f2 	2 . . 
	jp 04ba7h		;5541	c3 a7 4b 	. . K 
	call 045a4h		;5544	cd a4 45 	. . E 
	ld a,(0f2b4h)		;5547	3a b4 f2 	: . . 
	ld b,a			;554a	47 	G 
	ld a,(0f297h)		;554b	3a 97 f2 	: . . 
	or a			;554e	b7 	. 
	jr z,$+8		;554f	28 06 	( . 
	cp 006h		;5551	fe 06 	. . 
	jr z,$+18		;5553	28 10 	( . 
	jr $-20		;5555	18 ea 	. . 
	xor a			;5557	af 	. 
	or b			;5558	b0 	. 
	jr nz,$-24		;5559	20 e6 	  . 
	ld a,007h		;555b	3e 07 	> . 
	ld (0f2b4h),a		;555d	32 b4 f2 	2 . . 
	ld (0f2b5h),a		;5560	32 b5 f2 	2 . . 
	jr $-34		;5563	18 dc 	. . 
	ld a,004h		;5565	3e 04 	> . 
	cp b			;5567	b8 	. 
	jr nz,$-39		;5568	20 d7 	  . 
	ld a,005h		;556a	3e 05 	> . 
	jr $-15		;556c	18 ef 	. . 
	nop			;556e	00 	. 
	ld c,01bh		;556f	0e 1b 	. . 
	ld a,(de)			;5571	1a 	. 
	inc b			;5572	04 	. 
	nop			;5573	00 	. 
	ex af,af'			;5574	08 	. 
	add hl,de			;5575	19 	. 
	jr $+2		;5576	18 00 	. . 
	nop			;5578	00 	. 
	inc b			;5579	04 	. 
	ld a,(de)			;557a	1a 	. 
	dec de			;557b	1b 	. 
	ld c,00eh		;557c	0e 0e 	. . 
	nop			;557e	00 	. 
	nop			;557f	00 	. 
	jr $+27		;5580	18 19 	. . 
	ex af,af'			;5582	08 	. 
	ex af,af'			;5583	08 	. 
	ld c,(ix+006h)		;5584	dd 4e 06 	. N . 
	bit 6,c		;5587	cb 71 	. q 
	ret nz			;5589	c0 	. 
	bit 2,c		;558a	cb 51 	. Q 
	jr nz,$+3		;558c	20 01 	  . 
	ret			;558e	c9 	. 
	dec (ix+009h)		;558f	dd 35 09 	. 5 . 
	ret nz			;5592	c0 	. 
	ld a,(ix+00ah)		;5593	dd 7e 0a 	. ~ . 
	ld (ix+009h),a		;5596	dd 77 09 	. w . 
	set 3,(ix+006h)		;5599	dd cb 06 de 	. . . . 
	ld a,(ix+00bh)		;559d	dd 7e 0b 	. ~ . 
	ld e,a			;55a0	5f 	_ 
	ld d,000h		;55a1	16 00 	. . 
	ld l,(ix+00eh)		;55a3	dd 6e 0e 	. n . 
	ld h,(ix+00fh)		;55a6	dd 66 0f 	. f . 
	add hl,de			;55a9	19 	. 
	ld a,(hl)			;55aa	7e 	~ 
	ld c,(ix+001h)		;55ab	dd 4e 01 	. N . 
	bit 6,c		;55ae	cb 71 	. q 
	jr z,$+15		;55b0	28 0d 	( . 
	bit 0,c		;55b2	cb 41 	. A 
	jr nz,$+11		;55b4	20 09 	  . 
	ld e,(ix+01dh)		;55b6	dd 5e 1d 	. ^ . 
	ld hl,0eea0h		;55b9	21 a0 ee 	! . . 
	add hl,de			;55bc	19 	. 
	ld b,(hl)			;55bd	46 	F 
	add a,b			;55be	80 	. 
	ex af,af'			;55bf	08 	. 
	ld a,(ix+011h)		;55c0	dd 7e 11 	. ~ . 
	cp 008h		;55c3	fe 08 	. . 
	jr z,$+6		;55c5	28 04 	( . 
	cp 006h		;55c7	fe 06 	. . 
	jr nz,$+14		;55c9	20 0c 	  . 
	ld a,(ix+008h)		;55cb	dd 7e 08 	. ~ . 
	cp 007h		;55ce	fe 07 	. . 
	jr nz,$+7		;55d0	20 05 	  . 
	ex af,af'			;55d2	08 	. 
	add a,004h		;55d3	c6 04 	. . 
	jr $+3		;55d5	18 01 	. . 
	ex af,af'			;55d7	08 	. 
	ld (ix+004h),a		;55d8	dd 77 04 	. w . 
	ld a,(ix+00bh)		;55db	dd 7e 0b 	. ~ . 
	inc a			;55de	3c 	< 
	ld (ix+00bh),a		;55df	dd 77 0b 	. w . 
	cp (ix+00ch)		;55e2	dd be 0c 	. . . 
	ret c			;55e5	d8 	. 
	ld (ix+00bh),000h		;55e6	dd 36 0b 00 	. 6 . . 
	ret			;55ea	c9 	. 
	ld a,(ix+002h)		;55eb	dd 7e 02 	. ~ . 
	dec a			;55ee	3d 	= 
	cp 098h		;55ef	fe 98 	. . 
	jr c,$+6		;55f1	38 04 	8 . 
	cp 0f7h		;55f3	fe f7 	. . 
	jr c,$+8		;55f5	38 06 	8 . 
	ld a,(ix+003h)		;55f7	dd 7e 03 	. ~ . 
	cp 0f7h		;55fa	fe f7 	. . 
	ret c			;55fc	d8 	. 
	res 7,(ix+001h)		;55fd	dd cb 01 be 	. . . . 
	pop hl			;5601	e1 	. 
	ret			;5602	c9 	. 
	ld ix,0e300h		;5603	dd 21 00 e3 	. ! . . 
	ld l,(ix+017h)		;5607	dd 6e 17 	. n . 
	ld h,(ix+018h)		;560a	dd 66 18 	. f . 
	ld de,00021h		;560d	11 21 00 	. ! . 
	ld a,(ix+016h)		;5610	dd 7e 16 	. ~ . 
	cp 043h		;5613	fe 43 	. C 
	jr nz,$+16		;5615	20 0e 	  . 
	ld a,(ix+000h)		;5617	dd 7e 00 	. ~ . 
	dec a			;561a	3d 	= 
	jr z,$+6		;561b	28 04 	( . 
	ld c,004h		;561d	0e 04 	. . 
	jr $+8		;561f	18 06 	. . 
	ld c,005h		;5621	0e 05 	. . 
	jr $+4		;5623	18 02 	. . 
	ld c,003h		;5625	0e 03 	. . 
	ld b,003h		;5627	06 03 	. . 
	ld a,(hl)			;5629	7e 	~ 
	cp 001h		;562a	fe 01 	. . 
	jr nz,$+4		;562c	20 02 	  . 
	ld a,010h		;562e	3e 10 	> . 
	inc hl			;5630	23 	# 
	and 0f0h		;5631	e6 f0 	. . 
	jr nz,$+14		;5633	20 0c 	  . 
	djnz $-12		;5635	10 f2 	. . 
	add hl,de			;5637	19 	. 
	dec c			;5638	0d 	. 
	jr nz,$-18		;5639	20 ec 	  . 
	ld a,0ffh		;563b	3e ff 	> . 
	ld (0eed0h),a		;563d	32 d0 ee 	2 . . 
	ret			;5640	c9 	. 
	ld a,(0f2ddh)		;5641	3a dd f2 	: . . 
	or a			;5644	b7 	. 
	jr z,$+7		;5645	28 05 	( . 
	call 05888h		;5647	cd 88 58 	. . X 
	jr $+30		;564a	18 1c 	. . 
	ld a,(0f2deh)		;564c	3a de f2 	: . . 
	add a,0ffh		;564f	c6 ff 	. . 
	ld (0f2deh),a		;5651	32 de f2 	2 . . 
	ld a,0ffh		;5654	3e ff 	> . 
	ld (0eed0h),a		;5656	32 d0 ee 	2 . . 
	ld hl,(0f2d4h)		;5659	2a d4 f2 	* . . 
	ld a,l			;565c	7d 	} 
	or h			;565d	b4 	. 
	ld a,(0f281h)		;565e	3a 81 f2 	: . . 
	jr nz,$+4		;5661	20 02 	  . 
	set 1,a		;5663	cb cf 	. . 
	ld (0f281h),a		;5665	32 81 f2 	2 . . 
	ld a,(0f2ddh)		;5668	3a dd f2 	: . . 
	or a			;566b	b7 	. 
	jr nz,$+6		;566c	20 04 	  . 
	ld a,004h		;566e	3e 04 	> . 
	jr $+4		;5670	18 02 	. . 
	ld a,007h		;5672	3e 07 	> . 
	call 0bc99h		;5674	cd 99 bc 	. . . 
	ld ix,0eed0h		;5677	dd 21 d0 ee 	. ! . . 
	ld a,(0e316h)		;567b	3a 16 e3 	: . . 
	cp 043h		;567e	fe 43 	. C 
	jr nz,$+6		;5680	20 04 	  . 
	ld c,000h		;5682	0e 00 	. . 
	jr $+4		;5684	18 02 	. . 
	ld c,0fch		;5686	0e fc 	. . 
	ld a,(0f2ddh)		;5688	3a dd f2 	: . . 
	or a			;568b	b7 	. 
	ret z			;568c	c8 	. 
	ld a,(0f281h)		;568d	3a 81 f2 	: . . 
	bit 1,a		;5690	cb 4f 	. O 
	ret nz			;5692	c0 	. 
	call 056a6h		;5693	cd a6 56 	. . V 
	add a,c			;5696	81 	. 
	ld (ix+000h),a		;5697	dd 77 00 	. w . 
	ld (ix+008h),a		;569a	dd 77 08 	. w . 
	add a,010h		;569d	c6 10 	. . 
	ld (ix+004h),a		;569f	dd 77 04 	. w . 
	ld (ix+00ch),a		;56a2	dd 77 0c 	. w . 
	ret			;56a5	c9 	. 
	ld a,(0f2b3h)		;56a6	3a b3 f2 	: . . 
	ld b,a			;56a9	47 	G 
	ld a,(0e314h)		;56aa	3a 14 e3 	: . . 
	sub b			;56ad	90 	. 
	add a,a			;56ae	87 	. 
	add a,a			;56af	87 	. 
	add a,a			;56b0	87 	. 
	ret			;56b1	c9 	. 
	ld de,03ae7h		;56b2	11 e7 3a 	. . : 
	ld hl,0f285h		;56b5	21 85 f2 	! . . 
	ex de,hl			;56b8	eb 	. 
	call 00053h		;56b9	cd 53 00 	. S . 
	ex de,hl			;56bc	eb 	. 
	ld b,004h		;56bd	06 04 	. . 
	ld a,(00007h)		;56bf	3a 07 00 	: . . 
	ld c,a			;56c2	4f 	O 
	ld a,(hl)			;56c3	7e 	~ 
	rrca			;56c4	0f 	. 
	rrca			;56c5	0f 	. 
	rrca			;56c6	0f 	. 
	rrca			;56c7	0f 	. 
	and 00fh		;56c8	e6 0f 	. . 
	add a,030h		;56ca	c6 30 	. 0 
	out (c),a		;56cc	ed 79 	. y 
	ld a,(hl)			;56ce	7e 	~ 
	and 00fh		;56cf	e6 0f 	. . 
	add a,030h		;56d1	c6 30 	. 0 
	out (c),a		;56d3	ed 79 	. y 
	dec hl			;56d5	2b 	+ 
	djnz $-19		;56d6	10 eb 	. . 
	ret			;56d8	c9 	. 
	ld de,0f286h		;56d9	11 86 f2 	. . . 
	ld hl,05780h		;56dc	21 80 57 	! . W 
	ld bc,00004h		;56df	01 04 00 	. . . 
	ldir		;56e2	ed b0 	. . 
	ret			;56e4	c9 	. 
	ld de,0f282h		;56e5	11 82 f2 	. . . 
	ld hl,0f286h		;56e8	21 86 f2 	! . . 
	ld b,004h		;56eb	06 04 	. . 
	and a			;56ed	a7 	. 
	ld a,(de)			;56ee	1a 	. 
	sbc a,(hl)			;56ef	9e 	. 
	inc hl			;56f0	23 	# 
	inc de			;56f1	13 	. 
	djnz $-4		;56f2	10 fa 	. . 
	jr c,$+14		;56f4	38 0c 	8 . 
	ld hl,0f282h		;56f6	21 82 f2 	! . . 
	ld de,0f286h		;56f9	11 86 f2 	. . . 
	ld bc,00004h		;56fc	01 04 00 	. . . 
	ldir		;56ff	ed b0 	. . 
	ret			;5701	c9 	. 
	ld de,03a50h		;5702	11 50 3a 	. P : 
	ld hl,0f289h		;5705	21 89 f2 	! . . 
	call 056b8h		;5708	cd b8 56 	. . V 
	ld a,030h		;570b	3e 30 	> 0 
	out (c),a		;570d	ed 79 	. y 
	ret			;570f	c9 	. 
	add a,a			;5710	87 	. 
	add a,a			;5711	87 	. 
	ld c,a			;5712	4f 	O 
	ld b,000h		;5713	06 00 	. . 
	ld hl,0573ch		;5715	21 3c 57 	! < W 
	add hl,bc			;5718	09 	. 
	ld de,0f282h		;5719	11 82 f2 	. . . 
	ld a,(de)			;571c	1a 	. 
	add a,(hl)			;571d	86 	. 
	daa			;571e	27 	' 
	ld (de),a			;571f	12 	. 
	inc de			;5720	13 	. 
	inc hl			;5721	23 	# 
	ld a,(de)			;5722	1a 	. 
	adc a,(hl)			;5723	8e 	. 
	daa			;5724	27 	' 
	ld (de),a			;5725	12 	. 
	inc de			;5726	13 	. 
	inc hl			;5727	23 	# 
	ld a,(de)			;5728	1a 	. 
	adc a,(hl)			;5729	8e 	. 
	daa			;572a	27 	' 
	ld (de),a			;572b	12 	. 
	inc de			;572c	13 	. 
	inc hl			;572d	23 	# 
	ld a,(de)			;572e	1a 	. 
	adc a,(hl)			;572f	8e 	. 
	daa			;5730	27 	' 
	push de			;5731	d5 	. 
	push af			;5732	f5 	. 
	call c,056d9h		;5733	dc d9 56 	. . V 
	pop af			;5736	f1 	. 
	pop de			;5737	d1 	. 
	ld (de),a			;5738	12 	. 
	jp 056b2h		;5739	c3 b2 56 	. . V 
	ld bc,00000h		;573c	01 00 00 	. . . 
	nop			;573f	00 	. 
	djnz $+2		;5740	10 00 	. . 
	nop			;5742	00 	. 
	nop			;5743	00 	. 
	ld d,000h		;5744	16 00 	. . 
	nop			;5746	00 	. 
	nop			;5747	00 	. 
	jr nz,$+2		;5748	20 00 	  . 
	nop			;574a	00 	. 
	nop			;574b	00 	. 
	jr nc,$+2		;574c	30 00 	0 . 
	nop			;574e	00 	. 
	nop			;574f	00 	. 
	ld b,b			;5750	40 	@ 
	nop			;5751	00 	. 
	nop			;5752	00 	. 
	nop			;5753	00 	. 
	ld d,b			;5754	50 	P 
	nop			;5755	00 	. 
	nop			;5756	00 	. 
	nop			;5757	00 	. 
	ld (hl),b			;5758	70 	p 
	nop			;5759	00 	. 
	nop			;575a	00 	. 
	nop			;575b	00 	. 
	nop			;575c	00 	. 
	ld bc,00000h		;575d	01 00 00 	. . . 
	ld d,b			;5760	50 	P 
	ld bc,00000h		;5761	01 00 00 	. . . 
	nop			;5764	00 	. 
	ld (bc),a			;5765	02 	. 
	nop			;5766	00 	. 
	nop			;5767	00 	. 
	nop			;5768	00 	. 
	inc bc			;5769	03 	. 
	nop			;576a	00 	. 
	nop			;576b	00 	. 
	nop			;576c	00 	. 
	inc b			;576d	04 	. 
	nop			;576e	00 	. 
	nop			;576f	00 	. 
	nop			;5770	00 	. 
	dec b			;5771	05 	. 
	nop			;5772	00 	. 
	nop			;5773	00 	. 
	nop			;5774	00 	. 
	rlca			;5775	07 	. 
	nop			;5776	00 	. 
	nop			;5777	00 	. 
	nop			;5778	00 	. 
	djnz $+2		;5779	10 00 	. . 
	nop			;577b	00 	. 
	nop			;577c	00 	. 
	nop			;577d	00 	. 
	ld bc,09900h		;577e	01 00 99 	. . . 
	sbc a,c			;5781	99 	. 
	sbc a,c			;5782	99 	. 
	sbc a,c			;5783	99 	. 
	ld e,(hl)			;5784	5e 	^ 
	inc hl			;5785	23 	# 
	ld d,(hl)			;5786	56 	V 
	dec hl			;5787	2b 	+ 
	ex de,hl			;5788	eb 	. 
	bit 7,c		;5789	cb 79 	. y 
	jr nz,$+22		;578b	20 14 	  . 
	ld b,000h		;578d	06 00 	. . 
	add hl,bc			;578f	09 	. 
	or a			;5790	b7 	. 
	push hl			;5791	e5 	. 
	ld bc,001f4h		;5792	01 f4 01 	. . . 
	sbc hl,bc		;5795	ed 42 	. B 
	bit 7,h		;5797	cb 7c 	. | 
	pop hl			;5799	e1 	. 
	jr nz,$+17		;579a	20 0f 	  . 
	ld hl,001f4h		;579c	21 f4 01 	! . . 
	jr $+12		;579f	18 0a 	. . 
	ld b,0ffh		;57a1	06 ff 	. . 
	add hl,bc			;57a3	09 	. 
	bit 7,h		;57a4	cb 7c 	. | 
	jr z,$+5		;57a6	28 03 	( . 
	ld hl,00000h		;57a8	21 00 00 	! . . 
	ex de,hl			;57ab	eb 	. 
	ld (hl),e			;57ac	73 	s 
	inc hl			;57ad	23 	# 
	ld (hl),d			;57ae	72 	r 
	ex de,hl			;57af	eb 	. 
	ld c,000h		;57b0	0e 00 	. . 
	ld de,00064h		;57b2	11 64 00 	. d . 
	or a			;57b5	b7 	. 
	sbc hl,de		;57b6	ed 52 	. R 
	jr c,$+5		;57b8	38 03 	8 . 
	inc c			;57ba	0c 	. 
	jr $-5		;57bb	18 f9 	. . 
	add hl,de			;57bd	19 	. 
	ld a,030h		;57be	3e 30 	> 0 
	add a,c			;57c0	81 	. 
	exx			;57c1	d9 	. 
	call 0466ah		;57c2	cd 6a 46 	. j F 
	inc hl			;57c5	23 	# 
	exx			;57c6	d9 	. 
	ld a,l			;57c7	7d 	} 
	exx			;57c8	d9 	. 
	call 04614h		;57c9	cd 14 46 	. . F 
	ret			;57cc	c9 	. 
	ld hl,0ead8h		;57cd	21 d8 ea 	! . . 
	ld de,0ead9h		;57d0	11 d9 ea 	. . . 
	ld (hl),05ch		;57d3	36 5c 	6 \ 
	ld bc,00012h		;57d5	01 12 00 	. . . 
	ldir		;57d8	ed b0 	. . 
	ld hl,(0f2d4h)		;57da	2a d4 f2 	* . . 
	ld bc,00064h		;57dd	01 64 00 	. d . 
	or a			;57e0	b7 	. 
	sbc hl,bc		;57e1	ed 42 	. B 
	jr c,$+6		;57e3	38 04 	8 . 
	ld a,064h		;57e5	3e 64 	> d 
	jr $+4		;57e7	18 02 	. . 
	add hl,bc			;57e9	09 	. 
	ld a,l			;57ea	7d 	} 
	ld hl,0ead8h		;57eb	21 d8 ea 	! . . 
	ld b,a			;57ee	47 	G 
	srl a		;57ef	cb 3f 	. ? 
	add a,b			;57f1	80 	. 
	cp 01dh		;57f2	fe 1d 	. . 
	jr nc,$+17		;57f4	30 0f 	0 . 
	ex af,af'			;57f6	08 	. 
	ld a,080h		;57f7	3e 80 	> . 
	ex af,af'			;57f9	08 	. 
	call 0583fh		;57fa	cd 3f 58 	. ? X 
	ld a,03ch		;57fd	3e 3c 	> < 
	call 0584eh		;57ff	cd 4e 58 	. N X 
	jp 05854h		;5802	c3 54 58 	. T X 
	ld b,004h		;5805	06 04 	. . 
	ex af,af'			;5807	08 	. 
	ld a,03ch		;5808	3e 3c 	> < 
	or a			;580a	b7 	. 
	call 0584eh		;580b	cd 4e 58 	. N X 
	ex af,af'			;580e	08 	. 
	sub 01dh		;580f	d6 1d 	. . 
	cp 02bh		;5811	fe 2b 	. + 
	jr nc,$+17		;5813	30 0f 	0 . 
	ex af,af'			;5815	08 	. 
	ld a,0b0h		;5816	3e b0 	> . 
	ex af,af'			;5818	08 	. 
	call 0583fh		;5819	cd 3f 58 	. ? X 
	ld a,03eh		;581c	3e 3e 	> > 
	call 0584eh		;581e	cd 4e 58 	. N X 
	jp 05854h		;5821	c3 54 58 	. T X 
	ld b,005h		;5824	06 05 	. . 
	ex af,af'			;5826	08 	. 
	ld a,03eh		;5827	3e 3e 	> > 
	or a			;5829	b7 	. 
	call 0584eh		;582a	cd 4e 58 	. N X 
	ex af,af'			;582d	08 	. 
	sub 02bh		;582e	d6 2b 	. + 
	ex af,af'			;5830	08 	. 
	ld a,020h		;5831	3e 20 	>   
	ex af,af'			;5833	08 	. 
	call 0583fh		;5834	cd 3f 58 	. ? X 
	ld a,03dh		;5837	3e 3d 	> = 
	call 0584eh		;5839	cd 4e 58 	. N X 
	jp 05854h		;583c	c3 54 58 	. T X 
	ld b,a			;583f	47 	G 
	and 007h		;5840	e6 07 	. . 
	ld c,a			;5842	4f 	O 
	srl b		;5843	cb 38 	. 8 
	srl b		;5845	cb 38 	. 8 
	srl b		;5847	cb 38 	. 8 
	xor a			;5849	af 	. 
	or b			;584a	b0 	. 
	ret nz			;584b	c0 	. 
	scf			;584c	37 	7 
	ret			;584d	c9 	. 
	ret c			;584e	d8 	. 
	ld (hl),a			;584f	77 	w 
	inc hl			;5850	23 	# 
	djnz $-2		;5851	10 fc 	. . 
	ret			;5853	c9 	. 
	ld a,c			;5854	79 	y 
	exx			;5855	d9 	. 
	ld c,a			;5856	4f 	O 
	ld b,000h		;5857	06 00 	. . 
	ld hl,05880h		;5859	21 80 58 	! . X 
	add hl,bc			;585c	09 	. 
	ld a,(hl)			;585d	7e 	~ 
	ld hl,012dah		;585e	21 da 12 	! . . 
	ld bc,00004h		;5861	01 04 00 	. . . 
	call 04672h		;5864	cd 72 46 	. r F 
	ex af,af'			;5867	08 	. 
	ld hl,032dah		;5868	21 da 32 	! . 2 
	ld bc,00004h		;586b	01 04 00 	. . . 
	call 04672h		;586e	cd 72 46 	. r F 
	exx			;5871	d9 	. 
	ld (hl),05bh		;5872	36 5b 	6 [ 
	ld hl,0ead8h		;5874	21 d8 ea 	! . . 
	ld de,03aa8h		;5877	11 a8 3a 	. . : 
	ld bc,00012h		;587a	01 12 00 	. . . 
	jp 0467ah		;587d	c3 7a 46 	. z F 
	nop			;5880	00 	. 
	add a,b			;5881	80 	. 
	ret nz			;5882	c0 	. 
	ret po			;5883	e0 	. 
	ret p			;5884	f0 	. 
	ret m			;5885	f8 	. 
	call m,03afeh		;5886	fc fe 3a 	. . : 
	defb 0ddh,0f2h,03dh	;illegal sequence		;5889	dd f2 3d 	. . = 
	jr z,$+63		;588c	28 3d 	( = 
	dec a			;588e	3d 	= 
	ld (0f2ddh),a		;588f	32 dd f2 	2 . . 
	ld b,a			;5892	47 	G 
	push bc			;5893	c5 	. 
	srl a		;5894	cb 3f 	. ? 
	srl a		;5896	cb 3f 	. ? 
	srl a		;5898	cb 3f 	. ? 
	ld c,a			;589a	4f 	O 
	ld a,008h		;589b	3e 08 	> . 
	sub c			;589d	91 	. 
	ld hl,03ac0h		;589e	21 c0 3a 	! . : 
	ld e,a			;58a1	5f 	_ 
	ld d,000h		;58a2	16 00 	. . 
	add hl,de			;58a4	19 	. 
	ex de,hl			;58a5	eb 	. 
	ld hl,058d8h		;58a6	21 d8 58 	! . X 
	ld bc,00002h		;58a9	01 02 00 	. . . 
	call 0467ah		;58ac	cd 7a 46 	. z F 
	pop bc			;58af	c1 	. 
	ld a,b			;58b0	78 	x 
	and 007h		;58b1	e6 07 	. . 
	ld hl,05960h		;58b3	21 60 59 	! ` Y 
	ld c,a			;58b6	4f 	O 
	ld b,000h		;58b7	06 00 	. . 
	add hl,bc			;58b9	09 	. 
	ld a,(hl)			;58ba	7e 	~ 
	ld bc,00004h		;58bb	01 04 00 	. . . 
	ld hl,012f2h		;58be	21 f2 12 	! . . 
	call 04672h		;58c1	cd 72 46 	. r F 
	ld a,(0f2ddh)		;58c4	3a dd f2 	: . . 
	or a			;58c7	b7 	. 
	jr z,$+3		;58c8	28 01 	( . 
	ret			;58ca	c9 	. 
	ld hl,058dah		;58cb	21 da 58 	! . X 
	ld de,03ad2h		;58ce	11 d2 3a 	. . : 
	ld bc,00002h		;58d1	01 02 00 	. . . 
	call 0467ah		;58d4	cd 7a 46 	. z F 
	ret			;58d7	c9 	. 
	nop			;58d8	00 	. 
	ld e,(hl)			;58d9	5e 	^ 
	ld b,(hl)			;58da	46 	F 
	ld b,(hl)			;58db	46 	F 
	ld c,(hl)			;58dc	4e 	N 
	nop			;58dd	00 	. 
	push af			;58de	f5 	. 
	ld a,(0f2ddh)		;58df	3a dd f2 	: . . 
	cp 010h		;58e2	fe 10 	. . 
	jr nc,$+14		;58e4	30 0c 	0 . 
	ld hl,(0f2d4h)		;58e6	2a d4 f2 	* . . 
	ld a,h			;58e9	7c 	| 
	or a			;58ea	b7 	. 
	jr nz,$+9		;58eb	20 07 	  . 
	ld a,013h		;58ed	3e 13 	> . 
	cp l			;58ef	bd 	. 
	jr c,$+4		;58f0	38 02 	8 . 
	pop af			;58f2	f1 	. 
	ret			;58f3	c9 	. 
	push de			;58f4	d5 	. 
	ld a,006h		;58f5	3e 06 	> . 
	call 0bc99h		;58f7	cd 99 bc 	. . . 
	ld a,0f6h		;58fa	3e f6 	> . 
	call 05968h		;58fc	cd 68 59 	. h Y 
	ld a,048h		;58ff	3e 48 	> H 
	ld (0f2eah),a		;5901	32 ea f2 	2 . . 
	ld (0f2ddh),a		;5904	32 dd f2 	2 . . 
	ld hl,03ac1h		;5907	21 c1 3a 	! . : 
	ld bc,00009h		;590a	01 09 00 	. . . 
	ld a,05dh		;590d	3e 5d 	> ] 
	call 04672h		;590f	cd 72 46 	. r F 
	ld hl,058dch		;5912	21 dc 58 	! . X 
	call 058ceh		;5915	cd ce 58 	. . X 
	ld a,006h		;5918	3e 06 	> . 
	call 0bc99h		;591a	cd 99 bc 	. . . 
	pop de			;591d	d1 	. 
	pop af			;591e	f1 	. 
	ret			;591f	c9 	. 
	ld a,(0f2cah)		;5920	3a ca f2 	: . . 
	and 007h		;5923	e6 07 	. . 
	cp 007h		;5925	fe 07 	. . 
	jr nz,$+8		;5927	20 06 	  . 
	ld a,(0f2ddh)		;5929	3a dd f2 	: . . 
	call 0588eh		;592c	cd 8e 58 	. . X 
	ld a,(0f2ddh)		;592f	3a dd f2 	: . . 
	cp 00ah		;5932	fe 0a 	. . 
	jr c,$+11		;5934	38 09 	8 . 
	cp 014h		;5936	fe 14 	. . 
	jr c,$+17		;5938	38 0f 	8 . 
	cp 01eh		;593a	fe 1e 	. . 
	jr c,$+23		;593c	38 15 	8 . 
	ret			;593e	c9 	. 
	ld a,(0f2cah)		;593f	3a ca f2 	: . . 
	and 003h		;5942	e6 03 	. . 
	cp 003h		;5944	fe 03 	. . 
	ret nz			;5946	c0 	. 
	jr $+20		;5947	18 12 	. . 
	ld a,(0f2cah)		;5949	3a ca f2 	: . . 
	and 007h		;594c	e6 07 	. . 
	cp 007h		;594e	fe 07 	. . 
	ret nz			;5950	c0 	. 
	jr $+10		;5951	18 08 	. . 
	ld a,(0f2cah)		;5953	3a ca f2 	: . . 
	and 00fh		;5956	e6 0f 	. . 
	cp 00fh		;5958	fe 0f 	. . 
	ret nz			;595a	c0 	. 
	ld a,006h		;595b	3e 06 	> . 
	jp 0bc99h		;595d	c3 99 bc 	. . . 
	nop			;5960	00 	. 
	ld bc,00703h		;5961	01 03 07 	. . . 
	rrca			;5964	0f 	. 
	rra			;5965	1f 	. 
	ccf			;5966	3f 	? 
	ld a,a			;5967	7f 	 
	or a			;5968	b7 	. 
	ret z			;5969	c8 	. 
	bit 7,a		;596a	cb 7f 	.  
	call z,0598eh		;596c	cc 8e 59 	. . Y 
	ld hl,03abbh		;596f	21 bb 3a 	! . : 
	exx			;5972	d9 	. 
	ld hl,0f2d4h		;5973	21 d4 f2 	! . . 
	ld c,a			;5976	4f 	O 
	call 05784h		;5977	cd 84 57 	. . W 
	call 057cdh		;597a	cd cd 57 	. . W 
	ld hl,(0f2d4h)		;597d	2a d4 f2 	* . . 
	ld a,l			;5980	7d 	} 
	or h			;5981	b4 	. 
	ld a,(0f281h)		;5982	3a 81 f2 	: . . 
	jr nz,$+4		;5985	20 02 	  . 
	set 1,a		;5987	cb cf 	. . 
	ld (0f281h),a		;5989	32 81 f2 	2 . . 
	xor a			;598c	af 	. 
	ret			;598d	c9 	. 
	push af			;598e	f5 	. 
	ld hl,(0f2d4h)		;598f	2a d4 f2 	* . . 
	ld c,a			;5992	4f 	O 
	ld b,000h		;5993	06 00 	. . 
	add hl,bc			;5995	09 	. 
	ld de,(0f2d6h)		;5996	ed 5b d6 f2 	. [ . . 
	or a			;599a	b7 	. 
	sbc hl,de		;599b	ed 52 	. R 
	jr c,$+13		;599d	38 0b 	8 . 
	ld de,(0f2d6h)		;599f	ed 5b d6 f2 	. [ . . 
	ld (0f2d4h),de		;59a3	ed 53 d4 f2 	. S . . 
	pop af			;59a7	f1 	. 
	xor a			;59a8	af 	. 
	ret			;59a9	c9 	. 
	pop af			;59aa	f1 	. 
	ret			;59ab	c9 	. 
	ld hl,03afbh		;59ac	21 fb 3a 	! . : 
	exx			;59af	d9 	. 
	ld hl,0f2d6h		;59b0	21 d6 f2 	! . . 
	ld c,a			;59b3	4f 	O 
	jp 05784h		;59b4	c3 84 57 	. . W 
	ld hl,03adch		;59b7	21 dc 3a 	! . : 
	ld a,(0f2edh)		;59ba	3a ed f2 	: . . 
	inc a			;59bd	3c 	< 
	jp 04614h		;59be	c3 14 46 	. . F 
	bit 7,(ix+001h)		;59c1	dd cb 01 7e 	. . . ~ 
	jp nz,05b0ah		;59c5	c2 0a 5b 	. . [ 
	ld (ix+016h),022h		;59c8	dd 36 16 22 	. 6 . " 
	ld (ix+001h),0c0h		;59cc	dd 36 01 c0 	. 6 . . 
	ld a,(ix+000h)		;59d0	dd 7e 00 	. ~ . 
	cp 009h		;59d3	fe 09 	. . 
	jr z,$+6		;59d5	28 04 	( . 
	ld (ix+008h),004h		;59d7	dd 36 08 04 	. 6 . . 
	xor a			;59db	af 	. 
	ld (ix+007h),a		;59dc	dd 77 07 	. w . 
	ld (ix+00bh),a		;59df	dd 77 0b 	. w . 
	inc a			;59e2	3c 	< 
	ld (ix+009h),a		;59e3	dd 77 09 	. w . 
	ld a,(ix+01dh)		;59e6	dd 7e 1d 	. ~ . 
	add a,a			;59e9	87 	. 
	ld e,a			;59ea	5f 	_ 
	ld d,000h		;59eb	16 00 	. . 
	ld hl,05a16h		;59ed	21 16 5a 	! . Z 
	add hl,de			;59f0	19 	. 
	ld a,(hl)			;59f1	7e 	~ 
	inc hl			;59f2	23 	# 
	ld h,(hl)			;59f3	66 	f 
	ld l,a			;59f4	6f 	o 
	ld a,(hl)			;59f5	7e 	~ 
	inc hl			;59f6	23 	# 
	ld b,a			;59f7	47 	G 
	and 00fh		;59f8	e6 0f 	. . 
	ld (ix+00ch),a		;59fa	dd 77 0c 	. w . 
	srl b		;59fd	cb 38 	. 8 
	srl b		;59ff	cb 38 	. 8 
	srl b		;5a01	cb 38 	. 8 
	srl b		;5a03	cb 38 	. 8 
	ld (ix+00ah),b		;5a05	dd 70 0a 	. p . 
	ld (ix+00eh),l		;5a08	dd 75 0e 	. u . 
	ld (ix+00fh),h		;5a0b	dd 74 0f 	. t . 
	call 04225h		;5a0e	cd 25 42 	. % B 
	set 2,(ix+006h)		;5a11	dd cb 06 d6 	. . . . 
	ret			;5a15	c9 	. 
	adc a,05ah		;5a16	ce 5a 	. Z 
	inc bc			;5a18	03 	. 
	ld e,e			;5a19	5b 	[ 
	ret c			;5a1a	d8 	. 
	ld e,d			;5a1b	5a 	Z 
	ret c			;5a1c	d8 	. 
	ld e,d			;5a1d	5a 	Z 
	defb 0ddh,05ah,0ddh	;illegal sequence		;5a1e	dd 5a dd 	. Z . 
	ld e,d			;5a21	5a 	Z 
	defb 0ddh,05ah,0e0h	;illegal sequence		;5a22	dd 5a e0 	. Z . 
	ld e,d			;5a25	5a 	Z 
	push hl			;5a26	e5 	. 
	ld e,d			;5a27	5a 	Z 
	jp (hl)			;5a28	e9 	. 
	ld e,d			;5a29	5a 	Z 
	call pe,0ec5ah		;5a2a	ec 5a ec 	. Z . 
	ld e,d			;5a2d	5a 	Z 
	rst 28h			;5a2e	ef 	. 
	ld e,d			;5a2f	5a 	Z 
	rst 28h			;5a30	ef 	. 
	ld e,d			;5a31	5a 	Z 
	rst 28h			;5a32	ef 	. 
	ld e,d			;5a33	5a 	Z 
	rst 28h			;5a34	ef 	. 
	ld e,d			;5a35	5a 	Z 
	jp p,0ef5ah		;5a36	f2 5a ef 	. Z . 
	ld e,d			;5a39	5a 	Z 
	rst 28h			;5a3a	ef 	. 
	ld e,d			;5a3b	5a 	Z 
	rst 28h			;5a3c	ef 	. 
	ld e,d			;5a3d	5a 	Z 
	rst 28h			;5a3e	ef 	. 
	ld e,d			;5a3f	5a 	Z 
	rst 28h			;5a40	ef 	. 
	ld e,d			;5a41	5a 	Z 
	call pe,0ef5ah		;5a42	ec 5a ef 	. Z . 
	ld e,d			;5a45	5a 	Z 
	rst 28h			;5a46	ef 	. 
	ld e,d			;5a47	5a 	Z 
	rst 28h			;5a48	ef 	. 
	ld e,d			;5a49	5a 	Z 
	rst 28h			;5a4a	ef 	. 
	ld e,d			;5a4b	5a 	Z 
	ex af,af'			;5a4c	08 	. 
	ld e,e			;5a4d	5b 	[ 
	ex af,af'			;5a4e	08 	. 
	ld e,e			;5a4f	5b 	[ 
	ex af,af'			;5a50	08 	. 
	ld e,e			;5a51	5b 	[ 
	ex af,af'			;5a52	08 	. 
	ld e,e			;5a53	5b 	[ 
	ex af,af'			;5a54	08 	. 
	ld e,e			;5a55	5b 	[ 
	jp m,0f55ah		;5a56	fa 5a f5 	. Z . 
	ld e,d			;5a59	5a 	Z 
	rst 38h			;5a5a	ff 	. 
	ld e,d			;5a5b	5a 	Z 
	rst 38h			;5a5c	ff 	. 
	ld e,d			;5a5d	5a 	Z 
	ex af,af'			;5a5e	08 	. 
	ld e,e			;5a5f	5b 	[ 
	ex af,af'			;5a60	08 	. 
	ld e,e			;5a61	5b 	[ 
	ex af,af'			;5a62	08 	. 
	ld e,e			;5a63	5b 	[ 
	ex af,af'			;5a64	08 	. 
	ld e,e			;5a65	5b 	[ 
	ex af,af'			;5a66	08 	. 
	ld e,e			;5a67	5b 	[ 
	ex af,af'			;5a68	08 	. 
	ld e,e			;5a69	5b 	[ 
	ex af,af'			;5a6a	08 	. 
	ld e,e			;5a6b	5b 	[ 
	ex af,af'			;5a6c	08 	. 
	ld e,e			;5a6d	5b 	[ 
	ex af,af'			;5a6e	08 	. 
	ld e,e			;5a6f	5b 	[ 
	ex af,af'			;5a70	08 	. 
	ld e,e			;5a71	5b 	[ 
	nop			;5a72	00 	. 
	rlca			;5a73	07 	. 
	nop			;5a74	00 	. 
	rlca			;5a75	07 	. 
	nop			;5a76	00 	. 
	ld (bc),a			;5a77	02 	. 
	nop			;5a78	00 	. 
	ld bc,00500h		;5a79	01 00 05 	. . . 
	nop			;5a7c	00 	. 
	dec b			;5a7d	05 	. 
	nop			;5a7e	00 	. 
	ld (bc),a			;5a7f	02 	. 
	nop			;5a80	00 	. 
	inc b			;5a81	04 	. 
	nop			;5a82	00 	. 
	inc b			;5a83	04 	. 
	rst 30h			;5a84	f7 	. 
	ld a,(de)			;5a85	1a 	. 
	nop			;5a86	00 	. 
	dec b			;5a87	05 	. 
	nop			;5a88	00 	. 
	rlca			;5a89	07 	. 
	nop			;5a8a	00 	. 
	ld b,000h		;5a8b	06 00 	. . 
	rlca			;5a8d	07 	. 
	nop			;5a8e	00 	. 
	rlca			;5a8f	07 	. 
	nop			;5a90	00 	. 
	ld a,(bc)			;5a91	0a 	. 
	nop			;5a92	00 	. 
	inc c			;5a93	0c 	. 
	ret p			;5a94	f0 	. 
	ld a,(bc)			;5a95	0a 	. 
	nop			;5a96	00 	. 
	inc b			;5a97	04 	. 
	jp p,08008h		;5a98	f2 08 80 	. . . 
	rlca			;5a9b	07 	. 
	nop			;5a9c	00 	. 
	rlca			;5a9d	07 	. 
	ld hl,0f10ah		;5a9e	21 0a f1 	! . . 
	ld a,(de)			;5aa1	1a 	. 
	nop			;5aa2	00 	. 
	add hl,bc			;5aa3	09 	. 
	ret p			;5aa4	f0 	. 
	ld a,(bc)			;5aa5	0a 	. 
	rst 30h			;5aa6	f7 	. 
	ld a,(de)			;5aa7	1a 	. 
	rst 30h			;5aa8	f7 	. 
	ld a,(de)			;5aa9	1a 	. 
	rst 30h			;5aaa	f7 	. 
	ld a,(de)			;5aab	1a 	. 
	ld b,b			;5aac	40 	@ 
	rlca			;5aad	07 	. 
	nop			;5aae	00 	. 
	ex af,af'			;5aaf	08 	. 
	nop			;5ab0	00 	. 
	rlca			;5ab1	07 	. 
	nop			;5ab2	00 	. 
	ld (bc),a			;5ab3	02 	. 
	ld b,b			;5ab4	40 	@ 
	rlca			;5ab5	07 	. 
	ld b,b			;5ab6	40 	@ 
	rlca			;5ab7	07 	. 
	ld bc,0800ah		;5ab8	01 0a 80 	. . . 
	inc c			;5abb	0c 	. 
	ret m			;5abc	f8 	. 
	rrca			;5abd	0f 	. 
	add a,d			;5abe	82 	. 
	dec c			;5abf	0d 	. 
	nop			;5ac0	00 	. 
	add hl,bc			;5ac1	09 	. 
	nop			;5ac2	00 	. 
	add hl,bc			;5ac3	09 	. 
	nop			;5ac4	00 	. 
	add hl,bc			;5ac5	09 	. 
	nop			;5ac6	00 	. 
	nop			;5ac7	00 	. 
	nop			;5ac8	00 	. 
	ld b,000h		;5ac9	06 00 	. . 
	ld b,000h		;5acb	06 00 	. . 
	ld b,010h		;5acd	06 10 	. . 
	inc e			;5acf	1c 	. 
	inc d			;5ad0	14 	. 
	inc c			;5ad1	0c 	. 
	inc b			;5ad2	04 	. 
	ex af,af'			;5ad3	08 	. 
	nop			;5ad4	00 	. 
	jr $+18		;5ad5	18 10 	. . 
	ex af,af'			;5ad7	08 	. 
	inc (hl)			;5ad8	34 	4 
	nop			;5ad9	00 	. 
	ex af,af'			;5ada	08 	. 
	inc c			;5adb	0c 	. 
	inc b			;5adc	04 	. 
	ld (00800h),a		;5add	32 00 08 	2 . . 
	inc (hl)			;5ae0	34 	4 
	nop			;5ae1	00 	. 
	ex af,af'			;5ae2	08 	. 
	inc b			;5ae3	04 	. 
	ex af,af'			;5ae4	08 	. 
	inc de			;5ae5	13 	. 
	nop			;5ae6	00 	. 
	ex af,af'			;5ae7	08 	. 
	inc b			;5ae8	04 	. 
	djnz $+2		;5ae9	10 00 	. . 
	inc b			;5aeb	04 	. 
	ld (00400h),a		;5aec	32 00 04 	2 . . 
	ld b,d			;5aef	42 	B 
	nop			;5af0	00 	. 
	inc b			;5af1	04 	. 
	ld (hl),d			;5af2	72 	r 
	nop			;5af3	00 	. 
	inc b			;5af4	04 	. 
	inc (hl)			;5af5	34 	4 
	nop			;5af6	00 	. 
	inc b			;5af7	04 	. 
	ex af,af'			;5af8	08 	. 
	inc c			;5af9	0c 	. 
	inc d			;5afa	14 	. 
	nop			;5afb	00 	. 
	inc b			;5afc	04 	. 
	ex af,af'			;5afd	08 	. 
	inc c			;5afe	0c 	. 
	inc hl			;5aff	23 	# 
	nop			;5b00	00 	. 
	inc b			;5b01	04 	. 
	ex af,af'			;5b02	08 	. 
	inc (hl)			;5b03	34 	4 
	nop			;5b04	00 	. 
	ex af,af'			;5b05	08 	. 
	inc b			;5b06	04 	. 
	ex af,af'			;5b07	08 	. 
	djnz $+2		;5b08	10 00 	. . 
	set 2,(ix+006h)		;5b0a	dd cb 06 d6 	. . . . 
	call 05dadh		;5b0e	cd ad 5d 	. . ] 
	ld a,(ix+01fh)		;5b11	dd 7e 1f 	. ~ . 
	bit 4,a		;5b14	cb 67 	. g 
	jr z,$+6		;5b16	28 04 	( . 
	ld a,004h		;5b18	3e 04 	> . 
	jr $+11		;5b1a	18 09 	. . 
	ld hl,05b8eh		;5b1c	21 8e 5b 	! . [ 
	ld a,(ix+011h)		;5b1f	dd 7e 11 	. ~ . 
	call 04bcdh		;5b22	cd cd 4b 	. . K 
	ld hl,05d30h		;5b25	21 30 5d 	! 0 ] 
	call 04bcdh		;5b28	cd cd 4b 	. . K 
	bit 4,(ix+001h)		;5b2b	dd cb 01 66 	. . . f 
	jr z,$+14		;5b2f	28 0c 	( . 
	ld hl,(0f2a1h)		;5b31	2a a1 f2 	* . . 
	ld a,(0f2a3h)		;5b34	3a a3 f2 	: . . 
	ld b,a			;5b37	47 	G 
	ld c,001h		;5b38	0e 01 	. . 
	call 042b4h		;5b3a	cd b4 42 	. . B 
	call 04225h		;5b3d	cd 25 42 	. % B 
	ret nc			;5b40	d0 	. 
	ld l,(ix+01bh)		;5b41	dd 6e 1b 	. n . 
	ld a,(ix+01ch)		;5b44	dd 7e 1c 	. ~ . 
	or a			;5b47	b7 	. 
	jr z,$+65		;5b48	28 3f 	( ? 
	ld h,a			;5b4a	67 	g 
	push hl			;5b4b	e5 	. 
	call 04283h		;5b4c	cd 83 42 	. . B 
	pop hl			;5b4f	e1 	. 
	ld a,(ix+014h)		;5b50	dd 7e 14 	. ~ . 
	ld c,(ix+01fh)		;5b53	dd 4e 1f 	. N . 
	bit 4,c		;5b56	cb 61 	. a 
	jr nz,$+4		;5b58	20 02 	  . 
	set 7,a		;5b5a	cb ff 	. . 
	bit 5,c		;5b5c	cb 69 	. i 
	jr z,$+4		;5b5e	28 02 	( . 
	set 6,a		;5b60	cb f7 	. . 
	ld (hl),a			;5b62	77 	w 
	inc hl			;5b63	23 	# 
	ld a,(ix+012h)		;5b64	dd 7e 12 	. ~ . 
	ld (hl),a			;5b67	77 	w 
	inc hl			;5b68	23 	# 
	ld a,(ix+013h)		;5b69	dd 7e 13 	. ~ . 
	ld b,(ix+01dh)		;5b6c	dd 46 1d 	. F . 
	sla b		;5b6f	cb 20 	.   
	or b			;5b71	b0 	. 
	ld (hl),a			;5b72	77 	w 
	inc hl			;5b73	23 	# 
	ld a,(hl)			;5b74	7e 	~ 
	and 0f0h		;5b75	e6 f0 	. . 
	ld b,(ix+019h)		;5b77	dd 46 19 	. F . 
	or b			;5b7a	b0 	. 
	ld (hl),a			;5b7b	77 	w 
	bit 5,c		;5b7c	cb 69 	. i 
	jr z,$+3		;5b7e	28 01 	( . 
	ld (hl),b			;5b80	70 	p 
	xor a			;5b81	af 	. 
	ld (ix+000h),a		;5b82	dd 77 00 	. w . 
	ld (ix+001h),a		;5b85	dd 77 01 	. w . 
	ret			;5b88	c9 	. 
	call 0427fh		;5b89	cd 7f 42 	.  B 
	jr $-11		;5b8c	18 f3 	. . 
	and b			;5b8e	a0 	. 
	ld e,e			;5b8f	5b 	[ 
	and e			;5b90	a3 	. 
	ld e,e			;5b91	5b 	[ 
	rst 20h			;5b92	e7 	. 
	ld e,e			;5b93	5b 	[ 
	jp pe,0215bh		;5b94	ea 5b 21 	. [ ! 
	ld e,h			;5b97	5c 	\ 
	pop af			;5b98	f1 	. 
	ld e,h			;5b99	5c 	\ 
	pop af			;5b9a	f1 	. 
	ld e,h			;5b9b	5c 	\ 
	rrca			;5b9c	0f 	. 
	ld e,l			;5b9d	5d 	] 
	jp pe,03e5bh		;5b9e	ea 5b 3e 	. [ > 
	inc b			;5ba1	04 	. 
	ret			;5ba2	c9 	. 
	inc (ix+007h)		;5ba3	dd 34 07 	. 4 . 
	ld a,(ix+007h)		;5ba6	dd 7e 07 	. ~ . 
	cp 007h		;5ba9	fe 07 	. . 
	jr c,$+44		;5bab	38 2a 	8 * 
	bit 5,(ix+001h)		;5bad	dd cb 01 6e 	. . . n 
	jr z,$+38		;5bb1	28 24 	( $ 
	ld (ix+007h),000h		;5bb3	dd 36 07 00 	. 6 . . 
	ld a,(0e314h)		;5bb7	3a 14 e3 	: . . 
	cp (ix+014h)		;5bba	dd be 14 	. . . 
	jr c,$+13		;5bbd	38 0b 	8 . 
	call 05bdbh		;5bbf	cd db 5b 	. . [ 
	ld a,006h		;5bc2	3e 06 	> . 
	jr c,$+15		;5bc4	38 0d 	8 . 
	ld a,000h		;5bc6	3e 00 	> . 
	jr $+11		;5bc8	18 09 	. . 
	call 05bdbh		;5bca	cd db 5b 	. . [ 
	ld a,008h		;5bcd	3e 08 	> . 
	jr c,$+4		;5bcf	38 02 	8 . 
	ld a,002h		;5bd1	3e 02 	> . 
	ld (ix+008h),a		;5bd3	dd 77 08 	. w . 
	ret			;5bd6	c9 	. 
	ld a,(ix+008h)		;5bd7	dd 7e 08 	. ~ . 
	ret			;5bda	c9 	. 
	call 05d8eh		;5bdb	cd 8e 5d 	. . ] 
	ld de,(0e312h)		;5bde	ed 5b 12 e3 	. [ . . 
	inc de			;5be2	13 	. 
	or a			;5be3	b7 	. 
	sbc hl,de		;5be4	ed 52 	. R 
	ret			;5be6	c9 	. 
	ld a,003h		;5be7	3e 03 	> . 
	ret			;5be9	c9 	. 
	ld a,(0f2cah)		;5bea	3a ca f2 	: . . 
	and 001h		;5bed	e6 01 	. . 
	ld a,004h		;5bef	3e 04 	> . 
	ret z			;5bf1	c8 	. 
	ld a,(ix+01dh)		;5bf2	dd 7e 1d 	. ~ . 
	cp 01fh		;5bf5	fe 1f 	. . 
	jr nz,$+30		;5bf7	20 1c 	  . 
	bit 5,(ix+001h)		;5bf9	dd cb 01 6e 	. . . n 
	jr z,$-93		;5bfd	28 a1 	( . 
	ld a,(ix+003h)		;5bff	dd 7e 03 	. ~ . 
	cp 00eh		;5c02	fe 0e 	. . 
	jr c,$+7		;5c04	38 05 	8 . 
	cp 012h		;5c06	fe 12 	. . 
	jr nc,$+7		;5c08	30 05 	0 . 
	ret			;5c0a	c9 	. 
	ld a,007h		;5c0b	3e 07 	> . 
	jr $+4		;5c0d	18 02 	. . 
	ld a,001h		;5c0f	3e 01 	> . 
	ld (ix+008h),a		;5c11	dd 77 08 	. w . 
	ret			;5c14	c9 	. 
	ld a,(ix+003h)		;5c15	dd 7e 03 	. ~ . 
	cp 00fh		;5c18	fe 0f 	. . 
	jr c,$-15		;5c1a	38 ef 	8 . 
	cp 011h		;5c1c	fe 11 	. . 
	jr nc,$-15		;5c1e	30 ef 	0 . 
	ret			;5c20	c9 	. 
	call 05c5eh		;5c21	cd 5e 5c 	. ^ \ 
	ld (ix+008h),a		;5c24	dd 77 08 	. w . 
	ex af,af'			;5c27	08 	. 
	ld a,(ix+01dh)		;5c28	dd 7e 1d 	. ~ . 
	or a			;5c2b	b7 	. 
	jr nz,$+22		;5c2c	20 14 	  . 
	set 6,(ix+006h)		;5c2e	dd cb 06 f6 	. . . . 
	ex af,af'			;5c32	08 	. 
	push af			;5c33	f5 	. 
	ld hl,05c55h		;5c34	21 55 5c 	! U \ 
	ld e,a			;5c37	5f 	_ 
	ld d,000h		;5c38	16 00 	. . 
	add hl,de			;5c3a	19 	. 
	ld a,(hl)			;5c3b	7e 	~ 
	ld (ix+004h),a		;5c3c	dd 77 04 	. w . 
	pop af			;5c3f	f1 	. 
	jr $+3		;5c40	18 01 	. . 
	ex af,af'			;5c42	08 	. 
	ld hl,05c4ch		;5c43	21 4c 5c 	! L \ 
	ld e,a			;5c46	5f 	_ 
	ld d,000h		;5c47	16 00 	. . 
	add hl,de			;5c49	19 	. 
	ld a,(hl)			;5c4a	7e 	~ 
	ret			;5c4b	c9 	. 
	rlca			;5c4c	07 	. 
	ex af,af'			;5c4d	08 	. 
	dec b			;5c4e	05 	. 
	ld (bc),a			;5c4f	02 	. 
	ld bc,00300h		;5c50	01 00 03 	. . . 
	ld b,004h		;5c53	06 04 	. . 
	jr nz,$+26		;5c55	20 18 	  . 
	djnz $+30		;5c57	10 1c 	. . 
	inc h			;5c59	24 	$ 
	inc l			;5c5a	2c 	, 
	inc d			;5c5b	14 	. 
	jr z,$+34		;5c5c	28 20 	(   
	ld a,(0f2c5h)		;5c5e	3a c5 f2 	: . . 
	or a			;5c61	b7 	. 
	jr nz,$+9		;5c62	20 07 	  . 
	ld a,(ix+008h)		;5c64	dd 7e 08 	. ~ . 
	dec a			;5c67	3d 	= 
	and 007h		;5c68	e6 07 	. . 
	ret			;5c6a	c9 	. 
	call 05ca4h		;5c6b	cd a4 5c 	. . \ 
	cp 008h		;5c6e	fe 08 	. . 
	jr z,$-12		;5c70	28 f2 	( . 
	ld e,(ix+008h)		;5c72	dd 5e 08 	. ^ . 
	ld d,000h		;5c75	16 00 	. . 
	cp e			;5c77	bb 	. 
	jr nz,$+7		;5c78	20 05 	  . 
	call 05c92h		;5c7a	cd 92 5c 	. . \ 
	ld a,e			;5c7d	7b 	{ 
	ret z			;5c7e	c8 	. 
	ld a,e			;5c7f	7b 	{ 
	ld b,008h		;5c80	06 08 	. . 
	dec a			;5c82	3d 	= 
	and 007h		;5c83	e6 07 	. . 
	ld e,a			;5c85	5f 	_ 
	call 05c92h		;5c86	cd 92 5c 	. . \ 
	ld a,e			;5c89	7b 	{ 
	ret z			;5c8a	c8 	. 
	dec b			;5c8b	05 	. 
	jp nz,05c82h		;5c8c	c2 82 5c 	. . \ 
	jp 05c64h		;5c8f	c3 64 5c 	. d \ 
	ld hl,05c9ch		;5c92	21 9c 5c 	! . \ 
	add hl,de			;5c95	19 	. 
	ld a,(0f2c5h)		;5c96	3a c5 f2 	: . . 
	cpl			;5c99	2f 	/ 
	and (hl)			;5c9a	a6 	. 
	ret			;5c9b	c9 	. 
	ld (bc),a			;5c9c	02 	. 
	ld b,(hl)			;5c9d	46 	F 
	inc b			;5c9e	04 	. 
	dec d			;5c9f	15 	. 
	ld bc,00829h		;5ca0	01 29 08 	. ) . 
	adc a,d			;5ca3	8a 	. 
	ld c,000h		;5ca4	0e 00 	. . 
	ld a,(0e303h)		;5ca6	3a 03 e3 	: . . 
	inc a			;5ca9	3c 	< 
	sub (ix+003h)		;5caa	dd 96 03 	. . . 
	jr nc,$+6		;5cad	30 04 	0 . 
	neg		;5caf	ed 44 	. D 
	set 0,c		;5cb1	cb c1 	. . 
	ld l,a			;5cb3	6f 	o 
	add a,a			;5cb4	87 	. 
	ld e,a			;5cb5	5f 	_ 
	ld a,(0e314h)		;5cb6	3a 14 e3 	: . . 
	inc a			;5cb9	3c 	< 
	sub (ix+014h)		;5cba	dd 96 14 	. . . 
	jr nc,$+6		;5cbd	30 04 	0 . 
	neg		;5cbf	ed 44 	. D 
	set 1,c		;5cc1	cb c9 	. . 
	ld h,a			;5cc3	67 	g 
	add a,a			;5cc4	87 	. 
	ld d,a			;5cc5	57 	W 
	or l			;5cc6	b5 	. 
	ld a,008h		;5cc7	3e 08 	> . 
	ret z			;5cc9	c8 	. 
	ld b,000h		;5cca	06 00 	. . 
	ld a,d			;5ccc	7a 	z 
	sub l			;5ccd	95 	. 
	jr c,$+10		;5cce	38 08 	8 . 
	ld b,002h		;5cd0	06 02 	. . 
	ld a,e			;5cd2	7b 	{ 
	sub h			;5cd3	94 	. 
	jr c,$+4		;5cd4	38 02 	8 . 
	ld b,001h		;5cd6	06 01 	. . 
	ld a,c			;5cd8	79 	y 
	add a,a			;5cd9	87 	. 
	add a,c			;5cda	81 	. 
	add a,b			;5cdb	80 	. 
	ld hl,05ce5h		;5cdc	21 e5 5c 	! . \ 
	ld e,a			;5cdf	5f 	_ 
	ld d,000h		;5ce0	16 00 	. . 
	add hl,de			;5ce2	19 	. 
	ld a,(hl)			;5ce3	7e 	~ 
	ret			;5ce4	c9 	. 
	nop			;5ce5	00 	. 
	rlca			;5ce6	07 	. 
	ld b,004h		;5ce7	06 04 	. . 
	dec b			;5ce9	05 	. 
	ld b,000h		;5cea	06 00 	. . 
	ld bc,00402h		;5cec	01 02 04 	. . . 
	inc bc			;5cef	03 	. 
	ld (bc),a			;5cf0	02 	. 
	ld a,(0f2cah)		;5cf1	3a ca f2 	: . . 
	and 001h		;5cf4	e6 01 	. . 
	ld a,004h		;5cf6	3e 04 	> . 
	ret z			;5cf8	c8 	. 
	ld a,(0f2c5h)		;5cf9	3a c5 f2 	: . . 
	bit 3,a		;5cfc	cb 5f 	. _ 
	jp nz,05be7h		;5cfe	c2 e7 5b 	. . [ 
	ld a,(ix+003h)		;5d01	dd 7e 03 	. ~ . 
	cp 00fh		;5d04	fe 0f 	. . 
	jp c,05c0bh		;5d06	da 0b 5c 	. . \ 
	cp 011h		;5d09	fe 11 	. . 
	jp nc,05c0fh		;5d0b	d2 0f 5c 	. . \ 
	ret			;5d0e	c9 	. 
	ld a,(0f2c5h)		;5d0f	3a c5 f2 	: . . 
	bit 3,a		;5d12	cb 5f 	. _ 
	jp nz,05be7h		;5d14	c2 e7 5b 	. . [ 
	inc (ix+007h)		;5d17	dd 34 07 	. 4 . 
	ld a,(ix+007h)		;5d1a	dd 7e 07 	. ~ . 
	cp 003h		;5d1d	fe 03 	. . 
	jp c,05bd7h		;5d1f	da d7 5b 	. . [ 
	ld (ix+007h),000h		;5d22	dd 36 07 00 	. 6 . . 
	ld a,r		;5d26	ed 5f 	. _ 
	bit 0,a		;5d28	cb 47 	. G 
	jp z,05c0bh		;5d2a	ca 0b 5c 	. . \ 
	jp 05c0fh		;5d2d	c3 0f 5c 	. . \ 
	ld b,d			;5d30	42 	B 
	ld e,l			;5d31	5d 	] 
	ld d,b			;5d32	50 	P 
	ld e,l			;5d33	5d 	] 
	ld d,e			;5d34	53 	S 
	ld e,l			;5d35	5d 	] 
	ld h,c			;5d36	61 	a 
	ld e,l			;5d37	5d 	] 
	ld h,h			;5d38	64 	d 
	ld e,l			;5d39	5d 	] 
	ld h,l			;5d3a	65 	e 
	ld e,l			;5d3b	5d 	] 
	ld l,b			;5d3c	68 	h 
	ld e,l			;5d3d	5d 	] 
	halt			;5d3e	76 	v 
	ld e,l			;5d3f	5d 	] 
	ld a,c			;5d40	79 	y 
	ld e,l			;5d41	5d 	] 
	ld a,(0f2c5h)		;5d42	3a c5 f2 	: . . 
	and 029h		;5d45	e6 29 	. ) 
	cp 029h		;5d47	fe 29 	. ) 
	ret nz			;5d49	c0 	. 
	call 05149h		;5d4a	cd 49 51 	. I Q 
	jp 0523fh		;5d4d	c3 3f 52 	. ? R 
	jp 05149h		;5d50	c3 49 51 	. I Q 
	ld a,(0f2c5h)		;5d53	3a c5 f2 	: . . 
	and 015h		;5d56	e6 15 	. . 
	cp 015h		;5d58	fe 15 	. . 
	ret nz			;5d5a	c0 	. 
	call 05149h		;5d5b	cd 49 51 	. I Q 
	jp 051f3h		;5d5e	c3 f3 51 	. . Q 
	jp 0523fh		;5d61	c3 3f 52 	. ? R 
	ret			;5d64	c9 	. 
	jp 051f3h		;5d65	c3 f3 51 	. . Q 
	ld a,(0f2c5h)		;5d68	3a c5 f2 	: . . 
	and 08ah		;5d6b	e6 8a 	. . 
	cp 08ah		;5d6d	fe 8a 	. . 
	ret nz			;5d6f	c0 	. 
	call 05197h		;5d70	cd 97 51 	. . Q 
	jp 0523fh		;5d73	c3 3f 52 	. ? R 
	jp 05197h		;5d76	c3 97 51 	. . Q 
	ld a,(0f2c5h)		;5d79	3a c5 f2 	: . . 
	and 046h		;5d7c	e6 46 	. F 
	cp 046h		;5d7e	fe 46 	. F 
	ret nz			;5d80	c0 	. 
	call 05197h		;5d81	cd 97 51 	. . Q 
	jp 051f3h		;5d84	c3 f3 51 	. . Q 
	ld (ix+012h),l		;5d87	dd 75 12 	. u . 
	ld (ix+013h),h		;5d8a	dd 74 13 	. t . 
	ret			;5d8d	c9 	. 
	ld l,(ix+012h)		;5d8e	dd 6e 12 	. n . 
	ld h,(ix+013h)		;5d91	dd 66 13 	. f . 
	ret			;5d94	c9 	. 
	bit 7,(ix+001h)		;5d95	dd cb 01 7e 	. . . ~ 
	ret z			;5d99	c8 	. 
	set 2,(ix+006h)		;5d9a	dd cb 06 d6 	. . . . 
	ld a,(ix+00bh)		;5d9e	dd 7e 0b 	. ~ . 
	or a			;5da1	b7 	. 
	ret nz			;5da2	c0 	. 
	res 7,(ix+001h)		;5da3	dd cb 01 be 	. . . . 
	ret			;5da7	c9 	. 
	add a,b			;5da8	80 	. 
	add a,b			;5da9	80 	. 
	add a,h			;5daa	84 	. 
	adc a,b			;5dab	88 	. 
	adc a,h			;5dac	8c 	. 
	call 0428ah		;5dad	cd 8a 42 	. . B 
	ld de,0ff88h		;5db0	11 88 ff 	. . . 
	add hl,de			;5db3	19 	. 
	ld c,000h		;5db4	0e 00 	. . 
	call 05e04h		;5db6	cd 04 5e 	. . ^ 
	ld a,0c0h		;5db9	3e c0 	> . 
	and d			;5dbb	a2 	. 
	jr nz,$+4		;5dbc	20 02 	  . 
	set 4,c		;5dbe	cb e1 	. . 
	ld a,03ch		;5dc0	3e 3c 	> < 
	and d			;5dc2	a2 	. 
	jr nz,$+4		;5dc3	20 02 	  . 
	set 2,c		;5dc5	cb d1 	. . 
	ld a,003h		;5dc7	3e 03 	> . 
	and d			;5dc9	a2 	. 
	jr nz,$+4		;5dca	20 02 	  . 
	set 6,c		;5dcc	cb f1 	. . 
	call 05e04h		;5dce	cd 04 5e 	. . ^ 
	ld a,d			;5dd1	7a 	z 
	ex af,af'			;5dd2	08 	. 
	call 05e04h		;5dd3	cd 04 5e 	. . ^ 
	ex af,af'			;5dd6	08 	. 
	or d			;5dd7	b2 	. 
	ld d,a			;5dd8	57 	W 
	ld a,0c0h		;5dd9	3e c0 	> . 
	and d			;5ddb	a2 	. 
	jr nz,$+4		;5ddc	20 02 	  . 
	set 0,c		;5dde	cb c1 	. . 
	ld a,003h		;5de0	3e 03 	> . 
	and d			;5de2	a2 	. 
	jr nz,$+4		;5de3	20 02 	  . 
	set 1,c		;5de5	cb c9 	. . 
	call 05e04h		;5de7	cd 04 5e 	. . ^ 
	ld a,0c0h		;5dea	3e c0 	> . 
	and d			;5dec	a2 	. 
	jr nz,$+4		;5ded	20 02 	  . 
	set 5,c		;5def	cb e9 	. . 
	ld a,03ch		;5df1	3e 3c 	> < 
	and d			;5df3	a2 	. 
	jr nz,$+4		;5df4	20 02 	  . 
	set 3,c		;5df6	cb d9 	. . 
	ld a,003h		;5df8	3e 03 	> . 
	and d			;5dfa	a2 	. 
	jr nz,$+4		;5dfb	20 02 	  . 
	set 7,c		;5dfd	cb f9 	. . 
	ld a,c			;5dff	79 	y 
	ld (0f2c5h),a		;5e00	32 c5 f2 	2 . . 
	ret			;5e03	c9 	. 
	ld a,(0f2a3h)		;5e04	3a a3 f2 	: . . 
	or a			;5e07	b7 	. 
	jr nz,$+18		;5e08	20 10 	  . 
	dec hl			;5e0a	2b 	+ 
	ld d,(hl)			;5e0b	56 	V 
	inc hl			;5e0c	23 	# 
	ld e,(hl)			;5e0d	5e 	^ 
	inc hl			;5e0e	23 	# 
	srl d		;5e0f	cb 3a 	. : 
	rr e		;5e11	cb 1b 	. . 
	srl d		;5e13	cb 3a 	. : 
	rr e		;5e15	cb 1b 	. . 
	ld d,e			;5e17	53 	S 
	jr $+16		;5e18	18 0e 	. . 
	ld d,(hl)			;5e1a	56 	V 
	inc hl			;5e1b	23 	# 
	ld e,(hl)			;5e1c	5e 	^ 
	dec a			;5e1d	3d 	= 
	jr z,$+10		;5e1e	28 08 	( . 
	add a,a			;5e20	87 	. 
	ld b,a			;5e21	47 	G 
	sla e		;5e22	cb 23 	. # 
	rl d		;5e24	cb 12 	. . 
	djnz $-4		;5e26	10 fa 	. . 
	ld a,c			;5e28	79 	y 
	ld bc,00077h		;5e29	01 77 00 	. w . 
	add hl,bc			;5e2c	09 	. 
	ld c,a			;5e2d	4f 	O 
	ret			;5e2e	c9 	. 
	ld a,(0e314h)		;5e2f	3a 14 e3 	: . . 
	sub 021h		;5e32	d6 21 	. ! 
	ret nz			;5e34	c0 	. 
	ld de,(0e312h)		;5e35	ed 5b 12 e3 	. [ . . 
	ld a,(0f2d8h)		;5e39	3a d8 f2 	: . . 
	cp 009h		;5e3c	fe 09 	. . 
	jr nz,$+7		;5e3e	20 05 	  . 
	ld hl,0004ah		;5e40	21 4a 00 	! J . 
	jr $+5		;5e43	18 03 	. . 
	ld hl,001ceh		;5e45	21 ce 01 	! . . 
	or a			;5e48	b7 	. 
	sbc hl,de		;5e49	ed 52 	. R 
	ret nz			;5e4b	c0 	. 
	ld a,(0f2b4h)		;5e4c	3a b4 f2 	: . . 
	or a			;5e4f	b7 	. 
	ret nz			;5e50	c0 	. 
	call 04548h		;5e51	cd 48 45 	. H E 
	ld a,008h		;5e54	3e 08 	> . 
	ld (0e880h),a		;5e56	32 80 e8 	2 . . 
	ld ix,0e300h		;5e59	dd 21 00 e3 	. ! . . 
	call 04225h		;5e5d	cd 25 42 	. % B 
	ld hl,0ec40h		;5e60	21 40 ec 	! @ . 
	ld de,0ec41h		;5e63	11 41 ec 	. A . 
	ld bc,0006ah		;5e66	01 6a 00 	. j . 
	ld (hl),000h		;5e69	36 00 	6 . 
	ldir		;5e6b	ed b0 	. . 
	call 0443bh		;5e6d	cd 3b 44 	. ; D 
	ld a,0ffh		;5e70	3e ff 	> . 
	ld (0eed0h),a		;5e72	32 d0 ee 	2 . . 
	call 04560h		;5e75	cd 60 45 	. ` E 
	ld hl,05f7dh		;5e78	21 7d 5f 	! } _ 
	ld de,0ce58h		;5e7b	11 58 ce 	. X . 
	ld bc,00012h		;5e7e	01 12 00 	. . . 
	ldir		;5e81	ed b0 	. . 
	ld a,003h		;5e83	3e 03 	> . 
	ld (de),a			;5e85	12 	. 
	ld hl,0ce5eh		;5e86	21 5e ce 	! ^ . 
	ld b,030h		;5e89	06 30 	. 0 
	ld a,(0f2edh)		;5e8b	3a ed f2 	: . . 
	inc a			;5e8e	3c 	< 
	cp 00ah		;5e8f	fe 0a 	. . 
	jr c,$+7		;5e91	38 05 	8 . 
	sub 00ah		;5e93	d6 0a 	. . 
	inc b			;5e95	04 	. 
	jr $-7		;5e96	18 f7 	. . 
	ld (hl),b			;5e98	70 	p 
	inc hl			;5e99	23 	# 
	add a,030h		;5e9a	c6 30 	. 0 
	ld (hl),a			;5e9c	77 	w 
	ld b,031h		;5e9d	06 31 	. 1 
	ld de,0ebaeh		;5e9f	11 ae eb 	. . . 
	xor a			;5ea2	af 	. 
	ld (0f29ah),a		;5ea3	32 9a f2 	2 . . 
	push bc			;5ea6	c5 	. 
	ld hl,0ce58h		;5ea7	21 58 ce 	! X . 
	ld bc,00013h		;5eaa	01 13 00 	. . . 
	push de			;5ead	d5 	. 
	ldir		;5eae	ed b0 	. . 
	ld hl,0ead8h		;5eb0	21 d8 ea 	! . . 
	ld de,0ebb0h		;5eb3	11 b0 eb 	. . . 
	ld bc,00024h		;5eb6	01 24 00 	. $ . 
	ldir		;5eb9	ed b0 	. . 
	ld hl,0ead8h		;5ebb	21 d8 ea 	! . . 
	ld de,0eb68h		;5ebe	11 68 eb 	. h . 
	ld bc,00024h		;5ec1	01 24 00 	. $ . 
	ldir		;5ec4	ed b0 	. . 
	call 041efh		;5ec6	cd ef 41 	. . A 
	ld hl,0f29ah		;5ec9	21 9a f2 	! . . 
	ld a,(hl)			;5ecc	7e 	~ 
	cp 004h		;5ecd	fe 04 	. . 
	jr c,$-6		;5ecf	38 f8 	8 . 
	ld (hl),000h		;5ed1	36 00 	6 . 
	pop de			;5ed3	d1 	. 
	dec de			;5ed4	1b 	. 
	pop bc			;5ed5	c1 	. 
	ld a,01ah		;5ed6	3e 1a 	> . 
	cp b			;5ed8	b8 	. 
	jr nz,$+9		;5ed9	20 07 	  . 
	exx			;5edb	d9 	. 
	ld e,00ah		;5edc	1e 0a 	. . 
	call 04594h		;5ede	cd 94 45 	. . E 
	exx			;5ee1	d9 	. 
	djnz $-60		;5ee2	10 c2 	. . 
	ld a,(0f2eah)		;5ee4	3a ea f2 	: . . 
	or a			;5ee7	b7 	. 
	jr nz,$+19		;5ee8	20 11 	  . 
	ld a,01eh		;5eea	3e 1e 	> . 
	call 059ach		;5eec	cd ac 59 	. . Y 
	ld a,064h		;5eef	3e 64 	> d 
	call 05968h		;5ef1	cd 68 59 	. h Y 
	ld a,010h		;5ef4	3e 10 	> . 
	call 05710h		;5ef6	cd 10 57 	. . W 
	jr $+7		;5ef9	18 05 	. . 
	ld a,00ah		;5efb	3e 0a 	> . 
	call 059ach		;5efd	cd ac 59 	. . Y 
	ld a,001h		;5f00	3e 01 	> . 
	ld hl,00000h		;5f02	21 00 00 	! . . 
	ld (0f2b3h),a		;5f05	32 b3 f2 	2 . . 
	ld (0f2b1h),hl		;5f08	22 b1 f2 	" . . 
	ld hl,0000fh		;5f0b	21 0f 00 	! . . 
	ld a,00bh		;5f0e	3e 0b 	> . 
	ld (0e312h),hl		;5f10	22 12 e3 	" . . 
	ld (0e314h),a		;5f13	32 14 e3 	2 . . 
	ld a,(0f2edh)		;5f16	3a ed f2 	: . . 
	inc a			;5f19	3c 	< 
	ld (0f2edh),a		;5f1a	32 ed f2 	2 . . 
	ld a,(0f2d8h)		;5f1d	3a d8 f2 	: . . 
	inc a			;5f20	3c 	< 
	cp 00ah		;5f21	fe 0a 	. . 
	jr c,$+24		;5f23	38 16 	8 . 
	ld hl,0f281h		;5f25	21 81 f2 	! . . 
	set 6,(hl)		;5f28	cb f6 	. . 
	ld hl,(0f2eeh)		;5f2a	2a ee f2 	* . . 
	ld a,004h		;5f2d	3e 04 	> . 
	cp h			;5f2f	bc 	. 
	jr c,$+9		;5f30	38 07 	8 . 
	ld de,00080h		;5f32	11 80 00 	. . . 
	add hl,de			;5f35	19 	. 
	ld (0f2eeh),hl		;5f36	22 ee f2 	" . . 
	ld a,001h		;5f39	3e 01 	> . 
	ld (0f2d8h),a		;5f3b	32 d8 f2 	2 . . 
	call 046ech		;5f3e	cd ec 46 	. . F 
	ld a,007h		;5f41	3e 07 	> . 
	ld (0e300h),a		;5f43	32 00 e3 	2 . . 
	call 04166h		;5f46	cd 66 41 	. f A 
	ld hl,0f2cah		;5f49	21 ca f2 	! . . 
	inc (hl)			;5f4c	34 	4 
	call 04166h		;5f4d	cd 66 41 	. f A 
	ld hl,0f2cah		;5f50	21 ca f2 	! . . 
	inc (hl)			;5f53	34 	4 
	ld hl,0f281h		;5f54	21 81 f2 	! . . 
	bit 6,(hl)		;5f57	cb 76 	. v 
	jr z,$+33		;5f59	28 1f 	( . 
	res 6,(hl)		;5f5b	cb b6 	. . 
	ld a,(0f2e9h)		;5f5d	3a e9 f2 	: . . 
	bit 0,a		;5f60	cb 47 	. G 
	ret nz			;5f62	c0 	. 
	ld hl,03800h		;5f63	21 00 38 	! . 8 
	ld bc,000e0h		;5f66	01 e0 00 	. . . 
	xor a			;5f69	af 	. 
	call 04672h		;5f6a	cd 72 46 	. r F 
	ld b,003h		;5f6d	06 03 	. . 
	ld hl,05f8fh		;5f6f	21 8f 5f 	! . _ 
	call 066d1h		;5f72	cd d1 66 	. . f 
	call 066a5h		;5f75	cd a5 66 	. . f 
	jr z,$-3		;5f78	28 fb 	( . 
	jp 059b7h		;5f7a	c3 b7 59 	. . Y 
	ld c,h			;5f7d	4c 	L 
	ld b,l			;5f7e	45 	E 
	ld d,(hl)			;5f7f	56 	V 
	ld b,l			;5f80	45 	E 
	ld c,h			;5f81	4c 	L 
	nop			;5f82	00 	. 
	jr nc,$+50		;5f83	30 30 	0 0 
	nop			;5f85	00 	. 
	ld b,e			;5f86	43 	C 
	ld c,a			;5f87	4f 	O 
	ld c,l			;5f88	4d 	M 
	ld d,b			;5f89	50 	P 
	ld c,h			;5f8a	4c 	L 
	ld b,l			;5f8b	45 	E 
	ld d,h			;5f8c	54 	T 
	ld b,l			;5f8d	45 	E 
	ld b,h			;5f8e	44 	D 
	sub l			;5f8f	95 	. 
	ld e,a			;5f90	5f 	_ 
	and a			;5f91	a7 	. 
	ld e,a			;5f92	5f 	_ 
	cp a			;5f93	bf 	. 
	ld e,a			;5f94	5f 	_ 
	rrca			;5f95	0f 	. 
	add hl,hl			;5f96	29 	) 
	jr c,$+69		;5f97	38 43 	8 C 
	ld c,a			;5f99	4f 	O 
	ld c,(hl)			;5f9a	4e 	N 
	ld b,a			;5f9b	47 	G 
	ld d,d			;5f9c	52 	R 
	ld b,c			;5f9d	41 	A 
	ld d,h			;5f9e	54 	T 
	ld d,l			;5f9f	55 	U 
	ld c,h			;5fa0	4c 	L 
	ld b,c			;5fa1	41 	A 
	ld d,h			;5fa2	54 	T 
	ld c,c			;5fa3	49 	I 
	ld c,a			;5fa4	4f 	O 
	ld c,(hl)			;5fa5	4e 	N 
	ld d,e			;5fa6	53 	S 
	dec d			;5fa7	15 	. 
	ld h,(hl)			;5fa8	66 	f 
	jr c,$+69		;5fa9	38 43 	8 C 
	ld c,a			;5fab	4f 	O 
	ld c,l			;5fac	4d 	M 
	ld d,b			;5fad	50 	P 
	ld c,h			;5fae	4c 	L 
	ld b,l			;5faf	45 	E 
	ld d,h			;5fb0	54 	T 
	ld b,l			;5fb1	45 	E 
	ld b,h			;5fb2	44 	D 
	nop			;5fb3	00 	. 
	ld b,c			;5fb4	41 	A 
	ld c,h			;5fb5	4c 	L 
	ld c,h			;5fb6	4c 	L 
	nop			;5fb7	00 	. 
	ld c,l			;5fb8	4d 	M 
	ld c,c			;5fb9	49 	I 
	ld d,e			;5fba	53 	S 
	ld d,e			;5fbb	53 	S 
	ld c,c			;5fbc	49 	I 
	ld c,a			;5fbd	4f 	O 
	ld c,(hl)			;5fbe	4e 	N 
	dec e			;5fbf	1d 	. 
	and d			;5fc0	a2 	. 
	jr c,$+82		;5fc1	38 50 	8 P 
	ld d,l			;5fc3	55 	U 
	ld d,e			;5fc4	53 	S 
	ld c,b			;5fc5	48 	H 
	nop			;5fc6	00 	. 
	ld d,h			;5fc7	54 	T 
	ld d,d			;5fc8	52 	R 
	ld c,c			;5fc9	49 	I 
	ld b,a			;5fca	47 	G 
	ld b,a			;5fcb	47 	G 
	ld b,l			;5fcc	45 	E 
	ld d,d			;5fcd	52 	R 
	nop			;5fce	00 	. 
	ld b,(hl)			;5fcf	46 	F 
	ld c,a			;5fd0	4f 	O 
	ld d,d			;5fd1	52 	R 
	nop			;5fd2	00 	. 
	ld c,(hl)			;5fd3	4e 	N 
	ld b,l			;5fd4	45 	E 
	ld e,b			;5fd5	58 	X 
	ld d,h			;5fd6	54 	T 
	nop			;5fd7	00 	. 
	ld c,l			;5fd8	4d 	M 
	ld c,c			;5fd9	49 	I 
	ld d,e			;5fda	53 	S 
	ld d,e			;5fdb	53 	S 
	ld c,c			;5fdc	49 	I 
	ld c,a			;5fdd	4f 	O 
	ld c,(hl)			;5fde	4e 	N 
	ld a,0ffh		;5fdf	3e ff 	> . 
	ld (0eed0h),a		;5fe1	32 d0 ee 	2 . . 
	ld a,080h		;5fe4	3e 80 	> . 
	ld (0f2d0h),a		;5fe6	32 d0 f2 	2 . . 
	ld ix,0e300h		;5fe9	dd 21 00 e3 	. ! . . 
	ld a,(0f2b3h)		;5fed	3a b3 f2 	: . . 
	ld b,a			;5ff0	47 	G 
	ld a,(0e314h)		;5ff1	3a 14 e3 	: . . 
	sub b			;5ff4	90 	. 
	add a,a			;5ff5	87 	. 
	add a,a			;5ff6	87 	. 
	add a,a			;5ff7	87 	. 
	sub 008h		;5ff8	d6 08 	. . 
	ld (0f2dch),a		;5ffa	32 dc f2 	2 . . 
	xor a			;5ffd	af 	. 
	ld iy,0e900h		;5ffe	fd 21 00 e9 	. ! . . 
	ld (ix+000h),a		;6002	dd 77 00 	. w . 
	ld (iy+001h),a		;6005	fd 77 01 	. w . 
	ld (iy+002h),0e0h		;6008	fd 36 02 e0 	. 6 . . 
	call 0bc7dh		;600c	cd 7d bc 	. } . 
	ld b,048h		;600f	06 48 	. H 
	push bc			;6011	c5 	. 
	ld a,r		;6012	ed 5f 	. _ 
	and 01fh		;6014	e6 1f 	. . 
	ld b,a			;6016	47 	G 
	ld a,(0f2dch)		;6017	3a dc f2 	: . . 
	add a,b			;601a	80 	. 
	ld (ix+002h),a		;601b	dd 77 02 	. w . 
	ld a,r		;601e	ed 5f 	. _ 
	and 00fh		;6020	e6 0f 	. . 
	add a,074h		;6022	c6 74 	. t 
	ld (ix+003h),a		;6024	dd 77 03 	. w . 
	call 06525h		;6027	cd 25 65 	. % e 
	call 04889h		;602a	cd 89 48 	. . H 
	pop bc			;602d	c1 	. 
	bit 1,b		;602e	cb 48 	. H 
	jr z,$+7		;6030	28 05 	( . 
	ld a,004h		;6032	3e 04 	> . 
	call 0bc99h		;6034	cd 99 bc 	. . . 
	djnz $-38		;6037	10 d8 	. . 
	ld a,(0e316h)		;6039	3a 16 e3 	: . . 
	cp 043h		;603c	fe 43 	. C 
	jr z,$+7		;603e	28 05 	( . 
	ld de,0ce40h		;6040	11 40 ce 	. @ . 
	jr $+5		;6043	18 03 	. . 
	ld de,0ce58h		;6045	11 58 ce 	. X . 
	ld hl,060ach		;6048	21 ac 60 	! . ` 
	call 06d68h		;604b	cd 68 6d 	. h m 
	ld a,060h		;604e	3e 60 	> ` 
	ld (0f2c6h),a		;6050	32 c6 f2 	2 . . 
	ld a,01ch		;6053	3e 1c 	> . 
	ld (0f2b4h),a		;6055	32 b4 f2 	2 . . 
	ld hl,0f2d0h		;6058	21 d0 f2 	! . . 
	res 7,(hl)		;605b	cb be 	. . 
	call 041d0h		;605d	cd d0 41 	. . A 
	ld hl,0f29ah		;6060	21 9a f2 	! . . 
	ld (hl),000h		;6063	36 00 	6 . 
	ld a,(hl)			;6065	7e 	~ 
	or a			;6066	b7 	. 
	jr z,$-2		;6067	28 fc 	( . 
	call 04560h		;6069	cd 60 45 	. ` E 
	ld e,010h		;606c	1e 10 	. . 
	call 04594h		;606e	cd 94 45 	. . E 
	ld hl,060a3h		;6071	21 a3 60 	! . ` 
	ld de,0390ch		;6074	11 0c 39 	. . 9 
	ld bc,00009h		;6077	01 09 00 	. . . 
	call 0467ah		;607a	cd 7a 46 	. z F 
	xor a			;607d	af 	. 
	ld (0ef59h),a		;607e	32 59 ef 	2 Y . 
	ld a,005h		;6081	3e 05 	> . 
	call 0bc99h		;6083	cd 99 bc 	. . . 
	call 066a5h		;6086	cd a5 66 	. . f 
	jr nz,$+13		;6089	20 0b 	  . 
	ld a,(0ef59h)		;608b	3a 59 ef 	: Y . 
	or a			;608e	b7 	. 
	jr z,$-9		;608f	28 f5 	( . 
	ld e,005h		;6091	1e 05 	. . 
	call 04594h		;6093	cd 94 45 	. . E 
	call 0bc7dh		;6096	cd 7d bc 	. } . 
	call 0458ah		;6099	cd 8a 45 	. . E 
	xor a			;609c	af 	. 
	ld (0f281h),a		;609d	32 81 f2 	2 . . 
	jp 04086h		;60a0	c3 86 40 	. . @ 
	ld b,a			;60a3	47 	G 
	ld b,c			;60a4	41 	A 
	ld c,l			;60a5	4d 	M 
	ld b,l			;60a6	45 	E 
	nop			;60a7	00 	. 
	ld c,a			;60a8	4f 	O 
	ld d,(hl)			;60a9	56 	V 
	ld b,l			;60aa	45 	E 
	ld d,d			;60ab	52 	R 
	rst 38h			;60ac	ff 	. 
	nop			;60ad	00 	. 
	inc h			;60ae	24 	$ 
	ex af,af'			;60af	08 	. 
	jr $+50		;60b0	18 30 	. 0 
	ld l,(hl)			;60b2	6e 	n 
	rst 38h			;60b3	ff 	. 
	nop			;60b4	00 	. 
	djnz $-124		;60b5	10 82 	. . 
	jr nc,$+94		;60b7	30 5c 	0 \ 
	inc bc			;60b9	03 	. 
	jr $+91		;60ba	18 59 	. Y 
	ld d,e			;60bc	53 	S 
	dec bc			;60bd	0b 	. 
	rst 38h			;60be	ff 	. 
	nop			;60bf	00 	. 
	dec b			;60c0	05 	. 
	rst 38h			;60c1	ff 	. 
	ld h,b			;60c2	60 	` 
	inc bc			;60c3	03 	. 
	nop			;60c4	00 	. 
	djnz $+10		;60c5	10 08 	. . 
	rlca			;60c7	07 	. 
	ld b,012h		;60c8	06 12 	. . 
	ld (de),a			;60ca	12 	. 
	inc bc			;60cb	03 	. 
	nop			;60cc	00 	. 
	ld h,a			;60cd	67 	g 
	adc a,e			;60ce	8b 	. 
	nop			;60cf	00 	. 
	ld h,c			;60d0	61 	a 
	call z,0fdfah		;60d1	cc fa fd 	. . . 
	nop			;60d4	00 	. 
	djnz $+74		;60d5	10 48 	. H 
	jp po,04407h		;60d7	e2 07 44 	. . D 
	dec de			;60da	1b 	. 
	ret p			;60db	f0 	. 
	rst 38h			;60dc	ff 	. 
	nop			;60dd	00 	. 
	inc h			;60de	24 	$ 
	rst 38h			;60df	ff 	. 
	ret po			;60e0	e0 	. 
	inc b			;60e1	04 	. 
	rst 38h			;60e2	ff 	. 
	nop			;60e3	00 	. 
	djnz $+1		;60e4	10 ff 	. . 
	ret po			;60e6	e0 	. 
	rlca			;60e7	07 	. 
	ld (hl),b			;60e8	70 	p 
	rst 38h			;60e9	ff 	. 
	nop			;60ea	00 	. 
	dec b			;60eb	05 	. 
	rst 38h			;60ec	ff 	. 
	add a,b			;60ed	80 	. 
	inc bc			;60ee	03 	. 
	nop			;60ef	00 	. 
	ld d,b			;60f0	50 	P 
	ld d,b			;60f1	50 	P 
	ld (hl),b			;60f2	70 	p 
	rst 38h			;60f3	ff 	. 
	ret po			;60f4	e0 	. 
	inc b			;60f5	04 	. 
	nop			;60f6	00 	. 
	ld d,b			;60f7	50 	P 
	ld d,b			;60f8	50 	P 
	nop			;60f9	00 	. 
	rst 38h			;60fa	ff 	. 
	ret po			;60fb	e0 	. 
	inc b			;60fc	04 	. 
	nop			;60fd	00 	. 
	rst 38h			;60fe	ff 	. 
	ret po			;60ff	e0 	. 
	dec b			;6100	05 	. 
	add a,b			;6101	80 	. 
	ex af,af'			;6102	08 	. 
	rst 38h			;6103	ff 	. 
	rst 38h			;6104	ff 	. 
	ld a,(0e300h)		;6105	3a 00 e3 	: . . 
	dec a			;6108	3d 	= 
	ret nz			;6109	c0 	. 
	ld iy,(0f2c2h)		;610a	fd 2a c2 f2 	. * . . 
	ld b,03fh		;610e	06 3f 	. ? 
	ld a,(iy+000h)		;6110	fd 7e 00 	. ~ . 
	or a			;6113	b7 	. 
	jr z,$+10		;6114	28 08 	( . 
	cp 008h		;6116	fe 08 	. . 
	jr nz,$+63		;6118	20 3d 	  = 
	ld iy,0e300h		;611a	fd 21 00 e3 	. ! . . 
	ld de,00020h		;611e	11 20 00 	.   . 
	add iy,de		;6121	fd 19 	. . 
	djnz $-19		;6123	10 eb 	. . 
	ld (0f2c2h),iy		;6125	fd 22 c2 f2 	. " . . 
	bit 1,(ix+001h)		;6129	dd cb 01 4e 	. . . N 
	jr z,$+9		;612d	28 07 	( . 
	ld a,0f0h		;612f	3e f0 	> . 
	ld bc,08c84h		;6131	01 84 8c 	. . . 
	jr $+7		;6134	18 05 	. . 
	ld a,010h		;6136	3e 10 	> . 
	ld bc,0848ch		;6138	01 8c 84 	. . . 
	ld hl,00000h		;613b	21 00 00 	! . . 
	ld (0f2b9h),hl		;613e	22 b9 f2 	" . . 
	ld (0f2b8h),a		;6141	32 b8 f2 	2 . . 
	xor a			;6144	af 	. 
	ld (0f2c1h),a		;6145	32 c1 f2 	2 . . 
	ld (0f2beh),a		;6148	32 be f2 	2 . . 
	ld (0f2b7h),a		;614b	32 b7 f2 	2 . . 
	ld a,b			;614e	78 	x 
	ld (0f2cbh),a		;614f	32 cb f2 	2 . . 
	ld a,c			;6152	79 	y 
	ld (0f2cch),a		;6153	32 cc f2 	2 . . 
	ret			;6156	c9 	. 
	ld a,(iy+001h)		;6157	fd 7e 01 	. ~ . 
	and 0a0h		;615a	e6 a0 	. . 
	cp 0a0h		;615c	fe a0 	. . 
	jr nz,$-64		;615e	20 be 	  . 
	ld l,(iy+012h)		;6160	fd 6e 12 	. n . 
	ld h,(iy+013h)		;6163	fd 66 13 	. f . 
	add hl,hl			;6166	29 	) 
	ex de,hl			;6167	eb 	. 
	ld l,(ix+012h)		;6168	dd 6e 12 	. n . 
	ld h,(ix+013h)		;616b	dd 66 13 	. f . 
	add hl,hl			;616e	29 	) 
	inc l			;616f	2c 	, 
	or a			;6170	b7 	. 
	sbc hl,de		;6171	ed 52 	. R 
	ld a,l			;6173	7d 	} 
	push af			;6174	f5 	. 
	add a,080h		;6175	c6 80 	. . 
	bit 1,(ix+001h)		;6177	dd cb 01 4e 	. . . N 
	jr z,$+9		;617b	28 07 	( . 
	cp 080h		;617d	fe 80 	. . 
	jr nc,$+12		;617f	30 0a 	0 . 
	pop af			;6181	f1 	. 
	jr $-100		;6182	18 9a 	. . 
	cp 080h		;6184	fe 80 	. . 
	jr c,$+5		;6186	38 03 	8 . 
	pop af			;6188	f1 	. 
	jr $-107		;6189	18 93 	. . 
	push iy		;618b	fd e5 	. . 
	pop hl			;618d	e1 	. 
	ld de,00020h		;618e	11 20 00 	.   . 
	add hl,de			;6191	19 	. 
	ld (0f2c2h),hl		;6192	22 c2 f2 	" . . 
	ld c,000h		;6195	0e 00 	. . 
	pop af			;6197	f1 	. 
	jr nc,$+6		;6198	30 04 	0 . 
	set 0,c		;619a	cb c1 	. . 
	neg		;619c	ed 44 	. D 
	ex af,af'			;619e	08 	. 
	ld l,(ix+014h)		;619f	dd 6e 14 	. n . 
	ld h,000h		;61a2	26 00 	& . 
	add hl,hl			;61a4	29 	) 
	ex de,hl			;61a5	eb 	. 
	ld l,(iy+014h)		;61a6	fd 6e 14 	. n . 
	ld h,000h		;61a9	26 00 	& . 
	add hl,hl			;61ab	29 	) 
	or a			;61ac	b7 	. 
	sbc hl,de		;61ad	ed 52 	. R 
	ld a,l			;61af	7d 	} 
	jr nc,$+6		;61b0	30 04 	0 . 
	set 1,c		;61b2	cb c9 	. . 
	neg		;61b4	ed 44 	. D 
	ld h,a			;61b6	67 	g 
	ld l,000h		;61b7	2e 00 	. . 
	ex af,af'			;61b9	08 	. 
	ld d,000h		;61ba	16 00 	. . 
	ld e,a			;61bc	5f 	_ 
	ex af,af'			;61bd	08 	. 
	cp e			;61be	bb 	. 
	jr c,$+6		;61bf	38 04 	8 . 
	set 2,c		;61c1	cb d1 	. . 
	ld h,e			;61c3	63 	c 
	ld e,a			;61c4	5f 	_ 
	ld a,c			;61c5	79 	y 
	cp 004h		;61c6	fe 04 	. . 
	jr z,$+8		;61c8	28 06 	( . 
	cp 005h		;61ca	fe 05 	. . 
	jr z,$+4		;61cc	28 02 	( . 
	jr $+12		;61ce	18 0a 	. . 
	ld a,h			;61d0	7c 	| 
	add a,a			;61d1	87 	. 
	cp e			;61d2	bb 	. 
	jr nc,$+7		;61d3	30 05 	0 . 
	xor a			;61d5	af 	. 
	ld (0e901h),a		;61d6	32 01 e9 	2 . . 
	ret			;61d9	c9 	. 
	push bc			;61da	c5 	. 
	call 04682h		;61db	cd 82 46 	. . F 
	pop bc			;61de	c1 	. 
	ld (0f2b9h),hl		;61df	22 b9 f2 	" . . 
	ex de,hl			;61e2	eb 	. 
	ld hl,062d7h		;61e3	21 d7 62 	! . b 
	ld b,008h		;61e6	06 08 	. . 
	ld a,e			;61e8	7b 	{ 
	sub (hl)			;61e9	96 	. 
	inc hl			;61ea	23 	# 
	ld a,d			;61eb	7a 	z 
	sbc a,(hl)			;61ec	9e 	. 
	dec hl			;61ed	2b 	+ 
	jr c,$+6		;61ee	38 04 	8 . 
	inc hl			;61f0	23 	# 
	inc hl			;61f1	23 	# 
	djnz $-10		;61f2	10 f4 	. . 
	ld a,008h		;61f4	3e 08 	> . 
	sub b			;61f6	90 	. 
	add a,a			;61f7	87 	. 
	add a,a			;61f8	87 	. 
	bit 2,c		;61f9	cb 51 	. Q 
	jr z,$+6		;61fb	28 04 	( . 
	ld b,a			;61fd	47 	G 
	ld a,040h		;61fe	3e 40 	> @ 
	sub b			;6200	90 	. 
	bit 0,c		;6201	cb 41 	. A 
	jr z,$+8		;6203	28 06 	( . 
	bit 1,c		;6205	cb 49 	. I 
	jr nz,$+16		;6207	20 0e 	  . 
	jr $+6		;6209	18 04 	. . 
	bit 1,c		;620b	cb 49 	. I 
	jr z,$+10		;620d	28 08 	( . 
	ld b,a			;620f	47 	G 
	ld a,040h		;6210	3e 40 	> @ 
	sub b			;6212	90 	. 
	add a,040h		;6213	c6 40 	. @ 
	and 07fh		;6215	e6 7f 	.  
	ld (0f2beh),a		;6217	32 be f2 	2 . . 
	push bc			;621a	c5 	. 
	cp 041h		;621b	fe 41 	. A 
	ld e,a			;621d	5f 	_ 
	jr c,$+9		;621e	38 07 	8 . 
	ex af,af'			;6220	08 	. 
	ld a,080h		;6221	3e 80 	> . 
	sub e			;6223	93 	. 
	ld e,a			;6224	5f 	_ 
	jr $+3		;6225	18 01 	. . 
	ex af,af'			;6227	08 	. 
	srl e		;6228	cb 3b 	. ; 
	ld d,000h		;622a	16 00 	. . 
	ld hl,062e7h		;622c	21 e7 62 	! . b 
	add hl,de			;622f	19 	. 
	ld d,(hl)			;6230	56 	V 
	inc hl			;6231	23 	# 
	ld e,(hl)			;6232	5e 	^ 
	ex af,af'			;6233	08 	. 
	jr c,$+51		;6234	38 31 	8 1 
	ld a,005h		;6236	3e 05 	> . 
	cp c			;6238	b9 	. 
	jr z,$+16		;6239	28 0e 	( . 
	inc a			;623b	3c 	< 
	cp c			;623c	b9 	. 
	jr z,$+12		;623d	28 0a 	( . 
	ld a,d			;623f	7a 	z 
	add a,008h		;6240	c6 08 	. . 
	ld d,a			;6242	57 	W 
	ld a,e			;6243	7b 	{ 
	sub 008h		;6244	d6 08 	. . 
	ld e,a			;6246	5f 	_ 
	jr $+32		;6247	18 1e 	. . 
	ld a,d			;6249	7a 	z 
	and 0f0h		;624a	e6 f0 	. . 
	ld b,a			;624c	47 	G 
	ld a,d			;624d	7a 	z 
	ld d,b			;624e	50 	P 
	and 00fh		;624f	e6 0f 	. . 
	neg		;6251	ed 44 	. D 
	add a,010h		;6253	c6 10 	. . 
	or d			;6255	b2 	. 
	ld d,a			;6256	57 	W 
	ld a,e			;6257	7b 	{ 
	and 0f0h		;6258	e6 f0 	. . 
	ld b,a			;625a	47 	G 
	ld a,e			;625b	7b 	{ 
	ld e,b			;625c	58 	X 
	and 00fh		;625d	e6 0f 	. . 
	sub 008h		;625f	d6 08 	. . 
	neg		;6261	ed 44 	. D 
	add a,008h		;6263	c6 08 	. . 
	or e			;6265	b3 	. 
	ld e,a			;6266	5f 	_ 
	pop bc			;6267	c1 	. 
	push bc			;6268	c5 	. 
	ld a,c			;6269	79 	y 
	or a			;626a	b7 	. 
	jr z,$+20		;626b	28 12 	( . 
	cp 004h		;626d	fe 04 	. . 
	jr z,$+16		;626f	28 0e 	( . 
	cp 005h		;6271	fe 05 	. . 
	jr z,$+12		;6273	28 0a 	( . 
	cp 001h		;6275	fe 01 	. . 
	jr nz,$+11		;6277	20 09 	  . 
	ld a,(0f2beh)		;6279	3a be f2 	: . . 
	or a			;627c	b7 	. 
	jr z,$+5		;627d	28 03 	( . 
	ld a,d			;627f	7a 	z 
	ld d,e			;6280	53 	S 
	ld e,a			;6281	5f 	_ 
	ld a,d			;6282	7a 	z 
	ld (0f2cbh),a		;6283	32 cb f2 	2 . . 
	ld a,e			;6286	7b 	{ 
	ld (0f2cch),a		;6287	32 cc f2 	2 . . 
	pop bc			;628a	c1 	. 
	ld hl,(0f2b9h)		;628b	2a b9 f2 	* . . 
	add hl,hl			;628e	29 	) 
	add hl,hl			;628f	29 	) 
	add hl,hl			;6290	29 	) 
	add hl,hl			;6291	29 	) 
	bit 1,c		;6292	cb 49 	. I 
	jr z,$+15		;6294	28 0d 	( . 
	ld a,007h		;6296	3e 07 	> . 
	cp c			;6298	b9 	. 
	jr z,$+10		;6299	28 08 	( . 
	xor a			;629b	af 	. 
	sub l			;629c	95 	. 
	ld l,a			;629d	6f 	o 
	sbc a,a			;629e	9f 	. 
	sub h			;629f	94 	. 
	ld h,a			;62a0	67 	g 
	jr $+7		;62a1	18 05 	. . 
	ld a,004h		;62a3	3e 04 	> . 
	cp c			;62a5	b9 	. 
	jr z,$-16		;62a6	28 ee 	( . 
	bit 0,c		;62a8	cb 41 	. A 
	jr z,$+17		;62aa	28 0f 	( . 
	ld a,010h		;62ac	3e 10 	> . 
	ld b,a			;62ae	47 	G 
	ld a,007h		;62af	3e 07 	> . 
	cp c			;62b1	b9 	. 
	ld a,b			;62b2	78 	x 
	jr nz,$+4		;62b3	20 02 	  . 
	neg		;62b5	ed 44 	. D 
	ld b,000h		;62b7	06 00 	. . 
	jr $+15		;62b9	18 0d 	. . 
	ld a,0f0h		;62bb	3e f0 	> . 
	ld b,a			;62bd	47 	G 
	ld a,004h		;62be	3e 04 	> . 
	cp c			;62c0	b9 	. 
	ld a,b			;62c1	78 	x 
	jr nz,$-11		;62c2	20 f3 	  . 
	neg		;62c4	ed 44 	. D 
	jr $-15		;62c6	18 ef 	. . 
	ld (0f2b9h),hl		;62c8	22 b9 f2 	" . . 
	ld (0f2b8h),a		;62cb	32 b8 f2 	2 . . 
	ld a,b			;62ce	78 	x 
	ld (0f2b7h),a		;62cf	32 b7 f2 	2 . . 
	ld a,c			;62d2	79 	y 
	ld (0f2c1h),a		;62d3	32 c1 f2 	2 . . 
	ret			;62d6	c9 	. 
	dec c			;62d7	0d 	. 
	nop			;62d8	00 	. 
	ld h,000h		;62d9	26 00 	& . 
	ld b,b			;62db	40 	@ 
	nop			;62dc	00 	. 
	ld e,h			;62dd	5c 	\ 
	nop			;62de	00 	. 
	ld a,c			;62df	79 	y 
	nop			;62e0	00 	. 
	sbc a,c			;62e1	99 	. 
	nop			;62e2	00 	. 
	cp (hl)			;62e3	be 	. 
	nop			;62e4	00 	. 
	ret pe			;62e5	e8 	. 
	nop			;62e6	00 	. 
	add a,h			;62e7	84 	. 
	adc a,h			;62e8	8c 	. 
	add a,h			;62e9	84 	. 
	adc a,h			;62ea	8c 	. 
	add a,h			;62eb	84 	. 
	ld l,h			;62ec	6c 	l 
	add a,h			;62ed	84 	. 
	ld l,h			;62ee	6c 	l 
	add a,h			;62ef	84 	. 
	ld e,h			;62f0	5c 	\ 
	sub h			;62f1	94 	. 
	ld e,h			;62f2	5c 	\ 
	sub h			;62f3	94 	. 
	ld c,h			;62f4	4c 	L 
	and h			;62f5	a4 	. 
	inc a			;62f6	3c 	< 
	or h			;62f7	b4 	. 
	inc a			;62f8	3c 	< 
	or h			;62f9	b4 	. 
	dec sp			;62fa	3b 	; 
	or l			;62fb	b5 	. 
	ld a,(039b5h)		;62fc	3a b5 39 	: . 9 
	or (hl)			;62ff	b6 	. 
	add hl,sp			;6300	39 	9 
	or (hl)			;6301	b6 	. 
	jr c,$-72		;6302	38 b6 	8 . 
	jr c,$-71		;6304	38 b7 	8 . 
	scf			;6306	37 	7 
	or a			;6307	b7 	. 
	scf			;6308	37 	7 
	ld a,(0e300h)		;6309	3a 00 e3 	: . . 
	cp 001h		;630c	fe 01 	. . 
	jp z,0658eh		;630e	ca 8e 65 	. . e 
	cp 007h		;6311	fe 07 	. . 
	jr nz,$+72		;6313	20 46 	  F 
	ld (ix+000h),002h		;6315	dd 36 00 02 	. 6 . . 
	bit 7,(ix+001h)		;6319	dd cb 01 7e 	. . . ~ 
	ret z			;631d	c8 	. 
	res 6,(ix+001h)		;631e	dd cb 01 b6 	. . . . 
	ld a,(0f2b4h)		;6322	3a b4 f2 	: . . 
	cp 008h		;6325	fe 08 	. . 
	ret nc			;6327	d0 	. 
	add a,a			;6328	87 	. 
	add a,a			;6329	87 	. 
	add a,a			;632a	87 	. 
	ld b,000h		;632b	06 00 	. . 
	ld c,a			;632d	4f 	O 
	ld hl,06364h		;632e	21 64 63 	! d c 
	add hl,bc			;6331	09 	. 
	call 056a6h		;6332	cd a6 56 	. . V 
	add a,(hl)			;6335	86 	. 
	ld (ix+002h),a		;6336	dd 77 02 	. w . 
	inc hl			;6339	23 	# 
	ld a,(hl)			;633a	7e 	~ 
	ld (ix+003h),a		;633b	dd 77 03 	. w . 
	inc hl			;633e	23 	# 
	ld a,(hl)			;633f	7e 	~ 
	ld (ix+004h),a		;6340	dd 77 04 	. w . 
	inc hl			;6343	23 	# 
	ld a,(hl)			;6344	7e 	~ 
	ld (0f2b7h),a		;6345	32 b7 f2 	2 . . 
	inc hl			;6348	23 	# 
	ld a,(hl)			;6349	7e 	~ 
	ld (0f2b8h),a		;634a	32 b8 f2 	2 . . 
	inc hl			;634d	23 	# 
	ld a,(hl)			;634e	7e 	~ 
	ld (0f2cbh),a		;634f	32 cb f2 	2 . . 
	inc hl			;6352	23 	# 
	ld a,(hl)			;6353	7e 	~ 
	ld (0f2cch),a		;6354	32 cc f2 	2 . . 
	call 0642ch		;6357	cd 2c 64 	. , d 
	ret			;635a	c9 	. 
	res 7,(ix+001h)		;635b	dd cb 01 be 	. . . . 
	ld (ix+005h),000h		;635f	dd 36 05 00 	. 6 . . 
	ret			;6363	c9 	. 
	ld bc,00090h		;6364	01 90 00 	. . . 
	nop			;6367	00 	. 
	rrca			;6368	0f 	. 
	add a,h			;6369	84 	. 
	adc a,h			;636a	8c 	. 
	nop			;636b	00 	. 
	ret p			;636c	f0 	. 
	add a,a			;636d	87 	. 
	jr nz,$-14		;636e	20 f0 	  . 
	djnz $-74		;6370	10 b4 	. . 
	inc a			;6372	3c 	< 
	nop			;6373	00 	. 
	xor 07dh		;6374	ee 7d 	. } 
	ld b,b			;6376	40 	@ 
	ret p			;6377	f0 	. 
	nop			;6378	00 	. 
	or a			;6379	b7 	. 
	scf			;637a	37 	7 
	nop			;637b	00 	. 
	ret p			;637c	f0 	. 
	ld (hl),c			;637d	71 	q 
	ld h,b			;637e	60 	` 
	ret p			;637f	f0 	. 
	ret p			;6380	f0 	. 
	cp h			;6381	bc 	. 
	inc (hl)			;6382	34 	4 
	nop			;6383	00 	. 
	ld bc,00068h		;6384	01 68 00 	. h . 
	nop			;6387	00 	. 
	pop af			;6388	f1 	. 
	adc a,h			;6389	8c 	. 
	add a,h			;638a	84 	. 
	nop			;638b	00 	. 
	rrca			;638c	0f 	. 
	ld l,c			;638d	69 	i 
	jr nz,$+17		;638e	20 0f 	  . 
	pop af			;6390	f1 	. 
	inc a			;6391	3c 	< 
	or h			;6392	b4 	. 
	nop			;6393	00 	. 
	jr $+127		;6394	18 7d 	. } 
	ld b,b			;6396	40 	@ 
	djnz $+2		;6397	10 00 	. . 
	scf			;6399	37 	7 
	or a			;639a	b7 	. 
	nop			;639b	00 	. 
	rrca			;639c	0f 	. 
	adc a,a			;639d	8f 	. 
	ld h,b			;639e	60 	` 
	rrca			;639f	0f 	. 
	rrca			;63a0	0f 	. 
	inc (hl)			;63a1	34 	4 
	cp h			;63a2	bc 	. 
	nop			;63a3	00 	. 
	ld hl,0e901h		;63a4	21 01 e9 	! . . 
	ld a,(hl)			;63a7	7e 	~ 
	bit 7,(hl)		;63a8	cb 7e 	. ~ 
	jr z,$+8		;63aa	28 06 	( . 
	bit 7,(ix-01fh)		;63ac	dd cb e1 7e 	. . . ~ 
	jr nz,$+11		;63b0	20 09 	  . 
	res 7,(ix+001h)		;63b2	dd cb 01 be 	. . . . 
	ld (ix+005h),000h		;63b6	dd 36 05 00 	. 6 . . 
	ret			;63ba	c9 	. 
	set 6,(ix+001h)		;63bb	dd cb 01 f6 	. . . . 
	push ix		;63bf	dd e5 	. . 
	pop hl			;63c1	e1 	. 
	inc hl			;63c2	23 	# 
	ld d,h			;63c3	54 	T 
	ld e,l			;63c4	5d 	] 
	ld bc,0ffe0h		;63c5	01 e0 ff 	. . . 
	add hl,bc			;63c8	09 	. 
	ld bc,00005h		;63c9	01 05 00 	. . . 
	ldir		;63cc	ed b0 	. . 
	ld a,(0e900h)		;63ce	3a 00 e9 	: . . 
	cp 002h		;63d1	fe 02 	. . 
	jr nz,$+22		;63d3	20 14 	  . 
	ld a,(0f2b7h)		;63d5	3a b7 f2 	: . . 
	add a,(ix+002h)		;63d8	dd 86 02 	. . . 
	ld (ix+002h),a		;63db	dd 77 02 	. w . 
	ld a,(0f2b8h)		;63de	3a b8 f2 	: . . 
	add a,(ix+003h)		;63e1	dd 86 03 	. . . 
	ld (ix+003h),a		;63e4	dd 77 03 	. w . 
	jr $+69		;63e7	18 43 	. C 
	set 7,(ix+001h)		;63e9	dd cb 01 fe 	. . . . 
	ld a,(0f2c1h)		;63ed	3a c1 f2 	: . . 
	bit 2,a		;63f0	cb 57 	. W 
	jr nz,$+31		;63f2	20 1d 	  . 
	ld a,(0f2b8h)		;63f4	3a b8 f2 	: . . 
	add a,(ix+003h)		;63f7	dd 86 03 	. . . 
	ld (ix+003h),a		;63fa	dd 77 03 	. w . 
	ld hl,(0f2b9h)		;63fd	2a b9 f2 	* . . 
	ld a,(0f2b7h)		;6400	3a b7 f2 	: . . 
	ld e,a			;6403	5f 	_ 
	ld d,(ix+002h)		;6404	dd 56 02 	. V . 
	add hl,de			;6407	19 	. 
	ld a,l			;6408	7d 	} 
	ld (0f2b7h),a		;6409	32 b7 f2 	2 . . 
	ld (ix+002h),h		;640c	dd 74 02 	. t . 
	jr $+29		;640f	18 1b 	. . 
	ld a,(0f2b8h)		;6411	3a b8 f2 	: . . 
	add a,(ix+002h)		;6414	dd 86 02 	. . . 
	ld (ix+002h),a		;6417	dd 77 02 	. w . 
	ld hl,(0f2b9h)		;641a	2a b9 f2 	* . . 
	ld a,(0f2b7h)		;641d	3a b7 f2 	: . . 
	ld e,a			;6420	5f 	_ 
	ld d,(ix+003h)		;6421	dd 56 03 	. V . 
	add hl,de			;6424	19 	. 
	ld a,l			;6425	7d 	} 
	ld (0f2b7h),a		;6426	32 b7 f2 	2 . . 
	ld (ix+003h),h		;6429	dd 74 03 	. t . 
	res 6,(ix+001h)		;642c	dd cb 01 b6 	. . . . 
	call 055ebh		;6430	cd eb 55 	. . U 
	ld h,(ix+002h)		;6433	dd 66 02 	. f . 
	ld a,h			;6436	7c 	| 
	and 00fh		;6437	e6 0f 	. . 
	ld a,h			;6439	7c 	| 
	cp 004h		;643a	fe 04 	. . 
	jr nc,$+6		;643c	30 04 	0 . 
	and 0f0h		;643e	e6 f0 	. . 
	jr $+4		;6440	18 02 	. . 
	or 00fh		;6442	f6 0f 	. . 
	ld h,a			;6444	67 	g 
	ld l,(ix+003h)		;6445	dd 6e 03 	. n . 
	ld a,l			;6448	7d 	} 
	and 00fh		;6449	e6 0f 	. . 
	ld a,l			;644b	7d 	} 
	cp 004h		;644c	fe 04 	. . 
	jr nc,$+6		;644e	30 04 	0 . 
	and 0f0h		;6450	e6 f0 	. . 
	jr $+4		;6452	18 02 	. . 
	or 00fh		;6454	f6 0f 	. . 
	ld l,a			;6456	6f 	o 
	ld hl,0f2cbh		;6457	21 cb f2 	! . . 
	ld b,002h		;645a	06 02 	. . 
	push hl			;645c	e5 	. 
	push bc			;645d	c5 	. 
	ld a,(hl)			;645e	7e 	~ 
	ld b,a			;645f	47 	G 
	and 00fh		;6460	e6 0f 	. . 
	ld c,(ix+003h)		;6462	dd 4e 03 	. N . 
	add a,c			;6465	81 	. 
	ld c,a			;6466	4f 	O 
	srl b		;6467	cb 38 	. 8 
	srl b		;6469	cb 38 	. 8 
	srl b		;646b	cb 38 	. 8 
	srl b		;646d	cb 38 	. 8 
	ld a,(ix+002h)		;646f	dd 7e 02 	. ~ . 
	add a,b			;6472	80 	. 
	ld b,a			;6473	47 	G 
	ld (0f2d2h),bc		;6474	ed 43 d2 f2 	. C . . 
	call 065cdh		;6478	cd cd 65 	. . e 
	pop bc			;647b	c1 	. 
	dec a			;647c	3d 	= 
	cp 003h		;647d	fe 03 	. . 
	jp c,06574h		;647f	da 74 65 	. t e 
	inc a			;6482	3c 	< 
	ld c,a			;6483	4f 	O 
	and 0f0h		;6484	e6 f0 	. . 
	jr nz,$+7		;6486	20 05 	  . 
	pop hl			;6488	e1 	. 
	inc hl			;6489	23 	# 
	djnz $-46		;648a	10 d0 	. . 
	ret			;648c	c9 	. 
	ld a,c			;648d	79 	y 
	bit 1,a		;648e	cb 4f 	. O 
	jr z,$+6		;6490	28 04 	( . 
	ld de,0ffdch		;6492	11 dc ff 	. . . 
	add hl,de			;6495	19 	. 
	and 001h		;6496	e6 01 	. . 
	ld c,a			;6498	4f 	O 
	ld b,000h		;6499	06 00 	. . 
	sbc hl,bc		;649b	ed 42 	. B 
	ld iy,0e320h		;649d	fd 21 20 e3 	. !   . 
	ld de,00020h		;64a1	11 20 00 	.   . 
	ld b,02ah		;64a4	06 2a 	. * 
	ld a,(iy+017h)		;64a6	fd 7e 17 	. ~ . 
	cp l			;64a9	bd 	. 
	jr nz,$+118		;64aa	20 74 	  t 
	ld a,(iy+018h)		;64ac	fd 7e 18 	. ~ . 
	cp h			;64af	bc 	. 
	jr nz,$+112		;64b0	20 6e 	  n 
	ld a,(iy+000h)		;64b2	fd 7e 00 	. ~ . 
	or a			;64b5	b7 	. 
	jr z,$+106		;64b6	28 68 	( h 
	ld a,(iy+001h)		;64b8	fd 7e 01 	. ~ . 
	and 0e0h		;64bb	e6 e0 	. . 
	cp 0e0h		;64bd	fe e0 	. . 
	jr nz,$+97		;64bf	20 5f 	  _ 
	ld a,(iy+019h)		;64c1	fd 7e 19 	. ~ . 
	or a			;64c4	b7 	. 
	jr z,$+15		;64c5	28 0d 	( . 
	dec (iy+019h)		;64c7	fd 35 19 	. 5 . 
	ld a,(iy+01fh)		;64ca	fd 7e 1f 	. ~ . 
	res 4,a		;64cd	cb a7 	. . 
	ld (iy+01fh),a		;64cf	fd 77 1f 	. w . 
	jr $+82		;64d2	18 50 	. P 
	push ix		;64d4	dd e5 	. . 
	push iy		;64d6	fd e5 	. . 
	pop ix		;64d8	dd e1 	. . 
	call 0427fh		;64da	cd 7f 42 	.  B 
	pop ix		;64dd	dd e1 	. . 
	xor a			;64df	af 	. 
	ld (iy+000h),a		;64e0	fd 77 00 	. w . 
	ld (iy+001h),a		;64e3	fd 77 01 	. w . 
	ld l,(iy+01bh)		;64e6	fd 6e 1b 	. n . 
	ld h,(iy+01ch)		;64e9	fd 66 1c 	. f . 
	ld (hl),0fdh		;64ec	36 fd 	6 . 
	ld a,(iy+01dh)		;64ee	fd 7e 1d 	. ~ . 
	cp 02ah		;64f1	fe 2a 	. * 
	jr z,$+129		;64f3	28 7f 	(  
	ld a,(iy+01fh)		;64f5	fd 7e 1f 	. ~ . 
	and 00fh		;64f8	e6 0f 	. . 
	call 05710h		;64fa	cd 10 57 	. . W 
	ld a,004h		;64fd	3e 04 	> . 
	call 0bc99h		;64ff	cd 99 bc 	. . . 
	ld a,(iy+01eh)		;6502	fd 7e 1e 	. ~ . 
	ld c,a			;6505	4f 	O 
	and 0f0h		;6506	e6 f0 	. . 
	srl a		;6508	cb 3f 	. ? 
	srl a		;650a	cb 3f 	. ? 
	srl a		;650c	cb 3f 	. ? 
	srl a		;650e	cb 3f 	. ? 
	ld b,a			;6510	47 	G 
	ld a,(0f2deh)		;6511	3a de f2 	: . . 
	add a,b			;6514	80 	. 
	ld (0f2deh),a		;6515	32 de f2 	2 . . 
	ld a,c			;6518	79 	y 
	and 00fh		;6519	e6 0f 	. . 
	call 059ach		;651b	cd ac 59 	. . Y 
	jr $+6		;651e	18 04 	. . 
	add iy,de		;6520	fd 19 	. . 
	djnz $-124		;6522	10 82 	. . 
	pop hl			;6524	e1 	. 
	ld a,(0f2d1h)		;6525	3a d1 f2 	: . . 
	cp 005h		;6528	fe 05 	. . 
	jr c,$+3		;652a	38 01 	8 . 
	xor a			;652c	af 	. 
	inc a			;652d	3c 	< 
	ld (0f2d1h),a		;652e	32 d1 f2 	2 . . 
	dec a			;6531	3d 	= 
	add a,a			;6532	87 	. 
	ld e,a			;6533	5f 	_ 
	ld d,000h		;6534	16 00 	. . 
	ld hl,06584h		;6536	21 84 65 	! . e 
	add hl,de			;6539	19 	. 
	ld a,(hl)			;653a	7e 	~ 
	inc hl			;653b	23 	# 
	ld h,(hl)			;653c	66 	f 
	ld l,a			;653d	6f 	o 
	push hl			;653e	e5 	. 
	pop iy		;653f	fd e1 	. . 
	ld hl,05da8h		;6541	21 a8 5d 	! . ] 
	ld (iy+00eh),l		;6544	fd 75 0e 	. u . 
	ld (iy+00fh),h		;6547	fd 74 0f 	. t . 
	ld (iy+00ah),001h		;654a	fd 36 0a 01 	. 6 . . 
	ld (iy+009h),001h		;654e	fd 36 09 01 	. 6 . . 
	ld (iy+00bh),001h		;6552	fd 36 0b 01 	. 6 . . 
	ld (iy+00ch),005h		;6556	fd 36 0c 05 	. 6 . . 
	ld (iy+004h),080h		;655a	fd 36 04 80 	. 6 . . 
	ld (iy+005h),006h		;655e	fd 36 05 06 	. 6 . . 
	ld a,(ix+002h)		;6562	dd 7e 02 	. ~ . 
	ld (iy+002h),a		;6565	fd 77 02 	. w . 
	ld a,(ix+003h)		;6568	dd 7e 03 	. ~ . 
	ld (iy+003h),a		;656b	fd 77 03 	. w . 
	set 7,(iy+001h)		;656e	fd cb 01 fe 	. . . . 
	jr $+3		;6572	18 01 	. . 
	pop hl			;6574	e1 	. 
	ld a,(0f2d0h)		;6575	3a d0 f2 	: . . 
	bit 7,a		;6578	cb 7f 	.  
	ret nz			;657a	c0 	. 
	res 7,(ix+001h)		;657b	dd cb 01 be 	. . . . 
	ld (ix+002h),0e0h		;657f	dd 36 02 e0 	. 6 . . 
	ret			;6583	c9 	. 
	ld h,b			;6584	60 	` 
	ret pe			;6585	e8 	. 
	add a,b			;6586	80 	. 
	ret pe			;6587	e8 	. 
	and b			;6588	a0 	. 
	ret pe			;6589	e8 	. 
	ret nz			;658a	c0 	. 
	ret pe			;658b	e8 	. 
	ret po			;658c	e0 	. 
	ret pe			;658d	e8 	. 
	ld a,(0e300h)		;658e	3a 00 e3 	: . . 
	cp 007h		;6591	fe 07 	. . 
	jp z,06309h		;6593	ca 09 63 	. . c 
	cp 001h		;6596	fe 01 	. . 
	jp nz,0635bh		;6598	c2 5b 63 	. [ c 
	ld (ix+000h),004h		;659b	dd 36 00 04 	. 6 . . 
	bit 7,(ix+001h)		;659f	dd cb 01 7e 	. . . ~ 
	ret z			;65a3	c8 	. 
	call 056a6h		;65a4	cd a6 56 	. . V 
	ld (ix+002h),a		;65a7	dd 77 02 	. w . 
	ld (ix+003h),07ch		;65aa	dd 36 03 7c 	. 6 . | 
	call 055ebh		;65ae	cd eb 55 	. . U 
	ld l,000h		;65b1	2e 00 	. . 
	ld h,a			;65b3	67 	g 
	ld (0f2bfh),hl		;65b4	22 bf f2 	" . . 
	ld a,(0f2beh)		;65b7	3a be f2 	: . . 
	ld (ix+004h),a		;65ba	dd 77 04 	. w . 
	ld a,(0f2c1h)		;65bd	3a c1 f2 	: . . 
	or a			;65c0	b7 	. 
	jr z,$+6		;65c1	28 04 	( . 
	cp 002h		;65c3	fe 02 	. . 
	jr nz,$+5		;65c5	20 03 	  . 
	dec (ix+003h)		;65c7	dd 35 03 	. 5 . 
	jp 063e9h		;65ca	c3 e9 63 	. . c 
	ld a,b			;65cd	78 	x 
	cp 098h		;65ce	fe 98 	. . 
	jr c,$+8		;65d0	38 06 	8 . 
	cp 0f8h		;65d2	fe f8 	. . 
	jr c,$+4		;65d4	38 02 	8 . 
	xor a			;65d6	af 	. 
	ret			;65d7	c9 	. 
	srl a		;65d8	cb 3f 	. ? 
	srl a		;65da	cb 3f 	. ? 
	and 0feh		;65dc	e6 fe 	. . 
	ld e,a			;65de	5f 	_ 
	ld d,000h		;65df	16 00 	. . 
	ld hl,0ee00h		;65e1	21 00 ee 	! . . 
	add hl,de			;65e4	19 	. 
	ld e,(hl)			;65e5	5e 	^ 
	inc hl			;65e6	23 	# 
	ld d,(hl)			;65e7	56 	V 
	ld hl,0ead8h		;65e8	21 d8 ea 	! . . 
	add hl,de			;65eb	19 	. 
	ld d,000h		;65ec	16 00 	. . 
	ld a,c			;65ee	79 	y 
	ld e,a			;65ef	5f 	_ 
	srl e		;65f0	cb 3b 	. ; 
	srl e		;65f2	cb 3b 	. ; 
	srl e		;65f4	cb 3b 	. ; 
	add hl,de			;65f6	19 	. 
	ld a,(0f2b1h)		;65f7	3a b1 f2 	: . . 
	and 003h		;65fa	e6 03 	. . 
	ld e,a			;65fc	5f 	_ 
	add hl,de			;65fd	19 	. 
	ld a,(hl)			;65fe	7e 	~ 
	ret			;65ff	c9 	. 
	call 04553h		;6600	cd 53 45 	. S E 
	call 04657h		;6603	cd 57 46 	. W F 
	ld a,003h		;6606	3e 03 	> . 
	call 0bc99h		;6608	cd 99 bc 	. . . 
	ld b,00fh		;660b	06 0f 	. . 
	ld hl,0ffe0h		;660d	21 e0 ff 	! . . 
	ld de,(0f2dah)		;6610	ed 5b da f2 	. [ . . 
	add hl,de			;6614	19 	. 
	ld (0f2dah),hl		;6615	22 da f2 	" . . 
	push bc			;6618	c5 	. 
	ld b,005h		;6619	06 05 	. . 
	ld hl,0672eh		;661b	21 2e 67 	! . g 
	call 066d1h		;661e	cd d1 66 	. . f 
	ld hl,0f29ah		;6621	21 9a f2 	! . . 
	ld a,(hl)			;6624	7e 	~ 
	cp 002h		;6625	fe 02 	. . 
	jr c,$-3		;6627	38 fb 	8 . 
	xor a			;6629	af 	. 
	ld (hl),a			;662a	77 	w 
	pop bc			;662b	c1 	. 
	djnz $-31		;662c	10 df 	. . 
	ld e,004h		;662e	1e 04 	. . 
	call 04594h		;6630	cd 94 45 	. . E 
	ld b,008h		;6633	06 08 	. . 
	ld hl,0672eh		;6635	21 2e 67 	! . g 
	call 066d1h		;6638	cd d1 66 	. . f 
	ld a,(0f2e9h)		;663b	3a e9 f2 	: . . 
	bit 0,a		;663e	cb 47 	. G 
	call z,056e5h		;6640	cc e5 56 	. . V 
	call 05702h		;6643	cd 02 57 	. . W 
	xor a			;6646	af 	. 
	ld hl,0f282h		;6647	21 82 f2 	! . . 
	ld (hl),a			;664a	77 	w 
	ld de,0f283h		;664b	11 83 f2 	. . . 
	ld bc,00003h		;664e	01 03 00 	. . . 
	ldir		;6651	ed b0 	. . 
	ld (0f2d0h),a		;6653	32 d0 f2 	2 . . 
	ld (0f2ddh),a		;6656	32 dd f2 	2 . . 
	ld (0f2e9h),a		;6659	32 e9 f2 	2 . . 
	ld (0f2eeh),a		;665c	32 ee f2 	2 . . 
	ld hl,0e320h		;665f	21 20 e3 	!   . 
	ld (0f2c2h),hl		;6662	22 c2 f2 	" . . 
	ld hl,00039h		;6665	21 39 00 	! 9 . 
	ld (0f2b1h),hl		;6668	22 b1 f2 	" . . 
	ld (0f2b3h),a		;666b	32 b3 f2 	2 . . 
	ld a,000h		;666e	3e 00 	> . 
	ld (0f2d8h),a		;6670	32 d8 f2 	2 . . 
	ld (0f2edh),a		;6673	32 ed f2 	2 . . 
	ld hl,00064h		;6676	21 64 00 	! d . 
	ld (0f2d4h),hl		;6679	22 d4 f2 	" . . 
	ld (0f2d6h),hl		;667c	22 d6 f2 	" . . 
	ld hl,00000h		;667f	21 00 00 	! . . 
	ld (0f2eeh),hl		;6682	22 ee f2 	" . . 
	call 066a5h		;6685	cd a5 66 	. . f 
	jr z,$-3		;6688	28 fb 	( . 
	call 0bd0eh		;668a	cd 0e bd 	. . . 
	ld hl,00000h		;668d	21 00 00 	! . . 
	ld (0f2dah),hl		;6690	22 da f2 	" . . 
	ld b,003h		;6693	06 03 	. . 
	ld hl,06728h		;6695	21 28 67 	! ( g 
	call 066d1h		;6698	cd d1 66 	. . f 
	ld hl,03800h		;669b	21 00 38 	! . 8 
	ld bc,00160h		;669e	01 60 01 	. ` . 
	xor a			;66a1	af 	. 
	jp 04672h		;66a2	c3 72 46 	. r F 
	ld a,(0f281h)		;66a5	3a 81 f2 	: . . 
	bit 7,a		;66a8	cb 7f 	.  
	jr nz,$+14		;66aa	20 0c 	  . 
	call 066c5h		;66ac	cd c5 66 	. . f 
	jr nz,$+7		;66af	20 05 	  . 
	set 7,a		;66b1	cb ff 	. . 
	ld (0f281h),a		;66b3	32 81 f2 	2 . . 
	xor a			;66b6	af 	. 
	ret			;66b7	c9 	. 
	call 066c5h		;66b8	cd c5 66 	. . f 
	ret z			;66bb	c8 	. 
	ld a,(0f281h)		;66bc	3a 81 f2 	: . . 
	res 7,a		;66bf	cb bf 	. . 
	ld (0f281h),a		;66c1	32 81 f2 	2 . . 
	ret			;66c4	c9 	. 
	halt			;66c5	76 	v 
	call 045a4h		;66c6	cd a4 45 	. . E 
	ld a,(0f280h)		;66c9	3a 80 f2 	: . . 
	and 030h		;66cc	e6 30 	. 0 
	cp 030h		;66ce	fe 30 	. 0 
	ret			;66d0	c9 	. 
	push bc			;66d1	c5 	. 
	ld e,(hl)			;66d2	5e 	^ 
	inc hl			;66d3	23 	# 
	ld d,(hl)			;66d4	56 	V 
	inc hl			;66d5	23 	# 
	push hl			;66d6	e5 	. 
	ex de,hl			;66d7	eb 	. 
	ld c,(hl)			;66d8	4e 	N 
	inc hl			;66d9	23 	# 
	ld b,000h		;66da	06 00 	. . 
	ld e,(hl)			;66dc	5e 	^ 
	inc hl			;66dd	23 	# 
	ld d,(hl)			;66de	56 	V 
	inc hl			;66df	23 	# 
	push bc			;66e0	c5 	. 
	ex de,hl			;66e1	eb 	. 
	ld bc,(0f2dah)		;66e2	ed 4b da f2 	. K . . 
	ld a,b			;66e6	78 	x 
	or c			;66e7	b1 	. 
	jr nz,$+5		;66e8	20 03 	  . 
	scf			;66ea	37 	7 
	jr $+11		;66eb	18 09 	. . 
	add hl,bc			;66ed	09 	. 
	push hl			;66ee	e5 	. 
	ld bc,03aa0h		;66ef	01 a0 3a 	. . : 
	or a			;66f2	b7 	. 
	sbc hl,bc		;66f3	ed 42 	. B 
	pop hl			;66f5	e1 	. 
	ex de,hl			;66f6	eb 	. 
	pop bc			;66f7	c1 	. 
	jr nc,$+5		;66f8	30 03 	0 . 
	call 0467ah		;66fa	cd 7a 46 	. z F 
	pop hl			;66fd	e1 	. 
	pop bc			;66fe	c1 	. 
	djnz $-46		;66ff	10 d0 	. . 
	ret			;6701	c9 	. 
	ld a,002h		;6702	3e 02 	> . 
	call 00141h		;6704	cd 41 01 	. A . 
	cp 0bfh		;6707	fe bf 	. . 
	ret nz			;6709	c0 	. 
	ld a,004h		;670a	3e 04 	> . 
	call 00141h		;670c	cd 41 01 	. A . 
	cp 0efh		;670f	fe ef 	. . 
	ret nz			;6711	c0 	. 
	ld a,005h		;6712	3e 05 	> . 
	call 00141h		;6714	cd 41 01 	. A . 
	cp 0efh		;6717	fe ef 	. . 
	ret nz			;6719	c0 	. 
	ld a,007h		;671a	3e 07 	> . 
	call 00141h		;671c	cd 41 01 	. A . 
	cp 0bfh		;671f	fe bf 	. . 
	ret nz			;6721	c0 	. 
	ld a,001h		;6722	3e 01 	> . 
	ld (0f2e9h),a		;6724	32 e9 f2 	2 . . 
	ret			;6727	c9 	. 
	ld a,067h		;6728	3e 67 	> g 
	ld e,a			;672a	5f 	_ 
	ld h,a			;672b	67 	g 
	add a,c			;672c	81 	. 
	ld h,a			;672d	67 	g 
	and d			;672e	a2 	. 
	ld h,a			;672f	67 	g 
	cp d			;6730	ba 	. 
	ld h,a			;6731	67 	g 
	jp nc,0ea67h		;6732	d2 67 ea 	. g . 
	ld h,a			;6735	67 	g 
	ld (bc),a			;6736	02 	. 
	ld l,b			;6737	68 	h 
	ld a,(de)			;6738	1a 	. 
	ld l,b			;6739	68 	h 
	ld (hl),068h		;673a	36 68 	6 h 
	ld b,c			;673c	41 	A 
	ld l,b			;673d	68 	h 
	ld e,0a1h		;673e	1e a1 	. . 
	ld a,(04e45h)		;6740	3a 45 4e 	: E N 
	ld b,l			;6743	45 	E 
	ld d,d			;6744	52 	R 
	ld b,a			;6745	47 	G 
	ld e,c			;6746	59 	Y 
	dec sp			;6747	3b 	; 
	inc a			;6748	3c 	< 
	inc a			;6749	3c 	< 
	inc a			;674a	3c 	< 
	inc a			;674b	3c 	< 
	ld a,03eh		;674c	3e 3e 	> > 
	ld a,03eh		;674e	3e 3e 	> > 
	ld a,03dh		;6750	3e 3d 	> = 
	dec a			;6752	3d 	= 
	dec a			;6753	3d 	= 
	dec a			;6754	3d 	= 
	dec a			;6755	3d 	= 
	dec a			;6756	3d 	= 
	dec a			;6757	3d 	= 
	dec a			;6758	3d 	= 
	dec a			;6759	3d 	= 
	ccf			;675a	3f 	? 
	ld sp,03030h		;675b	31 30 30 	1 0 0 
	ld a,(0c01fh)		;675e	3a 1f c0 	: . . 
	ld a,(00000h)		;6761	3a 00 00 	: . . 
	nop			;6764	00 	. 
	nop			;6765	00 	. 
	nop			;6766	00 	. 
	nop			;6767	00 	. 
	nop			;6768	00 	. 
	nop			;6769	00 	. 
	nop			;676a	00 	. 
	nop			;676b	00 	. 
	ld d,e			;676c	53 	S 
	ld c,b			;676d	48 	H 
	ld c,c			;676e	49 	I 
	ld b,l			;676f	45 	E 
	ld c,h			;6770	4c 	L 
	ld b,h			;6771	44 	D 
	nop			;6772	00 	. 
	ld c,a			;6773	4f 	O 
	ld b,(hl)			;6774	46 	F 
	ld b,(hl)			;6775	46 	F 
	nop			;6776	00 	. 
	ld c,h			;6777	4c 	L 
	ld b,l			;6778	45 	E 
	ld d,(hl)			;6779	56 	V 
	ld b,l			;677a	45 	E 
	ld c,h			;677b	4c 	L 
	nop			;677c	00 	. 
	nop			;677d	00 	. 
	jr nc,$+51		;677e	30 31 	0 1 
	nop			;6780	00 	. 
	ld e,0e1h		;6781	1e e1 	. . 
	ld a,(04353h)		;6783	3a 53 43 	: S C 
	ld c,a			;6786	4f 	O 
	ld d,d			;6787	52 	R 
	ld b,l			;6788	45 	E 
	nop			;6789	00 	. 
	jr nc,$+50		;678a	30 30 	0 0 
	jr nc,$+50		;678c	30 30 	0 0 
	jr nc,$+50		;678e	30 30 	0 0 
	jr nc,$+50		;6790	30 30 	0 0 
	jr nc,$+2		;6792	30 00 	0 . 
	nop			;6794	00 	. 
	nop			;6795	00 	. 
	nop			;6796	00 	. 
	nop			;6797	00 	. 
	ld b,l			;6798	45 	E 
	ld c,(hl)			;6799	4e 	N 
	ld c,l			;679a	4d 	M 
	ld b,c			;679b	41 	A 
	ld e,b			;679c	58 	X 
	nop			;679d	00 	. 
	ld sp,03030h		;679e	31 30 30 	1 0 0 
	ld a,(0a615h)		;67a1	3a 15 a6 	: . . 
	ld a,(06160h)		;67a4	3a 60 61 	: ` a 
	ld h,d			;67a7	62 	b 
	ld h,b			;67a8	60 	` 
	ld h,(hl)			;67a9	66 	f 
	ld h,d			;67aa	62 	b 
	ld h,b			;67ab	60 	` 
	ld h,c			;67ac	61 	a 
	ld h,d			;67ad	62 	b 
	ld h,e			;67ae	63 	c 
	ld h,h			;67af	64 	d 
	ld h,l			;67b0	65 	e 
	ld h,b			;67b1	60 	` 
	ld h,a			;67b2	67 	g 
	ld l,b			;67b3	68 	h 
	ld h,b			;67b4	60 	` 
	ld h,c			;67b5	61 	a 
	ld h,d			;67b6	62 	b 
	ld h,b			;67b7	60 	` 
	ld h,c			;67b8	61 	a 
	ld l,c			;67b9	69 	i 
	dec d			;67ba	15 	. 
	add a,03ah		;67bb	c6 3a 	. : 
	ld l,d			;67bd	6a 	j 
	jr nz,$+34		;67be	20 20 	    
	ld l,h			;67c0	6c 	l 
	ld l,e			;67c1	6b 	k 
	ld l,l			;67c2	6d 	m 
	ld l,d			;67c3	6a 	j 
	ld l,(hl)			;67c4	6e 	n 
	ld l,a			;67c5	6f 	o 
	ld (hl),b			;67c6	70 	p 
	ld (hl),c			;67c7	71 	q 
	ld (hl),d			;67c8	72 	r 
	ld l,h			;67c9	6c 	l 
	ld (hl),e			;67ca	73 	s 
	ld l,l			;67cb	6d 	m 
	ld l,d			;67cc	6a 	j 
	ld l,(hl)			;67cd	6e 	n 
	ld l,a			;67ce	6f 	o 
	ld l,d			;67cf	6a 	j 
	ld (hl),h			;67d0	74 	t 
	ld (hl),l			;67d1	75 	u 
	dec d			;67d2	15 	. 
	and 03ah		;67d3	e6 3a 	. : 
	ld (hl),a			;67d5	77 	w 
	jr nz,$+34		;67d6	20 20 	    
	ld (hl),a			;67d8	77 	w 
	ld a,b			;67d9	78 	x 
	ld a,c			;67da	79 	y 
	ld (hl),a			;67db	77 	w 
	ld a,d			;67dc	7a 	z 
	ld a,e			;67dd	7b 	{ 
	ld a,l			;67de	7d 	} 
	ld a,(hl)			;67df	7e 	~ 
	ld a,a			;67e0	7f 	 
	ld (hl),a			;67e1	77 	w 
	ld a,h			;67e2	7c 	| 
	ld a,c			;67e3	79 	y 
	ld (hl),a			;67e4	77 	w 
	ld a,d			;67e5	7a 	z 
	ld a,e			;67e6	7b 	{ 
	ld (hl),a			;67e7	77 	w 
	add a,b			;67e8	80 	. 
	add a,c			;67e9	81 	. 
	dec d			;67ea	15 	. 
	ld b,03bh		;67eb	06 3b 	. ; 
	add a,d			;67ed	82 	. 
	add a,e			;67ee	83 	. 
	add a,h			;67ef	84 	. 
	add a,l			;67f0	85 	. 
	add a,(hl)			;67f1	86 	. 
	add a,a			;67f2	87 	. 
	add a,l			;67f3	85 	. 
	add a,e			;67f4	83 	. 
	add a,h			;67f5	84 	. 
	adc a,b			;67f6	88 	. 
	adc a,c			;67f7	89 	. 
	adc a,d			;67f8	8a 	. 
	add a,l			;67f9	85 	. 
	adc a,e			;67fa	8b 	. 
	adc a,h			;67fb	8c 	. 
	add a,l			;67fc	85 	. 
	add a,e			;67fd	83 	. 
	add a,h			;67fe	84 	. 
	add a,l			;67ff	85 	. 
	adc a,l			;6800	8d 	. 
	adc a,(hl)			;6801	8e 	. 
	dec d			;6802	15 	. 
	ld h,03bh		;6803	26 3b 	& ; 
	nop			;6805	00 	. 
	nop			;6806	00 	. 
	nop			;6807	00 	. 
	nop			;6808	00 	. 
	nop			;6809	00 	. 
	nop			;680a	00 	. 
	nop			;680b	00 	. 
	nop			;680c	00 	. 
	nop			;680d	00 	. 
	nop			;680e	00 	. 
	nop			;680f	00 	. 
	nop			;6810	00 	. 
	nop			;6811	00 	. 
	nop			;6812	00 	. 
	nop			;6813	00 	. 
	nop			;6814	00 	. 
	nop			;6815	00 	. 
	nop			;6816	00 	. 
	nop			;6817	00 	. 
	nop			;6818	00 	. 
	nop			;6819	00 	. 
	add hl,de			;681a	19 	. 
	add a,h			;681b	84 	. 
	dec sp			;681c	3b 	; 
	ld b,e			;681d	43 	C 
	ld c,a			;681e	4f 	O 
	ld d,b			;681f	50 	P 
	ld e,c			;6820	59 	Y 
	ld d,d			;6821	52 	R 
	ld c,c			;6822	49 	I 
	ld b,a			;6823	47 	G 
	ld c,b			;6824	48 	H 
	ld d,h			;6825	54 	T 
	nop			;6826	00 	. 
	ld b,b			;6827	40 	@ 
	ld sp,03839h		;6828	31 39 38 	1 9 8 
	ld (hl),000h		;682b	36 00 	6 . 
	ld b,a			;682d	47 	G 
	ld b,c			;682e	41 	A 
	ld c,l			;682f	4d 	M 
	ld b,l			;6830	45 	E 
	nop			;6831	00 	. 
	ld b,c			;6832	41 	A 
	ld d,d			;6833	52 	R 
	ld d,h			;6834	54 	T 
	ld d,e			;6835	53 	S 
	ex af,af'			;6836	08 	. 
	daa			;6837	27 	' 
	inc a			;6838	3c 	< 
	ld c,b			;6839	48 	H 
	ld c,c			;683a	49 	I 
	ld e,a			;683b	5f 	_ 
	ld d,e			;683c	53 	S 
	ld b,e			;683d	43 	C 
	ld c,a			;683e	4f 	O 
	ld d,d			;683f	52 	R 
	ld b,l			;6840	45 	E 
	ld de,03bceh		;6841	11 ce 3b 	. . ; 
	ld c,b			;6844	48 	H 
	ld d,c			;6845	51 	Q 
	ld b,a			;6846	47 	G 
	ld c,a			;6847	4f 	O 
	ld b,h			;6848	44 	D 
	ld b,c			;6849	41 	A 
	ld c,c			;684a	49 	I 
	nop			;684b	00 	. 
	nop			;684c	00 	. 
	ld d,e			;684d	53 	S 
	ld d,c			;684e	51 	Q 
	ld d,l			;684f	55 	U 
	ld b,l			;6850	45 	E 
	ld d,e			;6851	53 	S 
	ld b,c			;6852	41 	A 
	ld c,e			;6853	4b 	K 
	ld b,c			;6854	41 	A 
	ld (bc),a			;6855	02 	. 
	add a,d			;6856	82 	. 
	ld c,0ffh		;6857	0e ff 	. . 
	inc bc			;6859	03 	. 
	halt			;685a	76 	v 
	inc bc			;685b	03 	. 
	ld bc,021f3h		;685c	01 f3 21 	. . ! 
	ld a,a			;685f	7f 	 
	ld l,l			;6860	6d 	m 
	ld de,0ce58h		;6861	11 58 ce 	. X . 
	call 06d68h		;6864	cd 68 6d 	. h m 
	ld hl,0ce58h		;6867	21 58 ce 	! X . 
	ld de,0c000h		;686a	11 00 c0 	. . . 
	ld a,005h		;686d	3e 05 	> . 
	ld bc,00090h		;686f	01 90 00 	. . . 
	ldir		;6872	ed b0 	. . 
	ld bc,00048h		;6874	01 48 00 	. H . 
	ex de,hl			;6877	eb 	. 
	add hl,bc			;6878	09 	. 
	ex de,hl			;6879	eb 	. 
	dec a			;687a	3d 	= 
	jr nz,$-12		;687b	20 f2 	  . 
	ld a,009h		;687d	3e 09 	> . 
	ld bc,000c0h		;687f	01 c0 00 	. . . 
	ldir		;6882	ed b0 	. . 
	ld bc,00060h		;6884	01 60 00 	. ` . 
	ex de,hl			;6887	eb 	. 
	add hl,bc			;6888	09 	. 
	ex de,hl			;6889	eb 	. 
	dec a			;688a	3d 	= 
	jr nz,$-12		;688b	20 f2 	  . 
	ld ix,0c000h		;688d	dd 21 00 c0 	. ! . . 
	ld iy,0c090h		;6891	fd 21 90 c0 	. ! . . 
	ld b,005h		;6895	06 05 	. . 
	push bc			;6897	c5 	. 
	ld c,003h		;6898	0e 03 	. . 
	call 068d3h		;689a	cd d3 68 	. . h 
	pop bc			;689d	c1 	. 
	ld de,00090h		;689e	11 90 00 	. . . 
	add ix,de		;68a1	dd 19 	. . 
	add iy,de		;68a3	fd 19 	. . 
	djnz $-14		;68a5	10 f0 	. . 
	ld de,00030h		;68a7	11 30 00 	. 0 . 
	add iy,de		;68aa	fd 19 	. . 
	ld b,009h		;68ac	06 09 	. . 
	push bc			;68ae	c5 	. 
	ld c,004h		;68af	0e 04 	. . 
	call 068d3h		;68b1	cd d3 68 	. . h 
	pop bc			;68b4	c1 	. 
	ld de,000c0h		;68b5	11 c0 00 	. . . 
	add ix,de		;68b8	dd 19 	. . 
	add iy,de		;68ba	fd 19 	. . 
	djnz $-14		;68bc	10 f0 	. . 
	ld hl,073e4h		;68be	21 e4 73 	! . s 
	ld de,0ea00h		;68c1	11 00 ea 	. . . 
	call 06d68h		;68c4	cd 68 6d 	. h m 
	ld hl,0ea00h		;68c7	21 00 ea 	! . . 
	ld de,0c240h		;68ca	11 40 c2 	. @ . 
	ld bc,00048h		;68cd	01 48 00 	. H . 
	ldir		;68d0	ed b0 	. . 
	ret			;68d2	c9 	. 
	ld b,008h		;68d3	06 08 	. . 
	push bc			;68d5	c5 	. 
	ld d,(ix+000h)		;68d6	dd 56 00 	. V . 
	ld e,(ix+008h)		;68d9	dd 5e 08 	. ^ . 
	ld a,(ix+010h)		;68dc	dd 7e 10 	. ~ . 
	ld b,018h		;68df	06 18 	. . 
	srl d		;68e1	cb 3a 	. : 
	rr e		;68e3	cb 1b 	. . 
	rra			;68e5	1f 	. 
	rl (iy+010h)		;68e6	fd cb 10 16 	. . . . 
	rl (iy+008h)		;68ea	fd cb 08 16 	. . . . 
	rl (iy+000h)		;68ee	fd cb 00 16 	. . . . 
	djnz $-17		;68f2	10 ed 	. . 
	pop bc			;68f4	c1 	. 
	inc ix		;68f5	dd 23 	. # 
	inc iy		;68f7	fd 23 	. # 
	djnz $-36		;68f9	10 da 	. . 
	ld de,00010h		;68fb	11 10 00 	. . . 
	add ix,de		;68fe	dd 19 	. . 
	add iy,de		;6900	fd 19 	. . 
	dec c			;6902	0d 	. 
	jr nz,$-48		;6903	20 ce 	  . 
	ret			;6905	c9 	. 
	ld a,(0f2ach)		;6906	3a ac f2 	: . . 
	set 2,a		;6909	cb d7 	. . 
	ld (0f2ach),a		;690b	32 ac f2 	2 . . 
	call 0bc79h		;690e	cd 79 bc 	. y . 
	call 0013eh		;6911	cd 3e 01 	. > . 
	ld hl,06a16h		;6914	21 16 6a 	! . j 
	ld c,000h		;6917	0e 00 	. . 
	ld b,008h		;6919	06 08 	. . 
	push bc			;691b	c5 	. 
	ld b,(hl)			;691c	46 	F 
	call 00047h		;691d	cd 47 00 	. G . 
	pop bc			;6920	c1 	. 
	inc c			;6921	0c 	. 
	inc hl			;6922	23 	# 
	djnz $-8		;6923	10 f6 	. . 
	ld hl,07692h		;6925	21 92 76 	! . v 
	ld de,0ce58h		;6928	11 58 ce 	. X . 
	call 06d68h		;692b	cd 68 6d 	. h m 
	ld hl,0ce58h		;692e	21 58 ce 	! X . 
	ld bc,004f8h		;6931	01 f8 04 	. . . 
	ld de,00000h		;6934	11 00 00 	. . . 
	push hl			;6937	e5 	. 
	push bc			;6938	c5 	. 
	call 0467ah		;6939	cd 7a 46 	. z F 
	pop bc			;693c	c1 	. 
	pop hl			;693d	e1 	. 
	ld de,00800h		;693e	11 00 08 	. . . 
	push hl			;6941	e5 	. 
	push bc			;6942	c5 	. 
	call 0467ah		;6943	cd 7a 46 	. z F 
	pop bc			;6946	c1 	. 
	pop hl			;6947	e1 	. 
	ld de,01000h		;6948	11 00 10 	. . . 
	call 0467ah		;694b	cd 7a 46 	. z F 
	ld hl,078b8h		;694e	21 b8 78 	! . x 
	ld de,0ce58h		;6951	11 58 ce 	. X . 
	call 06d68h		;6954	cd 68 6d 	. h m 
	ld hl,0ce58h		;6957	21 58 ce 	! X . 
	ld de,02000h		;695a	11 00 20 	. .   
	ld bc,004f8h		;695d	01 f8 04 	. . . 
	push hl			;6960	e5 	. 
	push bc			;6961	c5 	. 
	call 0467ah		;6962	cd 7a 46 	. z F 
	pop bc			;6965	c1 	. 
	pop hl			;6966	e1 	. 
	ld de,02800h		;6967	11 00 28 	. . ( 
	push hl			;696a	e5 	. 
	push bc			;696b	c5 	. 
	call 0467ah		;696c	cd 7a 46 	. z F 
	pop bc			;696f	c1 	. 
	pop hl			;6970	e1 	. 
	ld de,03000h		;6971	11 00 30 	. . 0 
	call 0467ah		;6974	cd 7a 46 	. z F 
	ld hl,074e8h		;6977	21 e8 74 	! . t 
	ld de,0ce58h		;697a	11 58 ce 	. X . 
	call 06d64h		;697d	cd 64 6d 	. d m 
	ld hl,0ce58h		;6980	21 58 ce 	! X . 
	exx			;6983	d9 	. 
	ld hl,06a1eh		;6984	21 1e 6a 	! . j 
	ld a,(hl)			;6987	7e 	~ 
	inc a			;6988	3c 	< 
	or a			;6989	b7 	. 
	jr z,$+37		;698a	28 23 	( # 
	dec a			;698c	3d 	= 
	ex af,af'			;698d	08 	. 
	inc hl			;698e	23 	# 
	ld a,(hl)			;698f	7e 	~ 
	inc hl			;6990	23 	# 
	push hl			;6991	e5 	. 
	or a			;6992	b7 	. 
	jr z,$+5		;6993	28 03 	( . 
	call 069c4h		;6995	cd c4 69 	. . i 
	ex af,af'			;6998	08 	. 
	call 06a0ah		;6999	cd 0a 6a 	. . j 
	push de			;699c	d5 	. 
	exx			;699d	d9 	. 
	pop de			;699e	d1 	. 
	ld bc,00020h		;699f	01 20 00 	.   . 
	push hl			;69a2	e5 	. 
	call 0467ah		;69a3	cd 7a 46 	. z F 
	pop hl			;69a6	e1 	. 
	ld de,00020h		;69a7	11 20 00 	.   . 
	add hl,de			;69aa	19 	. 
	exx			;69ab	d9 	. 
	pop hl			;69ac	e1 	. 
	jr $-38		;69ad	18 d8 	. . 
	ld hl,0d078h		;69af	21 78 d0 	! x . 
	ld de,01c00h		;69b2	11 00 1c 	. . . 
	ld bc,00100h		;69b5	01 00 01 	. . . 
	call 0467ah		;69b8	cd 7a 46 	. z F 
	ld a,(0f2ach)		;69bb	3a ac f2 	: . . 
	res 2,a		;69be	cb 97 	. . 
	ld (0f2ach),a		;69c0	32 ac f2 	2 . . 
	ret			;69c3	c9 	. 
	exx			;69c4	d9 	. 
	push hl			;69c5	e5 	. 
	exx			;69c6	d9 	. 
	pop de			;69c7	d1 	. 
	push af			;69c8	f5 	. 
	ld hl,0e800h		;69c9	21 00 e8 	! . . 
	ld b,020h		;69cc	06 20 	.   
	ld a,(de)			;69ce	1a 	. 
	rla			;69cf	17 	. 
	rr c		;69d0	cb 19 	. . 
	rla			;69d2	17 	. 
	rr c		;69d3	cb 19 	. . 
	rla			;69d5	17 	. 
	rr c		;69d6	cb 19 	. . 
	rla			;69d8	17 	. 
	rr c		;69d9	cb 19 	. . 
	rla			;69db	17 	. 
	rr c		;69dc	cb 19 	. . 
	rla			;69de	17 	. 
	rr c		;69df	cb 19 	. . 
	rla			;69e1	17 	. 
	rr c		;69e2	cb 19 	. . 
	rla			;69e4	17 	. 
	rr c		;69e5	cb 19 	. . 
	ld (hl),c			;69e7	71 	q 
	inc hl			;69e8	23 	# 
	inc de			;69e9	13 	. 
	djnz $-28		;69ea	10 e2 	. . 
	pop af			;69ec	f1 	. 
	call 06a0ah		;69ed	cd 0a 6a 	. . j 
	ld hl,0e810h		;69f0	21 10 e8 	! . . 
	push de			;69f3	d5 	. 
	ld bc,00010h		;69f4	01 10 00 	. . . 
	call 0467ah		;69f7	cd 7a 46 	. z F 
	pop de			;69fa	d1 	. 
	ld hl,00010h		;69fb	21 10 00 	! . . 
	add hl,de			;69fe	19 	. 
	ex de,hl			;69ff	eb 	. 
	ld hl,0e800h		;6a00	21 00 e8 	! . . 
	ld bc,00010h		;6a03	01 10 00 	. . . 
	call 0467ah		;6a06	cd 7a 46 	. z F 
	ret			;6a09	c9 	. 
	ld h,000h		;6a0a	26 00 	& . 
	ld l,a			;6a0c	6f 	o 
	add hl,hl			;6a0d	29 	) 
	add hl,hl			;6a0e	29 	) 
	add hl,hl			;6a0f	29 	) 
	ld de,01800h		;6a10	11 00 18 	. . . 
	add hl,de			;6a13	19 	. 
	ex de,hl			;6a14	eb 	. 
	ret			;6a15	c9 	. 
	ld (bc),a			;6a16	02 	. 
	add a,d			;6a17	82 	. 
	ld c,0ffh		;6a18	0e ff 	. . 
	inc bc			;6a1a	03 	. 
	halt			;6a1b	76 	v 
	inc bc			;6a1c	03 	. 
	ld bc,00000h		;6a1d	01 00 00 	. . . 
	inc b			;6a20	04 	. 
	ld a,h			;6a21	7c 	| 
	ex af,af'			;6a22	08 	. 
	ld a,b			;6a23	78 	x 
	inc c			;6a24	0c 	. 
	ld (hl),h			;6a25	74 	t 
	djnz $+114		;6a26	10 70 	. p 
	inc d			;6a28	14 	. 
	ld l,h			;6a29	6c 	l 
	jr $+106		;6a2a	18 68 	. h 
	inc e			;6a2c	1c 	. 
	ld h,h			;6a2d	64 	d 
	jr nz,$+98		;6a2e	20 60 	  ` 
	inc h			;6a30	24 	$ 
	ld e,h			;6a31	5c 	\ 
	jr z,$+90		;6a32	28 58 	( X 
	inc l			;6a34	2c 	, 
	ld d,h			;6a35	54 	T 
	jr nc,$+82		;6a36	30 50 	0 P 
	inc (hl)			;6a38	34 	4 
	ld c,h			;6a39	4c 	L 
	jr c,$+74		;6a3a	38 48 	8 H 
	inc a			;6a3c	3c 	< 
	ld b,h			;6a3d	44 	D 
	ld b,b			;6a3e	40 	@ 
	nop			;6a3f	00 	. 
	rst 38h			;6a40	ff 	. 
	ld hl,0e800h		;6a41	21 00 e8 	! . . 
	ld a,(de)			;6a44	1a 	. 
	ld c,a			;6a45	4f 	O 
	and 0f0h		;6a46	e6 f0 	. . 
	cp 050h		;6a48	fe 50 	. P 
	jr z,$+7		;6a4a	28 05 	( . 
	ld (hl),c			;6a4c	71 	q 
	inc hl			;6a4d	23 	# 
	inc de			;6a4e	13 	. 
	jr $-11		;6a4f	18 f3 	. . 
	inc de			;6a51	13 	. 
	ld a,(de)			;6a52	1a 	. 
	inc de			;6a53	13 	. 
	or a			;6a54	b7 	. 
	jr z,$+25		;6a55	28 17 	( . 
	ld b,a			;6a57	47 	G 
	ld a,c			;6a58	79 	y 
	exx			;6a59	d9 	. 
	ld c,a			;6a5a	4f 	O 
	ld b,004h		;6a5b	06 04 	. . 
	ld a,c			;6a5d	79 	y 
	rra			;6a5e	1f 	. 
	rr e		;6a5f	cb 1b 	. . 
	rra			;6a61	1f 	. 
	rr e		;6a62	cb 1b 	. . 
	djnz $-7		;6a64	10 f7 	. . 
	ld a,e			;6a66	7b 	{ 
	exx			;6a67	d9 	. 
	ld (hl),a			;6a68	77 	w 
	inc hl			;6a69	23 	# 
	djnz $-2		;6a6a	10 fc 	. . 
	jr $-40		;6a6c	18 d6 	. . 
	ld hl,0ce58h		;6a6e	21 58 ce 	! X . 
	ld de,0ce59h		;6a71	11 59 ce 	. Y . 
	ld (hl),000h		;6a74	36 00 	6 . 
	ld bc,0149eh		;6a76	01 9e 14 	. . . 
	ldir		;6a79	ed b0 	. . 
	ld de,(0f2e2h)		;6a7b	ed 5b e2 f2 	. [ . . 
	xor a			;6a7f	af 	. 
	ld (0f2e4h),a		;6a80	32 e4 f2 	2 . . 
	exx			;6a83	d9 	. 
	ld hl,0ce58h		;6a84	21 58 ce 	! X . 
	ld b,078h		;6a87	06 78 	. x 
	push bc			;6a89	c5 	. 
	ld b,004h		;6a8a	06 04 	. . 
	push bc			;6a8c	c5 	. 
	ld a,b			;6a8d	78 	x 
	ld (0f2e1h),a		;6a8e	32 e1 f2 	2 . . 
	exx			;6a91	d9 	. 
	call 06b3bh		;6a92	cd 3b 6b 	. ; k 
	exx			;6a95	d9 	. 
	push hl			;6a96	e5 	. 
	ld de,0edd0h		;6a97	11 d0 ed 	. . . 
	ld b,02ch		;6a9a	06 2c 	. , 
	push bc			;6a9c	c5 	. 
	ld a,(de)			;6a9d	1a 	. 
	ld b,(hl)			;6a9e	46 	F 
	or b			;6a9f	b0 	. 
	ld (hl),a			;6aa0	77 	w 
	inc de			;6aa1	13 	. 
	ld bc,00078h		;6aa2	01 78 00 	. x . 
	add hl,bc			;6aa5	09 	. 
	pop bc			;6aa6	c1 	. 
	djnz $-11		;6aa7	10 f3 	. . 
	pop hl			;6aa9	e1 	. 
	pop bc			;6aaa	c1 	. 
	djnz $-31		;6aab	10 df 	. . 
	inc hl			;6aad	23 	# 
	pop bc			;6aae	c1 	. 
	djnz $-38		;6aaf	10 d8 	. . 
	ld hl,00000h		;6ab1	21 00 00 	! . . 
	ld de,(0f2e6h)		;6ab4	ed 5b e6 f2 	. [ . . 
	ld a,(de)			;6ab8	1a 	. 
	inc de			;6ab9	13 	. 
	ex af,af'			;6aba	08 	. 
	ld hl,0ef70h		;6abb	21 70 ef 	! p . 
	ld b,004h		;6abe	06 04 	. . 
	push bc			;6ac0	c5 	. 
	push hl			;6ac1	e5 	. 
	ex af,af'			;6ac2	08 	. 
	ld b,a			;6ac3	47 	G 
	ex af,af'			;6ac4	08 	. 
	push bc			;6ac5	c5 	. 
	ld a,(de)			;6ac6	1a 	. 
	inc de			;6ac7	13 	. 
	inc a			;6ac8	3c 	< 
	jr z,$+18		;6ac9	28 10 	( . 
	dec a			;6acb	3d 	= 
	ld (hl),a			;6acc	77 	w 
	ld bc,00004h		;6acd	01 04 00 	. . . 
	add hl,bc			;6ad0	09 	. 
	pop bc			;6ad1	c1 	. 
	djnz $-13		;6ad2	10 f1 	. . 
	pop hl			;6ad4	e1 	. 
	pop bc			;6ad5	c1 	. 
	inc hl			;6ad6	23 	# 
	djnz $-23		;6ad7	10 e7 	. . 
	jr $+32		;6ad9	18 1e 	. . 
	ld a,(de)			;6adb	1a 	. 
	ld (0f2a9h),a		;6adc	32 a9 f2 	2 . . 
	inc de			;6adf	13 	. 
	ex de,hl			;6ae0	eb 	. 
	pop bc			;6ae1	c1 	. 
	ld a,b			;6ae2	78 	x 
	sub (hl)			;6ae3	96 	. 
	inc a			;6ae4	3c 	< 
	ld b,a			;6ae5	47 	G 
	push bc			;6ae6	c5 	. 
	ex de,hl			;6ae7	eb 	. 
	ld a,(de)			;6ae8	1a 	. 
	ld b,a			;6ae9	47 	G 
	inc de			;6aea	13 	. 
	ld a,(0f2a9h)		;6aeb	3a a9 f2 	: . . 
	push bc			;6aee	c5 	. 
	ld (hl),a			;6aef	77 	w 
	ld bc,00004h		;6af0	01 04 00 	. . . 
	add hl,bc			;6af3	09 	. 
	pop bc			;6af4	c1 	. 
	djnz $-7		;6af5	10 f7 	. . 
	jr $-38		;6af7	18 d8 	. . 
	ld ix,0ef70h		;6af9	dd 21 70 ef 	. ! p . 
	ex af,af'			;6afd	08 	. 
	ld b,a			;6afe	47 	G 
	ld a,(ix+003h)		;6aff	dd 7e 03 	. ~ . 
	and 00fh		;6b02	e6 0f 	. . 
	cp 00fh		;6b04	fe 0f 	. . 
	jr nz,$+10		;6b06	20 08 	  . 
	ld (ix+003h),063h		;6b08	dd 36 03 63 	. 6 . c 
	set 6,(ix+000h)		;6b0c	dd cb 00 f6 	. . . . 
	ld l,(ix+001h)		;6b10	dd 6e 01 	. n . 
	ld h,(ix+002h)		;6b13	dd 66 02 	. f . 
	srl h		;6b16	cb 3c 	. < 
	rr l		;6b18	cb 1d 	. . 
	ld (ix+001h),l		;6b1a	dd 75 01 	. u . 
	ld (ix+002h),h		;6b1d	dd 74 02 	. t . 
	ld hl,(0f2eeh)		;6b20	2a ee f2 	* . . 
	ld a,l			;6b23	7d 	} 
	or h			;6b24	b4 	. 
	jr z,$+10		;6b25	28 08 	( . 
	ld a,(ix+003h)		;6b27	dd 7e 03 	. ~ . 
	or 00fh		;6b2a	f6 0f 	. . 
	ld (ix+003h),a		;6b2c	dd 77 03 	. w . 
	ld de,00004h		;6b2f	11 04 00 	. . . 
	add ix,de		;6b32	dd 19 	. . 
	djnz $-53		;6b34	10 c9 	. . 
	ld (ix+000h),0ffh		;6b36	dd 36 00 ff 	. 6 . . 
	ret			;6b3a	c9 	. 
	ld a,(0f2e4h)		;6b3b	3a e4 f2 	: . . 
	or a			;6b3e	b7 	. 
	jr z,$+12		;6b3f	28 0a 	( . 
	dec a			;6b41	3d 	= 
	ld (0f2e4h),a		;6b42	32 e4 f2 	2 . . 
	ld a,(0f2e5h)		;6b45	3a e5 f2 	: . . 
	dec de			;6b48	1b 	. 
	jr $+20		;6b49	18 12 	. . 
	ld a,(de)			;6b4b	1a 	. 
	inc a			;6b4c	3c 	< 
	jr nz,$+16		;6b4d	20 0e 	  . 
	inc de			;6b4f	13 	. 
	ld a,(de)			;6b50	1a 	. 
	inc a			;6b51	3c 	< 
	ld (0f2e5h),a		;6b52	32 e5 f2 	2 . . 
	ld b,a			;6b55	47 	G 
	inc de			;6b56	13 	. 
	ld a,(de)			;6b57	1a 	. 
	dec a			;6b58	3d 	= 
	ld (0f2e4h),a		;6b59	32 e4 f2 	2 . . 
	ld a,b			;6b5c	78 	x 
	push de			;6b5d	d5 	. 
	ld b,a			;6b5e	47 	G 
	ld de,0000bh		;6b5f	11 0b 00 	. . . 
	ld hl,0e7f5h		;6b62	21 f5 e7 	! . . 
	add hl,de			;6b65	19 	. 
	djnz $-1		;6b66	10 fd 	. . 
	ld de,0edd0h		;6b68	11 d0 ed 	. . . 
	ld b,00bh		;6b6b	06 0b 	. . 
	push bc			;6b6d	c5 	. 
	ld a,(hl)			;6b6e	7e 	~ 
	ld b,006h		;6b6f	06 06 	. . 
	srl a		;6b71	cb 3f 	. ? 
	djnz $-2		;6b73	10 fc 	. . 
	ld (de),a			;6b75	12 	. 
	inc de			;6b76	13 	. 
	ld a,(hl)			;6b77	7e 	~ 
	and 030h		;6b78	e6 30 	. 0 
	ld b,004h		;6b7a	06 04 	. . 
	srl a		;6b7c	cb 3f 	. ? 
	djnz $-2		;6b7e	10 fc 	. . 
	ld (de),a			;6b80	12 	. 
	inc de			;6b81	13 	. 
	ld a,(hl)			;6b82	7e 	~ 
	and 00ch		;6b83	e6 0c 	. . 
	srl a		;6b85	cb 3f 	. ? 
	srl a		;6b87	cb 3f 	. ? 
	ld (de),a			;6b89	12 	. 
	inc de			;6b8a	13 	. 
	ld a,(hl)			;6b8b	7e 	~ 
	and 003h		;6b8c	e6 03 	. . 
	ld (de),a			;6b8e	12 	. 
	inc de			;6b8f	13 	. 
	pop bc			;6b90	c1 	. 
	inc hl			;6b91	23 	# 
	djnz $-37		;6b92	10 d9 	. . 
	ld hl,0edd0h		;6b94	21 d0 ed 	! . . 
	ld b,02ch		;6b97	06 2c 	. , 
	push bc			;6b99	c5 	. 
	ld a,(0f2e1h)		;6b9a	3a e1 f2 	: . . 
	ld b,a			;6b9d	47 	G 
	dec b			;6b9e	05 	. 
	jr z,$+8		;6b9f	28 06 	( . 
	sla (hl)		;6ba1	cb 26 	. & 
	sla (hl)		;6ba3	cb 26 	. & 
	djnz $-4		;6ba5	10 fa 	. . 
	inc hl			;6ba7	23 	# 
	pop bc			;6ba8	c1 	. 
	djnz $-16		;6ba9	10 ee 	. . 
	pop de			;6bab	d1 	. 
	inc de			;6bac	13 	. 
	ret			;6bad	c9 	. 
	exx			;6bae	d9 	. 
	ld hl,079e4h		;6baf	21 e4 79 	! . y 
	ld de,0c000h		;6bb2	11 00 c0 	. . . 
	call 06d68h		;6bb5	cd 68 6d 	. h m 
	ld de,0ca60h		;6bb8	11 60 ca 	. ` . 
	ld a,004h		;6bbb	3e 04 	> . 
	ld hl,0f2f0h		;6bbd	21 f0 f2 	! . . 
	ld bc,00008h		;6bc0	01 08 00 	. . . 
	ldir		;6bc3	ed b0 	. . 
	dec a			;6bc5	3d 	= 
	jr nz,$-9		;6bc6	20 f5 	  . 
	ld de,0d4e0h		;6bc8	11 e0 d4 	. . . 
	ld a,004h		;6bcb	3e 04 	> . 
	ld hl,0f2f8h		;6bcd	21 f8 f2 	! . . 
	ld bc,00008h		;6bd0	01 08 00 	. . . 
	ldir		;6bd3	ed b0 	. . 
	dec a			;6bd5	3d 	= 
	jr nz,$-9		;6bd6	20 f5 	  . 
	exx			;6bd8	d9 	. 
	ld a,060h		;6bd9	3e 60 	> ` 
	ex af,af'			;6bdb	08 	. 
	ld a,(de)			;6bdc	1a 	. 
	inc a			;6bdd	3c 	< 
	ret z			;6bde	c8 	. 
	dec a			;6bdf	3d 	= 
	jr nz,$+6		;6be0	20 04 	  . 
	ex af,af'			;6be2	08 	. 
	ld a,010h		;6be3	3e 10 	> . 
	ex af,af'			;6be5	08 	. 
	inc de			;6be6	13 	. 
	push de			;6be7	d5 	. 
	ld d,000h		;6be8	16 00 	. . 
	ld e,a			;6bea	5f 	_ 
	ld hl,0eea0h		;6beb	21 a0 ee 	! . . 
	add hl,de			;6bee	19 	. 
	ex af,af'			;6bef	08 	. 
	ld (hl),a			;6bf0	77 	w 
	ex af,af'			;6bf1	08 	. 
	ld b,a			;6bf2	47 	G 
	add a,a			;6bf3	87 	. 
	add a,b			;6bf4	80 	. 
	ld e,a			;6bf5	5f 	_ 
	ld hl,0745eh		;6bf6	21 5e 74 	! ^ t 
	add hl,de			;6bf9	19 	. 
	ld a,(hl)			;6bfa	7e 	~ 
	inc hl			;6bfb	23 	# 
	ld b,(hl)			;6bfc	46 	F 
	inc hl			;6bfd	23 	# 
	ld h,(hl)			;6bfe	66 	f 
	ld l,b			;6bff	68 	h 
	push af			;6c00	f5 	. 
	and 003h		;6c01	e6 03 	. . 
	or a			;6c03	b7 	. 
	jr z,$+27		;6c04	28 19 	( . 
	push hl			;6c06	e5 	. 
	dec a			;6c07	3d 	= 
	call z,06c85h		;6c08	cc 85 6c 	. . l 
	dec a			;6c0b	3d 	= 
	call z,06c23h		;6c0c	cc 23 6c 	. # l 
	dec a			;6c0f	3d 	= 
	call z,06cdeh		;6c10	cc de 6c 	. . l 
	pop hl			;6c13	e1 	. 
	ld de,00020h		;6c14	11 20 00 	.   . 
	add hl,de			;6c17	19 	. 
	pop af			;6c18	f1 	. 
	srl a		;6c19	cb 3f 	. ? 
	srl a		;6c1b	cb 3f 	. ? 
	jr $-29		;6c1d	18 e1 	. . 
	pop af			;6c1f	f1 	. 
	pop de			;6c20	d1 	. 
	jr $-69		;6c21	18 b9 	. . 
	call 06c85h		;6c23	cd 85 6c 	. . l 
	push hl			;6c26	e5 	. 
	pop ix		;6c27	dd e1 	. . 
	ld iy,0e800h		;6c29	fd 21 00 e8 	. ! . . 
	ld a,002h		;6c2d	3e 02 	> . 
	ld b,008h		;6c2f	06 08 	. . 
	ld h,(ix+000h)		;6c31	dd 66 00 	. f . 
	ld l,(ix+008h)		;6c34	dd 6e 08 	. n . 
	ld c,010h		;6c37	0e 10 	. . 
	srl h		;6c39	cb 3c 	. < 
	rr l		;6c3b	cb 1d 	. . 
	rl (iy+008h)		;6c3d	fd cb 08 16 	. . . . 
	rl (iy+000h)		;6c41	fd cb 00 16 	. . . . 
	dec c			;6c45	0d 	. 
	jr nz,$-13		;6c46	20 f1 	  . 
	inc ix		;6c48	dd 23 	. # 
	inc iy		;6c4a	fd 23 	. # 
	djnz $-27		;6c4c	10 e3 	. . 
	ld bc,00008h		;6c4e	01 08 00 	. . . 
	add ix,bc		;6c51	dd 09 	. . 
	add iy,bc		;6c53	fd 09 	. . 
	dec a			;6c55	3d 	= 
	jr nz,$-39		;6c56	20 d7 	  . 
	ld de,00a60h		;6c58	11 60 0a 	. ` . 
	add ix,de		;6c5b	dd 19 	. . 
	ld c,002h		;6c5d	0e 02 	. . 
	ld b,008h		;6c5f	06 08 	. . 
	ld a,(ix+000h)		;6c61	dd 7e 00 	. ~ . 
	ld (iy+008h),a		;6c64	fd 77 08 	. w . 
	ld a,(ix+008h)		;6c67	dd 7e 08 	. ~ . 
	ld (iy+000h),a		;6c6a	fd 77 00 	. w . 
	inc ix		;6c6d	dd 23 	. # 
	inc iy		;6c6f	fd 23 	. # 
	djnz $-16		;6c71	10 ee 	. . 
	ld de,00008h		;6c73	11 08 00 	. . . 
	add ix,de		;6c76	dd 19 	. . 
	add iy,de		;6c78	fd 19 	. . 
	dec c			;6c7a	0d 	. 
	jr nz,$-28		;6c7b	20 e2 	  . 
	ld hl,0e800h		;6c7d	21 00 e8 	! . . 
	ld bc,00020h		;6c80	01 20 00 	.   . 
	jr $+5		;6c83	18 03 	. . 
	ld bc,00a80h		;6c85	01 80 0a 	. . . 
	ld (0f2dfh),bc		;6c88	ed 43 df f2 	. C . . 
	ld bc,00020h		;6c8c	01 20 00 	.   . 
	ld (0f2a9h),bc		;6c8f	ed 43 a9 f2 	. C . . 
	push hl			;6c93	e5 	. 
	ex af,af'			;6c94	08 	. 
	ld l,a			;6c95	6f 	o 
	ld h,000h		;6c96	26 00 	& . 
	add hl,hl			;6c98	29 	) 
	add hl,hl			;6c99	29 	) 
	add hl,hl			;6c9a	29 	) 
	ex de,hl			;6c9b	eb 	. 
	add a,004h		;6c9c	c6 04 	. . 
	ex af,af'			;6c9e	08 	. 
	pop hl			;6c9f	e1 	. 
	push hl			;6ca0	e5 	. 
	push de			;6ca1	d5 	. 
	ld b,003h		;6ca2	06 03 	. . 
	push bc			;6ca4	c5 	. 
	push hl			;6ca5	e5 	. 
	push de			;6ca6	d5 	. 
	ld bc,(0f2a9h)		;6ca7	ed 4b a9 f2 	. K . . 
	call 0467ah		;6cab	cd 7a 46 	. z F 
	pop de			;6cae	d1 	. 
	ld hl,00800h		;6caf	21 00 08 	! . . 
	add hl,de			;6cb2	19 	. 
	ex de,hl			;6cb3	eb 	. 
	pop hl			;6cb4	e1 	. 
	pop bc			;6cb5	c1 	. 
	djnz $-18		;6cb6	10 ec 	. . 
	pop de			;6cb8	d1 	. 
	pop hl			;6cb9	e1 	. 
	push hl			;6cba	e5 	. 
	ex de,hl			;6cbb	eb 	. 
	ld bc,02000h		;6cbc	01 00 20 	. .   
	add hl,bc			;6cbf	09 	. 
	ex de,hl			;6cc0	eb 	. 
	ld bc,(0f2dfh)		;6cc1	ed 4b df f2 	. K . . 
	add hl,bc			;6cc5	09 	. 
	ld b,003h		;6cc6	06 03 	. . 
	push bc			;6cc8	c5 	. 
	push hl			;6cc9	e5 	. 
	push de			;6cca	d5 	. 
	ld bc,(0f2a9h)		;6ccb	ed 4b a9 f2 	. K . . 
	call 0467ah		;6ccf	cd 7a 46 	. z F 
	pop de			;6cd2	d1 	. 
	ld hl,00800h		;6cd3	21 00 08 	! . . 
	add hl,de			;6cd6	19 	. 
	ex de,hl			;6cd7	eb 	. 
	pop hl			;6cd8	e1 	. 
	pop bc			;6cd9	c1 	. 
	djnz $-18		;6cda	10 ec 	. . 
	pop hl			;6cdc	e1 	. 
	ret			;6cdd	c9 	. 
	call 06c85h		;6cde	cd 85 6c 	. . l 
	push hl			;6ce1	e5 	. 
	pop ix		;6ce2	dd e1 	. . 
	ld iy,0e800h		;6ce4	fd 21 00 e8 	. ! . . 
	call 06cfeh		;6ce8	cd fe 6c 	. . l 
	ld iy,0e820h		;6ceb	fd 21 20 e8 	. !   . 
	ld de,00a80h		;6cef	11 80 0a 	. . . 
	add hl,de			;6cf2	19 	. 
	push hl			;6cf3	e5 	. 
	pop ix		;6cf4	dd e1 	. . 
	call 06cfeh		;6cf6	cd fe 6c 	. . l 
	ld hl,0e800h		;6cf9	21 00 e8 	! . . 
	jr $-124		;6cfc	18 82 	. . 
	ld b,008h		;6cfe	06 08 	. . 
	ld a,(ix+000h)		;6d00	dd 7e 00 	. ~ . 
	ld (iy+017h),a		;6d03	fd 77 17 	. w . 
	ld a,(ix+008h)		;6d06	dd 7e 08 	. ~ . 
	ld (iy+01fh),a		;6d09	fd 77 1f 	. w . 
	ld a,(ix+010h)		;6d0c	dd 7e 10 	. ~ . 
	ld (iy+007h),a		;6d0f	fd 77 07 	. w . 
	ld a,(ix+018h)		;6d12	dd 7e 18 	. ~ . 
	ld (iy+00fh),a		;6d15	fd 77 0f 	. w . 
	inc ix		;6d18	dd 23 	. # 
	dec iy		;6d1a	fd 2b 	. + 
	djnz $-28		;6d1c	10 e2 	. . 
	ret			;6d1e	c9 	. 
	ld hl,08c70h		;6d1f	21 70 8c 	! p . 
	ld de,0ce58h		;6d22	11 58 ce 	. X . 
	call 06d68h		;6d25	cd 68 6d 	. h m 
	ld bc,000f0h		;6d28	01 f0 00 	. . . 
	ld (0f2dfh),bc		;6d2b	ed 43 df f2 	. C . . 
	ld bc,00018h		;6d2f	01 18 00 	. . . 
	ld (0f2a9h),bc		;6d32	ed 43 a9 f2 	. C . . 
	ld a,(0f2d8h)		;6d36	3a d8 f2 	: . . 
	ld b,a			;6d39	47 	G 
	add a,a			;6d3a	87 	. 
	add a,b			;6d3b	80 	. 
	ld l,a			;6d3c	6f 	o 
	ld h,000h		;6d3d	26 00 	& . 
	add hl,hl			;6d3f	29 	) 
	add hl,hl			;6d40	29 	) 
	add hl,hl			;6d41	29 	) 
	ld de,0ce58h		;6d42	11 58 ce 	. X . 
	add hl,de			;6d45	19 	. 
	push hl			;6d46	e5 	. 
	ld de,00008h		;6d47	11 08 00 	. . . 
	call 06ca0h		;6d4a	cd a0 6c 	. . l 
	pop hl			;6d4d	e1 	. 
	ld bc,00010h		;6d4e	01 10 00 	. . . 
	add hl,bc			;6d51	09 	. 
	ld de,0f2f0h		;6d52	11 f0 f2 	. . . 
	ld bc,00008h		;6d55	01 08 00 	. . . 
	ldir		;6d58	ed b0 	. . 
	ld bc,000e8h		;6d5a	01 e8 00 	. . . 
	add hl,bc			;6d5d	09 	. 
	ld bc,00008h		;6d5e	01 08 00 	. . . 
	ldir		;6d61	ed b0 	. . 
	ret			;6d63	c9 	. 
	ld c,055h		;6d64	0e 55 	. U 
	jr $+4		;6d66	18 02 	. . 
	ld c,0ffh		;6d68	0e ff 	. . 
	ld a,(hl)			;6d6a	7e 	~ 
	cp c			;6d6b	b9 	. 
	jr z,$+7		;6d6c	28 05 	( . 
	ld (de),a			;6d6e	12 	. 
	inc de			;6d6f	13 	. 
	inc hl			;6d70	23 	# 
	jr $-7		;6d71	18 f7 	. . 
	inc hl			;6d73	23 	# 
	ld a,(hl)			;6d74	7e 	~ 
	cp c			;6d75	b9 	. 
	ret z			;6d76	c8 	. 
	inc hl			;6d77	23 	# 
	ld b,(hl)			;6d78	46 	F 
	ld (de),a			;6d79	12 	. 
	inc de			;6d7a	13 	. 
	djnz $-2		;6d7b	10 fc 	. . 
	jr $-13		;6d7d	18 f1 	. . 
	rst 38h			;6d7f	ff 	. 
	nop			;6d80	00 	. 
	ld b,070h		;6d81	06 70 	. p 
	call m,000ffh		;6d83	fc ff 00 	. . . 
	rlca			;6d86	07 	. 
	dec d			;6d87	15 	. 
	rst 38h			;6d88	ff 	. 
	nop			;6d89	00 	. 
	rlca			;6d8a	07 	. 
	ret nz			;6d8b	c0 	. 
	ld bc,00f07h		;6d8c	01 07 0f 	. . . 
	ld l,a			;6d8f	6f 	o 
	ld (hl),e			;6d90	73 	s 
	inc bc			;6d91	03 	. 
	dec b			;6d92	05 	. 
	ld bc,00d1bh		;6d93	01 1b 0d 	. . . 
	ld sp,hl			;6d96	f9 	. 
	nop			;6d97	00 	. 
	ret nz			;6d98	c0 	. 
	ret po			;6d99	e0 	. 
	rst 18h			;6d9a	df 	. 
	cp a			;6d9b	bf 	. 
	ret p			;6d9c	f0 	. 
	ex af,af'			;6d9d	08 	. 
	call m,00070h		;6d9e	fc 70 00 	. p . 
	nop			;6da1	00 	. 
	ret po			;6da2	e0 	. 
	ret nz			;6da3	c0 	. 
	rst 38h			;6da4	ff 	. 
	nop			;6da5	00 	. 
	ld e,090h		;6da6	1e 90 	. . 
	ld h,b			;6da8	60 	` 
	rst 38h			;6da9	ff 	. 
	nop			;6daa	00 	. 
	rlca			;6dab	07 	. 
	ret p			;6dac	f0 	. 
	rst 38h			;6dad	ff 	. 
	nop			;6dae	00 	. 
	rlca			;6daf	07 	. 
	ld (hl),b			;6db0	70 	p 
	ld sp,hl			;6db1	f9 	. 
	or 0e6h		;6db2	f6 e6 	. . 
	ld (hl),b			;6db4	70 	p 
	ld d,b			;6db5	50 	P 
	ret po			;6db6	e0 	. 
	ret po			;6db7	e0 	. 
	ret p			;6db8	f0 	. 
	rrca			;6db9	0f 	. 
	rrca			;6dba	0f 	. 
	ret pe			;6dbb	e8 	. 
	rlca			;6dbc	07 	. 
	ld d,b			;6dbd	50 	P 
	ret po			;6dbe	e0 	. 
	ret po			;6dbf	e0 	. 
	ret p			;6dc0	f0 	. 
	ld b,b			;6dc1	40 	@ 
	ld b,b			;6dc2	40 	@ 
	rst 28h			;6dc3	ef 	. 
	ld d,b			;6dc4	50 	P 
	nop			;6dc5	00 	. 
	nop			;6dc6	00 	. 
	add a,b			;6dc7	80 	. 
	ld h,b			;6dc8	60 	` 
	rst 38h			;6dc9	ff 	. 
	nop			;6dca	00 	. 
	dec de			;6dcb	1b 	. 
	ld (bc),a			;6dcc	02 	. 
	ld b,00ch		;6dcd	06 0c 	. . 
	jr $+4		;6dcf	18 02 	. . 
	ld bc,00603h		;6dd1	01 03 06 	. . . 
	ld l,074h		;6dd4	2e 74 	. t 
	call p,0e8f4h		;6dd6	f4 f4 e8 	. . . 
	rst 38h			;6dd9	ff 	. 
	nop			;6dda	00 	. 
	rlca			;6ddb	07 	. 
	jr nc,$+103		;6ddc	30 65 	0 e 
	res 2,(hl)		;6dde	cb 96 	. . 
	inc c			;6de0	0c 	. 
	ld hl,0f473h		;6de1	21 73 f4 	! s . 
	xor 094h		;6de4	ee 94 	. . 
	ld (hl),076h		;6de6	36 76 	6 v 
	defb 0edh;next byte illegal after ed		;6de8	ed 	. 
	pop bc			;6de9	c1 	. 
	cp d			;6dea	ba 	. 
	ld d,00eh		;6deb	16 0e 	. . 
	ld (hl),b			;6ded	70 	p 
	ret po			;6dee	e0 	. 
	ret nz			;6def	c0 	. 
	ret nz			;6df0	c0 	. 
	add a,b			;6df1	80 	. 
	add a,b			;6df2	80 	. 
	nop			;6df3	00 	. 
	nop			;6df4	00 	. 
	ld l,a			;6df5	6f 	o 
	ld (hl),012h		;6df6	36 12 	6 . 
	rst 38h			;6df8	ff 	. 
	nop			;6df9	00 	. 
	dec b			;6dfa	05 	. 
	inc c			;6dfb	0c 	. 
	rst 38h			;6dfc	ff 	. 
	nop			;6dfd	00 	. 
	ld (de),a			;6dfe	12 	. 
	add a,b			;6dff	80 	. 
	add a,b			;6e00	80 	. 
	rst 38h			;6e01	ff 	. 
	ret p			;6e02	f0 	. 
	rlca			;6e03	07 	. 
	ld (hl),b			;6e04	70 	p 
	ld d,b			;6e05	50 	P 
	ld b,b			;6e06	40 	@ 
	ld b,b			;6e07	40 	@ 
	rst 38h			;6e08	ff 	. 
	nop			;6e09	00 	. 
	rlca			;6e0a	07 	. 
	add a,b			;6e0b	80 	. 
	rst 38h			;6e0c	ff 	. 
	ret p			;6e0d	f0 	. 
	dec b			;6e0e	05 	. 
	rst 38h			;6e0f	ff 	. 
	add a,b			;6e10	80 	. 
	inc bc			;6e11	03 	. 
	rst 38h			;6e12	ff 	. 
	ret p			;6e13	f0 	. 
	dec b			;6e14	05 	. 
	ret po			;6e15	e0 	. 
	ret p			;6e16	f0 	. 
	ret po			;6e17	e0 	. 
	add a,b			;6e18	80 	. 
	add a,b			;6e19	80 	. 
	rst 38h			;6e1a	ff 	. 
	ret p			;6e1b	f0 	. 
	inc b			;6e1c	04 	. 
	nop			;6e1d	00 	. 
	nop			;6e1e	00 	. 
	rst 38h			;6e1f	ff 	. 
	add a,b			;6e20	80 	. 
	inc bc			;6e21	03 	. 
	rst 38h			;6e22	ff 	. 
	nop			;6e23	00 	. 
	dec b			;6e24	05 	. 
	ret po			;6e25	e0 	. 
	rst 38h			;6e26	ff 	. 
	nop			;6e27	00 	. 
	inc d			;6e28	14 	. 
	inc b			;6e29	04 	. 
	inc c			;6e2a	0c 	. 
	inc c			;6e2b	0c 	. 
	ex af,af'			;6e2c	08 	. 
	inc e			;6e2d	1c 	. 
	inc e			;6e2e	1c 	. 
	ld a,022h		;6e2f	3e 22 	> " 
	inc e			;6e31	1c 	. 
	ld a,03eh		;6e32	3e 3e 	> > 
	rst 38h			;6e34	ff 	. 
	nop			;6e35	00 	. 
	dec b			;6e36	05 	. 
	djnz $+26		;6e37	10 18 	. . 
	jr $+1		;6e39	18 ff 	. . 
	dec c			;6e3b	0d 	. 
	dec b			;6e3c	05 	. 
	ex af,af'			;6e3d	08 	. 
	inc b			;6e3e	04 	. 
	inc c			;6e3f	0c 	. 
	inc e			;6e40	1c 	. 
	ld (0009ch),hl		;6e41	22 9c 00 	" . . 
	rst 30h			;6e44	f7 	. 
	rst 30h			;6e45	f7 	. 
	ex de,hl			;6e46	eb 	. 
	defb 0ddh,058h,058h	;illegal sequence		;6e47	dd 58 58 	. X X 
	rst 38h			;6e4a	ff 	. 
	ret c			;6e4b	d8 	. 
	inc bc			;6e4c	03 	. 
	adc a,b			;6e4d	88 	. 
	sub b			;6e4e	90 	. 
	sbc a,b			;6e4f	98 	. 
	inc c			;6e50	0c 	. 
	inc b			;6e51	04 	. 
	nop			;6e52	00 	. 
	nop			;6e53	00 	. 
	ld (bc),a			;6e54	02 	. 
	ld (bc),a			;6e55	02 	. 
	nop			;6e56	00 	. 
	nop			;6e57	00 	. 
	defb 0ddh,0ddh,080h	;illegal sequence		;6e58	dd dd 80 	. . . 
	ld e,l			;6e5b	5d 	] 
	defb 0ddh,0c9h,041h	;illegal sequence		;6e5c	dd c9 41 	. . A 
	nop			;6e5f	00 	. 
	sbc a,b			;6e60	98 	. 
	sub b			;6e61	90 	. 
	add a,b			;6e62	80 	. 
	nop			;6e63	00 	. 
	and b			;6e64	a0 	. 
	and b			;6e65	a0 	. 
	rst 38h			;6e66	ff 	. 
	nop			;6e67	00 	. 
	rlca			;6e68	07 	. 
	rst 38h			;6e69	ff 	. 
	add a,b			;6e6a	80 	. 
	inc bc			;6e6b	03 	. 
	rst 38h			;6e6c	ff 	. 
	ret p			;6e6d	f0 	. 
	dec b			;6e6e	05 	. 
	ld (hl),b			;6e6f	70 	p 
	ld d,b			;6e70	50 	P 
	ld b,b			;6e71	40 	@ 
	rst 38h			;6e72	ff 	. 
	nop			;6e73	00 	. 
	dec b			;6e74	05 	. 
	rst 38h			;6e75	ff 	. 
	add a,b			;6e76	80 	. 
	inc bc			;6e77	03 	. 
	rst 38h			;6e78	ff 	. 
	ret po			;6e79	e0 	. 
	ex af,af'			;6e7a	08 	. 
	ld b,b			;6e7b	40 	@ 
	ret p			;6e7c	f0 	. 
	ret po			;6e7d	e0 	. 
	nop			;6e7e	00 	. 
	ret p			;6e7f	f0 	. 
	ret p			;6e80	f0 	. 
	ret po			;6e81	e0 	. 
	ret po			;6e82	e0 	. 
	rst 38h			;6e83	ff 	. 
	ret p			;6e84	f0 	. 
	inc bc			;6e85	03 	. 
	rst 38h			;6e86	ff 	. 
	ret po			;6e87	e0 	. 
	inc bc			;6e88	03 	. 
	ret p			;6e89	f0 	. 
	ret p			;6e8a	f0 	. 
	ret po			;6e8b	e0 	. 
	ret po			;6e8c	e0 	. 
	nop			;6e8d	00 	. 
	nop			;6e8e	00 	. 
	add a,b			;6e8f	80 	. 
	add a,b			;6e90	80 	. 
	nop			;6e91	00 	. 
	nop			;6e92	00 	. 
	rst 38h			;6e93	ff 	. 
	ret po			;6e94	e0 	. 
	inc bc			;6e95	03 	. 
	rst 38h			;6e96	ff 	. 
	add a,b			;6e97	80 	. 
	inc b			;6e98	04 	. 
	nop			;6e99	00 	. 
	rst 38h			;6e9a	ff 	. 
	ret p			;6e9b	f0 	. 
	inc bc			;6e9c	03 	. 
	nop			;6e9d	00 	. 
	add a,b			;6e9e	80 	. 
	add a,b			;6e9f	80 	. 
	nop			;6ea0	00 	. 
	nop			;6ea1	00 	. 
	inc bc			;6ea2	03 	. 
	inc bc			;6ea3	03 	. 
	dec e			;6ea4	1d 	. 
	ld e,01eh		;6ea5	1e 1e 	. . 
	inc bc			;6ea7	03 	. 
	ld bc,0c002h		;6ea8	01 02 c0 	. . . 
	ret po			;6eab	e0 	. 
	adc a,(hl)			;6eac	8e 	. 
	ld d,e			;6ead	53 	S 
	jp (hl)			;6eae	e9 	. 
	or h			;6eaf	b4 	. 
	jp c,0ffedh		;6eb0	da ed ff 	. . . 
	nop			;6eb3	00 	. 
	inc b			;6eb4	04 	. 
	add a,b			;6eb5	80 	. 
	ret nz			;6eb6	c0 	. 
	jr nz,$+18		;6eb7	20 10 	  . 
	rla			;6eb9	17 	. 
	ld a,(00611h)		;6eba	3a 11 06 	: . . 
	rlca			;6ebd	07 	. 
	inc bc			;6ebe	03 	. 
	ld bc,07200h		;6ebf	01 00 72 	. . r 
	ld (hl),0d6h		;6ec2	36 d6 	6 . 
	di			;6ec4	f3 	. 
	add hl,de			;6ec5	19 	. 
	add a,b			;6ec6	80 	. 
	ret nz			;6ec7	c0 	. 
	ld h,b			;6ec8	60 	` 
	ld h,b			;6ec9	60 	` 
	ret p			;6eca	f0 	. 
	ret m			;6ecb	f8 	. 
	jr nc,$-118		;6ecc	30 88 	0 . 
	ld a,h			;6ece	7c 	| 
	ld c,003h		;6ecf	0e 03 	. . 
	rst 38h			;6ed1	ff 	. 
	nop			;6ed2	00 	. 
	jr $+1		;6ed3	18 ff 	. . 
	add a,b			;6ed5	80 	. 
	dec b			;6ed6	05 	. 
	rst 38h			;6ed7	ff 	. 
	ret po			;6ed8	e0 	. 
	inc bc			;6ed9	03 	. 
	rst 38h			;6eda	ff 	. 
	add a,b			;6edb	80 	. 
	inc bc			;6edc	03 	. 
	ret po			;6edd	e0 	. 
	ret po			;6ede	e0 	. 
	rst 38h			;6edf	ff 	. 
	ret p			;6ee0	f0 	. 
	inc bc			;6ee1	03 	. 
	rst 38h			;6ee2	ff 	. 
	nop			;6ee3	00 	. 
	inc b			;6ee4	04 	. 
	rst 38h			;6ee5	ff 	. 
	ret p			;6ee6	f0 	. 
	inc b			;6ee7	04 	. 
	rst 38h			;6ee8	ff 	. 
	ret po			;6ee9	e0 	. 
	inc bc			;6eea	03 	. 
	rst 38h			;6eeb	ff 	. 
	ret p			;6eec	f0 	. 
	inc b			;6eed	04 	. 
	nop			;6eee	00 	. 
	rst 38h			;6eef	ff 	. 
	ret p			;6ef0	f0 	. 
	ld b,080h		;6ef1	06 80 	. . 
	add a,b			;6ef3	80 	. 
	ld (hl),b			;6ef4	70 	p 
	ld d,b			;6ef5	50 	P 
	ld b,b			;6ef6	40 	@ 
	ld d,b			;6ef7	50 	P 
	rst 38h			;6ef8	ff 	. 
	ret p			;6ef9	f0 	. 
	inc b			;6efa	04 	. 
	rst 38h			;6efb	ff 	. 
	nop			;6efc	00 	. 
	daa			;6efd	27 	' 
	rlca			;6efe	07 	. 
	rst 38h			;6eff	ff 	. 
	nop			;6f00	00 	. 
	rlca			;6f01	07 	. 
	ld (hl),b			;6f02	70 	p 
	dec c			;6f03	0d 	. 
	ld a,070h		;6f04	3e 70 	> p 
	cpl			;6f06	2f 	/ 
	rlca			;6f07	07 	. 
	rlca			;6f08	07 	. 
	inc bc			;6f09	03 	. 
	ld a,h			;6f0a	7c 	| 
	jp p,060fbh		;6f0b	f2 fb 60 	. . ` 
	and 059h		;6f0e	e6 59 	. Y 
	ret nz			;6f10	c0 	. 
	rst 8			;6f11	cf 	. 
	sbc a,a			;6f12	9f 	. 
	ret m			;6f13	f8 	. 
	jr c,$-126		;6f14	38 80 	8 . 
	ld a,h			;6f16	7c 	| 
	ld e,003h		;6f17	1e 03 	. . 
	add a,b			;6f19	80 	. 
	ret nz			;6f1a	c0 	. 
	ld e,01fh		;6f1b	1e 1f 	. . 
	rra			;6f1d	1f 	. 
	ret po			;6f1e	e0 	. 
	jr nz,$+1		;6f1f	20 ff 	  . 
	nop			;6f21	00 	. 
	inc bc			;6f22	03 	. 
	rlca			;6f23	07 	. 
	ret po			;6f24	e0 	. 
	ret p			;6f25	f0 	. 
	rst 38h			;6f26	ff 	. 
	nop			;6f27	00 	. 
	inc e			;6f28	1c 	. 
	ret p			;6f29	f0 	. 
	rst 38h			;6f2a	ff 	. 
	nop			;6f2b	00 	. 
	rlca			;6f2c	07 	. 
	ld (hl),b			;6f2d	70 	p 
	ret p			;6f2e	f0 	. 
	ret po			;6f2f	e0 	. 
	ld h,b			;6f30	60 	` 
	ld h,b			;6f31	60 	` 
	rst 38h			;6f32	ff 	. 
	ret po			;6f33	e0 	. 
	inc b			;6f34	04 	. 
	ret p			;6f35	f0 	. 
	ret p			;6f36	f0 	. 
	ret po			;6f37	e0 	. 
	ld b,b			;6f38	40 	@ 
	ld b,b			;6f39	40 	@ 
	rst 38h			;6f3a	ff 	. 
	ret p			;6f3b	f0 	. 
	inc bc			;6f3c	03 	. 
	ld b,b			;6f3d	40 	@ 
	ld b,b			;6f3e	40 	@ 
	ret p			;6f3f	f0 	. 
	ret p			;6f40	f0 	. 
	ret po			;6f41	e0 	. 
	ret po			;6f42	e0 	. 
	add a,b			;6f43	80 	. 
	add a,b			;6f44	80 	. 
	jp (hl)			;6f45	e9 	. 
	and 0f6h		;6f46	e6 f6 	. . 
	add a,b			;6f48	80 	. 
	add a,b			;6f49	80 	. 
	rst 38h			;6f4a	ff 	. 
	nop			;6f4b	00 	. 
	inc bc			;6f4c	03 	. 
	ret p			;6f4d	f0 	. 
	ret po			;6f4e	e0 	. 
	ret p			;6f4f	f0 	. 
	rst 38h			;6f50	ff 	. 
	nop			;6f51	00 	. 
	rla			;6f52	17 	. 
	ld a,00dh		;6f53	3e 0d 	> . 
	ld b,030h		;6f55	06 30 	. 0 
	ld (hl),e			;6f57	73 	s 
	inc e			;6f58	1c 	. 
	rst 38h			;6f59	ff 	. 
	nop			;6f5a	00 	. 
	dec b			;6f5b	05 	. 
	add a,b			;6f5c	80 	. 
	ret nz			;6f5d	c0 	. 
	ret nz			;6f5e	c0 	. 
	rst 38h			;6f5f	ff 	. 
	nop			;6f60	00 	. 
	ex af,af'			;6f61	08 	. 
	rst 0			;6f62	c7 	. 
	or c			;6f63	b1 	. 
	ld (hl),b			;6f64	70 	p 
	ld (hl),b			;6f65	70 	p 
	ld h,01fh		;6f66	26 1f 	& . 
	ccf			;6f68	3f 	? 
	rlca			;6f69	07 	. 
	nop			;6f6a	00 	. 
	ret po			;6f6b	e0 	. 
	ld (hl),b			;6f6c	70 	p 
	jr $+2		;6f6d	18 00 	. . 
	add a,b			;6f6f	80 	. 
	or b			;6f70	b0 	. 
	jr nc,$+1		;6f71	30 ff 	0 . 
	nop			;6f73	00 	. 
	inc bc			;6f74	03 	. 
	ld c,007h		;6f75	0e 07 	. . 
	inc bc			;6f77	03 	. 
	rlca			;6f78	07 	. 
	ld c,0e0h		;6f79	0e e0 	. . 
	ld b,a			;6f7b	47 	G 
	inc bc			;6f7c	03 	. 
	ret p			;6f7d	f0 	. 
	call m,03f03h		;6f7e	fc 03 3f 	. . ? 
	ret p			;6f81	f0 	. 
	nop			;6f82	00 	. 
	add a,b			;6f83	80 	. 
	ret nz			;6f84	c0 	. 
	add a,b			;6f85	80 	. 
	nop			;6f86	00 	. 
	ret nz			;6f87	c0 	. 
	rst 38h			;6f88	ff 	. 
	nop			;6f89	00 	. 
	inc h			;6f8a	24 	$ 
	rst 38h			;6f8b	ff 	. 
	ret p			;6f8c	f0 	. 
	ld b,0ffh		;6f8d	06 ff 	. . 
	nop			;6f8f	00 	. 
	dec b			;6f90	05 	. 
	ld (hl),b			;6f91	70 	p 
	ld b,b			;6f92	40 	@ 
	ld b,b			;6f93	40 	@ 
	rst 38h			;6f94	ff 	. 
	nop			;6f95	00 	. 
	ex af,af'			;6f96	08 	. 
	rst 38h			;6f97	ff 	. 
	ret po			;6f98	e0 	. 
	ex af,af'			;6f99	08 	. 
	nop			;6f9a	00 	. 
	ret p			;6f9b	f0 	. 
	ret po			;6f9c	e0 	. 
	ret po			;6f9d	e0 	. 
	nop			;6f9e	00 	. 
	rst 38h			;6f9f	ff 	. 
	add a,b			;6fa0	80 	. 
	inc bc			;6fa1	03 	. 
	rst 38h			;6fa2	ff 	. 
	nop			;6fa3	00 	. 
	inc bc			;6fa4	03 	. 
	sub b			;6fa5	90 	. 
	rst 38h			;6fa6	ff 	. 
	ld h,b			;6fa7	60 	` 
	inc bc			;6fa8	03 	. 
	add a,b			;6fa9	80 	. 
	rst 38h			;6faa	ff 	. 
	ret po			;6fab	e0 	. 
	dec b			;6fac	05 	. 
	cp 0feh		;6fad	fe fe 	. . 
	ret p			;6faf	f0 	. 
	nop			;6fb0	00 	. 
	ret p			;6fb1	f0 	. 
	ret p			;6fb2	f0 	. 
	ret po			;6fb3	e0 	. 
	nop			;6fb4	00 	. 
	ret p			;6fb5	f0 	. 
	rst 38h			;6fb6	ff 	. 
	nop			;6fb7	00 	. 
	inc hl			;6fb8	23 	# 
	ld a,h			;6fb9	7c 	| 
	ld e,028h		;6fba	1e 28 	. ( 
	halt			;6fbc	76 	v 
	ld (bc),a			;6fbd	02 	. 
	ld a,b			;6fbe	78 	x 
	ld c,h			;6fbf	4c 	L 
	rst 38h			;6fc0	ff 	. 
	nop			;6fc1	00 	. 
	dec bc			;6fc2	0b 	. 
	ld bc,00303h		;6fc3	01 03 03 	. . . 
	ld bc,07200h		;6fc6	01 00 72 	. . r 
	jp p,08e66h		;6fc9	f2 66 8e 	. f . 
	call nz,090e1h		;6fcc	c4 e1 90 	. . . 
	dec sp			;6fcf	3b 	; 
	ld h,b			;6fd0	60 	` 
	ld h,b			;6fd1	60 	` 
	and b			;6fd2	a0 	. 
	ret nz			;6fd3	c0 	. 
	add a,b			;6fd4	80 	. 
	rst 38h			;6fd5	ff 	. 
	nop			;6fd6	00 	. 
	add hl,bc			;6fd7	09 	. 
	ld (bc),a			;6fd8	02 	. 
	rrca			;6fd9	0f 	. 
	inc hl			;6fda	23 	# 
	rrca			;6fdb	0f 	. 
	ld h,d			;6fdc	62 	b 
	ret p			;6fdd	f0 	. 
	ret p			;6fde	f0 	. 
	ret po			;6fdf	e0 	. 
	ld h,b			;6fe0	60 	` 
	nop			;6fe1	00 	. 
	and b			;6fe2	a0 	. 
	jr nz,$+114		;6fe3	20 70 	  p 
	rst 38h			;6fe5	ff 	. 
	ret p			;6fe6	f0 	. 
	dec b			;6fe7	05 	. 
	rra			;6fe8	1f 	. 
	ld a,03eh		;6fe9	3e 3e 	> > 
	ld a,h			;6feb	7c 	| 
	ld a,b			;6fec	78 	x 
	cp b			;6fed	b8 	. 
	ret nz			;6fee	c0 	. 
	inc a			;6fef	3c 	< 
	ret nz			;6ff0	c0 	. 
	rst 38h			;6ff1	ff 	. 
	nop			;6ff2	00 	. 
	rlca			;6ff3	07 	. 
	ret p			;6ff4	f0 	. 
	ret nz			;6ff5	c0 	. 
	jr c,$-66		;6ff6	38 bc 	8 . 
	rst 38h			;6ff8	ff 	. 
	nop			;6ff9	00 	. 
	dec c			;6ffa	0d 	. 
	ret p			;6ffb	f0 	. 
	ret p			;6ffc	f0 	. 
	ld (hl),b			;6ffd	70 	p 
	add a,b			;6ffe	80 	. 
	rst 38h			;6fff	ff 	. 
	ret p			;7000	f0 	. 
	inc bc			;7001	03 	. 
	rst 38h			;7002	ff 	. 
	nop			;7003	00 	. 
	dec bc			;7004	0b 	. 
	rst 38h			;7005	ff 	. 
	ret po			;7006	e0 	. 
	inc b			;7007	04 	. 
	nop			;7008	00 	. 
	rst 38h			;7009	ff 	. 
	ret p			;700a	f0 	. 
	inc bc			;700b	03 	. 
	rst 38h			;700c	ff 	. 
	ret po			;700d	e0 	. 
	inc b			;700e	04 	. 
	rst 38h			;700f	ff 	. 
	add a,b			;7010	80 	. 
	inc b			;7011	04 	. 
	ld d,b			;7012	50 	P 
	ld d,b			;7013	50 	P 
	rst 38h			;7014	ff 	. 
	nop			;7015	00 	. 
	add hl,bc			;7016	09 	. 
	ld b,b			;7017	40 	@ 
	ld b,b			;7018	40 	@ 
	rst 38h			;7019	ff 	. 
	ret po			;701a	e0 	. 
	inc bc			;701b	03 	. 
	ld (hl),b			;701c	70 	p 
	ld d,b			;701d	50 	P 
	ld d,b			;701e	50 	P 
	ld b,b			;701f	40 	@ 
	nop			;7020	00 	. 
	rst 38h			;7021	ff 	. 
	ret po			;7022	e0 	. 
	ex af,af'			;7023	08 	. 
	rst 38h			;7024	ff 	. 
	ld b,b			;7025	40 	@ 
	ld b,080h		;7026	06 80 	. . 
	add a,b			;7028	80 	. 
	ld b,b			;7029	40 	@ 
	rst 38h			;702a	ff 	. 
	nop			;702b	00 	. 
	rlca			;702c	07 	. 
	ret po			;702d	e0 	. 
	ret p			;702e	f0 	. 
	add a,b			;702f	80 	. 
	add a,b			;7030	80 	. 
	rst 38h			;7031	ff 	. 
	nop			;7032	00 	. 
	dec c			;7033	0d 	. 
	ld a,h			;7034	7c 	| 
	ld e,028h		;7035	1e 28 	. ( 
	halt			;7037	76 	v 
	ld (bc),a			;7038	02 	. 
	ld a,b			;7039	78 	x 
	ld c,h			;703a	4c 	L 
	rst 38h			;703b	ff 	. 
	nop			;703c	00 	. 
	inc c			;703d	0c 	. 
	ld bc,000ffh		;703e	01 ff 00 	. . . 
	inc bc			;7041	03 	. 
	ld (0967ah),a		;7042	32 7a 96 	2 z . 
	ld h,l			;7045	65 	e 
	ld sp,hl			;7046	f9 	. 
	ret m			;7047	f8 	. 
	scf			;7048	37 	7 
	add a,(hl)			;7049	86 	. 
	nop			;704a	00 	. 
	nop			;704b	00 	. 
	rst 38h			;704c	ff 	. 
	ld h,b			;704d	60 	` 
	inc bc			;704e	03 	. 
	add a,b			;704f	80 	. 
	nop			;7050	00 	. 
	nop			;7051	00 	. 
	ld bc,000ffh		;7052	01 ff 00 	. . . 
	inc bc			;7055	03 	. 
	inc bc			;7056	03 	. 
	rra			;7057	1f 	. 
	ld a,a			;7058	7f 	 
	ld a,a			;7059	7f 	 
	ret nz			;705a	c0 	. 
	ld c,08eh		;705b	0e 8e 	. . 
	adc a,06ch		;705d	ce 6c 	. l 
	add a,c			;705f	81 	. 
	rst 0			;7060	c7 	. 
	rrca			;7061	0f 	. 
	rst 38h			;7062	ff 	. 
	nop			;7063	00 	. 
	ex af,af'			;7064	08 	. 
	cp h			;7065	bc 	. 
	sub b			;7066	90 	. 
	ld b,b			;7067	40 	@ 
	ld h,b			;7068	60 	` 
	jr nz,$+1		;7069	20 ff 	  . 
	nop			;706b	00 	. 
	inc bc			;706c	03 	. 
	ld c,00eh		;706d	0e 0e 	. . 
	rst 38h			;706f	ff 	. 
	ld e,003h		;7070	1e 03 	. . 
	ld c,030h		;7072	0e 30 	. 0 
	rla			;7074	17 	. 
	rst 38h			;7075	ff 	. 
	nop			;7076	00 	. 
	rlca			;7077	07 	. 
	add a,b			;7078	80 	. 
	rst 38h			;7079	ff 	. 
	nop			;707a	00 	. 
	add hl,bc			;707b	09 	. 
	ret p			;707c	f0 	. 
	ret p			;707d	f0 	. 
	ld (hl),b			;707e	70 	p 
	add a,b			;707f	80 	. 
	rst 38h			;7080	ff 	. 
	ret p			;7081	f0 	. 
	inc bc			;7082	03 	. 
	rst 38h			;7083	ff 	. 
	nop			;7084	00 	. 
	inc c			;7085	0c 	. 
	ret po			;7086	e0 	. 
	rst 38h			;7087	ff 	. 
	nop			;7088	00 	. 
	inc bc			;7089	03 	. 
	rst 38h			;708a	ff 	. 
	ret p			;708b	f0 	. 
	inc bc			;708c	03 	. 
	ret po			;708d	e0 	. 
	ret po			;708e	e0 	. 
	ret pe			;708f	e8 	. 
	add a,b			;7090	80 	. 
	add a,b			;7091	80 	. 
	nop			;7092	00 	. 
	nop			;7093	00 	. 
	rst 38h			;7094	ff 	. 
	add a,b			;7095	80 	. 
	inc bc			;7096	03 	. 
	ld b,b			;7097	40 	@ 
	nop			;7098	00 	. 
	nop			;7099	00 	. 
	ret po			;709a	e0 	. 
	rst 38h			;709b	ff 	. 
	nop			;709c	00 	. 
	inc bc			;709d	03 	. 
	rst 38h			;709e	ff 	. 
	ld b,b			;709f	40 	@ 
	inc b			;70a0	04 	. 
	rst 38h			;70a1	ff 	. 
	ret po			;70a2	e0 	. 
	dec b			;70a3	05 	. 
	ld (hl),b			;70a4	70 	p 
	ld (hl),b			;70a5	70 	p 
	ret po			;70a6	e0 	. 
	rst 38h			;70a7	ff 	. 
	nop			;70a8	00 	. 
	ex af,af'			;70a9	08 	. 
	ld b,b			;70aa	40 	@ 
	ld b,b			;70ab	40 	@ 
	rst 38h			;70ac	ff 	. 
	add a,b			;70ad	80 	. 
	inc bc			;70ae	03 	. 
	rst 38h			;70af	ff 	. 
	nop			;70b0	00 	. 
	inc bc			;70b1	03 	. 
	rst 38h			;70b2	ff 	. 
	ret po			;70b3	e0 	. 
	ld b,080h		;70b4	06 80 	. . 
	add a,b			;70b6	80 	. 
	rst 38h			;70b7	ff 	. 
	nop			;70b8	00 	. 
	rlca			;70b9	07 	. 
	add a,b			;70ba	80 	. 
	rst 38h			;70bb	ff 	. 
	nop			;70bc	00 	. 
	add hl,bc			;70bd	09 	. 
	ld a,h			;70be	7c 	| 
	ld e,028h		;70bf	1e 28 	. ( 
	halt			;70c1	76 	v 
	ld (bc),a			;70c2	02 	. 
	ld a,b			;70c3	78 	x 
	ld c,h			;70c4	4c 	L 
	rst 38h			;70c5	ff 	. 
	nop			;70c6	00 	. 
	inc c			;70c7	0c 	. 
	ld bc,00001h		;70c8	01 01 00 	. . . 
	nop			;70cb	00 	. 
	ld (0387ah),a		;70cc	32 7a 38 	2 z 8 
	or a			;70cf	b7 	. 
	rrca			;70d0	0f 	. 
	ld e,a			;70d1	5f 	_ 
	ret nz			;70d2	c0 	. 
	defb 0edh;next byte illegal after ed		;70d3	ed 	. 
	rst 38h			;70d4	ff 	. 
	nop			;70d5	00 	. 
	inc bc			;70d6	03 	. 
	ld b,b			;70d7	40 	@ 
	ret po			;70d8	e0 	. 
	ld h,b			;70d9	60 	` 
	rst 38h			;70da	ff 	. 
	nop			;70db	00 	. 
	ld a,(bc)			;70dc	0a 	. 
	dec c			;70dd	0d 	. 
	dec e			;70de	1d 	. 
	inc e			;70df	1c 	. 
	inc e			;70e0	1c 	. 
	ld (de),a			;70e1	12 	. 
	ld b,03ch		;70e2	06 3c 	. < 
	inc a			;70e4	3c 	< 
	add a,b			;70e5	80 	. 
	ret nz			;70e6	c0 	. 
	ret nz			;70e7	c0 	. 
	nop			;70e8	00 	. 
	ld h,b			;70e9	60 	` 
	ret nz			;70ea	c0 	. 
	ret nz			;70eb	c0 	. 
	add a,b			;70ec	80 	. 
	rst 38h			;70ed	ff 	. 
	nop			;70ee	00 	. 
	ex af,af'			;70ef	08 	. 
	dec a			;70f0	3d 	= 
	ld a,l			;70f1	7d 	} 
	ld a,b			;70f2	78 	x 
	ld a,b			;70f3	78 	x 
	ld a,h			;70f4	7c 	| 
	inc bc			;70f5	03 	. 
	ret nc			;70f6	d0 	. 
	ld a,0ffh		;70f7	3e ff 	> . 
	nop			;70f9	00 	. 
	dec b			;70fa	05 	. 
	ret nz			;70fb	c0 	. 
	rst 38h			;70fc	ff 	. 
	nop			;70fd	00 	. 
	dec bc			;70fe	0b 	. 
	ret p			;70ff	f0 	. 
	ret p			;7100	f0 	. 
	ld (hl),b			;7101	70 	p 
	add a,b			;7102	80 	. 
	rst 38h			;7103	ff 	. 
	ret p			;7104	f0 	. 
	inc bc			;7105	03 	. 
	rst 38h			;7106	ff 	. 
	nop			;7107	00 	. 
	inc c			;7108	0c 	. 
	ret po			;7109	e0 	. 
	ret po			;710a	e0 	. 
	nop			;710b	00 	. 
	nop			;710c	00 	. 
	rst 38h			;710d	ff 	. 
	ret p			;710e	f0 	. 
	inc bc			;710f	03 	. 
	rst 38h			;7110	ff 	. 
	ret po			;7111	e0 	. 
	dec b			;7112	05 	. 
	rst 38h			;7113	ff 	. 
	nop			;7114	00 	. 
	inc bc			;7115	03 	. 
	rst 38h			;7116	ff 	. 
	add a,b			;7117	80 	. 
	inc bc			;7118	03 	. 
	rst 38h			;7119	ff 	. 
	nop			;711a	00 	. 
	ld a,(bc)			;711b	0a 	. 
	rst 38h			;711c	ff 	. 
	ret po			;711d	e0 	. 
	dec bc			;711e	0b 	. 
	nop			;711f	00 	. 
	rst 38h			;7120	ff 	. 
	ret po			;7121	e0 	. 
	inc b			;7122	04 	. 
	rst 38h			;7123	ff 	. 
	nop			;7124	00 	. 
	ex af,af'			;7125	08 	. 
	rst 38h			;7126	ff 	. 
	ret po			;7127	e0 	. 
	dec b			;7128	05 	. 
	rst 38h			;7129	ff 	. 
	add a,b			;712a	80 	. 
	inc bc			;712b	03 	. 
	rst 38h			;712c	ff 	. 
	nop			;712d	00 	. 
	dec b			;712e	05 	. 
	add a,b			;712f	80 	. 
	rst 38h			;7130	ff 	. 
	nop			;7131	00 	. 
	dec bc			;7132	0b 	. 
	ld a,h			;7133	7c 	| 
	ld e,028h		;7134	1e 28 	. ( 
	halt			;7136	76 	v 
	ld (bc),a			;7137	02 	. 
	ld a,b			;7138	78 	x 
	ld b,h			;7139	44 	D 
	rst 38h			;713a	ff 	. 
	nop			;713b	00 	. 
	add hl,bc			;713c	09 	. 
	ld bc,00003h		;713d	01 03 00 	. . . 
	inc bc			;7140	03 	. 
	ld bc,00000h		;7141	01 00 00 	. . . 
	add hl,sp			;7144	39 	9 
	ld (hl),a			;7145	77 	w 
	scf			;7146	37 	7 
	ld c,a			;7147	4f 	O 
	ld h,b			;7148	60 	` 
	ld (hl),h			;7149	74 	t 
	ld h,(hl)			;714a	66 	f 
	rst 8			;714b	cf 	. 
	ld h,b			;714c	60 	` 
	ret p			;714d	f0 	. 
	ld h,b			;714e	60 	` 
	rst 38h			;714f	ff 	. 
	nop			;7150	00 	. 
	inc b			;7151	04 	. 
	and b			;7152	a0 	. 
	rst 38h			;7153	ff 	. 
	nop			;7154	00 	. 
	ld b,003h		;7155	06 03 	. . 
	rlca			;7157	07 	. 
	inc sp			;7158	33 	3 
	ld a,e			;7159	7b 	{ 
	ld a,b			;715a	78 	x 
	ret p			;715b	f0 	. 
	ret p			;715c	f0 	. 
	ld h,b			;715d	60 	` 
	ld h,b			;715e	60 	` 
	nop			;715f	00 	. 
	or b			;7160	b0 	. 
	jr nz,$+114		;7161	20 70 	  p 
	rst 38h			;7163	ff 	. 
	ret p			;7164	f0 	. 
	dec b			;7165	05 	. 
	ld e,03eh		;7166	1e 3e 	. > 
	inc a			;7168	3c 	< 
	ld a,b			;7169	78 	x 
	ld a,b			;716a	78 	x 
	cp b			;716b	b8 	. 
	ret nz			;716c	c0 	. 
	inc a			;716d	3c 	< 
	rst 38h			;716e	ff 	. 
	nop			;716f	00 	. 
	ex af,af'			;7170	08 	. 
	ret p			;7171	f0 	. 
	ret nz			;7172	c0 	. 
	jr c,$-64		;7173	38 be 	8 . 
	rst 38h			;7175	ff 	. 
	nop			;7176	00 	. 
	dec c			;7177	0d 	. 
	ret p			;7178	f0 	. 
	ret p			;7179	f0 	. 
	ld (hl),b			;717a	70 	p 
	add a,b			;717b	80 	. 
	rst 38h			;717c	ff 	. 
	ret p			;717d	f0 	. 
	inc bc			;717e	03 	. 
	rst 38h			;717f	ff 	. 
	nop			;7180	00 	. 
	add hl,bc			;7181	09 	. 
	ld d,b			;7182	50 	P 
	ld d,b			;7183	50 	P 
	nop			;7184	00 	. 
	ld d,b			;7185	50 	P 
	ld d,b			;7186	50 	P 
	nop			;7187	00 	. 
	nop			;7188	00 	. 
	rst 38h			;7189	ff 	. 
	ret p			;718a	f0 	. 
	inc bc			;718b	03 	. 
	rst 38h			;718c	ff 	. 
	ret po			;718d	e0 	. 
	dec b			;718e	05 	. 
	rst 38h			;718f	ff 	. 
	add a,b			;7190	80 	. 
	inc bc			;7191	03 	. 
	rst 38h			;7192	ff 	. 
	nop			;7193	00 	. 
	inc b			;7194	04 	. 
	ld d,b			;7195	50 	P 
	rst 38h			;7196	ff 	. 
	nop			;7197	00 	. 
	ld b,0e0h		;7198	06 e0 	. . 
	ret po			;719a	e0 	. 
	ld d,b			;719b	50 	P 
	ld d,b			;719c	50 	P 
	rst 38h			;719d	ff 	. 
	ret po			;719e	e0 	. 
	dec b			;719f	05 	. 
	nop			;71a0	00 	. 
	ld d,b			;71a1	50 	P 
	ld d,b			;71a2	50 	P 
	rst 38h			;71a3	ff 	. 
	ld b,b			;71a4	40 	@ 
	ld b,0ffh		;71a5	06 ff 	. . 
	ret po			;71a7	e0 	. 
	ld b,080h		;71a8	06 80 	. . 
	add a,b			;71aa	80 	. 
	rst 38h			;71ab	ff 	. 
	nop			;71ac	00 	. 
	ex af,af'			;71ad	08 	. 
	ld b,b			;71ae	40 	@ 
	ld d,b			;71af	50 	P 
	add a,b			;71b0	80 	. 
	add a,b			;71b1	80 	. 
	rst 38h			;71b2	ff 	. 
	nop			;71b3	00 	. 
	dec c			;71b4	0d 	. 
	ld a,h			;71b5	7c 	| 
	ld e,028h		;71b6	1e 28 	. ( 
	halt			;71b8	76 	v 
	ld (bc),a			;71b9	02 	. 
	ld a,b			;71ba	78 	x 
	ld c,h			;71bb	4c 	L 
	rst 38h			;71bc	ff 	. 
	nop			;71bd	00 	. 
	inc c			;71be	0c 	. 
	ld bc,00001h		;71bf	01 01 00 	. . . 
	nop			;71c2	00 	. 
	ld (0387ah),a		;71c3	32 7a 38 	2 z 8 
	or a			;71c6	b7 	. 
	rrca			;71c7	0f 	. 
	ld e,a			;71c8	5f 	_ 
	ret nz			;71c9	c0 	. 
	call pe,000ffh		;71ca	ec ff 00 	. . . 
	inc bc			;71cd	03 	. 
	ld b,b			;71ce	40 	@ 
	ret po			;71cf	e0 	. 
	ld h,b			;71d0	60 	` 
	nop			;71d1	00 	. 
	nop			;71d2	00 	. 
	ld bc,000ffh		;71d3	01 ff 00 	. . . 
	inc bc			;71d6	03 	. 
	inc bc			;71d7	03 	. 
	rra			;71d8	1f 	. 
	ld a,a			;71d9	7f 	 
	ld a,a			;71da	7f 	 
	ret nz			;71db	c0 	. 
	ld a,(de)			;71dc	1a 	. 
	ld a,d			;71dd	7a 	z 
	ld a,d			;71de	7a 	z 
	inc (hl)			;71df	34 	4 
	add a,c			;71e0	81 	. 
	rst 20h			;71e1	e7 	. 
	rrca			;71e2	0f 	. 
	rst 38h			;71e3	ff 	. 
	nop			;71e4	00 	. 
	ex af,af'			;71e5	08 	. 
	cp h			;71e6	bc 	. 
	sub b			;71e7	90 	. 
	ld b,b			;71e8	40 	@ 
	ld h,b			;71e9	60 	` 
	jr nz,$+1		;71ea	20 ff 	  . 
	nop			;71ec	00 	. 
	inc bc			;71ed	03 	. 
	ld c,00eh		;71ee	0e 0e 	. . 
	rst 38h			;71f0	ff 	. 
	ld e,003h		;71f1	1e 03 	. . 
	ld c,030h		;71f3	0e 30 	. 0 
	rla			;71f5	17 	. 
	rst 38h			;71f6	ff 	. 
	nop			;71f7	00 	. 
	rlca			;71f8	07 	. 
	add a,b			;71f9	80 	. 
	rst 38h			;71fa	ff 	. 
	nop			;71fb	00 	. 
	add hl,bc			;71fc	09 	. 
	ret p			;71fd	f0 	. 
	ret p			;71fe	f0 	. 
	ld (hl),b			;71ff	70 	p 
	add a,b			;7200	80 	. 
	rst 38h			;7201	ff 	. 
	ret p			;7202	f0 	. 
	inc bc			;7203	03 	. 
	rst 38h			;7204	ff 	. 
	nop			;7205	00 	. 
	inc c			;7206	0c 	. 
	ret p			;7207	f0 	. 
	ret p			;7208	f0 	. 
	nop			;7209	00 	. 
	nop			;720a	00 	. 
	rst 38h			;720b	ff 	. 
	ret p			;720c	f0 	. 
	inc bc			;720d	03 	. 
	rst 38h			;720e	ff 	. 
	ret po			;720f	e0 	. 
	dec b			;7210	05 	. 
	rst 38h			;7211	ff 	. 
	nop			;7212	00 	. 
	inc bc			;7213	03 	. 
	rst 38h			;7214	ff 	. 
	add a,b			;7215	80 	. 
	inc bc			;7216	03 	. 
	nop			;7217	00 	. 
	nop			;7218	00 	. 
	ret p			;7219	f0 	. 
	rst 38h			;721a	ff 	. 
	nop			;721b	00 	. 
	inc bc			;721c	03 	. 
	rst 38h			;721d	ff 	. 
	ret po			;721e	e0 	. 
	inc b			;721f	04 	. 
	ret p			;7220	f0 	. 
	rst 38h			;7221	ff 	. 
	ret po			;7222	e0 	. 
	ld b,070h		;7223	06 70 	. p 
	rst 38h			;7225	ff 	. 
	nop			;7226	00 	. 
	ex af,af'			;7227	08 	. 
	ret po			;7228	e0 	. 
	ret po			;7229	e0 	. 
	rst 38h			;722a	ff 	. 
	add a,b			;722b	80 	. 
	inc bc			;722c	03 	. 
	rst 38h			;722d	ff 	. 
	nop			;722e	00 	. 
	inc bc			;722f	03 	. 
	ld d,b			;7230	50 	P 
	ld d,b			;7231	50 	P 
	rst 38h			;7232	ff 	. 
	ld b,b			;7233	40 	@ 
	inc b			;7234	04 	. 
	add a,b			;7235	80 	. 
	add a,b			;7236	80 	. 
	rst 38h			;7237	ff 	. 
	nop			;7238	00 	. 
	rlca			;7239	07 	. 
	add a,b			;723a	80 	. 
	rst 38h			;723b	ff 	. 
	nop			;723c	00 	. 
	add hl,bc			;723d	09 	. 
	ld a,h			;723e	7c 	| 
	ld e,028h		;723f	1e 28 	. ( 
	halt			;7241	76 	v 
	ld (bc),a			;7242	02 	. 
	ld a,b			;7243	78 	x 
	ld c,h			;7244	4c 	L 
	rst 38h			;7245	ff 	. 
	nop			;7246	00 	. 
	inc c			;7247	0c 	. 
	ld bc,000ffh		;7248	01 ff 00 	. . . 
	inc bc			;724b	03 	. 
	ld (0967ah),a		;724c	32 7a 96 	2 z . 
	ld h,l			;724f	65 	e 
	ld sp,hl			;7250	f9 	. 
	dec b			;7251	05 	. 
	ld (hl),a			;7252	77 	w 
	ld b,000h		;7253	06 00 	. . 
	nop			;7255	00 	. 
	rst 38h			;7256	ff 	. 
	ld h,b			;7257	60 	` 
	inc bc			;7258	03 	. 
	add a,b			;7259	80 	. 
	rst 38h			;725a	ff 	. 
	nop			;725b	00 	. 
	ld a,(bc)			;725c	0a 	. 
	ex af,af'			;725d	08 	. 
	rra			;725e	1f 	. 
	cpl			;725f	2f 	/ 
	ld (00110h),hl		;7260	22 10 01 	" . . 
	inc sp			;7263	33 	3 
	daa			;7264	27 	' 
	nop			;7265	00 	. 
	nop			;7266	00 	. 
	add a,b			;7267	80 	. 
	ld h,b			;7268	60 	` 
	ret po			;7269	e0 	. 
	ret po			;726a	e0 	. 
	ret nz			;726b	c0 	. 
	ret nz			;726c	c0 	. 
	rst 38h			;726d	ff 	. 
	nop			;726e	00 	. 
	ld b,001h		;726f	06 01 	. . 
	nop			;7271	00 	. 
	ld l,a			;7272	6f 	o 
	ld l,a			;7273	6f 	o 
	ld c,a			;7274	4f 	O 
	ld d,a			;7275	57 	W 
	ld e,b			;7276	58 	X 
	rlca			;7277	07 	. 
	ret po			;7278	e0 	. 
	ld a,h			;7279	7c 	| 
	add a,b			;727a	80 	. 
	add a,b			;727b	80 	. 
	rst 38h			;727c	ff 	. 
	nop			;727d	00 	. 
	inc bc			;727e	03 	. 
	ret nz			;727f	c0 	. 
	rst 38h			;7280	ff 	. 
	nop			;7281	00 	. 
	dec bc			;7282	0b 	. 
	ret p			;7283	f0 	. 
	ret p			;7284	f0 	. 
	ld (hl),b			;7285	70 	p 
	add a,b			;7286	80 	. 
	rst 38h			;7287	ff 	. 
	ret p			;7288	f0 	. 
	inc bc			;7289	03 	. 
	rst 38h			;728a	ff 	. 
	nop			;728b	00 	. 
	inc c			;728c	0c 	. 
	ret p			;728d	f0 	. 
	rst 38h			;728e	ff 	. 
	nop			;728f	00 	. 
	inc bc			;7290	03 	. 
	rst 38h			;7291	ff 	. 
	ret p			;7292	f0 	. 
	inc bc			;7293	03 	. 
	ret po			;7294	e0 	. 
	ret po			;7295	e0 	. 
	ld c,080h		;7296	0e 80 	. . 
	add a,b			;7298	80 	. 
	nop			;7299	00 	. 
	nop			;729a	00 	. 
	rst 38h			;729b	ff 	. 
	add a,b			;729c	80 	. 
	inc bc			;729d	03 	. 
	ld b,b			;729e	40 	@ 
	rst 38h			;729f	ff 	. 
	nop			;72a0	00 	. 
	ld a,(bc)			;72a1	0a 	. 
	ret p			;72a2	f0 	. 
	rst 38h			;72a3	ff 	. 
	ret po			;72a4	e0 	. 
	inc bc			;72a5	03 	. 
	ret p			;72a6	f0 	. 
	rst 38h			;72a7	ff 	. 
	ret po			;72a8	e0 	. 
	inc bc			;72a9	03 	. 
	nop			;72aa	00 	. 
	nop			;72ab	00 	. 
	rst 38h			;72ac	ff 	. 
	ret po			;72ad	e0 	. 
	ld b,0ffh		;72ae	06 ff 	. . 
	nop			;72b0	00 	. 
	ld b,080h		;72b1	06 80 	. . 
	nop			;72b3	00 	. 
	rst 38h			;72b4	ff 	. 
	ret po			;72b5	e0 	. 
	dec b			;72b6	05 	. 
	rst 38h			;72b7	ff 	. 
	add a,b			;72b8	80 	. 
	inc bc			;72b9	03 	. 
	ret po			;72ba	e0 	. 
	ret po			;72bb	e0 	. 
	rst 38h			;72bc	ff 	. 
	nop			;72bd	00 	. 
	inc bc			;72be	03 	. 
	add a,b			;72bf	80 	. 
	rst 38h			;72c0	ff 	. 
	nop			;72c1	00 	. 
	rlca			;72c2	07 	. 
	inc bc			;72c3	03 	. 
	nop			;72c4	00 	. 
	rlca			;72c5	07 	. 
	nop			;72c6	00 	. 
	call m,0207ch		;72c7	fc 7c 20 	. |   
	call c,0e28ch		;72ca	dc 8c e2 	. . . 
	inc a			;72cd	3c 	< 
	rst 38h			;72ce	ff 	. 
	nop			;72cf	00 	. 
	ex af,af'			;72d0	08 	. 
	rrca			;72d1	0f 	. 
	ld e,024h		;72d2	1e 24 	. $ 
	ld de,03c38h		;72d4	11 38 3c 	. 8 < 
	djnz $+14		;72d7	10 0c 	. . 
	ld b,c			;72d9	41 	A 
	ld l,l			;72da	6d 	m 
	call pe,0c1edh		;72db	ec ed c1 	. . . 
	dec e			;72de	1d 	. 
	cp c			;72df	b9 	. 
	ret nc			;72e0	d0 	. 
	add a,b			;72e1	80 	. 
	add a,b			;72e2	80 	. 
	nop			;72e3	00 	. 
	add a,b			;72e4	80 	. 
	ret nz			;72e5	c0 	. 
	add a,b			;72e6	80 	. 
	jr nz,$+98		;72e7	20 60 	  ` 
	dec c			;72e9	0d 	. 
	ld bc,00203h		;72ea	01 03 02 	. . . 
	nop			;72ed	00 	. 
	ld bc,00303h		;72ee	01 03 03 	. . . 
	call nz,0deceh		;72f1	c4 ce de 	. . . 
	inc c			;72f4	0c 	. 
	pop bc			;72f5	c1 	. 
	jp 0c7c7h		;72f6	c3 c7 c7 	. . . 
	rst 38h			;72f9	ff 	. 
	nop			;72fa	00 	. 
	dec b			;72fb	05 	. 
	rst 38h			;72fc	ff 	. 
	add a,b			;72fd	80 	. 
	inc bc			;72fe	03 	. 
	inc bc			;72ff	03 	. 
	rst 38h			;7300	ff 	. 
	rlca			;7301	07 	. 
	inc bc			;7302	03 	. 
	rrca			;7303	0f 	. 
	nop			;7304	00 	. 
	rrca			;7305	0f 	. 
	dec bc			;7306	0b 	. 
	rst 38h			;7307	ff 	. 
	rst 0			;7308	c7 	. 
	inc b			;7309	04 	. 
	add a,(hl)			;730a	86 	. 
	inc b			;730b	04 	. 
	add a,c			;730c	81 	. 
	jp 080ffh		;730d	c3 ff 80 	. . . 
	dec b			;7310	05 	. 
	nop			;7311	00 	. 
	add a,b			;7312	80 	. 
	ret po			;7313	e0 	. 
	rst 38h			;7314	ff 	. 
	nop			;7315	00 	. 
	dec b			;7316	05 	. 
	ret p			;7317	f0 	. 
	nop			;7318	00 	. 
	ret po			;7319	e0 	. 
	nop			;731a	00 	. 
	ret p			;731b	f0 	. 
	ret p			;731c	f0 	. 
	ld (hl),b			;731d	70 	p 
	add a,b			;731e	80 	. 
	rst 38h			;731f	ff 	. 
	ret p			;7320	f0 	. 
	inc bc			;7321	03 	. 
	rst 38h			;7322	ff 	. 
	nop			;7323	00 	. 
	ex af,af'			;7324	08 	. 
	rst 38h			;7325	ff 	. 
	ret p			;7326	f0 	. 
	inc bc			;7327	03 	. 
	rst 38h			;7328	ff 	. 
	ret po			;7329	e0 	. 
	inc b			;732a	04 	. 
	add a,b			;732b	80 	. 
	rst 38h			;732c	ff 	. 
	ret p			;732d	f0 	. 
	inc bc			;732e	03 	. 
	ret po			;732f	e0 	. 
	ret po			;7330	e0 	. 
	rst 38h			;7331	ff 	. 
	ld d,b			;7332	50 	P 
	inc bc			;7333	03 	. 
	ret p			;7334	f0 	. 
	ret p			;7335	f0 	. 
	nop			;7336	00 	. 
	rst 38h			;7337	ff 	. 
	ret po			;7338	e0 	. 
	inc bc			;7339	03 	. 
	rst 38h			;733a	ff 	. 
	add a,b			;733b	80 	. 
	inc bc			;733c	03 	. 
	rst 38h			;733d	ff 	. 
	ret po			;733e	e0 	. 
	inc bc			;733f	03 	. 
	nop			;7340	00 	. 
	rst 38h			;7341	ff 	. 
	ret po			;7342	e0 	. 
	rlca			;7343	07 	. 
	ret p			;7344	f0 	. 
	rst 38h			;7345	ff 	. 
	ret po			;7346	e0 	. 
	inc bc			;7347	03 	. 
	rst 38h			;7348	ff 	. 
	nop			;7349	00 	. 
	dec b			;734a	05 	. 
	rst 38h			;734b	ff 	. 
	ret p			;734c	f0 	. 
	inc bc			;734d	03 	. 
	rst 38h			;734e	ff 	. 
	ret po			;734f	e0 	. 
	dec b			;7350	05 	. 
	nop			;7351	00 	. 
	add a,b			;7352	80 	. 
	add a,b			;7353	80 	. 
	rst 38h			;7354	ff 	. 
	ret po			;7355	e0 	. 
	ld b,080h		;7356	06 80 	. . 
	add a,b			;7358	80 	. 
	rst 38h			;7359	ff 	. 
	ret p			;735a	f0 	. 
	dec b			;735b	05 	. 
	nop			;735c	00 	. 
	add a,b			;735d	80 	. 
	add a,b			;735e	80 	. 
	rst 38h			;735f	ff 	. 
	nop			;7360	00 	. 
	dec bc			;7361	0b 	. 
	ld a,00fh		;7362	3e 0f 	> . 
	inc d			;7364	14 	. 
	dec sp			;7365	3b 	; 
	ld bc,000ffh		;7366	01 ff 00 	. . . 
	dec bc			;7369	0b 	. 
	ld bc,00001h		;736a	01 01 00 	. . . 
	ld bc,07c02h		;736d	01 02 7c 	. . | 
	and 09ah		;7370	e6 9a 	. . 
	inc a			;7372	3c 	< 
	inc e			;7373	1c 	. 
	ld c,e			;7374	4b 	K 
	rst 20h			;7375	e7 	. 
	rst 20h			;7376	e7 	. 
	rst 38h			;7377	ff 	. 
	nop			;7378	00 	. 
	inc b			;7379	04 	. 
	ld h,b			;737a	60 	` 
	or b			;737b	b0 	. 
	or b			;737c	b0 	. 
	ret nz			;737d	c0 	. 
	ld (bc),a			;737e	02 	. 
	ld (bc),a			;737f	02 	. 
	rst 38h			;7380	ff 	. 
	nop			;7381	00 	. 
	ld b,020h		;7382	06 20 	.   
	ld a,b			;7384	78 	x 
	ld a,h			;7385	7c 	| 
	dec a			;7386	3d 	= 
	add hl,bc			;7387	09 	. 
	inc bc			;7388	03 	. 
	rlca			;7389	07 	. 
	rra			;738a	1f 	. 
	rst 38h			;738b	ff 	. 
	nop			;738c	00 	. 
	inc bc			;738d	03 	. 
	jr nz,$+1		;738e	20 ff 	  . 
	ld h,b			;7390	60 	` 
	inc b			;7391	04 	. 
	rst 38h			;7392	ff 	. 
	nop			;7393	00 	. 
	ex af,af'			;7394	08 	. 
	rra			;7395	1f 	. 
	rst 38h			;7396	ff 	. 
	ld a,003h		;7397	3e 03 	> . 
	ld e,060h		;7399	1e 60 	. ` 
	call z,0401eh		;739b	cc 1e 40 	. . @ 
	add a,b			;739e	80 	. 
	add a,b			;739f	80 	. 
	nop			;73a0	00 	. 
	add a,b			;73a1	80 	. 
	ret nz			;73a2	c0 	. 
	ld b,b			;73a3	40 	@ 
	rst 38h			;73a4	ff 	. 
	nop			;73a5	00 	. 
	inc c			;73a6	0c 	. 
	ret p			;73a7	f0 	. 
	ret p			;73a8	f0 	. 
	ld (hl),b			;73a9	70 	p 
	add a,b			;73aa	80 	. 
	ret p			;73ab	f0 	. 
	rst 38h			;73ac	ff 	. 
	nop			;73ad	00 	. 
	dec bc			;73ae	0b 	. 
	ret po			;73af	e0 	. 
	ret po			;73b0	e0 	. 
	nop			;73b1	00 	. 
	ret po			;73b2	e0 	. 
	ret po			;73b3	e0 	. 
	rst 38h			;73b4	ff 	. 
	ret p			;73b5	f0 	. 
	inc bc			;73b6	03 	. 
	rst 38h			;73b7	ff 	. 
	ret po			;73b8	e0 	. 
	dec b			;73b9	05 	. 
	rst 38h			;73ba	ff 	. 
	nop			;73bb	00 	. 
	inc b			;73bc	04 	. 
	rst 38h			;73bd	ff 	. 
	add a,b			;73be	80 	. 
	inc bc			;73bf	03 	. 
	rst 38h			;73c0	ff 	. 
	ret po			;73c1	e0 	. 
	inc bc			;73c2	03 	. 
	rst 38h			;73c3	ff 	. 
	nop			;73c4	00 	. 
	ld b,0ffh		;73c5	06 ff 	. . 
	ret po			;73c7	e0 	. 
	ex af,af'			;73c8	08 	. 
	rst 38h			;73c9	ff 	. 
	nop			;73ca	00 	. 
	inc bc			;73cb	03 	. 
	ld (hl),b			;73cc	70 	p 
	ld d,b			;73cd	50 	P 
	ld d,b			;73ce	50 	P 
	ld b,b			;73cf	40 	@ 
	ld b,b			;73d0	40 	@ 
	rst 38h			;73d1	ff 	. 
	nop			;73d2	00 	. 
	ex af,af'			;73d3	08 	. 
	rst 38h			;73d4	ff 	. 
	ret po			;73d5	e0 	. 
	dec b			;73d6	05 	. 
	rst 38h			;73d7	ff 	. 
	add a,b			;73d8	80 	. 
	inc bc			;73d9	03 	. 
	rst 38h			;73da	ff 	. 
	ld b,b			;73db	40 	@ 
	inc bc			;73dc	03 	. 
	nop			;73dd	00 	. 
	rst 38h			;73de	ff 	. 
	add a,b			;73df	80 	. 
	inc bc			;73e0	03 	. 
	nop			;73e1	00 	. 
	rst 38h			;73e2	ff 	. 
	rst 38h			;73e3	ff 	. 
	nop			;73e4	00 	. 
	ld (bc),a			;73e5	02 	. 
	ld (bc),a			;73e6	02 	. 
	rst 38h			;73e7	ff 	. 
	nop			;73e8	00 	. 
	inc bc			;73e9	03 	. 
	inc b			;73ea	04 	. 
	inc c			;73eb	0c 	. 
	add a,b			;73ec	80 	. 
	ret			;73ed	c9 	. 
	defb 0ddh,0ddh,05dh	;illegal sequence		;73ee	dd dd 5d 	. . ] 
	add a,b			;73f1	80 	. 
	defb 0ddh,0ddh,080h	;illegal sequence		;73f2	dd dd 80 	. . . 
	and b			;73f5	a0 	. 
	and b			;73f6	a0 	. 
	add a,b			;73f7	80 	. 
	nop			;73f8	00 	. 
	add a,b			;73f9	80 	. 
	sub b			;73fa	90 	. 
	sbc a,b			;73fb	98 	. 
	inc c			;73fc	0c 	. 
	inc b			;73fd	04 	. 
	ex af,af'			;73fe	08 	. 
	rst 38h			;73ff	ff 	. 
	inc c			;7400	0c 	. 
	inc bc			;7401	03 	. 
	dec c			;7402	0d 	. 
	dec c			;7403	0d 	. 
	defb 0ddh,0ddh,0ebh	;illegal sequence		;7404	dd dd eb 	. . . 
	rst 30h			;7407	f7 	. 
	rst 30h			;7408	f7 	. 
	add a,b			;7409	80 	. 
	ld (0989ch),hl		;740a	22 9c 98 	" . . 
	sub b			;740d	90 	. 
	adc a,b			;740e	88 	. 
	rst 38h			;740f	ff 	. 
	sbc a,b			;7410	98 	. 
	inc bc			;7411	03 	. 
	ld e,b			;7412	58 	X 
	ret c			;7413	d8 	. 
	dec c			;7414	0d 	. 
	inc b			;7415	04 	. 
	rst 38h			;7416	ff 	. 
	nop			;7417	00 	. 
	ld b,03eh		;7418	06 3e 	. > 
	ld a,01ch		;741a	3e 1c 	> . 
	ld (01c3eh),hl		;741c	22 3e 1c 	" > . 
	inc e			;741f	1c 	. 
	ex af,af'			;7420	08 	. 
	ret c			;7421	d8 	. 
	djnz $+1		;7422	10 ff 	. . 
	nop			;7424	00 	. 
	rlca			;7425	07 	. 
	add a,b			;7426	80 	. 
	add a,b			;7427	80 	. 
	rst 38h			;7428	ff 	. 
	nop			;7429	00 	. 
	inc bc			;742a	03 	. 
	ret p			;742b	f0 	. 
	ret p			;742c	f0 	. 
	rst 38h			;742d	ff 	. 
	add a,b			;742e	80 	. 
	dec b			;742f	05 	. 
	rst 38h			;7430	ff 	. 
	ret p			;7431	f0 	. 
	inc bc			;7432	03 	. 
	rst 38h			;7433	ff 	. 
	add a,b			;7434	80 	. 
	inc b			;7435	04 	. 
	nop			;7436	00 	. 
	rst 38h			;7437	ff 	. 
	ret po			;7438	e0 	. 
	inc b			;7439	04 	. 
	rst 38h			;743a	ff 	. 
	ret p			;743b	f0 	. 
	inc b			;743c	04 	. 
	ret po			;743d	e0 	. 
	ret po			;743e	e0 	. 
	add a,b			;743f	80 	. 
	rst 38h			;7440	ff 	. 
	ret po			;7441	e0 	. 
	inc bc			;7442	03 	. 
	ret p			;7443	f0 	. 
	ret p			;7444	f0 	. 
	ret po			;7445	e0 	. 
	ret p			;7446	f0 	. 
	ld b,b			;7447	40 	@ 
	rst 38h			;7448	ff 	. 
	ret po			;7449	e0 	. 
	rlca			;744a	07 	. 
	rst 38h			;744b	ff 	. 
	add a,b			;744c	80 	. 
	inc bc			;744d	03 	. 
	rst 38h			;744e	ff 	. 
	nop			;744f	00 	. 
	ld b,040h		;7450	06 40 	. @ 
	ld d,b			;7452	50 	P 
	ld (hl),b			;7453	70 	p 
	rst 38h			;7454	ff 	. 
	ret p			;7455	f0 	. 
	dec b			;7456	05 	. 
	add a,b			;7457	80 	. 
	add a,b			;7458	80 	. 
	rst 38h			;7459	ff 	. 
	nop			;745a	00 	. 
	ld b,0ffh		;745b	06 ff 	. . 
	rst 38h			;745d	ff 	. 
	xor e			;745e	ab 	. 
	nop			;745f	00 	. 
	ret nz			;7460	c0 	. 
	rlca			;7461	07 	. 
	add a,b			;7462	80 	. 
	ret nz			;7463	c0 	. 
	rrca			;7464	0f 	. 
	ret nz			;7465	c0 	. 
	ret nz			;7466	c0 	. 
	rrca			;7467	0f 	. 
	nop			;7468	00 	. 
	pop bc			;7469	c1 	. 
	ld a,(bc)			;746a	0a 	. 
	ld b,b			;746b	40 	@ 
	pop bc			;746c	c1 	. 
	ld a,(bc)			;746d	0a 	. 
	add a,b			;746e	80 	. 
	pop bc			;746f	c1 	. 
	ld a,(bc)			;7470	0a 	. 
	ret nz			;7471	c0 	. 
	pop bc			;7472	c1 	. 
	ld b,000h		;7473	06 00 	. . 
	jp nz,04006h		;7475	c2 06 40 	. . @ 
	jp nz,08002h		;7478	c2 02 80 	. . . 
	jp nz,0a005h		;747b	c2 05 a0 	. . . 
	jp nz,0e005h		;747e	c2 05 e0 	. . . 
	jp nz,02005h		;7481	c2 05 20 	. .   
	jp 06005h		;7484	c3 05 60 	. . ` 
	jp 0a005h		;7487	c3 05 a0 	. . . 
	jp 0e005h		;748a	c3 05 e0 	. . . 
	jp 02005h		;748d	c3 05 20 	. .   
	call nz,06005h		;7490	c4 05 60 	. . ` 
	call nz,0a005h		;7493	c4 05 a0 	. . . 
	call nz,0e005h		;7496	c4 05 e0 	. . . 
	call nz,02005h		;7499	c4 05 20 	. .   
	push bc			;749c	c5 	. 
	dec b			;749d	05 	. 
	ld h,b			;749e	60 	` 
	push bc			;749f	c5 	. 
	dec b			;74a0	05 	. 
	and b			;74a1	a0 	. 
	push bc			;74a2	c5 	. 
	dec b			;74a3	05 	. 
	ret po			;74a4	e0 	. 
	push bc			;74a5	c5 	. 
	dec b			;74a6	05 	. 
	jr nz,$-56		;74a7	20 c6 	  . 
	dec b			;74a9	05 	. 
	ld h,b			;74aa	60 	` 
	add a,005h		;74ab	c6 05 	. . 
	and b			;74ad	a0 	. 
	add a,001h		;74ae	c6 01 	. . 
	ret po			;74b0	e0 	. 
	add a,001h		;74b1	c6 01 	. . 
	nop			;74b3	00 	. 
	rst 0			;74b4	c7 	. 
	ld bc,0c720h		;74b5	01 20 c7 	.   . 
	ld bc,0c740h		;74b8	01 40 c7 	. @ . 
	ld bc,0c760h		;74bb	01 60 c7 	. ` . 
	ld d,l			;74be	55 	U 
	add a,b			;74bf	80 	. 
	rst 0			;74c0	c7 	. 
	ld d,l			;74c1	55 	U 
	nop			;74c2	00 	. 
	ret z			;74c3	c8 	. 
	dec d			;74c4	15 	. 
	add a,b			;74c5	80 	. 
	ret z			;74c6	c8 	. 
	dec d			;74c7	15 	. 
	ret po			;74c8	e0 	. 
	ret z			;74c9	c8 	. 
	ld bc,0c940h		;74ca	01 40 c9 	. @ . 
	ld bc,0c960h		;74cd	01 60 c9 	. ` . 
	ld bc,0c980h		;74d0	01 80 c9 	. . . 
	ld bc,0ca00h		;74d3	01 00 ca 	. . . 
	ld bc,0ca20h		;74d6	01 20 ca 	.   . 
	ld bc,0ca40h		;74d9	01 40 ca 	. @ . 
	ld bc,0ca60h		;74dc	01 60 ca 	. ` . 
	ld bc,0c9a0h		;74df	01 a0 c9 	. . . 
	ld bc,0c9c0h		;74e2	01 c0 c9 	. . . 
	ld bc,0c9e0h		;74e5	01 e0 c9 	. . . 
	ld d,l			;74e8	55 	U 
	nop			;74e9	00 	. 
	add hl,bc			;74ea	09 	. 
	rst 38h			;74eb	ff 	. 
	ld d,l			;74ec	55 	U 
	nop			;74ed	00 	. 
	rrca			;74ee	0f 	. 
	rst 38h			;74ef	ff 	. 
	ld d,l			;74f0	55 	U 
	nop			;74f1	00 	. 
	dec c			;74f2	0d 	. 
	rra			;74f3	1f 	. 
	ret po			;74f4	e0 	. 
	ld d,l			;74f5	55 	U 
	nop			;74f6	00 	. 
	dec c			;74f7	0d 	. 
	rlca			;74f8	07 	. 
	ret m			;74f9	f8 	. 
	ld d,l			;74fa	55 	U 
	nop			;74fb	00 	. 
	rrca			;74fc	0f 	. 
	rlca			;74fd	07 	. 
	ret m			;74fe	f8 	. 
	ld d,l			;74ff	55 	U 
	nop			;7500	00 	. 
	dec c			;7501	0d 	. 
	rra			;7502	1f 	. 
	ret po			;7503	e0 	. 
	ld d,l			;7504	55 	U 
	nop			;7505	00 	. 
	rrca			;7506	0f 	. 
	inc bc			;7507	03 	. 
	inc e			;7508	1c 	. 
	ret po			;7509	e0 	. 
	ld d,l			;750a	55 	U 
	nop			;750b	00 	. 
	dec bc			;750c	0b 	. 
	rlca			;750d	07 	. 
	jr c,$-62		;750e	38 c0 	8 . 
	ld d,l			;7510	55 	U 
	nop			;7511	00 	. 
	rrca			;7512	0f 	. 
	ld bc,0300eh		;7513	01 0e 30 	. . 0 
	ret nz			;7516	c0 	. 
	ld d,l			;7517	55 	U 
	nop			;7518	00 	. 
	add hl,bc			;7519	09 	. 
	inc bc			;751a	03 	. 
	inc c			;751b	0c 	. 
	ld (hl),b			;751c	70 	p 
	add a,b			;751d	80 	. 
	ld d,l			;751e	55 	U 
	nop			;751f	00 	. 
	rrca			;7520	0f 	. 
	ld bc,01806h		;7521	01 06 18 	. . . 
	ld h,b			;7524	60 	` 
	add a,b			;7525	80 	. 
	ld d,l			;7526	55 	U 
	nop			;7527	00 	. 
	rlca			;7528	07 	. 
	ld bc,01806h		;7529	01 06 18 	. . . 
	ld h,b			;752c	60 	` 
	add a,b			;752d	80 	. 
	ld d,l			;752e	55 	U 
	nop			;752f	00 	. 
	rrca			;7530	0f 	. 
	ld bc,00c02h		;7531	01 02 0c 	. . . 
	djnz $+98		;7534	10 60 	. ` 
	add a,b			;7536	80 	. 
	ld d,l			;7537	55 	U 
	nop			;7538	00 	. 
	dec b			;7539	05 	. 
	ld bc,00806h		;753a	01 06 08 	. . . 
	jr nc,$+66		;753d	30 40 	0 @ 
	add a,b			;753f	80 	. 
	ld d,l			;7540	55 	U 
	nop			;7541	00 	. 
	rrca			;7542	0f 	. 
	ld bc,00402h		;7543	01 02 04 	. . . 
	ex af,af'			;7546	08 	. 
	jr nc,$+66		;7547	30 40 	0 @ 
	add a,b			;7549	80 	. 
	ld d,l			;754a	55 	U 
	nop			;754b	00 	. 
	inc bc			;754c	03 	. 
	ld bc,00c02h		;754d	01 02 0c 	. . . 
	djnz $+34		;7550	10 20 	.   
	ld b,b			;7552	40 	@ 
	add a,b			;7553	80 	. 
	ld d,l			;7554	55 	U 
	nop			;7555	00 	. 
	djnz $+3		;7556	10 01 	. . 
	ld (bc),a			;7558	02 	. 
	inc b			;7559	04 	. 
	ex af,af'			;755a	08 	. 
	djnz $+34		;755b	10 20 	.   
	ld b,b			;755d	40 	@ 
	add a,b			;755e	80 	. 
	ld bc,00402h		;755f	01 02 04 	. . . 
	ex af,af'			;7562	08 	. 
	djnz $+34		;7563	10 20 	.   
	ld b,b			;7565	40 	@ 
	add a,b			;7566	80 	. 
	ld d,l			;7567	55 	U 
	nop			;7568	00 	. 
	rrca			;7569	0f 	. 
	ld bc,00201h		;756a	01 01 02 	. . . 
	inc b			;756d	04 	. 
	ex af,af'			;756e	08 	. 
	djnz $+18		;756f	10 10 	. . 
	jr nz,$+66		;7571	20 40 	  @ 
	inc b			;7573	04 	. 
	ex af,af'			;7574	08 	. 
	djnz $+18		;7575	10 10 	. . 
	jr nz,$+66		;7577	20 40 	  @ 
	add a,b			;7579	80 	. 
	ld d,l			;757a	55 	U 
	nop			;757b	00 	. 
	djnz $+3		;757c	10 01 	. . 
	ld bc,00402h		;757e	01 02 04 	. . . 
	inc b			;7581	04 	. 
	ex af,af'			;7582	08 	. 
	djnz $+18		;7583	10 10 	. . 
	jr nz,$+10		;7585	20 08 	  . 
	djnz $+18		;7587	10 10 	. . 
	jr nz,$+66		;7589	20 40 	  @ 
	ld b,b			;758b	40 	@ 
	add a,b			;758c	80 	. 
	ld d,l			;758d	55 	U 
	nop			;758e	00 	. 
	djnz $+3		;758f	10 01 	. . 
	ld bc,00202h		;7591	01 02 02 	. . . 
	inc b			;7594	04 	. 
	inc b			;7595	04 	. 
	ex af,af'			;7596	08 	. 
	ex af,af'			;7597	08 	. 
	djnz $+18		;7598	10 10 	. . 
	jr nz,$+34		;759a	20 20 	    
	ld b,b			;759c	40 	@ 
	ld b,b			;759d	40 	@ 
	add a,b			;759e	80 	. 
	add a,b			;759f	80 	. 
	ld d,l			;75a0	55 	U 
	nop			;75a1	00 	. 
	djnz $+3		;75a2	10 01 	. . 
	ld bc,00255h		;75a4	01 55 02 	. U . 
	inc bc			;75a7	03 	. 
	inc b			;75a8	04 	. 
	inc b			;75a9	04 	. 
	ex af,af'			;75aa	08 	. 
	ex af,af'			;75ab	08 	. 
	jr nz,$+34		;75ac	20 20 	    
	ld b,b			;75ae	40 	@ 
	ld b,b			;75af	40 	@ 
	ld d,l			;75b0	55 	U 
	add a,b			;75b1	80 	. 
	inc bc			;75b2	03 	. 
	ld d,l			;75b3	55 	U 
	nop			;75b4	00 	. 
	rrca			;75b5	0f 	. 
	ld d,l			;75b6	55 	U 
	ld bc,05504h		;75b7	01 04 55 	. . U 
	ld (bc),a			;75ba	02 	. 
	inc bc			;75bb	03 	. 
	ld d,l			;75bc	55 	U 
	inc b			;75bd	04 	. 
	inc bc			;75be	03 	. 
	ld d,l			;75bf	55 	U 
	ld b,b			;75c0	40 	@ 
	inc bc			;75c1	03 	. 
	ld d,l			;75c2	55 	U 
	add a,b			;75c3	80 	. 
	inc bc			;75c4	03 	. 
	ld d,l			;75c5	55 	U 
	nop			;75c6	00 	. 
	rrca			;75c7	0f 	. 
	ld d,l			;75c8	55 	U 
	ld bc,05506h		;75c9	01 06 55 	. . U 
	ld (bc),a			;75cc	02 	. 
	dec b			;75cd	05 	. 
	ld d,l			;75ce	55 	U 
	add a,b			;75cf	80 	. 
	dec b			;75d0	05 	. 
	ld d,l			;75d1	55 	U 
	nop			;75d2	00 	. 
	ld c,055h		;75d3	0e 55 	. U 
	ld bc,0550ah		;75d5	01 0a 55 	. . U 
	ld (bc),a			;75d8	02 	. 
	inc bc			;75d9	03 	. 
	ld d,l			;75da	55 	U 
	add a,b			;75db	80 	. 
	inc bc			;75dc	03 	. 
	ld d,l			;75dd	55 	U 
	nop			;75de	00 	. 
	dec c			;75df	0d 	. 
	ld d,l			;75e0	55 	U 
	ld bc,05510h		;75e1	01 10 55 	. . U 
	nop			;75e4	00 	. 
	ld d,001h		;75e5	16 01 	. . 
	inc bc			;75e7	03 	. 
	inc bc			;75e8	03 	. 
	ld bc,00055h		;75e9	01 55 00 	. U . 
	inc c			;75ec	0c 	. 
	add a,b			;75ed	80 	. 
	ret nz			;75ee	c0 	. 
	ret nz			;75ef	c0 	. 
	add a,b			;75f0	80 	. 
	ld d,l			;75f1	55 	U 
	nop			;75f2	00 	. 
	ld a,(bc)			;75f3	0a 	. 
	ld bc,00707h		;75f4	01 07 07 	. . . 
	rrca			;75f7	0f 	. 
	rrca			;75f8	0f 	. 
	rlca			;75f9	07 	. 
	rlca			;75fa	07 	. 
	ld bc,00055h		;75fb	01 55 00 	. U . 
	ex af,af'			;75fe	08 	. 
	add a,b			;75ff	80 	. 
	ret po			;7600	e0 	. 
	ret po			;7601	e0 	. 
	ret p			;7602	f0 	. 
	ret p			;7603	f0 	. 
	ret po			;7604	e0 	. 
	ret po			;7605	e0 	. 
	add a,b			;7606	80 	. 
	ld d,l			;7607	55 	U 
	nop			;7608	00 	. 
	ld b,003h		;7609	06 03 	. . 
	rrca			;760b	0f 	. 
	rra			;760c	1f 	. 
	rra			;760d	1f 	. 
	ld d,l			;760e	55 	U 
	ccf			;760f	3f 	? 
	inc b			;7610	04 	. 
	rra			;7611	1f 	. 
	rra			;7612	1f 	. 
	rrca			;7613	0f 	. 
	inc bc			;7614	03 	. 
	ld d,l			;7615	55 	U 
	nop			;7616	00 	. 
	inc b			;7617	04 	. 
	ret nz			;7618	c0 	. 
	ret p			;7619	f0 	. 
	ret m			;761a	f8 	. 
	ret m			;761b	f8 	. 
	ld d,l			;761c	55 	U 
	call m,0f804h		;761d	fc 04 f8 	. . . 
	ret m			;7620	f8 	. 
	ret p			;7621	f0 	. 
	ret nz			;7622	c0 	. 
	nop			;7623	00 	. 
	nop			;7624	00 	. 
	rlca			;7625	07 	. 
	rra			;7626	1f 	. 
	ccf			;7627	3f 	? 
	ld a,a			;7628	7f 	 
	ld a,a			;7629	7f 	 
	ld d,l			;762a	55 	U 
	rst 38h			;762b	ff 	. 
	ld b,07fh		;762c	06 7f 	.  
	ld a,a			;762e	7f 	 
	ccf			;762f	3f 	? 
	rra			;7630	1f 	. 
	rlca			;7631	07 	. 
	ret po			;7632	e0 	. 
	ret m			;7633	f8 	. 
	call m,0fefeh		;7634	fc fe fe 	. . . 
	ld d,l			;7637	55 	U 
	rst 38h			;7638	ff 	. 
	ld b,0feh		;7639	06 fe 	. . 
	cp 0fch		;763b	fe fc 	. . 
	ret m			;763d	f8 	. 
	ret po			;763e	e0 	. 
	ld d,l			;763f	55 	U 
	nop			;7640	00 	. 
	inc bc			;7641	03 	. 
	inc bc			;7642	03 	. 
	rlca			;7643	07 	. 
	rrca			;7644	0f 	. 
	rra			;7645	1f 	. 
	rra			;7646	1f 	. 
	ccf			;7647	3f 	? 
	ccf			;7648	3f 	? 
	ld d,l			;7649	55 	U 
	ld a,a			;764a	7f 	 
	inc bc			;764b	03 	. 
	ld d,l			;764c	55 	U 
	rst 38h			;764d	ff 	. 
	inc bc			;764e	03 	. 
	rlca			;764f	07 	. 
	ccf			;7650	3f 	? 
	ld d,l			;7651	55 	U 
	rst 38h			;7652	ff 	. 
	ld c,0e0h		;7653	0e e0 	. . 
	call m,0ff55h		;7655	fc 55 ff 	. U . 
	ld c,055h		;7658	0e 55 	. U 
	nop			;765a	00 	. 
	inc bc			;765b	03 	. 
	ret nz			;765c	c0 	. 
	ret po			;765d	e0 	. 
	ret p			;765e	f0 	. 
	ret m			;765f	f8 	. 
	ret m			;7660	f8 	. 
	call m,055fch		;7661	fc fc 55 	. . U 
	cp 003h		;7664	fe 03 	. . 
	ld d,l			;7666	55 	U 
	rst 38h			;7667	ff 	. 
	ld b,055h		;7668	06 55 	. U 
	ld a,a			;766a	7f 	 
	inc bc			;766b	03 	. 
	ccf			;766c	3f 	? 
	ccf			;766d	3f 	? 
	rra			;766e	1f 	. 
	rra			;766f	1f 	. 
	rrca			;7670	0f 	. 
	rlca			;7671	07 	. 
	inc bc			;7672	03 	. 
	ld d,l			;7673	55 	U 
	nop			;7674	00 	. 
	inc bc			;7675	03 	. 
	ld d,l			;7676	55 	U 
	rst 38h			;7677	ff 	. 
	ld c,03fh		;7678	0e 3f 	. ? 
	rlca			;767a	07 	. 
	ld d,l			;767b	55 	U 
	rst 38h			;767c	ff 	. 
	ld c,0fch		;767d	0e fc 	. . 
	ret po			;767f	e0 	. 
	ld d,l			;7680	55 	U 
	rst 38h			;7681	ff 	. 
	inc bc			;7682	03 	. 
	ld d,l			;7683	55 	U 
	cp 003h		;7684	fe 03 	. . 
	call m,0f8fch		;7686	fc fc f8 	. . . 
	ret m			;7689	f8 	. 
	ret p			;768a	f0 	. 
	ret po			;768b	e0 	. 
	ret nz			;768c	c0 	. 
	ld d,l			;768d	55 	U 
	nop			;768e	00 	. 
	inc bc			;768f	03 	. 
	ld d,l			;7690	55 	U 
	ld d,l			;7691	55 	U 
	rst 38h			;7692	ff 	. 
	nop			;7693	00 	. 
	rst 38h			;7694	ff 	. 
	rst 38h			;7695	ff 	. 
	nop			;7696	00 	. 
	add a,d			;7697	82 	. 
	inc a			;7698	3c 	< 
	ld h,(hl)			;7699	66 	f 
	ld h,(hl)			;769a	66 	f 
	nop			;769b	00 	. 
	call z,078cch		;769c	cc cc 78 	. . x 
	nop			;769f	00 	. 
	inc b			;76a0	04 	. 
	ld b,006h		;76a1	06 06 	. . 
	nop			;76a3	00 	. 
	inc c			;76a4	0c 	. 
	inc c			;76a5	0c 	. 
	ex af,af'			;76a6	08 	. 
	nop			;76a7	00 	. 
	inc a			;76a8	3c 	< 
	ld b,006h		;76a9	06 06 	. . 
	jr c,$-62		;76ab	38 c0 	8 . 
	ret nz			;76ad	c0 	. 
	ld a,b			;76ae	78 	x 
	nop			;76af	00 	. 
	inc a			;76b0	3c 	< 
	ld b,006h		;76b1	06 06 	. . 
	jr c,$+14		;76b3	38 0c 	8 . 
	inc c			;76b5	0c 	. 
	ld a,b			;76b6	78 	x 
	nop			;76b7	00 	. 
	inc h			;76b8	24 	$ 
	ld h,(hl)			;76b9	66 	f 
	ld h,(hl)			;76ba	66 	f 
	jr c,$+14		;76bb	38 0c 	8 . 
	inc c			;76bd	0c 	. 
	ex af,af'			;76be	08 	. 
	nop			;76bf	00 	. 
	inc a			;76c0	3c 	< 
	ld h,b			;76c1	60 	` 
	ld h,b			;76c2	60 	` 
	jr c,$+14		;76c3	38 0c 	8 . 
	inc c			;76c5	0c 	. 
	ld a,b			;76c6	78 	x 
	nop			;76c7	00 	. 
	inc a			;76c8	3c 	< 
	ld h,b			;76c9	60 	` 
	ld h,b			;76ca	60 	` 
	jr c,$-50		;76cb	38 cc 	8 . 
	call z,00078h		;76cd	cc 78 00 	. x . 
	inc a			;76d0	3c 	< 
	ld b,006h		;76d1	06 06 	. . 
	nop			;76d3	00 	. 
	inc c			;76d4	0c 	. 
	inc c			;76d5	0c 	. 
	ex af,af'			;76d6	08 	. 
	nop			;76d7	00 	. 
	inc a			;76d8	3c 	< 
	ld h,(hl)			;76d9	66 	f 
	ld h,(hl)			;76da	66 	f 
	jr c,$-50		;76db	38 cc 	8 . 
	call z,00078h		;76dd	cc 78 00 	. x . 
	inc a			;76e0	3c 	< 
	ld h,(hl)			;76e1	66 	f 
	ld h,(hl)			;76e2	66 	f 
	jr c,$+14		;76e3	38 0c 	8 . 
	inc c			;76e5	0c 	. 
	ld a,b			;76e6	78 	x 
	rst 38h			;76e7	ff 	. 
	nop			;76e8	00 	. 
	inc bc			;76e9	03 	. 
	ld h,h			;76ea	64 	d 
	ld l,b			;76eb	68 	h 
	djnz $+46		;76ec	10 2c 	. , 
	ld c,h			;76ee	4c 	L 
	nop			;76ef	00 	. 
	rst 38h			;76f0	ff 	. 
	ld bc,0ff06h		;76f1	01 06 ff 	. . . 
	nop			;76f4	00 	. 
	ld a,(de)			;76f5	1a 	. 
	rst 38h			;76f6	ff 	. 
	add a,b			;76f7	80 	. 
	ld b,000h		;76f8	06 00 	. . 
	nop			;76fa	00 	. 
	ld a,h			;76fb	7c 	| 
	add a,d			;76fc	82 	. 
	cp d			;76fd	ba 	. 
	and d			;76fe	a2 	. 
	cp d			;76ff	ba 	. 
	add a,d			;7700	82 	. 
	ld a,h			;7701	7c 	| 
	nop			;7702	00 	. 
	djnz $+58		;7703	10 38 	. 8 
	jr c,$+94		;7705	38 5c 	8 \ 
	ld e,h			;7707	5c 	\ 
	xor 0eeh		;7708	ee ee 	. . 
	nop			;770a	00 	. 
	call pe,0eceeh		;770b	ec ee ec 	. . . 
	ret po			;770e	e0 	. 
	call pe,0eceeh		;770f	ec ee ec 	. . . 
	nop			;7712	00 	. 
	ld l,h			;7713	6c 	l 
	xor 0ffh		;7714	ee ff 	. . 
	ret po			;7716	e0 	. 
	inc bc			;7717	03 	. 
	xor 06ch		;7718	ee 6c 	. l 
	nop			;771a	00 	. 
	call pe,0eeffh		;771b	ec ff ee 	. . . 
	dec b			;771e	05 	. 
	call pe,0fe00h		;771f	ec 00 fe 	. . . 
	cp 000h		;7722	fe 00 	. . 
	cp 0e0h		;7724	fe e0 	. . 
	cp 0feh		;7726	fe fe 	. . 
	nop			;7728	00 	. 
	cp 0feh		;7729	fe fe 	. . 
	nop			;772b	00 	. 
	cp 0ffh		;772c	fe ff 	. . 
	ret po			;772e	e0 	. 
	inc bc			;772f	03 	. 
	nop			;7730	00 	. 
	ld l,h			;7731	6c 	l 
	xor 0e0h		;7732	ee e0 	. . 
	xor 0e6h		;7734	ee e6 	. . 
	xor 06ch		;7736	ee 6c 	. l 
	nop			;7738	00 	. 
	rst 38h			;7739	ff 	. 
	xor 003h		;773a	ee 03 	. . 
	cp 0ffh		;773c	fe ff 	. . 
	xor 003h		;773e	ee 03 	. . 
	nop			;7740	00 	. 
	rst 38h			;7741	ff 	. 
	jr c,$+9		;7742	38 07 	8 . 
	nop			;7744	00 	. 
	rst 38h			;7745	ff 	. 
	ld c,004h		;7746	0e 04 	. . 
	xor 0eeh		;7748	ee ee 	. . 
	ld l,h			;774a	6c 	l 
	nop			;774b	00 	. 
	xor 0ech		;774c	ee ec 	. . 
	ret pe			;774e	e8 	. 
	ret po			;774f	e0 	. 
	ret pe			;7750	e8 	. 
	call pe,000eeh		;7751	ec ee 00 	. . . 
	rst 38h			;7754	ff 	. 
	ret po			;7755	e0 	. 
	inc b			;7756	04 	. 
	jp po,0eee6h		;7757	e2 e6 ee 	. . . 
	nop			;775a	00 	. 
	add a,d			;775b	82 	. 
	add a,0ffh		;775c	c6 ff 	. . 
	xor 005h		;775e	ee 05 	. . 
	nop			;7760	00 	. 
	add a,0e6h		;7761	c6 e6 	. . 
	halt			;7763	76 	v 
	cp d			;7764	ba 	. 
	call c,0c6ceh		;7765	dc ce c6 	. . . 
	nop			;7768	00 	. 
	ld l,h			;7769	6c 	l 
	rst 38h			;776a	ff 	. 
	xor 005h		;776b	ee 05 	. . 
	ld l,h			;776d	6c 	l 
	nop			;776e	00 	. 
	call pe,0eeeeh		;776f	ec ee ee 	. . . 
	call pe,0e0ffh		;7772	ec ff e0 	. . . 
	inc bc			;7775	03 	. 
	rst 38h			;7776	ff 	. 
	nop			;7777	00 	. 
	ld b,018h		;7778	06 18 	. . 
	jr $+2		;777a	18 00 	. . 
	call pe,0eceeh		;777c	ec ee ec 	. . . 
	ret po			;777f	e0 	. 
	ret pe			;7780	e8 	. 
	call pe,000eeh		;7781	ec ee 00 	. . . 
	ld l,(hl)			;7784	6e 	n 
	and 072h		;7785	e6 72 	. r 
	jr c,$-98		;7787	38 9c 	8 . 
	adc a,0ech		;7789	ce ec 	. . 
	nop			;778b	00 	. 
	cp 0feh		;778c	fe fe 	. . 
	nop			;778e	00 	. 
	ld h,b			;778f	60 	` 
	ld h,b			;7790	60 	` 
	ld a,(hl)			;7791	7e 	~ 
	ld a,000h		;7792	3e 00 	> . 
	rst 38h			;7794	ff 	. 
	xor 006h		;7795	ee 06 	. . 
	ld l,h			;7797	6c 	l 
	nop			;7798	00 	. 
	rst 38h			;7799	ff 	. 
	xor 003h		;779a	ee 03 	. . 
	ld l,h			;779c	6c 	l 
	ld l,h			;779d	6c 	l 
	jr z,$+42		;779e	28 28 	( ( 
	nop			;77a0	00 	. 
	rst 38h			;77a1	ff 	. 
	xor 005h		;77a2	ee 05 	. . 
	add a,082h		;77a4	c6 82 	. . 
	nop			;77a6	00 	. 
	xor 0eeh		;77a7	ee ee 	. . 
	ld (hl),h			;77a9	74 	t 
	jr c,$+94		;77aa	38 5c 	8 \ 
	xor 0eeh		;77ac	ee ee 	. . 
	nop			;77ae	00 	. 
	rst 38h			;77af	ff 	. 
	xor 003h		;77b0	ee 03 	. . 
	ld l,h			;77b2	6c 	l 
	rst 38h			;77b3	ff 	. 
	jr c,$+5		;77b4	38 03 	8 . 
	nop			;77b6	00 	. 
	or 0eeh		;77b7	f6 ee 	. . 
	inc e			;77b9	1c 	. 
	jr c,$+114		;77ba	38 70 	8 p 
	xor 0deh		;77bc	ee de 	. . 
	rst 38h			;77be	ff 	. 
	nop			;77bf	00 	. 
	inc hl			;77c0	23 	# 
	call m,0fffch		;77c1	fc fc ff 	. . . 
	nop			;77c4	00 	. 
	inc b			;77c5	04 	. 
	rst 38h			;77c6	ff 	. 
	ld a,a			;77c7	7f 	 
	rlca			;77c8	07 	. 
	rst 38h			;77c9	ff 	. 
	nop			;77ca	00 	. 
	ex af,af'			;77cb	08 	. 
	rst 38h			;77cc	ff 	. 
	call m,0f808h		;77cd	fc 08 f8 	. . . 
	cp 0ffh		;77d0	fe ff 	. . 
	ld a,a			;77d2	7f 	 
	ld b,000h		;77d3	06 00 	. . 
	ld bc,0cf87h		;77d5	01 87 cf 	. . . 
	rst 38h			;77d8	ff 	. 
	nop			;77d9	00 	. 
	inc b			;77da	04 	. 
	ld a,h			;77db	7c 	| 
	rst 38h			;77dc	ff 	. 
	call m,0ff07h		;77dd	fc 07 ff 	. . . 
	inc bc			;77e0	03 	. 
	ex af,af'			;77e1	08 	. 
	rst 38h			;77e2	ff 	. 
	ccf			;77e3	3f 	? 
	ex af,af'			;77e4	08 	. 
	add a,b			;77e5	80 	. 
	ret po			;77e6	e0 	. 
	ret p			;77e7	f0 	. 
	ret m			;77e8	f8 	. 
	ret m			;77e9	f8 	. 
	rst 38h			;77ea	ff 	. 
	call m,08003h		;77eb	fc 03 80 	. . . 
	ret po			;77ee	e0 	. 
	ret p			;77ef	f0 	. 
	ret m			;77f0	f8 	. 
	ret m			;77f1	f8 	. 
	call m,0fefch		;77f2	fc fc fe 	. . . 
	rst 38h			;77f5	ff 	. 
	nop			;77f6	00 	. 
	dec b			;77f7	05 	. 
	rst 38h			;77f8	ff 	. 
	ld a,a			;77f9	7f 	 
	inc bc			;77fa	03 	. 
	rst 38h			;77fb	ff 	. 
	inc bc			;77fc	03 	. 
	inc b			;77fd	04 	. 
	rst 38h			;77fe	ff 	. 
	di			;77ff	f3 	. 
	inc b			;7800	04 	. 
	rst 38h			;7801	ff 	. 
	ld a,a			;7802	7f 	 
	ex af,af'			;7803	08 	. 
	rst 38h			;7804	ff 	. 
	call m,0ff08h		;7805	fc 08 ff 	. . . 
	nop			;7808	00 	. 
	inc c			;7809	0c 	. 
	rst 38h			;780a	ff 	. 
	call m,03f04h		;780b	fc 04 3f 	. . ? 
	rrca			;780e	0f 	. 
	rlca			;780f	07 	. 
	inc bc			;7810	03 	. 
	inc bc			;7811	03 	. 
	rst 38h			;7812	ff 	. 
	ld bc,0ff03h		;7813	01 03 ff 	. . . 
	nop			;7816	00 	. 
	dec b			;7817	05 	. 
	rst 38h			;7818	ff 	. 
	cp 003h		;7819	fe 03 	. . 
	ret p			;781b	f0 	. 
	ret nz			;781c	c0 	. 
	add a,b			;781d	80 	. 
	rst 38h			;781e	ff 	. 
	nop			;781f	00 	. 
	dec b			;7820	05 	. 
	rst 38h			;7821	ff 	. 
	inc bc			;7822	03 	. 
	ex af,af'			;7823	08 	. 
	ld bc,000ffh		;7824	01 ff 00 	. . . 
	inc bc			;7827	03 	. 
	ld bc,00703h		;7828	01 03 07 	. . . 
	rrca			;782b	0f 	. 
	rst 38h			;782c	ff 	. 
	cp 006h		;782d	fe 06 	. . 
	call m,0fff8h		;782f	fc f8 ff 	. . . 
	call m,0ff08h		;7832	fc 08 ff 	. . . 
	ld a,a			;7835	7f 	 
	inc bc			;7836	03 	. 
	nop			;7837	00 	. 
	nop			;7838	00 	. 
	cp l			;7839	bd 	. 
	add a,c			;783a	81 	. 
	add a,c			;783b	81 	. 
	rst 38h			;783c	ff 	. 
	di			;783d	f3 	. 
	inc b			;783e	04 	. 
	inc bc			;783f	03 	. 
	rst 38h			;7840	ff 	. 
	ld (bc),a			;7841	02 	. 
	inc bc			;7842	03 	. 
	rst 38h			;7843	ff 	. 
	call m,0f405h		;7844	fc 05 f4 	. . . 
	inc b			;7847	04 	. 
	inc b			;7848	04 	. 
	rst 38h			;7849	ff 	. 
	nop			;784a	00 	. 
	ex af,af'			;784b	08 	. 
	rst 38h			;784c	ff 	. 
	call m,0ff04h		;784d	fc 04 ff 	. . . 
	nop			;7850	00 	. 
	inc b			;7851	04 	. 
	rst 38h			;7852	ff 	. 
	inc bc			;7853	03 	. 
	dec b			;7854	05 	. 
	rst 38h			;7855	ff 	. 
	ld (bc),a			;7856	02 	. 
	inc bc			;7857	03 	. 
	rst 38h			;7858	ff 	. 
	ld bc,00303h		;7859	01 03 03 	. . . 
	inc bc			;785c	03 	. 
	inc b			;785d	04 	. 
	ex af,af'			;785e	08 	. 
	jr nc,$+1		;785f	30 ff 	0 . 
	cp 003h		;7861	fe 03 	. . 
	nop			;7863	00 	. 
	nop			;7864	00 	. 
	ld bc,000ffh		;7865	01 ff 00 	. . . 
	rlca			;7868	07 	. 
	add a,b			;7869	80 	. 
	ld b,b			;786a	40 	@ 
	jr nc,$+17		;786b	30 0f 	0 . 
	rra			;786d	1f 	. 
	rra			;786e	1f 	. 
	ccf			;786f	3f 	? 
	cpl			;7870	2f 	/ 
	daa			;7871	27 	' 
	jr nz,$+34		;7872	20 20 	    
	ret p			;7874	f0 	. 
	ret p			;7875	f0 	. 
	ret po			;7876	e0 	. 
	ret po			;7877	e0 	. 
	ret nz			;7878	c0 	. 
	ld b,b			;7879	40 	@ 
	ld b,b			;787a	40 	@ 
	ld h,b			;787b	60 	` 
	rst 38h			;787c	ff 	. 
	ld a,a			;787d	7f 	 
	dec b			;787e	05 	. 
	ccf			;787f	3f 	? 
	rra			;7880	1f 	. 
	rlca			;7881	07 	. 
	rst 38h			;7882	ff 	. 
	nop			;7883	00 	. 
	ex af,af'			;7884	08 	. 
	rst 38h			;7885	ff 	. 
	call m,0ff08h		;7886	fc 08 ff 	. . . 
	ld a,a			;7889	7f 	 
	ex af,af'			;788a	08 	. 
	rst 38h			;788b	ff 	. 
	inc bc			;788c	03 	. 
	ex af,af'			;788d	08 	. 
	rst 38h			;788e	ff 	. 
	call m,0ff08h		;788f	fc 08 ff 	. . . 
	ld a,a			;7892	7f 	 
	ld b,0feh		;7893	06 fe 	. . 
	ret m			;7895	f8 	. 
	rst 38h			;7896	ff 	. 
	nop			;7897	00 	. 
	inc b			;7898	04 	. 
	rst 8			;7899	cf 	. 
	add a,a			;789a	87 	. 
	ld bc,0ff00h		;789b	01 00 ff 	. . . 
	call m,0ff08h		;789e	fc 08 ff 	. . . 
	ccf			;78a1	3f 	? 
	ex af,af'			;78a2	08 	. 
	rst 38h			;78a3	ff 	. 
	call m,0f803h		;78a4	fc 03 f8 	. . . 
	ret m			;78a7	f8 	. 
	ret p			;78a8	f0 	. 
	ret po			;78a9	e0 	. 
	add a,b			;78aa	80 	. 
	rst 38h			;78ab	ff 	. 
	rra			;78ac	1f 	. 
	inc bc			;78ad	03 	. 
	rrca			;78ae	0f 	. 
	rrca			;78af	0f 	. 
	rlca			;78b0	07 	. 
	inc bc			;78b1	03 	. 
	nop			;78b2	00 	. 
	rst 38h			;78b3	ff 	. 
	cp 008h		;78b4	fe 08 	. . 
	rst 38h			;78b6	ff 	. 
	rst 38h			;78b7	ff 	. 
	rst 38h			;78b8	ff 	. 
	nop			;78b9	00 	. 
	rst 38h			;78ba	ff 	. 
	rst 38h			;78bb	ff 	. 
	nop			;78bc	00 	. 
	add a,c			;78bd	81 	. 
	rst 38h			;78be	ff 	. 
	sub b			;78bf	90 	. 
	ld d,b			;78c0	50 	P 
	rst 38h			;78c1	ff 	. 
	ret p			;78c2	f0 	. 
	djnz $+2		;78c3	10 00 	. . 
	rrca			;78c5	0f 	. 
	rst 38h			;78c6	ff 	. 
	ex af,af'			;78c7	08 	. 
	inc b			;78c8	04 	. 
	rrca			;78c9	0f 	. 
	nop			;78ca	00 	. 
	nop			;78cb	00 	. 
	rrca			;78cc	0f 	. 
	rst 38h			;78cd	ff 	. 
	ld (bc),a			;78ce	02 	. 
	inc b			;78cf	04 	. 
	rrca			;78d0	0f 	. 
	nop			;78d1	00 	. 
	nop			;78d2	00 	. 
	rrca			;78d3	0f 	. 
	rst 38h			;78d4	ff 	. 
	dec bc			;78d5	0b 	. 
	inc b			;78d6	04 	. 
	rrca			;78d7	0f 	. 
	nop			;78d8	00 	. 
	rst 38h			;78d9	ff 	. 
	ret p			;78da	f0 	. 
	ret po			;78db	e0 	. 
	nop			;78dc	00 	. 
	rrca			;78dd	0f 	. 
	rst 38h			;78de	ff 	. 
	nop			;78df	00 	. 
	inc b			;78e0	04 	. 
	rrca			;78e1	0f 	. 
	nop			;78e2	00 	. 
	nop			;78e3	00 	. 
	rrca			;78e4	0f 	. 
	rst 38h			;78e5	ff 	. 
	nop			;78e6	00 	. 
	inc b			;78e7	04 	. 
	rrca			;78e8	0f 	. 
	rst 38h			;78e9	ff 	. 
	nop			;78ea	00 	. 
	inc bc			;78eb	03 	. 
	rst 38h			;78ec	ff 	. 
	add hl,bc			;78ed	09 	. 
	inc b			;78ee	04 	. 
	nop			;78ef	00 	. 
	nop			;78f0	00 	. 
	rst 38h			;78f1	ff 	. 
	sub b			;78f2	90 	. 
	ex af,af'			;78f3	08 	. 
	rst 38h			;78f4	ff 	. 
	ret p			;78f5	f0 	. 
	ex af,af'			;78f6	08 	. 
	rrca			;78f7	0f 	. 
	rst 28h			;78f8	ef 	. 
	rst 38h			;78f9	ff 	. 
	ld a,a			;78fa	7f 	 
	ld b,00fh		;78fb	06 0f 	. . 
	ld c,0ffh		;78fd	0e ff 	. . 
	rlca			;78ff	07 	. 
	ld b,0f0h		;7900	06 f0 	. . 
	ret po			;7902	e0 	. 
	rst 38h			;7903	ff 	. 
	ld (hl),b			;7904	70 	p 
	ld b,0f0h		;7905	06 f0 	. . 
	ret po			;7907	e0 	. 
	rst 38h			;7908	ff 	. 
	ld a,a			;7909	7f 	 
	ld b,000h		;790a	06 00 	. . 
	rst 38h			;790c	ff 	. 
	ld (hl),b			;790d	70 	p 
	inc bc			;790e	03 	. 
	rst 38h			;790f	ff 	. 
	rlca			;7910	07 	. 
	inc b			;7911	04 	. 
	ret p			;7912	f0 	. 
	ret po			;7913	e0 	. 
	rst 38h			;7914	ff 	. 
	ld (hl),b			;7915	70 	p 
	ld b,0f0h		;7916	06 f0 	. . 
	ret po			;7918	e0 	. 
	rst 38h			;7919	ff 	. 
	ld (hl),b			;791a	70 	p 
	ld b,0f0h		;791b	06 f0 	. . 
	ret po			;791d	e0 	. 
	rst 38h			;791e	ff 	. 
	ld (hl),b			;791f	70 	p 
	ld b,0f0h		;7920	06 f0 	. . 
	ret po			;7922	e0 	. 
	rst 38h			;7923	ff 	. 
	ld (hl),b			;7924	70 	p 
	ld b,0f0h		;7925	06 f0 	. . 
	ret po			;7927	e0 	. 
	rst 38h			;7928	ff 	. 
	ld (hl),b			;7929	70 	p 
	ld b,0ffh		;792a	06 ff 	. . 
	nop			;792c	00 	. 
	inc b			;792d	04 	. 
	rrca			;792e	0f 	. 
	rst 38h			;792f	ff 	. 
	ld a,a			;7930	7f 	 
	inc bc			;7931	03 	. 
	rst 38h			;7932	ff 	. 
	ld (hl),b			;7933	70 	p 
	ex af,af'			;7934	08 	. 
	rst 38h			;7935	ff 	. 
	ld a,a			;7936	7f 	 
	ex af,af'			;7937	08 	. 
	rst 38h			;7938	ff 	. 
	ld (hl),b			;7939	70 	p 
	ex af,af'			;793a	08 	. 
	rst 38h			;793b	ff 	. 
	nop			;793c	00 	. 
	inc b			;793d	04 	. 
	rrca			;793e	0f 	. 
	rst 38h			;793f	ff 	. 
	rlca			;7940	07 	. 
	inc bc			;7941	03 	. 
	rst 38h			;7942	ff 	. 
	nop			;7943	00 	. 
	inc b			;7944	04 	. 
	ret p			;7945	f0 	. 
	rst 38h			;7946	ff 	. 
	ld (hl),b			;7947	70 	p 
	dec bc			;7948	0b 	. 
	rst 38h			;7949	ff 	. 
	rlca			;794a	07 	. 
	dec b			;794b	05 	. 
	rst 38h			;794c	ff 	. 
	ld (hl),b			;794d	70 	p 
	ld b,0ffh		;794e	06 ff 	. . 
	nop			;7950	00 	. 
	dec b			;7951	05 	. 
	rst 38h			;7952	ff 	. 
	ld (hl),b			;7953	70 	p 
	add hl,bc			;7954	09 	. 
	rst 38h			;7955	ff 	. 
	nop			;7956	00 	. 
	inc bc			;7957	03 	. 
	rst 38h			;7958	ff 	. 
	ld (hl),b			;7959	70 	p 
	inc d			;795a	14 	. 
	rst 38h			;795b	ff 	. 
	ld a,a			;795c	7f 	 
	inc bc			;795d	03 	. 
	rlca			;795e	07 	. 
	dec b			;795f	05 	. 
	ld b,b			;7960	40 	@ 
	ld d,b			;7961	50 	P 
	ld d,b			;7962	50 	P 
	rst 38h			;7963	ff 	. 
	ld (hl),b			;7964	70 	p 
	inc b			;7965	04 	. 
	ld d,b			;7966	50 	P 
	ld b,b			;7967	40 	@ 
	ld d,b			;7968	50 	P 
	ld d,b			;7969	50 	P 
	rst 38h			;796a	ff 	. 
	ld (hl),b			;796b	70 	p 
	inc b			;796c	04 	. 
	ld d,b			;796d	50 	P 
	ld b,b			;796e	40 	@ 
	ld d,b			;796f	50 	P 
	ld d,b			;7970	50 	P 
	rst 38h			;7971	ff 	. 
	rlca			;7972	07 	. 
	inc bc			;7973	03 	. 
	inc b			;7974	04 	. 
	rst 38h			;7975	ff 	. 
	nop			;7976	00 	. 
	inc b			;7977	04 	. 
	rst 38h			;7978	ff 	. 
	ld (hl),b			;7979	70 	p 
	inc bc			;797a	03 	. 
	ld b,b			;797b	40 	@ 
	rst 38h			;797c	ff 	. 
	nop			;797d	00 	. 
	inc b			;797e	04 	. 
	rst 38h			;797f	ff 	. 
	ld (hl),b			;7980	70 	p 
	inc b			;7981	04 	. 
	ld d,b			;7982	50 	P 
	ld b,b			;7983	40 	@ 
	ld d,b			;7984	50 	P 
	ld d,b			;7985	50 	P 
	rst 38h			;7986	ff 	. 
	ld (hl),b			;7987	70 	p 
	inc b			;7988	04 	. 
	ld d,b			;7989	50 	P 
	ld b,b			;798a	40 	@ 
	ld d,b			;798b	50 	P 
	ld d,b			;798c	50 	P 
	rst 38h			;798d	ff 	. 
	ld (hl),b			;798e	70 	p 
	inc bc			;798f	03 	. 
	rlca			;7990	07 	. 
	dec b			;7991	05 	. 
	inc b			;7992	04 	. 
	rst 38h			;7993	ff 	. 
	nop			;7994	00 	. 
	rlca			;7995	07 	. 
	ld b,b			;7996	40 	@ 
	ld d,b			;7997	50 	P 
	ld d,b			;7998	50 	P 
	rst 38h			;7999	ff 	. 
	ld (hl),b			;799a	70 	p 
	dec b			;799b	05 	. 
	ld b,b			;799c	40 	@ 
	ld d,b			;799d	50 	P 
	ld d,b			;799e	50 	P 
	rst 38h			;799f	ff 	. 
	ld (hl),b			;79a0	70 	p 
	dec b			;79a1	05 	. 
	ld b,b			;79a2	40 	@ 
	ld d,b			;79a3	50 	P 
	ld d,b			;79a4	50 	P 
	ld e,a			;79a5	5f 	_ 
	ld c,a			;79a6	4f 	O 
	ld c,a			;79a7	4f 	O 
	rst 38h			;79a8	ff 	. 
	ld b,b			;79a9	40 	@ 
	dec b			;79aa	05 	. 
	rrca			;79ab	0f 	. 
	rst 38h			;79ac	ff 	. 
	inc b			;79ad	04 	. 
	rlca			;79ae	07 	. 
	ret p			;79af	f0 	. 
	rst 38h			;79b0	ff 	. 
	ld b,b			;79b1	40 	@ 
	rlca			;79b2	07 	. 
	ld e,a			;79b3	5f 	_ 
	rst 38h			;79b4	ff 	. 
	ld c,a			;79b5	4f 	O 
	rlca			;79b6	07 	. 
	ld d,b			;79b7	50 	P 
	rst 38h			;79b8	ff 	. 
	ld b,b			;79b9	40 	@ 
	rlca			;79ba	07 	. 
	ld d,b			;79bb	50 	P 
	rst 38h			;79bc	ff 	. 
	ld b,b			;79bd	40 	@ 
	rlca			;79be	07 	. 
	ld e,a			;79bf	5f 	_ 
	rst 38h			;79c0	ff 	. 
	ld c,a			;79c1	4f 	O 
	dec b			;79c2	05 	. 
	ld b,b			;79c3	40 	@ 
	ld b,b			;79c4	40 	@ 
	dec b			;79c5	05 	. 
	rst 38h			;79c6	ff 	. 
	inc b			;79c7	04 	. 
	inc bc			;79c8	03 	. 
	rst 38h			;79c9	ff 	. 
	ld b,b			;79ca	40 	@ 
	inc bc			;79cb	03 	. 
	nop			;79cc	00 	. 
	ld d,b			;79cd	50 	P 
	rst 38h			;79ce	ff 	. 
	ld b,b			;79cf	40 	@ 
	rlca			;79d0	07 	. 
	ld d,b			;79d1	50 	P 
	rst 38h			;79d2	ff 	. 
	ld b,b			;79d3	40 	@ 
	rlca			;79d4	07 	. 
	ld d,b			;79d5	50 	P 
	rst 38h			;79d6	ff 	. 
	ld b,b			;79d7	40 	@ 
	rlca			;79d8	07 	. 
	ld d,b			;79d9	50 	P 
	rst 38h			;79da	ff 	. 
	ld b,b			;79db	40 	@ 
	ld b,000h		;79dc	06 00 	. . 
	ld d,b			;79de	50 	P 
	rst 38h			;79df	ff 	. 
	ld b,b			;79e0	40 	@ 
	rlca			;79e1	07 	. 
	rst 38h			;79e2	ff 	. 
	rst 38h			;79e3	ff 	. 
	nop			;79e4	00 	. 
	nop			;79e5	00 	. 
	ld bc,00303h		;79e6	01 03 03 	. . . 
	inc b			;79e9	04 	. 
	rlca			;79ea	07 	. 
	rlca			;79eb	07 	. 
	nop			;79ec	00 	. 
	nop			;79ed	00 	. 
	ret nz			;79ee	c0 	. 
	and b			;79ef	a0 	. 
	ret po			;79f0	e0 	. 
	djnz $-14		;79f1	10 f0 	. . 
	ret p			;79f3	f0 	. 
	rlca			;79f4	07 	. 
	rlca			;79f5	07 	. 
	inc bc			;79f6	03 	. 
	inc b			;79f7	04 	. 
	rlca			;79f8	07 	. 
	rlca			;79f9	07 	. 
	inc b			;79fa	04 	. 
	nop			;79fb	00 	. 
	ret p			;79fc	f0 	. 
	ret p			;79fd	f0 	. 
	ret po			;79fe	e0 	. 
	djnz $-14		;79ff	10 f0 	. . 
	ret p			;7a01	f0 	. 
	sub b			;7a02	90 	. 
	rst 38h			;7a03	ff 	. 
	nop			;7a04	00 	. 
	dec b			;7a05	05 	. 
	ld bc,00703h		;7a06	01 03 07 	. . . 
	rrca			;7a09	0f 	. 
	rst 38h			;7a0a	ff 	. 
	nop			;7a0b	00 	. 
	inc bc			;7a0c	03 	. 
	ld (hl),b			;7a0d	70 	p 
	ld a,b			;7a0e	78 	x 
	ld l,b			;7a0f	68 	h 
	jr c,$-126		;7a10	38 80 	8 . 
	rla			;7a12	17 	. 
	scf			;7a13	37 	7 
	ld (hl),e			;7a14	73 	s 
	jr $+33		;7a15	18 1f 	. . 
	ld (00004h),hl		;7a17	22 04 00 	" . . 
	ret p			;7a1a	f0 	. 
	ret po			;7a1b	e0 	. 
	ret nz			;7a1c	c0 	. 
	add a,b			;7a1d	80 	. 
	rst 38h			;7a1e	ff 	. 
	nop			;7a1f	00 	. 
	add hl,bc			;7a20	09 	. 
	ld a,e			;7a21	7b 	{ 
	scf			;7a22	37 	7 
	scf			;7a23	37 	7 
	rst 38h			;7a24	ff 	. 
	nop			;7a25	00 	. 
	dec b			;7a26	05 	. 
	ret po			;7a27	e0 	. 
	ret c			;7a28	d8 	. 
	call c,03777h		;7a29	dc 77 37 	. w 7 
	scf			;7a2c	37 	7 
	ld a,e			;7a2d	7b 	{ 
	rst 38h			;7a2e	ff 	. 
	nop			;7a2f	00 	. 
	inc b			;7a30	04 	. 
	call c,0d8d4h		;7a31	dc d4 d8 	. . . 
	ret po			;7a34	e0 	. 
	rst 38h			;7a35	ff 	. 
	nop			;7a36	00 	. 
	dec b			;7a37	05 	. 
	inc b			;7a38	04 	. 
	ld h,01fh		;7a39	26 1f 	& . 
	jr $+117		;7a3b	18 73 	. s 
	scf			;7a3d	37 	7 
	rla			;7a3e	17 	. 
	rst 38h			;7a3f	ff 	. 
	nop			;7a40	00 	. 
	inc b			;7a41	04 	. 
	add a,b			;7a42	80 	. 
	ret nz			;7a43	c0 	. 
	ret po			;7a44	e0 	. 
	ret p			;7a45	f0 	. 
	rrca			;7a46	0f 	. 
	rlca			;7a47	07 	. 
	inc bc			;7a48	03 	. 
	ld bc,000ffh		;7a49	01 ff 00 	. . . 
	inc b			;7a4c	04 	. 
	add a,b			;7a4d	80 	. 
	jr c,$+90		;7a4e	38 58 	8 X 
	ld a,b			;7a50	78 	x 
	ld (hl),b			;7a51	70 	p 
	rst 38h			;7a52	ff 	. 
	nop			;7a53	00 	. 
	inc bc			;7a54	03 	. 
	rlca			;7a55	07 	. 
	rra			;7a56	1f 	. 
	ccf			;7a57	3f 	? 
	ld a,h			;7a58	7c 	| 
	ld a,b			;7a59	78 	x 
	ret m			;7a5a	f8 	. 
	call m,0e000h		;7a5b	fc 00 e0 	. . . 
	ret m			;7a5e	f8 	. 
	call m,01e3eh		;7a5f	fc 3e 1e 	. > . 
	rra			;7a62	1f 	. 
	ccf			;7a63	3f 	? 
	rst 38h			;7a64	ff 	. 
	nop			;7a65	00 	. 
	inc b			;7a66	04 	. 
	ld a,a			;7a67	7f 	 
	ld a,a			;7a68	7f 	 
	ccf			;7a69	3f 	? 
	rra			;7a6a	1f 	. 
	rlca			;7a6b	07 	. 
	rst 38h			;7a6c	ff 	. 
	nop			;7a6d	00 	. 
	inc bc			;7a6e	03 	. 
	cp 0feh		;7a6f	fe fe 	. . 
	call m,0e0f8h		;7a71	fc f8 e0 	. . . 
	rlca			;7a74	07 	. 
	rra			;7a75	1f 	. 
	ccf			;7a76	3f 	? 
	ld a,a			;7a77	7f 	 
	ld a,a			;7a78	7f 	 
	call m,0f8fch		;7a79	fc fc f8 	. . . 
	ret po			;7a7c	e0 	. 
	ret m			;7a7d	f8 	. 
	call m,0fefeh		;7a7e	fc fe fe 	. . . 
	ccf			;7a81	3f 	? 
	ccf			;7a82	3f 	? 
	rra			;7a83	1f 	. 
	ret m			;7a84	f8 	. 
	ret m			;7a85	f8 	. 
	call m,07f7ch		;7a86	fc 7c 7f 	. |  
	ccf			;7a89	3f 	? 
	rra			;7a8a	1f 	. 
	rlca			;7a8b	07 	. 
	rra			;7a8c	1f 	. 
	rra			;7a8d	1f 	. 
	ccf			;7a8e	3f 	? 
	ld a,0feh		;7a8f	3e fe 	> . 
	call m,0e0f8h		;7a91	fc f8 e0 	. . . 
	rst 38h			;7a94	ff 	. 
	nop			;7a95	00 	. 
	dec b			;7a96	05 	. 
	ret m			;7a97	f8 	. 
	ld sp,hl			;7a98	f9 	. 
	ei			;7a99	fb 	. 
	rst 38h			;7a9a	ff 	. 
	nop			;7a9b	00 	. 
	dec b			;7a9c	05 	. 
	rra			;7a9d	1f 	. 
	sbc a,a			;7a9e	9f 	. 
	ld e,a			;7a9f	5f 	_ 
	ei			;7aa0	fb 	. 
	ld sp,hl			;7aa1	f9 	. 
	ret m			;7aa2	f8 	. 
	ret m			;7aa3	f8 	. 
	rst 38h			;7aa4	ff 	. 
	nop			;7aa5	00 	. 
	inc b			;7aa6	04 	. 
	rst 18h			;7aa7	df 	. 
	sbc a,a			;7aa8	9f 	. 
	rra			;7aa9	1f 	. 
	rra			;7aaa	1f 	. 
	rst 38h			;7aab	ff 	. 
	nop			;7aac	00 	. 
	inc d			;7aad	14 	. 
	ld sp,hl			;7aae	f9 	. 
	ret m			;7aaf	f8 	. 
	rst 38h			;7ab0	ff 	. 
	nop			;7ab1	00 	. 
	ld b,09fh		;7ab2	06 9f 	. . 
	rra			;7ab4	1f 	. 
	rst 38h			;7ab5	ff 	. 
	nop			;7ab6	00 	. 
	ld b,0ffh		;7ab7	06 ff 	. . 
	rst 30h			;7ab9	f7 	. 
	dec b			;7aba	05 	. 
	ret p			;7abb	f0 	. 
	di			;7abc	f3 	. 
	or 080h		;7abd	f6 80 	. . 
	rst 38h			;7abf	ff 	. 
	cp h			;7ac0	bc 	. 
	inc b			;7ac1	04 	. 
	inc a			;7ac2	3c 	< 
	inc a			;7ac3	3c 	< 
	cp h			;7ac4	bc 	. 
	rst 30h			;7ac5	f7 	. 
	di			;7ac6	f3 	. 
	ret p			;7ac7	f0 	. 
	rst 30h			;7ac8	f7 	. 
	rst 30h			;7ac9	f7 	. 
	call p,0f0f7h		;7aca	f4 f7 f0 	. . . 
	cp h			;7acd	bc 	. 
	inc a			;7ace	3c 	< 
	inc a			;7acf	3c 	< 
	and h			;7ad0	a4 	. 
	and h			;7ad1	a4 	. 
	cp h			;7ad2	bc 	. 
	add a,b			;7ad3	80 	. 
	rst 38h			;7ad4	ff 	. 
	nop			;7ad5	00 	. 
	inc b			;7ad6	04 	. 
	ret p			;7ad7	f0 	. 
	ret p			;7ad8	f0 	. 
	rst 30h			;7ad9	f7 	. 
	ret p			;7ada	f0 	. 
	di			;7adb	f3 	. 
	rst 38h			;7adc	ff 	. 
	nop			;7add	00 	. 
	inc b			;7ade	04 	. 
	inc a			;7adf	3c 	< 
	cp h			;7ae0	bc 	. 
	inc a			;7ae1	3c 	< 
	inc a			;7ae2	3c 	< 
	rst 30h			;7ae3	f7 	. 
	call p,097f4h		;7ae4	f4 f4 97 	. . . 
	sub b			;7ae7	90 	. 
	ret p			;7ae8	f0 	. 
	nop			;7ae9	00 	. 
	nop			;7aea	00 	. 
	rst 38h			;7aeb	ff 	. 
	and h			;7aec	a4 	. 
	inc bc			;7aed	03 	. 
	cp h			;7aee	bc 	. 
	rst 38h			;7aef	ff 	. 
	nop			;7af0	00 	. 
	dec b			;7af1	05 	. 
	inc bc			;7af2	03 	. 
	inc c			;7af3	0c 	. 
	ld e,02eh		;7af4	1e 2e 	. . 
	inc e			;7af6	1c 	. 
	ld b,c			;7af7	41 	A 
	cp 0e0h		;7af8	fe e0 	. . 
	ret m			;7afa	f8 	. 
	nop			;7afb	00 	. 
	ld a,(hl)			;7afc	7e 	~ 
	ld a,a			;7afd	7f 	 
	ret m			;7afe	f8 	. 
	cp 0f9h		;7aff	fe f9 	. . 
	ld a,a			;7b01	7f 	 
	ld e,0ffh		;7b02	1e ff 	. . 
	nop			;7b04	00 	. 
	inc bc			;7b05	03 	. 
	inc bc			;7b06	03 	. 
	ld b,01ch		;7b07	06 1c 	. . 
	ld e,0f6h		;7b09	1e f6 	. . 
	ld (hl),036h		;7b0b	36 36 	6 6 
	ld b,c			;7b0d	41 	A 
	adc a,a			;7b0e	8f 	. 
	inc a			;7b0f	3c 	< 
	ret p			;7b10	f0 	. 
	rst 38h			;7b11	ff 	. 
	nop			;7b12	00 	. 
	inc b			;7b13	04 	. 
	inc bc			;7b14	03 	. 
	inc c			;7b15	0c 	. 
	ld e,02eh		;7b16	1e 2e 	. . 
	rst 38h			;7b18	ff 	. 
	nop			;7b19	00 	. 
	inc bc			;7b1a	03 	. 
	ret po			;7b1b	e0 	. 
	ret m			;7b1c	f8 	. 
	nop			;7b1d	00 	. 
	ld a,03fh		;7b1e	3e 3f 	> ? 
	inc e			;7b20	1c 	. 
	ld b,c			;7b21	41 	A 
	cp 07fh		;7b22	fe 7f 	.  
	inc a			;7b24	3c 	< 
	ld bc,03708h		;7b25	01 08 37 	. . 7 
	ret m			;7b28	f8 	. 
	cp 0f9h		;7b29	fe f9 	. . 
	and 016h		;7b2b	e6 16 	. . 
	ld sp,0e07fh		;7b2d	31 7f e0 	1  . 
	rrca			;7b30	0f 	. 
	jr nc,$+72		;7b31	30 46 	0 F 
	xor e			;7b33	ab 	. 
	xor e			;7b34	ab 	. 
	ld b,(hl)			;7b35	46 	F 
	jr nc,$+9		;7b36	30 07 	0 . 
	ret nz			;7b38	c0 	. 
	ret po			;7b39	e0 	. 
	ld (hl),b			;7b3a	70 	p 
	ld (hl),b			;7b3b	70 	p 
	ld a,b			;7b3c	78 	x 
	ld a,b			;7b3d	78 	x 
	call m,083fch		;7b3e	fc fc 83 	. . . 
	ld h,c			;7b41	61 	a 
	jr $+8		;7b42	18 06 	. . 
	ld bc,000ffh		;7b44	01 ff 00 	. . . 
	inc bc			;7b47	03 	. 
	call m,01f1fh		;7b48	fc 1f 1f 	. . . 
	ld e,082h		;7b4b	1e 82 	. . 
	ld a,h			;7b4d	7c 	| 
	rst 38h			;7b4e	ff 	. 
	nop			;7b4f	00 	. 
	ex af,af'			;7b50	08 	. 
	rrca			;7b51	0f 	. 
	jr nc,$+1		;7b52	30 ff 	0 . 
	nop			;7b54	00 	. 
	ld b,0c0h		;7b55	06 c0 	. . 
	ret p			;7b57	f0 	. 
	ld b,(hl)			;7b58	46 	F 
	xor e			;7b59	ab 	. 
	xor e			;7b5a	ab 	. 
	ld b,(hl)			;7b5b	46 	F 
	jr nc,$+129		;7b5c	30 7f 	0  
	jr c,$+129		;7b5e	38 7f 	8  
	ld a,b			;7b60	78 	x 
	ld a,b			;7b61	78 	x 
	ld a,h			;7b62	7c 	| 
	ld a,(hl)			;7b63	7e 	~ 
	nop			;7b64	00 	. 
	nop			;7b65	00 	. 
	ex (sp),hl			;7b66	e3 	. 
	ex (sp),hl			;7b67	e3 	. 
	inc a			;7b68	3c 	< 
	ld a,(hl)			;7b69	7e 	~ 
	ret m			;7b6a	f8 	. 
	ld sp,hl			;7b6b	f9 	. 
	ld h,d			;7b6c	62 	b 
	inc a			;7b6d	3c 	< 
	inc bc			;7b6e	03 	. 
	ld a,a			;7b6f	7f 	 
	nop			;7b70	00 	. 
	ld a,h			;7b71	7c 	| 
	ld a,(hl)			;7b72	7e 	~ 
	ld a,a			;7b73	7f 	 
	cp 000h		;7b74	fe 00 	. . 
	call m,050f8h		;7b76	fc f8 50 	. . P 
	and b			;7b79	a0 	. 
	ld b,b			;7b7a	40 	@ 
	nop			;7b7b	00 	. 
	nop			;7b7c	00 	. 
	inc bc			;7b7d	03 	. 
	inc bc			;7b7e	03 	. 
	rlca			;7b7f	07 	. 
	ret po			;7b80	e0 	. 
	ret p			;7b81	f0 	. 
	ld h,b			;7b82	60 	` 
	ld h,b			;7b83	60 	` 
	ret nz			;7b84	c0 	. 
	nop			;7b85	00 	. 
	add a,b			;7b86	80 	. 
	add a,b			;7b87	80 	. 
	rst 38h			;7b88	ff 	. 
	nop			;7b89	00 	. 
	ld b,03ch		;7b8a	06 3c 	. < 
	ld a,(hl)			;7b8c	7e 	~ 
	rst 38h			;7b8d	ff 	. 
	nop			;7b8e	00 	. 
	add hl,bc			;7b8f	09 	. 
	ld (iy+03ch),d		;7b90	fd 72 3c 	. r < 
	inc bc			;7b93	03 	. 
	nop			;7b94	00 	. 
	nop			;7b95	00 	. 
	rst 20h			;7b96	e7 	. 
	ld a,b			;7b97	78 	x 
	ld a,h			;7b98	7c 	| 
	ld a,a			;7b99	7f 	 
	cp 000h		;7b9a	fe 00 	. . 
	call m,0f0f8h		;7b9c	fc f8 f0 	. . . 
	inc bc			;7b9f	03 	. 
	rlca			;7ba0	07 	. 
	rra			;7ba1	1f 	. 
	ccf			;7ba2	3f 	? 
	ld a,a			;7ba3	7f 	 
	ld a,h			;7ba4	7c 	| 
	ld a,c			;7ba5	79 	y 
	dec sp			;7ba6	3b 	; 
	add a,b			;7ba7	80 	. 
	ret nz			;7ba8	c0 	. 
	ret po			;7ba9	e0 	. 
	ret po			;7baa	e0 	. 
	ret p			;7bab	f0 	. 
	jr c,$-102		;7bac	38 98 	8 . 
	ld e,h			;7bae	5c 	\ 
	dec de			;7baf	1b 	. 
	add hl,bc			;7bb0	09 	. 
	inc c			;7bb1	0c 	. 
	rlca			;7bb2	07 	. 
	inc bc			;7bb3	03 	. 
	inc bc			;7bb4	03 	. 
	ld bc,0de00h		;7bb5	01 00 de 	. . . 
	sbc a,(hl)			;7bb8	9e 	. 
	ccf			;7bb9	3f 	? 
	nop			;7bba	00 	. 
	cp 0f8h		;7bbb	fe f8 	. . 
	ret p			;7bbd	f0 	. 
	ret po			;7bbe	e0 	. 
	rst 38h			;7bbf	ff 	. 
	ld bc,00507h		;7bc0	01 07 05 	. . . 
	rst 38h			;7bc3	ff 	. 
	add a,b			;7bc4	80 	. 
	rlca			;7bc5	07 	. 
	and b			;7bc6	a0 	. 
	dec b			;7bc7	05 	. 
	rst 38h			;7bc8	ff 	. 
	ld bc,0a007h		;7bc9	01 07 a0 	. . . 
	rst 38h			;7bcc	ff 	. 
	add a,b			;7bcd	80 	. 
	rlca			;7bce	07 	. 
	rst 38h			;7bcf	ff 	. 
	nop			;7bd0	00 	. 
	inc bc			;7bd1	03 	. 
	ld (hl),d			;7bd2	72 	r 
	ei			;7bd3	fb 	. 
	jp pe,070c8h		;7bd4	ea c8 70 	. . p 
	ld (hl),b			;7bd7	70 	p 
	ret m			;7bd8	f8 	. 
	ret pe			;7bd9	e8 	. 
	ret z			;7bda	c8 	. 
	ld (hl),b			;7bdb	70 	p 
	ex af,af'			;7bdc	08 	. 
	inc e			;7bdd	1c 	. 
	nop			;7bde	00 	. 
	ex af,af'			;7bdf	08 	. 
	inc e			;7be0	1c 	. 
	nop			;7be1	00 	. 
	ld c,01fh		;7be2	0e 1f 	. . 
	dec e			;7be4	1d 	. 
	add hl,de			;7be5	19 	. 
	ld c,00eh		;7be6	0e 0e 	. . 
	rra			;7be8	1f 	. 
	ld e,l			;7be9	5d 	] 
	exx			;7bea	d9 	. 
	ld c,(hl)			;7beb	4e 	N 
	rst 38h			;7bec	ff 	. 
	nop			;7bed	00 	. 
	inc b			;7bee	04 	. 
	jr c,$+126		;7bef	38 7c 	8 | 
	ld (hl),l			;7bf1	75 	u 
	ld h,l			;7bf2	65 	e 
	jr c,$+2		;7bf3	38 00 	8 . 
	jr $+2		;7bf5	18 00 	. . 
	inc e			;7bf7	1c 	. 
	ld a,0bah		;7bf8	3e ba 	> . 
	or d			;7bfa	b2 	. 
	inc e			;7bfb	1c 	. 
	nop			;7bfc	00 	. 
	jr $+26		;7bfd	18 18 	. . 
	nop			;7bff	00 	. 
	jr c,$+127		;7c00	38 7d 	8 } 
	ld (hl),l			;7c02	75 	u 
	ld h,h			;7c03	64 	d 
	jr c,$+2		;7c04	38 00 	8 . 
	jr $+2		;7c06	18 00 	. . 
	inc e			;7c08	1c 	. 
	cp (hl)			;7c09	be 	. 
	cp d			;7c0a	ba 	. 
	ld (0ff1ch),a		;7c0b	32 1c ff 	2 . . 
	nop			;7c0e	00 	. 
	inc bc			;7c0f	03 	. 
	rst 38h			;7c10	ff 	. 
	ld bc,00f03h		;7c11	01 03 0f 	. . . 
	nop			;7c14	00 	. 
	ld a,a			;7c15	7f 	 
	nop			;7c16	00 	. 
	nop			;7c17	00 	. 
	ret nz			;7c18	c0 	. 
	add a,b			;7c19	80 	. 
	add a,b			;7c1a	80 	. 
	or b			;7c1b	b0 	. 
	ld a,d			;7c1c	7a 	z 
	nop			;7c1d	00 	. 
	ccf			;7c1e	3f 	? 
	ld a,a			;7c1f	7f 	 
	ld bc,0ff03h		;7c20	01 03 ff 	. . . 
	nop			;7c23	00 	. 
	dec b			;7c24	05 	. 
	cp 080h		;7c25	fe 80 	. . 
	ret nz			;7c27	c0 	. 
	rst 38h			;7c28	ff 	. 
	nop			;7c29	00 	. 
	inc b			;7c2a	04 	. 
	jr nz,$+66		;7c2b	20 40 	  @ 
	jp 0cfc7h		;7c2d	c3 c7 cf 	. . . 
	rst 8			;7c30	cf 	. 
	rst 28h			;7c31	ef 	. 
	rst 30h			;7c32	f7 	. 
	ex af,af'			;7c33	08 	. 
	inc b			;7c34	04 	. 
	add a,(hl)			;7c35	86 	. 
	add a,0e6h		;7c36	c6 e6 	. . 
	and 0eeh		;7c38	e6 ee 	. . 
	sbc a,0e0h		;7c3a	de e0 	. . 
	rst 18h			;7c3c	df 	. 
	ld c,e			;7c3d	4b 	K 
	dec hl			;7c3e	2b 	+ 
	ld c,e			;7c3f	4b 	K 
	adc a,e			;7c40	8b 	. 
	dec b			;7c41	05 	. 
	inc bc			;7c42	03 	. 
	inc e			;7c43	1c 	. 
	call pe,0d0c8h		;7c44	ec c8 d0 	. . . 
	ret z			;7c47	c8 	. 
	call nz,00080h		;7c48	c4 80 00 	. . . 
	nop			;7c4b	00 	. 
	inc c			;7c4c	0c 	. 
	dec sp			;7c4d	3b 	; 
	ld (hl),a			;7c4e	77 	w 
	ld l,a			;7c4f	6f 	o 
	rst 28h			;7c50	ef 	. 
	rst 28h			;7c51	ef 	. 
	rst 30h			;7c52	f7 	. 
	nop			;7c53	00 	. 
	ld h,b			;7c54	60 	` 
	cp b			;7c55	b8 	. 
	call c,0eeech		;7c56	dc ec ee 	. . . 
	xor 0deh		;7c59	ee de 	. . 
	ret po			;7c5b	e0 	. 
	rst 18h			;7c5c	df 	. 
	ld c,e			;7c5d	4b 	K 
	rst 38h			;7c5e	ff 	. 
	dec hl			;7c5f	2b 	+ 
	inc bc			;7c60	03 	. 
	dec h			;7c61	25 	% 
	inc bc			;7c62	03 	. 
	inc e			;7c63	1c 	. 
	call pe,0ffc8h		;7c64	ec c8 ff 	. . . 
	ret nc			;7c67	d0 	. 
	inc bc			;7c68	03 	. 
	sub b			;7c69	90 	. 
	nop			;7c6a	00 	. 
	nop			;7c6b	00 	. 
	inc b			;7c6c	04 	. 
	ld c,005h		;7c6d	0e 05 	. . 
	inc bc			;7c6f	03 	. 
	add hl,bc			;7c70	09 	. 
	inc e			;7c71	1c 	. 
	ld h,000h		;7c72	26 00 	& . 
	jr nz,$+114		;7c74	20 70 	  p 
	and b			;7c76	a0 	. 
	ret nz			;7c77	c0 	. 
	sub b			;7c78	90 	. 
	jr c,$+102		;7c79	38 64 	8 d 
	rst 38h			;7c7b	ff 	. 
	inc hl			;7c7c	23 	# 
	inc b			;7c7d	04 	. 
	dec d			;7c7e	15 	. 
	ld (de),a			;7c7f	12 	. 
	ex af,af'			;7c80	08 	. 
	ex af,af'			;7c81	08 	. 
	rst 38h			;7c82	ff 	. 
	call nz,0a804h		;7c83	c4 04 a8 	. . . 
	ld c,b			;7c86	48 	H 
	djnz $+18		;7c87	10 10 	. . 
	inc b			;7c89	04 	. 
	ld c,025h		;7c8a	0e 25 	. % 
	ld (hl),e			;7c8c	73 	s 
	ld e,c			;7c8d	59 	Y 
	call nz,08383h		;7c8e	c4 83 83 	. . . 
	jr nz,$+114		;7c91	20 70 	  p 
	and h			;7c93	a4 	. 
	adc a,09bh		;7c94	ce 9b 	. . 
	inc hl			;7c96	23 	# 
	pop bc			;7c97	c1 	. 
	pop bc			;7c98	c1 	. 
	add a,e			;7c99	83 	. 
	add a,a			;7c9a	87 	. 
	adc a,e			;7c9b	8b 	. 
	push de			;7c9c	d5 	. 
	ld h,h			;7c9d	64 	d 
	ld b,b			;7c9e	40 	@ 
	nop			;7c9f	00 	. 
	nop			;7ca0	00 	. 
	pop bc			;7ca1	c1 	. 
	pop hl			;7ca2	e1 	. 
	pop de			;7ca3	d1 	. 
	xor e			;7ca4	ab 	. 
	ld h,002h		;7ca5	26 02 	& . 
	nop			;7ca7	00 	. 
	nop			;7ca8	00 	. 
	ld a,07eh		;7ca9	3e 7e 	> ~ 
	rst 38h			;7cab	ff 	. 
	cp 003h		;7cac	fe 03 	. . 
	call m,007fch		;7cae	fc fc 07 	. . . 
	call m,0fffeh		;7cb1	fc fe ff 	. . . 
	nop			;7cb4	00 	. 
	inc bc			;7cb5	03 	. 
	ccf			;7cb6	3f 	? 
	ccf			;7cb7	3f 	? 
	rra			;7cb8	1f 	. 
	ret m			;7cb9	f8 	. 
	ret m			;7cba	f8 	. 
	call m,000fch		;7cbb	fc fc 00 	. . . 
	nop			;7cbe	00 	. 
	ld a,a			;7cbf	7f 	 
	ccf			;7cc0	3f 	? 
	ret po			;7cc1	e0 	. 
	rra			;7cc2	1f 	. 
	ccf			;7cc3	3f 	? 
	ccf			;7cc4	3f 	? 
	ld a,a			;7cc5	7f 	 
	ld a,a			;7cc6	7f 	 
	ld a,(hl)			;7cc7	7e 	~ 
	ld a,h			;7cc8	7c 	| 
	nop			;7cc9	00 	. 
	ret nz			;7cca	c0 	. 
	ret p			;7ccb	f0 	. 
	ld a,b			;7ccc	78 	x 
	ld a,h			;7ccd	7c 	| 
	inc a			;7cce	3c 	< 
	dec de			;7ccf	1b 	. 
	rlca			;7cd0	07 	. 
	nop			;7cd1	00 	. 
	inc bc			;7cd2	03 	. 
	rrca			;7cd3	0f 	. 
	ld e,03eh		;7cd4	1e 3e 	. > 
	inc a			;7cd6	3c 	< 
	ret c			;7cd7	d8 	. 
	ret po			;7cd8	e0 	. 
	rlca			;7cd9	07 	. 
	rlca			;7cda	07 	. 
	dec de			;7cdb	1b 	. 
	inc a			;7cdc	3c 	< 
	ld a,h			;7cdd	7c 	| 
	ld a,h			;7cde	7c 	| 
	ret m			;7cdf	f8 	. 
	rst 38h			;7ce0	ff 	. 
	ret po			;7ce1	e0 	. 
	inc bc			;7ce2	03 	. 
	ret c			;7ce3	d8 	. 
	inc a			;7ce4	3c 	< 
	ld a,03eh		;7ce5	3e 3e 	> > 
	rra			;7ce7	1f 	. 
	rlca			;7ce8	07 	. 
	nop			;7ce9	00 	. 
	dec c			;7cea	0d 	. 
	dec e			;7ceb	1d 	. 
	dec e			;7cec	1d 	. 
	dec a			;7ced	3d 	= 
	dec a			;7cee	3d 	= 
	ld a,c			;7cef	79 	y 
	ld a,c			;7cf0	79 	y 
	nop			;7cf1	00 	. 
	ld h,b			;7cf2	60 	` 
	ld (hl),b			;7cf3	70 	p 
	ld (hl),b			;7cf4	70 	p 
	ld a,b			;7cf5	78 	x 
	ld a,b			;7cf6	78 	x 
	inc a			;7cf7	3c 	< 
	inc a			;7cf8	3c 	< 
	ld (hl),c			;7cf9	71 	q 
	nop			;7cfa	00 	. 
	inc bc			;7cfb	03 	. 
	rlca			;7cfc	07 	. 
	rrca			;7cfd	0f 	. 
	rla			;7cfe	17 	. 
	scf			;7cff	37 	7 
	ld (hl),e			;7d00	73 	s 
	inc e			;7d01	1c 	. 
	nop			;7d02	00 	. 
	add a,b			;7d03	80 	. 
	ret nz			;7d04	c0 	. 
	ret po			;7d05	e0 	. 
	ret nc			;7d06	d0 	. 
	ret c			;7d07	d8 	. 
	sbc a,h			;7d08	9c 	. 
	nop			;7d09	00 	. 
	rst 38h			;7d0a	ff 	. 
	ld bc,0ff07h		;7d0b	01 07 ff 	. . . 
	nop			;7d0e	00 	. 
	ex af,af'			;7d0f	08 	. 
	dec c			;7d10	0d 	. 
	dec e			;7d11	1d 	. 
	dec e			;7d12	1d 	. 
	dec a			;7d13	3d 	= 
	dec sp			;7d14	3b 	; 
	ld a,e			;7d15	7b 	{ 
	ld a,e			;7d16	7b 	{ 
	ld (hl),l			;7d17	75 	u 
	ld h,b			;7d18	60 	` 
	ld (hl),b			;7d19	70 	p 
	ld (hl),b			;7d1a	70 	p 
	ld a,b			;7d1b	78 	x 
	cp b			;7d1c	b8 	. 
	cp h			;7d1d	bc 	. 
	cp h			;7d1e	bc 	. 
	ld e,h			;7d1f	5c 	\ 
	nop			;7d20	00 	. 
	jr nz,$+114		;7d21	20 70 	  p 
	ret m			;7d23	f8 	. 
	ld (hl),b			;7d24	70 	p 
	dec hl			;7d25	2b 	+ 
	rlca			;7d26	07 	. 
	rrca			;7d27	0f 	. 
	nop			;7d28	00 	. 
	ex af,af'			;7d29	08 	. 
	inc e			;7d2a	1c 	. 
	ld a,01ch		;7d2b	3e 1c 	> . 
	xor b			;7d2d	a8 	. 
	ret nz			;7d2e	c0 	. 
	ret po			;7d2f	e0 	. 
	rrca			;7d30	0f 	. 
	rlca			;7d31	07 	. 
	dec hl			;7d32	2b 	+ 
	ld (hl),b			;7d33	70 	p 
	ret m			;7d34	f8 	. 
	ld (hl),b			;7d35	70 	p 
	jr nz,$+2		;7d36	20 00 	  . 
	ret po			;7d38	e0 	. 
	ret nz			;7d39	c0 	. 
	xor b			;7d3a	a8 	. 
	inc e			;7d3b	1c 	. 
	ld a,01ch		;7d3c	3e 1c 	> . 
	ex af,af'			;7d3e	08 	. 
	rst 38h			;7d3f	ff 	. 
	nop			;7d40	00 	. 
	inc b			;7d41	04 	. 
	ex af,af'			;7d42	08 	. 
	inc e			;7d43	1c 	. 
	ld a,01ch		;7d44	3e 1c 	> . 
	ld bc,000ffh		;7d46	01 ff 00 	. . . 
	inc bc			;7d49	03 	. 
	jr nz,$+114		;7d4a	20 70 	  p 
	ret m			;7d4c	f8 	. 
	ld (hl),b			;7d4d	70 	p 
	and b			;7d4e	a0 	. 
	dec bc			;7d4f	0b 	. 
	dec e			;7d50	1d 	. 
	ld a,01ch		;7d51	3e 1c 	> . 
	ex af,af'			;7d53	08 	. 
	rst 38h			;7d54	ff 	. 
	nop			;7d55	00 	. 
	inc bc			;7d56	03 	. 
	ret nz			;7d57	c0 	. 
	jr nc,$+122		;7d58	30 78 	0 x 
	ld (hl),b			;7d5a	70 	p 
	jr nz,$+1		;7d5b	20 ff 	  . 
	nop			;7d5d	00 	. 
	inc bc			;7d5e	03 	. 
	rra			;7d5f	1f 	. 
	ccf			;7d60	3f 	? 
	ld (hl),b			;7d61	70 	p 
	ld h,b			;7d62	60 	` 
	ret po			;7d63	e0 	. 
	rst 38h			;7d64	ff 	. 
	ret nz			;7d65	c0 	. 
	inc bc			;7d66	03 	. 
	ret po			;7d67	e0 	. 
	ret m			;7d68	f8 	. 
	ld a,003h		;7d69	3e 03 	> . 
	ld (hl),b			;7d6b	70 	p 
	jr c,$+30		;7d6c	38 1c 	8 . 
	inc c			;7d6e	0c 	. 
	ret nz			;7d6f	c0 	. 
	ret po			;7d70	e0 	. 
	ld h,b			;7d71	60 	` 
	jr nc,$+58		;7d72	30 38 	0 8 
	rra			;7d74	1f 	. 
	rrca			;7d75	0f 	. 
	nop			;7d76	00 	. 
	ld b,006h		;7d77	06 06 	. . 
	ld c,00ch		;7d79	0e 0c 	. . 
	inc e			;7d7b	1c 	. 
	ret m			;7d7c	f8 	. 
	ret po			;7d7d	e0 	. 
	rst 38h			;7d7e	ff 	. 
	nop			;7d7f	00 	. 
	inc bc			;7d80	03 	. 
	rrca			;7d81	0f 	. 
	rra			;7d82	1f 	. 
	jr c,$+117		;7d83	38 73 	8 s 
	ld h,a			;7d85	67 	g 
	adc a,000h		;7d86	ce 00 	. . 
	nop			;7d88	00 	. 
	ret nz			;7d89	c0 	. 
	ret p			;7d8a	f0 	. 
	jr c,$-98		;7d8b	38 9c 	8 . 
	rst 8			;7d8d	cf 	. 
	ret nz			;7d8e	c0 	. 
	adc a,066h		;7d8f	ce 66 	. f 
	ld (hl),b			;7d91	70 	p 
	add hl,sp			;7d92	39 	9 
	rra			;7d93	1f 	. 
	ld b,000h		;7d94	06 00 	. . 
	nop			;7d96	00 	. 
	ld h,b			;7d97	60 	` 
	ld h,b			;7d98	60 	` 
	ret nz			;7d99	c0 	. 
	ret nz			;7d9a	c0 	. 
	add a,b			;7d9b	80 	. 
	rst 38h			;7d9c	ff 	. 
	nop			;7d9d	00 	. 
	ld b,00ch		;7d9e	06 0c 	. . 
	dec de			;7da0	1b 	. 
	rla			;7da1	17 	. 
	rrca			;7da2	0f 	. 
	rrca			;7da3	0f 	. 
	nop			;7da4	00 	. 
	nop			;7da5	00 	. 
	ld h,b			;7da6	60 	` 
	jr nc,$-110		;7da7	30 90 	0 . 
	ret nz			;7da9	c0 	. 
	ret c			;7daa	d8 	. 
	cp h			;7dab	bc 	. 
	ld bc,00e0ch		;7dac	01 0c 0e 	. . . 
	ld b,0ffh		;7daf	06 ff 	. . 
	nop			;7db1	00 	. 
	inc b			;7db2	04 	. 
	cp h			;7db3	bc 	. 
	ret nc			;7db4	d0 	. 
	ret pe			;7db5	e8 	. 
	ret c			;7db6	d8 	. 
	jr nc,$+98		;7db7	30 60 	0 ` 
	rst 38h			;7db9	ff 	. 
	nop			;7dba	00 	. 
	inc bc			;7dbb	03 	. 
	ld (hl),b			;7dbc	70 	p 
	ret m			;7dbd	f8 	. 
	call m,0177bh		;7dbe	fc 7b 17 	. { . 
	rrca			;7dc1	0f 	. 
	rrca			;7dc2	0f 	. 
	jr nc,$+122		;7dc3	30 78 	0 x 
	ld a,b			;7dc5	78 	x 
	jr nc,$-56		;7dc6	30 c6 	0 . 
	rst 28h			;7dc8	ef 	. 
	rst 18h			;7dc9	df 	. 
	cp a			;7dca	bf 	. 
	ld bc,03e0ch		;7dcb	01 0c 3e 	. . > 
	ld a,(hl)			;7dce	7e 	~ 
	ld a,h			;7dcf	7c 	| 
	ld a,h			;7dd0	7c 	| 
	jr c,$+2		;7dd1	38 00 	8 . 
	cp (hl)			;7dd3	be 	. 
	ret nz			;7dd4	c0 	. 
	ret pe			;7dd5	e8 	. 
	call c,07c3ch		;7dd6	dc 3c 7c 	. < | 
	jr c,$+2		;7dd9	38 00 	8 . 
	inc b			;7ddb	04 	. 
	inc c			;7ddc	0c 	. 
	inc e			;7ddd	1c 	. 
	inc a			;7dde	3c 	< 
	ld a,h			;7ddf	7c 	| 
	call m,00102h		;7de0	fc 02 01 	. . . 
	jr nz,$+50		;7de3	20 30 	  0 
	jr c,$+62		;7de5	38 3c 	8 < 
	ld a,03fh		;7de7	3e 3f 	> ? 
	ld b,b			;7de9	40 	@ 
	add a,b			;7dea	80 	. 
	ld bc,0fc02h		;7deb	01 02 fc 	. . . 
	ld a,h			;7dee	7c 	| 
	inc a			;7def	3c 	< 
	inc e			;7df0	1c 	. 
	inc c			;7df1	0c 	. 
	inc b			;7df2	04 	. 
	add a,b			;7df3	80 	. 
	ld b,b			;7df4	40 	@ 
	ccf			;7df5	3f 	? 
	ld a,03ch		;7df6	3e 3c 	> < 
	jr c,$+50		;7df8	38 30 	8 0 
	jr nz,$+2		;7dfa	20 00 	  . 
	nop			;7dfc	00 	. 
	ld bc,00703h		;7dfd	01 03 07 	. . . 
	rrca			;7e00	0f 	. 
	rra			;7e01	1f 	. 
	ccf			;7e02	3f 	? 
	nop			;7e03	00 	. 
	nop			;7e04	00 	. 
	add a,b			;7e05	80 	. 
	ret nz			;7e06	c0 	. 
	ret po			;7e07	e0 	. 
	ret p			;7e08	f0 	. 
	ret m			;7e09	f8 	. 
	call m,01f3fh		;7e0a	fc 3f 1f 	. ? . 
	rrca			;7e0d	0f 	. 
	rlca			;7e0e	07 	. 
	inc bc			;7e0f	03 	. 
	ld bc,00000h		;7e10	01 00 00 	. . . 
	call m,0f0f8h		;7e13	fc f8 f0 	. . . 
	ret po			;7e16	e0 	. 
	ret nz			;7e17	c0 	. 
	add a,b			;7e18	80 	. 
	rst 38h			;7e19	ff 	. 
	nop			;7e1a	00 	. 
	dec b			;7e1b	05 	. 
	inc b			;7e1c	04 	. 
	ld c,01ah		;7e1d	0e 1a 	. . 
	jr c,$+53		;7e1f	38 33 	8 3 
	rst 38h			;7e21	ff 	. 
	nop			;7e22	00 	. 
	inc bc			;7e23	03 	. 
	ld b,b			;7e24	40 	@ 
	ret po			;7e25	e0 	. 
	or b			;7e26	b0 	. 
	jr c,$-102		;7e27	38 98 	8 . 
	rst 38h			;7e29	ff 	. 
	scf			;7e2a	37 	7 
	inc bc			;7e2b	03 	. 
	ld h,e			;7e2c	63 	c 
	rst 38h			;7e2d	ff 	. 
	ld h,b			;7e2e	60 	` 
	inc b			;7e2f	04 	. 
	rst 38h			;7e30	ff 	. 
	ret c			;7e31	d8 	. 
	inc bc			;7e32	03 	. 
	adc a,h			;7e33	8c 	. 
	rst 38h			;7e34	ff 	. 
	inc c			;7e35	0c 	. 
	inc b			;7e36	04 	. 
	rst 38h			;7e37	ff 	. 
	nop			;7e38	00 	. 
	dec b			;7e39	05 	. 
	inc b			;7e3a	04 	. 
	ld c,01ah		;7e3b	0e 1a 	. . 
	rst 38h			;7e3d	ff 	. 
	nop			;7e3e	00 	. 
	dec b			;7e3f	05 	. 
	ld b,b			;7e40	40 	@ 
	ret po			;7e41	e0 	. 
	or b			;7e42	b0 	. 
	jr nc,$+53		;7e43	30 33 	0 3 
	rst 38h			;7e45	ff 	. 
	ld h,a			;7e46	67 	g 
	inc bc			;7e47	03 	. 
	jp 0c0c0h		;7e48	c3 c0 c0 	. . . 
	jr $-102		;7e4b	18 98 	. . 
	rst 38h			;7e4d	ff 	. 
	call z,08603h		;7e4e	cc 03 86 	. . . 
	ld b,006h		;7e51	06 06 	. . 
	nop			;7e53	00 	. 
	nop			;7e54	00 	. 
	inc bc			;7e55	03 	. 
	rlca			;7e56	07 	. 
	rst 38h			;7e57	ff 	. 
	rrca			;7e58	0f 	. 
	inc bc			;7e59	03 	. 
	rla			;7e5a	17 	. 
	nop			;7e5b	00 	. 
	nop			;7e5c	00 	. 
	add a,b			;7e5d	80 	. 
	ret nz			;7e5e	c0 	. 
	rst 38h			;7e5f	ff 	. 
	ret po			;7e60	e0 	. 
	inc bc			;7e61	03 	. 
	ret nc			;7e62	d0 	. 
	jr c,$+103		;7e63	38 65 	8 e 
	ld h,e			;7e65	63 	c 
	ld h,a			;7e66	67 	g 
	ld h,b			;7e67	60 	` 
	rst 38h			;7e68	ff 	. 
	ret nz			;7e69	c0 	. 
	inc bc			;7e6a	03 	. 
	jr c,$+78		;7e6b	38 4c 	8 L 
	adc a,h			;7e6d	8c 	. 
	call z,0ff0ch		;7e6e	cc 0c ff 	. . . 
	ld b,003h		;7e71	06 03 	. . 
	rst 38h			;7e73	ff 	. 
	nop			;7e74	00 	. 
	inc b			;7e75	04 	. 
	inc bc			;7e76	03 	. 
	rlca			;7e77	07 	. 
	rrca			;7e78	0f 	. 
	rrca			;7e79	0f 	. 
	rst 38h			;7e7a	ff 	. 
	nop			;7e7b	00 	. 
	inc b			;7e7c	04 	. 
	add a,b			;7e7d	80 	. 
	ret nz			;7e7e	c0 	. 
	ret po			;7e7f	e0 	. 
	ret po			;7e80	e0 	. 
	rrca			;7e81	0f 	. 
	ld h,a			;7e82	67 	g 
	ret m			;7e83	f8 	. 
	defb 0ddh,0c3h,047h	;illegal sequence		;7e84	dd c3 47 	. . G 
	ld h,b			;7e87	60 	` 
	ld h,b			;7e88	60 	` 
	ret po			;7e89	e0 	. 
	call z,0763eh		;7e8a	cc 3e 76 	. > v 
	add a,(hl)			;7e8d	86 	. 
	call nz,00c0ch		;7e8e	c4 0c 0c 	. . . 
	nop			;7e91	00 	. 
	nop			;7e92	00 	. 
	rrca			;7e93	0f 	. 
	ccf			;7e94	3f 	? 
	rst 38h			;7e95	ff 	. 
	ld a,a			;7e96	7f 	 
	inc bc			;7e97	03 	. 
	ccf			;7e98	3f 	? 
	nop			;7e99	00 	. 
	nop			;7e9a	00 	. 
	ret po			;7e9b	e0 	. 
	ret m			;7e9c	f8 	. 
	call m,0f4f4h		;7e9d	fc f4 f4 	. . . 
	ret c			;7ea0	d8 	. 
	rrca			;7ea1	0f 	. 
	nop			;7ea2	00 	. 
	rlca			;7ea3	07 	. 
	inc hl			;7ea4	23 	# 
	ld b,b			;7ea5	40 	@ 
	ld h,b			;7ea6	60 	` 
	ccf			;7ea7	3f 	? 
	rrca			;7ea8	0f 	. 
	ret po			;7ea9	e0 	. 
	nop			;7eaa	00 	. 
	ret nz			;7eab	c0 	. 
	adc a,b			;7eac	88 	. 
	inc b			;7ead	04 	. 
	inc c			;7eae	0c 	. 
	ret m			;7eaf	f8 	. 
	ret po			;7eb0	e0 	. 
	rrca			;7eb1	0f 	. 
	ccf			;7eb2	3f 	? 
	rst 38h			;7eb3	ff 	. 
	ld a,a			;7eb4	7f 	 
	inc bc			;7eb5	03 	. 
	ccf			;7eb6	3f 	? 
	rrca			;7eb7	0f 	. 
	nop			;7eb8	00 	. 
	ret po			;7eb9	e0 	. 
	ret p			;7eba	f0 	. 
	call m,0f4f4h		;7ebb	fc f4 f4 	. . . 
	ret c			;7ebe	d8 	. 
	ret po			;7ebf	e0 	. 
	nop			;7ec0	00 	. 
	inc bc			;7ec1	03 	. 
	rlca			;7ec2	07 	. 
	rlca			;7ec3	07 	. 
	inc hl			;7ec4	23 	# 
	ld b,b			;7ec5	40 	@ 
	ld h,b			;7ec6	60 	` 
	ccf			;7ec7	3f 	? 
	rrca			;7ec8	0f 	. 
	add a,b			;7ec9	80 	. 
	ret nz			;7eca	c0 	. 
	ret nz			;7ecb	c0 	. 
	adc a,b			;7ecc	88 	. 
	inc b			;7ecd	04 	. 
	inc c			;7ece	0c 	. 
	ret m			;7ecf	f8 	. 
	ret po			;7ed0	e0 	. 
	nop			;7ed1	00 	. 
	nop			;7ed2	00 	. 
	rrca			;7ed3	0f 	. 
	jr nc,$+98		;7ed4	30 60 	0 ` 
	ld b,e			;7ed6	43 	C 
	rst 0			;7ed7	c7 	. 
	rst 0			;7ed8	c7 	. 
	nop			;7ed9	00 	. 
	nop			;7eda	00 	. 
	ret po			;7edb	e0 	. 
	jr $+14		;7edc	18 0c 	. . 
	add a,h			;7ede	84 	. 
	add a,0c6h		;7edf	c6 c6 	. . 
	rst 0			;7ee1	c7 	. 
	ld b,e			;7ee2	43 	C 
	ld h,b			;7ee3	60 	` 
	jr nc,$+17		;7ee4	30 0f 	0 . 
	rst 38h			;7ee6	ff 	. 
	nop			;7ee7	00 	. 
	inc bc			;7ee8	03 	. 
	add a,084h		;7ee9	c6 84 	. . 
	inc c			;7eeb	0c 	. 
	jr $-30		;7eec	18 e0 	. . 
	rst 38h			;7eee	ff 	. 
	nop			;7eef	00 	. 
	ld b,00fh		;7ef0	06 0f 	. . 
	jr nc,$+101		;7ef2	30 63 	0 c 
	rst 0			;7ef4	c7 	. 
	rst 0			;7ef5	c7 	. 
	rst 38h			;7ef6	ff 	. 
	nop			;7ef7	00 	. 
	inc bc			;7ef8	03 	. 
	ret po			;7ef9	e0 	. 
	jr $-114		;7efa	18 8c 	. . 
	add a,0c6h		;7efc	c6 c6 	. . 
	rst 0			;7efe	c7 	. 
	ld h,e			;7eff	63 	c 
	jr nc,$+17		;7f00	30 0f 	0 . 
	rst 38h			;7f02	ff 	. 
	nop			;7f03	00 	. 
	inc b			;7f04	04 	. 
	add a,08ch		;7f05	c6 8c 	. . 
	jr $-30		;7f07	18 e0 	. . 
	rst 38h			;7f09	ff 	. 
	nop			;7f0a	00 	. 
	ld b,003h		;7f0b	06 03 	. . 
	rlca			;7f0d	07 	. 
	ld (hl),b			;7f0e	70 	p 
	ld c,a			;7f0f	4f 	O 
	cpl			;7f10	2f 	/ 
	rst 38h			;7f11	ff 	. 
	nop			;7f12	00 	. 
	inc bc			;7f13	03 	. 
	add a,b			;7f14	80 	. 
	ret nz			;7f15	c0 	. 
	jp po,0e8e4h		;7f16	e2 e4 e8 	. . . 
	nop			;7f19	00 	. 
	ld d,a			;7f1a	57 	W 
	rst 18h			;7f1b	df 	. 
	nop			;7f1c	00 	. 
	add hl,de			;7f1d	19 	. 
	or e			;7f1e	b3 	. 
	ld h,(hl)			;7f1f	66 	f 
	ld c,h			;7f20	4c 	L 
	dec e			;7f21	1d 	. 
	call nc,000fbh		;7f22	d4 fb 00 	. . . 
	sbc a,b			;7f25	98 	. 
	ld (0cd66h),a		;7f26	32 66 cd 	2 f . 
	sbc a,b			;7f29	98 	. 
	nop			;7f2a	00 	. 
	nop			;7f2b	00 	. 
	inc bc			;7f2c	03 	. 
	rlca			;7f2d	07 	. 
	rst 38h			;7f2e	ff 	. 
	cpl			;7f2f	2f 	/ 
	inc bc			;7f30	03 	. 
	rst 38h			;7f31	ff 	. 
	nop			;7f32	00 	. 
	inc bc			;7f33	03 	. 
	add a,b			;7f34	80 	. 
	ret nz			;7f35	c0 	. 
	rst 38h			;7f36	ff 	. 
	ret pe			;7f37	e8 	. 
	inc bc			;7f38	03 	. 
	nop			;7f39	00 	. 
	ld d,a			;7f3a	57 	W 
	rst 18h			;7f3b	df 	. 
	nop			;7f3c	00 	. 
	ld sp,hl			;7f3d	f9 	. 
	or e			;7f3e	b3 	. 
	ld h,(hl)			;7f3f	66 	f 
	call z,0d4ddh		;7f40	cc dd d4 	. . . 
	ei			;7f43	fb 	. 
	nop			;7f44	00 	. 
	sbc a,c			;7f45	99 	. 
	inc sp			;7f46	33 	3 
	ld h,(hl)			;7f47	66 	f 
	call 0009fh		;7f48	cd 9f 00 	. . . 
	inc a			;7f4b	3c 	< 
	ld a,h			;7f4c	7c 	| 
	rst 38h			;7f4d	ff 	. 
	call m,0f803h		;7f4e	fc 03 f8 	. . . 
	inc bc			;7f51	03 	. 
	nop			;7f52	00 	. 
	ld a,b			;7f53	78 	x 
	ld a,h			;7f54	7c 	| 
	rst 38h			;7f55	ff 	. 
	ld a,(hl)			;7f56	7e 	~ 
	inc bc			;7f57	03 	. 
	ld a,080h		;7f58	3e 80 	> . 
	rlca			;7f5a	07 	. 
	inc bc			;7f5b	03 	. 
	ret m			;7f5c	f8 	. 
	rst 38h			;7f5d	ff 	. 
	call m,07c03h		;7f5e	fc 03 7c 	. . | 
	inc a			;7f61	3c 	< 
	ret nz			;7f62	c0 	. 
	add a,b			;7f63	80 	. 
	ld a,0ffh		;7f64	3e ff 	> . 
	ld a,(hl)			;7f66	7e 	~ 
	inc bc			;7f67	03 	. 
	ld a,h			;7f68	7c 	| 
	ld a,b			;7f69	78 	x 
	nop			;7f6a	00 	. 
	ld c,01eh		;7f6b	0e 1e 	. . 
	ld a,07ch		;7f6d	3e 7c 	> | 
	ld a,h			;7f6f	7c 	| 
	ret m			;7f70	f8 	. 
	ex (sp),hl			;7f71	e3 	. 
	nop			;7f72	00 	. 
	ret po			;7f73	e0 	. 
	ret p			;7f74	f0 	. 
	ret m			;7f75	f8 	. 
	ld a,h			;7f76	7c 	| 
	ld a,h			;7f77	7c 	| 
	ld a,08eh		;7f78	3e 8e 	> . 
	rlca			;7f7a	07 	. 
	ex (sp),hl			;7f7b	e3 	. 
	ret m			;7f7c	f8 	. 
	ld a,h			;7f7d	7c 	| 
	ld a,h			;7f7e	7c 	| 
	ld a,01eh		;7f7f	3e 1e 	> . 
	ld b,0c0h		;7f81	06 c0 	. . 
	adc a,(hl)			;7f83	8e 	. 
	ld a,07ch		;7f84	3e 7c 	> | 
	ld a,h			;7f86	7c 	| 
	ret m			;7f87	f8 	. 
	ret p			;7f88	f0 	. 
	ret nz			;7f89	c0 	. 
	rrca			;7f8a	0f 	. 
	ld b,a			;7f8b	47 	G 
	ld h,a			;7f8c	67 	g 
	di			;7f8d	f3 	. 
	di			;7f8e	f3 	. 
	ld sp,hl			;7f8f	f9 	. 
	ret p			;7f90	f0 	. 
	inc bc			;7f91	03 	. 
	ret p			;7f92	f0 	. 
	jp po,0cfe6h		;7f93	e2 e6 cf 	. . . 
	rst 8			;7f96	cf 	. 
	sbc a,a			;7f97	9f 	. 
	rrca			;7f98	0f 	. 
	ret nz			;7f99	c0 	. 
	inc bc			;7f9a	03 	. 
	ret p			;7f9b	f0 	. 
	ld sp,hl			;7f9c	f9 	. 
	di			;7f9d	f3 	. 
	di			;7f9e	f3 	. 
	ld h,a			;7f9f	67 	g 
	ld b,a			;7fa0	47 	G 
	rrca			;7fa1	0f 	. 
	ret nz			;7fa2	c0 	. 
	rrca			;7fa3	0f 	. 
	sbc a,a			;7fa4	9f 	. 
	rst 8			;7fa5	cf 	. 
	rst 8			;7fa6	cf 	. 
	and 0e2h		;7fa7	e6 e2 	. . 
	ret p			;7fa9	f0 	. 
	nop			;7faa	00 	. 
	nop			;7fab	00 	. 
	rrca			;7fac	0f 	. 
	rla			;7fad	17 	. 
	dec sp			;7fae	3b 	; 
	dec sp			;7faf	3b 	; 
	dec a			;7fb0	3d 	= 
	rst 38h			;7fb1	ff 	. 
	nop			;7fb2	00 	. 
	inc bc			;7fb3	03 	. 
	ret p			;7fb4	f0 	. 
	ret pe			;7fb5	e8 	. 
	ret c			;7fb6	d8 	. 
	call c,000bch		;7fb7	dc bc 00 	. . . 
	dec a			;7fba	3d 	= 
	dec sp			;7fbb	3b 	; 
	scf			;7fbc	37 	7 
	rla			;7fbd	17 	. 
	rrca			;7fbe	0f 	. 
	rst 38h			;7fbf	ff 	. 
	nop			;7fc0	00 	. 
	inc bc			;7fc1	03 	. 
	cp h			;7fc2	bc 	. 
	call c,0e8ech		;7fc3	dc ec e8 	. . . 
	ret p			;7fc6	f0 	. 
	rst 38h			;7fc7	ff 	. 
	nop			;7fc8	00 	. 
	inc bc			;7fc9	03 	. 
	ccf			;7fca	3f 	? 
	rst 38h			;7fcb	ff 	. 
	ld a,a			;7fcc	7f 	 
	dec b			;7fcd	05 	. 
	nop			;7fce	00 	. 
	nop			;7fcf	00 	. 
	ret m			;7fd0	f8 	. 
	rst 38h			;7fd1	ff 	. 
	call m,0fe05h		;7fd2	fc 05 fe 	. . . 
	cp 079h		;7fd5	fe 79 	. y 
	ld a,c			;7fd7	79 	y 
	rst 38h			;7fd8	ff 	. 
	ld a,a			;7fd9	7f 	 
	inc bc			;7fda	03 	. 
	rlca			;7fdb	07 	. 
	ld bc,09c7eh		;7fdc	01 7e 9c 	. ~ . 
	sbc a,h			;7fdf	9c 	. 
	rst 38h			;7fe0	ff 	. 
	call m,0f804h		;7fe1	fc 04 f8 	. . . 
	jr c,$+33		;7fe4	38 1f 	8 . 
	rst 38h			;7fe6	ff 	. 
	ccf			;7fe7	3f 	? 
	dec b			;7fe8	05 	. 
	ld a,a			;7fe9	7f 	 
	ld a,a			;7fea	7f 	 
	call m,0feffh		;7feb	fc ff fe 	. . . 
	dec b			;7fee	05 	. 
	nop			;7fef	00 	. 
	nop			;7ff0	00 	. 
	inc a			;7ff1	3c 	< 
	inc a			;7ff2	3c 	< 
	rst 38h			;7ff3	ff 	. 
	ccf			;7ff4	3f 	? 
	inc b			;7ff5	04 	. 
	rra			;7ff6	1f 	. 
	ld c,0ceh		;7ff7	0e ce 	. . 
	adc a,0ffh		;7ff9	ce ff 	. . 
	cp 003h		;7ffb	fe 03 	. . 
	ret nz			;7ffd	c0 	. 
	add a,b			;7ffe	80 	. 
	ld a,(hl)			;7fff	7e 	~ 
	nop			;8000	00 	. 
	rlca			;8001	07 	. 
	cpl			;8002	2f 	/ 
	scf			;8003	37 	7 
	ld (hl),a			;8004	77 	w 
	ld a,e			;8005	7b 	{ 
	jp m,000fch		;8006	fa fc 00 	. . . 
	ret po			;8009	e0 	. 
	call p,0eeeeh		;800a	f4 ee ee 	. . . 
	sbc a,05fh		;800d	de 5f 	. _ 
	ccf			;800f	3f 	? 
	inc a			;8010	3c 	< 
	rrca			;8011	0f 	. 
	rra			;8012	1f 	. 
	dec sp			;8013	3b 	; 
	scf			;8014	37 	7 
	rrca			;8015	0f 	. 
	rrca			;8016	0f 	. 
	ld b,03eh		;8017	06 3e 	. > 
	ret p			;8019	f0 	. 
	ret m			;801a	f8 	. 
	call c,0f0ech		;801b	dc ec f0 	. . . 
	ret p			;801e	f0 	. 
	ld h,b			;801f	60 	` 
	rst 38h			;8020	ff 	. 
	nop			;8021	00 	. 
	inc bc			;8022	03 	. 
	rlca			;8023	07 	. 
	rla			;8024	17 	. 
	dec sp			;8025	3b 	; 
	rst 38h			;8026	ff 	. 
	nop			;8027	00 	. 
	dec b			;8028	05 	. 
	ret po			;8029	e0 	. 
	ret pe			;802a	e8 	. 
	sbc a,0dfh		;802b	de df 	. . 
	nop			;802d	00 	. 
	rst 30h			;802e	f7 	. 
	ld (hl),b			;802f	70 	p 
	rra			;8030	1f 	. 
	rra			;8031	1f 	. 
	dec de			;8032	1b 	. 
	dec c			;8033	0d 	. 
	dec bc			;8034	0b 	. 
	inc bc			;8035	03 	. 
	rst 18h			;8036	df 	. 
	ld c,0f8h		;8037	0e f8 	. . 
	ret m			;8039	f8 	. 
	ret c			;803a	d8 	. 
	or b			;803b	b0 	. 
	ret nc			;803c	d0 	. 
	ret nz			;803d	c0 	. 
	ld bc,0ff05h		;803e	01 05 ff 	. . . 
	rrca			;8041	0f 	. 
	inc bc			;8042	03 	. 
	rlca			;8043	07 	. 
	inc bc			;8044	03 	. 
	ld b,c			;8045	41 	A 
	add a,b			;8046	80 	. 
	and b			;8047	a0 	. 
	rst 38h			;8048	ff 	. 
	ret p			;8049	f0 	. 
	inc bc			;804a	03 	. 
	ret po			;804b	e0 	. 
	ret nz			;804c	c0 	. 
	add a,d			;804d	82 	. 
	ld (hl),c			;804e	71 	q 
	ld a,c			;804f	79 	y 
	dec a			;8050	3d 	= 
	dec a			;8051	3d 	= 
	dec e			;8052	1d 	. 
	ld c,006h		;8053	0e 06 	. . 
	inc bc			;8055	03 	. 
	add a,(hl)			;8056	86 	. 
	adc a,(hl)			;8057	8e 	. 
	sbc a,(hl)			;8058	9e 	. 
	cp h			;8059	bc 	. 
	cp b			;805a	b8 	. 
	ld (hl),b			;805b	70 	p 
	ret po			;805c	e0 	. 
	add a,b			;805d	80 	. 
	inc bc			;805e	03 	. 
	rrca			;805f	0f 	. 
	rra			;8060	1f 	. 
	rra			;8061	1f 	. 
	nop			;8062	00 	. 
	add hl,bc			;8063	09 	. 
	add hl,bc			;8064	09 	. 
	ccf			;8065	3f 	? 
	add a,b			;8066	80 	. 
	ret po			;8067	e0 	. 
	ret p			;8068	f0 	. 
	ret p			;8069	f0 	. 
	nop			;806a	00 	. 
	jr nz,$+34		;806b	20 20 	    
	ret m			;806d	f8 	. 
	ld a,a			;806e	7f 	 
	rra			;806f	1f 	. 
	ld bc,03e00h		;8070	01 00 3e 	. . > 
	inc e			;8073	1c 	. 
	nop			;8074	00 	. 
	nop			;8075	00 	. 
	call m,0fefeh		;8076	fc fe fe 	. . . 
	nop			;8079	00 	. 
	ret m			;807a	f8 	. 
	ld (hl),b			;807b	70 	p 
	nop			;807c	00 	. 
	nop			;807d	00 	. 
	dec b			;807e	05 	. 
	ld bc,01f07h		;807f	01 07 1f 	. . . 
	ccf			;8082	3f 	? 
	ccf			;8083	3f 	? 
	ld a,a			;8084	7f 	 
	ld a,a			;8085	7f 	 
	ld b,b			;8086	40 	@ 
	nop			;8087	00 	. 
	ret nz			;8088	c0 	. 
	ret p			;8089	f0 	. 
	ret m			;808a	f8 	. 
	ret m			;808b	f8 	. 
	call m,000fch		;808c	fc fc 00 	. . . 
	ld d,e			;808f	53 	S 
	or a			;8090	b7 	. 
	ld d,e			;8091	53 	S 
	nop			;8092	00 	. 
	ld a,a			;8093	7f 	 
	ccf			;8094	3f 	? 
	rrca			;8095	0f 	. 
	nop			;8096	00 	. 
	sub h			;8097	94 	. 
	jp c,00094h		;8098	da 94 00 	. . . 
	call m,0f0f8h		;809b	fc f8 f0 	. . . 
	nop			;809e	00 	. 
	inc c			;809f	0c 	. 
	dec d			;80a0	15 	. 
	ld hl,02d44h		;80a1	21 44 2d 	! D - 
	dec e			;80a4	1d 	. 
	inc l			;80a5	2c 	, 
	nop			;80a6	00 	. 
	ld h,b			;80a7	60 	` 
	ld d,b			;80a8	50 	P 
	ex af,af'			;80a9	08 	. 
	ld b,h			;80aa	44 	D 
	ld l,b			;80ab	68 	h 
	ld (hl),b			;80ac	70 	p 
	ld l,b			;80ad	68 	h 
	ld c,l			;80ae	4d 	M 
	inc l			;80af	2c 	, 
	dec e			;80b0	1d 	. 
	dec l			;80b1	2d 	- 
	ld b,h			;80b2	44 	D 
	ld hl,00c15h		;80b3	21 15 0c 	! . . 
	ld h,h			;80b6	64 	d 
	ld l,b			;80b7	68 	h 
	ld (hl),b			;80b8	70 	p 
	ld l,b			;80b9	68 	h 
	ld b,h			;80ba	44 	D 
	ex af,af'			;80bb	08 	. 
	ld d,b			;80bc	50 	P 
	ld h,b			;80bd	60 	` 
	dec bc			;80be	0b 	. 
	inc de			;80bf	13 	. 
	inc hl			;80c0	23 	# 
	jr z,$+37		;80c1	28 23 	( # 
	ld a,(bc)			;80c3	0a 	. 
	ld hl,(0d003h)		;80c4	2a 03 d0 	* . . 
	adc a,b			;80c7	88 	. 
	ld d,h			;80c8	54 	T 
	ret nc			;80c9	d0 	. 
	inc b			;80ca	04 	. 
	call nc,05084h		;80cb	d4 84 50 	. . P 
	ex af,af'			;80ce	08 	. 
	add hl,hl			;80cf	29 	) 
	dec hl			;80d0	2b 	+ 
	dec hl			;80d1	2b 	+ 
	ld bc,01228h		;80d2	01 28 12 	. ( . 
	dec bc			;80d5	0b 	. 
	sub b			;80d6	90 	. 
	sub h			;80d7	94 	. 
	call nc,0d0c4h		;80d8	d4 c4 d0 	. . . 
	inc d			;80db	14 	. 
	ret z			;80dc	c8 	. 
	ld d,b			;80dd	50 	P 
	nop			;80de	00 	. 
	ld bc,00603h		;80df	01 03 06 	. . . 
	inc c			;80e2	0c 	. 
	jr $+53		;80e3	18 33 	. 3 
	ld h,a			;80e5	67 	g 
	nop			;80e6	00 	. 
	nop			;80e7	00 	. 
	add a,b			;80e8	80 	. 
	ret nz			;80e9	c0 	. 
	ld h,b			;80ea	60 	` 
	jr nc,$-102		;80eb	30 98 	0 . 
	call z,067c7h		;80ed	cc c7 67 	. . g 
	inc sp			;80f0	33 	3 
	jr $+14		;80f1	18 0c 	. . 
	ld b,003h		;80f3	06 03 	. . 
	ld bc,0ccc6h		;80f5	01 c6 cc 	. . . 
	sbc a,b			;80f8	98 	. 
	jr nc,$+98		;80f9	30 60 	0 ` 
	ret nz			;80fb	c0 	. 
	add a,b			;80fc	80 	. 
	rst 38h			;80fd	ff 	. 
	nop			;80fe	00 	. 
	inc bc			;80ff	03 	. 
	ld c,01fh		;8100	0e 1f 	. . 
	add hl,de			;8102	19 	. 
	jr $+53		;8103	18 33 	. 3 
	scf			;8105	37 	7 
	rst 38h			;8106	ff 	. 
	nop			;8107	00 	. 
	inc bc			;8108	03 	. 
	ret nz			;8109	c0 	. 
	ret m			;810a	f8 	. 
	ld a,086h		;810b	3e 86 	> . 
	call z,06737h		;810d	cc 37 67 	. 7 g 
	ld h,e			;8110	63 	c 
	ld a,h			;8111	7c 	| 
	rra			;8112	1f 	. 
	inc bc			;8113	03 	. 
	nop			;8114	00 	. 
	nop			;8115	00 	. 
	call z,098cch		;8116	cc cc 98 	. . . 
	jr $-102		;8119	18 98 	. . 
	ret p			;811b	f0 	. 
	ld (hl),b			;811c	70 	p 
	rst 38h			;811d	ff 	. 
	nop			;811e	00 	. 
	inc b			;811f	04 	. 
	ccf			;8120	3f 	? 
	ccf			;8121	3f 	? 
	jr nc,$+53		;8122	30 33 	0 3 
	scf			;8124	37 	7 
	rst 38h			;8125	ff 	. 
	nop			;8126	00 	. 
	inc bc			;8127	03 	. 
	ret m			;8128	f8 	. 
	ret m			;8129	f8 	. 
	jr $-102		;812a	18 98 	. . 
	ret c			;812c	d8 	. 
	scf			;812d	37 	7 
	scf			;812e	37 	7 
	inc sp			;812f	33 	3 
	jr nc,$+65		;8130	30 3f 	0 ? 
	ccf			;8132	3f 	? 
	nop			;8133	00 	. 
	nop			;8134	00 	. 
	ret c			;8135	d8 	. 
	ret c			;8136	d8 	. 
	sbc a,b			;8137	98 	. 
	jr $-6		;8138	18 f8 	. . 
	ret m			;813a	f8 	. 
	rst 38h			;813b	ff 	. 
	nop			;813c	00 	. 
	dec b			;813d	05 	. 
	rlca			;813e	07 	. 
	ccf			;813f	3f 	? 
	ld a,b			;8140	78 	x 
	ld h,e			;8141	63 	c 
	scf			;8142	37 	7 
	nop			;8143	00 	. 
	nop			;8144	00 	. 
	ret po			;8145	e0 	. 
	ret p			;8146	f0 	. 
	jr nc,$+50		;8147	30 30 	0 0 
	sbc a,b			;8149	98 	. 
	ret c			;814a	d8 	. 
	scf			;814b	37 	7 
	scf			;814c	37 	7 
	dec de			;814d	1b 	. 
	jr $+27		;814e	18 19 	. . 
	rrca			;8150	0f 	. 
	ld c,000h		;8151	0e 00 	. . 
	ret c			;8153	d8 	. 
	call z,03c8ch		;8154	cc 8c 3c 	. . < 
	ret m			;8157	f8 	. 
	ret nz			;8158	c0 	. 
	nop			;8159	00 	. 
	nop			;815a	00 	. 
	rla			;815b	17 	. 
	djnz $+50		;815c	10 30 	. 0 
	jr nc,$+114		;815e	30 70 	0 p 
	ld (hl),e			;8160	73 	s 
	rst 30h			;8161	f7 	. 
	rst 30h			;8162	f7 	. 
	ret nc			;8163	d0 	. 
	djnz $+26		;8164	10 18 	. . 
	jr $+30		;8166	18 1c 	. . 
	sbc a,h			;8168	9c 	. 
	sbc a,0deh		;8169	de de 	. . 
	ret p			;816b	f0 	. 
	ld (hl),e			;816c	73 	s 
	ld (hl),b			;816d	70 	p 
	jr nc,$+50		;816e	30 30 	0 0 
	djnz $+25		;8170	10 17 	. . 
	nop			;8172	00 	. 
	ld e,09ch		;8173	1e 9c 	. . 
	inc e			;8175	1c 	. 
	jr $+26		;8176	18 18 	. . 
	djnz $-46		;8178	10 d0 	. . 
	nop			;817a	00 	. 
	djnz $+25		;817b	10 17 	. . 
	jr nc,$+50		;817d	30 30 	0 0 
	ld (hl),b			;817f	70 	p 
	ld (hl),a			;8180	77 	w 
	ret p			;8181	f0 	. 
	rst 30h			;8182	f7 	. 
	djnz $-46		;8183	10 d0 	. . 
	jr $+26		;8185	18 18 	. . 
	inc e			;8187	1c 	. 
	call c,0de1eh		;8188	dc 1e de 	. . . 
	rst 30h			;818b	f7 	. 
	ld (hl),e			;818c	73 	s 
	ld (hl),b			;818d	70 	p 
	jr nc,$+50		;818e	30 30 	0 0 
	rla			;8190	17 	. 
	djnz $+2		;8191	10 00 	. . 
	sbc a,09ch		;8193	de 9c 	. . 
	inc e			;8195	1c 	. 
	jr $+26		;8196	18 18 	. . 
	ret nc			;8198	d0 	. 
	djnz $+2		;8199	10 00 	. . 
	djnz $+18		;819b	10 10 	. . 
	jr nc,$+57		;819d	30 37 	0 7 
	ld (hl),b			;819f	70 	p 
	ld (hl),e			;81a0	73 	s 
	rst 30h			;81a1	f7 	. 
	ret p			;81a2	f0 	. 
	djnz $+18		;81a3	10 10 	. . 
	jr $-38		;81a5	18 d8 	. . 
	inc e			;81a7	1c 	. 
	sbc a,h			;81a8	9c 	. 
	sbc a,0deh		;81a9	de de 	. . 
	rst 30h			;81ab	f7 	. 
	ld (hl),e			;81ac	73 	s 
	ld (hl),b			;81ad	70 	p 
	jr nc,$+57		;81ae	30 37 	0 7 
	djnz $+18		;81b0	10 10 	. . 
	nop			;81b2	00 	. 
	sbc a,09ch		;81b3	de 9c 	. . 
	inc e			;81b5	1c 	. 
	jr $-38		;81b6	18 d8 	. . 
	djnz $+18		;81b8	10 10 	. . 
	nop			;81ba	00 	. 
	rla			;81bb	17 	. 
	djnz $+50		;81bc	10 30 	. 0 
	jr nc,$+114		;81be	30 70 	0 p 
	ld (hl),e			;81c0	73 	s 
	rst 30h			;81c1	f7 	. 
	ret p			;81c2	f0 	. 
	ret nc			;81c3	d0 	. 
	djnz $+26		;81c4	10 18 	. . 
	jr $+30		;81c6	18 1c 	. . 
	sbc a,h			;81c8	9c 	. 
	sbc a,0deh		;81c9	de de 	. . 
	rst 30h			;81cb	f7 	. 
	ld (hl),a			;81cc	77 	w 
	ld (hl),b			;81cd	70 	p 
	jr nc,$+50		;81ce	30 30 	0 0 
	djnz $+25		;81d0	10 17 	. . 
	nop			;81d2	00 	. 
	sbc a,0dch		;81d3	de dc 	. . 
	inc e			;81d5	1c 	. 
	jr $+26		;81d6	18 18 	. . 
	djnz $-46		;81d8	10 d0 	. . 
	nop			;81da	00 	. 
	ld b,01ch		;81db	06 1c 	. . 
	scf			;81dd	37 	7 
	ld h,e			;81de	63 	c 
	ld b,e			;81df	43 	C 
	inc hl			;81e0	23 	# 
	ld e,a			;81e1	5f 	_ 
	ld a,(hl)			;81e2	7e 	~ 
	add a,b			;81e3	80 	. 
	ret nc			;81e4	d0 	. 
	call c,0868eh		;81e5	dc 8e 86 	. . . 
	call z,07ffeh		;81e8	cc fe 7f 	. .  
	call z,08484h		;81eb	cc 84 84 	. . . 
	add a,(hl)			;81ee	86 	. 
	jp 07747h		;81ef	c3 47 77 	. G w 
	ld e,03bh		;81f2	1e 3b 	. ; 
	inc de			;81f4	13 	. 
	ld de,02121h		;81f5	11 21 21 	. ! ! 
	jp po,078a6h		;81f8	e2 a6 78 	. . x 
	ld bc,01f0dh		;81fb	01 0d 1f 	. . . 
	ld h,02ch		;81fe	26 2c 	& , 
	ld b,h			;8200	44 	D 
	ld b,(hl)			;8201	46 	F 
	ld (hl),a			;8202	77 	w 
	add a,b			;8203	80 	. 
	ret c			;8204	d8 	. 
	call m,03072h		;8205	fc 72 30 	. r 0 
	jr c,$+63		;8208	38 3d 	8 = 
	rst 8			;820a	cf 	. 
	ld sp,hl			;820b	f9 	. 
	pop de			;820c	d1 	. 
	ld d,b			;820d	50 	P 
	ld e,b			;820e	58 	X 
	jr z,$+42		;820f	28 28 	( ( 
	inc d			;8211	14 	. 
	rrca			;8212	0f 	. 
	add a,e			;8213	83 	. 
	ld (bc),a			;8214	02 	. 
	add a,h			;8215	84 	. 
	call nz,07868h		;8216	c4 68 78 	. h x 
	call m,000d0h		;8219	fc d0 00 	. . . 
	ld b,00eh		;821c	06 0e 	. . 
	inc de			;821e	13 	. 
	inc hl			;821f	23 	# 
	ld b,e			;8220	43 	C 
	ld b,c			;8221	41 	A 
	ld (hl),e			;8222	73 	s 
	add a,b			;8223	80 	. 
	ld e,b			;8224	58 	X 
	ret m			;8225	f8 	. 
	sbc a,h			;8226	9c 	. 
	inc c			;8227	0c 	. 
	ld c,08fh		;8228	0e 8f 	. . 
	di			;822a	f3 	. 
	call pe,044c4h		;822b	ec c4 44 	. . D 
	ld b,h			;822e	44 	D 
	ld h,022h		;822f	26 22 	& " 
	inc de			;8231	13 	. 
	rrca			;8232	0f 	. 
	ld h,c			;8233	61 	a 
	ld hl,03232h		;8234	21 32 32 	! 2 2 
	djnz $+28		;8237	10 1a 	. . 
	cp h			;8239	bc 	. 
	ret nc			;823a	d0 	. 
	rst 38h			;823b	ff 	. 
	nop			;823c	00 	. 
	dec b			;823d	05 	. 
	ld a,e			;823e	7b 	{ 
	rlca			;823f	07 	. 
	rlca			;8240	07 	. 
	ret nz			;8241	c0 	. 
	rst 38h			;8242	ff 	. 
	ret po			;8243	e0 	. 
	inc bc			;8244	03 	. 
	jr nz,$-62		;8245	20 c0 	  . 
	ret po			;8247	e0 	. 
	ret po			;8248	e0 	. 
	rlca			;8249	07 	. 
	rlca			;824a	07 	. 
	inc bc			;824b	03 	. 
	inc b			;824c	04 	. 
	rlca			;824d	07 	. 
	rlca			;824e	07 	. 
	inc bc			;824f	03 	. 
	inc bc			;8250	03 	. 
	ret po			;8251	e0 	. 
	ret po			;8252	e0 	. 
	sbc a,0ffh		;8253	de ff 	. . 
	nop			;8255	00 	. 
	ex af,af'			;8256	08 	. 
	jr c,$+126		;8257	38 7c 	8 | 
	ld a,e			;8259	7b 	{ 
	scf			;825a	37 	7 
	rlca			;825b	07 	. 
	nop			;825c	00 	. 
	jr nc,$+122		;825d	30 78 	0 x 
	ld a,b			;825f	78 	x 
	jr c,$-46		;8260	38 d0 	8 . 
	ret po			;8262	e0 	. 
	ret po			;8263	e0 	. 
	rlca			;8264	07 	. 
	rlca			;8265	07 	. 
	dec de			;8266	1b 	. 
	rst 38h			;8267	ff 	. 
	inc a			;8268	3c 	< 
	inc bc			;8269	03 	. 
	jr $+2		;826a	18 00 	. . 
	ret po			;826c	e0 	. 
	call pe,03edeh		;826d	ec de 3e 	. . > 
	inc e			;8270	1c 	. 
	rst 38h			;8271	ff 	. 
	nop			;8272	00 	. 
	inc b			;8273	04 	. 
	inc e			;8274	1c 	. 
	ld e,00fh		;8275	1e 0f 	. . 
	inc c			;8277	0c 	. 
	inc bc			;8278	03 	. 
	rlca			;8279	07 	. 
	rlca			;827a	07 	. 
	rst 38h			;827b	ff 	. 
	nop			;827c	00 	. 
	inc bc			;827d	03 	. 
	ld b,01eh		;827e	06 1e 	. . 
	sbc a,0ech		;8280	de ec 	. . 
	ret pe			;8282	e8 	. 
	rla			;8283	17 	. 
	scf			;8284	37 	7 
	ld a,e			;8285	7b 	{ 
	ld a,b			;8286	78 	x 
	ld h,b			;8287	60 	` 
	rst 38h			;8288	ff 	. 
	nop			;8289	00 	. 
	inc bc			;828a	03 	. 
	ret po			;828b	e0 	. 
	ret po			;828c	e0 	. 
	ret nz			;828d	c0 	. 
	jr nc,$-14		;828e	30 f0 	0 . 
	ld a,b			;8290	78 	x 
	jr c,$+2		;8291	38 00 	8 . 
	inc b			;8293	04 	. 
	ld b,007h		;8294	06 07 	. . 
	inc b			;8296	04 	. 
	ex af,af'			;8297	08 	. 
	pop af			;8298	f1 	. 
	ld h,e			;8299	63 	c 
	daa			;829a	27 	' 
	jr nz,$+98		;829b	20 60 	  ` 
	ret po			;829d	e0 	. 
	jr nz,$+18		;829e	20 10 	  . 
	adc a,a			;82a0	8f 	. 
	add a,0e4h		;82a1	c6 e4 	. . 
	daa			;82a3	27 	' 
	ld h,e			;82a4	63 	c 
	pop af			;82a5	f1 	. 
	ex af,af'			;82a6	08 	. 
	inc b			;82a7	04 	. 
	rlca			;82a8	07 	. 
	rlca			;82a9	07 	. 
	ld b,0e4h		;82aa	06 e4 	. . 
	add a,08fh		;82ac	c6 8f 	. . 
	djnz $+34		;82ae	10 20 	.   
	ret po			;82b0	e0 	. 
	ret po			;82b1	e0 	. 
	ld h,b			;82b2	60 	` 
	ld (bc),a			;82b3	02 	. 
	ld bc,0201fh		;82b4	01 1f 20 	. .   
	ld c,a			;82b7	4f 	O 
	ld e,a			;82b8	5f 	_ 
	sbc a,a			;82b9	9f 	. 
	ld e,a			;82ba	5f 	_ 
	ld b,b			;82bb	40 	@ 
	add a,b			;82bc	80 	. 
	ret m			;82bd	f8 	. 
	inc b			;82be	04 	. 
	jp p,0f9fah		;82bf	f2 fa f9 	. . . 
	jp m,09f5fh		;82c2	fa 5f 9f 	. _ . 
	ld e,a			;82c5	5f 	_ 
	ld c,a			;82c6	4f 	O 
	jr nz,$+33		;82c7	20 1f 	  . 
	ld bc,0fa02h		;82c9	01 02 fa 	. . . 
	ld sp,hl			;82cc	f9 	. 
	jp m,004f2h		;82cd	fa f2 04 	. . . 
	ret m			;82d0	f8 	. 
	add a,b			;82d1	80 	. 
	ld b,b			;82d2	40 	@ 
	rrca			;82d3	0f 	. 
	djnz $+37		;82d4	10 23 	. # 
	ld c,a			;82d6	4f 	O 
	sbc a,a			;82d7	9f 	. 
	sbc a,a			;82d8	9f 	. 
	cp a			;82d9	bf 	. 
	cp a			;82da	bf 	. 
	ret p			;82db	f0 	. 
	ex af,af'			;82dc	08 	. 
	call nz,0f9f2h		;82dd	c4 f2 f9 	. . . 
	ld sp,hl			;82e0	f9 	. 
	defb 0fdh,0fdh,0bfh	;illegal sequence		;82e1	fd fd bf 	. . . 
	cp a			;82e4	bf 	. 
	sbc a,a			;82e5	9f 	. 
	sbc a,a			;82e6	9f 	. 
	ld c,a			;82e7	4f 	O 
	inc hl			;82e8	23 	# 
	djnz $+17		;82e9	10 0f 	. . 
	defb 0fdh,0fdh,0f9h	;illegal sequence		;82eb	fd fd f9 	. . . 
	ld sp,hl			;82ee	f9 	. 
	jp p,008c4h		;82ef	f2 c4 08 	. . . 
	ret p			;82f2	f0 	. 
	ld (bc),a			;82f3	02 	. 
	inc bc			;82f4	03 	. 
	ld bc,00301h		;82f5	01 01 03 	. . . 
	ld b,0cch		;82f8	06 cc 	. . 
	ld a,b			;82fa	78 	x 
	ld b,b			;82fb	40 	@ 
	ret nz			;82fc	c0 	. 
	add a,b			;82fd	80 	. 
	add a,b			;82fe	80 	. 
	ret nz			;82ff	c0 	. 
	ld h,b			;8300	60 	` 
	inc sp			;8301	33 	3 
	ld e,078h		;8302	1e 78 	. x 
	call z,00306h		;8304	cc 06 03 	. . . 
	ld bc,00301h		;8307	01 01 03 	. . . 
	ld (bc),a			;830a	02 	. 
	ld e,033h		;830b	1e 33 	. 3 
	ld h,b			;830d	60 	` 
	ret nz			;830e	c0 	. 
	add a,b			;830f	80 	. 
	add a,b			;8310	80 	. 
	ret nz			;8311	c0 	. 
	ld b,b			;8312	40 	@ 
	inc e			;8313	1c 	. 
	inc d			;8314	14 	. 
	inc d			;8315	14 	. 
	ld a,a			;8316	7f 	 
	adc a,b			;8317	88 	. 
	nop			;8318	00 	. 
	nop			;8319	00 	. 
	inc d			;831a	14 	. 
	jr c,$+42		;831b	38 28 	8 ( 
	jr z,$+2		;831d	28 00 	( . 
	ld de,00000h		;831f	11 00 00 	. . . 
	jr z,$+22		;8322	28 14 	( . 
	inc d			;8324	14 	. 
	ld a,a			;8325	7f 	 
	sbc a,b			;8326	98 	. 
	nop			;8327	00 	. 
	nop			;8328	00 	. 
	inc d			;8329	14 	. 
	inc e			;832a	1c 	. 
	jr z,$+42		;832b	28 28 	( ( 
	nop			;832d	00 	. 
	add hl,de			;832e	19 	. 
	nop			;832f	00 	. 
	nop			;8330	00 	. 
	jr z,$+58		;8331	28 38 	( 8 
	ld (bc),a			;8333	02 	. 
	inc bc			;8334	03 	. 
	rst 38h			;8335	ff 	. 
	ld bc,0c304h		;8336	01 04 c3 	. . . 
	halt			;8339	76 	v 
	ld b,b			;833a	40 	@ 
	ret nz			;833b	c0 	. 
	rst 38h			;833c	ff 	. 
	add a,b			;833d	80 	. 
	inc b			;833e	04 	. 
	jp 0766eh		;833f	c3 6e 76 	. n v 
	jp 001ffh		;8342	c3 ff 01 	. . . 
	inc b			;8345	04 	. 
	inc bc			;8346	03 	. 
	ld (bc),a			;8347	02 	. 
	ld l,(hl)			;8348	6e 	n 
	jp 080ffh		;8349	c3 ff 80 	. . . 
	inc b			;834c	04 	. 
	ret nz			;834d	c0 	. 
	ld b,b			;834e	40 	@ 
	rst 38h			;834f	ff 	. 
	nop			;8350	00 	. 
	ld b,07fh		;8351	06 7f 	.  
	ld a,(hl)			;8353	7e 	~ 
	rst 38h			;8354	ff 	. 
	nop			;8355	00 	. 
	ld b,0feh		;8356	06 fe 	. . 
	ld a,(hl)			;8358	7e 	~ 
	ld a,(hl)			;8359	7e 	~ 
	rst 38h			;835a	ff 	. 
	nop			;835b	00 	. 
	rlca			;835c	07 	. 
	ld a,(hl)			;835d	7e 	~ 
	rst 38h			;835e	ff 	. 
	nop			;835f	00 	. 
	rlca			;8360	07 	. 
	ld b,0ffh		;8361	06 ff 	. . 
	rlca			;8363	07 	. 
	rlca			;8364	07 	. 
	ld h,b			;8365	60 	` 
	rst 38h			;8366	ff 	. 
	ret po			;8367	e0 	. 
	rlca			;8368	07 	. 
	rst 38h			;8369	ff 	. 
	rlca			;836a	07 	. 
	rlca			;836b	07 	. 
	ld b,0ffh		;836c	06 ff 	. . 
	ret po			;836e	e0 	. 
	rlca			;836f	07 	. 
	ld h,b			;8370	60 	` 
	ld b,0ffh		;8371	06 ff 	. . 
	rlca			;8373	07 	. 
	inc b			;8374	04 	. 
	cp 07fh		;8375	fe 7f 	.  
	ld a,(hl)			;8377	7e 	~ 
	ld h,b			;8378	60 	` 
	rst 38h			;8379	ff 	. 
	ret po			;837a	e0 	. 
	inc b			;837b	04 	. 
	ccf			;837c	3f 	? 
	cp 07eh		;837d	fe 7e 	. ~ 
	ld a,(hl)			;837f	7e 	~ 
	nop			;8380	00 	. 
	call m,007ffh		;8381	fc ff 07 	. . . 
	inc b			;8384	04 	. 
	ld b,07eh		;8385	06 7e 	. ~ 
	nop			;8387	00 	. 
	ccf			;8388	3f 	? 
	rst 38h			;8389	ff 	. 
	ret po			;838a	e0 	. 
	inc b			;838b	04 	. 
	ld h,b			;838c	60 	` 
	nop			;838d	00 	. 
	rst 38h			;838e	ff 	. 
	add a,c			;838f	81 	. 
	ld b,000h		;8390	06 00 	. . 
	nop			;8392	00 	. 
	rst 38h			;8393	ff 	. 
	add a,c			;8394	81 	. 
	ld b,000h		;8395	06 00 	. . 
	nop			;8397	00 	. 
	rst 38h			;8398	ff 	. 
	add a,c			;8399	81 	. 
	ld b,000h		;839a	06 00 	. . 
	nop			;839c	00 	. 
	rst 38h			;839d	ff 	. 
	add a,c			;839e	81 	. 
	ld b,0ffh		;839f	06 ff 	. . 
	nop			;83a1	00 	. 
	inc bc			;83a2	03 	. 
	ret p			;83a3	f0 	. 
	add a,b			;83a4	80 	. 
	add a,b			;83a5	80 	. 
	rst 38h			;83a6	ff 	. 
	ret p			;83a7	f0 	. 
	inc bc			;83a8	03 	. 
	nop			;83a9	00 	. 
	nop			;83aa	00 	. 
	ret p			;83ab	f0 	. 
	add a,b			;83ac	80 	. 
	add a,b			;83ad	80 	. 
	rst 38h			;83ae	ff 	. 
	ret po			;83af	e0 	. 
	inc bc			;83b0	03 	. 
	rst 38h			;83b1	ff 	. 
	ret p			;83b2	f0 	. 
	rlca			;83b3	07 	. 
	nop			;83b4	00 	. 
	rst 38h			;83b5	ff 	. 
	ret po			;83b6	e0 	. 
	inc bc			;83b7	03 	. 
	ret p			;83b8	f0 	. 
	rst 38h			;83b9	ff 	. 
	ret po			;83ba	e0 	. 
	inc bc			;83bb	03 	. 
	rst 38h			;83bc	ff 	. 
	nop			;83bd	00 	. 
	dec b			;83be	05 	. 
	rst 38h			;83bf	ff 	. 
	ret p			;83c0	f0 	. 
	inc b			;83c1	04 	. 
	rst 38h			;83c2	ff 	. 
	nop			;83c3	00 	. 
	inc bc			;83c4	03 	. 
	ret p			;83c5	f0 	. 
	rst 38h			;83c6	ff 	. 
	add a,b			;83c7	80 	. 
	inc bc			;83c8	03 	. 
	ret po			;83c9	e0 	. 
	ret p			;83ca	f0 	. 
	rst 38h			;83cb	ff 	. 
	ret po			;83cc	e0 	. 
	ld b,000h		;83cd	06 00 	. . 
	rst 38h			;83cf	ff 	. 
	ret po			;83d0	e0 	. 
	inc b			;83d1	04 	. 
	rst 38h			;83d2	ff 	. 
	nop			;83d3	00 	. 
	add hl,bc			;83d4	09 	. 
	rst 38h			;83d5	ff 	. 
	ret p			;83d6	f0 	. 
	inc bc			;83d7	03 	. 
	rst 38h			;83d8	ff 	. 
	nop			;83d9	00 	. 
	dec b			;83da	05 	. 
	ret p			;83db	f0 	. 
	ret p			;83dc	f0 	. 
	add a,b			;83dd	80 	. 
	rst 38h			;83de	ff 	. 
	ret po			;83df	e0 	. 
	inc b			;83e0	04 	. 
	rst 38h			;83e1	ff 	. 
	nop			;83e2	00 	. 
	inc b			;83e3	04 	. 
	rst 38h			;83e4	ff 	. 
	add a,b			;83e5	80 	. 
	inc bc			;83e6	03 	. 
	ret po			;83e7	e0 	. 
	rst 38h			;83e8	ff 	. 
	nop			;83e9	00 	. 
	dec b			;83ea	05 	. 
	rst 38h			;83eb	ff 	. 
	ret po			;83ec	e0 	. 
	rlca			;83ed	07 	. 
	rst 38h			;83ee	ff 	. 
	nop			;83ef	00 	. 
	inc b			;83f0	04 	. 
	rst 38h			;83f1	ff 	. 
	ret p			;83f2	f0 	. 
	inc b			;83f3	04 	. 
	rst 38h			;83f4	ff 	. 
	ret po			;83f5	e0 	. 
	inc b			;83f6	04 	. 
	rst 38h			;83f7	ff 	. 
	nop			;83f8	00 	. 
	inc b			;83f9	04 	. 
	ret po			;83fa	e0 	. 
	rst 38h			;83fb	ff 	. 
	add a,b			;83fc	80 	. 
	inc bc			;83fd	03 	. 
	ret p			;83fe	f0 	. 
	rst 38h			;83ff	ff 	. 
	nop			;8400	00 	. 
	inc bc			;8401	03 	. 
	rst 38h			;8402	ff 	. 
	ld b,b			;8403	40 	@ 
	dec b			;8404	05 	. 
	ld c,c			;8405	49 	I 
	ld c,b			;8406	48 	H 
	inc b			;8407	04 	. 
	rst 38h			;8408	ff 	. 
	ld b,b			;8409	40 	@ 
	dec b			;840a	05 	. 
	ld c,c			;840b	49 	I 
	ld c,b			;840c	48 	H 
	rst 38h			;840d	ff 	. 
	inc b			;840e	04 	. 
	inc b			;840f	04 	. 
	rst 38h			;8410	ff 	. 
	ld b,b			;8411	40 	@ 
	dec b			;8412	05 	. 
	rst 38h			;8413	ff 	. 
	inc b			;8414	04 	. 
	inc bc			;8415	03 	. 
	rst 38h			;8416	ff 	. 
	ld b,b			;8417	40 	@ 
	dec bc			;8418	0b 	. 
	ld b,(hl)			;8419	46 	F 
	ld c,b			;841a	48 	H 
	rst 38h			;841b	ff 	. 
	ld b,b			;841c	40 	@ 
	ld b,04fh		;841d	06 4f 	. O 
	ld c,c			;841f	49 	I 
	ld c,b			;8420	48 	H 
	ld b,(hl)			;8421	46 	F 
	ld b,(hl)			;8422	46 	F 
	rst 38h			;8423	ff 	. 
	ld b,b			;8424	40 	@ 
	dec b			;8425	05 	. 
	ld c,b			;8426	48 	H 
	ld b,(hl)			;8427	46 	F 
	ld b,(hl)			;8428	46 	F 
	rst 38h			;8429	ff 	. 
	ld b,b			;842a	40 	@ 
	dec b			;842b	05 	. 
	rrca			;842c	0f 	. 
	rrca			;842d	0f 	. 
	rst 38h			;842e	ff 	. 
	ld c,003h		;842f	0e 03 	. . 
	rst 38h			;8431	ff 	. 
	ret po			;8432	e0 	. 
	inc bc			;8433	03 	. 
	rrca			;8434	0f 	. 
	rrca			;8435	0f 	. 
	rst 38h			;8436	ff 	. 
	ld c,003h		;8437	0e 03 	. . 
	rst 38h			;8439	ff 	. 
	ret po			;843a	e0 	. 
	ld b,0efh		;843b	06 ef 	. . 
	rst 38h			;843d	ff 	. 
	ld c,004h		;843e	0e 04 	. . 
	rst 38h			;8440	ff 	. 
	ret po			;8441	e0 	. 
	inc bc			;8442	03 	. 
	rst 28h			;8443	ef 	. 
	rst 38h			;8444	ff 	. 
	ld c,004h		;8445	0e 04 	. . 
	rst 38h			;8447	ff 	. 
	nop			;8448	00 	. 
	inc b			;8449	04 	. 
	rst 38h			;844a	ff 	. 
	rrca			;844b	0f 	. 
	inc bc			;844c	03 	. 
	ld c,0ffh		;844d	0e ff 	. . 
	nop			;844f	00 	. 
	inc b			;8450	04 	. 
	rst 38h			;8451	ff 	. 
	rrca			;8452	0f 	. 
	inc bc			;8453	03 	. 
	ld c,0e0h		;8454	0e e0 	. . 
	rst 28h			;8456	ef 	. 
	ld c,0ffh		;8457	0e ff 	. . 
	nop			;8459	00 	. 
	dec b			;845a	05 	. 
	ret po			;845b	e0 	. 
	rst 28h			;845c	ef 	. 
	ld c,0ffh		;845d	0e ff 	. . 
	nop			;845f	00 	. 
	dec b			;8460	05 	. 
	ret p			;8461	f0 	. 
	rst 38h			;8462	ff 	. 
	ret po			;8463	e0 	. 
	rlca			;8464	07 	. 
	ret p			;8465	f0 	. 
	ret p			;8466	f0 	. 
	rst 38h			;8467	ff 	. 
	ret po			;8468	e0 	. 
	inc c			;8469	0c 	. 
	ret p			;846a	f0 	. 
	ret p			;846b	f0 	. 
	rst 38h			;846c	ff 	. 
	ret po			;846d	e0 	. 
	dec b			;846e	05 	. 
	ret p			;846f	f0 	. 
	ret p			;8470	f0 	. 
	rst 38h			;8471	ff 	. 
	nop			;8472	00 	. 
	inc b			;8473	04 	. 
	ret p			;8474	f0 	. 
	ret po			;8475	e0 	. 
	ret p			;8476	f0 	. 
	ret po			;8477	e0 	. 
	ret po			;8478	e0 	. 
	rst 38h			;8479	ff 	. 
	nop			;847a	00 	. 
	inc b			;847b	04 	. 
	ret p			;847c	f0 	. 
	ret p			;847d	f0 	. 
	rst 38h			;847e	ff 	. 
	ret po			;847f	e0 	. 
	dec b			;8480	05 	. 
	ret p			;8481	f0 	. 
	ret po			;8482	e0 	. 
	ret p			;8483	f0 	. 
	nop			;8484	00 	. 
	nop			;8485	00 	. 
	rst 38h			;8486	ff 	. 
	ret po			;8487	e0 	. 
	inc bc			;8488	03 	. 
	ret p			;8489	f0 	. 
	rst 38h			;848a	ff 	. 
	nop			;848b	00 	. 
	dec b			;848c	05 	. 
	ret po			;848d	e0 	. 
	ret p			;848e	f0 	. 
	sub b			;848f	90 	. 
	add a,b			;8490	80 	. 
	ld h,b			;8491	60 	` 
	ret po			;8492	e0 	. 
	push hl			;8493	e5 	. 
	ret po			;8494	e0 	. 
	ret po			;8495	e0 	. 
	ld c,0e0h		;8496	0e e0 	. . 
	ret po			;8498	e0 	. 
	rst 20h			;8499	e7 	. 
	ld (hl),b			;849a	70 	p 
	ld d,b			;849b	50 	P 
	ld d,b			;849c	50 	P 
	ld b,b			;849d	40 	@ 
	rst 38h			;849e	ff 	. 
	nop			;849f	00 	. 
	inc bc			;84a0	03 	. 
	ld d,b			;84a1	50 	P 
	ld d,b			;84a2	50 	P 
	ret p			;84a3	f0 	. 
	dec b			;84a4	05 	. 
	dec b			;84a5	05 	. 
	rst 38h			;84a6	ff 	. 
	ld d,b			;84a7	50 	P 
	dec b			;84a8	05 	. 
	ret p			;84a9	f0 	. 
	rst 38h			;84aa	ff 	. 
	nop			;84ab	00 	. 
	inc b			;84ac	04 	. 
	ret po			;84ad	e0 	. 
	ret p			;84ae	f0 	. 
	sub b			;84af	90 	. 
	add a,b			;84b0	80 	. 
	rst 38h			;84b1	ff 	. 
	nop			;84b2	00 	. 
	inc bc			;84b3	03 	. 
	ret po			;84b4	e0 	. 
	ret po			;84b5	e0 	. 
	ld c,0e0h		;84b6	0e e0 	. . 
	ret po			;84b8	e0 	. 
	ld h,b			;84b9	60 	` 
	ret po			;84ba	e0 	. 
	push hl			;84bb	e5 	. 
	ld d,b			;84bc	50 	P 
	rst 38h			;84bd	ff 	. 
	ld b,b			;84be	40 	@ 
	inc bc			;84bf	03 	. 
	ret p			;84c0	f0 	. 
	rst 20h			;84c1	e7 	. 
	ld (hl),b			;84c2	70 	p 
	rst 38h			;84c3	ff 	. 
	ld d,b			;84c4	50 	P 
	dec b			;84c5	05 	. 
	ret p			;84c6	f0 	. 
	ret po			;84c7	e0 	. 
	ret po			;84c8	e0 	. 
	ret p			;84c9	f0 	. 
	sub b			;84ca	90 	. 
	add a,b			;84cb	80 	. 
	ld h,b			;84cc	60 	` 
	ret po			;84cd	e0 	. 
	ex (sp),hl			;84ce	e3 	. 
	rst 38h			;84cf	ff 	. 
	ret po			;84d0	e0 	. 
	ex af,af'			;84d1	08 	. 
	ld (hl),h			;84d2	74 	t 
	rst 38h			;84d3	ff 	. 
	ld b,b			;84d4	40 	@ 
	inc b			;84d5	04 	. 
	rst 38h			;84d6	ff 	. 
	nop			;84d7	00 	. 
	inc bc			;84d8	03 	. 
	ret po			;84d9	e0 	. 
	rst 20h			;84da	e7 	. 
	ld (hl),h			;84db	74 	t 
	rst 38h			;84dc	ff 	. 
	ld b,b			;84dd	40 	@ 
	inc bc			;84de	03 	. 
	rst 38h			;84df	ff 	. 
	nop			;84e0	00 	. 
	ex af,af'			;84e1	08 	. 
	ret po			;84e2	e0 	. 
	ret po			;84e3	e0 	. 
	rst 38h			;84e4	ff 	. 
	nop			;84e5	00 	. 
	ld b,0e0h		;84e6	06 e0 	. . 
	ret po			;84e8	e0 	. 
	ret p			;84e9	f0 	. 
	sub b			;84ea	90 	. 
	add a,b			;84eb	80 	. 
	ld h,b			;84ec	60 	` 
	ret po			;84ed	e0 	. 
	ret po			;84ee	e0 	. 
	ld b,a			;84ef	47 	G 
	ld b,b			;84f0	40 	@ 
	rst 38h			;84f1	ff 	. 
	ret po			;84f2	e0 	. 
	inc b			;84f3	04 	. 
	ld c,00eh		;84f4	0e 0e 	. . 
	ld a,(hl)			;84f6	7e 	~ 
	ld b,a			;84f7	47 	G 
	ret p			;84f8	f0 	. 
	sub b			;84f9	90 	. 
	add a,(hl)			;84fa	86 	. 
	rst 38h			;84fb	ff 	. 
	ld h,b			;84fc	60 	` 
	inc bc			;84fd	03 	. 
	ld d,b			;84fe	50 	P 
	ld b,b			;84ff	40 	@ 
	nop			;8500	00 	. 
	ret p			;8501	f0 	. 
	ret p			;8502	f0 	. 
	ret po			;8503	e0 	. 
	ld a,(hl)			;8504	7e 	~ 
	dec b			;8505	05 	. 
	ld d,b			;8506	50 	P 
	ld b,b			;8507	40 	@ 
	rst 38h			;8508	ff 	. 
	add a,b			;8509	80 	. 
	inc bc			;850a	03 	. 
	nop			;850b	00 	. 
	nop			;850c	00 	. 
	add a,b			;850d	80 	. 
	ret p			;850e	f0 	. 
	ret p			;850f	f0 	. 
	rst 38h			;8510	ff 	. 
	add a,b			;8511	80 	. 
	inc bc			;8512	03 	. 
	ret p			;8513	f0 	. 
	ret p			;8514	f0 	. 
	nop			;8515	00 	. 
	ret p			;8516	f0 	. 
	ret p			;8517	f0 	. 
	rst 38h			;8518	ff 	. 
	nop			;8519	00 	. 
	ld b,0f0h		;851a	06 f0 	. . 
	sub b			;851c	90 	. 
	rst 38h			;851d	ff 	. 
	nop			;851e	00 	. 
	ex af,af'			;851f	08 	. 
	ex af,af'			;8520	08 	. 
	rst 38h			;8521	ff 	. 
	ld h,b			;8522	60 	` 
	inc bc			;8523	03 	. 
	ld d,b			;8524	50 	P 
	inc b			;8525	04 	. 
	nop			;8526	00 	. 
	ret m			;8527	f8 	. 
	ret p			;8528	f0 	. 
	ret p			;8529	f0 	. 
	ret po			;852a	e0 	. 
	ld a,(hl)			;852b	7e 	~ 
	dec b			;852c	05 	. 
	ld b,b			;852d	40 	@ 
	add a,b			;852e	80 	. 
	add a,b			;852f	80 	. 
	ret p			;8530	f0 	. 
	rst 38h			;8531	ff 	. 
	ld b,b			;8532	40 	@ 
	inc bc			;8533	03 	. 
	ld d,b			;8534	50 	P 
	ld d,b			;8535	50 	P 
	ld (hl),b			;8536	70 	p 
	ret p			;8537	f0 	. 
	ret p			;8538	f0 	. 
	rst 38h			;8539	ff 	. 
	ld b,b			;853a	40 	@ 
	inc bc			;853b	03 	. 
	ld d,b			;853c	50 	P 
	ld d,b			;853d	50 	P 
	ld (hl),b			;853e	70 	p 
	ret p			;853f	f0 	. 
	ret p			;8540	f0 	. 
	ld (hl),b			;8541	70 	p 
	ld d,b			;8542	50 	P 
	ld d,b			;8543	50 	P 
	rst 38h			;8544	ff 	. 
	ld b,b			;8545	40 	@ 
	inc bc			;8546	03 	. 
	nop			;8547	00 	. 
	ret p			;8548	f0 	. 
	ld (hl),b			;8549	70 	p 
	ld d,b			;854a	50 	P 
	dec b			;854b	05 	. 
	rst 38h			;854c	ff 	. 
	ld b,b			;854d	40 	@ 
	inc b			;854e	04 	. 
	ret p			;854f	f0 	. 
	rst 38h			;8550	ff 	. 
	ld b,b			;8551	40 	@ 
	inc bc			;8552	03 	. 
	ld d,b			;8553	50 	P 
	ld d,b			;8554	50 	P 
	ld (hl),b			;8555	70 	p 
	ret p			;8556	f0 	. 
	ret p			;8557	f0 	. 
	rst 38h			;8558	ff 	. 
	ld b,b			;8559	40 	@ 
	inc bc			;855a	03 	. 
	ld d,b			;855b	50 	P 
	ld d,b			;855c	50 	P 
	ld (hl),b			;855d	70 	p 
	ret p			;855e	f0 	. 
	ret p			;855f	f0 	. 
	ld (hl),b			;8560	70 	p 
	ld d,b			;8561	50 	P 
	ld d,b			;8562	50 	P 
	rst 38h			;8563	ff 	. 
	ld b,b			;8564	40 	@ 
	inc b			;8565	04 	. 
	ret p			;8566	f0 	. 
	ld (hl),b			;8567	70 	p 
	ld d,b			;8568	50 	P 
	ld d,b			;8569	50 	P 
	rst 38h			;856a	ff 	. 
	ld b,b			;856b	40 	@ 
	inc b			;856c	04 	. 
	rst 38h			;856d	ff 	. 
	nop			;856e	00 	. 
	inc bc			;856f	03 	. 
	ret p			;8570	f0 	. 
	sub b			;8571	90 	. 
	add a,b			;8572	80 	. 
	ld h,b			;8573	60 	` 
	ld h,b			;8574	60 	` 
	ret p			;8575	f0 	. 
	sub b			;8576	90 	. 
	add a,b			;8577	80 	. 
	rst 38h			;8578	ff 	. 
	ld h,b			;8579	60 	` 
	inc b			;857a	04 	. 
	nop			;857b	00 	. 
	ld h,b			;857c	60 	` 
	ld h,b			;857d	60 	` 
	nop			;857e	00 	. 
	ret p			;857f	f0 	. 
	sub b			;8580	90 	. 
	add a,b			;8581	80 	. 
	ld h,b			;8582	60 	` 
	ld h,b			;8583	60 	` 
	ret p			;8584	f0 	. 
	sub b			;8585	90 	. 
	add a,b			;8586	80 	. 
	ld h,b			;8587	60 	` 
	ld h,b			;8588	60 	` 
	rst 38h			;8589	ff 	. 
	nop			;858a	00 	. 
	inc b			;858b	04 	. 
	ret p			;858c	f0 	. 
	sub b			;858d	90 	. 
	add a,b			;858e	80 	. 
	ld h,b			;858f	60 	` 
	ld h,b			;8590	60 	` 
	nop			;8591	00 	. 
	ld h,b			;8592	60 	` 
	nop			;8593	00 	. 
	ret p			;8594	f0 	. 
	sub b			;8595	90 	. 
	add a,b			;8596	80 	. 
	ld h,b			;8597	60 	` 
	ld h,b			;8598	60 	` 
	nop			;8599	00 	. 
	ld h,b			;859a	60 	` 
	ld h,b			;859b	60 	` 
	nop			;859c	00 	. 
	ret p			;859d	f0 	. 
	sub b			;859e	90 	. 
	add a,b			;859f	80 	. 
	ld h,b			;85a0	60 	` 
	ld h,b			;85a1	60 	` 
	nop			;85a2	00 	. 
	ld h,b			;85a3	60 	` 
	nop			;85a4	00 	. 
	ret p			;85a5	f0 	. 
	sub b			;85a6	90 	. 
	add a,b			;85a7	80 	. 
	ld h,b			;85a8	60 	` 
	ld h,b			;85a9	60 	` 
	rst 38h			;85aa	ff 	. 
	nop			;85ab	00 	. 
	inc bc			;85ac	03 	. 
	rst 38h			;85ad	ff 	. 
	ret po			;85ae	e0 	. 
	inc b			;85af	04 	. 
	ld c,0e0h		;85b0	0e e0 	. . 
	nop			;85b2	00 	. 
	nop			;85b3	00 	. 
	rst 38h			;85b4	ff 	. 
	ret po			;85b5	e0 	. 
	dec b			;85b6	05 	. 
	ld c,0ffh		;85b7	0e ff 	. . 
	ld h,b			;85b9	60 	` 
	inc b			;85ba	04 	. 
	rst 38h			;85bb	ff 	. 
	nop			;85bc	00 	. 
	inc b			;85bd	04 	. 
	ld b,0ffh		;85be	06 ff 	. . 
	ld h,b			;85c0	60 	` 
	inc bc			;85c1	03 	. 
	rst 38h			;85c2	ff 	. 
	nop			;85c3	00 	. 
	inc b			;85c4	04 	. 
	ret p			;85c5	f0 	. 
	ret p			;85c6	f0 	. 
	add a,b			;85c7	80 	. 
	sub b			;85c8	90 	. 
	add a,b			;85c9	80 	. 
	add a,b			;85ca	80 	. 
	ld h,b			;85cb	60 	` 
	ld h,b			;85cc	60 	` 
	ret p			;85cd	f0 	. 
	ret p			;85ce	f0 	. 
	add a,b			;85cf	80 	. 
	ret p			;85d0	f0 	. 
	add a,b			;85d1	80 	. 
	add a,b			;85d2	80 	. 
	ld h,b			;85d3	60 	` 
	ld h,b			;85d4	60 	` 
	ret po			;85d5	e0 	. 
	ret p			;85d6	f0 	. 
	ld b,b			;85d7	40 	@ 
	ld b,b			;85d8	40 	@ 
	add a,b			;85d9	80 	. 
	add a,b			;85da	80 	. 
	rst 38h			;85db	ff 	. 
	ret po			;85dc	e0 	. 
	inc bc			;85dd	03 	. 
	ret p			;85de	f0 	. 
	ld b,b			;85df	40 	@ 
	ld b,b			;85e0	40 	@ 
	add a,b			;85e1	80 	. 
	add a,b			;85e2	80 	. 
	ret po			;85e3	e0 	. 
	nop			;85e4	00 	. 
	nop			;85e5	00 	. 
	ret p			;85e6	f0 	. 
	add a,b			;85e7	80 	. 
	sub b			;85e8	90 	. 
	add a,b			;85e9	80 	. 
	add a,b			;85ea	80 	. 
	ld h,b			;85eb	60 	` 
	ld h,b			;85ec	60 	` 
	nop			;85ed	00 	. 
	ret p			;85ee	f0 	. 
	add a,b			;85ef	80 	. 
	ret p			;85f0	f0 	. 
	add a,b			;85f1	80 	. 
	add a,b			;85f2	80 	. 
	ld h,b			;85f3	60 	` 
	ld h,b			;85f4	60 	` 
	ret po			;85f5	e0 	. 
	ret p			;85f6	f0 	. 
	ld b,b			;85f7	40 	@ 
	ld b,b			;85f8	40 	@ 
	add a,b			;85f9	80 	. 
	add a,b			;85fa	80 	. 
	rst 38h			;85fb	ff 	. 
	ret po			;85fc	e0 	. 
	inc bc			;85fd	03 	. 
	ret p			;85fe	f0 	. 
	ld b,b			;85ff	40 	@ 
	ld b,b			;8600	40 	@ 
	add a,b			;8601	80 	. 
	add a,b			;8602	80 	. 
	ret po			;8603	e0 	. 
	nop			;8604	00 	. 
	nop			;8605	00 	. 
	ret p			;8606	f0 	. 
	sub b			;8607	90 	. 
	sub b			;8608	90 	. 
	ld b,b			;8609	40 	@ 
	ld b,b			;860a	40 	@ 
	ld d,b			;860b	50 	P 
	ld (hl),b			;860c	70 	p 
	nop			;860d	00 	. 
	ret p			;860e	f0 	. 
	sub b			;860f	90 	. 
	sub b			;8610	90 	. 
	ld b,b			;8611	40 	@ 
	ld b,b			;8612	40 	@ 
	ld d,b			;8613	50 	P 
	ld (hl),b			;8614	70 	p 
	ld d,b			;8615	50 	P 
	ld d,b			;8616	50 	P 
	rst 38h			;8617	ff 	. 
	ld b,b			;8618	40 	@ 
	ld b,050h		;8619	06 50 	. P 
	ld d,b			;861b	50 	P 
	rst 38h			;861c	ff 	. 
	ld b,b			;861d	40 	@ 
	ld b,0f0h		;861e	06 f0 	. . 
	sub b			;8620	90 	. 
	ld b,b			;8621	40 	@ 
	ld d,b			;8622	50 	P 
	ld d,b			;8623	50 	P 
	ld (hl),b			;8624	70 	p 
	ld d,b			;8625	50 	P 
	ld d,b			;8626	50 	P 
	ret p			;8627	f0 	. 
	sub b			;8628	90 	. 
	ld b,b			;8629	40 	@ 
	ld d,b			;862a	50 	P 
	ld d,b			;862b	50 	P 
	ld (hl),b			;862c	70 	p 
	rst 38h			;862d	ff 	. 
	ld d,b			;862e	50 	P 
	inc bc			;862f	03 	. 
	rst 38h			;8630	ff 	. 
	ld b,b			;8631	40 	@ 
	dec b			;8632	05 	. 
	nop			;8633	00 	. 
	nop			;8634	00 	. 
	ld d,b			;8635	50 	P 
	rst 38h			;8636	ff 	. 
	ld b,b			;8637	40 	@ 
	dec b			;8638	05 	. 
	nop			;8639	00 	. 
	nop			;863a	00 	. 
	rst 38h			;863b	ff 	. 
	ret p			;863c	f0 	. 
	ld b,0f6h		;863d	06 f6 	. . 
	add a,b			;863f	80 	. 
	ld (hl),b			;8640	70 	p 
	ld (hl),b			;8641	70 	p 
	rst 38h			;8642	ff 	. 
	rlca			;8643	07 	. 
	inc bc			;8644	03 	. 
	ld (hl),b			;8645	70 	p 
	ld a,a			;8646	7f 	 
	ld a,c			;8647	79 	y 
	ld c,b			;8648	48 	H 
	ld b,(hl)			;8649	46 	F 
	ld b,(hl)			;864a	46 	F 
	ld b,b			;864b	40 	@ 
	inc b			;864c	04 	. 
	inc b			;864d	04 	. 
	ld b,b			;864e	40 	@ 
	ld b,b			;864f	40 	@ 
	add a,b			;8650	80 	. 
	ld d,(hl)			;8651	56 	V 
	ld d,(hl)			;8652	56 	V 
	rst 38h			;8653	ff 	. 
	ld d,b			;8654	50 	P 
	dec b			;8655	05 	. 
	nop			;8656	00 	. 
	rst 38h			;8657	ff 	. 
	ret p			;8658	f0 	. 
	dec b			;8659	05 	. 
	ld h,b			;865a	60 	` 
	add a,b			;865b	80 	. 
	nop			;865c	00 	. 
	rst 38h			;865d	ff 	. 
	ld (hl),b			;865e	70 	p 
	dec b			;865f	05 	. 
	ret p			;8660	f0 	. 
	sub b			;8661	90 	. 
	add a,b			;8662	80 	. 
	ld h,b			;8663	60 	` 
	ld h,b			;8664	60 	` 
	rst 38h			;8665	ff 	. 
	ld b,b			;8666	40 	@ 
	dec b			;8667	05 	. 
	add a,b			;8668	80 	. 
	ld h,b			;8669	60 	` 
	ld h,b			;866a	60 	` 
	rst 38h			;866b	ff 	. 
	ld d,b			;866c	50 	P 
	dec b			;866d	05 	. 
	nop			;866e	00 	. 
	ret p			;866f	f0 	. 
	rst 38h			;8670	ff 	. 
	ret po			;8671	e0 	. 
	inc bc			;8672	03 	. 
	ld h,b			;8673	60 	` 
	add a,b			;8674	80 	. 
	sub b			;8675	90 	. 
	nop			;8676	00 	. 
	ret p			;8677	f0 	. 
	rst 38h			;8678	ff 	. 
	ld (hl),b			;8679	70 	p 
	inc bc			;867a	03 	. 
	ld h,b			;867b	60 	` 
	add a,b			;867c	80 	. 
	sub b			;867d	90 	. 
	ret p			;867e	f0 	. 
	nop			;867f	00 	. 
	ld h,b			;8680	60 	` 
	add a,b			;8681	80 	. 
	sub b			;8682	90 	. 
	add a,b			;8683	80 	. 
	ld h,b			;8684	60 	` 
	ld h,b			;8685	60 	` 
	ret p			;8686	f0 	. 
	nop			;8687	00 	. 
	ld h,b			;8688	60 	` 
	ret p			;8689	f0 	. 
	sub b			;868a	90 	. 
	add a,b			;868b	80 	. 
	ld h,b			;868c	60 	` 
	ld h,b			;868d	60 	` 
	nop			;868e	00 	. 
	ret p			;868f	f0 	. 
	rst 38h			;8690	ff 	. 
	ret po			;8691	e0 	. 
	ld b,0ffh		;8692	06 ff 	. . 
	nop			;8694	00 	. 
	ex af,af'			;8695	08 	. 
	ret p			;8696	f0 	. 
	rst 38h			;8697	ff 	. 
	ret po			;8698	e0 	. 
	inc bc			;8699	03 	. 
	ld h,b			;869a	60 	` 
	add a,b			;869b	80 	. 
	sub b			;869c	90 	. 
	ret p			;869d	f0 	. 
	ret p			;869e	f0 	. 
	rst 38h			;869f	ff 	. 
	ld (hl),b			;86a0	70 	p 
	inc bc			;86a1	03 	. 
	ld h,b			;86a2	60 	` 
	add a,b			;86a3	80 	. 
	sub b			;86a4	90 	. 
	ret p			;86a5	f0 	. 
	nop			;86a6	00 	. 
	ret p			;86a7	f0 	. 
	sub b			;86a8	90 	. 
	add a,b			;86a9	80 	. 
	ld h,b			;86aa	60 	` 
	ld h,b			;86ab	60 	` 
	sub b			;86ac	90 	. 
	add a,b			;86ad	80 	. 
	nop			;86ae	00 	. 
	ret p			;86af	f0 	. 
	sub b			;86b0	90 	. 
	add a,b			;86b1	80 	. 
	ld h,b			;86b2	60 	` 
	ld h,b			;86b3	60 	` 
	ret p			;86b4	f0 	. 
	add a,b			;86b5	80 	. 
	rst 38h			;86b6	ff 	. 
	ld h,b			;86b7	60 	` 
	inc bc			;86b8	03 	. 
	sub b			;86b9	90 	. 
	add a,b			;86ba	80 	. 
	add a,b			;86bb	80 	. 
	ret p			;86bc	f0 	. 
	nop			;86bd	00 	. 
	rst 38h			;86be	ff 	. 
	ld h,b			;86bf	60 	` 
	inc bc			;86c0	03 	. 
	sub b			;86c1	90 	. 
	add a,b			;86c2	80 	. 
	add a,b			;86c3	80 	. 
	ret p			;86c4	f0 	. 
	rst 38h			;86c5	ff 	. 
	nop			;86c6	00 	. 
	inc b			;86c7	04 	. 
	ret p			;86c8	f0 	. 
	sub b			;86c9	90 	. 
	add a,b			;86ca	80 	. 
	ld h,b			;86cb	60 	` 
	ld h,b			;86cc	60 	` 
	rst 38h			;86cd	ff 	. 
	nop			;86ce	00 	. 
	inc bc			;86cf	03 	. 
	ret p			;86d0	f0 	. 
	sub b			;86d1	90 	. 
	add a,b			;86d2	80 	. 
	rst 38h			;86d3	ff 	. 
	ld h,b			;86d4	60 	` 
	rlca			;86d5	07 	. 
	rst 38h			;86d6	ff 	. 
	nop			;86d7	00 	. 
	inc bc			;86d8	03 	. 
	rst 38h			;86d9	ff 	. 
	add a,b			;86da	80 	. 
	inc bc			;86db	03 	. 
	ld h,b			;86dc	60 	` 
	ld h,b			;86dd	60 	` 
	rst 38h			;86de	ff 	. 
	nop			;86df	00 	. 
	inc bc			;86e0	03 	. 
	rst 38h			;86e1	ff 	. 
	ld h,b			;86e2	60 	` 
	inc bc			;86e3	03 	. 
	rst 38h			;86e4	ff 	. 
	add a,b			;86e5	80 	. 
	inc bc			;86e6	03 	. 
	sub b			;86e7	90 	. 
	sub b			;86e8	90 	. 
	rst 38h			;86e9	ff 	. 
	ld h,b			;86ea	60 	` 
	inc b			;86eb	04 	. 
	add a,b			;86ec	80 	. 
	add a,b			;86ed	80 	. 
	rst 38h			;86ee	ff 	. 
	sub b			;86ef	90 	. 
	inc b			;86f0	04 	. 
	rst 38h			;86f1	ff 	. 
	add a,b			;86f2	80 	. 
	inc bc			;86f3	03 	. 
	ld h,b			;86f4	60 	` 
	ld h,b			;86f5	60 	` 
	nop			;86f6	00 	. 
	sub b			;86f7	90 	. 
	sub b			;86f8	90 	. 
	rst 38h			;86f9	ff 	. 
	add a,b			;86fa	80 	. 
	inc bc			;86fb	03 	. 
	ld h,b			;86fc	60 	` 
	ld h,b			;86fd	60 	` 
	rst 38h			;86fe	ff 	. 
	nop			;86ff	00 	. 
	inc bc			;8700	03 	. 
	ld h,b			;8701	60 	` 
	ld h,b			;8702	60 	` 
	add a,b			;8703	80 	. 
	add a,b			;8704	80 	. 
	sub b			;8705	90 	. 
	sub b			;8706	90 	. 
	nop			;8707	00 	. 
	nop			;8708	00 	. 
	ld h,b			;8709	60 	` 
	ld h,b			;870a	60 	` 
	add a,b			;870b	80 	. 
	add a,b			;870c	80 	. 
	rst 38h			;870d	ff 	. 
	sub b			;870e	90 	. 
	inc b			;870f	04 	. 
	add a,b			;8710	80 	. 
	add a,b			;8711	80 	. 
	ld h,b			;8712	60 	` 
	ld h,b			;8713	60 	` 
	nop			;8714	00 	. 
	nop			;8715	00 	. 
	sub b			;8716	90 	. 
	sub b			;8717	90 	. 
	add a,b			;8718	80 	. 
	add a,b			;8719	80 	. 
	ld h,b			;871a	60 	` 
	rst 38h			;871b	ff 	. 
	nop			;871c	00 	. 
	ld b,090h		;871d	06 90 	. . 
	add a,b			;871f	80 	. 
	add a,b			;8720	80 	. 
	ld h,b			;8721	60 	` 
	ld h,b			;8722	60 	` 
	nop			;8723	00 	. 
	nop			;8724	00 	. 
	ret p			;8725	f0 	. 
	sub b			;8726	90 	. 
	sub b			;8727	90 	. 
	add a,b			;8728	80 	. 
	sub b			;8729	90 	. 
	add a,b			;872a	80 	. 
	add a,b			;872b	80 	. 
	rst 38h			;872c	ff 	. 
	ld h,b			;872d	60 	` 
	inc bc			;872e	03 	. 
	rst 38h			;872f	ff 	. 
	nop			;8730	00 	. 
	inc b			;8731	04 	. 
	add a,b			;8732	80 	. 
	rst 38h			;8733	ff 	. 
	ld h,b			;8734	60 	` 
	dec b			;8735	05 	. 
	rst 38h			;8736	ff 	. 
	nop			;8737	00 	. 
	inc bc			;8738	03 	. 
	ret p			;8739	f0 	. 
	sub b			;873a	90 	. 
	add a,b			;873b	80 	. 
	ld h,b			;873c	60 	` 
	ld h,b			;873d	60 	` 
	add a,b			;873e	80 	. 
	ld h,b			;873f	60 	` 
	ret p			;8740	f0 	. 
	sub b			;8741	90 	. 
	add a,b			;8742	80 	. 
	add a,b			;8743	80 	. 
	ret p			;8744	f0 	. 
	sub b			;8745	90 	. 
	add a,b			;8746	80 	. 
	add a,b			;8747	80 	. 
	ld h,b			;8748	60 	` 
	add a,b			;8749	80 	. 
	rst 38h			;874a	ff 	. 
	ld h,b			;874b	60 	` 
	dec b			;874c	05 	. 
	nop			;874d	00 	. 
	rst 38h			;874e	ff 	. 
	ld h,b			;874f	60 	` 
	inc b			;8750	04 	. 
	add a,b			;8751	80 	. 
	ld h,b			;8752	60 	` 
	ld h,b			;8753	60 	` 
	nop			;8754	00 	. 
	rst 38h			;8755	ff 	. 
	ret p			;8756	f0 	. 
	ex af,af'			;8757	08 	. 
	rst 38h			;8758	ff 	. 
	ld h,b			;8759	60 	` 
	ld b,0ffh		;875a	06 ff 	. . 
	ret p			;875c	f0 	. 
	inc b			;875d	04 	. 
	sub b			;875e	90 	. 
	rst 38h			;875f	ff 	. 
	ld h,b			;8760	60 	` 
	dec b			;8761	05 	. 
	ret p			;8762	f0 	. 
	ret p			;8763	f0 	. 
	ld h,b			;8764	60 	` 
	rst 38h			;8765	ff 	. 
	sub b			;8766	90 	. 
	dec b			;8767	05 	. 
	nop			;8768	00 	. 
	nop			;8769	00 	. 
	rst 38h			;876a	ff 	. 
	ret p			;876b	f0 	. 
	ld b,000h		;876c	06 00 	. . 
	nop			;876e	00 	. 
	rst 38h			;876f	ff 	. 
	ld h,b			;8770	60 	` 
	inc c			;8771	0c 	. 
	nop			;8772	00 	. 
	nop			;8773	00 	. 
	rst 38h			;8774	ff 	. 
	sub b			;8775	90 	. 
	ld b,0ffh		;8776	06 ff 	. . 
	nop			;8778	00 	. 
	dec b			;8779	05 	. 
	ld h,b			;877a	60 	` 
	rst 38h			;877b	ff 	. 
	ret po			;877c	e0 	. 
	inc bc			;877d	03 	. 
	add a,b			;877e	80 	. 
	rst 38h			;877f	ff 	. 
	nop			;8780	00 	. 
	inc bc			;8781	03 	. 
	ld h,b			;8782	60 	` 
	rst 38h			;8783	ff 	. 
	ret po			;8784	e0 	. 
	inc bc			;8785	03 	. 
	add a,b			;8786	80 	. 
	sub b			;8787	90 	. 
	add a,b			;8788	80 	. 
	ld h,b			;8789	60 	` 
	ld h,b			;878a	60 	` 
	rst 38h			;878b	ff 	. 
	ret po			;878c	e0 	. 
	inc bc			;878d	03 	. 
	ret p			;878e	f0 	. 
	ret p			;878f	f0 	. 
	add a,b			;8790	80 	. 
	ld h,b			;8791	60 	` 
	ld h,b			;8792	60 	` 
	rst 38h			;8793	ff 	. 
	ret po			;8794	e0 	. 
	inc bc			;8795	03 	. 
	ret p			;8796	f0 	. 
	rst 38h			;8797	ff 	. 
	nop			;8798	00 	. 
	dec b			;8799	05 	. 
	ld h,b			;879a	60 	` 
	ret po			;879b	e0 	. 
	ret po			;879c	e0 	. 
	rst 38h			;879d	ff 	. 
	nop			;879e	00 	. 
	dec b			;879f	05 	. 
	ld h,b			;87a0	60 	` 
	rst 38h			;87a1	ff 	. 
	ret po			;87a2	e0 	. 
	inc bc			;87a3	03 	. 
	add a,b			;87a4	80 	. 
	sub b			;87a5	90 	. 
	add a,b			;87a6	80 	. 
	ld h,b			;87a7	60 	` 
	ld h,b			;87a8	60 	` 
	ret po			;87a9	e0 	. 
	ret p			;87aa	f0 	. 
	ret po			;87ab	e0 	. 
	add a,b			;87ac	80 	. 
	ret p			;87ad	f0 	. 
	add a,b			;87ae	80 	. 
	ld h,b			;87af	60 	` 
	ld h,b			;87b0	60 	` 
	ret po			;87b1	e0 	. 
	ret p			;87b2	f0 	. 
	nop			;87b3	00 	. 
	nop			;87b4	00 	. 
	ld h,b			;87b5	60 	` 
	add a,b			;87b6	80 	. 
	sub b			;87b7	90 	. 
	add a,b			;87b8	80 	. 
	ld h,b			;87b9	60 	` 
	ld h,b			;87ba	60 	` 
	nop			;87bb	00 	. 
	nop			;87bc	00 	. 
	ld h,b			;87bd	60 	` 
	ret p			;87be	f0 	. 
	sub b			;87bf	90 	. 
	add a,b			;87c0	80 	. 
	ld h,b			;87c1	60 	` 
	ld h,b			;87c2	60 	` 
	ret po			;87c3	e0 	. 
	ret p			;87c4	f0 	. 
	ret po			;87c5	e0 	. 
	ret p			;87c6	f0 	. 
	rst 38h			;87c7	ff 	. 
	ret po			;87c8	e0 	. 
	inc bc			;87c9	03 	. 
	ret p			;87ca	f0 	. 
	ret po			;87cb	e0 	. 
	ret p			;87cc	f0 	. 
	ret po			;87cd	e0 	. 
	ret p			;87ce	f0 	. 
	rst 38h			;87cf	ff 	. 
	ret po			;87d0	e0 	. 
	inc bc			;87d1	03 	. 
	ret p			;87d2	f0 	. 
	rst 38h			;87d3	ff 	. 
	nop			;87d4	00 	. 
	inc b			;87d5	04 	. 
	ld h,b			;87d6	60 	` 
	add a,b			;87d7	80 	. 
	sub b			;87d8	90 	. 
	add a,b			;87d9	80 	. 
	rst 38h			;87da	ff 	. 
	nop			;87db	00 	. 
	inc b			;87dc	04 	. 
	ld h,b			;87dd	60 	` 
	ret p			;87de	f0 	. 
	sub b			;87df	90 	. 
	add a,b			;87e0	80 	. 
	ld h,b			;87e1	60 	` 
	ld h,b			;87e2	60 	` 
	ret p			;87e3	f0 	. 
	ret po			;87e4	e0 	. 
	ret po			;87e5	e0 	. 
	ret p			;87e6	f0 	. 
	ret po			;87e7	e0 	. 
	ret p			;87e8	f0 	. 
	ld h,b			;87e9	60 	` 
	ld h,b			;87ea	60 	` 
	ret p			;87eb	f0 	. 
	ret po			;87ec	e0 	. 
	ret po			;87ed	e0 	. 
	ret p			;87ee	f0 	. 
	ret po			;87ef	e0 	. 
	ret p			;87f0	f0 	. 
	nop			;87f1	00 	. 
	nop			;87f2	00 	. 
	rst 38h			;87f3	ff 	. 
	ret po			;87f4	e0 	. 
	ld b,000h		;87f5	06 00 	. . 
	nop			;87f7	00 	. 
	rst 38h			;87f8	ff 	. 
	ret po			;87f9	e0 	. 
	rlca			;87fa	07 	. 
	nop			;87fb	00 	. 
	sub b			;87fc	90 	. 
	ld h,b			;87fd	60 	` 
	ret po			;87fe	e0 	. 
	ret p			;87ff	f0 	. 
	ret p			;8800	f0 	. 
	ret po			;8801	e0 	. 
	ret po			;8802	e0 	. 
	nop			;8803	00 	. 
	ret p			;8804	f0 	. 
	ld h,b			;8805	60 	` 
	ret po			;8806	e0 	. 
	ret p			;8807	f0 	. 
	ret p			;8808	f0 	. 
	rst 38h			;8809	ff 	. 
	ret po			;880a	e0 	. 
	ex af,af'			;880b	08 	. 
	nop			;880c	00 	. 
	rst 38h			;880d	ff 	. 
	ret po			;880e	e0 	. 
	rlca			;880f	07 	. 
	nop			;8810	00 	. 
	add a,b			;8811	80 	. 
	sub b			;8812	90 	. 
	add a,b			;8813	80 	. 
	ld h,b			;8814	60 	` 
	ret po			;8815	e0 	. 
	ret p			;8816	f0 	. 
	ret p			;8817	f0 	. 
	ret po			;8818	e0 	. 
	add a,b			;8819	80 	. 
	ret p			;881a	f0 	. 
	add a,b			;881b	80 	. 
	ld h,b			;881c	60 	` 
	ret po			;881d	e0 	. 
	ret p			;881e	f0 	. 
	ret p			;881f	f0 	. 
	ret po			;8820	e0 	. 
	nop			;8821	00 	. 
	nop			;8822	00 	. 
	rst 38h			;8823	ff 	. 
	ret p			;8824	f0 	. 
	inc bc			;8825	03 	. 
	add a,b			;8826	80 	. 
	sub b			;8827	90 	. 
	add a,b			;8828	80 	. 
	nop			;8829	00 	. 
	nop			;882a	00 	. 
	rst 38h			;882b	ff 	. 
	ret p			;882c	f0 	. 
	inc bc			;882d	03 	. 
	add a,b			;882e	80 	. 
	ret p			;882f	f0 	. 
	add a,b			;8830	80 	. 
	ld h,b			;8831	60 	` 
	ld h,b			;8832	60 	` 
	rst 38h			;8833	ff 	. 
	ld b,b			;8834	40 	@ 
	inc bc			;8835	03 	. 
	rst 38h			;8836	ff 	. 
	nop			;8837	00 	. 
	inc bc			;8838	03 	. 
	ld h,b			;8839	60 	` 
	ld h,b			;883a	60 	` 
	rst 38h			;883b	ff 	. 
	ld b,b			;883c	40 	@ 
	inc bc			;883d	03 	. 
	rst 38h			;883e	ff 	. 
	nop			;883f	00 	. 
	ld b,0f0h		;8840	06 f0 	. . 
	ret p			;8842	f0 	. 
	add a,b			;8843	80 	. 
	sub b			;8844	90 	. 
	add a,b			;8845	80 	. 
	rst 38h			;8846	ff 	. 
	nop			;8847	00 	. 
	inc bc			;8848	03 	. 
	ret p			;8849	f0 	. 
	ret p			;884a	f0 	. 
	add a,b			;884b	80 	. 
	ret p			;884c	f0 	. 
	add a,b			;884d	80 	. 
	ld h,b			;884e	60 	` 
	ld h,b			;884f	60 	` 
	ld b,b			;8850	40 	@ 
	ld b,b			;8851	40 	@ 
	rst 38h			;8852	ff 	. 
	nop			;8853	00 	. 
	inc b			;8854	04 	. 
	ld h,b			;8855	60 	` 
	ld h,b			;8856	60 	` 
	ld b,b			;8857	40 	@ 
	ld b,b			;8858	40 	@ 
	rst 38h			;8859	ff 	. 
	nop			;885a	00 	. 
	ld b,060h		;885b	06 60 	. ` 
	add a,b			;885d	80 	. 
	add hl,bc			;885e	09 	. 
	sub b			;885f	90 	. 
	ld h,b			;8860	60 	` 
	rst 38h			;8861	ff 	. 
	nop			;8862	00 	. 
	inc bc			;8863	03 	. 
	ld h,b			;8864	60 	` 
	ret p			;8865	f0 	. 
	sub b			;8866	90 	. 
	add a,b			;8867	80 	. 
	ld h,b			;8868	60 	` 
	nop			;8869	00 	. 
	ret p			;886a	f0 	. 
	ret po			;886b	e0 	. 
	nop			;886c	00 	. 
	ret p			;886d	f0 	. 
	ret po			;886e	e0 	. 
	ld (hl),b			;886f	70 	p 
	ld d,b			;8870	50 	P 
	ld b,b			;8871	40 	@ 
	ret p			;8872	f0 	. 
	ret po			;8873	e0 	. 
	nop			;8874	00 	. 
	ret p			;8875	f0 	. 
	ret po			;8876	e0 	. 
	ld (hl),b			;8877	70 	p 
	ld d,b			;8878	50 	P 
	ld b,b			;8879	40 	@ 
	nop			;887a	00 	. 
	nop			;887b	00 	. 
	ld h,b			;887c	60 	` 
	add a,b			;887d	80 	. 
	sub b			;887e	90 	. 
	add a,b			;887f	80 	. 
	ld h,b			;8880	60 	` 
	rst 38h			;8881	ff 	. 
	nop			;8882	00 	. 
	inc bc			;8883	03 	. 
	ld h,b			;8884	60 	` 
	ret p			;8885	f0 	. 
	sub b			;8886	90 	. 
	add a,b			;8887	80 	. 
	ld h,b			;8888	60 	` 
	nop			;8889	00 	. 
	ret p			;888a	f0 	. 
	ret po			;888b	e0 	. 
	nop			;888c	00 	. 
	rrca			;888d	0f 	. 
	ld c,007h		;888e	0e 07 	. . 
	dec b			;8890	05 	. 
	inc b			;8891	04 	. 
	ret p			;8892	f0 	. 
	ret po			;8893	e0 	. 
	nop			;8894	00 	. 
	rrca			;8895	0f 	. 
	ld c,007h		;8896	0e 07 	. . 
	dec b			;8898	05 	. 
	inc b			;8899	04 	. 
	nop			;889a	00 	. 
	ld (hl),b			;889b	70 	p 
	rst 38h			;889c	ff 	. 
	ld d,b			;889d	50 	P 
	inc b			;889e	04 	. 
	sub b			;889f	90 	. 
	ld h,b			;88a0	60 	` 
	nop			;88a1	00 	. 
	ld (hl),b			;88a2	70 	p 
	rst 38h			;88a3	ff 	. 
	ld d,b			;88a4	50 	P 
	inc b			;88a5	04 	. 
	sub b			;88a6	90 	. 
	rst 38h			;88a7	ff 	. 
	ld h,b			;88a8	60 	` 
	inc bc			;88a9	03 	. 
	sub b			;88aa	90 	. 
	rst 38h			;88ab	ff 	. 
	ld d,b			;88ac	50 	P 
	inc b			;88ad	04 	. 
	ld (hl),b			;88ae	70 	p 
	ret po			;88af	e0 	. 
	add a,b			;88b0	80 	. 
	sub b			;88b1	90 	. 
	rst 38h			;88b2	ff 	. 
	ld d,b			;88b3	50 	P 
	inc b			;88b4	04 	. 
	ld (hl),b			;88b5	70 	p 
	nop			;88b6	00 	. 
	ld (hl),b			;88b7	70 	p 
	ld d,b			;88b8	50 	P 
	rst 38h			;88b9	ff 	. 
	ld b,b			;88ba	40 	@ 
	inc b			;88bb	04 	. 
	sub b			;88bc	90 	. 
	nop			;88bd	00 	. 
	ld (hl),b			;88be	70 	p 
	ld d,b			;88bf	50 	P 
	rst 38h			;88c0	ff 	. 
	ld b,b			;88c1	40 	@ 
	inc b			;88c2	04 	. 
	rst 38h			;88c3	ff 	. 
	sub b			;88c4	90 	. 
	inc bc			;88c5	03 	. 
	rst 38h			;88c6	ff 	. 
	ld b,b			;88c7	40 	@ 
	inc bc			;88c8	03 	. 
	ld d,b			;88c9	50 	P 
	ld d,b			;88ca	50 	P 
	ld (hl),b			;88cb	70 	p 
	ret p			;88cc	f0 	. 
	sub b			;88cd	90 	. 
	rst 38h			;88ce	ff 	. 
	ld b,b			;88cf	40 	@ 
	inc bc			;88d0	03 	. 
	ld d,b			;88d1	50 	P 
	ld d,b			;88d2	50 	P 
	ld (hl),b			;88d3	70 	p 
	ret p			;88d4	f0 	. 
	rst 38h			;88d5	ff 	. 
	ld d,b			;88d6	50 	P 
	ld b,080h		;88d7	06 80 	. . 
	ret p			;88d9	f0 	. 
	rst 38h			;88da	ff 	. 
	ld (hl),b			;88db	70 	p 
	ld b,0f0h		;88dc	06 f0 	. . 
	ld h,b			;88de	60 	` 
	ret p			;88df	f0 	. 
	rst 38h			;88e0	ff 	. 
	ld b,b			;88e1	40 	@ 
	ld b,060h		;88e2	06 60 	. ` 
	ret p			;88e4	f0 	. 
	rst 38h			;88e5	ff 	. 
	ld (hl),b			;88e6	70 	p 
	ld b,000h		;88e7	06 00 	. . 
	nop			;88e9	00 	. 
	ret p			;88ea	f0 	. 
	rst 38h			;88eb	ff 	. 
	ld d,b			;88ec	50 	P 
	inc b			;88ed	04 	. 
	rst 38h			;88ee	ff 	. 
	nop			;88ef	00 	. 
	inc bc			;88f0	03 	. 
	ret p			;88f1	f0 	. 
	rst 38h			;88f2	ff 	. 
	ld (hl),b			;88f3	70 	p 
	inc b			;88f4	04 	. 
	nop			;88f5	00 	. 
	ret p			;88f6	f0 	. 
	rst 38h			;88f7	ff 	. 
	ld b,b			;88f8	40 	@ 
	inc b			;88f9	04 	. 
	rst 38h			;88fa	ff 	. 
	nop			;88fb	00 	. 
	inc bc			;88fc	03 	. 
	ret p			;88fd	f0 	. 
	rst 38h			;88fe	ff 	. 
	ld (hl),b			;88ff	70 	p 
	inc b			;8900	04 	. 
	rst 38h			;8901	ff 	. 
	nop			;8902	00 	. 
	inc bc			;8903	03 	. 
	rst 38h			;8904	ff 	. 
	ld h,b			;8905	60 	` 
	ld b,009h		;8906	06 09 	. . 
	ex af,af'			;8908	08 	. 
	rst 38h			;8909	ff 	. 
	ld h,b			;890a	60 	` 
	ld b,090h		;890b	06 90 	. . 
	add a,b			;890d	80 	. 
	rst 38h			;890e	ff 	. 
	and b			;890f	a0 	. 
	dec b			;8910	05 	. 
	and (hl)			;8911	a6 	. 
	and (hl)			;8912	a6 	. 
	ld h,b			;8913	60 	` 
	rst 38h			;8914	ff 	. 
	and b			;8915	a0 	. 
	ex af,af'			;8916	08 	. 
	rst 38h			;8917	ff 	. 
	ld h,b			;8918	60 	` 
	ld b,090h		;8919	06 90 	. . 
	add a,b			;891b	80 	. 
	rst 38h			;891c	ff 	. 
	ld h,b			;891d	60 	` 
	ld b,009h		;891e	06 09 	. . 
	ex af,af'			;8920	08 	. 
	rst 38h			;8921	ff 	. 
	and b			;8922	a0 	. 
	dec c			;8923	0d 	. 
	and (hl)			;8924	a6 	. 
	and (hl)			;8925	a6 	. 
	ld h,b			;8926	60 	` 
	nop			;8927	00 	. 
	rst 38h			;8928	ff 	. 
	ld b,b			;8929	40 	@ 
	dec b			;892a	05 	. 
	ld c,e			;892b	4b 	K 
	ld c,e			;892c	4b 	K 
	nop			;892d	00 	. 
	rst 38h			;892e	ff 	. 
	ld b,b			;892f	40 	@ 
	dec b			;8930	05 	. 
	ld c,e			;8931	4b 	K 
	ld c,e			;8932	4b 	K 
	ld b,b			;8933	40 	@ 
	rst 38h			;8934	ff 	. 
	ld h,b			;8935	60 	` 
	ld b,0f0h		;8936	06 f0 	. . 
	ld b,b			;8938	40 	@ 
	rst 38h			;8939	ff 	. 
	ld h,b			;893a	60 	` 
	ld b,0f0h		;893b	06 f0 	. . 
	rst 38h			;893d	ff 	. 
	nop			;893e	00 	. 
	inc bc			;893f	03 	. 
	rst 38h			;8940	ff 	. 
	ld b,b			;8941	40 	@ 
	inc bc			;8942	03 	. 
	inc b			;8943	04 	. 
	inc b			;8944	04 	. 
	rst 38h			;8945	ff 	. 
	nop			;8946	00 	. 
	inc bc			;8947	03 	. 
	rst 38h			;8948	ff 	. 
	ld b,b			;8949	40 	@ 
	inc bc			;894a	03 	. 
	ld b,l			;894b	45 	E 
	inc b			;894c	04 	. 
	ld b,b			;894d	40 	@ 
	ld b,b			;894e	40 	@ 
	rst 38h			;894f	ff 	. 
	ld h,b			;8950	60 	` 
	dec b			;8951	05 	. 
	ret p			;8952	f0 	. 
	ld b,b			;8953	40 	@ 
	ld b,b			;8954	40 	@ 
	rst 38h			;8955	ff 	. 
	ld h,b			;8956	60 	` 
	dec b			;8957	05 	. 
	ret p			;8958	f0 	. 
	rst 38h			;8959	ff 	. 
	sub b			;895a	90 	. 
	inc bc			;895b	03 	. 
	add a,b			;895c	80 	. 
	add a,b			;895d	80 	. 
	ld h,b			;895e	60 	` 
	ld h,b			;895f	60 	` 
	jr nc,$+1		;8960	30 ff 	0 . 
	sub b			;8962	90 	. 
	inc b			;8963	04 	. 
	add a,b			;8964	80 	. 
	add a,b			;8965	80 	. 
	ld h,b			;8966	60 	` 
	rst 38h			;8967	ff 	. 
	jr nc,$+5		;8968	30 03 	0 . 
	jr nz,$+1		;896a	20 ff 	  . 
	ret nz			;896c	c0 	. 
	dec b			;896d	05 	. 
	rst 38h			;896e	ff 	. 
	jr nc,$+5		;896f	30 03 	0 . 
	rst 38h			;8971	ff 	. 
	jr nz,$+5		;8972	20 03 	  . 
	ret nz			;8974	c0 	. 
	ret nz			;8975	c0 	. 
	ld h,b			;8976	60 	` 
	ret po			;8977	e0 	. 
	ret po			;8978	e0 	. 
	ret p			;8979	f0 	. 
	nop			;897a	00 	. 
	ret po			;897b	e0 	. 
	ret po			;897c	e0 	. 
	ret p			;897d	f0 	. 
	ld h,b			;897e	60 	` 
	rst 38h			;897f	ff 	. 
	ret po			;8980	e0 	. 
	inc bc			;8981	03 	. 
	nop			;8982	00 	. 
	ret po			;8983	e0 	. 
	ret po			;8984	e0 	. 
	ret p			;8985	f0 	. 
	ret po			;8986	e0 	. 
	rst 28h			;8987	ef 	. 
	rst 28h			;8988	ef 	. 
	nop			;8989	00 	. 
	ld h,b			;898a	60 	` 
	ld h,b			;898b	60 	` 
	nop			;898c	00 	. 
	nop			;898d	00 	. 
	rst 38h			;898e	ff 	. 
	ret po			;898f	e0 	. 
	inc bc			;8990	03 	. 
	nop			;8991	00 	. 
	ld h,b			;8992	60 	` 
	ld h,b			;8993	60 	` 
	nop			;8994	00 	. 
	nop			;8995	00 	. 
	ld h,b			;8996	60 	` 
	ret po			;8997	e0 	. 
	ret p			;8998	f0 	. 
	rst 38h			;8999	ff 	. 
	ret po			;899a	e0 	. 
	inc bc			;899b	03 	. 
	ret p			;899c	f0 	. 
	ret po			;899d	e0 	. 
	ld h,b			;899e	60 	` 
	nop			;899f	00 	. 
	rst 38h			;89a0	ff 	. 
	ret po			;89a1	e0 	. 
	inc b			;89a2	04 	. 
	ret p			;89a3	f0 	. 
	ret po			;89a4	e0 	. 
	nop			;89a5	00 	. 
	sub b			;89a6	90 	. 
	add a,b			;89a7	80 	. 
	ld h,b			;89a8	60 	` 
	nop			;89a9	00 	. 
	ret p			;89aa	f0 	. 
	ret po			;89ab	e0 	. 
	ret po			;89ac	e0 	. 
	nop			;89ad	00 	. 
	ret p			;89ae	f0 	. 
	add a,b			;89af	80 	. 
	ld h,b			;89b0	60 	` 
	nop			;89b1	00 	. 
	ret p			;89b2	f0 	. 
	ret po			;89b3	e0 	. 
	ret po			;89b4	e0 	. 
	nop			;89b5	00 	. 
	rst 38h			;89b6	ff 	. 
	ret po			;89b7	e0 	. 
	rlca			;89b8	07 	. 
	nop			;89b9	00 	. 
	rst 38h			;89ba	ff 	. 
	ret p			;89bb	f0 	. 
	rlca			;89bc	07 	. 
	rst 38h			;89bd	ff 	. 
	ret po			;89be	e0 	. 
	ex af,af'			;89bf	08 	. 
	rst 38h			;89c0	ff 	. 
	ret p			;89c1	f0 	. 
	add hl,bc			;89c2	09 	. 
	ld (hl),b			;89c3	70 	p 
	rst 38h			;89c4	ff 	. 
	ret po			;89c5	e0 	. 
	ld b,0f0h		;89c6	06 f0 	. . 
	ld (hl),b			;89c8	70 	p 
	rst 38h			;89c9	ff 	. 
	ret po			;89ca	e0 	. 
	dec c			;89cb	0d 	. 
	ld b,b			;89cc	40 	@ 
	rst 38h			;89cd	ff 	. 
	ret po			;89ce	e0 	. 
	rlca			;89cf	07 	. 
	ld b,b			;89d0	40 	@ 
	nop			;89d1	00 	. 
	ret p			;89d2	f0 	. 
	rst 38h			;89d3	ff 	. 
	ret po			;89d4	e0 	. 
	inc b			;89d5	04 	. 
	add a,b			;89d6	80 	. 
	sub b			;89d7	90 	. 
	nop			;89d8	00 	. 
	nop			;89d9	00 	. 
	rst 38h			;89da	ff 	. 
	ret p			;89db	f0 	. 
	inc b			;89dc	04 	. 
	add a,b			;89dd	80 	. 
	ret p			;89de	f0 	. 
	add a,b			;89df	80 	. 
	ld h,b			;89e0	60 	` 
	ld h,b			;89e1	60 	` 
	ld (hl),b			;89e2	70 	p 
	ld d,b			;89e3	50 	P 
	rst 38h			;89e4	ff 	. 
	ld b,b			;89e5	40 	@ 
	inc bc			;89e6	03 	. 
	add a,b			;89e7	80 	. 
	ld h,b			;89e8	60 	` 
	ld h,b			;89e9	60 	` 
	ld (hl),b			;89ea	70 	p 
	ld d,b			;89eb	50 	P 
	ld b,b			;89ec	40 	@ 
	ld b,b			;89ed	40 	@ 
	rst 38h			;89ee	ff 	. 
	nop			;89ef	00 	. 
	inc bc			;89f0	03 	. 
	rst 38h			;89f1	ff 	. 
	ret po			;89f2	e0 	. 
	inc b			;89f3	04 	. 
	sub b			;89f4	90 	. 
	add a,b			;89f5	80 	. 
	rst 38h			;89f6	ff 	. 
	nop			;89f7	00 	. 
	inc bc			;89f8	03 	. 
	rst 38h			;89f9	ff 	. 
	ret p			;89fa	f0 	. 
	inc bc			;89fb	03 	. 
	sub b			;89fc	90 	. 
	ret p			;89fd	f0 	. 
	ld h,b			;89fe	60 	` 
	ld h,b			;89ff	60 	` 
	add a,b			;8a00	80 	. 
	rst 38h			;8a01	ff 	. 
	ld b,b			;8a02	40 	@ 
	inc bc			;8a03	03 	. 
	nop			;8a04	00 	. 
	nop			;8a05	00 	. 
	ld h,b			;8a06	60 	` 
	ld h,b			;8a07	60 	` 
	add a,b			;8a08	80 	. 
	ret p			;8a09	f0 	. 
	ret p			;8a0a	f0 	. 
	ld d,b			;8a0b	50 	P 
	ld d,b			;8a0c	50 	P 
	rst 38h			;8a0d	ff 	. 
	nop			;8a0e	00 	. 
	inc b			;8a0f	04 	. 
	ret p			;8a10	f0 	. 
	ret po			;8a11	e0 	. 
	ret po			;8a12	e0 	. 
	add a,b			;8a13	80 	. 
	ld h,b			;8a14	60 	` 
	rst 38h			;8a15	ff 	. 
	nop			;8a16	00 	. 
	inc bc			;8a17	03 	. 
	ret p			;8a18	f0 	. 
	ret po			;8a19	e0 	. 
	ret p			;8a1a	f0 	. 
	add a,b			;8a1b	80 	. 
	ret p			;8a1c	f0 	. 
	ld h,b			;8a1d	60 	` 
	add a,b			;8a1e	80 	. 
	sub b			;8a1f	90 	. 
	ret po			;8a20	e0 	. 
	ret po			;8a21	e0 	. 
	ld d,b			;8a22	50 	P 
	nop			;8a23	00 	. 
	nop			;8a24	00 	. 
	ld h,b			;8a25	60 	` 
	add a,b			;8a26	80 	. 
	sub b			;8a27	90 	. 
	ret p			;8a28	f0 	. 
	ret po			;8a29	e0 	. 
	ld d,b			;8a2a	50 	P 
	rst 38h			;8a2b	ff 	. 
	nop			;8a2c	00 	. 
	dec b			;8a2d	05 	. 
	rst 38h			;8a2e	ff 	. 
	ret p			;8a2f	f0 	. 
	inc bc			;8a30	03 	. 
	ld h,b			;8a31	60 	` 
	ld h,b			;8a32	60 	` 
	nop			;8a33	00 	. 
	nop			;8a34	00 	. 
	rst 38h			;8a35	ff 	. 
	ret p			;8a36	f0 	. 
	inc b			;8a37	04 	. 
	ld h,b			;8a38	60 	` 
	ret p			;8a39	f0 	. 
	add a,b			;8a3a	80 	. 
	sub b			;8a3b	90 	. 
	add a,b			;8a3c	80 	. 
	ret p			;8a3d	f0 	. 
	ret p			;8a3e	f0 	. 
	ld b,b			;8a3f	40 	@ 
	ld b,b			;8a40	40 	@ 
	nop			;8a41	00 	. 
	add a,b			;8a42	80 	. 
	sub b			;8a43	90 	. 
	add a,b			;8a44	80 	. 
	rst 38h			;8a45	ff 	. 
	ld b,b			;8a46	40 	@ 
	inc bc			;8a47	03 	. 
	nop			;8a48	00 	. 
	nop			;8a49	00 	. 
	ld b,b			;8a4a	40 	@ 
	rst 38h			;8a4b	ff 	. 
	ret p			;8a4c	f0 	. 
	inc b			;8a4d	04 	. 
	sub b			;8a4e	90 	. 
	add a,b			;8a4f	80 	. 
	ret p			;8a50	f0 	. 
	ld b,b			;8a51	40 	@ 
	rst 38h			;8a52	ff 	. 
	ret p			;8a53	f0 	. 
	inc b			;8a54	04 	. 
	sub b			;8a55	90 	. 
	ret p			;8a56	f0 	. 
	ret p			;8a57	f0 	. 
	add a,b			;8a58	80 	. 
	add a,b			;8a59	80 	. 
	ret po			;8a5a	e0 	. 
	ld (hl),b			;8a5b	70 	p 
	ld d,b			;8a5c	50 	P 
	ld b,b			;8a5d	40 	@ 
	ld b,b			;8a5e	40 	@ 
	nop			;8a5f	00 	. 
	add a,b			;8a60	80 	. 
	add a,b			;8a61	80 	. 
	ret po			;8a62	e0 	. 
	ld (hl),b			;8a63	70 	p 
	ld d,b			;8a64	50 	P 
	ld b,b			;8a65	40 	@ 
	ld b,b			;8a66	40 	@ 
	nop			;8a67	00 	. 
	ld b,b			;8a68	40 	@ 
	ld b,b			;8a69	40 	@ 
	rst 38h			;8a6a	ff 	. 
	ret p			;8a6b	f0 	. 
	inc b			;8a6c	04 	. 
	add a,b			;8a6d	80 	. 
	ld h,b			;8a6e	60 	` 
	ld b,b			;8a6f	40 	@ 
	ld b,b			;8a70	40 	@ 
	rst 38h			;8a71	ff 	. 
	ret p			;8a72	f0 	. 
	dec b			;8a73	05 	. 
	ld h,b			;8a74	60 	` 
	add a,b			;8a75	80 	. 
	sub b			;8a76	90 	. 
	ret po			;8a77	e0 	. 
	ld (hl),b			;8a78	70 	p 
	ld d,b			;8a79	50 	P 
	ld (hl),b			;8a7a	70 	p 
	ld b,b			;8a7b	40 	@ 
	nop			;8a7c	00 	. 
	add a,b			;8a7d	80 	. 
	sub b			;8a7e	90 	. 
	ret po			;8a7f	e0 	. 
	ld (hl),b			;8a80	70 	p 
	ld d,b			;8a81	50 	P 
	ld (hl),b			;8a82	70 	p 
	ld b,b			;8a83	40 	@ 
	nop			;8a84	00 	. 
	ld b,b			;8a85	40 	@ 
	ld b,b			;8a86	40 	@ 
	ret p			;8a87	f0 	. 
	ret po			;8a88	e0 	. 
	ret p			;8a89	f0 	. 
	ld h,b			;8a8a	60 	` 
	ld h,b			;8a8b	60 	` 
	ret m			;8a8c	f8 	. 
	ld b,b			;8a8d	40 	@ 
	ld b,b			;8a8e	40 	@ 
	ret p			;8a8f	f0 	. 
	ret po			;8a90	e0 	. 
	ret p			;8a91	f0 	. 
	ld h,b			;8a92	60 	` 
	ret p			;8a93	f0 	. 
	add a,b			;8a94	80 	. 
	sub b			;8a95	90 	. 
	add a,b			;8a96	80 	. 
	ret po			;8a97	e0 	. 
	ld (hl),b			;8a98	70 	p 
	ret p			;8a99	f0 	. 
	ld b,b			;8a9a	40 	@ 
	add a,b			;8a9b	80 	. 
	nop			;8a9c	00 	. 
	sub b			;8a9d	90 	. 
	add a,b			;8a9e	80 	. 
	ret po			;8a9f	e0 	. 
	ld (hl),b			;8aa0	70 	p 
	ret p			;8aa1	f0 	. 
	ld b,b			;8aa2	40 	@ 
	add a,b			;8aa3	80 	. 
	nop			;8aa4	00 	. 
	ret po			;8aa5	e0 	. 
	rst 38h			;8aa6	ff 	. 
	ret p			;8aa7	f0 	. 
	inc b			;8aa8	04 	. 
	ld h,b			;8aa9	60 	` 
	ld h,b			;8aaa	60 	` 
	ret m			;8aab	f8 	. 
	ret po			;8aac	e0 	. 
	rst 38h			;8aad	ff 	. 
	ret p			;8aae	f0 	. 
	inc b			;8aaf	04 	. 
	ld h,b			;8ab0	60 	` 
	ret p			;8ab1	f0 	. 
	add a,b			;8ab2	80 	. 
	sub b			;8ab3	90 	. 
	ret p			;8ab4	f0 	. 
	ret po			;8ab5	e0 	. 
	ld (hl),b			;8ab6	70 	p 
	ret p			;8ab7	f0 	. 
	ld b,b			;8ab8	40 	@ 
	ld b,b			;8ab9	40 	@ 
	nop			;8aba	00 	. 
	sub b			;8abb	90 	. 
	ret p			;8abc	f0 	. 
	ret po			;8abd	e0 	. 
	ld (hl),b			;8abe	70 	p 
	ret p			;8abf	f0 	. 
	ld b,b			;8ac0	40 	@ 
	ld b,b			;8ac1	40 	@ 
	nop			;8ac2	00 	. 
	ret po			;8ac3	e0 	. 
	sub b			;8ac4	90 	. 
	add a,b			;8ac5	80 	. 
	sub b			;8ac6	90 	. 
	rst 38h			;8ac7	ff 	. 
	add a,b			;8ac8	80 	. 
	inc b			;8ac9	04 	. 
	ret po			;8aca	e0 	. 
	sub b			;8acb	90 	. 
	add a,b			;8acc	80 	. 
	sub b			;8acd	90 	. 
	add a,b			;8ace	80 	. 
	add a,b			;8acf	80 	. 
	sub b			;8ad0	90 	. 
	sub b			;8ad1	90 	. 
	rst 38h			;8ad2	ff 	. 
	add a,b			;8ad3	80 	. 
	inc bc			;8ad4	03 	. 
	ld h,b			;8ad5	60 	` 
	add a,b			;8ad6	80 	. 
	rst 38h			;8ad7	ff 	. 
	ld h,b			;8ad8	60 	` 
	inc bc			;8ad9	03 	. 
	rst 38h			;8ada	ff 	. 
	add a,b			;8adb	80 	. 
	inc bc			;8adc	03 	. 
	ld h,b			;8add	60 	` 
	add a,b			;8ade	80 	. 
	rst 38h			;8adf	ff 	. 
	ld h,b			;8ae0	60 	` 
	inc bc			;8ae1	03 	. 
	ret po			;8ae2	e0 	. 
	sub b			;8ae3	90 	. 
	add a,b			;8ae4	80 	. 
	sub b			;8ae5	90 	. 
	rst 38h			;8ae6	ff 	. 
	add a,b			;8ae7	80 	. 
	inc b			;8ae8	04 	. 
	ret po			;8ae9	e0 	. 
	sub b			;8aea	90 	. 
	add a,b			;8aeb	80 	. 
	sub b			;8aec	90 	. 
	add a,b			;8aed	80 	. 
	add a,b			;8aee	80 	. 
	sub b			;8aef	90 	. 
	sub b			;8af0	90 	. 
	rst 38h			;8af1	ff 	. 
	add a,b			;8af2	80 	. 
	inc bc			;8af3	03 	. 
	ld h,b			;8af4	60 	` 
	add a,b			;8af5	80 	. 
	rst 38h			;8af6	ff 	. 
	ld h,b			;8af7	60 	` 
	inc bc			;8af8	03 	. 
	rst 38h			;8af9	ff 	. 
	add a,b			;8afa	80 	. 
	inc bc			;8afb	03 	. 
	ld h,b			;8afc	60 	` 
	add a,b			;8afd	80 	. 
	rst 38h			;8afe	ff 	. 
	ld h,b			;8aff	60 	` 
	inc bc			;8b00	03 	. 
	nop			;8b01	00 	. 
	sub b			;8b02	90 	. 
	add a,b			;8b03	80 	. 
	sub b			;8b04	90 	. 
	rst 38h			;8b05	ff 	. 
	add a,b			;8b06	80 	. 
	inc b			;8b07	04 	. 
	ret po			;8b08	e0 	. 
	sub b			;8b09	90 	. 
	add a,b			;8b0a	80 	. 
	sub b			;8b0b	90 	. 
	add a,b			;8b0c	80 	. 
	add a,b			;8b0d	80 	. 
	sub b			;8b0e	90 	. 
	sub b			;8b0f	90 	. 
	rst 38h			;8b10	ff 	. 
	add a,b			;8b11	80 	. 
	inc bc			;8b12	03 	. 
	ld h,b			;8b13	60 	` 
	add a,b			;8b14	80 	. 
	rst 38h			;8b15	ff 	. 
	ld h,b			;8b16	60 	` 
	inc bc			;8b17	03 	. 
	rst 38h			;8b18	ff 	. 
	add a,b			;8b19	80 	. 
	inc bc			;8b1a	03 	. 
	ld h,b			;8b1b	60 	` 
	add a,b			;8b1c	80 	. 
	rst 38h			;8b1d	ff 	. 
	ld h,b			;8b1e	60 	` 
	inc bc			;8b1f	03 	. 
	rst 38h			;8b20	ff 	. 
	nop			;8b21	00 	. 
	dec b			;8b22	05 	. 
	add a,b			;8b23	80 	. 
	sbc a,(hl)			;8b24	9e 	. 
	ld l,(hl)			;8b25	6e 	n 
	ret p			;8b26	f0 	. 
	ret po			;8b27	e0 	. 
	ld (hl),b			;8b28	70 	p 
	ld d,b			;8b29	50 	P 
	ld b,b			;8b2a	40 	@ 
	ret p			;8b2b	f0 	. 
	sub b			;8b2c	90 	. 
	ld h,b			;8b2d	60 	` 
	ld h,b			;8b2e	60 	` 
	add a,b			;8b2f	80 	. 
	sub b			;8b30	90 	. 
	rst 38h			;8b31	ff 	. 
	ret p			;8b32	f0 	. 
	dec b			;8b33	05 	. 
	ld h,h			;8b34	64 	d 
	add a,l			;8b35	85 	. 
	sub b			;8b36	90 	. 
	rst 38h			;8b37	ff 	. 
	nop			;8b38	00 	. 
	ex af,af'			;8b39	08 	. 
	ret p			;8b3a	f0 	. 
	ret p			;8b3b	f0 	. 
	add a,b			;8b3c	80 	. 
	ld h,b			;8b3d	60 	` 
	ld h,b			;8b3e	60 	` 
	nop			;8b3f	00 	. 
	ret po			;8b40	e0 	. 
	ld (hl),b			;8b41	70 	p 
	ld d,b			;8b42	50 	P 
	ld b,b			;8b43	40 	@ 
	ret po			;8b44	e0 	. 
	ld h,b			;8b45	60 	` 
	ld h,b			;8b46	60 	` 
	add a,b			;8b47	80 	. 
	sub b			;8b48	90 	. 
	add a,b			;8b49	80 	. 
	rst 38h			;8b4a	ff 	. 
	ret p			;8b4b	f0 	. 
	inc b			;8b4c	04 	. 
	nop			;8b4d	00 	. 
	add a,b			;8b4e	80 	. 
	sub b			;8b4f	90 	. 
	add a,b			;8b50	80 	. 
	jr nz,$+82		;8b51	20 50 	  P 
	rst 38h			;8b53	ff 	. 
	nop			;8b54	00 	. 
	inc b			;8b55	04 	. 
	ret po			;8b56	e0 	. 
	ld (hl),b			;8b57	70 	p 
	ld d,b			;8b58	50 	P 
	ld b,b			;8b59	40 	@ 
	add a,b			;8b5a	80 	. 
	ld h,b			;8b5b	60 	` 
	add a,b			;8b5c	80 	. 
	rst 38h			;8b5d	ff 	. 
	nop			;8b5e	00 	. 
	inc bc			;8b5f	03 	. 
	ret p			;8b60	f0 	. 
	ret po			;8b61	e0 	. 
	ret po			;8b62	e0 	. 
	ld h,b			;8b63	60 	` 
	add a,b			;8b64	80 	. 
	sub b			;8b65	90 	. 
	add a,b			;8b66	80 	. 
	ld h,b			;8b67	60 	` 
	ret po			;8b68	e0 	. 
	ret p			;8b69	f0 	. 
	rst 38h			;8b6a	ff 	. 
	nop			;8b6b	00 	. 
	inc bc			;8b6c	03 	. 
	sub b			;8b6d	90 	. 
	add a,b			;8b6e	80 	. 
	ld h,b			;8b6f	60 	` 
	rst 38h			;8b70	ff 	. 
	ret p			;8b71	f0 	. 
	inc b			;8b72	04 	. 
	nop			;8b73	00 	. 
	rst 38h			;8b74	ff 	. 
	ld d,b			;8b75	50 	P 
	dec b			;8b76	05 	. 
	sub b			;8b77	90 	. 
	add a,b			;8b78	80 	. 
	ld h,b			;8b79	60 	` 
	rst 38h			;8b7a	ff 	. 
	ret po			;8b7b	e0 	. 
	inc b			;8b7c	04 	. 
	ret p			;8b7d	f0 	. 
	sub b			;8b7e	90 	. 
	ret p			;8b7f	f0 	. 
	add a,b			;8b80	80 	. 
	ld h,b			;8b81	60 	` 
	add a,b			;8b82	80 	. 
	sub b			;8b83	90 	. 
	ld b,b			;8b84	40 	@ 
	rst 38h			;8b85	ff 	. 
	ld d,b			;8b86	50 	P 
	inc b			;8b87	04 	. 
	ld h,b			;8b88	60 	` 
	add a,b			;8b89	80 	. 
	sub b			;8b8a	90 	. 
	rst 38h			;8b8b	ff 	. 
	ret po			;8b8c	e0 	. 
	dec b			;8b8d	05 	. 
	rst 38h			;8b8e	ff 	. 
	ret p			;8b8f	f0 	. 
	inc b			;8b90	04 	. 
	ret nz			;8b91	c0 	. 
	jr nz,$+50		;8b92	20 30 	  0 
	rst 38h			;8b94	ff 	. 
	ret p			;8b95	f0 	. 
	dec b			;8b96	05 	. 
	ret nz			;8b97	c0 	. 
	jr nz,$+50		;8b98	20 30 	  0 
	ret p			;8b9a	f0 	. 
	ret p			;8b9b	f0 	. 
	jr nc,$+34		;8b9c	30 20 	0   
	ret nz			;8b9e	c0 	. 
	ld b,b			;8b9f	40 	@ 
	ld b,b			;8ba0	40 	@ 
	rst 38h			;8ba1	ff 	. 
	ret p			;8ba2	f0 	. 
	inc bc			;8ba3	03 	. 
	jr nc,$+34		;8ba4	30 20 	0   
	ret nz			;8ba6	c0 	. 
	ld b,b			;8ba7	40 	@ 
	ld b,b			;8ba8	40 	@ 
	rst 38h			;8ba9	ff 	. 
	ret p			;8baa	f0 	. 
	inc b			;8bab	04 	. 
	rst 38h			;8bac	ff 	. 
	ld h,b			;8bad	60 	` 
	inc bc			;8bae	03 	. 
	add a,b			;8baf	80 	. 
	sub b			;8bb0	90 	. 
	rst 38h			;8bb1	ff 	. 
	ret p			;8bb2	f0 	. 
	inc bc			;8bb3	03 	. 
	rst 38h			;8bb4	ff 	. 
	ld h,b			;8bb5	60 	` 
	inc b			;8bb6	04 	. 
	sub b			;8bb7	90 	. 
	ret p			;8bb8	f0 	. 
	ret p			;8bb9	f0 	. 
	sub b			;8bba	90 	. 
	add a,b			;8bbb	80 	. 
	rst 38h			;8bbc	ff 	. 
	ld h,b			;8bbd	60 	` 
	inc bc			;8bbe	03 	. 
	rst 38h			;8bbf	ff 	. 
	ret p			;8bc0	f0 	. 
	inc bc			;8bc1	03 	. 
	sub b			;8bc2	90 	. 
	add a,b			;8bc3	80 	. 
	rst 38h			;8bc4	ff 	. 
	ld h,b			;8bc5	60 	` 
	inc bc			;8bc6	03 	. 
	rst 38h			;8bc7	ff 	. 
	ret p			;8bc8	f0 	. 
	inc bc			;8bc9	03 	. 
	ld (hl),b			;8bca	70 	p 
	rst 38h			;8bcb	ff 	. 
	ret po			;8bcc	e0 	. 
	ld b,0f0h		;8bcd	06 f0 	. . 
	ld (hl),b			;8bcf	70 	p 
	rst 38h			;8bd0	ff 	. 
	ret po			;8bd1	e0 	. 
	ld b,0f0h		;8bd2	06 f0 	. . 
	rst 38h			;8bd4	ff 	. 
	ld (hl),b			;8bd5	70 	p 
	rlca			;8bd6	07 	. 
	ret p			;8bd7	f0 	. 
	rst 38h			;8bd8	ff 	. 
	ld (hl),b			;8bd9	70 	p 
	rlca			;8bda	07 	. 
	ret p			;8bdb	f0 	. 
	ret po			;8bdc	e0 	. 
	ret po			;8bdd	e0 	. 
	cp 0e0h		;8bde	fe e0 	. . 
	inc b			;8be0	04 	. 
	nop			;8be1	00 	. 
	ret po			;8be2	e0 	. 
	ret p			;8be3	f0 	. 
	ret po			;8be4	e0 	. 
	ret po			;8be5	e0 	. 
	rrca			;8be6	0f 	. 
	ret po			;8be7	e0 	. 
	inc b			;8be8	04 	. 
	nop			;8be9	00 	. 
	rst 38h			;8bea	ff 	. 
	ret po			;8beb	e0 	. 
	inc bc			;8bec	03 	. 
	call p,004e0h		;8bed	f4 e0 04 	. . . 
	nop			;8bf0	00 	. 
	ret po			;8bf1	e0 	. 
	ld b,b			;8bf2	40 	@ 
	ret po			;8bf3	e0 	. 
	ret po			;8bf4	e0 	. 
	rrca			;8bf5	0f 	. 
	ret po			;8bf6	e0 	. 
	inc b			;8bf7	04 	. 
	nop			;8bf8	00 	. 
	ret p			;8bf9	f0 	. 
	ld b,b			;8bfa	40 	@ 
	ret p			;8bfb	f0 	. 
	ld (hl),b			;8bfc	70 	p 
	rst 38h			;8bfd	ff 	. 
	ret po			;8bfe	e0 	. 
	inc bc			;8bff	03 	. 
	ret p			;8c00	f0 	. 
	ret p			;8c01	f0 	. 
	ret po			;8c02	e0 	. 
	ret p			;8c03	f0 	. 
	ld (hl),b			;8c04	70 	p 
	rst 38h			;8c05	ff 	. 
	ret po			;8c06	e0 	. 
	inc bc			;8c07	03 	. 
	ret p			;8c08	f0 	. 
	ret p			;8c09	f0 	. 
	ret po			;8c0a	e0 	. 
	ld (hl),b			;8c0b	70 	p 
	ld b,b			;8c0c	40 	@ 
	ld b,b			;8c0d	40 	@ 
	rst 38h			;8c0e	ff 	. 
	ret po			;8c0f	e0 	. 
	inc bc			;8c10	03 	. 
	rst 38h			;8c11	ff 	. 
	ld (hl),b			;8c12	70 	p 
	inc bc			;8c13	03 	. 
	ld b,b			;8c14	40 	@ 
	ld b,b			;8c15	40 	@ 
	rst 38h			;8c16	ff 	. 
	ret po			;8c17	e0 	. 
	inc bc			;8c18	03 	. 
	ld (hl),b			;8c19	70 	p 
	ld (hl),b			;8c1a	70 	p 
	rst 38h			;8c1b	ff 	. 
	nop			;8c1c	00 	. 
	dec b			;8c1d	05 	. 
	rrca			;8c1e	0f 	. 
	cp 0e0h		;8c1f	fe e0 	. . 
	rst 38h			;8c21	ff 	. 
	nop			;8c22	00 	. 
	dec b			;8c23	05 	. 
	rrca			;8c24	0f 	. 
	cp 0e0h		;8c25	fe e0 	. . 
	ret po			;8c27	e0 	. 
	inc b			;8c28	04 	. 
	inc b			;8c29	04 	. 
	rst 38h			;8c2a	ff 	. 
	nop			;8c2b	00 	. 
	dec b			;8c2c	05 	. 
	ret po			;8c2d	e0 	. 
	inc b			;8c2e	04 	. 
	inc b			;8c2f	04 	. 
	rst 38h			;8c30	ff 	. 
	nop			;8c31	00 	. 
	dec b			;8c32	05 	. 
	rst 38h			;8c33	ff 	. 
	ld d,b			;8c34	50 	P 
	ex af,af'			;8c35	08 	. 
	rst 38h			;8c36	ff 	. 
	ret po			;8c37	e0 	. 
	ex af,af'			;8c38	08 	. 
	rst 38h			;8c39	ff 	. 
	ld d,b			;8c3a	50 	P 
	ex af,af'			;8c3b	08 	. 
	rst 38h			;8c3c	ff 	. 
	ret po			;8c3d	e0 	. 
	ex af,af'			;8c3e	08 	. 
	rst 38h			;8c3f	ff 	. 
	ld d,b			;8c40	50 	P 
	dec b			;8c41	05 	. 
	push af			;8c42	f5 	. 
	cp 0ffh		;8c43	fe ff 	. . 
	ret po			;8c45	e0 	. 
	ld b,0feh		;8c46	06 fe 	. . 
	cp 0e0h		;8c48	fe e0 	. . 
	ret po			;8c4a	e0 	. 
	inc b			;8c4b	04 	. 
	ld b,l			;8c4c	45 	E 
	rst 38h			;8c4d	ff 	. 
	ld d,b			;8c4e	50 	P 
	dec b			;8c4f	05 	. 
	ret po			;8c50	e0 	. 
	inc b			;8c51	04 	. 
	ld c,(hl)			;8c52	4e 	N 
	rst 38h			;8c53	ff 	. 
	ret po			;8c54	e0 	. 
	dec b			;8c55	05 	. 
	rrca			;8c56	0f 	. 
	ret p			;8c57	f0 	. 
	rst 38h			;8c58	ff 	. 
	call p,00e05h		;8c59	f4 05 0e 	. . . 
	rrca			;8c5c	0f 	. 
	ret p			;8c5d	f0 	. 
	rst 38h			;8c5e	ff 	. 
	call p,00e05h		;8c5f	f4 05 0e 	. . . 
	rrca			;8c62	0f 	. 
	ret p			;8c63	f0 	. 
	rst 38h			;8c64	ff 	. 
	call p,00e05h		;8c65	f4 05 0e 	. . . 
	rrca			;8c68	0f 	. 
	ret p			;8c69	f0 	. 
	rst 38h			;8c6a	ff 	. 
	call p,00e05h		;8c6b	f4 05 0e 	. . . 
	rst 38h			;8c6e	ff 	. 
	rst 38h			;8c6f	ff 	. 
	nop			;8c70	00 	. 
	ld (05577h),hl		;8c71	22 77 55 	" w U 
	ld l,(hl)			;8c74	6e 	n 
	in a,(0edh)		;8c75	db ed 	. . 
	cp e			;8c77	bb 	. 
	ld a,a			;8c78	7f 	 
	rst 38h			;8c79	ff 	. 
	ld a,005h		;8c7a	3e 05 	> . 
	rst 38h			;8c7c	ff 	. 
	nop			;8c7d	00 	. 
	inc bc			;8c7e	03 	. 
	rst 38h			;8c7f	ff 	. 
	ld a,(hl)			;8c80	7e 	~ 
	ld b,000h		;8c81	06 00 	. . 
	nop			;8c83	00 	. 
	ld (05577h),hl		;8c84	22 77 55 	" w U 
	ld l,(hl)			;8c87	6e 	n 
	in a,(0edh)		;8c88	db ed 	. . 
	cp e			;8c8a	bb 	. 
	ld a,a			;8c8b	7f 	 
	rst 38h			;8c8c	ff 	. 
	ld a,005h		;8c8d	3e 05 	> . 
	rst 38h			;8c8f	ff 	. 
	nop			;8c90	00 	. 
	inc bc			;8c91	03 	. 
	rst 38h			;8c92	ff 	. 
	ld a,(hl)			;8c93	7e 	~ 
	ld b,000h		;8c94	06 00 	. . 
	nop			;8c96	00 	. 
	ld (05577h),hl		;8c97	22 77 55 	" w U 
	ld l,(hl)			;8c9a	6e 	n 
	in a,(0edh)		;8c9b	db ed 	. . 
	cp e			;8c9d	bb 	. 
	ld a,a			;8c9e	7f 	 
	rst 38h			;8c9f	ff 	. 
	ld a,005h		;8ca0	3e 05 	> . 
	rst 38h			;8ca2	ff 	. 
	nop			;8ca3	00 	. 
	inc bc			;8ca4	03 	. 
	ld de,0ddddh		;8ca5	11 dd dd 	. . . 
	ld (0ddddh),hl		;8ca8	22 dd dd 	" . . 
	nop			;8cab	00 	. 
	nop			;8cac	00 	. 
	ld (05577h),hl		;8cad	22 77 55 	" w U 
	ld l,(hl)			;8cb0	6e 	n 
	in a,(0edh)		;8cb1	db ed 	. . 
	cp e			;8cb3	bb 	. 
	ld a,a			;8cb4	7f 	 
	ld a,022h		;8cb5	3e 22 	> " 
	ld a,(03e3ah)		;8cb7	3a 3a 3e 	: : > 
	rst 38h			;8cba	ff 	. 
	nop			;8cbb	00 	. 
	inc bc			;8cbc	03 	. 
	ld de,0ddddh		;8cbd	11 dd dd 	. . . 
	xor 011h		;8cc0	ee 11 	. . 
	defb 0ddh,0ddh,000h	;illegal sequence		;8cc2	dd dd 00 	. . . 
	ld (05577h),hl		;8cc5	22 77 55 	" w U 
	ld l,(hl)			;8cc8	6e 	n 
	in a,(0edh)		;8cc9	db ed 	. . 
	cp e			;8ccb	bb 	. 
	nop			;8ccc	00 	. 
	jr c,$+112		;8ccd	38 6e 	8 n 
	ld c,e			;8ccf	4b 	K 
	dec (hl)			;8cd0	35 	5 
	ld hl,(00014h)		;8cd1	2a 14 00 	* . . 
	inc h			;8cd4	24 	$ 
	ld e,c			;8cd5	59 	Y 
	ld l,(hl)			;8cd6	6e 	n 
	in a,(0b5h)		;8cd7	db b5 	. . 
	ld hl,(02852h)		;8cd9	2a 52 28 	* R ( 
	nop			;8cdc	00 	. 
	ld (05577h),hl		;8cdd	22 77 55 	" w U 
	ld l,(hl)			;8ce0	6e 	n 
	in a,(0edh)		;8ce1	db ed 	. . 
	cp e			;8ce3	bb 	. 
	inc h			;8ce4	24 	$ 
	add hl,sp			;8ce5	39 	9 
	ld l,(hl)			;8ce6	6e 	n 
	ld c,e			;8ce7	4b 	K 
	dec (hl)			;8ce8	35 	5 
	ld hl,(00014h)		;8ce9	2a 14 00 	* . . 
	inc h			;8cec	24 	$ 
	ld e,c			;8ced	59 	Y 
	ld l,(hl)			;8cee	6e 	n 
	in a,(0b5h)		;8cef	db b5 	. . 
	ld hl,(02852h)		;8cf1	2a 52 28 	* R ( 
	nop			;8cf4	00 	. 
	ld (05577h),hl		;8cf5	22 77 55 	" w U 
	ld l,(hl)			;8cf8	6e 	n 
	in a,(0edh)		;8cf9	db ed 	. . 
	cp e			;8cfb	bb 	. 
	ld a,a			;8cfc	7f 	 
	ld a,022h		;8cfd	3e 22 	> " 
	ld a,(03e3ah)		;8cff	3a 3a 3e 	: : > 
	rst 38h			;8d02	ff 	. 
	nop			;8d03	00 	. 
	inc bc			;8d04	03 	. 
	ld de,0ddffh		;8d05	11 ff dd 	. . . 
	dec b			;8d08	05 	. 
	nop			;8d09	00 	. 
	nop			;8d0a	00 	. 
	ld (05577h),hl		;8d0b	22 77 55 	" w U 
	ld l,(hl)			;8d0e	6e 	n 
	in a,(0edh)		;8d0f	db ed 	. . 
	cp e			;8d11	bb 	. 
	ld a,a			;8d12	7f 	 
	rst 38h			;8d13	ff 	. 
	ld a,005h		;8d14	3e 05 	> . 
	rst 38h			;8d16	ff 	. 
	nop			;8d17	00 	. 
	inc bc			;8d18	03 	. 
	ld de,0ddddh		;8d19	11 dd dd 	. . . 
	xor 011h		;8d1c	ee 11 	. . 
	defb 0ddh,0ddh,000h	;illegal sequence		;8d1e	dd dd 00 	. . . 
	ld (05577h),hl		;8d21	22 77 55 	" w U 
	ld l,(hl)			;8d24	6e 	n 
	in a,(0edh)		;8d25	db ed 	. . 
	cp e			;8d27	bb 	. 
	ld a,a			;8d28	7f 	 
	ld a,03eh		;8d29	3e 3e 	> > 
	ld (03e3ah),hl		;8d2b	22 3a 3e 	" : > 
	nop			;8d2e	00 	. 
	nop			;8d2f	00 	. 
	ld a,a			;8d30	7f 	 
	rst 38h			;8d31	ff 	. 
	ccf			;8d32	3f 	? 
	ld b,000h		;8d33	06 00 	. . 
	nop			;8d35	00 	. 
	ld (05577h),hl		;8d36	22 77 55 	" w U 
	ld l,(hl)			;8d39	6e 	n 
	in a,(0edh)		;8d3a	db ed 	. . 
	cp e			;8d3c	bb 	. 
	ld a,a			;8d3d	7f 	 
	rst 38h			;8d3e	ff 	. 
	ld a,005h		;8d3f	3e 05 	> . 
	rst 38h			;8d41	ff 	. 
	nop			;8d42	00 	. 
	inc bc			;8d43	03 	. 
	add a,c			;8d44	81 	. 
	defb 0fdh,0fdh,000h	;illegal sequence		;8d45	fd fd 00 	. . . 
	add a,c			;8d48	81 	. 
	defb 0fdh,0fdh,000h	;illegal sequence		;8d49	fd fd 00 	. . . 
	ret p			;8d4c	f0 	. 
	ret p			;8d4d	f0 	. 
	inc hl			;8d4e	23 	# 
	inc hl			;8d4f	23 	# 
	jp nz,0c0c0h		;8d50	c2 c0 c0 	. . . 
	ret p			;8d53	f0 	. 
	ret p			;8d54	f0 	. 
	rst 38h			;8d55	ff 	. 
	add a,b			;8d56	80 	. 
	inc b			;8d57	04 	. 
	nop			;8d58	00 	. 
	nop			;8d59	00 	. 
	ld c,007h		;8d5a	0e 07 	. . 
	rst 38h			;8d5c	ff 	. 
	ld b,a			;8d5d	47 	G 
	dec b			;8d5e	05 	. 
	rlca			;8d5f	07 	. 
	nop			;8d60	00 	. 
	ret p			;8d61	f0 	. 
	ret p			;8d62	f0 	. 
	ld d,a			;8d63	57 	W 
	ld d,a			;8d64	57 	W 
	ld b,l			;8d65	45 	E 
	ld b,b			;8d66	40 	@ 
	ld b,b			;8d67	40 	@ 
	jr nc,$-14		;8d68	30 f0 	0 . 
	rst 38h			;8d6a	ff 	. 
	ret nz			;8d6b	c0 	. 
	inc b			;8d6c	04 	. 
	nop			;8d6d	00 	. 
	nop			;8d6e	00 	. 
	rrca			;8d6f	0f 	. 
	rrca			;8d70	0f 	. 
	rst 38h			;8d71	ff 	. 
	adc a,a			;8d72	8f 	. 
	dec b			;8d73	05 	. 
	rrca			;8d74	0f 	. 
	nop			;8d75	00 	. 
	ret p			;8d76	f0 	. 
	ret p			;8d77	f0 	. 
	inc hl			;8d78	23 	# 
	inc hl			;8d79	23 	# 
	jp nz,0c0c0h		;8d7a	c2 c0 c0 	. . . 
	ret p			;8d7d	f0 	. 
	ret p			;8d7e	f0 	. 
	rst 38h			;8d7f	ff 	. 
	ld b,b			;8d80	40 	@ 
	inc b			;8d81	04 	. 
	nop			;8d82	00 	. 
	nop			;8d83	00 	. 
	add hl,bc			;8d84	09 	. 
	rst 38h			;8d85	ff 	. 
	add a,b			;8d86	80 	. 
	inc bc			;8d87	03 	. 
	ex af,af'			;8d88	08 	. 
	add a,b			;8d89	80 	. 
	add a,b			;8d8a	80 	. 
	ex af,af'			;8d8b	08 	. 
	nop			;8d8c	00 	. 
	ret p			;8d8d	f0 	. 
	ret p			;8d8e	f0 	. 
	inc hl			;8d8f	23 	# 
	inc hl			;8d90	23 	# 
	jp nz,0c0c0h		;8d91	c2 c0 c0 	. . . 
	ret p			;8d94	f0 	. 
	ret p			;8d95	f0 	. 
	rst 38h			;8d96	ff 	. 
	add a,b			;8d97	80 	. 
	inc b			;8d98	04 	. 
	nop			;8d99	00 	. 
	nop			;8d9a	00 	. 
	rlca			;8d9b	07 	. 
	rst 38h			;8d9c	ff 	. 
	ld d,b			;8d9d	50 	P 
	inc bc			;8d9e	03 	. 
	ld (hl),l			;8d9f	75 	u 
	rst 38h			;8da0	ff 	. 
	ld d,b			;8da1	50 	P 
	inc bc			;8da2	03 	. 
	nop			;8da3	00 	. 
	ret p			;8da4	f0 	. 
	ret p			;8da5	f0 	. 
	ld d,a			;8da6	57 	W 
	ld d,a			;8da7	57 	W 
	ld b,l			;8da8	45 	E 
	ld b,b			;8da9	40 	@ 
	ld b,b			;8daa	40 	@ 
	nop			;8dab	00 	. 
	rst 38h			;8dac	ff 	. 
	ld h,b			;8dad	60 	` 
	ld b,000h		;8dae	06 00 	. . 
	rst 38h			;8db0	ff 	. 
	add a,b			;8db1	80 	. 
	ex af,af'			;8db2	08 	. 
	nop			;8db3	00 	. 
	sub b			;8db4	90 	. 
	sub b			;8db5	90 	. 
	adc a,c			;8db6	89 	. 
	adc a,c			;8db7	89 	. 
	rst 38h			;8db8	ff 	. 
	add a,b			;8db9	80 	. 
	inc bc			;8dba	03 	. 
	ld b,b			;8dbb	40 	@ 
	ld d,b			;8dbc	50 	P 
	ld d,b			;8dbd	50 	P 
	ld (hl),b			;8dbe	70 	p 
	ld d,b			;8dbf	50 	P 
	ld d,b			;8dc0	50 	P 
	ld b,b			;8dc1	40 	@ 
	nop			;8dc2	00 	. 
	rst 38h			;8dc3	ff 	. 
	ld b,b			;8dc4	40 	@ 
	ex af,af'			;8dc5	08 	. 
	nop			;8dc6	00 	. 
	ret p			;8dc7	f0 	. 
	ret p			;8dc8	f0 	. 
	ld d,a			;8dc9	57 	W 
	ld d,a			;8dca	57 	W 
	ld b,l			;8dcb	45 	E 
	ld b,b			;8dcc	40 	@ 
	ld b,b			;8dcd	40 	@ 
	ret p			;8dce	f0 	. 
	ret p			;8dcf	f0 	. 
	rst 38h			;8dd0	ff 	. 
	add a,b			;8dd1	80 	. 
	inc b			;8dd2	04 	. 
	nop			;8dd3	00 	. 
	nop			;8dd4	00 	. 
	rrca			;8dd5	0f 	. 
	rst 38h			;8dd6	ff 	. 
	ret po			;8dd7	e0 	. 
	ld b,00eh		;8dd8	06 0e 	. . 
	nop			;8dda	00 	. 
	sub b			;8ddb	90 	. 
	sub b			;8ddc	90 	. 
	adc a,c			;8ddd	89 	. 
	adc a,c			;8dde	89 	. 
	rst 38h			;8ddf	ff 	. 
	add a,b			;8de0	80 	. 
	inc bc			;8de1	03 	. 
	ret p			;8de2	f0 	. 
	ret p			;8de3	f0 	. 
	rst 38h			;8de4	ff 	. 
	ld b,b			;8de5	40 	@ 
	inc b			;8de6	04 	. 
	nop			;8de7	00 	. 
	nop			;8de8	00 	. 
	ld (bc),a			;8de9	02 	. 
	rst 38h			;8dea	ff 	. 
	ret nz			;8deb	c0 	. 
	inc bc			;8dec	03 	. 
	inc l			;8ded	2c 	, 
	rst 38h			;8dee	ff 	. 
	ret nz			;8def	c0 	. 
	inc bc			;8df0	03 	. 
	nop			;8df1	00 	. 
	sub b			;8df2	90 	. 
	sub b			;8df3	90 	. 
	adc a,c			;8df4	89 	. 
	adc a,c			;8df5	89 	. 
	rst 38h			;8df6	ff 	. 
	add a,b			;8df7	80 	. 
	inc bc			;8df8	03 	. 
	ret p			;8df9	f0 	. 
	ret p			;8dfa	f0 	. 
	rst 38h			;8dfb	ff 	. 
	ld d,b			;8dfc	50 	P 
	inc b			;8dfd	04 	. 
	nop			;8dfe	00 	. 
	nop			;8dff	00 	. 
	ret p			;8e00	f0 	. 
	ret p			;8e01	f0 	. 
	rst 38h			;8e02	ff 	. 
	ret po			;8e03	e0 	. 
	dec b			;8e04	05 	. 
	nop			;8e05	00 	. 
	nop			;8e06	00 	. 
	sub b			;8e07	90 	. 
	sub b			;8e08	90 	. 
	adc a,c			;8e09	89 	. 
	adc a,c			;8e0a	89 	. 
	rst 38h			;8e0b	ff 	. 
	add a,b			;8e0c	80 	. 
	inc bc			;8e0d	03 	. 
	ret p			;8e0e	f0 	. 
	ret p			;8e0f	f0 	. 
	rst 38h			;8e10	ff 	. 
	add a,b			;8e11	80 	. 
	inc b			;8e12	04 	. 
	nop			;8e13	00 	. 
	nop			;8e14	00 	. 
	rlca			;8e15	07 	. 
	rst 38h			;8e16	ff 	. 
	ld d,b			;8e17	50 	P 
	inc bc			;8e18	03 	. 
	rlca			;8e19	07 	. 
	rst 38h			;8e1a	ff 	. 
	ld d,b			;8e1b	50 	P 
	inc bc			;8e1c	03 	. 
	rst 38h			;8e1d	ff 	. 
	rst 38h			;8e1e	ff 	. 
	rst 38h			;8e1f	ff 	. 
	nop			;8e20	00 	. 
	ex af,af'			;8e21	08 	. 
	rst 38h			;8e22	ff 	. 
	ld bc,0ff04h		;8e23	01 04 ff 	. . . 
	ld (bc),a			;8e26	02 	. 
	ld b,000h		;8e27	06 00 	. . 
	rst 38h			;8e29	ff 	. 
	inc bc			;8e2a	03 	. 
	dec d			;8e2b	15 	. 
	rst 38h			;8e2c	ff 	. 
	inc b			;8e2d	04 	. 
	dec d			;8e2e	15 	. 
	rst 38h			;8e2f	ff 	. 
	dec b			;8e30	05 	. 
	dec c			;8e31	0d 	. 
	rst 38h			;8e32	ff 	. 
	ld b,004h		;8e33	06 04 	. . 
	rst 38h			;8e35	ff 	. 
	dec b			;8e36	05 	. 
	inc bc			;8e37	03 	. 
	rst 38h			;8e38	ff 	. 
	rlca			;8e39	07 	. 
	inc bc			;8e3a	03 	. 
	rst 38h			;8e3b	ff 	. 
	ex af,af'			;8e3c	08 	. 
	rlca			;8e3d	07 	. 
	rst 38h			;8e3e	ff 	. 
	add hl,bc			;8e3f	09 	. 
	ld b,00ah		;8e40	06 0a 	. . 
	rst 38h			;8e42	ff 	. 
	dec bc			;8e43	0b 	. 
	jr c,$+1		;8e44	38 ff 	8 . 
	inc c			;8e46	0c 	. 
	ld b,0ffh		;8e47	06 ff 	. . 
	dec c			;8e49	0d 	. 
	ld a,(de)			;8e4a	1a 	. 
	rst 38h			;8e4b	ff 	. 
	ld c,008h		;8e4c	0e 08 	. . 
	rst 38h			;8e4e	ff 	. 
	rrca			;8e4f	0f 	. 
	ld b,0ffh		;8e50	06 ff 	. . 
	djnz $+20		;8e52	10 12 	. . 
	rst 38h			;8e54	ff 	. 
	ld de,01214h		;8e55	11 14 12 	. . . 
	ld (de),a			;8e58	12 	. 
	rst 38h			;8e59	ff 	. 
	inc de			;8e5a	13 	. 
	inc bc			;8e5b	03 	. 
	rst 38h			;8e5c	ff 	. 
	inc d			;8e5d	14 	. 
	ex af,af'			;8e5e	08 	. 
	dec d			;8e5f	15 	. 
	dec d			;8e60	15 	. 
	ld d,016h		;8e61	16 16 	. . 
	rla			;8e63	17 	. 
	rla			;8e64	17 	. 
	rst 38h			;8e65	ff 	. 
	jr $+8		;8e66	18 06 	. . 
	rst 38h			;8e68	ff 	. 
	add hl,de			;8e69	19 	. 
	inc b			;8e6a	04 	. 
	rst 38h			;8e6b	ff 	. 
	ld a,(de)			;8e6c	1a 	. 
	inc b			;8e6d	04 	. 
	rst 38h			;8e6e	ff 	. 
	dec de			;8e6f	1b 	. 
	inc bc			;8e70	03 	. 
	inc e			;8e71	1c 	. 
	rst 38h			;8e72	ff 	. 
	dec e			;8e73	1d 	. 
	inc bc			;8e74	03 	. 
	ld e,01eh		;8e75	1e 1e 	. . 
	rst 38h			;8e77	ff 	. 
	dec c			;8e78	0d 	. 
	jr z,$+1		;8e79	28 ff 	( . 
	rra			;8e7b	1f 	. 
	ld b,0ffh		;8e7c	06 ff 	. . 
	dec c			;8e7e	0d 	. 
	ld (020ffh),hl		;8e7f	22 ff 20 	" .   
	ld (de),a			;8e82	12 	. 
	rst 38h			;8e83	ff 	. 
	dec c			;8e84	0d 	. 
	ld d,021h		;8e85	16 21 	. ! 
	ld hl,02322h		;8e87	21 22 23 	! " # 
	inc hl			;8e8a	23 	# 
	rst 38h			;8e8b	ff 	. 
	inc h			;8e8c	24 	$ 
	ld b,025h		;8e8d	06 25 	. % 
	dec h			;8e8f	25 	% 
	ld h,027h		;8e90	26 27 	& ' 
	jr z,$+42		;8e92	28 28 	( ( 
	rst 38h			;8e94	ff 	. 
	add hl,hl			;8e95	29 	) 
	ld b,02ah		;8e96	06 2a 	. * 
	rst 38h			;8e98	ff 	. 
	dec hl			;8e99	2b 	+ 
	inc bc			;8e9a	03 	. 
	inc l			;8e9b	2c 	, 
	inc l			;8e9c	2c 	, 
	dec l			;8e9d	2d 	- 
	ld l,02eh		;8e9e	2e 2e 	. . 
	rst 38h			;8ea0	ff 	. 
	cpl			;8ea1	2f 	/ 
	inc bc			;8ea2	03 	. 
	jr nc,$+1		;8ea3	30 ff 	0 . 
	ld sp,03203h		;8ea5	31 03 32 	1 . 2 
	rst 38h			;8ea8	ff 	. 
	inc sp			;8ea9	33 	3 
	inc c			;8eaa	0c 	. 
	rst 38h			;8eab	ff 	. 
	inc (hl)			;8eac	34 	4 
	rlca			;8ead	07 	. 
	dec (hl)			;8eae	35 	5 
	dec (hl)			;8eaf	35 	5 
	rst 38h			;8eb0	ff 	. 
	ld (hl),013h		;8eb1	36 13 	6 . 
	ld d,e			;8eb3	53 	S 
	dec bc			;8eb4	0b 	. 
	ld d,b			;8eb5	50 	P 
	inc bc			;8eb6	03 	. 
	inc bc			;8eb7	03 	. 
	ld d,e			;8eb8	53 	S 
	ld a,(bc)			;8eb9	0a 	. 
	inc bc			;8eba	03 	. 
	ld d,e			;8ebb	53 	S 
	rlca			;8ebc	07 	. 
	ret nz			;8ebd	c0 	. 
	ld d,b			;8ebe	50 	P 
	ld (bc),a			;8ebf	02 	. 
	inc bc			;8ec0	03 	. 
	cp d			;8ec1	ba 	. 
	call pe,00450h		;8ec2	ec 50 04 	. P . 
	inc bc			;8ec5	03 	. 
	ret nz			;8ec6	c0 	. 
	ld d,b			;8ec7	50 	P 
	ld (bc),a			;8ec8	02 	. 
	inc bc			;8ec9	03 	. 
	rst 28h			;8eca	ef 	. 
	cp h			;8ecb	bc 	. 
	nop			;8ecc	00 	. 
	xor (hl)			;8ecd	ae 	. 
	ret pe			;8ece	e8 	. 
	nop			;8ecf	00 	. 
	inc bc			;8ed0	03 	. 
	xor (hl)			;8ed1	ae 	. 
	ret nz			;8ed2	c0 	. 
	nop			;8ed3	00 	. 
	inc bc			;8ed4	03 	. 
	cp d			;8ed5	ba 	. 
	call pe,0ae00h		;8ed6	ec 00 ae 	. . . 
	ret pe			;8ed9	e8 	. 
	nop			;8eda	00 	. 
	inc bc			;8edb	03 	. 
	xor (hl)			;8edc	ae 	. 
	ret nz			;8edd	c0 	. 
	nop			;8ede	00 	. 
	inc bc			;8edf	03 	. 
	rst 38h			;8ee0	ff 	. 
	call m,0f100h		;8ee1	fc 00 f1 	. . . 
	cp h			;8ee4	bc 	. 
	nop			;8ee5	00 	. 
	inc bc			;8ee6	03 	. 
	xor (hl)			;8ee7	ae 	. 
	ret nz			;8ee8	c0 	. 
	nop			;8ee9	00 	. 
	inc bc			;8eea	03 	. 
	call m,00250h		;8eeb	fc 50 02 	. P . 
	rst 38h			;8eee	ff 	. 
	call m,00300h		;8eef	fc 00 03 	. . . 
	ret nz			;8ef2	c0 	. 
	ld d,b			;8ef3	50 	P 
	ld (bc),a			;8ef4	02 	. 
	inc bc			;8ef5	03 	. 
	call m,00250h		;8ef6	fc 50 02 	. P . 
	rst 38h			;8ef9	ff 	. 
	call m,00300h		;8efa	fc 00 03 	. . . 
	ret nz			;8efd	c0 	. 
	ld d,b			;8efe	50 	P 
	ld b,06fh		;8eff	06 6f 	. o 
	call m,00300h		;8f01	fc 00 03 	. . . 
	ret nz			;8f04	c0 	. 
	ld d,b			;8f05	50 	P 
	ld b,0fah		;8f06	06 fa 	. . 
	cp h			;8f08	bc 	. 
	nop			;8f09	00 	. 
	inc bc			;8f0a	03 	. 
	ret nz			;8f0b	c0 	. 
	ld d,b			;8f0c	50 	P 
	ld (bc),a			;8f0d	02 	. 
	ld a,(050ach)		;8f0e	3a ac 50 	: . P 
	ld (bc),a			;8f11	02 	. 
	rst 38h			;8f12	ff 	. 
	call m,00300h		;8f13	fc 00 03 	. . . 
	ret nz			;8f16	c0 	. 
	ld d,b			;8f17	50 	P 
	ld (bc),a			;8f18	02 	. 
	ccf			;8f19	3f 	? 
	cp 0a0h		;8f1a	fe a0 	. . 
	ld hl,(0fcffh)		;8f1c	2a ff fc 	* . . 
	nop			;8f1f	00 	. 
	inc bc			;8f20	03 	. 
	ret nz			;8f21	c0 	. 
	ld d,b			;8f22	50 	P 
	add hl,bc			;8f23	09 	. 
	inc bc			;8f24	03 	. 
	xor d			;8f25	aa 	. 
	cp d			;8f26	ba 	. 
	xor (hl)			;8f27	ae 	. 
	xor (hl)			;8f28	ae 	. 
	cp e			;8f29	bb 	. 
	nop			;8f2a	00 	. 
	xor 0bah		;8f2b	ee ba 	. . 
	cp d			;8f2d	ba 	. 
	xor (hl)			;8f2e	ae 	. 
	xor d			;8f2f	aa 	. 
	ret nz			;8f30	c0 	. 
	ld d,b			;8f31	50 	P 
	add hl,bc			;8f32	09 	. 
	ld bc,0bafah		;8f33	01 fa ba 	. . . 
	ret nz			;8f36	c0 	. 
	nop			;8f37	00 	. 
	inc bc			;8f38	03 	. 
	cp e			;8f39	bb 	. 
	cp e			;8f3a	bb 	. 
	cp h			;8f3b	bc 	. 
	ld c,0bfh		;8f3c	0e bf 	. . 
	ex de,hl			;8f3e	eb 	. 
	ret nz			;8f3f	c0 	. 
	ld d,b			;8f40	50 	P 
	dec b			;8f41	05 	. 
	ld a,(00fach)		;8f42	3a ac 0f 	: . . 
	jp pe,0c0bfh		;8f45	ea bf c0 	. . . 
	ld d,b			;8f48	50 	P 
	add hl,bc			;8f49	09 	. 
	rst 38h			;8f4a	ff 	. 
	jp pe,00fb0h		;8f4b	ea b0 0f 	. . . 
	ld d,e			;8f4e	53 	S 
	ld (bc),a			;8f4f	02 	. 
	ret p			;8f50	f0 	. 
	ld d,b			;8f51	50 	P 
	inc b			;8f52	04 	. 
	rst 38h			;8f53	ff 	. 
	jp pe,00fb0h		;8f54	ea b0 0f 	. . . 
	ei			;8f57	fb 	. 
	rst 28h			;8f58	ef 	. 
	cp a			;8f59	bf 	. 
	ld d,e			;8f5a	53 	S 
	inc bc			;8f5b	03 	. 
	nop			;8f5c	00 	. 
	rst 38h			;8f5d	ff 	. 
	call m,00350h		;8f5e	fc 50 03 	. P . 
	inc bc			;8f61	03 	. 
	rst 38h			;8f62	ff 	. 
	ret nz			;8f63	c0 	. 
	ld d,b			;8f64	50 	P 
	inc bc			;8f65	03 	. 
	inc bc			;8f66	03 	. 
	call m,00950h		;8f67	fc 50 09 	. P . 
	inc bc			;8f6a	03 	. 
	call m,0ff02h		;8f6b	fc 02 ff 	. . . 
	ret m			;8f6e	f8 	. 
	ld d,b			;8f6f	50 	P 
	inc bc			;8f70	03 	. 
	ld a,(0c0fah)		;8f71	3a fa c0 	: . . 
	inc bc			;8f74	03 	. 
	call m,0f002h		;8f75	fc 02 f0 	. . . 
	ret m			;8f78	f8 	. 
	inc bc			;8f79	03 	. 
	cp (hl)			;8f7a	be 	. 
	ret nz			;8f7b	c0 	. 
	ccf			;8f7c	3f 	? 
	rst 38h			;8f7d	ff 	. 
	ret nz			;8f7e	c0 	. 
	inc bc			;8f7f	03 	. 
	call m,0c002h		;8f80	fc 02 c0 	. . . 
	jr c,$+5		;8f83	38 03 	8 . 
	rst 38h			;8f85	ff 	. 
	ret nz			;8f86	c0 	. 
	ccf			;8f87	3f 	? 
	rst 38h			;8f88	ff 	. 
	ret nz			;8f89	c0 	. 
	inc bc			;8f8a	03 	. 
	call m,0c003h		;8f8b	fc 03 c0 	. . . 
	inc a			;8f8e	3c 	< 
	inc bc			;8f8f	03 	. 
	rst 38h			;8f90	ff 	. 
	ret nz			;8f91	c0 	. 
	nop			;8f92	00 	. 
	xor 0c0h		;8f93	ee c0 	. . 
	inc bc			;8f95	03 	. 
	call m,0c003h		;8f96	fc 03 c0 	. . . 
	inc a			;8f99	3c 	< 
	inc bc			;8f9a	03 	. 
	ld d,e			;8f9b	53 	S 
	ld (bc),a			;8f9c	02 	. 
	nop			;8f9d	00 	. 
	rst 38h			;8f9e	ff 	. 
	ret nz			;8f9f	c0 	. 
	inc bc			;8fa0	03 	. 
	call m,00250h		;8fa1	fc 50 02 	. P . 
	inc a			;8fa4	3c 	< 
	inc bc			;8fa5	03 	. 
	ld d,e			;8fa6	53 	S 
	ld (bc),a			;8fa7	02 	. 
	nop			;8fa8	00 	. 
	rst 38h			;8fa9	ff 	. 
	ret nz			;8faa	c0 	. 
	inc bc			;8fab	03 	. 
	call m,00250h		;8fac	fc 50 02 	. P . 
	inc a			;8faf	3c 	< 
	ld d,b			;8fb0	50 	P 
	inc b			;8fb1	04 	. 
	rst 38h			;8fb2	ff 	. 
	ret nz			;8fb3	c0 	. 
	inc bc			;8fb4	03 	. 
	ld d,e			;8fb5	53 	S 
	add hl,bc			;8fb6	09 	. 
	ret nz			;8fb7	c0 	. 
	inc bc			;8fb8	03 	. 
	ret nz			;8fb9	c0 	. 
	ld d,b			;8fba	50 	P 
	inc bc			;8fbb	03 	. 
	inc bc			;8fbc	03 	. 
	ex de,hl			;8fbd	eb 	. 
	ret nz			;8fbe	c0 	. 
	ld d,b			;8fbf	50 	P 
	inc bc			;8fc0	03 	. 
	inc bc			;8fc1	03 	. 
	cp d			;8fc2	ba 	. 
	jp pe,000c0h		;8fc3	ea c0 00 	. . . 
	inc bc			;8fc6	03 	. 
	xor e			;8fc7	ab 	. 
	xor (hl)			;8fc8	ae 	. 
	xor h			;8fc9	ac 	. 
	ld d,b			;8fca	50 	P 
	ld (bc),a			;8fcb	02 	. 
	ex de,hl			;8fcc	eb 	. 
	call m,0bf0eh		;8fcd	fc 0e bf 	. . . 
	ld d,e			;8fd0	53 	S 
	ld (bc),a			;8fd1	02 	. 
	ret p			;8fd2	f0 	. 
	ld d,b			;8fd3	50 	P 
	inc b			;8fd4	04 	. 
	rst 28h			;8fd5	ef 	. 
	call m,0f00fh		;8fd6	fc 0f f0 	. . . 
	nop			;8fd9	00 	. 
	inc bc			;8fda	03 	. 
	ret p			;8fdb	f0 	. 
	ld d,b			;8fdc	50 	P 
	inc b			;8fdd	04 	. 
	rst 28h			;8fde	ef 	. 
	call m,0f00fh		;8fdf	fc 0f f0 	. . . 
	nop			;8fe2	00 	. 
	inc bc			;8fe3	03 	. 
	rst 38h			;8fe4	ff 	. 
	xor d			;8fe5	aa 	. 
	cp (hl)			;8fe6	be 	. 
	xor d			;8fe7	aa 	. 
	add a,b			;8fe8	80 	. 
	rst 28h			;8fe9	ef 	. 
	call m,0f00fh		;8fea	fc 0f f0 	. . . 
	dec sp			;8fed	3b 	; 
	inc bc			;8fee	03 	. 
	ld d,e			;8fef	53 	S 
	inc b			;8ff0	04 	. 
	ret nz			;8ff1	c0 	. 
	rst 28h			;8ff2	ef 	. 
	call m,00250h		;8ff3	fc 50 02 	. P . 
	ccf			;8ff6	3f 	? 
	inc bc			;8ff7	03 	. 
	rst 38h			;8ff8	ff 	. 
	ret nz			;8ff9	c0 	. 
	ld d,b			;8ffa	50 	P 
	inc bc			;8ffb	03 	. 
	inc bc			;8ffc	03 	. 
	call m,00250h		;8ffd	fc 50 02 	. P . 
	ld hl,(0f003h)		;9000	2a 03 f0 	* . . 
	ld d,b			;9003	50 	P 
	inc b			;9004	04 	. 
	inc bc			;9005	03 	. 
	cp 052h		;9006	fe 52 	. R 
	ld (bc),a			;9008	02 	. 
	cp a			;9009	bf 	. 
	inc bc			;900a	03 	. 
	ret p			;900b	f0 	. 
	ld d,b			;900c	50 	P 
	inc b			;900d	04 	. 
	inc bc			;900e	03 	. 
	ld d,e			;900f	53 	S 
	inc b			;9010	04 	. 
	inc bc			;9011	03 	. 
	ret p			;9012	f0 	. 
	nop			;9013	00 	. 
	ccf			;9014	3f 	? 
	xor e			;9015	ab 	. 
	ret nz			;9016	c0 	. 
	inc bc			;9017	03 	. 
	rst 38h			;9018	ff 	. 
	rrca			;9019	0f 	. 
	ret p			;901a	f0 	. 
	rst 38h			;901b	ff 	. 
	inc bc			;901c	03 	. 
	rst 38h			;901d	ff 	. 
	ret nz			;901e	c0 	. 
	ccf			;901f	3f 	? 
	rst 38h			;9020	ff 	. 
	ret nz			;9021	c0 	. 
	inc bc			;9022	03 	. 
	call m,0c003h		;9023	fc 03 c0 	. . . 
	ccf			;9026	3f 	? 
	inc bc			;9027	03 	. 
	rst 38h			;9028	ff 	. 
	ret nz			;9029	c0 	. 
	ccf			;902a	3f 	? 
	rst 38h			;902b	ff 	. 
	ret nz			;902c	c0 	. 
	inc bc			;902d	03 	. 
	ret m			;902e	f8 	. 
	ld (bc),a			;902f	02 	. 
	add a,b			;9030	80 	. 
	jr nz,$+5		;9031	20 03 	  . 
	rst 38h			;9033	ff 	. 
	ret nz			;9034	c0 	. 
	ccf			;9035	3f 	? 
	rst 38h			;9036	ff 	. 
	ret nz			;9037	c0 	. 
	inc bc			;9038	03 	. 
	call m,0c003h		;9039	fc 03 c0 	. . . 
	jr nc,$+5		;903c	30 03 	0 . 
	rst 38h			;903e	ff 	. 
	ret nz			;903f	c0 	. 
	nop			;9040	00 	. 
	jp pe,003c0h		;9041	ea c0 03 	. . . 
	call m,0c003h		;9044	fc 03 c0 	. . . 
	jr nc,$+85		;9047	30 53 	0 S 
	ld (bc),a			;9049	02 	. 
	ret nz			;904a	c0 	. 
	nop			;904b	00 	. 
	rst 28h			;904c	ef 	. 
	ret nz			;904d	c0 	. 
	inc bc			;904e	03 	. 
	ret p			;904f	f0 	. 
	ld d,b			;9050	50 	P 
	inc bc			;9051	03 	. 
	ld d,e			;9052	53 	S 
	inc bc			;9053	03 	. 
	ret nz			;9054	c0 	. 
	ld d,e			;9055	53 	S 
	inc bc			;9056	03 	. 
	call m,00750h		;9057	fc 50 07 	. P . 
	ld d,e			;905a	53 	S 
	inc bc			;905b	03 	. 
	call m,0ba0eh		;905c	fc 0e ba 	. . . 
	ex de,hl			;905f	eb 	. 
	ld d,e			;9060	53 	S 
	rlca			;9061	07 	. 
	call m,0ba0eh		;9062	fc 0e ba 	. . . 
	ex de,hl			;9065	eb 	. 
	ret nz			;9066	c0 	. 
	ld d,b			;9067	50 	P 
	inc b			;9068	04 	. 
	rst 28h			;9069	ef 	. 
	rst 38h			;906a	ff 	. 
	call m,0ba0eh		;906b	fc 0e ba 	. . . 
	ex de,hl			;906e	eb 	. 
	ret nz			;906f	c0 	. 
	ccf			;9070	3f 	? 
	rst 38h			;9071	ff 	. 
	cp 0c0h		;9072	fe c0 	. . 
	rst 28h			;9074	ef 	. 
	rst 38h			;9075	ff 	. 
	ret nz			;9076	c0 	. 
	ld d,b			;9077	50 	P 
	inc b			;9078	04 	. 
	ccf			;9079	3f 	? 
	rst 38h			;907a	ff 	. 
	cp 0c0h		;907b	fe c0 	. . 
	rst 28h			;907d	ef 	. 
	rst 38h			;907e	ff 	. 
	ret nz			;907f	c0 	. 
	ld a,(00352h)		;9080	3a 52 03 	: R . 
	cp a			;9083	bf 	. 
	rst 38h			;9084	ff 	. 
	cp 0c0h		;9085	fe c0 	. . 
	rst 28h			;9087	ef 	. 
	rst 38h			;9088	ff 	. 
	jp 00653h		;9089	c3 53 06 	. S . 
	cp 0c0h		;908c	fe c0 	. . 
	rst 28h			;908e	ef 	. 
	ld d,e			;908f	53 	S 
	ex af,af'			;9090	08 	. 
	cp 0c0h		;9091	fe c0 	. . 
	rst 28h			;9093	ef 	. 
	rst 38h			;9094	ff 	. 
	ld d,b			;9095	50 	P 
	nop			;9096	00 	. 
	adc a,d			;9097	8a 	. 
	rla			;9098	17 	. 
	dec de			;9099	1b 	. 
	rra			;909a	1f 	. 
	inc hl			;909b	23 	# 
	daa			;909c	27 	' 
	ld (bc),a			;909d	02 	. 
	jr $+4		;909e	18 02 	. . 
	jr $+4		;90a0	18 02 	. . 
	rst 38h			;90a2	ff 	. 
	jr $+5		;90a3	18 03 	. . 
	inc hl			;90a5	23 	# 
	dec h			;90a6	25 	% 
	daa			;90a7	27 	' 
	add hl,hl			;90a8	29 	) 
	rst 38h			;90a9	ff 	. 
	rlca			;90aa	07 	. 
	inc bc			;90ab	03 	. 
	inc d			;90ac	14 	. 
	inc bc			;90ad	03 	. 
	dec b			;90ae	05 	. 
	rlca			;90af	07 	. 
	inc d			;90b0	14 	. 
	add hl,de			;90b1	19 	. 
	add hl,de			;90b2	19 	. 
	inc hl			;90b3	23 	# 
	dec h			;90b4	25 	% 
	daa			;90b5	27 	' 
	add hl,hl			;90b6	29 	) 
	add hl,de			;90b7	19 	. 
	add hl,de			;90b8	19 	. 
	rst 38h			;90b9	ff 	. 
	inc d			;90ba	14 	. 
	inc bc			;90bb	03 	. 
	inc hl			;90bc	23 	# 
	dec h			;90bd	25 	% 
	daa			;90be	27 	' 
	add hl,hl			;90bf	29 	) 
	rst 38h			;90c0	ff 	. 
	dec b			;90c1	05 	. 
	ex af,af'			;90c2	08 	. 
	inc hl			;90c3	23 	# 
	dec h			;90c4	25 	% 
	daa			;90c5	27 	' 
	add hl,hl			;90c6	29 	) 
	ld bc,00704h		;90c7	01 04 07 	. . . 
	ld a,(bc)			;90ca	0a 	. 
	dec c			;90cb	0d 	. 
	djnz $+21		;90cc	10 13 	. . 
	ld d,019h		;90ce	16 19 	. . 
	inc e			;90d0	1c 	. 
	rra			;90d1	1f 	. 
	ld (02825h),hl		;90d2	22 25 28 	" % ( 
	inc d			;90d5	14 	. 
	ld d,020h		;90d6	16 20 	.   
	jr nz,$+7		;90d8	20 05 	  . 
	add hl,bc			;90da	09 	. 
	dec c			;90db	0d 	. 
	ld de,00a0ah		;90dc	11 0a 0a 	. . . 
	ld h,028h		;90df	26 28 	& ( 
	ld a,(bc)			;90e1	0a 	. 
	add hl,bc			;90e2	09 	. 
	dec bc			;90e3	0b 	. 
	ld e,001h		;90e4	1e 01 	. . 
	inc b			;90e6	04 	. 
	rlca			;90e7	07 	. 
	ld a,(bc)			;90e8	0a 	. 
	dec c			;90e9	0d 	. 
	djnz $+21		;90ea	10 13 	. . 
	ld d,019h		;90ec	16 19 	. . 
	inc e			;90ee	1c 	. 
	rra			;90ef	1f 	. 
	ld (02825h),hl		;90f0	22 25 28 	" % ( 
	ld bc,00704h		;90f3	01 04 07 	. . . 
	ld a,(bc)			;90f6	0a 	. 
	dec c			;90f7	0d 	. 
	djnz $+21		;90f8	10 13 	. . 
	ld d,019h		;90fa	16 19 	. . 
	inc e			;90fc	1c 	. 
	rra			;90fd	1f 	. 
	ld (02825h),hl		;90fe	22 25 28 	" % ( 
	dec b			;9101	05 	. 
	add hl,bc			;9102	09 	. 
	dec c			;9103	0d 	. 
	ld de,01f1bh		;9104	11 1b 1f 	. . . 
	inc hl			;9107	23 	# 
	daa			;9108	27 	' 
	inc b			;9109	04 	. 
	ld a,(bc)			;910a	0a 	. 
	inc b			;910b	04 	. 
	ld a,(bc)			;910c	0a 	. 
	ld h,028h		;910d	26 28 	& ( 
	inc b			;910f	04 	. 
	ld a,(bc)			;9110	0a 	. 
	ld (bc),a			;9111	02 	. 
	inc b			;9112	04 	. 
	ld b,008h		;9113	06 08 	. . 
	ld a,(bc)			;9115	0a 	. 
	inc c			;9116	0c 	. 
	ld c,004h		;9117	0e 04 	. . 
	ld b,008h		;9119	06 08 	. . 
	ld a,(bc)			;911b	0a 	. 
	ld bc,028ffh		;911c	01 ff 28 	. . ( 
	dec b			;911f	05 	. 
	ld d,h			;9120	54 	T 
	ld e,b			;9121	58 	X 
	ld e,d			;9122	5a 	Z 
	ld e,h			;9123	5c 	\ 
	ld h,b			;9124	60 	` 
	ld h,b			;9125	60 	` 
	ld h,h			;9126	64 	d 
	ld l,b			;9127	68 	h 
	rst 38h			;9128	ff 	. 
	ld l,(hl)			;9129	6e 	n 
	inc b			;912a	04 	. 
	ld a,(hl)			;912b	7e 	~ 
	add a,h			;912c	84 	. 
	adc a,d			;912d	8a 	. 
	cp b			;912e	b8 	. 
	rst 38h			;912f	ff 	. 
	cp d			;9130	ba 	. 
	inc bc			;9131	03 	. 
	cp (hl)			;9132	be 	. 
	call nz,0ffcah		;9133	c4 ca ff 	. . . 
	adc a,004h		;9136	ce 04 	. . 
	call nc,0e2dah		;9138	d4 da e2 	. . . 
	and 0eah		;913b	e6 ea 	. . 
	rst 38h			;913d	ff 	. 
	jp p,0fc04h		;913e	f2 04 fc 	. . . 
	nop			;9141	00 	. 
	inc b			;9142	04 	. 
	ex af,af'			;9143	08 	. 
	inc c			;9144	0c 	. 
	djnz $+22		;9145	10 14 	. . 
	jr $+50		;9147	18 30 	. 0 
	inc (hl)			;9149	34 	4 
	jr c,$+62		;914a	38 3c 	8 < 
	rst 38h			;914c	ff 	. 
	ld (hl),b			;914d	70 	p 
	ld c,07ah		;914e	0e 7a 	. z 
	ld a,d			;9150	7a 	z 
	or d			;9151	b2 	. 
	or (hl)			;9152	b6 	. 
	rst 38h			;9153	ff 	. 
	ret z			;9154	c8 	. 
	inc b			;9155	04 	. 
	ld (bc),a			;9156	02 	. 
	ld b,008h		;9157	06 08 	. . 
	ex af,af'			;9159	08 	. 
	ld a,(bc)			;915a	0a 	. 
	ld a,(de)			;915b	1a 	. 
	ld a,(de)			;915c	1a 	. 
	ld e,0ffh		;915d	1e ff 	. . 
	ld h,b			;915f	60 	` 
	ld c,0ffh		;9160	0e ff 	. . 
	or b			;9162	b0 	. 
	ld c,0ffh		;9163	0e ff 	. . 
	ex af,af'			;9165	08 	. 
	ex af,af'			;9166	08 	. 
	ld b,d			;9167	42 	B 
	ld b,d			;9168	42 	B 
	ld b,(hl)			;9169	46 	F 
	ld b,(hl)			;916a	46 	F 
	ld c,b			;916b	48 	H 
	ld c,b			;916c	48 	H 
	ld c,d			;916d	4a 	J 
	ld c,d			;916e	4a 	J 
	rst 38h			;916f	ff 	. 
	ld e,h			;9170	5c 	\ 
	rlca			;9171	07 	. 
	ld a,b			;9172	78 	x 
	ld a,h			;9173	7c 	| 
	add a,b			;9174	80 	. 
	add a,h			;9175	84 	. 
	sub (hl)			;9176	96 	. 
	rst 38h			;9177	ff 	. 
	ld d,b			;9178	50 	P 
	dec b			;9179	05 	. 
	rst 38h			;917a	ff 	. 
	inc c			;917b	0c 	. 
	rrca			;917c	0f 	. 
	add a,b			;917d	80 	. 
	rst 38h			;917e	ff 	. 
	inc c			;917f	0c 	. 
	inc bc			;9180	03 	. 
	add a,b			;9181	80 	. 
	ld e,b			;9182	58 	X 
	ld e,b			;9183	58 	X 
	rst 38h			;9184	ff 	. 
	ld a,b			;9185	78 	x 
	inc b			;9186	04 	. 
	adc a,b			;9187	88 	. 
	adc a,b			;9188	88 	. 
	rst 38h			;9189	ff 	. 
	inc c			;918a	0c 	. 
	inc bc			;918b	03 	. 
	rst 38h			;918c	ff 	. 
	ld d,b			;918d	50 	P 
	inc b			;918e	04 	. 
	inc c			;918f	0c 	. 
	rst 38h			;9190	ff 	. 
	dec c			;9191	0d 	. 
	rlca			;9192	07 	. 
	rst 38h			;9193	ff 	. 
	ld e,c			;9194	59 	Y 
	inc b			;9195	04 	. 
	rst 38h			;9196	ff 	. 
	dec c			;9197	0d 	. 
	ld c,079h		;9198	0e 79 	. y 
	ld a,c			;919a	79 	y 
	ld c,l			;919b	4d 	M 
	ld c,l			;919c	4d 	M 
	rst 38h			;919d	ff 	. 
	dec c			;919e	0d 	. 
	inc b			;919f	04 	. 
	rst 38h			;91a0	ff 	. 
	ld d,d			;91a1	52 	R 
	dec b			;91a2	05 	. 
	ld a,d			;91a3	7a 	z 
	ld a,d			;91a4	7a 	z 
	ld e,d			;91a5	5a 	Z 
	rst 38h			;91a6	ff 	. 
	ld c,01ch		;91a7	0e 1c 	. . 
	rst 38h			;91a9	ff 	. 
	rrca			;91aa	0f 	. 
	ex af,af'			;91ab	08 	. 
	rst 38h			;91ac	ff 	. 
	ld c,a			;91ad	4f 	O 
	inc b			;91ae	04 	. 
	ld d,e			;91af	53 	S 
	ld d,e			;91b0	53 	S 
	ld c,a			;91b1	4f 	O 
	ld c,a			;91b2	4f 	O 
	rst 38h			;91b3	ff 	. 
	ld a,e			;91b4	7b 	{ 
	rlca			;91b5	07 	. 
	rst 38h			;91b6	ff 	. 
	adc a,e			;91b7	8b 	. 
	inc b			;91b8	04 	. 
	ld e,a			;91b9	5f 	_ 
	rst 38h			;91ba	ff 	. 
	ex af,af'			;91bb	08 	. 
	dec b			;91bc	05 	. 
	rst 38h			;91bd	ff 	. 
	djnz $+17		;91be	10 0f 	. . 
	ld c,e			;91c0	4b 	K 
	rst 38h			;91c1	ff 	. 
	djnz $+5		;91c2	10 03 	. . 
	ld c,e			;91c4	4b 	K 
	ld d,(hl)			;91c5	56 	V 
	ld d,(hl)			;91c6	56 	V 
	rst 38h			;91c7	ff 	. 
	ld hl,(01d04h)		;91c8	2a 04 1d 	* . . 
	dec e			;91cb	1d 	. 
	rst 38h			;91cc	ff 	. 
	dec d			;91cd	15 	. 
	inc bc			;91ce	03 	. 
	rst 38h			;91cf	ff 	. 
	ex af,af'			;91d0	08 	. 
	inc b			;91d1	04 	. 
	rst 38h			;91d2	ff 	. 
	djnz $+10		;91d3	10 08 	. . 
	rst 38h			;91d5	ff 	. 
	ld d,(hl)			;91d6	56 	V 
	inc b			;91d7	04 	. 
	rst 38h			;91d8	ff 	. 
	djnz $+16		;91d9	10 0e 	. . 
	ld hl,(0042ah)		;91db	2a 2a 04 	* * . 
	inc b			;91de	04 	. 
	rst 38h			;91df	ff 	. 
	dec d			;91e0	15 	. 
	inc b			;91e1	04 	. 
	rst 38h			;91e2	ff 	. 
	ex af,af'			;91e3	08 	. 
	dec b			;91e4	05 	. 
	ld hl,(0562ah)		;91e5	2a 2a 56 	* * V 
	rst 38h			;91e8	ff 	. 
	djnz $+30		;91e9	10 1c 	. . 
	rst 38h			;91eb	ff 	. 
	dec d			;91ec	15 	. 
	ex af,af'			;91ed	08 	. 
	rst 38h			;91ee	ff 	. 
	inc b			;91ef	04 	. 
	inc b			;91f0	04 	. 
	ex af,af'			;91f1	08 	. 
	ex af,af'			;91f2	08 	. 
	inc b			;91f3	04 	. 
	inc b			;91f4	04 	. 
	rst 38h			;91f5	ff 	. 
	ld hl,(0ff07h)		;91f6	2a 07 ff 	* . . 
	rla			;91f9	17 	. 
	inc b			;91fa	04 	. 
	ccf			;91fb	3f 	? 
	rst 38h			;91fc	ff 	. 
	nop			;91fd	00 	. 
	ld c,001h		;91fe	0e 01 	. . 
	rst 38h			;9200	ff 	. 
	nop			;9201	00 	. 
	ld b,0ffh		;9202	06 ff 	. . 
	ld (bc),a			;9204	02 	. 
	inc bc			;9205	03 	. 
	rst 38h			;9206	ff 	. 
	inc bc			;9207	03 	. 
	dec h			;9208	25 	% 
	rst 38h			;9209	ff 	. 
	inc b			;920a	04 	. 
	inc bc			;920b	03 	. 
	rst 38h			;920c	ff 	. 
	dec b			;920d	05 	. 
	ld c,006h		;920e	0e 06 	. . 
	ld b,0ffh		;9210	06 ff 	. . 
	rlca			;9212	07 	. 
	inc bc			;9213	03 	. 
	rst 38h			;9214	ff 	. 
	ex af,af'			;9215	08 	. 
	inc bc			;9216	03 	. 
	add hl,bc			;9217	09 	. 
	add hl,bc			;9218	09 	. 
	rst 38h			;9219	ff 	. 
	ld a,(bc)			;921a	0a 	. 
	ld (de),a			;921b	12 	. 
	rst 38h			;921c	ff 	. 
	dec bc			;921d	0b 	. 
	inc b			;921e	04 	. 
	rst 38h			;921f	ff 	. 
	inc c			;9220	0c 	. 
	dec b			;9221	05 	. 
	rst 38h			;9222	ff 	. 
	add hl,bc			;9223	09 	. 
	inc b			;9224	04 	. 
	rst 38h			;9225	ff 	. 
	inc c			;9226	0c 	. 
	dec b			;9227	05 	. 
	dec bc			;9228	0b 	. 
	dec bc			;9229	0b 	. 
	dec c			;922a	0d 	. 
	dec c			;922b	0d 	. 
	ld c,0ffh		;922c	0e ff 	. . 
	rrca			;922e	0f 	. 
	inc b			;922f	04 	. 
	rst 38h			;9230	ff 	. 
	djnz $+6		;9231	10 04 	. . 
	rst 38h			;9233	ff 	. 
	rrca			;9234	0f 	. 
	dec b			;9235	05 	. 
	rst 38h			;9236	ff 	. 
	ld de,0ff04h		;9237	11 04 ff 	. . . 
	ld (de),a			;923a	12 	. 
	ld e,0ffh		;923b	1e ff 	. . 
	inc de			;923d	13 	. 
	inc bc			;923e	03 	. 
	inc d			;923f	14 	. 
	rst 38h			;9240	ff 	. 
	dec d			;9241	15 	. 
	inc c			;9242	0c 	. 
	rst 38h			;9243	ff 	. 
	ld d,01ah		;9244	16 1a 	. . 
	rst 38h			;9246	ff 	. 
	rla			;9247	17 	. 
	inc b			;9248	04 	. 
	rst 38h			;9249	ff 	. 
	jr $+10		;924a	18 08 	. . 
	rst 38h			;924c	ff 	. 
	add hl,de			;924d	19 	. 
	inc b			;924e	04 	. 
	rst 38h			;924f	ff 	. 
	ld a,(de)			;9250	1a 	. 
	ex af,af'			;9251	08 	. 
	rst 38h			;9252	ff 	. 
	dec de			;9253	1b 	. 
	ld (01cffh),hl		;9254	22 ff 1c 	" . . 
	ex af,af'			;9257	08 	. 
	rst 38h			;9258	ff 	. 
	dec de			;9259	1b 	. 
	dec e			;925a	1d 	. 
	rst 38h			;925b	ff 	. 
	dec e			;925c	1d 	. 
	inc b			;925d	04 	. 
	rst 38h			;925e	ff 	. 
	dec de			;925f	1b 	. 
	rrca			;9260	0f 	. 
	rst 38h			;9261	ff 	. 
	ld e,003h		;9262	1e 03 	. . 
	rst 38h			;9264	ff 	. 
	rra			;9265	1f 	. 
	inc bc			;9266	03 	. 
	rst 38h			;9267	ff 	. 
	dec de			;9268	1b 	. 
	inc bc			;9269	03 	. 
	rst 38h			;926a	ff 	. 
	jr nz,$+5		;926b	20 03 	  . 
	rst 38h			;926d	ff 	. 
	ld hl,02203h		;926e	21 03 22 	! . " 
	ld (0ff23h),hl		;9271	22 23 ff 	" # . 
	inc h			;9274	24 	$ 
	add hl,de			;9275	19 	. 
	rst 38h			;9276	ff 	. 
	dec e			;9277	1d 	. 
	inc bc			;9278	03 	. 
	rst 38h			;9279	ff 	. 
	dec de			;927a	1b 	. 
	dec b			;927b	05 	. 
	rst 38h			;927c	ff 	. 
	dec h			;927d	25 	% 
	add hl,bc			;927e	09 	. 
	rst 38h			;927f	ff 	. 
	dec de			;9280	1b 	. 
	ld d,0ffh		;9281	16 ff 	. . 
	ld h,009h		;9283	26 09 	& . 
	dec de			;9285	1b 	. 
	dec de			;9286	1b 	. 
	rst 38h			;9287	ff 	. 
	daa			;9288	27 	' 
	add hl,bc			;9289	09 	. 
	rst 38h			;928a	ff 	. 
	jr z,$+5		;928b	28 03 	( . 
	rst 38h			;928d	ff 	. 
	ld h,003h		;928e	26 03 	& . 
	rst 38h			;9290	ff 	. 
	add hl,hl			;9291	29 	) 
	rlca			;9292	07 	. 
	rst 38h			;9293	ff 	. 
	ld hl,(02b03h)		;9294	2a 03 2b 	* . + 
	rst 38h			;9297	ff 	. 
	inc l			;9298	2c 	, 
	ld b,0ffh		;9299	06 ff 	. . 
	dec l			;929b	2d 	- 
	rla			;929c	17 	. 
	ld d,e			;929d	53 	S 
	ld (bc),a			;929e	02 	. 
	call pe,0530eh		;929f	ec 0e 53 	. . S 
	add hl,bc			;92a2	09 	. 
	xor 0aeh		;92a3	ee ae 	. . 
	ld d,e			;92a5	53 	S 
	add hl,bc			;92a6	09 	. 
	call pe,0ff0eh		;92a7	ec 0e ff 	. . . 
	jp m,050b0h		;92aa	fa b0 50 	. . P 
	inc bc			;92ad	03 	. 
	inc bc			;92ae	03 	. 
	ld d,e			;92af	53 	S 
	ld (bc),a			;92b0	02 	. 
	call pe,0ff0eh		;92b1	ec 0e ff 	. . . 
	jp m,000b0h		;92b4	fa b0 00 	. . . 
	ld a,(003ebh)		;92b7	3a eb 03 	: . . 
	ret p			;92ba	f0 	. 
	ld d,b			;92bb	50 	P 
	add hl,bc			;92bc	09 	. 
	inc bc			;92bd	03 	. 
	ret p			;92be	f0 	. 
	ld d,b			;92bf	50 	P 
	inc b			;92c0	04 	. 
	rrca			;92c1	0f 	. 
	ret p			;92c2	f0 	. 
	nop			;92c3	00 	. 
	ld a,(003abh)		;92c4	3a ab 03 	: . . 
	ld d,e			;92c7	53 	S 
	ld b,0f0h		;92c8	06 f0 	. . 
	nop			;92ca	00 	. 
	ld a,(003abh)		;92cb	3a ab 03 	: . . 
	ld d,e			;92ce	53 	S 
	inc bc			;92cf	03 	. 
	ret p			;92d0	f0 	. 
	ld d,b			;92d1	50 	P 
	inc b			;92d2	04 	. 
	ccf			;92d3	3f 	? 
	rst 38h			;92d4	ff 	. 
	inc bc			;92d5	03 	. 
	ld d,e			;92d6	53 	S 
	inc bc			;92d7	03 	. 
	ret p			;92d8	f0 	. 
	ccf			;92d9	3f 	? 
	ld d,e			;92da	53 	S 
	dec b			;92db	05 	. 
	inc bc			;92dc	03 	. 
	ld d,e			;92dd	53 	S 
	inc bc			;92de	03 	. 
	ret p			;92df	f0 	. 
	ccf			;92e0	3f 	? 
	rst 38h			;92e1	ff 	. 
	ret nz			;92e2	c0 	. 
	ld d,b			;92e3	50 	P 
	ld (bc),a			;92e4	02 	. 
	inc bc			;92e5	03 	. 
	inc bc			;92e6	03 	. 
	ret p			;92e7	f0 	. 
	ld d,b			;92e8	50 	P 
	inc bc			;92e9	03 	. 
	inc bc			;92ea	03 	. 
	rst 38h			;92eb	ff 	. 
	ret nz			;92ec	c0 	. 
	ld d,b			;92ed	50 	P 
	ld (bc),a			;92ee	02 	. 
	inc bc			;92ef	03 	. 
	inc bc			;92f0	03 	. 
	cp e			;92f1	bb 	. 
	inc bc			;92f2	03 	. 
	ld d,d			;92f3	52 	R 
	ld (bc),a			;92f4	02 	. 
	xor e			;92f5	ab 	. 
	rst 38h			;92f6	ff 	. 
	ret nz			;92f7	c0 	. 
	ld d,b			;92f8	50 	P 
	ld (bc),a			;92f9	02 	. 
	inc bc			;92fa	03 	. 
	inc bc			;92fb	03 	. 
	or b			;92fc	b0 	. 
	ld d,b			;92fd	50 	P 
	inc bc			;92fe	03 	. 
	ld b,0bfh		;92ff	06 bf 	. . 
	ret nz			;9301	c0 	. 
	ld d,b			;9302	50 	P 
	ld (bc),a			;9303	02 	. 
	inc bc			;9304	03 	. 
	inc bc			;9305	03 	. 
	xor e			;9306	ab 	. 
	inc bc			;9307	03 	. 
	ld d,d			;9308	52 	R 
	inc bc			;9309	03 	. 
	cp a			;930a	bf 	. 
	ret nz			;930b	c0 	. 
	nop			;930c	00 	. 
	inc bc			;930d	03 	. 
	rst 38h			;930e	ff 	. 
	inc bc			;930f	03 	. 
	or b			;9310	b0 	. 
	ld d,b			;9311	50 	P 
	inc bc			;9312	03 	. 
	ld b,0bfh		;9313	06 bf 	. . 
	ret nz			;9315	c0 	. 
	nop			;9316	00 	. 
	inc bc			;9317	03 	. 
	rst 38h			;9318	ff 	. 
	inc bc			;9319	03 	. 
	or b			;931a	b0 	. 
	ld d,b			;931b	50 	P 
	inc bc			;931c	03 	. 
	ld b,0bfh		;931d	06 bf 	. . 
	ret nz			;931f	c0 	. 
	nop			;9320	00 	. 
	inc bc			;9321	03 	. 
	call m,0bf03h		;9322	fc 03 bf 	. . . 
	ld d,e			;9325	53 	S 
	ld (bc),a			;9326	02 	. 
	ret p			;9327	f0 	. 
	ld a,0bfh		;9328	3e bf 	> . 
	ret nz			;932a	c0 	. 
	nop			;932b	00 	. 
	inc bc			;932c	03 	. 
	call m,0bf03h		;932d	fc 03 bf 	. . . 
	inc bc			;9330	03 	. 
	ld d,e			;9331	53 	S 
	ld (bc),a			;9332	02 	. 
	cp 0bfh		;9333	fe bf 	. . 
	ret nz			;9335	c0 	. 
	nop			;9336	00 	. 
	inc bc			;9337	03 	. 
	xor h			;9338	ac 	. 
	inc bc			;9339	03 	. 
	or b			;933a	b0 	. 
	ld d,b			;933b	50 	P 
	inc bc			;933c	03 	. 
	inc bc			;933d	03 	. 
	cp a			;933e	bf 	. 
	ret nz			;933f	c0 	. 
	nop			;9340	00 	. 
	inc bc			;9341	03 	. 
	call m,0b003h		;9342	fc 03 b0 	. . . 
	rrca			;9345	0f 	. 
	rst 38h			;9346	ff 	. 
	call m,0bf03h		;9347	fc 03 bf 	. . . 
	ret nz			;934a	c0 	. 
	nop			;934b	00 	. 
	inc bc			;934c	03 	. 
	xor h			;934d	ac 	. 
	inc bc			;934e	03 	. 
	or b			;934f	b0 	. 
	ld c,080h		;9350	0e 80 	. . 
	xor h			;9352	ac 	. 
	inc bc			;9353	03 	. 
	cp a			;9354	bf 	. 
	ret nz			;9355	c0 	. 
	nop			;9356	00 	. 
	inc bc			;9357	03 	. 
	call m,0b003h		;9358	fc 03 b0 	. . . 
	ld c,080h		;935b	0e 80 	. . 
	xor h			;935d	ac 	. 
	inc bc			;935e	03 	. 
	cp a			;935f	bf 	. 
	ret nz			;9360	c0 	. 
	ld d,b			;9361	50 	P 
	inc bc			;9362	03 	. 
	inc bc			;9363	03 	. 
	or b			;9364	b0 	. 
	ld c,080h		;9365	0e 80 	. . 
	xor h			;9367	ac 	. 
	inc bc			;9368	03 	. 
	cp a			;9369	bf 	. 
	ret nz			;936a	c0 	. 
	ld d,b			;936b	50 	P 
	ld (bc),a			;936c	02 	. 
	call m,0b003h		;936d	fc 03 b0 	. . . 
	ld d,b			;9370	50 	P 
	inc bc			;9371	03 	. 
	inc bc			;9372	03 	. 
	cp a			;9373	bf 	. 
	ret nz			;9374	c0 	. 
	ld d,b			;9375	50 	P 
	ld (bc),a			;9376	02 	. 
	ret m			;9377	f8 	. 
	ld (bc),a			;9378	02 	. 
	or b			;9379	b0 	. 
	ld a,0ffh		;937a	3e ff 	> . 
	ex de,hl			;937c	eb 	. 
	rst 38h			;937d	ff 	. 
	cp (hl)			;937e	be 	. 
	ei			;937f	fb 	. 
	ret nz			;9380	c0 	. 
	rst 38h			;9381	ff 	. 
	call m,0b003h		;9382	fc 03 b0 	. . . 
	ld a,(0fefbh)		;9385	3a fb fe 	: . . 
	jp m,00252h		;9388	fa 52 02 	. R . 
	ret nz			;938b	c0 	. 
	ld d,b			;938c	50 	P 
	ld (bc),a			;938d	02 	. 
	inc bc			;938e	03 	. 
	or b			;938f	b0 	. 
	ld a,(0aafah)		;9390	3a fa aa 	: . . 
	jp m,00252h		;9393	fa 52 02 	. R . 
	ret nz			;9396	c0 	. 
	ld d,e			;9397	53 	S 
	inc bc			;9398	03 	. 
	or b			;9399	b0 	. 
	ld d,b			;939a	50 	P 
	add hl,bc			;939b	09 	. 
	ld c,0b0h		;939c	0e b0 	. . 
	ld d,b			;939e	50 	P 
	inc bc			;939f	03 	. 
	ld c,0beh		;93a0	0e be 	. . 
	or b			;93a2	b0 	. 
	ld d,b			;93a3	50 	P 
	inc bc			;93a4	03 	. 
	ld c,0b0h		;93a5	0e b0 	. . 
	dec hl			;93a7	2b 	+ 
	ld d,e			;93a8	53 	S 
	ld (bc),a			;93a9	02 	. 
	xor a			;93aa	af 	. 
	rst 38h			;93ab	ff 	. 
	xor a			;93ac	af 	. 
	rst 38h			;93ad	ff 	. 
	xor a			;93ae	af 	. 
	rst 38h			;93af	ff 	. 
	xor a			;93b0	af 	. 
	or b			;93b1	b0 	. 
	ld d,b			;93b2	50 	P 
	rlca			;93b3	07 	. 
	inc bc			;93b4	03 	. 
	or b			;93b5	b0 	. 
	ld c,0bfh		;93b6	0e bf 	. . 
	ld d,e			;93b8	53 	S 
	ex af,af'			;93b9	08 	. 
	or b			;93ba	b0 	. 
	ld c,0b0h		;93bb	0e b0 	. . 
	ccf			;93bd	3f 	? 
	ld d,e			;93be	53 	S 
	rlca			;93bf	07 	. 
	or b			;93c0	b0 	. 
	ld c,0b0h		;93c1	0e b0 	. . 
	inc a			;93c3	3c 	< 
	ld d,b			;93c4	50 	P 
	ld b,003h		;93c5	06 03 	. . 
	or b			;93c7	b0 	. 
	ld c,0b0h		;93c8	0e b0 	. . 
	inc a			;93ca	3c 	< 
	ld d,b			;93cb	50 	P 
	ex af,af'			;93cc	08 	. 
	ld c,0b0h		;93cd	0e b0 	. . 
	inc a			;93cf	3c 	< 
	ld d,b			;93d0	50 	P 
	ex af,af'			;93d1	08 	. 
	ccf			;93d2	3f 	? 
	or b			;93d3	b0 	. 
	inc a			;93d4	3c 	< 
	ld d,b			;93d5	50 	P 
	ex af,af'			;93d6	08 	. 
	rra			;93d7	1f 	. 
	ret po			;93d8	e0 	. 
	ld d,b			;93d9	50 	P 
	rlca			;93da	07 	. 
	ld hl,(00b00h)		;93db	2a 00 0b 	* . . 
	ret po			;93de	e0 	. 
	ld d,b			;93df	50 	P 
	ld (bc),a			;93e0	02 	. 
	ld a,(bc)			;93e1	0a 	. 
	add a,b			;93e2	80 	. 
	ld d,b			;93e3	50 	P 
	dec b			;93e4	05 	. 
	dec bc			;93e5	0b 	. 
	ret po			;93e6	e0 	. 
	ld d,b			;93e7	50 	P 
	ld b,02ah		;93e8	06 2a 	. * 
	ld d,b			;93ea	50 	P 
	ld (bc),a			;93eb	02 	. 
	dec bc			;93ec	0b 	. 
	ret po			;93ed	e0 	. 
	ld d,b			;93ee	50 	P 
	ld (bc),a			;93ef	02 	. 
	ld a,(bc)			;93f0	0a 	. 
	ld d,d			;93f1	52 	R 
	ld b,0abh		;93f2	06 ab 	. . 
	ret po			;93f4	e0 	. 
	ld d,b			;93f5	50 	P 
	ld (bc),a			;93f6	02 	. 
	dec bc			;93f7	0b 	. 
	add a,b			;93f8	80 	. 
	ld d,e			;93f9	53 	S 
	ld (bc),a			;93fa	02 	. 
	cp 0c0h		;93fb	fe c0 	. . 
	rst 28h			;93fd	ef 	. 
	rst 38h			;93fe	ff 	. 
	ret po			;93ff	e0 	. 
	ld d,b			;9400	50 	P 
	inc b			;9401	04 	. 
	ld d,e			;9402	53 	S 
	ld (bc),a			;9403	02 	. 
	cp 0c0h		;9404	fe c0 	. . 
	rst 28h			;9406	ef 	. 
	rst 38h			;9407	ff 	. 
	ret p			;9408	f0 	. 
	ld d,b			;9409	50 	P 
	ld (bc),a			;940a	02 	. 
	rrca			;940b	0f 	. 
	ld d,e			;940c	53 	S 
	inc bc			;940d	03 	. 
	cp 0c0h		;940e	fe c0 	. . 
	rst 28h			;9410	ef 	. 
	ld d,e			;9411	53 	S 
	inc b			;9412	04 	. 
	rrca			;9413	0f 	. 
	ld d,e			;9414	53 	S 
	inc bc			;9415	03 	. 
	cp 0c0h		;9416	fe c0 	. . 
	rst 28h			;9418	ef 	. 
	ld d,e			;9419	53 	S 
	ex af,af'			;941a	08 	. 
	cp 0c0h		;941b	fe c0 	. . 
	rst 28h			;941d	ef 	. 
	rst 38h			;941e	ff 	. 
	ld d,b			;941f	50 	P 
	nop			;9420	00 	. 
	ld h,c			;9421	61 	a 
	rst 38h			;9422	ff 	. 
	rra			;9423	1f 	. 
	inc b			;9424	04 	. 
	dec de			;9425	1b 	. 
	ld (00905h),hl		;9426	22 05 09 	" . . 
	dec c			;9429	0d 	. 
	dec de			;942a	1b 	. 
	ld (0221bh),hl		;942b	22 1b 22 	" . " 
	dec de			;942e	1b 	. 
	ld (0221bh),hl		;942f	22 1b 22 	" . " 
	dec e			;9432	1d 	. 
	inc b			;9433	04 	. 
	ex af,af'			;9434	08 	. 
	inc c			;9435	0c 	. 
	djnz $+42		;9436	10 28 	. ( 
	ld a,(bc)			;9438	0a 	. 
	ex af,af'			;9439	08 	. 
	inc c			;943a	0c 	. 
	rra			;943b	1f 	. 
	ld b,00eh		;943c	06 0e 	. . 
	inc b			;943e	04 	. 
	djnz $+30		;943f	10 1c 	. . 
	jr z,$+11		;9441	28 09 	( . 
	inc e			;9443	1c 	. 
	rra			;9444	1f 	. 
	ld (bc),a			;9445	02 	. 
	inc b			;9446	04 	. 
	rrca			;9447	0f 	. 
	ld de,02927h		;9448	11 27 29 	. ' ) 
	ex af,af'			;944b	08 	. 
	dec bc			;944c	0b 	. 
	ld c,011h		;944d	0e 11 	. . 
	inc d			;944f	14 	. 
	rla			;9450	17 	. 
	ld a,(de)			;9451	1a 	. 
	dec e			;9452	1d 	. 
	jr nz,$+37		;9453	20 23 	  # 
	ld h,014h		;9455	26 14 	& . 
	ld d,005h		;9457	16 05 	. . 
	ex af,af'			;9459	08 	. 
	dec bc			;945a	0b 	. 
	ld c,011h		;945b	0e 11 	. . 
	inc d			;945d	14 	. 
	rla			;945e	17 	. 
	ld a,(de)			;945f	1a 	. 
	dec e			;9460	1d 	. 
	jr nz,$+37		;9461	20 23 	  # 
	ld h,026h		;9463	26 26 	& & 
	jr z,$+40		;9465	28 26 	( & 
	jr z,$+1		;9467	28 ff 	( . 
	ld a,(bc)			;9469	0a 	. 
	ld b,002h		;946a	06 02 	. . 
	inc b			;946c	04 	. 
	ld b,008h		;946d	06 08 	. . 
	ld a,(bc)			;946f	0a 	. 
	inc e			;9470	1c 	. 
	inc c			;9471	0c 	. 
	ld a,(de)			;9472	1a 	. 
	ld c,018h		;9473	0e 18 	. . 
	djnz $+24		;9475	10 16 	. . 
	ld (de),a			;9477	12 	. 
	inc d			;9478	14 	. 
	ex af,af'			;9479	08 	. 
	inc c			;947a	0c 	. 
	ld a,(bc)			;947b	0a 	. 
	rst 38h			;947c	ff 	. 
	inc c			;947d	0c 	. 
	inc bc			;947e	03 	. 
	ld (03e38h),a		;947f	32 38 3e 	2 8 > 
	ld b,h			;9482	44 	D 
	xor (hl)			;9483	ae 	. 
	xor (hl)			;9484	ae 	. 
	rst 38h			;9485	ff 	. 
	cp b			;9486	b8 	. 
	inc bc			;9487	03 	. 
	ret nz			;9488	c0 	. 
	ret nz			;9489	c0 	. 
	adc a,0ceh		;948a	ce ce 	. . 
	call c,0eadch		;948c	dc dc ea 	. . . 
	jp pe,0ff0eh		;948f	ea 0e ff 	. . . 
	ld (04404h),a		;9492	32 04 44 	2 . D 
	ld c,d			;9495	4a 	J 
	rst 38h			;9496	ff 	. 
	ld c,(hl)			;9497	4e 	N 
	inc bc			;9498	03 	. 
	ld d,d			;9499	52 	R 
	ld d,d			;949a	52 	R 
	ld d,(hl)			;949b	56 	V 
	ld d,(hl)			;949c	56 	V 
	ld e,d			;949d	5a 	Z 
	ld e,h			;949e	5c 	\ 
	ld h,(hl)			;949f	66 	f 
	sbc a,b			;94a0	98 	. 
	xor d			;94a1	aa 	. 
	rst 38h			;94a2	ff 	. 
	xor (hl)			;94a3	ae 	. 
	inc b			;94a4	04 	. 
	or (hl)			;94a5	b6 	. 
	or (hl)			;94a6	b6 	. 
	rst 38h			;94a7	ff 	. 
	ld e,00bh		;94a8	1e 0b 	. . 
	ld h,d			;94aa	62 	b 
	ld h,d			;94ab	62 	b 
	rst 38h			;94ac	ff 	. 
	adc a,h			;94ad	8c 	. 
	inc c			;94ae	0c 	. 
	sbc a,h			;94af	9c 	. 
	sbc a,h			;94b0	9c 	. 
	xor (hl)			;94b1	ae 	. 
	xor (hl)			;94b2	ae 	. 
	cp b			;94b3	b8 	. 
	ret nz			;94b4	c0 	. 
	ret z			;94b5	c8 	. 
	ret nc			;94b6	d0 	. 
	ret c			;94b7	d8 	. 
	ret po			;94b8	e0 	. 
	djnz $+22		;94b9	10 14 	. . 
	jr $+30		;94bb	18 1c 	. . 
	jr nz,$+34		;94bd	20 20 	    
	inc h			;94bf	24 	$ 
	inc h			;94c0	24 	$ 
	jr z,$+42		;94c1	28 28 	( ( 
	inc l			;94c3	2c 	, 
	inc l			;94c4	2c 	, 
	jr nc,$+54		;94c5	30 34 	0 4 
	ld e,d			;94c7	5a 	Z 
	ld e,d			;94c8	5a 	Z 
	ld e,(hl)			;94c9	5e 	^ 
	add a,(hl)			;94ca	86 	. 
	adc a,d			;94cb	8a 	. 
	adc a,(hl)			;94cc	8e 	. 
	rst 38h			;94cd	ff 	. 
	ld c,h			;94ce	4c 	L 
	inc b			;94cf	04 	. 
	ld d,b			;94d0	50 	P 
	ld d,b			;94d1	50 	P 
	rst 38h			;94d2	ff 	. 
	jr nz,$+13		;94d3	20 0b 	  . 
	rst 38h			;94d5	ff 	. 
	ld d,c			;94d6	51 	Q 
	dec b			;94d7	05 	. 
	adc a,c			;94d8	89 	. 
	rst 38h			;94d9	ff 	. 
	adc a,l			;94da	8d 	. 
	inc bc			;94db	03 	. 
	adc a,c			;94dc	89 	. 
	rst 38h			;94dd	ff 	. 
	adc a,l			;94de	8d 	. 
	inc b			;94df	04 	. 
	adc a,c			;94e0	89 	. 
	adc a,c			;94e1	89 	. 
	ld d,c			;94e2	51 	Q 
	adc a,c			;94e3	89 	. 
	adc a,c			;94e4	89 	. 
	rst 38h			;94e5	ff 	. 
	ld a,c			;94e6	79 	y 
	ld b,0ffh		;94e7	06 ff 	. . 
	ld a,(bc)			;94e9	0a 	. 
	dec bc			;94ea	0b 	. 
	adc a,d			;94eb	8a 	. 
	adc a,d			;94ec	8a 	. 
	rst 38h			;94ed	ff 	. 
	ld a,(bc)			;94ee	0a 	. 
	inc c			;94ef	0c 	. 
	rst 38h			;94f0	ff 	. 
	ld a,d			;94f1	7a 	z 
	inc b			;94f2	04 	. 
	rst 38h			;94f3	ff 	. 
	ld d,d			;94f4	52 	R 
	ld b,0ffh		;94f5	06 ff 	. . 
	inc hl			;94f7	23 	# 
	ld de,073ffh		;94f8	11 ff 73 	. . s 
	inc bc			;94fb	03 	. 
	rst 38h			;94fc	ff 	. 
	inc b			;94fd	04 	. 
	inc b			;94fe	04 	. 
	ex af,af'			;94ff	08 	. 
	ex af,af'			;9500	08 	. 
	rst 38h			;9501	ff 	. 
	add hl,de			;9502	19 	. 
	dec bc			;9503	0b 	. 
	rst 38h			;9504	ff 	. 
	ex af,af'			;9505	08 	. 
	dec b			;9506	05 	. 
	ld c,l			;9507	4d 	M 
	dec de			;9508	1b 	. 
	dec e			;9509	1d 	. 
	dec e			;950a	1d 	. 
	ld c,e			;950b	4b 	K 
	rst 38h			;950c	ff 	. 
	dec e			;950d	1d 	. 
	inc b			;950e	04 	. 
	ld c,e			;950f	4b 	K 
	ld c,e			;9510	4b 	K 
	ld b,01bh		;9511	06 1b 	. . 
	dec de			;9513	1b 	. 
	rst 38h			;9514	ff 	. 
	ld hl,(0ff06h)		;9515	2a 06 ff 	* . . 
	ld (de),a			;9518	12 	. 
	dec bc			;9519	0b 	. 
	ld c,e			;951a	4b 	K 
	ld c,e			;951b	4b 	K 
	rst 38h			;951c	ff 	. 
	ld de,0ff0ch		;951d	11 0c ff 	. . . 
	ld hl,(0ff04h)		;9520	2a 04 ff 	* . . 
	ex af,af'			;9523	08 	. 
	ld b,0ffh		;9524	06 ff 	. . 
	add hl,de			;9526	19 	. 
	ld de,03effh		;9527	11 ff 3e 	. . > 
	inc bc			;952a	03 	. 
	rst 38h			;952b	ff 	. 
	nop			;952c	00 	. 
	ld c,001h		;952d	0e 01 	. . 
	rst 38h			;952f	ff 	. 
	nop			;9530	00 	. 
	rlca			;9531	07 	. 
	rst 38h			;9532	ff 	. 
	ld (bc),a			;9533	02 	. 
	ld (de),a			;9534	12 	. 
	rst 38h			;9535	ff 	. 
	inc bc			;9536	03 	. 
	inc bc			;9537	03 	. 
	rst 38h			;9538	ff 	. 
	inc b			;9539	04 	. 
	rlca			;953a	07 	. 
	rst 38h			;953b	ff 	. 
	dec b			;953c	05 	. 
	rlca			;953d	07 	. 
	ld b,006h		;953e	06 06 	. . 
	rst 38h			;9540	ff 	. 
	inc bc			;9541	03 	. 
	rlca			;9542	07 	. 
	rst 38h			;9543	ff 	. 
	rlca			;9544	07 	. 
	dec bc			;9545	0b 	. 
	rst 38h			;9546	ff 	. 
	inc bc			;9547	03 	. 
	dec bc			;9548	0b 	. 
	ex af,af'			;9549	08 	. 
	ex af,af'			;954a	08 	. 
	rst 38h			;954b	ff 	. 
	add hl,bc			;954c	09 	. 
	ex af,af'			;954d	08 	. 
	ld a,(bc)			;954e	0a 	. 
	rst 38h			;954f	ff 	. 
	dec bc			;9550	0b 	. 
	inc bc			;9551	03 	. 
	rst 38h			;9552	ff 	. 
	inc c			;9553	0c 	. 
	inc b			;9554	04 	. 
	rst 38h			;9555	ff 	. 
	dec c			;9556	0d 	. 
	dec bc			;9557	0b 	. 
	inc c			;9558	0c 	. 
	rst 38h			;9559	ff 	. 
	ld c,006h		;955a	0e 06 	. . 
	rst 38h			;955c	ff 	. 
	rrca			;955d	0f 	. 
	add hl,bc			;955e	09 	. 
	rst 38h			;955f	ff 	. 
	ld c,007h		;9560	0e 07 	. . 
	rst 38h			;9562	ff 	. 
	djnz $+5		;9563	10 03 	. . 
	rst 38h			;9565	ff 	. 
	inc bc			;9566	03 	. 
	inc b			;9567	04 	. 
	ld de,012ffh		;9568	11 ff 12 	. . . 
	inc bc			;956b	03 	. 
	rst 38h			;956c	ff 	. 
	inc de			;956d	13 	. 
	ex af,af'			;956e	08 	. 
	rst 38h			;956f	ff 	. 
	inc bc			;9570	03 	. 
	inc b			;9571	04 	. 
	rst 38h			;9572	ff 	. 
	inc b			;9573	04 	. 
	rlca			;9574	07 	. 
	rst 38h			;9575	ff 	. 
	dec b			;9576	05 	. 
	rlca			;9577	07 	. 
	ld b,006h		;9578	06 06 	. . 
	inc bc			;957a	03 	. 
	inc bc			;957b	03 	. 
	inc d			;957c	14 	. 
	rst 38h			;957d	ff 	. 
	dec d			;957e	15 	. 
	jr $+24		;957f	18 16 	. . 
	rla			;9581	17 	. 
	jr $+27		;9582	18 19 	. . 
	ld d,0ffh		;9584	16 ff 	. . 
	ld a,(de)			;9586	1a 	. 
	inc b			;9587	04 	. 
	dec de			;9588	1b 	. 
	dec de			;9589	1b 	. 
	rst 38h			;958a	ff 	. 
	inc e			;958b	1c 	. 
	ld c,0ffh		;958c	0e ff 	. . 
	dec e			;958e	1d 	. 
	inc bc			;958f	03 	. 
	rst 38h			;9590	ff 	. 
	inc e			;9591	1c 	. 
	ld e,0ffh		;9592	1e ff 	. . 
	ld e,006h		;9594	1e 06 	. . 
	rst 38h			;9596	ff 	. 
	inc e			;9597	1c 	. 
	inc b			;9598	04 	. 
	rst 38h			;9599	ff 	. 
	dec e			;959a	1d 	. 
	inc bc			;959b	03 	. 
	rst 38h			;959c	ff 	. 
	inc e			;959d	1c 	. 
	inc de			;959e	13 	. 
	rst 38h			;959f	ff 	. 
	rra			;95a0	1f 	. 
	ld b,0ffh		;95a1	06 ff 	. . 
	inc e			;95a3	1c 	. 
	ld de,02020h		;95a4	11 20 20 	.     
	ld hl,02322h		;95a7	21 22 23 	! " # 
	rst 38h			;95aa	ff 	. 
	inc h			;95ab	24 	$ 
	dec b			;95ac	05 	. 
	rst 38h			;95ad	ff 	. 
	dec h			;95ae	25 	% 
	inc bc			;95af	03 	. 
	rst 38h			;95b0	ff 	. 
	ld h,003h		;95b1	26 03 	& . 
	daa			;95b3	27 	' 
	daa			;95b4	27 	' 
	rst 38h			;95b5	ff 	. 
	jr z,$+5		;95b6	28 03 	( . 
	rst 38h			;95b8	ff 	. 
	dec h			;95b9	25 	% 
	inc bc			;95ba	03 	. 
	rst 38h			;95bb	ff 	. 
	add hl,hl			;95bc	29 	) 
	rlca			;95bd	07 	. 
	rst 38h			;95be	ff 	. 
	ld hl,(0ff03h)		;95bf	2a 03 ff 	* . . 
	dec h			;95c2	25 	% 
	inc bc			;95c3	03 	. 
	rst 38h			;95c4	ff 	. 
	dec hl			;95c5	2b 	+ 
	ex af,af'			;95c6	08 	. 
	rst 38h			;95c7	ff 	. 
	inc l			;95c8	2c 	, 
	dec b			;95c9	05 	. 
	dec l			;95ca	2d 	- 
	dec l			;95cb	2d 	- 
	dec h			;95cc	25 	% 
	rst 38h			;95cd	ff 	. 
	ld l,007h		;95ce	2e 07 	. . 
	rst 38h			;95d0	ff 	. 
	cpl			;95d1	2f 	/ 
	inc bc			;95d2	03 	. 
	rst 38h			;95d3	ff 	. 
	add hl,hl			;95d4	29 	) 
	dec bc			;95d5	0b 	. 
	dec h			;95d6	25 	% 
	dec h			;95d7	25 	% 
	jr nc,$+1		;95d8	30 ff 	0 . 
	ld sp,0ff06h		;95da	31 06 ff 	1 . . 
	ld (0ff03h),a		;95dd	32 03 ff 	2 . . 
	inc sp			;95e0	33 	3 
	inc bc			;95e1	03 	. 
	inc (hl)			;95e2	34 	4 
	dec (hl)			;95e3	35 	5 
	dec (hl)			;95e4	35 	5 
	ld (hl),0ffh		;95e5	36 ff 	6 . 
	scf			;95e7	37 	7 
	ex af,af'			;95e8	08 	. 
	rst 38h			;95e9	ff 	. 
	jr c,$+15		;95ea	38 0d 	8 . 
	rst 38h			;95ec	ff 	. 
	add hl,sp			;95ed	39 	9 
	inc bc			;95ee	03 	. 
	ld a,(03bffh)		;95ef	3a ff 3b 	: . ; 
	inc bc			;95f2	03 	. 
	rst 38h			;95f3	ff 	. 
	inc a			;95f4	3c 	< 
	ld (de),a			;95f5	12 	. 
	rst 38h			;95f6	ff 	. 
	dec a			;95f7	3d 	= 
	ld d,000h		;95f8	16 00 	. . 
	ld d,e			;95fa	53 	S 
	ld (bc),a			;95fb	02 	. 
	call pe,0530eh		;95fc	ec 0e 53 	. . S 
	add hl,bc			;95ff	09 	. 
	xor 0aeh		;9600	ee ae 	. . 
	ld d,e			;9602	53 	S 
	add hl,bc			;9603	09 	. 
	call pe,0ff0eh		;9604	ec 0e ff 	. . . 
	ret p			;9607	f0 	. 
	ld d,b			;9608	50 	P 
	inc b			;9609	04 	. 
	inc bc			;960a	03 	. 
	ret p			;960b	f0 	. 
	ld d,b			;960c	50 	P 
	add hl,bc			;960d	09 	. 
	inc bc			;960e	03 	. 
	ret p			;960f	f0 	. 
	ld d,b			;9610	50 	P 
	inc b			;9611	04 	. 
	call pe,00450h		;9612	ec 50 04 	. P . 
	inc bc			;9615	03 	. 
	jp pe,050ech		;9616	ea ec 50 	. . P 
	inc bc			;9619	03 	. 
	call pe,00450h		;961a	ec 50 04 	. P . 
	inc bc			;961d	03 	. 
	jp pe,050ech		;961e	ea ec 50 	. . P 
	ex af,af'			;9621	08 	. 
	inc bc			;9622	03 	. 
	ret p			;9623	f0 	. 
	ld d,b			;9624	50 	P 
	rlca			;9625	07 	. 
	cp b			;9626	b8 	. 
	nop			;9627	00 	. 
	inc bc			;9628	03 	. 
	ret p			;9629	f0 	. 
	ld d,b			;962a	50 	P 
	dec b			;962b	05 	. 
	call pe,00350h		;962c	ec 50 03 	. P . 
	inc bc			;962f	03 	. 
	jp pe,0bcebh		;9630	ea eb bc 	. . . 
	ld d,b			;9633	50 	P 
	inc bc			;9634	03 	. 
	call pe,00350h		;9635	ec 50 03 	. P . 
	inc bc			;9638	03 	. 
	ret p			;9639	f0 	. 
	ccf			;963a	3f 	? 
	call m,00350h		;963b	fc 50 03 	. P . 
	call pe,00350h		;963e	ec 50 03 	. P . 
	inc bc			;9641	03 	. 
	ret p			;9642	f0 	. 
	ccf			;9643	3f 	? 
	call m,00750h		;9644	fc 50 07 	. P . 
	inc bc			;9647	03 	. 
	ret p			;9648	f0 	. 
	ccf			;9649	3f 	? 
	rst 38h			;964a	ff 	. 
	cp e			;964b	bb 	. 
	ld d,b			;964c	50 	P 
	ld b,003h		;964d	06 03 	. . 
	ret p			;964f	f0 	. 
	ccf			;9650	3f 	? 
	rst 38h			;9651	ff 	. 
	cp e			;9652	bb 	. 
	ld d,b			;9653	50 	P 
	inc b			;9654	04 	. 
	cp b			;9655	b8 	. 
	nop			;9656	00 	. 
	inc bc			;9657	03 	. 
	ret p			;9658	f0 	. 
	ccf			;9659	3f 	? 
	ld d,b			;965a	50 	P 
	ex af,af'			;965b	08 	. 
	inc bc			;965c	03 	. 
	ret p			;965d	f0 	. 
	ccf			;965e	3f 	? 
	ld d,b			;965f	50 	P 
	ld b,002h		;9660	06 02 	. . 
	ret po			;9662	e0 	. 
	inc bc			;9663	03 	. 
	ret p			;9664	f0 	. 
	ccf			;9665	3f 	? 
	ld d,e			;9666	53 	S 
	ld (bc),a			;9667	02 	. 
	ret nz			;9668	c0 	. 
	ld d,b			;9669	50 	P 
	dec b			;966a	05 	. 
	inc bc			;966b	03 	. 
	ld d,e			;966c	53 	S 
	inc b			;966d	04 	. 
	ret nz			;966e	c0 	. 
	ld d,b			;966f	50 	P 
	dec b			;9670	05 	. 
	inc bc			;9671	03 	. 
	ld d,e			;9672	53 	S 
	inc b			;9673	04 	. 
	ret nz			;9674	c0 	. 
	nop			;9675	00 	. 
	ld c,0c0h		;9676	0e c0 	. . 
	ld d,b			;9678	50 	P 
	ld (bc),a			;9679	02 	. 
	inc bc			;967a	03 	. 
	ret p			;967b	f0 	. 
	ld d,b			;967c	50 	P 
	dec b			;967d	05 	. 
	ld c,0c0h		;967e	0e c0 	. . 
	ld d,b			;9680	50 	P 
	ld (bc),a			;9681	02 	. 
	inc bc			;9682	03 	. 
	ret p			;9683	f0 	. 
	ld d,b			;9684	50 	P 
	inc b			;9685	04 	. 
	rrca			;9686	0f 	. 
	ld d,e			;9687	53 	S 
	dec b			;9688	05 	. 
	ret p			;9689	f0 	. 
	ld d,b			;968a	50 	P 
	inc b			;968b	04 	. 
	rlca			;968c	07 	. 
	ld d,e			;968d	53 	S 
	dec b			;968e	05 	. 
	ret p			;968f	f0 	. 
	ld d,b			;9690	50 	P 
	inc b			;9691	04 	. 
	rlca			;9692	07 	. 
	ld d,e			;9693	53 	S 
	inc bc			;9694	03 	. 
	ret nz			;9695	c0 	. 
	inc bc			;9696	03 	. 
	ret p			;9697	f0 	. 
	ld d,b			;9698	50 	P 
	inc b			;9699	04 	. 
	rlca			;969a	07 	. 
	ld d,e			;969b	53 	S 
	ld (bc),a			;969c	02 	. 
	call m,00300h		;969d	fc 00 03 	. . . 
	ret p			;96a0	f0 	. 
	ld d,b			;96a1	50 	P 
	inc b			;96a2	04 	. 
	rlca			;96a3	07 	. 
	ld d,e			;96a4	53 	S 
	ld (bc),a			;96a5	02 	. 
	ret nz			;96a6	c0 	. 
	nop			;96a7	00 	. 
	inc bc			;96a8	03 	. 
	ret p			;96a9	f0 	. 
	ld d,b			;96aa	50 	P 
	inc b			;96ab	04 	. 
	rlca			;96ac	07 	. 
	ld d,e			;96ad	53 	S 
	ld (bc),a			;96ae	02 	. 
	jp 003c0h		;96af	c3 c0 03 	. . . 
	ret p			;96b2	f0 	. 
	nop			;96b3	00 	. 
	ld (bc),a			;96b4	02 	. 
	and b			;96b5	a0 	. 
	nop			;96b6	00 	. 
	rlca			;96b7	07 	. 
	ld d,e			;96b8	53 	S 
	inc bc			;96b9	03 	. 
	ret nz			;96ba	c0 	. 
	inc bc			;96bb	03 	. 
	ret p			;96bc	f0 	. 
	nop			;96bd	00 	. 
	ld (bc),a			;96be	02 	. 
	and b			;96bf	a0 	. 
	nop			;96c0	00 	. 
	rlca			;96c1	07 	. 
	ld d,e			;96c2	53 	S 
	ld (bc),a			;96c3	02 	. 
	nop			;96c4	00 	. 
	ret nz			;96c5	c0 	. 
	inc bc			;96c6	03 	. 
	ret p			;96c7	f0 	. 
	ld d,b			;96c8	50 	P 
	inc b			;96c9	04 	. 
	rlca			;96ca	07 	. 
	ld d,e			;96cb	53 	S 
	ld (bc),a			;96cc	02 	. 
	nop			;96cd	00 	. 
	ret nz			;96ce	c0 	. 
	inc bc			;96cf	03 	. 
	ret p			;96d0	f0 	. 
	ld d,b			;96d1	50 	P 
	inc b			;96d2	04 	. 
	rlca			;96d3	07 	. 
	ld d,e			;96d4	53 	S 
	ld (bc),a			;96d5	02 	. 
	ld d,b			;96d6	50 	P 
	ld (bc),a			;96d7	02 	. 
	inc bc			;96d8	03 	. 
	ret p			;96d9	f0 	. 
	ld d,b			;96da	50 	P 
	ld (bc),a			;96db	02 	. 
	ld a,(bc)			;96dc	0a 	. 
	add a,b			;96dd	80 	. 
	rlca			;96de	07 	. 
	ld d,e			;96df	53 	S 
	ld (bc),a			;96e0	02 	. 
	nop			;96e1	00 	. 
	ret nz			;96e2	c0 	. 
	inc bc			;96e3	03 	. 
	ret p			;96e4	f0 	. 
	ld hl,(00350h)		;96e5	2a 50 03 	* P . 
	rlca			;96e8	07 	. 
	ld d,e			;96e9	53 	S 
	ld (bc),a			;96ea	02 	. 
	nop			;96eb	00 	. 
	ret nz			;96ec	c0 	. 
	inc bc			;96ed	03 	. 
	ret p			;96ee	f0 	. 
	ld d,b			;96ef	50 	P 
	inc b			;96f0	04 	. 
	rlca			;96f1	07 	. 
	rst 38h			;96f2	ff 	. 
	cp a			;96f3	bf 	. 
	nop			;96f4	00 	. 
	ld d,e			;96f5	53 	S 
	ld (bc),a			;96f6	02 	. 
	ret p			;96f7	f0 	. 
	ld d,b			;96f8	50 	P 
	inc b			;96f9	04 	. 
	rlca			;96fa	07 	. 
	rst 38h			;96fb	ff 	. 
	cp a			;96fc	bf 	. 
	nop			;96fd	00 	. 
	rst 38h			;96fe	ff 	. 
	rrca			;96ff	0f 	. 
	rst 38h			;9700	ff 	. 
	ld d,b			;9701	50 	P 
	inc b			;9702	04 	. 
	rrca			;9703	0f 	. 
	rst 38h			;9704	ff 	. 
	cp a			;9705	bf 	. 
	nop			;9706	00 	. 
	rst 38h			;9707	ff 	. 
	rrca			;9708	0f 	. 
	rst 38h			;9709	ff 	. 
	ld d,b			;970a	50 	P 
	inc b			;970b	04 	. 
	rrca			;970c	0f 	. 
	rst 38h			;970d	ff 	. 
	cp a			;970e	bf 	. 
	nop			;970f	00 	. 
	call m,0ff07h		;9710	fc 07 ff 	. . . 
	ld d,b			;9713	50 	P 
	inc b			;9714	04 	. 
	rrca			;9715	0f 	. 
	ret nz			;9716	c0 	. 
	ccf			;9717	3f 	? 
	nop			;9718	00 	. 
	call m,0ff07h		;9719	fc 07 ff 	. . . 
	ld d,b			;971c	50 	P 
	inc b			;971d	04 	. 
	rrca			;971e	0f 	. 
	ret nz			;971f	c0 	. 
	ld d,b			;9720	50 	P 
	inc bc			;9721	03 	. 
	rlca			;9722	07 	. 
	rst 38h			;9723	ff 	. 
	ld d,b			;9724	50 	P 
	inc b			;9725	04 	. 
	rrca			;9726	0f 	. 
	ret nz			;9727	c0 	. 
	ccf			;9728	3f 	? 
	jp 007fch		;9729	c3 fc 07 	. . . 
	rst 38h			;972c	ff 	. 
	ld d,b			;972d	50 	P 
	inc b			;972e	04 	. 
	rrca			;972f	0f 	. 
	ret nz			;9730	c0 	. 
	ccf			;9731	3f 	? 
	jp 00353h		;9732	c3 53 03 	. S . 
	ld d,b			;9735	50 	P 
	inc b			;9736	04 	. 
	rrca			;9737	0f 	. 
	ret nz			;9738	c0 	. 
	ccf			;9739	3f 	? 
	jp 007ffh		;973a	c3 ff 07 	. . . 
	rst 38h			;973d	ff 	. 
	ld d,b			;973e	50 	P 
	inc b			;973f	04 	. 
	rrca			;9740	0f 	. 
	ret nz			;9741	c0 	. 
	ccf			;9742	3f 	? 
	ret nz			;9743	c0 	. 
	inc a			;9744	3c 	< 
	rlca			;9745	07 	. 
	rst 38h			;9746	ff 	. 
	ld d,b			;9747	50 	P 
	inc b			;9748	04 	. 
	rrca			;9749	0f 	. 
	ret nz			;974a	c0 	. 
	ccf			;974b	3f 	? 
	rst 38h			;974c	ff 	. 
	call m,0ff07h		;974d	fc 07 ff 	. . . 
	ld d,b			;9750	50 	P 
	inc b			;9751	04 	. 
	rrca			;9752	0f 	. 
	rst 38h			;9753	ff 	. 
	ret nz			;9754	c0 	. 
	ccf			;9755	3f 	? 
	ld d,e			;9756	53 	S 
	inc bc			;9757	03 	. 
	ld d,b			;9758	50 	P 
	inc b			;9759	04 	. 
	rrca			;975a	0f 	. 
	rst 38h			;975b	ff 	. 
	ret nz			;975c	c0 	. 
	ccf			;975d	3f 	? 
	rst 38h			;975e	ff 	. 
	rlca			;975f	07 	. 
	rst 38h			;9760	ff 	. 
	ld d,b			;9761	50 	P 
	inc b			;9762	04 	. 
	rrca			;9763	0f 	. 
	ld d,b			;9764	50 	P 
	inc b			;9765	04 	. 
	rlca			;9766	07 	. 
	rst 38h			;9767	ff 	. 
	ld d,b			;9768	50 	P 
	inc b			;9769	04 	. 
	rrca			;976a	0f 	. 
	ret nz			;976b	c0 	. 
	ccf			;976c	3f 	? 
	ret p			;976d	f0 	. 
	call m,0ff07h		;976e	fc 07 ff 	. . . 
	ld d,b			;9771	50 	P 
	inc b			;9772	04 	. 
	rrca			;9773	0f 	. 
	ret nz			;9774	c0 	. 
	ccf			;9775	3f 	? 
	ret nz			;9776	c0 	. 
	nop			;9777	00 	. 
	rlca			;9778	07 	. 
	rst 38h			;9779	ff 	. 
	ld d,b			;977a	50 	P 
	inc b			;977b	04 	. 
	rrca			;977c	0f 	. 
	ret nz			;977d	c0 	. 
	ld d,b			;977e	50 	P 
	inc bc			;977f	03 	. 
	rrca			;9780	0f 	. 
	rst 38h			;9781	ff 	. 
	ld d,b			;9782	50 	P 
	inc b			;9783	04 	. 
	rrca			;9784	0f 	. 
	ld d,e			;9785	53 	S 
	ld (bc),a			;9786	02 	. 
	ret nz			;9787	c0 	. 
	inc a			;9788	3c 	< 
	inc bc			;9789	03 	. 
	rst 38h			;978a	ff 	. 
	ld d,b			;978b	50 	P 
	inc b			;978c	04 	. 
	rrca			;978d	0f 	. 
	rst 38h			;978e	ff 	. 
	ret nz			;978f	c0 	. 
	nop			;9790	00 	. 
	ccf			;9791	3f 	? 
	inc bc			;9792	03 	. 
	rst 38h			;9793	ff 	. 
	ld d,b			;9794	50 	P 
	inc b			;9795	04 	. 
	rrca			;9796	0f 	. 
	rst 38h			;9797	ff 	. 
	ret nz			;9798	c0 	. 
	ccf			;9799	3f 	? 
	rst 38h			;979a	ff 	. 
	inc bc			;979b	03 	. 
	rst 38h			;979c	ff 	. 
	ld d,b			;979d	50 	P 
	inc b			;979e	04 	. 
	rrca			;979f	0f 	. 
	rst 38h			;97a0	ff 	. 
	ret nz			;97a1	c0 	. 
	inc bc			;97a2	03 	. 
	rst 38h			;97a3	ff 	. 
	inc bc			;97a4	03 	. 
	rst 38h			;97a5	ff 	. 
	ld d,b			;97a6	50 	P 
	inc b			;97a7	04 	. 
	inc c			;97a8	0c 	. 
	ld d,b			;97a9	50 	P 
	inc b			;97aa	04 	. 
	inc bc			;97ab	03 	. 
	rst 38h			;97ac	ff 	. 
	ld d,b			;97ad	50 	P 
	inc b			;97ae	04 	. 
	rrca			;97af	0f 	. 
	ret nz			;97b0	c0 	. 
	nop			;97b1	00 	. 
	inc bc			;97b2	03 	. 
	cp e			;97b3	bb 	. 
	inc bc			;97b4	03 	. 
	rst 38h			;97b5	ff 	. 
	ld d,b			;97b6	50 	P 
	inc b			;97b7	04 	. 
	rrca			;97b8	0f 	. 
	ret nz			;97b9	c0 	. 
	dec sp			;97ba	3b 	; 
	jp 003bbh		;97bb	c3 bb 03 	. . . 
	rst 38h			;97be	ff 	. 
	ld d,b			;97bf	50 	P 
	inc b			;97c0	04 	. 
	rrca			;97c1	0f 	. 
	ret nz			;97c2	c0 	. 
	dec sp			;97c3	3b 	; 
	ret nz			;97c4	c0 	. 
	inc a			;97c5	3c 	< 
	inc bc			;97c6	03 	. 
	rst 38h			;97c7	ff 	. 
	ld d,b			;97c8	50 	P 
	ex af,af'			;97c9	08 	. 
	inc a			;97ca	3c 	< 
	inc bc			;97cb	03 	. 
	rst 38h			;97cc	ff 	. 
	ld d,b			;97cd	50 	P 
	inc b			;97ce	04 	. 
	rrca			;97cf	0f 	. 
	ld d,e			;97d0	53 	S 
	inc bc			;97d1	03 	. 
	call m,0ff03h		;97d2	fc 03 ff 	. . . 
	ld d,b			;97d5	50 	P 
	inc b			;97d6	04 	. 
	rrca			;97d7	0f 	. 
	ld d,e			;97d8	53 	S 
	ld (bc),a			;97d9	02 	. 
	ret nz			;97da	c0 	. 
	nop			;97db	00 	. 
	inc bc			;97dc	03 	. 
	rst 38h			;97dd	ff 	. 
	ld d,b			;97de	50 	P 
	inc b			;97df	04 	. 
	rrca			;97e0	0f 	. 
	rst 38h			;97e1	ff 	. 
	cp 0c0h		;97e2	fe c0 	. . 
	rst 28h			;97e4	ef 	. 
	ld d,e			;97e5	53 	S 
	ex af,af'			;97e6	08 	. 
	cp 0c0h		;97e7	fe c0 	. . 
	rst 28h			;97e9	ef 	. 
	rst 38h			;97ea	ff 	. 
	ld d,b			;97eb	50 	P 
	nop			;97ec	00 	. 
	ld l,e			;97ed	6b 	k 
	add hl,de			;97ee	19 	. 
	rra			;97ef	1f 	. 
	dec h			;97f0	25 	% 
	inc b			;97f1	04 	. 
	ld a,(bc)			;97f2	0a 	. 
	djnz $+24		;97f3	10 16 	. . 
	inc e			;97f5	1c 	. 
	ld (00228h),hl		;97f6	22 28 02 	" ( . 
	ld de,01d14h		;97f9	11 14 1d 	. . . 
	jr nz,$+37		;97fc	20 23 	  # 
	ld a,(de)			;97fe	1a 	. 
	dec e			;97ff	1d 	. 
	jr nz,$+43		;9800	20 29 	  ) 
	ld a,(bc)			;9802	0a 	. 
	ld c,029h		;9803	0e 29 	. ) 
	dec b			;9805	05 	. 
	add hl,bc			;9806	09 	. 
	dec c			;9807	0d 	. 
	ld de,02725h		;9808	11 25 27 	. % ' 
	add hl,hl			;980b	29 	) 
	ld hl,02725h		;980c	21 25 27 	! % ' 
	add hl,hl			;980f	29 	) 
	inc b			;9810	04 	. 
	rlca			;9811	07 	. 
	rst 38h			;9812	ff 	. 
	ld hl,00404h		;9813	21 04 04 	! . . 
	ex af,af'			;9816	08 	. 
	inc c			;9817	0c 	. 
	djnz $+35		;9818	10 21 	. ! 
	rlca			;981a	07 	. 
	dec bc			;981b	0b 	. 
	rrca			;981c	0f 	. 
	inc de			;981d	13 	. 
	dec h			;981e	25 	% 
	daa			;981f	27 	' 
	add hl,hl			;9820	29 	) 
	rlca			;9821	07 	. 
	dec bc			;9822	0b 	. 
	rrca			;9823	0f 	. 
	dec h			;9824	25 	% 
	daa			;9825	27 	' 
	add hl,hl			;9826	29 	) 
	jr z,$+34		;9827	28 20 	(   
	ld (02220h),hl		;9829	22 20 22 	"   " 
	jr z,$+16		;982c	28 0e 	( . 
	ld de,02814h		;982e	11 14 28 	. . ( 
	jr z,$+26		;9831	28 18 	( . 
	ld a,(de)			;9833	1a 	. 
	inc e			;9834	1c 	. 
	ld e,020h		;9835	1e 20 	.   
	add hl,bc			;9837	09 	. 
	dec c			;9838	0d 	. 
	ld de,02929h		;9839	11 29 29 	. ) ) 
	ld hl,01917h		;983c	21 17 19 	! . . 
	dec de			;983f	1b 	. 
	dec e			;9840	1d 	. 
	rra			;9841	1f 	. 
	add hl,hl			;9842	29 	) 
	ld hl,0291bh		;9843	21 1b 29 	! . ) 
	add hl,bc			;9846	09 	. 
	dec c			;9847	0d 	. 
	ld de,0ff14h		;9848	11 14 ff 	. . . 
	ld hl,0ff04h		;984b	21 04 ff 	! . . 
	ld (0ff05h),hl		;984e	22 05 ff 	" . . 
	ld hl,02304h		;9851	21 04 23 	! . # 
	rst 38h			;9854	ff 	. 
	ld (0ff03h),a		;9855	32 03 ff 	2 . . 
	sbc a,h			;9858	9c 	. 
	rlca			;9859	07 	. 
	rst 38h			;985a	ff 	. 
	call nz,0ff06h		;985b	c4 06 ff 	. . . 
	inc e			;985e	1c 	. 
	inc bc			;985f	03 	. 
	ld e,b			;9860	58 	X 
	ld e,d			;9861	5a 	Z 
	ld e,d			;9862	5a 	Z 
	ld e,h			;9863	5c 	\ 
	rst 38h			;9864	ff 	. 
	adc a,d			;9865	8a 	. 
	inc b			;9866	04 	. 
	rst 38h			;9867	ff 	. 
	sbc a,h			;9868	9c 	. 
	inc bc			;9869	03 	. 
	and b			;986a	a0 	. 
	rst 38h			;986b	ff 	. 
	and h			;986c	a4 	. 
	inc bc			;986d	03 	. 
	xor d			;986e	aa 	. 
	xor d			;986f	aa 	. 
	cp h			;9870	bc 	. 
	call nz,0d4cch		;9871	c4 cc d4 	. . . 
	rst 38h			;9874	ff 	. 
	jp c,0dc04h		;9875	da 04 dc 	. . . 
	rst 38h			;9878	ff 	. 
	ld h,004h		;9879	26 04 	& . 
	rst 38h			;987b	ff 	. 
	ld (hl),h			;987c	74 	t 
	inc bc			;987d	03 	. 
	rst 38h			;987e	ff 	. 
	ld a,d			;987f	7a 	z 
	ld b,082h		;9880	06 82 	. . 
	adc a,d			;9882	8a 	. 
	adc a,d			;9883	8a 	. 
	adc a,(hl)			;9884	8e 	. 
	adc a,(hl)			;9885	8e 	. 
	and d			;9886	a2 	. 
	rst 38h			;9887	ff 	. 
	cp (hl)			;9888	be 	. 
	inc bc			;9889	03 	. 
	ret c			;988a	d8 	. 
	call c,0e2ffh		;988b	dc ff e2 	. . . 
	dec b			;988e	05 	. 
	rst 38h			;988f	ff 	. 
	djnz $+5		;9890	10 03 	. . 
	ld (03026h),hl		;9892	22 26 30 	" & 0 
	rst 38h			;9895	ff 	. 
	ld (03406h),a		;9896	32 06 34 	2 . 4 
	ld c,d			;9899	4a 	J 
	ld c,(hl)			;989a	4e 	N 
	rst 38h			;989b	ff 	. 
	ld h,b			;989c	60 	` 
	inc bc			;989d	03 	. 
	adc a,(hl)			;989e	8e 	. 
	jr c,$+62		;989f	38 3c 	8 < 
	ld b,b			;98a1	40 	@ 
	ld b,h			;98a2	44 	D 
	jp po,0eae6h		;98a3	e2 e6 ea 	. . . 
	xor 0f2h		;98a6	ee f2 	. . 
	sbc a,b			;98a8	98 	. 
	sbc a,h			;98a9	9c 	. 
	and b			;98aa	a0 	. 
	and h			;98ab	a4 	. 
	sbc a,(hl)			;98ac	9e 	. 
	rst 38h			;98ad	ff 	. 
	ld d,b			;98ae	50 	P 
	inc bc			;98af	03 	. 
	rst 38h			;98b0	ff 	. 
	nop			;98b1	00 	. 
	rlca			;98b2	07 	. 
	ld c,h			;98b3	4c 	L 
	ex af,af'			;98b4	08 	. 
	ex af,af'			;98b5	08 	. 
	rst 38h			;98b6	ff 	. 
	jr nz,$+5		;98b7	20 03 	  . 
	rst 38h			;98b9	ff 	. 
	adc a,l			;98ba	8d 	. 
	inc bc			;98bb	03 	. 
	ld de,05151h		;98bc	11 51 51 	. Q Q 
	ld de,009ffh		;98bf	11 ff 09 	. . . 
	inc b			;98c2	04 	. 
	rst 38h			;98c3	ff 	. 
	ld c,l			;98c4	4d 	M 
	inc bc			;98c5	03 	. 
	ld l,c			;98c6	69 	i 
	rst 38h			;98c7	ff 	. 
	ld a,l			;98c8	7d 	} 
	inc bc			;98c9	03 	. 
	ld d,c			;98ca	51 	Q 
	ld d,c			;98cb	51 	Q 
	rst 38h			;98cc	ff 	. 
	ld c,l			;98cd	4d 	M 
	inc b			;98ce	04 	. 
	rst 38h			;98cf	ff 	. 
	ld bc,04d04h		;98d0	01 04 4d 	. . M 
	rst 38h			;98d3	ff 	. 
	adc a,(hl)			;98d4	8e 	. 
	inc b			;98d5	04 	. 
	rst 38h			;98d6	ff 	. 
	ld a,(hl)			;98d7	7e 	~ 
	inc bc			;98d8	03 	. 
	rst 38h			;98d9	ff 	. 
	ld (bc),a			;98da	02 	. 
	inc bc			;98db	03 	. 
	rst 38h			;98dc	ff 	. 
	ld c,(hl)			;98dd	4e 	N 
	inc bc			;98de	03 	. 
	ld l,d			;98df	6a 	j 
	rst 38h			;98e0	ff 	. 
	ld a,d			;98e1	7a 	z 
	inc b			;98e2	04 	. 
	ld l,d			;98e3	6a 	j 
	rst 38h			;98e4	ff 	. 
	ld (de),a			;98e5	12 	. 
	dec b			;98e6	05 	. 
	rst 38h			;98e7	ff 	. 
	ld a,d			;98e8	7a 	z 
	dec b			;98e9	05 	. 
	rst 38h			;98ea	ff 	. 
	dec bc			;98eb	0b 	. 
	inc bc			;98ec	03 	. 
	ld c,a			;98ed	4f 	O 
	ld c,a			;98ee	4f 	O 
	rst 38h			;98ef	ff 	. 
	ld a,e			;98f0	7b 	{ 
	ld b,013h		;98f1	06 13 	. . 
	ld a,e			;98f3	7b 	{ 
	inc de			;98f4	13 	. 
	inc de			;98f5	13 	. 
	rst 38h			;98f6	ff 	. 
	adc a,a			;98f7	8f 	. 
	inc bc			;98f8	03 	. 
	inc de			;98f9	13 	. 
	rst 38h			;98fa	ff 	. 
	xor e			;98fb	ab 	. 
	inc b			;98fc	04 	. 
	rst 38h			;98fd	ff 	. 
	xor d			;98fe	aa 	. 
	add hl,bc			;98ff	09 	. 
	xor c			;9900	a9 	. 
	rst 38h			;9901	ff 	. 
	ex af,af'			;9902	08 	. 
	inc bc			;9903	03 	. 
	rst 38h			;9904	ff 	. 
	ld c,l			;9905	4d 	M 
	rlca			;9906	07 	. 
	inc h			;9907	24 	$ 
	rst 38h			;9908	ff 	. 
	inc de			;9909	13 	. 
	inc bc			;990a	03 	. 
	dec de			;990b	1b 	. 
	dec de			;990c	1b 	. 
	rst 38h			;990d	ff 	. 
	dec e			;990e	1d 	. 
	inc bc			;990f	03 	. 
	ld l,d			;9910	6a 	j 
	ex af,af'			;9911	08 	. 
	ex af,af'			;9912	08 	. 
	ld l,d			;9913	6a 	j 
	rst 38h			;9914	ff 	. 
	inc de			;9915	13 	. 
	inc b			;9916	04 	. 
	rst 38h			;9917	ff 	. 
	inc h			;9918	24 	$ 
	inc bc			;9919	03 	. 
	ld a,0ffh		;991a	3e ff 	> . 
	ccf			;991c	3f 	? 
	inc bc			;991d	03 	. 
	ex af,af'			;991e	08 	. 
	ex af,af'			;991f	08 	. 
	rst 38h			;9920	ff 	. 
	inc h			;9921	24 	$ 
	inc b			;9922	04 	. 
	rst 38h			;9923	ff 	. 
	ld c,l			;9924	4d 	M 
	inc b			;9925	04 	. 
	inc h			;9926	24 	$ 
	rst 38h			;9927	ff 	. 
	dec e			;9928	1d 	. 
	inc b			;9929	04 	. 
	rst 38h			;992a	ff 	. 
	ccf			;992b	3f 	? 
	inc bc			;992c	03 	. 
	rst 38h			;992d	ff 	. 
	ld c,l			;992e	4d 	M 
	inc bc			;992f	03 	. 
	rst 38h			;9930	ff 	. 
	inc h			;9931	24 	$ 
	inc bc			;9932	03 	. 
	ld a,0ffh		;9933	3e ff 	> . 
	ld hl,(03e04h)		;9935	2a 04 3e 	* . > 
	rst 38h			;9938	ff 	. 
	ld l,d			;9939	6a 	j 
	dec b			;993a	05 	. 
	rst 38h			;993b	ff 	. 
	ld hl,(0ff05h)		;993c	2a 05 ff 	* . . 
	inc de			;993f	13 	. 
	inc bc			;9940	03 	. 
	inc h			;9941	24 	$ 
	inc h			;9942	24 	$ 
	rst 38h			;9943	ff 	. 
	ld hl,(06a06h)		;9944	2a 06 6a 	* . j 
	ld hl,(06a6ah)		;9947	2a 6a 6a 	* j j 
	rst 38h			;994a	ff 	. 
	dec e			;994b	1d 	. 
	inc bc			;994c	03 	. 
	ld l,d			;994d	6a 	j 
	rst 38h			;994e	ff 	. 
	nop			;994f	00 	. 
	ld c,0ffh		;9950	0e ff 	. . 
	nop			;9952	00 	. 
	ld c,001h		;9953	0e 01 	. . 
	rst 38h			;9955	ff 	. 
	nop			;9956	00 	. 
	rlca			;9957	07 	. 
	rst 38h			;9958	ff 	. 
	ld (bc),a			;9959	02 	. 
	inc bc			;995a	03 	. 
	rst 38h			;995b	ff 	. 
	inc bc			;995c	03 	. 
	ld a,(bc)			;995d	0a 	. 
	inc b			;995e	04 	. 
	inc b			;995f	04 	. 
	rst 38h			;9960	ff 	. 
	dec b			;9961	05 	. 
	jr $+1		;9962	18 ff 	. . 
	ld b,003h		;9964	06 03 	. . 
	rst 38h			;9966	ff 	. 
	rlca			;9967	07 	. 
	inc bc			;9968	03 	. 
	rst 38h			;9969	ff 	. 
	ex af,af'			;996a	08 	. 
	dec bc			;996b	0b 	. 
	add hl,bc			;996c	09 	. 
	add hl,bc			;996d	09 	. 
	rst 38h			;996e	ff 	. 
	ld a,(bc)			;996f	0a 	. 
	inc bc			;9970	03 	. 
	rst 38h			;9971	ff 	. 
	dec bc			;9972	0b 	. 
	inc bc			;9973	03 	. 
	inc c			;9974	0c 	. 
	inc c			;9975	0c 	. 
	rst 38h			;9976	ff 	. 
	dec c			;9977	0d 	. 
	ld h,0ffh		;9978	26 ff 	& . 
	ld c,003h		;997a	0e 03 	. . 
	rst 38h			;997c	ff 	. 
	rrca			;997d	0f 	. 
	rra			;997e	1f 	. 
	rst 38h			;997f	ff 	. 
	djnz $+21		;9980	10 13 	. . 
	ld de,01312h		;9982	11 12 13 	. . . 
	inc de			;9985	13 	. 
	rst 38h			;9986	ff 	. 
	inc d			;9987	14 	. 
	inc b			;9988	04 	. 
	rst 38h			;9989	ff 	. 
	dec d			;998a	15 	. 
	inc bc			;998b	03 	. 
	ld d,017h		;998c	16 17 	. . 
	jr $+1		;998e	18 ff 	. . 
	add hl,de			;9990	19 	. 
	inc bc			;9991	03 	. 
	rst 38h			;9992	ff 	. 
	ld a,(de)			;9993	1a 	. 
	inc b			;9994	04 	. 
	rst 38h			;9995	ff 	. 
	dec de			;9996	1b 	. 
	inc bc			;9997	03 	. 
	rst 38h			;9998	ff 	. 
	inc e			;9999	1c 	. 
	inc bc			;999a	03 	. 
	rst 38h			;999b	ff 	. 
	dec e			;999c	1d 	. 
	inc bc			;999d	03 	. 
	rst 38h			;999e	ff 	. 
	ld e,003h		;999f	1e 03 	. . 
	rst 38h			;99a1	ff 	. 
	rra			;99a2	1f 	. 
	inc bc			;99a3	03 	. 
	rst 38h			;99a4	ff 	. 
	jr nz,$+5		;99a5	20 03 	  . 
	rst 38h			;99a7	ff 	. 
	ld hl,0ff04h		;99a8	21 04 ff 	! . . 
	ld (02304h),hl		;99ab	22 04 23 	" . # 
	inc h			;99ae	24 	$ 
	dec h			;99af	25 	% 
	ld h,027h		;99b0	26 27 	& ' 
	jr z,$+42		;99b2	28 28 	( ( 
	daa			;99b4	27 	' 
	add hl,hl			;99b5	29 	) 
	ld hl,(02c2bh)		;99b6	2a 2b 2c 	* + , 
	rst 38h			;99b9	ff 	. 
	dec l			;99ba	2d 	- 
	inc b			;99bb	04 	. 
	rst 38h			;99bc	ff 	. 
	ld l,05ah		;99bd	2e 5a 	. Z 
	cpl			;99bf	2f 	/ 
	cpl			;99c0	2f 	/ 
	jr nc,$+51		;99c1	30 31 	0 1 
	ld (0ff32h),a		;99c3	32 32 ff 	2 2 . 
	inc sp			;99c6	33 	3 
	inc bc			;99c7	03 	. 
	ld (03132h),a		;99c8	32 32 31 	2 2 1 
	jr nc,$+49		;99cb	30 2f 	0 / 
	cpl			;99cd	2f 	/ 
	rst 38h			;99ce	ff 	. 
	ld l,01ch		;99cf	2e 1c 	. . 
	rst 38h			;99d1	ff 	. 
	inc (hl)			;99d2	34 	4 
	inc bc			;99d3	03 	. 
	dec (hl)			;99d4	35 	5 
	dec (hl)			;99d5	35 	5 
	rst 38h			;99d6	ff 	. 
	ld (hl),003h		;99d7	36 03 	6 . 
	rst 38h			;99d9	ff 	. 
	scf			;99da	37 	7 
	dec de			;99db	1b 	. 
	rst 38h			;99dc	ff 	. 
	jr c,$+12		;99dd	38 0a 	8 . 
	rst 38h			;99df	ff 	. 
	scf			;99e0	37 	7 
	inc de			;99e1	13 	. 
	rst 38h			;99e2	ff 	. 
	add hl,sp			;99e3	39 	9 
	ld c,0ffh		;99e4	0e ff 	. . 
	ld a,(0ff05h)		;99e6	3a 05 ff 	: . . 
	dec sp			;99e9	3b 	; 
	ld d,053h		;99ea	16 53 	. S 
	ld (bc),a			;99ec	02 	. 
	call pe,0530eh		;99ed	ec 0e 53 	. . S 
	add hl,bc			;99f0	09 	. 
	xor 0aeh		;99f1	ee ae 	. . 
	ld d,e			;99f3	53 	S 
	add hl,bc			;99f4	09 	. 
	call pe,0530eh		;99f5	ec 0e 53 	. . S 
	ld (bc),a			;99f8	02 	. 
	ret nz			;99f9	c0 	. 
	ld d,b			;99fa	50 	P 
	inc bc			;99fb	03 	. 
	inc bc			;99fc	03 	. 
	ld d,e			;99fd	53 	S 
	ld (bc),a			;99fe	02 	. 
	call pe,0530eh		;99ff	ec 0e 53 	. . S 
	ld (bc),a			;9a02	02 	. 
	ret nz			;9a03	c0 	. 
	nop			;9a04	00 	. 
	ld a,(0030bh)		;9a05	3a 0b 03 	: . . 
	ld d,e			;9a08	53 	S 
	ld (bc),a			;9a09	02 	. 
	call pe,0530eh		;9a0a	ec 0e 53 	. . S 
	ld (bc),a			;9a0d	02 	. 
	ret nz			;9a0e	c0 	. 
	nop			;9a0f	00 	. 
	ccf			;9a10	3f 	? 
	jp 05303h		;9a11	c3 03 53 	. . S 
	ld (bc),a			;9a14	02 	. 
	call pe,0530eh		;9a15	ec 0e 53 	. . S 
	ld (bc),a			;9a18	02 	. 
	ex de,hl			;9a19	eb 	. 
	xor e			;9a1a	ab 	. 
	xor (hl)			;9a1b	ae 	. 
	xor e			;9a1c	ab 	. 
	inc bc			;9a1d	03 	. 
	ret p			;9a1e	f0 	. 
	ld d,b			;9a1f	50 	P 
	ex af,af'			;9a20	08 	. 
	inc bc			;9a21	03 	. 
	inc bc			;9a22	03 	. 
	ret p			;9a23	f0 	. 
	ld d,b			;9a24	50 	P 
	inc b			;9a25	04 	. 
	ld a,(bc)			;9a26	0a 	. 
	cp a			;9a27	bf 	. 
	rst 38h			;9a28	ff 	. 
	xor b			;9a29	a8 	. 
	inc bc			;9a2a	03 	. 
	inc bc			;9a2b	03 	. 
	ret p			;9a2c	f0 	. 
	ld d,b			;9a2d	50 	P 
	inc b			;9a2e	04 	. 
	ld c,0c0h		;9a2f	0e c0 	. . 
	nop			;9a31	00 	. 
	call pe,00303h		;9a32	ec 03 03 	. . . 
	ld d,e			;9a35	53 	S 
	ld b,0c0h		;9a36	06 c0 	. . 
	nop			;9a38	00 	. 
	call m,00303h		;9a39	fc 03 03 	. . . 
	jp m,00252h		;9a3c	fa 52 02 	. R . 
	or b			;9a3f	b0 	. 
	ld d,b			;9a40	50 	P 
	inc b			;9a41	04 	. 
	call m,00303h		;9a42	fc 03 03 	. . . 
	ei			;9a45	fb 	. 
	cp e			;9a46	bb 	. 
	cp e			;9a47	bb 	. 
	or b			;9a48	b0 	. 
	ccf			;9a49	3f 	? 
	ld d,e			;9a4a	53 	S 
	inc bc			;9a4b	03 	. 
	call m,00303h		;9a4c	fc 03 03 	. . . 
	ld d,e			;9a4f	53 	S 
	inc bc			;9a50	03 	. 
	ret p			;9a51	f0 	. 
	ccf			;9a52	3f 	? 
	rst 38h			;9a53	ff 	. 
	ret nz			;9a54	c0 	. 
	ld d,b			;9a55	50 	P 
	ld (bc),a			;9a56	02 	. 
	inc bc			;9a57	03 	. 
	inc bc			;9a58	03 	. 
	or b			;9a59	b0 	. 
	ld d,b			;9a5a	50 	P 
	inc bc			;9a5b	03 	. 
	rlca			;9a5c	07 	. 
	rst 38h			;9a5d	ff 	. 
	ret nz			;9a5e	c0 	. 
	ld d,b			;9a5f	50 	P 
	ld (bc),a			;9a60	02 	. 
	inc bc			;9a61	03 	. 
	inc bc			;9a62	03 	. 
	ret p			;9a63	f0 	. 
	ld d,b			;9a64	50 	P 
	inc bc			;9a65	03 	. 
	rlca			;9a66	07 	. 
	rst 38h			;9a67	ff 	. 
	ret nz			;9a68	c0 	. 
	nop			;9a69	00 	. 
	inc bc			;9a6a	03 	. 
	rst 38h			;9a6b	ff 	. 
	inc bc			;9a6c	03 	. 
	ret p			;9a6d	f0 	. 
	ld d,b			;9a6e	50 	P 
	inc bc			;9a6f	03 	. 
	rlca			;9a70	07 	. 
	rst 38h			;9a71	ff 	. 
	ret nz			;9a72	c0 	. 
	nop			;9a73	00 	. 
	inc bc			;9a74	03 	. 
	xor h			;9a75	ac 	. 
	inc bc			;9a76	03 	. 
	ret p			;9a77	f0 	. 
	ld d,b			;9a78	50 	P 
	inc bc			;9a79	03 	. 
	rlca			;9a7a	07 	. 
	rst 38h			;9a7b	ff 	. 
	ret nz			;9a7c	c0 	. 
	ld d,b			;9a7d	50 	P 
	ld (bc),a			;9a7e	02 	. 
	call m,0f003h		;9a7f	fc 03 f0 	. . . 
	ld c,0aah		;9a82	0e aa 	. . 
	ex de,hl			;9a84	eb 	. 
	cp a			;9a85	bf 	. 
	rst 38h			;9a86	ff 	. 
	ret nz			;9a87	c0 	. 
	ld d,b			;9a88	50 	P 
	ld (bc),a			;9a89	02 	. 
	call m,0f003h		;9a8a	fc 03 f0 	. . . 
	rrca			;9a8d	0f 	. 
	ld d,e			;9a8e	53 	S 
	ld (bc),a			;9a8f	02 	. 
	cp a			;9a90	bf 	. 
	rst 38h			;9a91	ff 	. 
	ret nz			;9a92	c0 	. 
	ld d,b			;9a93	50 	P 
	ld (bc),a			;9a94	02 	. 
	call m,0f00bh		;9a95	fc 0b f0 	. . . 
	rrca			;9a98	0f 	. 
	ld d,e			;9a99	53 	S 
	ld (bc),a			;9a9a	02 	. 
	cp a			;9a9b	bf 	. 
	rst 38h			;9a9c	ff 	. 
	jp pe,0aa80h		;9a9d	ea 80 aa 	. . . 
	call m,0f00bh		;9aa0	fc 0b f0 	. . . 
	ld d,b			;9aa3	50 	P 
	inc bc			;9aa4	03 	. 
	rrca			;9aa5	0f 	. 
	ld d,e			;9aa6	53 	S 
	ld (bc),a			;9aa7	02 	. 
	ret nz			;9aa8	c0 	. 
	rst 38h			;9aa9	ff 	. 
	call m,0fa0fh		;9aaa	fc 0f fa 	. . . 
	ld d,d			;9aad	52 	R 
	ld (bc),a			;9aae	02 	. 
	xor b			;9aaf	a8 	. 
	rrca			;9ab0	0f 	. 
	ld d,e			;9ab1	53 	S 
	ld (bc),a			;9ab2	02 	. 
	ret nz			;9ab3	c0 	. 
	rst 38h			;9ab4	ff 	. 
	call m,0f00fh		;9ab5	fc 0f f0 	. . . 
	ccf			;9ab8	3f 	? 
	ld d,b			;9ab9	50 	P 
	ld (bc),a			;9aba	02 	. 
	rrca			;9abb	0f 	. 
	ld d,e			;9abc	53 	S 
	ld (bc),a			;9abd	02 	. 
	ret nz			;9abe	c0 	. 
	rst 38h			;9abf	ff 	. 
	call m,0f00fh		;9ac0	fc 0f f0 	. . . 
	ccf			;9ac3	3f 	? 
	ld d,b			;9ac4	50 	P 
	ld (bc),a			;9ac5	02 	. 
	rrca			;9ac6	0f 	. 
	ei			;9ac7	fb 	. 
	ret nz			;9ac8	c0 	. 
	ld d,b			;9ac9	50 	P 
	ld (bc),a			;9aca	02 	. 
	call m,0f00fh		;9acb	fc 0f f0 	. . . 
	ccf			;9ace	3f 	? 
	ld d,b			;9acf	50 	P 
	ld (bc),a			;9ad0	02 	. 
	rrca			;9ad1	0f 	. 
	ei			;9ad2	fb 	. 
	ret nz			;9ad3	c0 	. 
	ld d,b			;9ad4	50 	P 
	ld (bc),a			;9ad5	02 	. 
	call m,0f003h		;9ad6	fc 03 f0 	. . . 
	ccf			;9ad9	3f 	? 
	inc bc			;9ada	03 	. 
	ld d,e			;9adb	53 	S 
	ld (bc),a			;9adc	02 	. 
	rst 28h			;9add	ef 	. 
	ret nz			;9ade	c0 	. 
	ld d,b			;9adf	50 	P 
	ld (bc),a			;9ae0	02 	. 
	call m,0f003h		;9ae1	fc 03 f0 	. . . 
	ccf			;9ae4	3f 	? 
	inc bc			;9ae5	03 	. 
	ret p			;9ae6	f0 	. 
	ccf			;9ae7	3f 	? 
	rst 38h			;9ae8	ff 	. 
	ret nz			;9ae9	c0 	. 
	ld d,b			;9aea	50 	P 
	ld (bc),a			;9aeb	02 	. 
	call m,0f003h		;9aec	fc 03 f0 	. . . 
	ccf			;9aef	3f 	? 
	inc bc			;9af0	03 	. 
	call m,0ff03h		;9af1	fc 03 ff 	. . . 
	ret nz			;9af4	c0 	. 
	ld d,b			;9af5	50 	P 
	ld (bc),a			;9af6	02 	. 
	call m,0f003h		;9af7	fc 03 f0 	. . . 
	ccf			;9afa	3f 	? 
	nop			;9afb	00 	. 
	rst 38h			;9afc	ff 	. 
	inc bc			;9afd	03 	. 
	rst 38h			;9afe	ff 	. 
	ret nz			;9aff	c0 	. 
	ld d,b			;9b00	50 	P 
	ld (bc),a			;9b01	02 	. 
	call m,0f003h		;9b02	fc 03 f0 	. . . 
	inc bc			;9b05	03 	. 
	ret nz			;9b06	c0 	. 
	ccf			;9b07	3f 	? 
	inc bc			;9b08	03 	. 
	rst 38h			;9b09	ff 	. 
	ret nz			;9b0a	c0 	. 
	ld d,b			;9b0b	50 	P 
	ld (bc),a			;9b0c	02 	. 
	call m,0f003h		;9b0d	fc 03 f0 	. . . 
	nop			;9b10	00 	. 
	ret p			;9b11	f0 	. 
	ccf			;9b12	3f 	? 
	inc bc			;9b13	03 	. 
	rst 38h			;9b14	ff 	. 
	ret nz			;9b15	c0 	. 
	ld d,b			;9b16	50 	P 
	ld (bc),a			;9b17	02 	. 
	call m,0f003h		;9b18	fc 03 f0 	. . . 
	ld d,b			;9b1b	50 	P 
	ld (bc),a			;9b1c	02 	. 
	ccf			;9b1d	3f 	? 
	inc bc			;9b1e	03 	. 
	rst 38h			;9b1f	ff 	. 
	ret nz			;9b20	c0 	. 
	ld d,b			;9b21	50 	P 
	ld (bc),a			;9b22	02 	. 
	call m,0f003h		;9b23	fc 03 f0 	. . . 
	ld c,0aah		;9b26	0e aa 	. . 
	xor e			;9b28	ab 	. 
	inc bc			;9b29	03 	. 
	rst 38h			;9b2a	ff 	. 
	ret nz			;9b2b	c0 	. 
	ld d,b			;9b2c	50 	P 
	ld (bc),a			;9b2d	02 	. 
	call m,0f003h		;9b2e	fc 03 f0 	. . . 
	ld d,b			;9b31	50 	P 
	inc bc			;9b32	03 	. 
	inc bc			;9b33	03 	. 
	rst 38h			;9b34	ff 	. 
	ret nz			;9b35	c0 	. 
	ld d,b			;9b36	50 	P 
	ld (bc),a			;9b37	02 	. 
	call m,0f003h		;9b38	fc 03 f0 	. . . 
	ccf			;9b3b	3f 	? 
	ld d,e			;9b3c	53 	S 
	inc b			;9b3d	04 	. 
	cp 0c0h		;9b3e	fe c0 	. . 
	rst 28h			;9b40	ef 	. 
	call m,0f003h		;9b41	fc 03 f0 	. . . 
	ccf			;9b44	3f 	? 
	xor d			;9b45	aa 	. 
	add a,d			;9b46	82 	. 
	xor e			;9b47	ab 	. 
	rst 38h			;9b48	ff 	. 
	cp 0c0h		;9b49	fe c0 	. . 
	rst 28h			;9b4b	ef 	. 
	call m,0f003h		;9b4c	fc 03 f0 	. . . 
	ccf			;9b4f	3f 	? 
	xor b			;9b50	a8 	. 
	nop			;9b51	00 	. 
	dec hl			;9b52	2b 	+ 
	rst 38h			;9b53	ff 	. 
	cp 0c0h		;9b54	fe c0 	. . 
	rst 28h			;9b56	ef 	. 
	call m,0f003h		;9b57	fc 03 f0 	. . . 
	ccf			;9b5a	3f 	? 
	and b			;9b5b	a0 	. 
	nop			;9b5c	00 	. 
	dec bc			;9b5d	0b 	. 
	rst 38h			;9b5e	ff 	. 
	cp 0c0h		;9b5f	fe c0 	. . 
	rst 28h			;9b61	ef 	. 
	call m,0f003h		;9b62	fc 03 f0 	. . . 
	ccf			;9b65	3f 	? 
	add a,b			;9b66	80 	. 
	nop			;9b67	00 	. 
	inc bc			;9b68	03 	. 
	rst 38h			;9b69	ff 	. 
	cp 0c0h		;9b6a	fe c0 	. . 
	rst 28h			;9b6c	ef 	. 
	call m,0f003h		;9b6d	fc 03 f0 	. . . 
	ccf			;9b70	3f 	? 
	add a,b			;9b71	80 	. 
	ld d,b			;9b72	50 	P 
	rlca			;9b73	07 	. 
	inc bc			;9b74	03 	. 
	ret p			;9b75	f0 	. 
	ccf			;9b76	3f 	? 
	nop			;9b77	00 	. 
	jr z,$+82		;9b78	28 50 	( P 
	ld b,003h		;9b7a	06 03 	. . 
	ret p			;9b7c	f0 	. 
	ccf			;9b7d	3f 	? 
	add a,b			;9b7e	80 	. 
	nop			;9b7f	00 	. 
	inc bc			;9b80	03 	. 
	rst 38h			;9b81	ff 	. 
	cp 0c0h		;9b82	fe c0 	. . 
	rst 28h			;9b84	ef 	. 
	ld d,e			;9b85	53 	S 
	ld (bc),a			;9b86	02 	. 
	ret p			;9b87	f0 	. 
	ccf			;9b88	3f 	? 
	and b			;9b89	a0 	. 
	nop			;9b8a	00 	. 
	dec bc			;9b8b	0b 	. 
	rst 38h			;9b8c	ff 	. 
	cp 0c0h		;9b8d	fe c0 	. . 
	rst 28h			;9b8f	ef 	. 
	ld d,e			;9b90	53 	S 
	ld (bc),a			;9b91	02 	. 
	ret p			;9b92	f0 	. 
	ccf			;9b93	3f 	? 
	xor b			;9b94	a8 	. 
	nop			;9b95	00 	. 
	dec hl			;9b96	2b 	+ 
	rst 38h			;9b97	ff 	. 
	cp 0c0h		;9b98	fe c0 	. . 
	rst 28h			;9b9a	ef 	. 
	ld d,e			;9b9b	53 	S 
	ld (bc),a			;9b9c	02 	. 
	ret p			;9b9d	f0 	. 
	ccf			;9b9e	3f 	? 
	xor d			;9b9f	aa 	. 
	add a,d			;9ba0	82 	. 
	xor e			;9ba1	ab 	. 
	rst 38h			;9ba2	ff 	. 
	cp 0c0h		;9ba3	fe c0 	. . 
	rst 28h			;9ba5	ef 	. 
	ld d,e			;9ba6	53 	S 
	ld (bc),a			;9ba7	02 	. 
	ret p			;9ba8	f0 	. 
	ccf			;9ba9	3f 	? 
	ld d,e			;9baa	53 	S 
	inc b			;9bab	04 	. 
	cp 0c0h		;9bac	fe c0 	. . 
	rst 28h			;9bae	ef 	. 
	ld d,e			;9baf	53 	S 
	ld (bc),a			;9bb0	02 	. 
	ret po			;9bb1	e0 	. 
	inc l			;9bb2	2c 	, 
	ld d,b			;9bb3	50 	P 
	ex af,af'			;9bb4	08 	. 
	ld c,0f0h		;9bb5	0e f0 	. . 
	inc a			;9bb7	3c 	< 
	ld d,b			;9bb8	50 	P 
	dec b			;9bb9	05 	. 
	inc bc			;9bba	03 	. 
	rst 38h			;9bbb	ff 	. 
	ret p			;9bbc	f0 	. 
	rrca			;9bbd	0f 	. 
	ret p			;9bbe	f0 	. 
	inc a			;9bbf	3c 	< 
	ld d,b			;9bc0	50 	P 
	dec b			;9bc1	05 	. 
	inc bc			;9bc2	03 	. 
	ld d,b			;9bc3	50 	P 
	ld (bc),a			;9bc4	02 	. 
	rrca			;9bc5	0f 	. 
	ret p			;9bc6	f0 	. 
	ccf			;9bc7	3f 	? 
	ld d,e			;9bc8	53 	S 
	ld b,050h		;9bc9	06 50 	. P 
	ld (bc),a			;9bcb	02 	. 
	rrca			;9bcc	0f 	. 
	ret p			;9bcd	f0 	. 
	ld a,0bah		;9bce	3e ba 	> . 
	ex de,hl			;9bd0	eb 	. 
	xor (hl)			;9bd1	ae 	. 
	cp d			;9bd2	ba 	. 
	ex de,hl			;9bd3	eb 	. 
	xor (hl)			;9bd4	ae 	. 
	cp a			;9bd5	bf 	. 
	ret p			;9bd6	f0 	. 
	rrca			;9bd7	0f 	. 
	ret p			;9bd8	f0 	. 
	ld d,b			;9bd9	50 	P 
	add hl,bc			;9bda	09 	. 
	rrca			;9bdb	0f 	. 
	ret p			;9bdc	f0 	. 
	ld a,052h		;9bdd	3e 52 	> R 
	ex af,af'			;9bdf	08 	. 
	cp a			;9be0	bf 	. 
	ret p			;9be1	f0 	. 
	ccf			;9be2	3f 	? 
	ld d,e			;9be3	53 	S 
	inc bc			;9be4	03 	. 
	ret p			;9be5	f0 	. 
	ld d,b			;9be6	50 	P 
	inc b			;9be7	04 	. 
	rra			;9be8	1f 	. 
	ret p			;9be9	f0 	. 
	ld d,b			;9bea	50 	P 
	ld (bc),a			;9beb	02 	. 
	ccf			;9bec	3f 	? 
	ret p			;9bed	f0 	. 
	ld d,b			;9bee	50 	P 
	dec b			;9bef	05 	. 
	rra			;9bf0	1f 	. 
	ret p			;9bf1	f0 	. 
	ld d,b			;9bf2	50 	P 
	ld (bc),a			;9bf3	02 	. 
	ccf			;9bf4	3f 	? 
	ret p			;9bf5	f0 	. 
	ld a,(050ach)		;9bf6	3a ac 50 	: . P 
	inc bc			;9bf9	03 	. 
	rra			;9bfa	1f 	. 
	ret p			;9bfb	f0 	. 
	ld d,b			;9bfc	50 	P 
	ld (bc),a			;9bfd	02 	. 
	ld a,0f0h		;9bfe	3e f0 	> . 
	ccf			;9c00	3f 	? 
	rst 38h			;9c01	ff 	. 
	or b			;9c02	b0 	. 
	ld d,b			;9c03	50 	P 
	ld (bc),a			;9c04	02 	. 
	rst 28h			;9c05	ef 	. 
	ret p			;9c06	f0 	. 
	ld d,b			;9c07	50 	P 
	ld (bc),a			;9c08	02 	. 
	ccf			;9c09	3f 	? 
	ret p			;9c0a	f0 	. 
	ccf			;9c0b	3f 	? 
	rst 38h			;9c0c	ff 	. 
	cp 0c0h		;9c0d	fe c0 	. . 
	rst 28h			;9c0f	ef 	. 
	rst 38h			;9c10	ff 	. 
	ret p			;9c11	f0 	. 
	ld d,b			;9c12	50 	P 
	inc b			;9c13	04 	. 
	ccf			;9c14	3f 	? 
	rst 38h			;9c15	ff 	. 
	cp 0c0h		;9c16	fe c0 	. . 
	rst 28h			;9c18	ef 	. 
	rst 38h			;9c19	ff 	. 
	cp 0fbh		;9c1a	fe fb 	. . 
	rst 28h			;9c1c	ef 	. 
	cp (hl)			;9c1d	be 	. 
	ei			;9c1e	fb 	. 
	ld d,e			;9c1f	53 	S 
	ld (bc),a			;9c20	02 	. 
	cp 0c0h		;9c21	fe c0 	. . 
	rst 28h			;9c23	ef 	. 
	rst 38h			;9c24	ff 	. 
	ld d,b			;9c25	50 	P 
	nop			;9c26	00 	. 
	adc a,l			;9c27	8d 	. 
	rst 38h			;9c28	ff 	. 
	rra			;9c29	1f 	. 
	inc b			;9c2a	04 	. 
	dec h			;9c2b	25 	% 
	ld a,(de)			;9c2c	1a 	. 
	dec e			;9c2d	1d 	. 
	inc b			;9c2e	04 	. 
	rlca			;9c2f	07 	. 
	djnz $+21		;9c30	10 13 	. . 
	ld a,(de)			;9c32	1a 	. 
	dec e			;9c33	1d 	. 
	ld a,(de)			;9c34	1a 	. 
	dec e			;9c35	1d 	. 
	ld a,(de)			;9c36	1a 	. 
	dec e			;9c37	1d 	. 
	dec de			;9c38	1b 	. 
	ld (00905h),hl		;9c39	22 05 09 	" . . 
	dec c			;9c3c	0d 	. 
	dec de			;9c3d	1b 	. 
	ld (0221bh),hl		;9c3e	22 1b 22 	" . " 
	dec de			;9c41	1b 	. 
	ld (0221bh),hl		;9c42	22 1b 22 	" . " 
	inc b			;9c45	04 	. 
	ld b,008h		;9c46	06 08 	. . 
	ld a,(bc)			;9c48	0a 	. 
	inc c			;9c49	0c 	. 
	inc b			;9c4a	04 	. 
	ld c,00ch		;9c4b	0e 0c 	. . 
	ld a,(bc)			;9c4d	0a 	. 
	ex af,af'			;9c4e	08 	. 
	ld b,004h		;9c4f	06 04 	. . 
	add hl,de			;9c51	19 	. 
	dec de			;9c52	1b 	. 
	dec e			;9c53	1d 	. 
	rra			;9c54	1f 	. 
	ld hl,00a28h		;9c55	21 28 0a 	! ( . 
	ex af,af'			;9c58	08 	. 
	inc c			;9c59	0c 	. 
	inc e			;9c5a	1c 	. 
	rra			;9c5b	1f 	. 
	ld b,00eh		;9c5c	06 0e 	. . 
	inc b			;9c5e	04 	. 
	djnz $+30		;9c5f	10 1c 	. . 
	rra			;9c61	1f 	. 
	jr z,$+5		;9c62	28 03 	( . 
	ld c,01ch		;9c64	0e 1c 	. . 
	rra			;9c66	1f 	. 
	rrca			;9c67	0f 	. 
	ld de,01f1ch		;9c68	11 1c 1f 	. . . 
	inc e			;9c6b	1c 	. 
	rra			;9c6c	1f 	. 
	ld (bc),a			;9c6d	02 	. 
	inc b			;9c6e	04 	. 
	daa			;9c6f	27 	' 
	add hl,hl			;9c70	29 	) 
	ex af,af'			;9c71	08 	. 
	dec bc			;9c72	0b 	. 
	ld c,011h		;9c73	0e 11 	. . 
	inc d			;9c75	14 	. 
	rla			;9c76	17 	. 
	ld a,(de)			;9c77	1a 	. 
	dec e			;9c78	1d 	. 
	jr nz,$+37		;9c79	20 23 	  # 
	ld h,0ffh		;9c7b	26 ff 	& . 
	rlca			;9c7d	07 	. 
	inc b			;9c7e	04 	. 
	inc d			;9c7f	14 	. 
	ld d,0ffh		;9c80	16 ff 	. . 
	rlca			;9c82	07 	. 
	inc b			;9c83	04 	. 
	ex af,af'			;9c84	08 	. 
	ld c,014h		;9c85	0e 14 	. . 
	add hl,de			;9c87	19 	. 
	rra			;9c88	1f 	. 
	dec h			;9c89	25 	% 
	jr nz,$+36		;9c8a	20 22 	  " 
	inc h			;9c8c	24 	$ 
	ld h,028h		;9c8d	26 28 	& ( 
	jr nz,$+36		;9c8f	20 22 	  " 
	inc h			;9c91	24 	$ 
	ld h,028h		;9c92	26 28 	& ( 
	ex af,af'			;9c94	08 	. 
	dec bc			;9c95	0b 	. 
	ld c,011h		;9c96	0e 11 	. . 
	ld e,020h		;9c98	1e 20 	.   
	ld (02624h),hl		;9c9a	22 24 26 	" $ & 
	ld e,020h		;9c9d	1e 20 	.   
	ld (02624h),hl		;9c9f	22 24 26 	" $ & 
	ld e,020h		;9ca2	1e 20 	.   
	ld h,d			;9ca4	62 	b 
	inc h			;9ca5	24 	$ 
	ld h,01eh		;9ca6	26 1e 	& . 
	jr nz,$+36		;9ca8	20 22 	  " 
	inc h			;9caa	24 	$ 
	ld h,01eh		;9cab	26 1e 	& . 
	jr nz,$+36		;9cad	20 22 	  " 
	inc h			;9caf	24 	$ 
	ld h,006h		;9cb0	26 06 	& . 
	ld (03e38h),a		;9cb2	32 38 3e 	2 8 > 
	ld b,h			;9cb5	44 	D 
	ld b,(hl)			;9cb6	46 	F 
	adc a,b			;9cb7	88 	. 
	adc a,b			;9cb8	88 	. 
	rst 38h			;9cb9	ff 	. 
	adc a,h			;9cba	8c 	. 
	inc b			;9cbb	04 	. 
	adc a,(hl)			;9cbc	8e 	. 
	adc a,(hl)			;9cbd	8e 	. 
	sub h			;9cbe	94 	. 
	sub h			;9cbf	94 	. 
	sbc a,d			;9cc0	9a 	. 
	sbc a,d			;9cc1	9a 	. 
	or d			;9cc2	b2 	. 
	or d			;9cc3	b2 	. 
	rst 38h			;9cc4	ff 	. 
	cp b			;9cc5	b8 	. 
	inc bc			;9cc6	03 	. 
	ret nz			;9cc7	c0 	. 
	ret nz			;9cc8	c0 	. 
	adc a,0ceh		;9cc9	ce ce 	. . 
	call c,0eadch		;9ccb	dc dc ea 	. . . 
	jp pe,0fefah		;9cce	ea fa fe 	. . . 
	ld (bc),a			;9cd1	02 	. 
	ld b,00ah		;9cd2	06 0a 	. . 
	ld c,00eh		;9cd4	0e 0e 	. . 
	ld (de),a			;9cd6	12 	. 
	ld d,01ah		;9cd7	16 1a 	. . 
	ld e,022h		;9cd9	1e 22 	. " 
	rst 38h			;9cdb	ff 	. 
	jr nc,$+7		;9cdc	30 05 	0 . 
	ld b,h			;9cde	44 	D 
	ld c,d			;9cdf	4a 	J 
	rst 38h			;9ce0	ff 	. 
	ld c,(hl)			;9ce1	4e 	N 
	inc b			;9ce2	04 	. 
	ld d,d			;9ce3	52 	R 
	ld d,d			;9ce4	52 	R 
	ld d,(hl)			;9ce5	56 	V 
	ld d,(hl)			;9ce6	56 	V 
	ld e,d			;9ce7	5a 	Z 
	ld e,d			;9ce8	5a 	Z 
	ld e,h			;9ce9	5c 	\ 
	ld a,h			;9cea	7c 	| 
	adc a,d			;9ceb	8a 	. 
	adc a,b			;9cec	88 	. 
	adc a,b			;9ced	88 	. 
	sub d			;9cee	92 	. 
	sub d			;9cef	92 	. 
	sbc a,b			;9cf0	98 	. 
	sbc a,b			;9cf1	98 	. 
	xor d			;9cf2	aa 	. 
	xor d			;9cf3	aa 	. 
	xor (hl)			;9cf4	ae 	. 
	xor (hl)			;9cf5	ae 	. 
	or (hl)			;9cf6	b6 	. 
	or (hl)			;9cf7	b6 	. 
	rst 38h			;9cf8	ff 	. 
	ld e,00bh		;9cf9	1e 0b 	. . 
	ld d,(hl)			;9cfb	56 	V 
	ld e,d			;9cfc	5a 	Z 
	ld e,(hl)			;9cfd	5e 	^ 
	rst 38h			;9cfe	ff 	. 
	ld h,d			;9cff	62 	b 
	inc bc			;9d00	03 	. 
	ld h,(hl)			;9d01	66 	f 
	ld l,d			;9d02	6a 	j 
	ld l,(hl)			;9d03	6e 	n 
	ld (hl),d			;9d04	72 	r 
	rst 38h			;9d05	ff 	. 
	adc a,h			;9d06	8c 	. 
	ld b,0ffh		;9d07	06 ff 	. . 
	sbc a,h			;9d09	9c 	. 
	dec b			;9d0a	05 	. 
	rst 38h			;9d0b	ff 	. 
	xor (hl)			;9d0c	ae 	. 
	dec b			;9d0d	05 	. 
	rst 38h			;9d0e	ff 	. 
	ret pe			;9d0f	e8 	. 
	inc b			;9d10	04 	. 
	rst 38h			;9d11	ff 	. 
	inc (hl)			;9d12	34 	4 
	dec b			;9d13	05 	. 
	rst 38h			;9d14	ff 	. 
	jr c,$+7		;9d15	38 05 	8 . 
	rst 38h			;9d17	ff 	. 
	inc a			;9d18	3c 	< 
	dec b			;9d19	05 	. 
	rst 38h			;9d1a	ff 	. 
	ld b,b			;9d1b	40 	@ 
	dec b			;9d1c	05 	. 
	rst 38h			;9d1d	ff 	. 
	ld b,h			;9d1e	44 	D 
	dec b			;9d1f	05 	. 
	ld c,d			;9d20	4a 	J 
	rst 38h			;9d21	ff 	. 
	ld c,h			;9d22	4c 	L 
	inc b			;9d23	04 	. 
	ld l,b			;9d24	68 	h 
	ld d,b			;9d25	50 	P 
	ld d,b			;9d26	50 	P 
	rst 38h			;9d27	ff 	. 
	adc a,h			;9d28	8c 	. 
	inc b			;9d29	04 	. 
	rst 38h			;9d2a	ff 	. 
	ld d,b			;9d2b	50 	P 
	ld b,0ffh		;9d2c	06 ff 	. . 
	adc a,h			;9d2e	8c 	. 
	rrca			;9d2f	0f 	. 
	rst 38h			;9d30	ff 	. 
	adc a,l			;9d31	8d 	. 
	inc bc			;9d32	03 	. 
	ld bc,08dffh		;9d33	01 ff 8d 	. . . 
	dec bc			;9d36	0b 	. 
	ld bc,08dffh		;9d37	01 ff 8d 	. . . 
	inc bc			;9d3a	03 	. 
	ld bc,0ff01h		;9d3b	01 01 ff 	. . . 
	adc a,l			;9d3e	8d 	. 
	inc b			;9d3f	04 	. 
	rst 38h			;9d40	ff 	. 
	ld bc,05103h		;9d41	01 03 51 	. . Q 
	ld d,c			;9d44	51 	Q 
	ld bc,07901h		;9d45	01 01 79 	. . y 
	ld a,c			;9d48	79 	y 
	ld bc,0018dh		;9d49	01 8d 01 	. . . 
	ld bc,079ffh		;9d4c	01 ff 79 	. . y 
	inc b			;9d4f	04 	. 
	rst 38h			;9d50	ff 	. 
	ld a,(bc)			;9d51	0a 	. 
	rrca			;9d52	0f 	. 
	ld (bc),a			;9d53	02 	. 
	ld (bc),a			;9d54	02 	. 
	rst 38h			;9d55	ff 	. 
	ld a,(bc)			;9d56	0a 	. 
	inc b			;9d57	04 	. 
	rst 38h			;9d58	ff 	. 
	ld (de),a			;9d59	12 	. 
	ld b,0ffh		;9d5a	06 ff 	. . 
	ld a,d			;9d5c	7a 	z 
	ld a,(bc)			;9d5d	0a 	. 
	rst 38h			;9d5e	ff 	. 
	ld d,d			;9d5f	52 	R 
	inc b			;9d60	04 	. 
	xor a			;9d61	af 	. 
	and e			;9d62	a3 	. 
	or a			;9d63	b7 	. 
	and e			;9d64	a3 	. 
	xor a			;9d65	af 	. 
	sbc a,a			;9d66	9f 	. 
	rst 38h			;9d67	ff 	. 
	sub e			;9d68	93 	. 
	inc bc			;9d69	03 	. 
	sbc a,a			;9d6a	9f 	. 
	or a			;9d6b	b7 	. 
	sub e			;9d6c	93 	. 
	sbc a,e			;9d6d	9b 	. 
	sub e			;9d6e	93 	. 
	or a			;9d6f	b7 	. 
	sbc a,a			;9d70	9f 	. 
	rst 38h			;9d71	ff 	. 
	sub e			;9d72	93 	. 
	inc bc			;9d73	03 	. 
	sbc a,a			;9d74	9f 	. 
	xor a			;9d75	af 	. 
	and e			;9d76	a3 	. 
	or a			;9d77	b7 	. 
	and e			;9d78	a3 	. 
	xor a			;9d79	af 	. 
	adc a,a			;9d7a	8f 	. 
	rst 38h			;9d7b	ff 	. 
	inc b			;9d7c	04 	. 
	inc b			;9d7d	04 	. 
	ld a,008h		;9d7e	3e 08 	> . 
	ex af,af'			;9d80	08 	. 
	rst 38h			;9d81	ff 	. 
	ld c,l			;9d82	4d 	M 
	inc b			;9d83	04 	. 
	rst 38h			;9d84	ff 	. 
	ex af,af'			;9d85	08 	. 
	ld b,0ffh		;9d86	06 ff 	. . 
	dec e			;9d88	1d 	. 
	ld (de),a			;9d89	12 	. 
	ld c,l			;9d8a	4d 	M 
	rst 38h			;9d8b	ff 	. 
	dec e			;9d8c	1d 	. 
	dec bc			;9d8d	0b 	. 
	ld c,l			;9d8e	4d 	M 
	rst 38h			;9d8f	ff 	. 
	dec e			;9d90	1d 	. 
	inc bc			;9d91	03 	. 
	ld c,l			;9d92	4d 	M 
	ld c,l			;9d93	4d 	M 
	rst 38h			;9d94	ff 	. 
	dec e			;9d95	1d 	. 
	inc b			;9d96	04 	. 
	rst 38h			;9d97	ff 	. 
	ld c,l			;9d98	4d 	M 
	inc bc			;9d99	03 	. 
	ex af,af'			;9d9a	08 	. 
	ex af,af'			;9d9b	08 	. 
	ld c,l			;9d9c	4d 	M 
	ld c,l			;9d9d	4d 	M 
	ld hl,(04d2ah)		;9d9e	2a 2a 4d 	* * M 
	dec e			;9da1	1d 	. 
	ld c,l			;9da2	4d 	M 
	ld c,l			;9da3	4d 	M 
	rst 38h			;9da4	ff 	. 
	ld hl,(0ff04h)		;9da5	2a 04 ff 	* . . 
	inc de			;9da8	13 	. 
	rrca			;9da9	0f 	. 
	ld c,l			;9daa	4d 	M 
	ld c,l			;9dab	4d 	M 
	rst 38h			;9dac	ff 	. 
	inc de			;9dad	13 	. 
	inc b			;9dae	04 	. 
	rst 38h			;9daf	ff 	. 
	ld l,d			;9db0	6a 	j 
	ld b,0ffh		;9db1	06 ff 	. . 
	ld hl,(0ff0ah)		;9db3	2a 0a ff 	* . . 
	ex af,af'			;9db6	08 	. 
	inc b			;9db7	04 	. 
	rst 38h			;9db8	ff 	. 
	dec hl			;9db9	2b 	+ 
	ld b,0ffh		;9dba	06 ff 	. . 
	dec e			;9dbc	1d 	. 
	inc bc			;9dbd	03 	. 
	dec hl			;9dbe	2b 	+ 
	dec hl			;9dbf	2b 	+ 
	dec e			;9dc0	1d 	. 
	rra			;9dc1	1f 	. 
	dec e			;9dc2	1d 	. 
	dec hl			;9dc3	2b 	+ 
	dec hl			;9dc4	2b 	+ 
	rst 38h			;9dc5	ff 	. 
	dec e			;9dc6	1d 	. 
	inc bc			;9dc7	03 	. 
	rst 38h			;9dc8	ff 	. 
	dec hl			;9dc9	2b 	+ 
	ld b,01dh		;9dca	06 1d 	. . 
	nop			;9dcc	00 	. 
	nop			;9dcd	00 	. 
	ld bc,00302h		;9dce	01 02 03 	. . . 
	inc b			;9dd1	04 	. 
	dec b			;9dd2	05 	. 
	ld b,007h		;9dd3	06 07 	. . 
	ex af,af'			;9dd5	08 	. 
	add hl,bc			;9dd6	09 	. 
	ld a,(bc)			;9dd7	0a 	. 
	dec bc			;9dd8	0b 	. 
	inc c			;9dd9	0c 	. 
	dec c			;9dda	0d 	. 
	ld c,00fh		;9ddb	0e 0f 	. . 
	djnz $+19		;9ddd	10 11 	. . 
	ld (de),a			;9ddf	12 	. 
	rst 38h			;9de0	ff 	. 
	inc de			;9de1	13 	. 
	dec c			;9de2	0d 	. 
	rst 38h			;9de3	ff 	. 
	inc d			;9de4	14 	. 
	inc bc			;9de5	03 	. 
	rst 38h			;9de6	ff 	. 
	dec d			;9de7	15 	. 
	inc bc			;9de8	03 	. 
	rst 38h			;9de9	ff 	. 
	ld d,004h		;9dea	16 04 	. . 
	rst 38h			;9dec	ff 	. 
	rla			;9ded	17 	. 
	dec b			;9dee	05 	. 
	rst 38h			;9def	ff 	. 
	jr $+7		;9df0	18 05 	. . 
	rst 38h			;9df2	ff 	. 
	add hl,de			;9df3	19 	. 
	ld a,(bc)			;9df4	0a 	. 
	rst 38h			;9df5	ff 	. 
	ld a,(de)			;9df6	1a 	. 
	inc b			;9df7	04 	. 
	dec de			;9df8	1b 	. 
	inc e			;9df9	1c 	. 
	inc e			;9dfa	1c 	. 
	rst 38h			;9dfb	ff 	. 
	dec de			;9dfc	1b 	. 
	inc b			;9dfd	04 	. 
	rst 38h			;9dfe	ff 	. 
	dec e			;9dff	1d 	. 
	inc bc			;9e00	03 	. 
	rst 38h			;9e01	ff 	. 
	ld e,004h		;9e02	1e 04 	. . 
	rst 38h			;9e04	ff 	. 
	rra			;9e05	1f 	. 
	inc b			;9e06	04 	. 
	rst 38h			;9e07	ff 	. 
	jr nz,$+8		;9e08	20 06 	  . 
	rst 38h			;9e0a	ff 	. 
	ld hl,0ff0bh		;9e0b	21 0b ff 	! . . 
	ld (0ff06h),hl		;9e0e	22 06 ff 	" . . 
	inc hl			;9e11	23 	# 
	inc b			;9e12	04 	. 
	rst 38h			;9e13	ff 	. 
	inc h			;9e14	24 	$ 
	inc bc			;9e15	03 	. 
	rst 38h			;9e16	ff 	. 
	dec h			;9e17	25 	% 
	inc bc			;9e18	03 	. 
	ld h,027h		;9e19	26 27 	& ' 
	daa			;9e1b	27 	' 
	rst 38h			;9e1c	ff 	. 
	jr z,$+5		;9e1d	28 03 	( . 
	add hl,hl			;9e1f	29 	) 
	rst 38h			;9e20	ff 	. 
	ld hl,(0ff05h)		;9e21	2a 05 ff 	* . . 
	dec hl			;9e24	2b 	+ 
	rlca			;9e25	07 	. 
	inc l			;9e26	2c 	, 
	rst 38h			;9e27	ff 	. 
	dec l			;9e28	2d 	- 
	inc bc			;9e29	03 	. 
	rst 38h			;9e2a	ff 	. 
	ld l,006h		;9e2b	2e 06 	. . 
	rst 38h			;9e2d	ff 	. 
	cpl			;9e2e	2f 	/ 
	dec b			;9e2f	05 	. 
	rst 38h			;9e30	ff 	. 
	jr nc,$+9		;9e31	30 07 	0 . 
	rst 38h			;9e33	ff 	. 
	ld sp,0ff03h		;9e34	31 03 ff 	1 . . 
	ld (0ff03h),a		;9e37	32 03 ff 	2 . . 
	inc sp			;9e3a	33 	3 
	dec c			;9e3b	0d 	. 
	rst 38h			;9e3c	ff 	. 
	inc (hl)			;9e3d	34 	4 
	dec b			;9e3e	05 	. 
	rst 38h			;9e3f	ff 	. 
	dec (hl)			;9e40	35 	5 
	inc bc			;9e41	03 	. 
	rst 38h			;9e42	ff 	. 
	ld (hl),004h		;9e43	36 04 	6 . 
	rst 38h			;9e45	ff 	. 
	scf			;9e46	37 	7 
	inc bc			;9e47	03 	. 
	rst 38h			;9e48	ff 	. 
	jr c,$+5		;9e49	38 03 	8 . 
	rst 38h			;9e4b	ff 	. 
	add hl,sp			;9e4c	39 	9 
	ld b,0ffh		;9e4d	06 ff 	. . 
	ld a,(0ff03h)		;9e4f	3a 03 ff 	: . . 
	dec sp			;9e52	3b 	; 
	inc bc			;9e53	03 	. 
	rst 38h			;9e54	ff 	. 
	inc a			;9e55	3c 	< 
	ex af,af'			;9e56	08 	. 
	rst 38h			;9e57	ff 	. 
	dec a			;9e58	3d 	= 
	inc bc			;9e59	03 	. 
	rst 38h			;9e5a	ff 	. 
	ld a,003h		;9e5b	3e 03 	> . 
	rst 38h			;9e5d	ff 	. 
	ccf			;9e5e	3f 	? 
	ex af,af'			;9e5f	08 	. 
	ld b,b			;9e60	40 	@ 
	ld b,b			;9e61	40 	@ 
	ld b,c			;9e62	41 	A 
	rst 38h			;9e63	ff 	. 
	ld b,d			;9e64	42 	B 
	ld b,0ffh		;9e65	06 ff 	. . 
	ld b,e			;9e67	43 	C 
	inc bc			;9e68	03 	. 
	rst 38h			;9e69	ff 	. 
	ld b,h			;9e6a	44 	D 
	inc bc			;9e6b	03 	. 
	ld b,l			;9e6c	45 	E 
	ld b,l			;9e6d	45 	E 
	rst 38h			;9e6e	ff 	. 
	ld b,(hl)			;9e6f	46 	F 
	inc bc			;9e70	03 	. 
	ld b,a			;9e71	47 	G 
	ld b,a			;9e72	47 	G 
	rst 38h			;9e73	ff 	. 
	ld c,b			;9e74	48 	H 
	inc b			;9e75	04 	. 
	rst 38h			;9e76	ff 	. 
	ld c,c			;9e77	49 	I 
	inc bc			;9e78	03 	. 
	rst 38h			;9e79	ff 	. 
	ld c,d			;9e7a	4a 	J 
	rlca			;9e7b	07 	. 
	ld c,e			;9e7c	4b 	K 
	rst 38h			;9e7d	ff 	. 
	ld c,h			;9e7e	4c 	L 
	dec b			;9e7f	05 	. 
	rst 38h			;9e80	ff 	. 
	ld c,l			;9e81	4d 	M 
	inc bc			;9e82	03 	. 
	ld c,(hl)			;9e83	4e 	N 
	rst 38h			;9e84	ff 	. 
	ld c,a			;9e85	4f 	O 
	dec b			;9e86	05 	. 
	rst 38h			;9e87	ff 	. 
	ld d,b			;9e88	50 	P 
	inc bc			;9e89	03 	. 
	ld d,c			;9e8a	51 	Q 
	rst 38h			;9e8b	ff 	. 
	ld d,d			;9e8c	52 	R 
	dec b			;9e8d	05 	. 
	rst 38h			;9e8e	ff 	. 
	ld d,e			;9e8f	53 	S 
	dec b			;9e90	05 	. 
	rst 38h			;9e91	ff 	. 
	ld d,h			;9e92	54 	T 
	inc bc			;9e93	03 	. 
	rst 38h			;9e94	ff 	. 
	ld d,l			;9e95	55 	U 
	dec bc			;9e96	0b 	. 
	rst 38h			;9e97	ff 	. 
	ld d,(hl)			;9e98	56 	V 
	inc b			;9e99	04 	. 
	rst 38h			;9e9a	ff 	. 
	ld d,a			;9e9b	57 	W 
	dec b			;9e9c	05 	. 
	rst 38h			;9e9d	ff 	. 
	ld e,b			;9e9e	58 	X 
	inc b			;9e9f	04 	. 
	rst 38h			;9ea0	ff 	. 
	ld e,c			;9ea1	59 	Y 
	dec b			;9ea2	05 	. 
	rst 38h			;9ea3	ff 	. 
	ld e,d			;9ea4	5a 	Z 
	ld b,0ffh		;9ea5	06 ff 	. . 
	ld e,e			;9ea7	5b 	[ 
	inc de			;9ea8	13 	. 
	rst 38h			;9ea9	ff 	. 
	ld e,h			;9eaa	5c 	\ 
	inc b			;9eab	04 	. 
	rst 38h			;9eac	ff 	. 
	ld e,l			;9ead	5d 	] 
	add hl,bc			;9eae	09 	. 
	rst 38h			;9eaf	ff 	. 
	ld e,(hl)			;9eb0	5e 	^ 
	dec b			;9eb1	05 	. 
	rst 38h			;9eb2	ff 	. 
	ld e,a			;9eb3	5f 	_ 
	inc b			;9eb4	04 	. 
	rst 38h			;9eb5	ff 	. 
	ld h,b			;9eb6	60 	` 
	rlca			;9eb7	07 	. 
	rst 38h			;9eb8	ff 	. 
	ld h,c			;9eb9	61 	a 
	ex af,af'			;9eba	08 	. 
	rst 38h			;9ebb	ff 	. 
	ld h,d			;9ebc	62 	b 
	inc b			;9ebd	04 	. 
	rst 38h			;9ebe	ff 	. 
	ld h,e			;9ebf	63 	c 
	ld b,0ffh		;9ec0	06 ff 	. . 
	ld h,h			;9ec2	64 	d 
	inc bc			;9ec3	03 	. 
	ld h,l			;9ec4	65 	e 
	rst 38h			;9ec5	ff 	. 
	ld h,(hl)			;9ec6	66 	f 
	inc bc			;9ec7	03 	. 
	rst 38h			;9ec8	ff 	. 
	ld h,a			;9ec9	67 	g 
	inc b			;9eca	04 	. 
	ld l,b			;9ecb	68 	h 
	ld l,b			;9ecc	68 	h 
	ld l,c			;9ecd	69 	i 
	rst 38h			;9ece	ff 	. 
	ld l,d			;9ecf	6a 	j 
	inc bc			;9ed0	03 	. 
	rst 38h			;9ed1	ff 	. 
	ld l,e			;9ed2	6b 	k 
	inc b			;9ed3	04 	. 
	rst 38h			;9ed4	ff 	. 
	ld l,h			;9ed5	6c 	l 
	inc b			;9ed6	04 	. 
	rst 38h			;9ed7	ff 	. 
	ld l,l			;9ed8	6d 	m 
	inc b			;9ed9	04 	. 
	rst 38h			;9eda	ff 	. 
	ld l,(hl)			;9edb	6e 	n 
	inc bc			;9edc	03 	. 
	ld l,a			;9edd	6f 	o 
	rst 38h			;9ede	ff 	. 
	ld (hl),b			;9edf	70 	p 
	inc bc			;9ee0	03 	. 
	ld (hl),c			;9ee1	71 	q 
	ld (hl),c			;9ee2	71 	q 
	rst 38h			;9ee3	ff 	. 
	ld (hl),d			;9ee4	72 	r 
	ld b,0ffh		;9ee5	06 ff 	. . 
	ld (hl),e			;9ee7	73 	s 
	djnz $+1		;9ee8	10 ff 	. . 
	ld (hl),h			;9eea	74 	t 
	inc bc			;9eeb	03 	. 
	rst 38h			;9eec	ff 	. 
	ld (hl),l			;9eed	75 	u 
	ld b,076h		;9eee	06 76 	. v 
	halt			;9ef0	76 	v 
	rst 38h			;9ef1	ff 	. 
	ld (hl),l			;9ef2	75 	u 
	add hl,bc			;9ef3	09 	. 
	ld (hl),h			;9ef4	74 	t 
	ld d,e			;9ef5	53 	S 
	ld (bc),a			;9ef6	02 	. 
	call pe,0530eh		;9ef7	ec 0e 53 	. . S 
	add hl,bc			;9efa	09 	. 
	call pe,0530eh		;9efb	ec 0e 53 	. . S 
	ld (bc),a			;9efe	02 	. 
	rst 8			;9eff	cf 	. 
	ld d,e			;9f00	53 	S 
	ld b,0ech		;9f01	06 ec 	. . 
	ld c,053h		;9f03	0e 53 	. S 
	ld (bc),a			;9f05	02 	. 
	rrca			;9f06	0f 	. 
	rst 38h			;9f07	ff 	. 
	jp 00453h		;9f08	c3 53 04 	. S . 
	call pe,0530eh		;9f0b	ec 0e 53 	. . S 
	ld (bc),a			;9f0e	02 	. 
	inc bc			;9f0f	03 	. 
	ret p			;9f10	f0 	. 
	nop			;9f11	00 	. 
	ccf			;9f12	3f 	? 
	ld d,e			;9f13	53 	S 
	inc bc			;9f14	03 	. 
	call pe,0530eh		;9f15	ec 0e 53 	. . S 
	ld (bc),a			;9f18	02 	. 
	ret nz			;9f19	c0 	. 
	ld d,b			;9f1a	50 	P 
	inc bc			;9f1b	03 	. 
	ld d,e			;9f1c	53 	S 
	inc bc			;9f1d	03 	. 
	call pe,0530eh		;9f1e	ec 0e 53 	. . S 
	ld (bc),a			;9f21	02 	. 
	ret nz			;9f22	c0 	. 
	nop			;9f23	00 	. 
	and b			;9f24	a0 	. 
	rrca			;9f25	0f 	. 
	ld d,e			;9f26	53 	S 
	inc bc			;9f27	03 	. 
	call pe,0530eh		;9f28	ec 0e 53 	. . S 
	ld (bc),a			;9f2b	02 	. 
	ret p			;9f2c	f0 	. 
	and b			;9f2d	a0 	. 
	xor b			;9f2e	a8 	. 
	ccf			;9f2f	3f 	? 
	ld d,e			;9f30	53 	S 
	inc bc			;9f31	03 	. 
	call pe,0530eh		;9f32	ec 0e 53 	. . S 
	ld (bc),a			;9f35	02 	. 
	ret nz			;9f36	c0 	. 
	and b			;9f37	a0 	. 
	jr z,$+65		;9f38	28 3f 	( ? 
	ld d,e			;9f3a	53 	S 
	inc bc			;9f3b	03 	. 
	call pe,0530eh		;9f3c	ec 0e 53 	. . S 
	ld (bc),a			;9f3f	02 	. 
	ld d,b			;9f40	50 	P 
	ld (bc),a			;9f41	02 	. 
	jr z,$+65		;9f42	28 3f 	( ? 
	ld d,e			;9f44	53 	S 
	inc bc			;9f45	03 	. 
	call pe,0530eh		;9f46	ec 0e 53 	. . S 
	ld (bc),a			;9f49	02 	. 
	ld d,b			;9f4a	50 	P 
	ld (bc),a			;9f4b	02 	. 
	jr z,$+2		;9f4c	28 00 	( . 
	ccf			;9f4e	3f 	? 
	ld d,e			;9f4f	53 	S 
	ld (bc),a			;9f50	02 	. 
	call pe,0530eh		;9f51	ec 0e 53 	. . S 
	ld (bc),a			;9f54	02 	. 
	nop			;9f55	00 	. 
	and b			;9f56	a0 	. 
	jr z,$+5		;9f57	28 03 	( . 
	ld d,e			;9f59	53 	S 
	inc bc			;9f5a	03 	. 
	call pe,0530eh		;9f5b	ec 0e 53 	. . S 
	ld (bc),a			;9f5e	02 	. 
	ret nz			;9f5f	c0 	. 
	and b			;9f60	a0 	. 
	xor b			;9f61	a8 	. 
	ccf			;9f62	3f 	? 
	ld d,e			;9f63	53 	S 
	inc bc			;9f64	03 	. 
	call pe,0530eh		;9f65	ec 0e 53 	. . S 
	ld (bc),a			;9f68	02 	. 
	ret p			;9f69	f0 	. 
	nop			;9f6a	00 	. 
	and b			;9f6b	a0 	. 
	ccf			;9f6c	3f 	? 
	ld d,e			;9f6d	53 	S 
	inc bc			;9f6e	03 	. 
	xor 0aeh		;9f6f	ee ae 	. . 
	ld d,e			;9f71	53 	S 
	ld (bc),a			;9f72	02 	. 
	ret nz			;9f73	c0 	. 
	ld d,b			;9f74	50 	P 
	ld (bc),a			;9f75	02 	. 
	ccf			;9f76	3f 	? 
	ld d,e			;9f77	53 	S 
	inc bc			;9f78	03 	. 
	call pe,0530eh		;9f79	ec 0e 53 	. . S 
	ld (bc),a			;9f7c	02 	. 
	rrca			;9f7d	0f 	. 
	ret nz			;9f7e	c0 	. 
	nop			;9f7f	00 	. 
	rrca			;9f80	0f 	. 
	ld d,e			;9f81	53 	S 
	inc bc			;9f82	03 	. 
	call pe,0ff0eh		;9f83	ec 0e ff 	. . . 
	call m,0fc3fh		;9f86	fc 3f fc 	. ? . 
	rrca			;9f89	0f 	. 
	ld d,e			;9f8a	53 	S 
	inc b			;9f8b	04 	. 
	call pe,0530eh		;9f8c	ec 0e 53 	. . S 
	ld (bc),a			;9f8f	02 	. 
	ccf			;9f90	3f 	? 
	call m,00553h		;9f91	fc 53 05 	. S . 
	call pe,0530eh		;9f94	ec 0e 53 	. . S 
	inc bc			;9f97	03 	. 
	call m,00553h		;9f98	fc 53 05 	. S . 
	call pe,0530eh		;9f9b	ec 0e 53 	. . S 
	inc bc			;9f9e	03 	. 
	ld d,b			;9f9f	50 	P 
	inc bc			;9fa0	03 	. 
	rrca			;9fa1	0f 	. 
	ld d,e			;9fa2	53 	S 
	ld (bc),a			;9fa3	02 	. 
	call pe,0ff0eh		;9fa4	ec 0e ff 	. . . 
	call m,00450h		;9fa7	fc 50 04 	. P . 
	rlca			;9faa	07 	. 
	ld d,e			;9fab	53 	S 
	ld (bc),a			;9fac	02 	. 
	call pe,0530eh		;9fad	ec 0e 53 	. . S 
	ld (bc),a			;9fb0	02 	. 
	ret p			;9fb1	f0 	. 
	ld d,b			;9fb2	50 	P 
	inc bc			;9fb3	03 	. 
	ccf			;9fb4	3f 	? 
	ld d,e			;9fb5	53 	S 
	ld (bc),a			;9fb6	02 	. 
	call pe,0530eh		;9fb7	ec 0e 53 	. . S 
	ld (bc),a			;9fba	02 	. 
	ld d,b			;9fbb	50 	P 
	inc b			;9fbc	04 	. 
	inc bc			;9fbd	03 	. 
	ld d,e			;9fbe	53 	S 
	ld (bc),a			;9fbf	02 	. 
	call pe,0530eh		;9fc0	ec 0e 53 	. . S 
	ld (bc),a			;9fc3	02 	. 
	jp m,0abafh		;9fc4	fa af ab 	. . . 
	call m,0ff03h		;9fc7	fc 03 ff 	. . . 
	ret p			;9fca	f0 	. 
	ld d,b			;9fcb	50 	P 
	inc bc			;9fcc	03 	. 
	rst 38h			;9fcd	ff 	. 
	ret nz			;9fce	c0 	. 
	nop			;9fcf	00 	. 
	rrca			;9fd0	0f 	. 
	call m,0fc0fh		;9fd1	fc 0f fc 	. . . 
	ld d,b			;9fd4	50 	P 
	inc b			;9fd5	04 	. 
	rst 38h			;9fd6	ff 	. 
	ret nz			;9fd7	c0 	. 
	nop			;9fd8	00 	. 
	rrca			;9fd9	0f 	. 
	call m,0fc0fh		;9fda	fc 0f fc 	. . . 
	ld d,b			;9fdd	50 	P 
	inc b			;9fde	04 	. 
	rst 38h			;9fdf	ff 	. 
	ld d,b			;9fe0	50 	P 
	ld (bc),a			;9fe1	02 	. 
	ccf			;9fe2	3f 	? 
	ret p			;9fe3	f0 	. 
	rrca			;9fe4	0f 	. 
	call m,00450h		;9fe5	fc 50 04 	. P . 
	ld a,a			;9fe8	7f 	 
	ld d,b			;9fe9	50 	P 
	ld (bc),a			;9fea	02 	. 
	ccf			;9feb	3f 	? 
	cp h			;9fec	bc 	. 
	inc bc			;9fed	03 	. 
	call m,00350h		;9fee	fc 50 03 	. P . 
	ccf			;9ff1	3f 	? 
	rst 38h			;9ff2	ff 	. 
	ld d,b			;9ff3	50 	P 
	ld (bc),a			;9ff4	02 	. 
	ld a,(003fch)		;9ff5	3a fc 03 	: . . 
	call m,00350h		;9ff8	fc 50 03 	. P . 
	ccf			;9ffb	3f 	? 
	rst 38h			;9ffc	ff 	. 
	ld d,b			;9ffd	50 	P 
	ld (bc),a			;9ffe	02 	. 
	ld a,(00ff0h)		;9fff	3a f0 0f 	: . . 
	call m,00350h		;a002	fc 50 03 	. P . 
	inc bc			;a005	03 	. 
	rst 38h			;a006	ff 	. 
	ld d,b			;a007	50 	P 
	inc b			;a008	04 	. 
	rrca			;a009	0f 	. 
	ld d,e			;a00a	53 	S 
	ld (bc),a			;a00b	02 	. 
	ret p			;a00c	f0 	. 
	ccf			;a00d	3f 	? 
	ld d,e			;a00e	53 	S 
	ld (bc),a			;a00f	02 	. 
	xor d			;a010	aa 	. 
	rst 38h			;a011	ff 	. 
	ex de,hl			;a012	eb 	. 
	call m,0c003h		;a013	fc 03 c0 	. . . 
	ld d,b			;a016	50 	P 
	ld (bc),a			;a017	02 	. 
	ccf			;a018	3f 	? 
	ld d,b			;a019	50 	P 
	ld (bc),a			;a01a	02 	. 
	rrca			;a01b	0f 	. 
	rst 38h			;a01c	ff 	. 
	ret p			;a01d	f0 	. 
	nop			;a01e	00 	. 
	inc bc			;a01f	03 	. 
	ret nz			;a020	c0 	. 
	ld d,b			;a021	50 	P 
	ld (bc),a			;a022	02 	. 
	rst 38h			;a023	ff 	. 
	ret nz			;a024	c0 	. 
	ld d,b			;a025	50 	P 
	ld (bc),a			;a026	02 	. 
	rlca			;a027	07 	. 
	ret p			;a028	f0 	. 
	nop			;a029	00 	. 
	rst 38h			;a02a	ff 	. 
	ret p			;a02b	f0 	. 
	nop			;a02c	00 	. 
	rst 38h			;a02d	ff 	. 
	ret nz			;a02e	c0 	. 
	ld d,b			;a02f	50 	P 
	inc bc			;a030	03 	. 
	rlca			;a031	07 	. 
	rst 38h			;a032	ff 	. 
	nop			;a033	00 	. 
	ccf			;a034	3f 	? 
	ret p			;a035	f0 	. 
	nop			;a036	00 	. 
	ld d,e			;a037	53 	S 
	ld (bc),a			;a038	02 	. 
	ld d,b			;a039	50 	P 
	inc bc			;a03a	03 	. 
	rlca			;a03b	07 	. 
	ret p			;a03c	f0 	. 
	nop			;a03d	00 	. 
	rrca			;a03e	0f 	. 
	ret p			;a03f	f0 	. 
	nop			;a040	00 	. 
	inc bc			;a041	03 	. 
	rst 38h			;a042	ff 	. 
	ld d,b			;a043	50 	P 
	inc bc			;a044	03 	. 
	rlca			;a045	07 	. 
	call m,00300h		;a046	fc 00 03 	. . . 
	rst 38h			;a049	ff 	. 
	ret p			;a04a	f0 	. 
	ld d,b			;a04b	50 	P 
	inc b			;a04c	04 	. 
	ld a,(bc)			;a04d	0a 	. 
	xor e			;a04e	ab 	. 
	call m,0ff00h		;a04f	fc 00 ff 	. . . 
	ret nz			;a052	c0 	. 
	nop			;a053	00 	. 
	inc bc			;a054	03 	. 
	call m,00250h		;a055	fc 50 02 	. P . 
	ld c,0ffh		;a058	0e ff 	. . 
	call m,0ff00h		;a05a	fc 00 ff 	. . . 
	ret nz			;a05d	c0 	. 
	nop			;a05e	00 	. 
	inc bc			;a05f	03 	. 
	call m,00250h		;a060	fc 50 02 	. P . 
	rrca			;a063	0f 	. 
	ld d,e			;a064	53 	S 
	ld (bc),a			;a065	02 	. 
	ret nz			;a066	c0 	. 
	rrca			;a067	0f 	. 
	ret nz			;a068	c0 	. 
	ccf			;a069	3f 	? 
	ld d,e			;a06a	53 	S 
	ld (bc),a			;a06b	02 	. 
	cp a			;a06c	bf 	. 
	call m,0530fh		;a06d	fc 0f 53 	. . S 
	ld (bc),a			;a070	02 	. 
	ret nz			;a071	c0 	. 
	rrca			;a072	0f 	. 
	ret nz			;a073	c0 	. 
	ld d,b			;a074	50 	P 
	ld (bc),a			;a075	02 	. 
	rrca			;a076	0f 	. 
	rst 38h			;a077	ff 	. 
	call m,05300h		;a078	fc 00 53 	. . S 
	ld (bc),a			;a07b	02 	. 
	call m,0c00fh		;a07c	fc 0f c0 	. . . 
	ld d,b			;a07f	50 	P 
	inc bc			;a080	03 	. 
	inc bc			;a081	03 	. 
	rst 38h			;a082	ff 	. 
	ld d,b			;a083	50 	P 
	inc bc			;a084	03 	. 
	call m,0ff03h		;a085	fc 03 ff 	. . . 
	cp h			;a088	bc 	. 
	ld d,b			;a089	50 	P 
	ld (bc),a			;a08a	02 	. 
	inc bc			;a08b	03 	. 
	rst 38h			;a08c	ff 	. 
	ld d,b			;a08d	50 	P 
	inc bc			;a08e	03 	. 
	call m,05303h		;a08f	fc 03 53 	. . S 
	ld (bc),a			;a092	02 	. 
	jp pe,000b0h		;a093	ea b0 00 	. . . 
	ld a,a			;a096	7f 	 
	ret p			;a097	f0 	. 
	ld d,b			;a098	50 	P 
	ld (bc),a			;a099	02 	. 
	call m,05303h		;a09a	fc 03 53 	. . S 
	inc bc			;a09d	03 	. 
	ret p			;a09e	f0 	. 
	inc bc			;a09f	03 	. 
	rst 38h			;a0a0	ff 	. 
	ret p			;a0a1	f0 	. 
	ld d,b			;a0a2	50 	P 
	ld (bc),a			;a0a3	02 	. 
	call m,0ff03h		;a0a4	fc 03 ff 	. . . 
	ret p			;a0a7	f0 	. 
	ld d,b			;a0a8	50 	P 
	ld (bc),a			;a0a9	02 	. 
	inc bc			;a0aa	03 	. 
	rst 38h			;a0ab	ff 	. 
	ret p			;a0ac	f0 	. 
	ld d,b			;a0ad	50 	P 
	ld (bc),a			;a0ae	02 	. 
	call m,0ff03h		;a0af	fc 03 ff 	. . . 
	ld d,b			;a0b2	50 	P 
	inc bc			;a0b3	03 	. 
	ex de,hl			;a0b4	eb 	. 
	jp pe,050c0h		;a0b5	ea c0 50 	. . P 
	ld (bc),a			;a0b8	02 	. 
	ret p			;a0b9	f0 	. 
	rrca			;a0ba	0f 	. 
	rst 38h			;a0bb	ff 	. 
	ld d,b			;a0bc	50 	P 
	inc bc			;a0bd	03 	. 
	ld bc,050ffh		;a0be	01 ff 50 	. . P 
	inc b			;a0c1	04 	. 
	rrca			;a0c2	0f 	. 
	rst 38h			;a0c3	ff 	. 
	ld d,b			;a0c4	50 	P 
	ld (bc),a			;a0c5	02 	. 
	jp m,0ffafh		;a0c6	fa af ff 	. . . 
	ld d,b			;a0c9	50 	P 
	inc b			;a0ca	04 	. 
	rrca			;a0cb	0f 	. 
	rst 38h			;a0cc	ff 	. 
	ld d,b			;a0cd	50 	P 
	ld (bc),a			;a0ce	02 	. 
	ld d,e			;a0cf	53 	S 
	add hl,bc			;a0d0	09 	. 
	ld d,b			;a0d1	50 	P 
	ld (bc),a			;a0d2	02 	. 
	ld d,e			;a0d3	53 	S 
	inc bc			;a0d4	03 	. 
	ret nz			;a0d5	c0 	. 
	ld d,b			;a0d6	50 	P 
	inc bc			;a0d7	03 	. 
	inc bc			;a0d8	03 	. 
	rst 38h			;a0d9	ff 	. 
	ld d,b			;a0da	50 	P 
	inc b			;a0db	04 	. 
	ld a,a			;a0dc	7f 	 
	ret nz			;a0dd	c0 	. 
	ld d,b			;a0de	50 	P 
	inc bc			;a0df	03 	. 
	inc bc			;a0e0	03 	. 
	rst 38h			;a0e1	ff 	. 
	call m,00250h		;a0e2	fc 50 02 	. P . 
	rrca			;a0e5	0f 	. 
	rst 38h			;a0e6	ff 	. 
	ret p			;a0e7	f0 	. 
	ld d,b			;a0e8	50 	P 
	inc bc			;a0e9	03 	. 
	dec sp			;a0ea	3b 	; 
	call m,00250h		;a0eb	fc 50 02 	. P . 
	inc bc			;a0ee	03 	. 
	ld d,e			;a0ef	53 	S 
	ld (bc),a			;a0f0	02 	. 
	ret nz			;a0f1	c0 	. 
	ld d,b			;a0f2	50 	P 
	inc bc			;a0f3	03 	. 
	inc bc			;a0f4	03 	. 
	rst 38h			;a0f5	ff 	. 
	ret nz			;a0f6	c0 	. 
	ld d,b			;a0f7	50 	P 
	inc bc			;a0f8	03 	. 
	rrca			;a0f9	0f 	. 
	ld d,e			;a0fa	53 	S 
	ld (bc),a			;a0fb	02 	. 
	ret nz			;a0fc	c0 	. 
	nop			;a0fd	00 	. 
	inc bc			;a0fe	03 	. 
	rst 38h			;a0ff	ff 	. 
	ld d,b			;a100	50 	P 
	ld b,00fh		;a101	06 0f 	. . 
	rst 38h			;a103	ff 	. 
	ret nz			;a104	c0 	. 
	rrca			;a105	0f 	. 
	call m,00750h		;a106	fc 50 07 	. P . 
	ccf			;a109	3f 	? 
	ret nz			;a10a	c0 	. 
	inc bc			;a10b	03 	. 
	call m,00750h		;a10c	fc 50 07 	. P . 
	rrca			;a10f	0f 	. 
	ret nz			;a110	c0 	. 
	rrca			;a111	0f 	. 
	call m,00750h		;a112	fc 50 07 	. P . 
	dec sp			;a115	3b 	; 
	nop			;a116	00 	. 
	ccf			;a117	3f 	? 
	call m,00750h		;a118	fc 50 07 	. P . 
	ld a,0c0h		;a11b	3e c0 	> . 
	ccf			;a11d	3f 	? 
	call m,00450h		;a11e	fc 50 04 	. P . 
	rst 38h			;a121	ff 	. 
	ld d,b			;a122	50 	P 
	ld (bc),a			;a123	02 	. 
	rrca			;a124	0f 	. 
	ret p			;a125	f0 	. 
	rrca			;a126	0f 	. 
	call m,00450h		;a127	fc 50 04 	. P . 
	rst 38h			;a12a	ff 	. 
	call m,00250h		;a12b	fc 50 02 	. P . 
	call m,0fc03h		;a12e	fc 03 fc 	. . . 
	ld d,b			;a131	50 	P 
	inc bc			;a132	03 	. 
	ld d,e			;a133	53 	S 
	inc bc			;a134	03 	. 
	call m,03c00h		;a135	fc 00 3c 	. . < 
	inc bc			;a138	03 	. 
	rst 38h			;a139	ff 	. 
	ld d,b			;a13a	50 	P 
	inc bc			;a13b	03 	. 
	rrca			;a13c	0f 	. 
	rst 38h			;a13d	ff 	. 
	cp a			;a13e	bf 	. 
	call m,03c00h		;a13f	fc 00 3c 	. . < 
	inc bc			;a142	03 	. 
	rst 38h			;a143	ff 	. 
	ld d,b			;a144	50 	P 
	inc bc			;a145	03 	. 
	rrca			;a146	0f 	. 
	xor a			;a147	af 	. 
	rst 28h			;a148	ef 	. 
	call m,00250h		;a149	fc 50 02 	. P . 
	rrca			;a14c	0f 	. 
	ret p			;a14d	f0 	. 
	ld d,b			;a14e	50 	P 
	inc bc			;a14f	03 	. 
	rrca			;a150	0f 	. 
	cp a			;a151	bf 	. 
	cp 0fch		;a152	fe fc 	. . 
	ld d,b			;a154	50 	P 
	ld (bc),a			;a155	02 	. 
	rrca			;a156	0f 	. 
	ret p			;a157	f0 	. 
	ld d,b			;a158	50 	P 
	inc bc			;a159	03 	. 
	rst 38h			;a15a	ff 	. 
	rst 28h			;a15b	ef 	. 
	jp m,00253h		;a15c	fa 53 02 	. S . 
	nop			;a15f	00 	. 
	rrca			;a160	0f 	. 
	ret p			;a161	f0 	. 
	ld d,b			;a162	50 	P 
	inc bc			;a163	03 	. 
	xor e			;a164	ab 	. 
	ex de,hl			;a165	eb 	. 
	jp m,000fch		;a166	fa fc 00 	. . . 
	inc bc			;a169	03 	. 
	ld d,e			;a16a	53 	S 
	ld (bc),a			;a16b	02 	. 
	ld d,b			;a16c	50 	P 
	inc bc			;a16d	03 	. 
	rst 38h			;a16e	ff 	. 
	rst 28h			;a16f	ef 	. 
	rst 38h			;a170	ff 	. 
	call m,00300h		;a171	fc 00 03 	. . . 
	ld d,e			;a174	53 	S 
	ld (bc),a			;a175	02 	. 
	ld d,b			;a176	50 	P 
	inc bc			;a177	03 	. 
	rst 38h			;a178	ff 	. 
	cp a			;a179	bf 	. 
	rst 38h			;a17a	ff 	. 
	call m,05303h		;a17b	fc 03 53 	. . S 
	inc bc			;a17e	03 	. 
	ld d,b			;a17f	50 	P 
	inc bc			;a180	03 	. 
	rst 38h			;a181	ff 	. 
	call m,00250h		;a182	fc 50 02 	. P . 
	inc bc			;a185	03 	. 
	ld d,e			;a186	53 	S 
	inc bc			;a187	03 	. 
	ld d,b			;a188	50 	P 
	ld b,03fh		;a189	06 3f 	. ? 
	ld d,e			;a18b	53 	S 
	inc b			;a18c	04 	. 
	ld d,b			;a18d	50 	P 
	ld b,03fh		;a18e	06 3f 	. ? 
	ret p			;a190	f0 	. 
	nop			;a191	00 	. 
	inc bc			;a192	03 	. 
	rst 38h			;a193	ff 	. 
	call m,00450h		;a194	fc 50 04 	. P . 
	inc bc			;a197	03 	. 
	ei			;a198	fb 	. 
	ret p			;a199	f0 	. 
	nop			;a19a	00 	. 
	inc bc			;a19b	03 	. 
	cp a			;a19c	bf 	. 
	ret nz			;a19d	c0 	. 
	ld d,b			;a19e	50 	P 
	inc b			;a19f	04 	. 
	inc bc			;a1a0	03 	. 
	xor a			;a1a1	af 	. 
	ret p			;a1a2	f0 	. 
	nop			;a1a3	00 	. 
	inc bc			;a1a4	03 	. 
	rst 28h			;a1a5	ef 	. 
	ret nz			;a1a6	c0 	. 
	nop			;a1a7	00 	. 
	xor 0ech		;a1a8	ee ec 	. . 
	nop			;a1aa	00 	. 
	inc bc			;a1ab	03 	. 
	rst 38h			;a1ac	ff 	. 
	ret p			;a1ad	f0 	. 
	nop			;a1ae	00 	. 
	inc bc			;a1af	03 	. 
	cp a			;a1b0	bf 	. 
	ret nz			;a1b1	c0 	. 
	nop			;a1b2	00 	. 
	rst 38h			;a1b3	ff 	. 
	call m,00f00h		;a1b4	fc 00 0f 	. . . 
	rst 38h			;a1b7	ff 	. 
	ret nz			;a1b8	c0 	. 
	nop			;a1b9	00 	. 
	rrca			;a1ba	0f 	. 
	rst 38h			;a1bb	ff 	. 
	call m,0ff00h		;a1bc	fc 00 ff 	. . . 
	call m,00f00h		;a1bf	fc 00 0f 	. . . 
	rst 38h			;a1c2	ff 	. 
	ret nz			;a1c3	c0 	. 
	nop			;a1c4	00 	. 
	rrca			;a1c5	0f 	. 
	call m,00300h		;a1c6	fc 00 03 	. . . 
	rst 38h			;a1c9	ff 	. 
	call m,00f00h		;a1ca	fc 00 0f 	. . . 
	rst 38h			;a1cd	ff 	. 
	ret nz			;a1ce	c0 	. 
	nop			;a1cf	00 	. 
	rrca			;a1d0	0f 	. 
	ret p			;a1d1	f0 	. 
	nop			;a1d2	00 	. 
	inc bc			;a1d3	03 	. 
	rst 38h			;a1d4	ff 	. 
	call m,00f00h		;a1d5	fc 00 0f 	. . . 
	rst 38h			;a1d8	ff 	. 
	ret nz			;a1d9	c0 	. 
	nop			;a1da	00 	. 
	rrca			;a1db	0f 	. 
	ret p			;a1dc	f0 	. 
	nop			;a1dd	00 	. 
	inc bc			;a1de	03 	. 
	rst 38h			;a1df	ff 	. 
	call m,00300h		;a1e0	fc 00 03 	. . . 
	rst 38h			;a1e3	ff 	. 
	ret nz			;a1e4	c0 	. 
	nop			;a1e5	00 	. 
	ccf			;a1e6	3f 	? 
	ret p			;a1e7	f0 	. 
	ld d,b			;a1e8	50 	P 
	ld (bc),a			;a1e9	02 	. 
	inc bc			;a1ea	03 	. 
	call m,00300h		;a1eb	fc 00 03 	. . . 
	rst 38h			;a1ee	ff 	. 
	ret nz			;a1ef	c0 	. 
	nop			;a1f0	00 	. 
	ccf			;a1f1	3f 	? 
	rst 38h			;a1f2	ff 	. 
	ret nz			;a1f3	c0 	. 
	nop			;a1f4	00 	. 
	inc bc			;a1f5	03 	. 
	call m,00300h		;a1f6	fc 00 03 	. . . 
	rst 38h			;a1f9	ff 	. 
	ret nz			;a1fa	c0 	. 
	nop			;a1fb	00 	. 
	ccf			;a1fc	3f 	? 
	cp a			;a1fd	bf 	. 
	ret nz			;a1fe	c0 	. 
	nop			;a1ff	00 	. 
	ccf			;a200	3f 	? 
	call m,00300h		;a201	fc 00 03 	. . . 
	rst 38h			;a204	ff 	. 
	ret nz			;a205	c0 	. 
	nop			;a206	00 	. 
	ld d,e			;a207	53 	S 
	ld (bc),a			;a208	02 	. 
	ret nz			;a209	c0 	. 
	nop			;a20a	00 	. 
	ccf			;a20b	3f 	? 
	cp a			;a20c	bf 	. 
	nop			;a20d	00 	. 
	inc bc			;a20e	03 	. 
	rst 38h			;a20f	ff 	. 
	ret nz			;a210	c0 	. 
	nop			;a211	00 	. 
	ccf			;a212	3f 	? 
	call m,00250h		;a213	fc 50 02 	. P . 
	cp 0f0h		;a216	fe f0 	. . 
	ld d,b			;a218	50 	P 
	ld (bc),a			;a219	02 	. 
	rst 38h			;a21a	ff 	. 
	nop			;a21b	00 	. 
	inc bc			;a21c	03 	. 
	rst 38h			;a21d	ff 	. 
	call m,00250h		;a21e	fc 50 02 	. P . 
	rst 38h			;a221	ff 	. 
	call m,00250h		;a222	fc 50 02 	. P . 
	rst 38h			;a225	ff 	. 
	ld d,b			;a226	50 	P 
	ld (bc),a			;a227	02 	. 
	ccf			;a228	3f 	? 
	call m,00250h		;a229	fc 50 02 	. P . 
	cp 0fch		;a22c	fe fc 	. . 
	nop			;a22e	00 	. 
	rrca			;a22f	0f 	. 
	call m,00250h		;a230	fc 50 02 	. P . 
	ld d,e			;a233	53 	S 
	dec b			;a234	05 	. 
	call m,00f00h		;a235	fc 00 0f 	. . . 
	call m,00250h		;a238	fc 50 02 	. P . 
	rst 38h			;a23b	ff 	. 
	ret nz			;a23c	c0 	. 
	ld d,b			;a23d	50 	P 
	dec b			;a23e	05 	. 
	inc bc			;a23f	03 	. 
	ret p			;a240	f0 	. 
	nop			;a241	00 	. 
	inc bc			;a242	03 	. 
	rst 38h			;a243	ff 	. 
	call m,00850h		;a244	fc 50 08 	. P . 
	inc bc			;a247	03 	. 
	rst 38h			;a248	ff 	. 
	xor h			;a249	ac 	. 
	ld d,b			;a24a	50 	P 
	add hl,bc			;a24b	09 	. 
	rra			;a24c	1f 	. 
	cp e			;a24d	bb 	. 
	ld d,b			;a24e	50 	P 
	inc bc			;a24f	03 	. 
	rrca			;a250	0f 	. 
	ld d,e			;a251	53 	S 
	ld (bc),a			;a252	02 	. 
	ld d,b			;a253	50 	P 
	inc bc			;a254	03 	. 
	rra			;a255	1f 	. 
	rst 38h			;a256	ff 	. 
	ld d,b			;a257	50 	P 
	inc bc			;a258	03 	. 
	rrca			;a259	0f 	. 
	xor a			;a25a	af 	. 
	rst 38h			;a25b	ff 	. 
	ld d,d			;a25c	52 	R 
	inc bc			;a25d	03 	. 
	xor a			;a25e	af 	. 
	rst 38h			;a25f	ff 	. 
	add a,b			;a260	80 	. 
	ld d,b			;a261	50 	P 
	ld b,003h		;a262	06 03 	. . 
	ret p			;a264	f0 	. 
	inc bc			;a265	03 	. 
	call m,00750h		;a266	fc 50 07 	. P . 
	inc bc			;a269	03 	. 
	ret p			;a26a	f0 	. 
	inc bc			;a26b	03 	. 
	call m,00350h		;a26c	fc 50 03 	. P . 
	jp pe,00252h		;a26f	ea 52 02 	. R . 
	ret nz			;a272	c0 	. 
	inc bc			;a273	03 	. 
	call m,0f003h		;a274	fc 03 f0 	. . . 
	ld d,b			;a277	50 	P 
	inc bc			;a278	03 	. 
	rrca			;a279	0f 	. 
	ld d,e			;a27a	53 	S 
	ld (bc),a			;a27b	02 	. 
	ret p			;a27c	f0 	. 
	nop			;a27d	00 	. 
	call m,0ff0fh		;a27e	fc 0f ff 	. . . 
	ld d,b			;a281	50 	P 
	inc bc			;a282	03 	. 
	ld d,e			;a283	53 	S 
	inc b			;a284	04 	. 
	ld d,b			;a285	50 	P 
	ld (bc),a			;a286	02 	. 
	rrca			;a287	0f 	. 
	ret p			;a288	f0 	. 
	ld d,b			;a289	50 	P 
	ld (bc),a			;a28a	02 	. 
	ld (bc),a			;a28b	02 	. 
	ex de,hl			;a28c	eb 	. 
	jp pe,0befeh		;a28d	ea fe be 	. . . 
	and b			;a290	a0 	. 
	nop			;a291	00 	. 
	rrca			;a292	0f 	. 
	ret p			;a293	f0 	. 
	ld d,b			;a294	50 	P 
	inc bc			;a295	03 	. 
	ld a,(0fffeh)		;a296	3a fe ff 	: . . 
	cp 050h		;a299	fe 50 	. P 
	ld (bc),a			;a29b	02 	. 
	cpl			;a29c	2f 	/ 
	ret p			;a29d	f0 	. 
	ld d,b			;a29e	50 	P 
	inc bc			;a29f	03 	. 
	cp a			;a2a0	bf 	. 
	ld d,e			;a2a1	53 	S 
	inc bc			;a2a2	03 	. 
	ld d,b			;a2a3	50 	P 
	ld (bc),a			;a2a4	02 	. 
	ccf			;a2a5	3f 	? 
	call m,00350h		;a2a6	fc 50 03 	. P . 
	ld d,e			;a2a9	53 	S 
	ld (bc),a			;a2aa	02 	. 
	call m,00350h		;a2ab	fc 50 03 	. P . 
	xor a			;a2ae	af 	. 
	call m,00350h		;a2af	fc 50 03 	. P . 
	rlca			;a2b2	07 	. 
	rst 38h			;a2b3	ff 	. 
	call m,00350h		;a2b4	fc 50 03 	. P . 
	rst 38h			;a2b7	ff 	. 
	ret m			;a2b8	f8 	. 
	ld d,b			;a2b9	50 	P 
	inc bc			;a2ba	03 	. 
	rlca			;a2bb	07 	. 
	rst 38h			;a2bc	ff 	. 
	ld d,b			;a2bd	50 	P 
	inc b			;a2be	04 	. 
	rst 38h			;a2bf	ff 	. 
	ret m			;a2c0	f8 	. 
	ld d,b			;a2c1	50 	P 
	inc bc			;a2c2	03 	. 
	rlca			;a2c3	07 	. 
	rst 38h			;a2c4	ff 	. 
	ld d,b			;a2c5	50 	P 
	inc b			;a2c6	04 	. 
	inc bc			;a2c7	03 	. 
	ret m			;a2c8	f8 	. 
	ld d,b			;a2c9	50 	P 
	inc bc			;a2ca	03 	. 
	rlca			;a2cb	07 	. 
	rst 38h			;a2cc	ff 	. 
	nop			;a2cd	00 	. 
	dec bc			;a2ce	0b 	. 
	and b			;a2cf	a0 	. 
	nop			;a2d0	00 	. 
	inc bc			;a2d1	03 	. 
	cp 0a8h		;a2d2	fe a8 	. . 
	ld d,b			;a2d4	50 	P 
	ld (bc),a			;a2d5	02 	. 
	rlca			;a2d6	07 	. 
	call m,00f00h		;a2d7	fc 00 0f 	. . . 
	ret p			;a2da	f0 	. 
	nop			;a2db	00 	. 
	inc bc			;a2dc	03 	. 
	rst 38h			;a2dd	ff 	. 
	ret nz			;a2de	c0 	. 
	ld d,b			;a2df	50 	P 
	ld (bc),a			;a2e0	02 	. 
	ccf			;a2e1	3f 	? 
	call m,0ff0fh		;a2e2	fc 0f ff 	. . . 
	ret p			;a2e5	f0 	. 
	nop			;a2e6	00 	. 
	inc bc			;a2e7	03 	. 
	rst 38h			;a2e8	ff 	. 
	ld d,b			;a2e9	50 	P 
	ld (bc),a			;a2ea	02 	. 
	rrca			;a2eb	0f 	. 
	rst 38h			;a2ec	ff 	. 
	call m,0ff0fh		;a2ed	fc 0f ff 	. . . 
	ret nz			;a2f0	c0 	. 
	nop			;a2f1	00 	. 
	dec bc			;a2f2	0b 	. 
	rst 38h			;a2f3	ff 	. 
	ld d,b			;a2f4	50 	P 
	ld (bc),a			;a2f5	02 	. 
	rrca			;a2f6	0f 	. 
	ret p			;a2f7	f0 	. 
	ld d,b			;a2f8	50 	P 
	ld (bc),a			;a2f9	02 	. 
	rrca			;a2fa	0f 	. 
	ret nz			;a2fb	c0 	. 
	nop			;a2fc	00 	. 
	dec hl			;a2fd	2b 	+ 
	rst 38h			;a2fe	ff 	. 
	ret nz			;a2ff	c0 	. 
	ld (bc),a			;a300	02 	. 
	xor (hl)			;a301	ae 	. 
	and b			;a302	a0 	. 
	nop			;a303	00 	. 
	ld a,(bc)			;a304	0a 	. 
	rst 38h			;a305	ff 	. 
	ret nz			;a306	c0 	. 
	nop			;a307	00 	. 
	dec bc			;a308	0b 	. 
	rst 38h			;a309	ff 	. 
	ret nz			;a30a	c0 	. 
	ld (bc),a			;a30b	02 	. 
	xor d			;a30c	aa 	. 
	ld d,b			;a30d	50 	P 
	ld (bc),a			;a30e	02 	. 
	rrca			;a30f	0f 	. 
	rst 38h			;a310	ff 	. 
	ret nz			;a311	c0 	. 
	nop			;a312	00 	. 
	dec bc			;a313	0b 	. 
	ret p			;a314	f0 	. 
	nop			;a315	00 	. 
	inc bc			;a316	03 	. 
	jp m,00250h		;a317	fa 50 02 	. P . 
	dec bc			;a31a	0b 	. 
	rst 38h			;a31b	ff 	. 
	ret nz			;a31c	c0 	. 
	nop			;a31d	00 	. 
	dec bc			;a31e	0b 	. 
	ret p			;a31f	f0 	. 
	nop			;a320	00 	. 
	inc bc			;a321	03 	. 
	jp m,03f00h		;a322	fa 00 3f 	. . ? 
	rst 38h			;a325	ff 	. 
	cp 0c0h		;a326	fe c0 	. . 
	rst 28h			;a328	ef 	. 
	rst 38h			;a329	ff 	. 
	ret p			;a32a	f0 	. 
	ld d,b			;a32b	50 	P 
	inc b			;a32c	04 	. 
	ccf			;a32d	3f 	? 
	rst 38h			;a32e	ff 	. 
	cp 0c0h		;a32f	fe c0 	. . 
	rst 28h			;a331	ef 	. 
	ld d,e			;a332	53 	S 
	ex af,af'			;a333	08 	. 
	cp 0c0h		;a334	fe c0 	. . 
	rst 28h			;a336	ef 	. 
	rst 38h			;a337	ff 	. 
	ret p			;a338	f0 	. 
	ld d,b			;a339	50 	P 
	inc bc			;a33a	03 	. 
	inc bc			;a33b	03 	. 
	ld d,e			;a33c	53 	S 
	ld (bc),a			;a33d	02 	. 
	cp 0c0h		;a33e	fe c0 	. . 
	rst 28h			;a340	ef 	. 
	rst 38h			;a341	ff 	. 
	ret p			;a342	f0 	. 
	inc bc			;a343	03 	. 
	rst 38h			;a344	ff 	. 
	nop			;a345	00 	. 
	inc bc			;a346	03 	. 
	ld d,e			;a347	53 	S 
	ld (bc),a			;a348	02 	. 
	cp 0c0h		;a349	fe c0 	. . 
	rst 28h			;a34b	ef 	. 
	rst 38h			;a34c	ff 	. 
	ld d,l			;a34d	55 	U 
	nop			;a34e	00 	. 
	ld (01d1eh),a		;a34f	32 1e 1d 	2 . . 
	jr nz,$+37		;a352	20 23 	  # 
	rra			;a354	1f 	. 
	ld (00a1ch),hl		;a355	22 1c 0a 	" . . 
	jr z,$+30		;a358	28 1c 	( . 
	ld a,(bc)			;a35a	0a 	. 
	ld d,003h		;a35b	16 03 	. . 
	add hl,bc			;a35d	09 	. 
	jr $+42		;a35e	18 28 	. ( 
	dec de			;a360	1b 	. 
	ld h,029h		;a361	26 29 	& ) 
	dec de			;a363	1b 	. 
	dec de			;a364	1b 	. 
	ld a,(bc)			;a365	0a 	. 
	dec de			;a366	1b 	. 
	dec de			;a367	1b 	. 
	dec b			;a368	05 	. 
	inc h			;a369	24 	$ 
	add hl,hl			;a36a	29 	) 
	add hl,bc			;a36b	09 	. 
	ld h,016h		;a36c	26 16 	& . 
	inc hl			;a36e	23 	# 
	ld d,006h		;a36f	16 06 	. . 
	inc hl			;a371	23 	# 
	ld b,009h		;a372	06 09 	. . 
	ld b,00ah		;a374	06 0a 	. . 
	dec bc			;a376	0b 	. 
	dec bc			;a377	0b 	. 
	inc e			;a378	1c 	. 
	dec bc			;a379	0b 	. 
	ld hl,00927h		;a37a	21 27 09 	! ' . 
	add hl,hl			;a37d	29 	) 
	ld a,(bc)			;a37e	0a 	. 
	ld (00807h),hl		;a37f	22 07 08 	" . . 
	ld (de),a			;a382	12 	. 
	rst 38h			;a383	ff 	. 
	jr z,$+5		;a384	28 03 	( . 
	ld a,(05840h)		;a386	3a 40 58 	: @ X 
	ld l,b			;a389	68 	h 
	ld l,b			;a38a	68 	h 
	halt			;a38b	76 	v 
	add a,b			;a38c	80 	. 
	cp h			;a38d	bc 	. 
	jp z,02626h		;a38e	ca 26 26 	. & & 
	ld c,d			;a391	4a 	J 
	ld c,h			;a392	4c 	L 
	ld c,h			;a393	4c 	L 
	ld c,(hl)			;a394	4e 	N 
	ld d,d			;a395	52 	R 
	ld e,b			;a396	58 	X 
	ld e,d			;a397	5a 	Z 
	ld e,(hl)			;a398	5e 	^ 
	ld h,h			;a399	64 	d 
	sbc a,h			;a39a	9c 	. 
	jp m,0fefah		;a39b	fa fa fe 	. . . 
	ld (bc),a			;a39e	02 	. 
	ld c,b			;a39f	48 	H 
	ld c,b			;a3a0	48 	H 
	ld d,b			;a3a1	50 	P 
	ld d,d			;a3a2	52 	R 
	ld d,(hl)			;a3a3	56 	V 
	ld e,h			;a3a4	5c 	\ 
	ld h,h			;a3a5	64 	d 
	ld l,b			;a3a6	68 	h 
	ld l,b			;a3a7	68 	h 
	sub h			;a3a8	94 	. 
	and b			;a3a9	a0 	. 
	and b			;a3aa	a0 	. 
	xor h			;a3ab	ac 	. 
	xor (hl)			;a3ac	ae 	. 
	jp c,0f4e6h		;a3ad	da e6 f4 	. . . 
	ld hl,(07a30h)		;a3b0	2a 30 7a 	* 0 z 
	or b			;a3b3	b0 	. 
	ld l,h			;a3b4	6c 	l 
	rst 38h			;a3b5	ff 	. 
	ld d,b			;a3b6	50 	P 
	inc bc			;a3b7	03 	. 
	ld b,b			;a3b8	40 	@ 
	ld b,b			;a3b9	40 	@ 
	ld d,b			;a3ba	50 	P 
	jr z,$+66		;a3bb	28 40 	( @ 
	ld b,b			;a3bd	40 	@ 
	rst 38h			;a3be	ff 	. 
	jr z,$+5		;a3bf	28 03 	( . 
	add hl,hl			;a3c1	29 	) 
	dec l			;a3c2	2d 	- 
	dec a			;a3c3	3d 	= 
	dec l			;a3c4	2d 	- 
	ld d,c			;a3c5	51 	Q 
	ld l,l			;a3c6	6d 	m 
	dec l			;a3c7	2d 	- 
	dec l			;a3c8	2d 	- 
	add hl,hl			;a3c9	29 	) 
	rst 38h			;a3ca	ff 	. 
	dec l			;a3cb	2d 	- 
	inc b			;a3cc	04 	. 
	ld c,l			;a3cd	4d 	M 
	dec l			;a3ce	2d 	- 
	ld l,0ffh		;a3cf	2e ff 	. . 
	ld hl,(02e03h)		;a3d1	2a 03 2e 	* . . 
	ld hl,(0522eh)		;a3d4	2a 2e 52 	* . R 
	ld l,06eh		;a3d7	2e 6e 	. n 
	rst 38h			;a3d9	ff 	. 
	ld hl,(04e05h)		;a3da	2a 05 4e 	* . N 
	ld hl,(02b3eh)		;a3dd	2a 3e 2b 	* > + 
	rst 38h			;a3e0	ff 	. 
	cpl			;a3e1	2f 	/ 
	inc bc			;a3e2	03 	. 
	ld c,0ffh		;a3e3	0e ff 	. . 
	ex af,af'			;a3e5	08 	. 
	inc bc			;a3e6	03 	. 
	ld e,01eh		;a3e7	1e 1e 	. . 
	ex af,af'			;a3e9	08 	. 
	rst 38h			;a3ea	ff 	. 
	ld e,008h		;a3eb	1e 08 	. . 
	rra			;a3ed	1f 	. 
	ld e,008h		;a3ee	1e 08 	. . 
	ld c,0ffh		;a3f0	0e ff 	. . 
	ld e,007h		;a3f2	1e 07 	. . 
	inc h			;a3f4	24 	$ 
	rst 38h			;a3f5	ff 	. 
	ld e,008h		;a3f6	1e 08 	. . 
	ex af,af'			;a3f8	08 	. 
	ld e,00eh		;a3f9	1e 0e 	. . 
	rst 38h			;a3fb	ff 	. 
	ld e,005h		;a3fc	1e 05 	. . 
	inc h			;a3fe	24 	$ 
	ld e,01fh		;a3ff	1e 1f 	. . 
	rst 38h			;a401	ff 	. 
	ld e,004h		;a402	1e 04 	. . 
	rst 38h			;a404	ff 	. 
	nop			;a405	00 	. 
	ld c,001h		;a406	0e 01 	. . 
	rst 38h			;a408	ff 	. 
	nop			;a409	00 	. 
	rlca			;a40a	07 	. 
	rst 38h			;a40b	ff 	. 
	ld (bc),a			;a40c	02 	. 
	dec d			;a40d	15 	. 
	rst 38h			;a40e	ff 	. 
	inc bc			;a40f	03 	. 
	dec b			;a410	05 	. 
	inc b			;a411	04 	. 
	inc b			;a412	04 	. 
	dec b			;a413	05 	. 
	rst 38h			;a414	ff 	. 
	ld b,003h		;a415	06 03 	. . 
	rlca			;a417	07 	. 
	rlca			;a418	07 	. 
	rst 38h			;a419	ff 	. 
	ex af,af'			;a41a	08 	. 
	djnz $+1		;a41b	10 ff 	. . 
	add hl,bc			;a41d	09 	. 
	inc bc			;a41e	03 	. 
	rst 38h			;a41f	ff 	. 
	ld a,(bc)			;a420	0a 	. 
	rlca			;a421	07 	. 
	rst 38h			;a422	ff 	. 
	dec bc			;a423	0b 	. 
	inc b			;a424	04 	. 
	rst 38h			;a425	ff 	. 
	inc c			;a426	0c 	. 
	inc bc			;a427	03 	. 
	rst 38h			;a428	ff 	. 
	dec c			;a429	0d 	. 
	rlca			;a42a	07 	. 
	ld c,00eh		;a42b	0e 0e 	. . 
	rst 38h			;a42d	ff 	. 
	rrca			;a42e	0f 	. 
	inc bc			;a42f	03 	. 
	rst 38h			;a430	ff 	. 
	djnz $+6		;a431	10 04 	. . 
	rst 38h			;a433	ff 	. 
	ld de,0ff06h		;a434	11 06 ff 	. . . 
	ld (de),a			;a437	12 	. 
	inc b			;a438	04 	. 
	rst 38h			;a439	ff 	. 
	inc de			;a43a	13 	. 
	add hl,bc			;a43b	09 	. 
	rst 38h			;a43c	ff 	. 
	inc d			;a43d	14 	. 
	inc bc			;a43e	03 	. 
	dec d			;a43f	15 	. 
	rst 38h			;a440	ff 	. 
	ld d,004h		;a441	16 04 	. . 
	rla			;a443	17 	. 
	rla			;a444	17 	. 
	rst 38h			;a445	ff 	. 
	jr $+6		;a446	18 04 	. . 
	rst 38h			;a448	ff 	. 
	add hl,de			;a449	19 	. 
	inc b			;a44a	04 	. 
	rst 38h			;a44b	ff 	. 
	ld a,(de)			;a44c	1a 	. 
	ld b,0ffh		;a44d	06 ff 	. . 
	dec de			;a44f	1b 	. 
	dec b			;a450	05 	. 
	inc e			;a451	1c 	. 
	inc e			;a452	1c 	. 
	rst 38h			;a453	ff 	. 
	dec e			;a454	1d 	. 
	dec bc			;a455	0b 	. 
	rst 38h			;a456	ff 	. 
	ld e,013h		;a457	1e 13 	. . 
	rst 38h			;a459	ff 	. 
	rra			;a45a	1f 	. 
	inc b			;a45b	04 	. 
	rst 38h			;a45c	ff 	. 
	jr nz,$+8		;a45d	20 06 	  . 
	ld hl,0ff21h		;a45f	21 21 ff 	! ! . 
	ld (0ff06h),hl		;a462	22 06 ff 	" . . 
	inc hl			;a465	23 	# 
	inc bc			;a466	03 	. 
	rst 38h			;a467	ff 	. 
	inc h			;a468	24 	$ 
	inc bc			;a469	03 	. 
	dec h			;a46a	25 	% 
	dec h			;a46b	25 	% 
	rst 38h			;a46c	ff 	. 
	ld h,003h		;a46d	26 03 	& . 
	daa			;a46f	27 	' 
	daa			;a470	27 	' 
	jr z,$+42		;a471	28 28 	( ( 
	rst 38h			;a473	ff 	. 
	add hl,hl			;a474	29 	) 
	inc bc			;a475	03 	. 
	rst 38h			;a476	ff 	. 
	jr z,$+9		;a477	28 07 	( . 
	rst 38h			;a479	ff 	. 
	ld hl,(02b05h)		;a47a	2a 05 2b 	* . + 
	dec hl			;a47d	2b 	+ 
	rst 38h			;a47e	ff 	. 
	inc l			;a47f	2c 	, 
	dec bc			;a480	0b 	. 
	rst 38h			;a481	ff 	. 
	dec l			;a482	2d 	- 
	add hl,de			;a483	19 	. 
	rst 38h			;a484	ff 	. 
	ld l,003h		;a485	2e 03 	. . 
	cpl			;a487	2f 	/ 
	cpl			;a488	2f 	/ 
	rst 38h			;a489	ff 	. 
	jr nc,$+11		;a48a	30 09 	0 . 
	ld sp,03232h		;a48c	31 32 32 	1 2 2 
	rst 38h			;a48f	ff 	. 
	inc sp			;a490	33 	3 
	inc bc			;a491	03 	. 
	rst 38h			;a492	ff 	. 
	ld (0ff09h),a		;a493	32 09 ff 	2 . . 
	inc (hl)			;a496	34 	4 
	ld c,035h		;a497	0e 35 	. 5 
	dec (hl)			;a499	35 	5 
	rst 38h			;a49a	ff 	. 
	ld (hl),008h		;a49b	36 08 	6 . 
	scf			;a49d	37 	7 
	scf			;a49e	37 	7 
	jr c,$+59		;a49f	38 39 	8 9 
	ld a,(0ff3ah)		;a4a1	3a 3a ff 	: : . 
	dec sp			;a4a4	3b 	; 
	inc bc			;a4a5	03 	. 
	inc a			;a4a6	3c 	< 
	inc a			;a4a7	3c 	< 
	dec a			;a4a8	3d 	= 
	ld a,03fh		;a4a9	3e 3f 	> ? 
	ld b,b			;a4ab	40 	@ 
	ld b,b			;a4ac	40 	@ 
	rst 38h			;a4ad	ff 	. 
	ld b,c			;a4ae	41 	A 
	inc bc			;a4af	03 	. 
	rst 38h			;a4b0	ff 	. 
	ld b,d			;a4b1	42 	B 
	dec b			;a4b2	05 	. 
	rst 38h			;a4b3	ff 	. 
	ld b,e			;a4b4	43 	C 
	dec b			;a4b5	05 	. 
	rst 38h			;a4b6	ff 	. 
	ld b,h			;a4b7	44 	D 
	inc bc			;a4b8	03 	. 
	rst 38h			;a4b9	ff 	. 
	ld b,l			;a4ba	45 	E 
	inc bc			;a4bb	03 	. 
	rst 38h			;a4bc	ff 	. 
	ld b,(hl)			;a4bd	46 	F 
	ld b,0ffh		;a4be	06 ff 	. . 
	ld b,a			;a4c0	47 	G 
	dec b			;a4c1	05 	. 
	rst 38h			;a4c2	ff 	. 
	ld c,b			;a4c3	48 	H 
	inc bc			;a4c4	03 	. 
	rst 38h			;a4c5	ff 	. 
	ld c,c			;a4c6	49 	I 
	ld b,0ffh		;a4c7	06 ff 	. . 
	ld c,d			;a4c9	4a 	J 
	ex af,af'			;a4ca	08 	. 
	ld c,e			;a4cb	4b 	K 
	rst 38h			;a4cc	ff 	. 
	ld c,d			;a4cd	4a 	J 
	dec bc			;a4ce	0b 	. 
	ld c,h			;a4cf	4c 	L 
	rst 38h			;a4d0	ff 	. 
	ld c,d			;a4d1	4a 	J 
	inc b			;a4d2	04 	. 
	rst 38h			;a4d3	ff 	. 
	ld c,l			;a4d4	4d 	M 
	inc bc			;a4d5	03 	. 
	ld c,(hl)			;a4d6	4e 	N 
	ld c,(hl)			;a4d7	4e 	N 
	ld c,a			;a4d8	4f 	O 
	ld d,b			;a4d9	50 	P 
	rst 38h			;a4da	ff 	. 
	ld c,a			;a4db	4f 	O 
	ld a,(bc)			;a4dc	0a 	. 
	ld d,c			;a4dd	51 	Q 
	rst 38h			;a4de	ff 	. 
	ld c,a			;a4df	4f 	O 
	inc c			;a4e0	0c 	. 
	rst 38h			;a4e1	ff 	. 
	ld d,d			;a4e2	52 	R 
	djnz $+1		;a4e3	10 ff 	. . 
	ld d,e			;a4e5	53 	S 
	ex af,af'			;a4e6	08 	. 
	ld d,h			;a4e7	54 	T 
	ld d,h			;a4e8	54 	T 
	rst 38h			;a4e9	ff 	. 
	ld d,l			;a4ea	55 	U 
	inc d			;a4eb	14 	. 
	ld d,e			;a4ec	53 	S 
	ld (bc),a			;a4ed	02 	. 
	call pe,0530eh		;a4ee	ec 0e 53 	. . S 
	add hl,bc			;a4f1	09 	. 
	xor 0aeh		;a4f2	ee ae 	. . 
	ld d,e			;a4f4	53 	S 
	add hl,bc			;a4f5	09 	. 
	call pe,0530eh		;a4f6	ec 0e 53 	. . S 
	ld (bc),a			;a4f9	02 	. 
	call m,00350h		;a4fa	fc 50 03 	. P . 
	rrca			;a4fd	0f 	. 
	rst 38h			;a4fe	ff 	. 
	ret p			;a4ff	f0 	. 
	ld d,b			;a500	50 	P 
	ld (bc),a			;a501	02 	. 
	inc bc			;a502	03 	. 
	rst 38h			;a503	ff 	. 
	call m,00350h		;a504	fc 50 03 	. P . 
	rrca			;a507	0f 	. 
	rst 38h			;a508	ff 	. 
	ret p			;a509	f0 	. 
	ld d,b			;a50a	50 	P 
	ld (bc),a			;a50b	02 	. 
	ld (bc),a			;a50c	02 	. 
	ld d,d			;a50d	52 	R 
	ld (bc),a			;a50e	02 	. 
	add a,b			;a50f	80 	. 
	ld d,b			;a510	50 	P 
	ld (bc),a			;a511	02 	. 
	xor a			;a512	af 	. 
	rst 38h			;a513	ff 	. 
	ret p			;a514	f0 	. 
	ld d,b			;a515	50 	P 
	ld (bc),a			;a516	02 	. 
	ld (bc),a			;a517	02 	. 
	ld d,d			;a518	52 	R 
	ld (bc),a			;a519	02 	. 
	add a,b			;a51a	80 	. 
	inc l			;a51b	2c 	, 
	nop			;a51c	00 	. 
	xor a			;a51d	af 	. 
	rst 38h			;a51e	ff 	. 
	ret p			;a51f	f0 	. 
	ld d,b			;a520	50 	P 
	ld (bc),a			;a521	02 	. 
	inc bc			;a522	03 	. 
	rst 38h			;a523	ff 	. 
	call m,02c00h		;a524	fc 00 2c 	. . , 
	nop			;a527	00 	. 
	ld c,053h		;a528	0e 53 	. S 
	ld (bc),a			;a52a	02 	. 
	ld d,b			;a52b	50 	P 
	ld (bc),a			;a52c	02 	. 
	ld d,e			;a52d	53 	S 
	ld (bc),a			;a52e	02 	. 
	call m,02c00h		;a52f	fc 00 2c 	. . , 
	nop			;a532	00 	. 
	rrca			;a533	0f 	. 
	call m,00350h		;a534	fc 50 03 	. P . 
	inc bc			;a537	03 	. 
	rst 38h			;a538	ff 	. 
	call m,02c00h		;a539	fc 00 2c 	. . , 
	nop			;a53c	00 	. 
	rrca			;a53d	0f 	. 
	call m,00350h		;a53e	fc 50 03 	. P . 
	inc bc			;a541	03 	. 
	rst 38h			;a542	ff 	. 
	call m,0aa0ah		;a543	fc 0a aa 	. . . 
	xor b			;a546	a8 	. 
	rrca			;a547	0f 	. 
	ret p			;a548	f0 	. 
	ld d,b			;a549	50 	P 
	inc bc			;a54a	03 	. 
	ld a,0aah		;a54b	3e aa 	> . 
	xor h			;a54d	ac 	. 
	rrca			;a54e	0f 	. 
	rst 38h			;a54f	ff 	. 
	call m,0f00fh		;a550	fc 0f f0 	. . . 
	ld d,b			;a553	50 	P 
	inc b			;a554	04 	. 
	rst 38h			;a555	ff 	. 
	call m,03e00h		;a556	fc 00 3e 	. . > 
	cp h			;a559	bc 	. 
	rrca			;a55a	0f 	. 
	ret nz			;a55b	c0 	. 
	ld d,b			;a55c	50 	P 
	inc b			;a55d	04 	. 
	rst 38h			;a55e	ff 	. 
	call m,03f00h		;a55f	fc 00 3f 	. . ? 
	call m,0c00fh		;a562	fc 0f c0 	. . . 
	ld d,b			;a565	50 	P 
	inc bc			;a566	03 	. 
	inc bc			;a567	03 	. 
	ex de,hl			;a568	eb 	. 
	ret nz			;a569	c0 	. 
	ld d,b			;a56a	50 	P 
	ld (bc),a			;a56b	02 	. 
	call m,0c00fh		;a56c	fc 0f c0 	. . . 
	inc a			;a56f	3c 	< 
	ld d,b			;a570	50 	P 
	ld (bc),a			;a571	02 	. 
	inc bc			;a572	03 	. 
	rst 38h			;a573	ff 	. 
	ret nz			;a574	c0 	. 
	ld d,b			;a575	50 	P 
	ld (bc),a			;a576	02 	. 
	inc a			;a577	3c 	< 
	rrca			;a578	0f 	. 
	ret nz			;a579	c0 	. 
	call m,00250h		;a57a	fc 50 02 	. P . 
	ccf			;a57d	3f 	? 
	rst 38h			;a57e	ff 	. 
	ret nz			;a57f	c0 	. 
	ld d,b			;a580	50 	P 
	ld (bc),a			;a581	02 	. 
	inc a			;a582	3c 	< 
	rrca			;a583	0f 	. 
	ret nz			;a584	c0 	. 
	jp pe,003b0h		;a585	ea b0 03 	. . . 
	ld d,e			;a588	53 	S 
	ld (bc),a			;a589	02 	. 
	call m,00250h		;a58a	fc 50 02 	. P . 
	call m,0c00fh		;a58d	fc 0f c0 	. . . 
	rst 38h			;a590	ff 	. 
	ret nz			;a591	c0 	. 
	nop			;a592	00 	. 
	rrca			;a593	0f 	. 
	rst 38h			;a594	ff 	. 
	call m,00f00h		;a595	fc 00 0f 	. . . 
	call pe,0c00fh		;a598	ec 0f c0 	. . . 
	rst 38h			;a59b	ff 	. 
	ld d,b			;a59c	50 	P 
	ld (bc),a			;a59d	02 	. 
	ld d,e			;a59e	53 	S 
	ld (bc),a			;a59f	02 	. 
	ret p			;a5a0	f0 	. 
	nop			;a5a1	00 	. 
	inc bc			;a5a2	03 	. 
	call m,0c00fh		;a5a3	fc 0f c0 	. . . 
	call m,00f00h		;a5a6	fc 00 0f 	. . . 
	ex de,hl			;a5a9	eb 	. 
	ex de,hl			;a5aa	eb 	. 
	ret nz			;a5ab	c0 	. 
	ld d,b			;a5ac	50 	P 
	ld (bc),a			;a5ad	02 	. 
	call m,0c00fh		;a5ae	fc 0f c0 	. . . 
	ret p			;a5b1	f0 	. 
	nop			;a5b2	00 	. 
	ld d,e			;a5b3	53 	S 
	inc bc			;a5b4	03 	. 
	ret p			;a5b5	f0 	. 
	ld d,b			;a5b6	50 	P 
	ld (bc),a			;a5b7	02 	. 
	call pe,0c00fh		;a5b8	ec 0f c0 	. . . 
	ret p			;a5bb	f0 	. 
	inc bc			;a5bc	03 	. 
	ret nz			;a5bd	c0 	. 
	nop			;a5be	00 	. 
	xor d			;a5bf	aa 	. 
	add a,b			;a5c0	80 	. 
	nop			;a5c1	00 	. 
	inc bc			;a5c2	03 	. 
	call m,0c00fh		;a5c3	fc 0f c0 	. . . 
	ret p			;a5c6	f0 	. 
	inc bc			;a5c7	03 	. 
	ret nz			;a5c8	c0 	. 
	ld d,b			;a5c9	50 	P 
	inc b			;a5ca	04 	. 
	inc bc			;a5cb	03 	. 
	call pe,0c00fh		;a5cc	ec 0f c0 	. . . 
	ret p			;a5cf	f0 	. 
	inc bc			;a5d0	03 	. 
	ret nz			;a5d1	c0 	. 
	ld a,(bc)			;a5d2	0a 	. 
	xor d			;a5d3	aa 	. 
	and b			;a5d4	a0 	. 
	nop			;a5d5	00 	. 
	rrca			;a5d6	0f 	. 
	call pe,0c00fh		;a5d7	ec 0f c0 	. . . 
	ret m			;a5da	f8 	. 
	dec bc			;a5db	0b 	. 
	nop			;a5dc	00 	. 
	ccf			;a5dd	3f 	? 
	rst 38h			;a5de	ff 	. 
	ret p			;a5df	f0 	. 
	nop			;a5e0	00 	. 
	rrca			;a5e1	0f 	. 
	call m,0c00fh		;a5e2	fc 0f c0 	. . . 
	call m,0030bh		;a5e5	fc 0b 03 	. . . 
	jp pe,0acbah		;a5e8	ea ba ac 	. . . 
	nop			;a5eb	00 	. 
	inc bc			;a5ec	03 	. 
	call m,0c00fh		;a5ed	fc 0f c0 	. . . 
	ret p			;a5f0	f0 	. 
	rrca			;a5f1	0f 	. 
	inc bc			;a5f2	03 	. 
	ld d,e			;a5f3	53 	S 
	ld (bc),a			;a5f4	02 	. 
	call m,00300h		;a5f5	fc 00 03 	. . . 
	call m,0c00fh		;a5f8	fc 0f c0 	. . . 
	ret p			;a5fb	f0 	. 
	nop			;a5fc	00 	. 
	inc bc			;a5fd	03 	. 
	ld d,e			;a5fe	53 	S 
	ld (bc),a			;a5ff	02 	. 
	call m,00300h		;a600	fc 00 03 	. . . 
	call m,0c00fh		;a603	fc 0f c0 	. . . 
	ret p			;a606	f0 	. 
	nop			;a607	00 	. 
	inc bc			;a608	03 	. 
	ld d,e			;a609	53 	S 
	dec b			;a60a	05 	. 
	call m,0c00fh		;a60b	fc 0f c0 	. . . 
	rst 38h			;a60e	ff 	. 
	or b			;a60f	b0 	. 
	dec sp			;a610	3b 	; 
	ld d,e			;a611	53 	S 
	dec b			;a612	05 	. 
	call m,0c00fh		;a613	fc 0f c0 	. . . 
	ret p			;a616	f0 	. 
	ld d,b			;a617	50 	P 
	ld (bc),a			;a618	02 	. 
	inc bc			;a619	03 	. 
	cp a			;a61a	bf 	. 
	or b			;a61b	b0 	. 
	ld d,b			;a61c	50 	P 
	inc bc			;a61d	03 	. 
	rrca			;a61e	0f 	. 
	ret nz			;a61f	c0 	. 
	ret p			;a620	f0 	. 
	ld d,b			;a621	50 	P 
	ld (bc),a			;a622	02 	. 
	inc bc			;a623	03 	. 
	rst 38h			;a624	ff 	. 
	call m,00350h		;a625	fc 50 03 	. P . 
	rst 38h			;a628	ff 	. 
	ret nz			;a629	c0 	. 
	ret p			;a62a	f0 	. 
	ld d,b			;a62b	50 	P 
	ld (bc),a			;a62c	02 	. 
	inc bc			;a62d	03 	. 
	ld d,e			;a62e	53 	S 
	ld (bc),a			;a62f	02 	. 
	ld d,b			;a630	50 	P 
	ld (bc),a			;a631	02 	. 
	inc bc			;a632	03 	. 
	rst 38h			;a633	ff 	. 
	ret nz			;a634	c0 	. 
	ret p			;a635	f0 	. 
	ccf			;a636	3f 	? 
	ld d,e			;a637	53 	S 
	inc b			;a638	04 	. 
	ld d,b			;a639	50 	P 
	ld (bc),a			;a63a	02 	. 
	inc bc			;a63b	03 	. 
	rst 38h			;a63c	ff 	. 
	ret nz			;a63d	c0 	. 
	ret p			;a63e	f0 	. 
	ccf			;a63f	3f 	? 
	ld d,e			;a640	53 	S 
	inc bc			;a641	03 	. 
	ret nz			;a642	c0 	. 
	ld d,b			;a643	50 	P 
	inc bc			;a644	03 	. 
	ccf			;a645	3f 	? 
	ret nz			;a646	c0 	. 
	ret p			;a647	f0 	. 
	ccf			;a648	3f 	? 
	ld d,e			;a649	53 	S 
	ld (bc),a			;a64a	02 	. 
	call m,00450h		;a64b	fc 50 04 	. P . 
	ccf			;a64e	3f 	? 
	ret nz			;a64f	c0 	. 
	ret p			;a650	f0 	. 
	ccf			;a651	3f 	? 
	ld d,e			;a652	53 	S 
	ld (bc),a			;a653	02 	. 
	call m,0bf03h		;a654	fc 03 bf 	. . . 
	ld d,e			;a657	53 	S 
	ld (bc),a			;a658	02 	. 
	cp a			;a659	bf 	. 
	ret nz			;a65a	c0 	. 
	ret p			;a65b	f0 	. 
	inc a			;a65c	3c 	< 
	nop			;a65d	00 	. 
	inc bc			;a65e	03 	. 
	call m,05303h		;a65f	fc 03 53 	. . S 
	inc b			;a662	04 	. 
	ret nz			;a663	c0 	. 
	ret p			;a664	f0 	. 
	inc a			;a665	3c 	< 
	nop			;a666	00 	. 
	inc bc			;a667	03 	. 
	call m,00450h		;a668	fc 50 04 	. P . 
	rlca			;a66b	07 	. 
	ret nz			;a66c	c0 	. 
	ret p			;a66d	f0 	. 
	inc a			;a66e	3c 	< 
	ld d,b			;a66f	50 	P 
	ld (bc),a			;a670	02 	. 
	ld a,(050c0h)		;a671	3a c0 50 	: . P 
	inc bc			;a674	03 	. 
	rlca			;a675	07 	. 
	ret nz			;a676	c0 	. 
	nop			;a677	00 	. 
	inc a			;a678	3c 	< 
	ld d,b			;a679	50 	P 
	ld (bc),a			;a67a	02 	. 
	ccf			;a67b	3f 	? 
	ret nz			;a67c	c0 	. 
	ld d,b			;a67d	50 	P 
	inc bc			;a67e	03 	. 
	rlca			;a67f	07 	. 
	ret nz			;a680	c0 	. 
	nop			;a681	00 	. 
	inc a			;a682	3c 	< 
	ld d,b			;a683	50 	P 
	rlca			;a684	07 	. 
	rlca			;a685	07 	. 
	rst 38h			;a686	ff 	. 
	ret p			;a687	f0 	. 
	inc a			;a688	3c 	< 
	nop			;a689	00 	. 
	inc bc			;a68a	03 	. 
	rst 38h			;a68b	ff 	. 
	ret nz			;a68c	c0 	. 
	ld d,b			;a68d	50 	P 
	inc bc			;a68e	03 	. 
	rrca			;a68f	0f 	. 
	rst 38h			;a690	ff 	. 
	ret p			;a691	f0 	. 
	ld a,0aeh		;a692	3e ae 	> . 
	xor e			;a694	ab 	. 
	rst 38h			;a695	ff 	. 
	ret nz			;a696	c0 	. 
	ld d,b			;a697	50 	P 
	inc bc			;a698	03 	. 
	rrca			;a699	0f 	. 
	rst 38h			;a69a	ff 	. 
	ret p			;a69b	f0 	. 
	ccf			;a69c	3f 	? 
	ld d,e			;a69d	53 	S 
	inc b			;a69e	04 	. 
	ei			;a69f	fb 	. 
	inc bc			;a6a0	03 	. 
	cp a			;a6a1	bf 	. 
	ld d,e			;a6a2	53 	S 
	ld (bc),a			;a6a3	02 	. 
	ret p			;a6a4	f0 	. 
	ld d,b			;a6a5	50 	P 
	ld (bc),a			;a6a6	02 	. 
	ld c,0eeh		;a6a7	0e ee 	. . 
	call pe,00350h		;a6a9	ec 50 03 	. P . 
	rst 38h			;a6ac	ff 	. 
	ret nz			;a6ad	c0 	. 
	ld d,b			;a6ae	50 	P 
	inc bc			;a6af	03 	. 
	ld d,e			;a6b0	53 	S 
	ld (bc),a			;a6b1	02 	. 
	call m,00350h		;a6b2	fc 50 03 	. P . 
	rst 38h			;a6b5	ff 	. 
	ret nz			;a6b6	c0 	. 
	ld d,b			;a6b7	50 	P 
	inc bc			;a6b8	03 	. 
	ld d,e			;a6b9	53 	S 
	ld (bc),a			;a6ba	02 	. 
	call m,0ae0eh		;a6bb	fc 0e ae 	. . . 
	cp e			;a6be	bb 	. 
	rst 38h			;a6bf	ff 	. 
	ret nz			;a6c0	c0 	. 
	call m,00300h		;a6c1	fc 00 03 	. . . 
	ld d,e			;a6c4	53 	S 
	ld (bc),a			;a6c5	02 	. 
	call m,0ae0eh		;a6c6	fc 0e ae 	. . . 
	cp e			;a6c9	bb 	. 
	rst 38h			;a6ca	ff 	. 
	ret nz			;a6cb	c0 	. 
	call m,00300h		;a6cc	fc 00 03 	. . . 
	ld d,e			;a6cf	53 	S 
	ld (bc),a			;a6d0	02 	. 
	ret nz			;a6d1	c0 	. 
	ld d,b			;a6d2	50 	P 
	inc bc			;a6d3	03 	. 
	rrca			;a6d4	0f 	. 
	ret nz			;a6d5	c0 	. 
	ret p			;a6d6	f0 	. 
	ld d,b			;a6d7	50 	P 
	ld (bc),a			;a6d8	02 	. 
	ccf			;a6d9	3f 	? 
	rst 38h			;a6da	ff 	. 
	ret nz			;a6db	c0 	. 
	ld d,b			;a6dc	50 	P 
	inc bc			;a6dd	03 	. 
	rrca			;a6de	0f 	. 
	ret nz			;a6df	c0 	. 
	call m,00250h		;a6e0	fc 50 02 	. P . 
	ccf			;a6e3	3f 	? 
	rst 38h			;a6e4	ff 	. 
	ret nz			;a6e5	c0 	. 
	ld d,b			;a6e6	50 	P 
	inc bc			;a6e7	03 	. 
	rrca			;a6e8	0f 	. 
	ret nz			;a6e9	c0 	. 
	call m,00250h		;a6ea	fc 50 02 	. P . 
	ld d,e			;a6ed	53 	S 
	ld (bc),a			;a6ee	02 	. 
	ret nz			;a6ef	c0 	. 
	ld d,b			;a6f0	50 	P 
	inc bc			;a6f1	03 	. 
	rrca			;a6f2	0f 	. 
	ret nz			;a6f3	c0 	. 
	cp 052h		;a6f4	fe 52 	. R 
	ld (bc),a			;a6f6	02 	. 
	ld d,e			;a6f7	53 	S 
	ld (bc),a			;a6f8	02 	. 
	ret nz			;a6f9	c0 	. 
	ld d,b			;a6fa	50 	P 
	inc bc			;a6fb	03 	. 
	rrca			;a6fc	0f 	. 
	ret nz			;a6fd	c0 	. 
	ld d,e			;a6fe	53 	S 
	dec b			;a6ff	05 	. 
	ret nz			;a700	c0 	. 
	ld d,d			;a701	52 	R 
	inc bc			;a702	03 	. 
	xor a			;a703	af 	. 
	ret nz			;a704	c0 	. 
	rrca			;a705	0f 	. 
	ld d,e			;a706	53 	S 
	inc b			;a707	04 	. 
	ret nz			;a708	c0 	. 
	ld (bc),a			;a709	02 	. 
	ld d,d			;a70a	52 	R 
	ld (bc),a			;a70b	02 	. 
	xor a			;a70c	af 	. 
	ret nz			;a70d	c0 	. 
	rrca			;a70e	0f 	. 
	ret p			;a70f	f0 	. 
	nop			;a710	00 	. 
	inc bc			;a711	03 	. 
	rst 38h			;a712	ff 	. 
	ret nz			;a713	c0 	. 
	inc bc			;a714	03 	. 
	ld d,e			;a715	53 	S 
	ld (bc),a			;a716	02 	. 
	rst 28h			;a717	ef 	. 
	ret nz			;a718	c0 	. 
	rrca			;a719	0f 	. 
	ret p			;a71a	f0 	. 
	nop			;a71b	00 	. 
	inc bc			;a71c	03 	. 
	rst 38h			;a71d	ff 	. 
	ret nz			;a71e	c0 	. 
	ld d,b			;a71f	50 	P 
	inc bc			;a720	03 	. 
	cpl			;a721	2f 	/ 
	ret p			;a722	f0 	. 
	nop			;a723	00 	. 
	ret p			;a724	f0 	. 
	nop			;a725	00 	. 
	inc bc			;a726	03 	. 
	rst 38h			;a727	ff 	. 
	ret nz			;a728	c0 	. 
	ld d,b			;a729	50 	P 
	inc bc			;a72a	03 	. 
	cpl			;a72b	2f 	/ 
	call m,00550h		;a72c	fc 50 05 	. P . 
	ret p			;a72f	f0 	. 
	ld d,b			;a730	50 	P 
	inc bc			;a731	03 	. 
	cpl			;a732	2f 	/ 
	call m,00550h		;a733	fc 50 05 	. P . 
	ret p			;a736	f0 	. 
	ld d,b			;a737	50 	P 
	inc bc			;a738	03 	. 
	rlca			;a739	07 	. 
	call m,00550h		;a73a	fc 50 05 	. P . 
	ld d,e			;a73d	53 	S 
	ld (bc),a			;a73e	02 	. 
	ld d,b			;a73f	50 	P 
	ld (bc),a			;a740	02 	. 
	rlca			;a741	07 	. 
	rst 38h			;a742	ff 	. 
	ld d,b			;a743	50 	P 
	dec b			;a744	05 	. 
	ld d,e			;a745	53 	S 
	ld (bc),a			;a746	02 	. 
	ld d,b			;a747	50 	P 
	ld (bc),a			;a748	02 	. 
	rlca			;a749	07 	. 
	rst 38h			;a74a	ff 	. 
	ld d,b			;a74b	50 	P 
	ld b,007h		;a74c	06 07 	. . 
	ld d,b			;a74e	50 	P 
	ld (bc),a			;a74f	02 	. 
	rlca			;a750	07 	. 
	rst 38h			;a751	ff 	. 
	ret nz			;a752	c0 	. 
	ld d,b			;a753	50 	P 
	dec b			;a754	05 	. 
	rlca			;a755	07 	. 
	ld d,b			;a756	50 	P 
	ld (bc),a			;a757	02 	. 
	rlca			;a758	07 	. 
	rst 38h			;a759	ff 	. 
	call m,00550h		;a75a	fc 50 05 	. P . 
	rlca			;a75d	07 	. 
	ld d,b			;a75e	50 	P 
	ld (bc),a			;a75f	02 	. 
	rlca			;a760	07 	. 
	rst 38h			;a761	ff 	. 
	call m,00550h		;a762	fc 50 05 	. P . 
	rlca			;a765	07 	. 
	ret p			;a766	f0 	. 
	nop			;a767	00 	. 
	ccf			;a768	3f 	? 
	ld d,e			;a769	53 	S 
	ld (bc),a			;a76a	02 	. 
	ret nz			;a76b	c0 	. 
	ld d,b			;a76c	50 	P 
	inc b			;a76d	04 	. 
	rlca			;a76e	07 	. 
	ret p			;a76f	f0 	. 
	nop			;a770	00 	. 
	ccf			;a771	3f 	? 
	ld d,e			;a772	53 	S 
	ld b,0f0h		;a773	06 f0 	. . 
	rlca			;a775	07 	. 
	ret nz			;a776	c0 	. 
	dec sp			;a777	3b 	; 
	cp a			;a778	bf 	. 
	ld d,e			;a779	53 	S 
	ld b,0fch		;a77a	06 fc 	. . 
	rlca			;a77c	07 	. 
	ret nz			;a77d	c0 	. 
	ccf			;a77e	3f 	? 
	ld d,e			;a77f	53 	S 
	add hl,bc			;a780	09 	. 
	ret nz			;a781	c0 	. 
	ccf			;a782	3f 	? 
	rst 38h			;a783	ff 	. 
	call m,00850h		;a784	fc 50 08 	. P . 
	ccf			;a787	3f 	? 
	rst 38h			;a788	ff 	. 
	call m,00350h		;a789	fc 50 03 	. P . 
	inc bc			;a78c	03 	. 
	ld d,e			;a78d	53 	S 
	ld b,0fch		;a78e	06 fc 	. . 
	ld d,b			;a790	50 	P 
	inc bc			;a791	03 	. 
	inc bc			;a792	03 	. 
	rst 38h			;a793	ff 	. 
	ld d,b			;a794	50 	P 
	inc bc			;a795	03 	. 
	rlca			;a796	07 	. 
	rst 28h			;a797	ef 	. 
	call m,00350h		;a798	fc 50 03 	. P . 
	inc bc			;a79b	03 	. 
	rst 38h			;a79c	ff 	. 
	inc bc			;a79d	03 	. 
	ret nz			;a79e	c0 	. 
	nop			;a79f	00 	. 
	rlca			;a7a0	07 	. 
	ei			;a7a1	fb 	. 
	call m,00350h		;a7a2	fc 50 03 	. P . 
	inc bc			;a7a5	03 	. 
	rst 38h			;a7a6	ff 	. 
	inc bc			;a7a7	03 	. 
	rst 38h			;a7a8	ff 	. 
	call m,0fb07h		;a7a9	fc 07 fb 	. . . 
	call m,00350h		;a7ac	fc 50 03 	. P . 
	inc bc			;a7af	03 	. 
	rst 38h			;a7b0	ff 	. 
	inc bc			;a7b1	03 	. 
	ret nz			;a7b2	c0 	. 
	ld d,e			;a7b3	53 	S 
	inc bc			;a7b4	03 	. 
	call m,00350h		;a7b5	fc 50 03 	. P . 
	inc bc			;a7b8	03 	. 
	call m,0c003h		;a7b9	fc 03 c0 	. . . 
	nop			;a7bc	00 	. 
	rlca			;a7bd	07 	. 
	rst 38h			;a7be	ff 	. 
	call m,00250h		;a7bf	fc 50 02 	. P . 
	ld d,e			;a7c2	53 	S 
	ld (bc),a			;a7c3	02 	. 
	call m,0c00fh		;a7c4	fc 0f c0 	. . . 
	nop			;a7c7	00 	. 
	ld b,0ffh		;a7c8	06 ff 	. . 
	call m,00250h		;a7ca	fc 50 02 	. P . 
	ret p			;a7cd	f0 	. 
	ld d,b			;a7ce	50 	P 
	ld (bc),a			;a7cf	02 	. 
	rrca			;a7d0	0f 	. 
	ret nz			;a7d1	c0 	. 
	nop			;a7d2	00 	. 
	ld b,0ffh		;a7d3	06 ff 	. . 
	call m,00250h		;a7d5	fc 50 02 	. P . 
	ret p			;a7d8	f0 	. 
	ld d,b			;a7d9	50 	P 
	ld (bc),a			;a7da	02 	. 
	rrca			;a7db	0f 	. 
	rst 38h			;a7dc	ff 	. 
	call m,0bf07h		;a7dd	fc 07 bf 	. . . 
	call m,00250h		;a7e0	fc 50 02 	. P . 
	ret p			;a7e3	f0 	. 
	ld d,b			;a7e4	50 	P 
	ld (bc),a			;a7e5	02 	. 
	rrca			;a7e6	0f 	. 
	ret nz			;a7e7	c0 	. 
	ld d,e			;a7e8	53 	S 
	ld (bc),a			;a7e9	02 	. 
	ei			;a7ea	fb 	. 
	call m,00250h		;a7eb	fc 50 02 	. P . 
	ret p			;a7ee	f0 	. 
	nop			;a7ef	00 	. 
	ld d,e			;a7f0	53 	S 
	ld (bc),a			;a7f1	02 	. 
	cp 0c0h		;a7f2	fe c0 	. . 
	rst 28h			;a7f4	ef 	. 
	rst 38h			;a7f5	ff 	. 
	call m,00450h		;a7f6	fc 50 04 	. P . 
	ld d,e			;a7f9	53 	S 
	ld (bc),a			;a7fa	02 	. 
	cp 0c0h		;a7fb	fe c0 	. . 
	rst 28h			;a7fd	ef 	. 
	ld d,e			;a7fe	53 	S 
	dec b			;a7ff	05 	. 
	ret p			;a800	f0 	. 
	ld d,e			;a801	53 	S 
	ld (bc),a			;a802	02 	. 
	cp 0c0h		;a803	fe c0 	. . 
	rst 28h			;a805	ef 	. 
	ld d,e			;a806	53 	S 
	ex af,af'			;a807	08 	. 
	cp 0c0h		;a808	fe c0 	. . 
	rst 28h			;a80a	ef 	. 
	rst 38h			;a80b	ff 	. 
	ld d,b			;a80c	50 	P 
	nop			;a80d	00 	. 
	ld c,c			;a80e	49 	I 
	inc e			;a80f	1c 	. 
	rra			;a810	1f 	. 
	ld (02828h),hl		;a811	22 28 28 	" ( ( 
	rra			;a814	1f 	. 
	add hl,bc			;a815	09 	. 
	add hl,bc			;a816	09 	. 
	inc e			;a817	1c 	. 
	ld e,007h		;a818	1e 07 	. . 
	djnz $+30		;a81a	10 1c 	. . 
	ld de,0110ah		;a81c	11 0a 11 	. . . 
	jr nz,$+19		;a81f	20 11 	  . 
	dec c			;a821	0d 	. 
	rrca			;a822	0f 	. 
	ld de,00f0dh		;a823	11 0d 0f 	. . . 
	ld de,00f0dh		;a826	11 0d 0f 	. . . 
	ld de,00d18h		;a829	11 18 0d 	. . . 
	rrca			;a82c	0f 	. 
	ld de,00f0dh		;a82d	11 0d 0f 	. . . 
	ld de,00f0dh		;a830	11 0d 0f 	. . . 
	ld de,00f0dh		;a833	11 0d 0f 	. . . 
	rst 38h			;a836	ff 	. 
	ld de,02003h		;a837	11 03 20 	. .   
	jr nz,$+12		;a83a	20 0a 	  . 
	jr nz,$+12		;a83c	20 0a 	  . 
	jr nz,$+15		;a83e	20 0d 	  . 
	jr nz,$+16		;a840	20 0e 	  . 
	add hl,de			;a842	19 	. 
	ld h,0ffh		;a843	26 ff 	& . 
	jr $+5		;a845	18 03 	. . 
	inc e			;a847	1c 	. 
	rst 38h			;a848	ff 	. 
	ld de,02004h		;a849	11 04 20 	. .   
	jr nz,$+5		;a84c	20 03 	  . 
	dec b			;a84e	05 	. 
	rlca			;a84f	07 	. 
	add hl,bc			;a850	09 	. 
	jr $+26		;a851	18 18 	. . 
	ld hl,01220h		;a853	21 20 12 	!   . 
	ld (de),a			;a856	12 	. 
	rst 38h			;a857	ff 	. 
	ld l,003h		;a858	2e 03 	. . 
	jr c,$+66		;a85a	38 40 	8 @ 
	ld l,b			;a85c	68 	h 
	add a,h			;a85d	84 	. 
	or d			;a85e	b2 	. 
	cp h			;a85f	bc 	. 
	call po,00402h		;a860	e4 02 04 	. . . 
	inc c			;a863	0c 	. 
	ld h,b			;a864	60 	` 
	rst 38h			;a865	ff 	. 
	ld l,h			;a866	6c 	l 
	inc bc			;a867	03 	. 
	and d			;a868	a2 	. 
	rst 38h			;a869	ff 	. 
	xor d			;a86a	aa 	. 
	inc bc			;a86b	03 	. 
	rst 38h			;a86c	ff 	. 
	xor (hl)			;a86d	ae 	. 
	inc bc			;a86e	03 	. 
	rst 38h			;a86f	ff 	. 
	or d			;a870	b2 	. 
	inc bc			;a871	03 	. 
	or h			;a872	b4 	. 
	rst 38h			;a873	ff 	. 
	or (hl)			;a874	b6 	. 
	inc bc			;a875	03 	. 
	rst 38h			;a876	ff 	. 
	cp d			;a877	ba 	. 
	inc bc			;a878	03 	. 
	rst 38h			;a879	ff 	. 
	cp (hl)			;a87a	be 	. 
	inc bc			;a87b	03 	. 
	rst 38h			;a87c	ff 	. 
	jp nz,0ca03h		;a87d	c2 03 ca 	. . . 
	adc a,0d8h		;a880	ce d8 	. . 
	inc b			;a882	04 	. 
	djnz $+20		;a883	10 12 	. . 
	ld c,d			;a885	4a 	J 
	ld d,h			;a886	54 	T 
	ld h,d			;a887	62 	b 
	ld h,h			;a888	64 	d 
	ld h,(hl)			;a889	66 	f 
	ld a,b			;a88a	78 	x 
	and b			;a88b	a0 	. 
	and h			;a88c	a4 	. 
	xor h			;a88d	ac 	. 
	or h			;a88e	b4 	. 
	jp z,0f2ech		;a88f	ca ec f2 	. . . 
	ret m			;a892	f8 	. 
	cp 00eh		;a893	fe 0e 	. . 
	inc h			;a895	24 	$ 
	rst 38h			;a896	ff 	. 
	ld l,004h		;a897	2e 04 	. . 
	inc (hl)			;a899	34 	4 
	ld a,(0543ch)		;a89a	3a 3c 54 	: < T 
	sub b			;a89d	90 	. 
	sub h			;a89e	94 	. 
	rst 38h			;a89f	ff 	. 
	ld d,b			;a8a0	50 	P 
	inc bc			;a8a1	03 	. 
	rst 38h			;a8a2	ff 	. 
	inc d			;a8a3	14 	. 
	inc bc			;a8a4	03 	. 
	rst 38h			;a8a5	ff 	. 
	inc l			;a8a6	2c 	, 
	inc b			;a8a7	04 	. 
	rst 38h			;a8a8	ff 	. 
	dec l			;a8a9	2d 	- 
	inc bc			;a8aa	03 	. 
	dec d			;a8ab	15 	. 
	add hl,hl			;a8ac	29 	) 
	dec d			;a8ad	15 	. 
	dec l			;a8ae	2d 	- 
	ld c,l			;a8af	4d 	M 
	rst 38h			;a8b0	ff 	. 
	dec b			;a8b1	05 	. 
	add hl,bc			;a8b2	09 	. 
	dec l			;a8b3	2d 	- 
	rst 38h			;a8b4	ff 	. 
	dec b			;a8b5	05 	. 
	inc c			;a8b6	0c 	. 
	ld c,l			;a8b7	4d 	M 
	ld l,l			;a8b8	6d 	m 
	dec l			;a8b9	2d 	- 
	ld hl,(02a2eh)		;a8ba	2a 2e 2a 	* . * 
	ld l,02ah		;a8bd	2e 2a 	. * 
	ld d,d			;a8bf	52 	R 
	ld hl,(0166eh)		;a8c0	2a 6e 16 	* n . 
	rst 38h			;a8c3	ff 	. 
	ld l,004h		;a8c4	2e 04 	. . 
	ld d,d			;a8c6	52 	R 
	rst 38h			;a8c7	ff 	. 
	ld c,(hl)			;a8c8	4e 	N 
	inc b			;a8c9	04 	. 
	dec hl			;a8ca	2b 	+ 
	dec hl			;a8cb	2b 	+ 
	rst 38h			;a8cc	ff 	. 
	inc bc			;a8cd	03 	. 
	inc b			;a8ce	04 	. 
	rla			;a8cf	17 	. 
	rla			;a8d0	17 	. 
	dec hl			;a8d1	2b 	+ 
	dec hl			;a8d2	2b 	+ 
	ld d,e			;a8d3	53 	S 
	ld l,a			;a8d4	6f 	o 
	rst 38h			;a8d5	ff 	. 
	ex af,af'			;a8d6	08 	. 
	inc bc			;a8d7	03 	. 
	rst 38h			;a8d8	ff 	. 
	ld l,l			;a8d9	6d 	m 
	inc bc			;a8da	03 	. 
	rst 38h			;a8db	ff 	. 
	ld e,007h		;a8dc	1e 07 	. . 
	ld l,l			;a8de	6d 	m 
	ld e,06dh		;a8df	1e 6d 	. m 
	ld e,004h		;a8e1	1e 04 	. . 
	rst 38h			;a8e3	ff 	. 
	ld a,(hl)			;a8e4	7e 	~ 
	add hl,bc			;a8e5	09 	. 
	ld e,0ffh		;a8e6	1e ff 	. . 
	ld a,(hl)			;a8e8	7e 	~ 
	inc c			;a8e9	0c 	. 
	inc b			;a8ea	04 	. 
	ld c,0ffh		;a8eb	0e ff 	. . 
	ld e,006h		;a8ed	1e 06 	. . 
	ex af,af'			;a8ef	08 	. 
	ld e,00eh		;a8f0	1e 0e 	. . 
	ld l,l			;a8f2	6d 	m 
	rst 38h			;a8f3	ff 	. 
	ld e,004h		;a8f4	1e 04 	. . 
	ex af,af'			;a8f6	08 	. 
	rst 38h			;a8f7	ff 	. 
	inc b			;a8f8	04 	. 
	inc b			;a8f9	04 	. 
	ld e,01eh		;a8fa	1e 1e 	. . 
	rst 38h			;a8fc	ff 	. 
	ld c,l			;a8fd	4d 	M 
	inc b			;a8fe	04 	. 
	ld l,l			;a8ff	6d 	m 
	ld l,l			;a900	6d 	m 
	ld e,01eh		;a901	1e 1e 	. . 
	ex af,af'			;a903	08 	. 
	ld c,0ffh		;a904	0e ff 	. . 
	nop			;a906	00 	. 
	ld c,001h		;a907	0e 01 	. . 
	rst 38h			;a909	ff 	. 
	nop			;a90a	00 	. 
	ex af,af'			;a90b	08 	. 
	rst 38h			;a90c	ff 	. 
	ld (bc),a			;a90d	02 	. 
	inc b			;a90e	04 	. 
	inc bc			;a90f	03 	. 
	inc b			;a910	04 	. 
	dec b			;a911	05 	. 
	ld b,007h		;a912	06 07 	. . 
	rst 38h			;a914	ff 	. 
	ex af,af'			;a915	08 	. 
	inc b			;a916	04 	. 
	add hl,bc			;a917	09 	. 
	add hl,bc			;a918	09 	. 
	rst 38h			;a919	ff 	. 
	inc b			;a91a	04 	. 
	inc b			;a91b	04 	. 
	rst 38h			;a91c	ff 	. 
	add hl,bc			;a91d	09 	. 
	inc bc			;a91e	03 	. 
	ld a,(bc)			;a91f	0a 	. 
	ld a,(bc)			;a920	0a 	. 
	dec bc			;a921	0b 	. 
	ld a,(bc)			;a922	0a 	. 
	ld a,(bc)			;a923	0a 	. 
	rst 38h			;a924	ff 	. 
	inc c			;a925	0c 	. 
	inc b			;a926	04 	. 
	rst 38h			;a927	ff 	. 
	ld a,(bc)			;a928	0a 	. 
	dec b			;a929	05 	. 
	dec c			;a92a	0d 	. 
	ld a,(bc)			;a92b	0a 	. 
	ld a,(bc)			;a92c	0a 	. 
	rst 38h			;a92d	ff 	. 
	inc c			;a92e	0c 	. 
	inc b			;a92f	04 	. 
	rst 38h			;a930	ff 	. 
	ld a,(bc)			;a931	0a 	. 
	dec b			;a932	05 	. 
	dec bc			;a933	0b 	. 
	dec bc			;a934	0b 	. 
	rst 38h			;a935	ff 	. 
	ld c,004h		;a936	0e 04 	. . 
	rst 38h			;a938	ff 	. 
	rrca			;a939	0f 	. 
	ex af,af'			;a93a	08 	. 
	rst 38h			;a93b	ff 	. 
	djnz $+6		;a93c	10 04 	. . 
	ld de,012ffh		;a93e	11 ff 12 	. . . 
	inc bc			;a941	03 	. 
	rst 38h			;a942	ff 	. 
	inc de			;a943	13 	. 
	inc b			;a944	04 	. 
	rst 38h			;a945	ff 	. 
	inc d			;a946	14 	. 
	inc bc			;a947	03 	. 
	rst 38h			;a948	ff 	. 
	ld (de),a			;a949	12 	. 
	ex af,af'			;a94a	08 	. 
	dec d			;a94b	15 	. 
	dec d			;a94c	15 	. 
	ld d,016h		;a94d	16 16 	. . 
	rla			;a94f	17 	. 
	rst 38h			;a950	ff 	. 
	ld (de),a			;a951	12 	. 
	rlca			;a952	07 	. 
	rst 38h			;a953	ff 	. 
	jr $+8		;a954	18 06 	. . 
	rst 38h			;a956	ff 	. 
	add hl,de			;a957	19 	. 
	inc bc			;a958	03 	. 
	ld a,(de)			;a959	1a 	. 
	dec de			;a95a	1b 	. 
	inc e			;a95b	1c 	. 
	rst 38h			;a95c	ff 	. 
	dec e			;a95d	1d 	. 
	dec b			;a95e	05 	. 
	ld e,0ffh		;a95f	1e ff 	. . 
	rra			;a961	1f 	. 
	inc bc			;a962	03 	. 
	rst 38h			;a963	ff 	. 
	jr nz,$+5		;a964	20 03 	  . 
	rst 38h			;a966	ff 	. 
	jr $+13		;a967	18 0b 	. . 
	ld hl,022ffh		;a969	21 ff 22 	! . " 
	add hl,bc			;a96c	09 	. 
	rst 38h			;a96d	ff 	. 
	inc hl			;a96e	23 	# 
	ld c,0ffh		;a96f	0e ff 	. . 
	inc h			;a971	24 	$ 
	inc bc			;a972	03 	. 
	rst 38h			;a973	ff 	. 
	dec h			;a974	25 	% 
	ex af,af'			;a975	08 	. 
	rst 38h			;a976	ff 	. 
	ld h,00eh		;a977	26 0e 	& . 
	rst 38h			;a979	ff 	. 
	daa			;a97a	27 	' 
	inc bc			;a97b	03 	. 
	ld h,026h		;a97c	26 26 	& & 
	rst 38h			;a97e	ff 	. 
	jr z,$+11		;a97f	28 09 	( . 
	rst 38h			;a981	ff 	. 
	add hl,hl			;a982	29 	) 
	inc bc			;a983	03 	. 
	rst 38h			;a984	ff 	. 
	jr z,$+12		;a985	28 0a 	( . 
	rst 38h			;a987	ff 	. 
	ld hl,(0ff03h)		;a988	2a 03 ff 	* . . 
	dec hl			;a98b	2b 	+ 
	dec bc			;a98c	0b 	. 
	ld hl,(02c2ah)		;a98d	2a 2a 2c 	* * , 
	rst 38h			;a990	ff 	. 
	dec l			;a991	2d 	- 
	dec bc			;a992	0b 	. 
	rst 38h			;a993	ff 	. 
	ld l,005h		;a994	2e 05 	. . 
	rst 38h			;a996	ff 	. 
	cpl			;a997	2f 	/ 
	ld d,0ffh		;a998	16 ff 	. . 
	jr nc,$+8		;a99a	30 06 	0 . 
	rst 38h			;a99c	ff 	. 
	ld sp,0ff12h		;a99d	31 12 ff 	1 . . 
	ld (0ff05h),a		;a9a0	32 05 ff 	2 . . 
	inc sp			;a9a3	33 	3 
	inc c			;a9a4	0c 	. 
	rst 38h			;a9a5	ff 	. 
	ld sp,0ff06h		;a9a6	31 06 ff 	1 . . 
	inc (hl)			;a9a9	34 	4 
	inc bc			;a9aa	03 	. 
	rst 38h			;a9ab	ff 	. 
	dec (hl)			;a9ac	35 	5 
	inc b			;a9ad	04 	. 
	rst 38h			;a9ae	ff 	. 
	ld (hl),004h		;a9af	36 04 	6 . 
	scf			;a9b1	37 	7 
	rst 38h			;a9b2	ff 	. 
	jr c,$+8		;a9b3	38 06 	8 . 
	rst 38h			;a9b5	ff 	. 
	add hl,sp			;a9b6	39 	9 
	inc b			;a9b7	04 	. 
	rst 38h			;a9b8	ff 	. 
	ld a,(0ff0ah)		;a9b9	3a 0a ff 	: . . 
	dec sp			;a9bc	3b 	; 
	inc bc			;a9bd	03 	. 
	rst 38h			;a9be	ff 	. 
	inc a			;a9bf	3c 	< 
	dec c			;a9c0	0d 	. 
	rst 38h			;a9c1	ff 	. 
	dec a			;a9c2	3d 	= 
	inc bc			;a9c3	03 	. 
	rst 38h			;a9c4	ff 	. 
	ld a,007h		;a9c5	3e 07 	> . 
	ccf			;a9c7	3f 	? 
	ccf			;a9c8	3f 	? 
	rst 38h			;a9c9	ff 	. 
	ld b,b			;a9ca	40 	@ 
	inc bc			;a9cb	03 	. 
	rst 38h			;a9cc	ff 	. 
	ld b,c			;a9cd	41 	A 
	dec b			;a9ce	05 	. 
	rst 38h			;a9cf	ff 	. 
	ld b,d			;a9d0	42 	B 
	ld b,0ffh		;a9d1	06 ff 	. . 
	ld b,e			;a9d3	43 	C 
	ld (de),a			;a9d4	12 	. 
	rst 38h			;a9d5	ff 	. 
	ld b,h			;a9d6	44 	D 
	inc bc			;a9d7	03 	. 
	rst 38h			;a9d8	ff 	. 
	ld b,l			;a9d9	45 	E 
	inc bc			;a9da	03 	. 
	ld b,(hl)			;a9db	46 	F 
	ld b,a			;a9dc	47 	G 
	ld b,a			;a9dd	47 	G 
	ld c,b			;a9de	48 	H 
	rst 38h			;a9df	ff 	. 
	ld c,c			;a9e0	49 	I 
	ld b,0ffh		;a9e1	06 ff 	. . 
	ld c,d			;a9e3	4a 	J 
	inc b			;a9e4	04 	. 
	rst 38h			;a9e5	ff 	. 
	ld c,e			;a9e6	4b 	K 
	dec bc			;a9e7	0b 	. 
	rst 38h			;a9e8	ff 	. 
	ld c,h			;a9e9	4c 	L 
	inc bc			;a9ea	03 	. 
	ld c,l			;a9eb	4d 	M 
	ld c,l			;a9ec	4d 	M 
	rst 38h			;a9ed	ff 	. 
	ld c,(hl)			;a9ee	4e 	N 
	inc de			;a9ef	13 	. 
	ld d,e			;a9f0	53 	S 
	ld (bc),a			;a9f1	02 	. 
	call pe,0530eh		;a9f2	ec 0e 53 	. . S 
	add hl,bc			;a9f5	09 	. 
	xor 0aeh		;a9f6	ee ae 	. . 
	ld d,e			;a9f8	53 	S 
	add hl,bc			;a9f9	09 	. 
	call pe,0530eh		;a9fa	ec 0e 53 	. . S 
	ld (bc),a			;a9fd	02 	. 
	ret nz			;a9fe	c0 	. 
	ld d,b			;a9ff	50 	P 
	inc bc			;aa00	03 	. 
	rrca			;aa01	0f 	. 
	ld d,e			;aa02	53 	S 
	ld (bc),a			;aa03	02 	. 
	call pe,0530eh		;aa04	ec 0e 53 	. . S 
	ld (bc),a			;aa07	02 	. 
	ret nz			;aa08	c0 	. 
	ccf			;aa09	3f 	? 
	rst 38h			;aa0a	ff 	. 
	ret p			;aa0b	f0 	. 
	rrca			;aa0c	0f 	. 
	ld d,e			;aa0d	53 	S 
	ld (bc),a			;aa0e	02 	. 
	call pe,0530eh		;aa0f	ec 0e 53 	. . S 
	ld (bc),a			;aa12	02 	. 
	ret nz			;aa13	c0 	. 
	nop			;aa14	00 	. 
	rrca			;aa15	0f 	. 
	ret p			;aa16	f0 	. 
	rrca			;aa17	0f 	. 
	ld d,e			;aa18	53 	S 
	ld (bc),a			;aa19	02 	. 
	call pe,0530eh		;aa1a	ec 0e 53 	. . S 
	ld (bc),a			;aa1d	02 	. 
	ret nz			;aa1e	c0 	. 
	ld d,b			;aa1f	50 	P 
	ld (bc),a			;aa20	02 	. 
	ret p			;aa21	f0 	. 
	rrca			;aa22	0f 	. 
	ld d,e			;aa23	53 	S 
	ld (bc),a			;aa24	02 	. 
	call pe,0530eh		;aa25	ec 0e 53 	. . S 
	ld (bc),a			;aa28	02 	. 
	ret nz			;aa29	c0 	. 
	ld d,b			;aa2a	50 	P 
	ld (bc),a			;aa2b	02 	. 
	jr nc,$+17		;aa2c	30 0f 	0 . 
	ld d,e			;aa2e	53 	S 
	ld (bc),a			;aa2f	02 	. 
	call pe,0530eh		;aa30	ec 0e 53 	. . S 
	inc bc			;aa33	03 	. 
	ret p			;aa34	f0 	. 
	inc c			;aa35	0c 	. 
	jr nc,$+17		;aa36	30 0f 	0 . 
	ld d,e			;aa38	53 	S 
	ld (bc),a			;aa39	02 	. 
	call pe,0530eh		;aa3a	ec 0e 53 	. . S 
	inc bc			;aa3d	03 	. 
	ret p			;aa3e	f0 	. 
	rrca			;aa3f	0f 	. 
	ret p			;aa40	f0 	. 
	rrca			;aa41	0f 	. 
	ld d,e			;aa42	53 	S 
	ld (bc),a			;aa43	02 	. 
	call pe,0530eh		;aa44	ec 0e 53 	. . S 
	ld (bc),a			;aa47	02 	. 
	ret nz			;aa48	c0 	. 
	jr nc,$+16		;aa49	30 0e 	0 . 
	ret p			;aa4b	f0 	. 
	rrca			;aa4c	0f 	. 
	ret nz			;aa4d	c0 	. 
	ld d,b			;aa4e	50 	P 
	inc bc			;aa4f	03 	. 
	inc bc			;aa50	03 	. 
	cp 0c0h		;aa51	fe c0 	. . 
	jr nc,$+16		;aa53	30 0e 	0 . 
	ret p			;aa55	f0 	. 
	rrca			;aa56	0f 	. 
	ret nz			;aa57	c0 	. 
	ld d,b			;aa58	50 	P 
	inc bc			;aa59	03 	. 
	inc bc			;aa5a	03 	. 
	cp 0c0h		;aa5b	fe c0 	. . 
	ccf			;aa5d	3f 	? 
	cp 0f0h		;aa5e	fe f0 	. . 
	rrca			;aa60	0f 	. 
	ret nz			;aa61	c0 	. 
	ld d,b			;aa62	50 	P 
	inc bc			;aa63	03 	. 
	inc bc			;aa64	03 	. 
	rst 28h			;aa65	ef 	. 
	ret nz			;aa66	c0 	. 
	nop			;aa67	00 	. 
	ld c,0f0h		;aa68	0e f0 	. . 
	rrca			;aa6a	0f 	. 
	ret nz			;aa6b	c0 	. 
	ld d,b			;aa6c	50 	P 
	inc bc			;aa6d	03 	. 
	inc bc			;aa6e	03 	. 
	rst 28h			;aa6f	ef 	. 
	rst 38h			;aa70	ff 	. 
	ret p			;aa71	f0 	. 
	rrca			;aa72	0f 	. 
	or b			;aa73	b0 	. 
	rrca			;aa74	0f 	. 
	ret nz			;aa75	c0 	. 
	ld d,b			;aa76	50 	P 
	ld b,03fh		;aa77	06 3f 	. ? 
	rst 38h			;aa79	ff 	. 
	or b			;aa7a	b0 	. 
	rrca			;aa7b	0f 	. 
	jp m,0aeaah		;aa7c	fa aa ae 	. . . 
	xor d			;aa7f	aa 	. 
	cp d			;aa80	ba 	. 
	xor e			;aa81	ab 	. 
	xor d			;aa82	aa 	. 
	jp pe,0b0ebh		;aa83	ea eb b0 	. . . 
	rrca			;aa86	0f 	. 
	ret nz			;aa87	c0 	. 
	ld d,b			;aa88	50 	P 
	add hl,bc			;aa89	09 	. 
	ld bc,050c0h		;aa8a	01 c0 50 	. . P 
	inc bc			;aa8d	03 	. 
	inc bc			;aa8e	03 	. 
	rst 38h			;aa8f	ff 	. 
	ret nz			;aa90	c0 	. 
	ld d,b			;aa91	50 	P 
	inc bc			;aa92	03 	. 
	ld bc,050c0h		;aa93	01 c0 50 	. . P 
	inc bc			;aa96	03 	. 
	ld bc,0c0aah		;aa97	01 aa c0 	. . . 
	ld d,b			;aa9a	50 	P 
	inc bc			;aa9b	03 	. 
	ld bc,050c0h		;aa9c	01 c0 50 	. . P 
	ld (bc),a			;aa9f	02 	. 
	jr z,$+3		;aaa0	28 01 	( . 
	ex de,hl			;aaa2	eb 	. 
	ret nz			;aaa3	c0 	. 
	ld d,b			;aaa4	50 	P 
	inc bc			;aaa5	03 	. 
	ld bc,050c0h		;aaa6	01 c0 50 	. . P 
	inc bc			;aaa9	03 	. 
	ld bc,0c0aah		;aaaa	01 aa c0 	. . . 
	ld d,b			;aaad	50 	P 
	ld (bc),a			;aaae	02 	. 
	jr z,$+3		;aaaf	28 01 	( . 
	ret nz			;aab1	c0 	. 
	nop			;aab2	00 	. 
	ret p			;aab3	f0 	. 
	nop			;aab4	00 	. 
	ld bc,0c0ebh		;aab5	01 eb c0 	. . . 
	ld d,b			;aab8	50 	P 
	inc bc			;aab9	03 	. 
	ld bc,000c0h		;aaba	01 c0 00 	. . . 
	ret p			;aabd	f0 	. 
	nop			;aabe	00 	. 
	ld bc,0c0aah		;aabf	01 aa c0 	. . . 
	inc bc			;aac2	03 	. 
	ret nz			;aac3	c0 	. 
	nop			;aac4	00 	. 
	ld bc,050c0h		;aac5	01 c0 50 	. . P 
	inc bc			;aac8	03 	. 
	ld bc,0c0ffh		;aac9	01 ff c0 	. . . 
	inc bc			;aacc	03 	. 
	ret nz			;aacd	c0 	. 
	nop			;aace	00 	. 
	ld bc,050f0h		;aacf	01 f0 50 	. . P 
	inc bc			;aad2	03 	. 
	ld bc,0c0ffh		;aad3	01 ff c0 	. . . 
	ld d,b			;aad6	50 	P 
	inc bc			;aad7	03 	. 
	ld bc,050f0h		;aad8	01 f0 50 	. . P 
	ld (bc),a			;aadb	02 	. 
	jr z,$+3		;aadc	28 01 	( . 
	xor d			;aade	aa 	. 
	ret nz			;aadf	c0 	. 
	ld d,b			;aae0	50 	P 
	inc bc			;aae1	03 	. 
	ld bc,050f0h		;aae2	01 f0 50 	. . P 
	ld (bc),a			;aae5	02 	. 
	jr z,$+3		;aae6	28 01 	( . 
	xor d			;aae8	aa 	. 
	ret nz			;aae9	c0 	. 
	ld d,b			;aaea	50 	P 
	ld (bc),a			;aaeb	02 	. 
	inc a			;aaec	3c 	< 
	ld bc,050f0h		;aaed	01 f0 50 	. . P 
	inc bc			;aaf0	03 	. 
	ld bc,0c0ffh		;aaf1	01 ff c0 	. . . 
	ld d,b			;aaf4	50 	P 
	ld (bc),a			;aaf5	02 	. 
	inc a			;aaf6	3c 	< 
	ld bc,050f0h		;aaf7	01 f0 50 	. . P 
	inc bc			;aafa	03 	. 
	inc bc			;aafb	03 	. 
	rst 38h			;aafc	ff 	. 
	ret nz			;aafd	c0 	. 
	ld d,b			;aafe	50 	P 
	ld (bc),a			;aaff	02 	. 
	inc a			;ab00	3c 	< 
	ld bc,050f0h		;ab01	01 f0 50 	. . P 
	add hl,bc			;ab04	09 	. 
	ld bc,000f0h		;ab05	01 f0 00 	. . . 
	ret p			;ab08	f0 	. 
	nop			;ab09	00 	. 
	inc bc			;ab0a	03 	. 
	rst 38h			;ab0b	ff 	. 
	ret nz			;ab0c	c0 	. 
	ld d,b			;ab0d	50 	P 
	inc bc			;ab0e	03 	. 
	ld bc,000f0h		;ab0f	01 f0 00 	. . . 
	ret p			;ab12	f0 	. 
	nop			;ab13	00 	. 
	ld bc,0c0aah		;ab14	01 aa c0 	. . . 
	ld d,b			;ab17	50 	P 
	inc bc			;ab18	03 	. 
	ld bc,050f0h		;ab19	01 f0 50 	. . P 
	inc bc			;ab1c	03 	. 
	ld bc,0c0ffh		;ab1d	01 ff c0 	. . . 
	ld (bc),a			;ab20	02 	. 
	add a,b			;ab21	80 	. 
	nop			;ab22	00 	. 
	ld bc,03bf0h		;ab23	01 f0 3b 	. . ; 
	cp e			;ab26	bb 	. 
	cp h			;ab27	bc 	. 
	inc bc			;ab28	03 	. 
	xor d			;ab29	aa 	. 
	ret nz			;ab2a	c0 	. 
	ld d,b			;ab2b	50 	P 
	inc bc			;ab2c	03 	. 
	ld bc,03ff0h		;ab2d	01 f0 3f 	. . ? 
	rst 38h			;ab30	ff 	. 
	call m,0ff03h		;ab31	fc 03 ff 	. . . 
	ret nz			;ab34	c0 	. 
	dec sp			;ab35	3b 	; 
	xor (hl)			;ab36	ae 	. 
	xor (hl)			;ab37	ae 	. 
	xor e			;ab38	ab 	. 
	ret p			;ab39	f0 	. 
	ld a,0eeh		;ab3a	3e ee 	> . 
	call pe,0eb03h		;ab3c	ec 03 eb 	. . . 
	ret nz			;ab3f	c0 	. 
	ld d,b			;ab40	50 	P 
	inc bc			;ab41	03 	. 
	rrca			;ab42	0f 	. 
	ret p			;ab43	f0 	. 
	ld d,b			;ab44	50 	P 
	ld (bc),a			;ab45	02 	. 
	call m,0ff03h		;ab46	fc 03 ff 	. . . 
	ret nz			;ab49	c0 	. 
	ld d,b			;ab4a	50 	P 
	inc bc			;ab4b	03 	. 
	rrca			;ab4c	0f 	. 
	ret p			;ab4d	f0 	. 
	ld d,b			;ab4e	50 	P 
	ld (bc),a			;ab4f	02 	. 
	call pe,0aa03h		;ab50	ec 03 aa 	. . . 
	ret nz			;ab53	c0 	. 
	xor 0abh		;ab54	ee ab 	. . 
	or b			;ab56	b0 	. 
	rrca			;ab57	0f 	. 
	ret p			;ab58	f0 	. 
	ld d,b			;ab59	50 	P 
	ld (bc),a			;ab5a	02 	. 
	cp b			;ab5b	b8 	. 
	ld d,b			;ab5c	50 	P 
	inc bc			;ab5d	03 	. 
	ei			;ab5e	fb 	. 
	cp 0f0h		;ab5f	fe f0 	. . 
	rrca			;ab61	0f 	. 
	ret p			;ab62	f0 	. 
	ld d,b			;ab63	50 	P 
	ld (bc),a			;ab64	02 	. 
	call pe,03c00h		;ab65	ec 00 3c 	. . < 
	nop			;ab68	00 	. 
	ld d,e			;ab69	53 	S 
	ld (bc),a			;ab6a	02 	. 
	ret p			;ab6b	f0 	. 
	rrca			;ab6c	0f 	. 
	ret p			;ab6d	f0 	. 
	ld d,b			;ab6e	50 	P 
	ld (bc),a			;ab6f	02 	. 
	call m,00350h		;ab70	fc 50 03 	. P . 
	ex de,hl			;ab73	eb 	. 
	ld d,b			;ab74	50 	P 
	ld (bc),a			;ab75	02 	. 
	rrca			;ab76	0f 	. 
	ret p			;ab77	f0 	. 
	ld d,b			;ab78	50 	P 
	ld (bc),a			;ab79	02 	. 
	call m,02800h		;ab7a	fc 00 28 	. . ( 
	nop			;ab7d	00 	. 
	cp (hl)			;ab7e	be 	. 
	ld d,b			;ab7f	50 	P 
	ld (bc),a			;ab80	02 	. 
	rrca			;ab81	0f 	. 
	ei			;ab82	fb 	. 
	nop			;ab83	00 	. 
	rst 28h			;ab84	ef 	. 
	call m,03c00h		;ab85	fc 00 3c 	. . < 
	nop			;ab88	00 	. 
	cp (hl)			;ab89	be 	. 
	ld d,b			;ab8a	50 	P 
	ld (bc),a			;ab8b	02 	. 
	rrca			;ab8c	0f 	. 
	ei			;ab8d	fb 	. 
	nop			;ab8e	00 	. 
	rst 28h			;ab8f	ef 	. 
	call m,00350h		;ab90	fc 50 03 	. P . 
	ex de,hl			;ab93	eb 	. 
	ld d,b			;ab94	50 	P 
	ld (bc),a			;ab95	02 	. 
	rrca			;ab96	0f 	. 
	ei			;ab97	fb 	. 
	nop			;ab98	00 	. 
	rst 28h			;ab99	ef 	. 
	call m,02800h		;ab9a	fc 00 28 	. . ( 
	ld d,b			;ab9d	50 	P 
	inc b			;ab9e	04 	. 
	rrca			;ab9f	0f 	. 
	ei			;aba0	fb 	. 
	nop			;aba1	00 	. 
	rst 28h			;aba2	ef 	. 
	call m,00650h		;aba3	fc 50 06 	. P . 
	rrca			;aba6	0f 	. 
	ei			;aba7	fb 	. 
	nop			;aba8	00 	. 
	rst 28h			;aba9	ef 	. 
	ld d,e			;abaa	53 	S 
	inc bc			;abab	03 	. 
	ret nz			;abac	c0 	. 
	ccf			;abad	3f 	? 
	ld d,b			;abae	50 	P 
	ld (bc),a			;abaf	02 	. 
	rrca			;abb0	0f 	. 
	ret p			;abb1	f0 	. 
	ld d,b			;abb2	50 	P 
	inc b			;abb3	04 	. 
	jp pe,02ec0h		;abb4	ea c0 2e 	. . . 
	ld d,b			;abb7	50 	P 
	ld (bc),a			;abb8	02 	. 
	rrca			;abb9	0f 	. 
	ret p			;abba	f0 	. 
	ld d,b			;abbb	50 	P 
	ld (bc),a			;abbc	02 	. 
	ld d,e			;abbd	53 	S 
	inc bc			;abbe	03 	. 
	ret nz			;abbf	c0 	. 
	ccf			;abc0	3f 	? 
	ld d,b			;abc1	50 	P 
	ld (bc),a			;abc2	02 	. 
	rrca			;abc3	0f 	. 
	ret p			;abc4	f0 	. 
	ld d,b			;abc5	50 	P 
	ld (bc),a			;abc6	02 	. 
	call pe,00350h		;abc7	ec 50 03 	. P . 
	dec sp			;abca	3b 	; 
	ld d,b			;abcb	50 	P 
	ld (bc),a			;abcc	02 	. 
	rrca			;abcd	0f 	. 
	ret p			;abce	f0 	. 
	ld d,b			;abcf	50 	P 
	ld (bc),a			;abd0	02 	. 
	call m,00650h		;abd1	fc 50 06 	. P . 
	rrca			;abd4	0f 	. 
	ret p			;abd5	f0 	. 
	ld d,b			;abd6	50 	P 
	ld (bc),a			;abd7	02 	. 
	call m,0bb03h		;abd8	fc 03 bb 	. . . 
	rst 28h			;abdb	ef 	. 
	cp e			;abdc	bb 	. 
	ld d,b			;abdd	50 	P 
	ld (bc),a			;abde	02 	. 
	rrca			;abdf	0f 	. 
	ret p			;abe0	f0 	. 
	ld d,b			;abe1	50 	P 
	ld (bc),a			;abe2	02 	. 
	call m,00350h		;abe3	fc 50 03 	. P . 
	ld a,(0b0aah)		;abe6	3a aa b0 	: . . 
	rrca			;abe9	0f 	. 
	ret p			;abea	f0 	. 
	ld d,b			;abeb	50 	P 
	ld (bc),a			;abec	02 	. 
	call m,00250h		;abed	fc 50 02 	. P . 
	inc c			;abf0	0c 	. 
	cpl			;abf1	2f 	/ 
	rst 38h			;abf2	ff 	. 
	ret po			;abf3	e0 	. 
	rrca			;abf4	0f 	. 
	ret p			;abf5	f0 	. 
	ld hl,(0a8aah)		;abf6	2a aa a8 	* . . 
	ld d,b			;abf9	50 	P 
	ld (bc),a			;abfa	02 	. 
	inc c			;abfb	0c 	. 
	ccf			;abfc	3f 	? 
	rst 38h			;abfd	ff 	. 
	ret p			;abfe	f0 	. 
	rrca			;abff	0f 	. 
	ret p			;ac00	f0 	. 
	ccf			;ac01	3f 	? 
	rst 38h			;ac02	ff 	. 
	call m,00250h		;ac03	fc 50 02 	. P . 
	rrca			;ac06	0f 	. 
	ld d,e			;ac07	53 	S 
	ld (bc),a			;ac08	02 	. 
	ret p			;ac09	f0 	. 
	rrca			;ac0a	0f 	. 
	ret p			;ac0b	f0 	. 
	ccf			;ac0c	3f 	? 
	rst 38h			;ac0d	ff 	. 
	call m,00350h		;ac0e	fc 50 03 	. P . 
	ld a,(0b0aah)		;ac11	3a aa b0 	: . . 
	rrca			;ac14	0f 	. 
	ret p			;ac15	f0 	. 
	ccf			;ac16	3f 	? 
	rst 38h			;ac17	ff 	. 
	call m,00650h		;ac18	fc 50 06 	. P . 
	rrca			;ac1b	0f 	. 
	ret p			;ac1c	f0 	. 
	ccf			;ac1d	3f 	? 
	rst 38h			;ac1e	ff 	. 
	cp 052h		;ac1f	fe 52 	. R 
	ld b,0afh		;ac21	06 af 	. . 
	ret p			;ac23	f0 	. 
	inc a			;ac24	3c 	< 
	ld d,b			;ac25	50 	P 
	ld (bc),a			;ac26	02 	. 
	inc bc			;ac27	03 	. 
	rst 38h			;ac28	ff 	. 
	ret nz			;ac29	c0 	. 
	nop			;ac2a	00 	. 
	inc bc			;ac2b	03 	. 
	call m,0f00fh		;ac2c	fc 0f f0 	. . . 
	inc a			;ac2f	3c 	< 
	ld c,0abh		;ac30	0e ab 	. . 
	inc bc			;ac32	03 	. 
	xor d			;ac33	aa 	. 
	ret nz			;ac34	c0 	. 
	ex de,hl			;ac35	eb 	. 
	inc bc			;ac36	03 	. 
	xor h			;ac37	ac 	. 
	rrca			;ac38	0f 	. 
	ret p			;ac39	f0 	. 
	ld d,b			;ac3a	50 	P 
	add hl,bc			;ac3b	09 	. 
	rrca			;ac3c	0f 	. 
	rst 38h			;ac3d	ff 	. 
	call m,0ab0eh		;ac3e	fc 0e ab 	. . . 
	inc bc			;ac41	03 	. 
	xor d			;ac42	aa 	. 
	ret nz			;ac43	c0 	. 
	ex de,hl			;ac44	eb 	. 
	inc bc			;ac45	03 	. 
	xor h			;ac46	ac 	. 
	rrca			;ac47	0f 	. 
	rst 38h			;ac48	ff 	. 
	call m,03f00h		;ac49	fc 00 3f 	. . ? 
	inc bc			;ac4c	03 	. 
	rst 38h			;ac4d	ff 	. 
	ret nz			;ac4e	c0 	. 
	rst 38h			;ac4f	ff 	. 
	inc bc			;ac50	03 	. 
	call m,0ff0fh		;ac51	fc 0f ff 	. . . 
	call m,03f00h		;ac54	fc 00 3f 	. . ? 
	ld d,b			;ac57	50 	P 
	inc bc			;ac58	03 	. 
	rst 38h			;ac59	ff 	. 
	ld d,b			;ac5a	50 	P 
	ld (bc),a			;ac5b	02 	. 
	rrca			;ac5c	0f 	. 
	ld d,d			;ac5d	52 	R 
	ld (bc),a			;ac5e	02 	. 
	and b			;ac5f	a0 	. 
	ccf			;ac60	3f 	? 
	ld d,e			;ac61	53 	S 
	add hl,bc			;ac62	09 	. 
	ret p			;ac63	f0 	. 
	ccf			;ac64	3f 	? 
	ld d,e			;ac65	53 	S 
	ld (bc),a			;ac66	02 	. 
	ret nz			;ac67	c0 	. 
	ld d,b			;ac68	50 	P 
	inc bc			;ac69	03 	. 
	rlca			;ac6a	07 	. 
	ret nz			;ac6b	c0 	. 
	ld d,b			;ac6c	50 	P 
	inc bc			;ac6d	03 	. 
	ld a,(bc)			;ac6e	0a 	. 
	xor d			;ac6f	aa 	. 
	add a,b			;ac70	80 	. 
	ld d,b			;ac71	50 	P 
	inc bc			;ac72	03 	. 
	rlca			;ac73	07 	. 
	ret nz			;ac74	c0 	. 
	ld d,b			;ac75	50 	P 
	inc bc			;ac76	03 	. 
	dec bc			;ac77	0b 	. 
	rst 38h			;ac78	ff 	. 
	ret nz			;ac79	c0 	. 
	ld d,e			;ac7a	53 	S 
	ld (bc),a			;ac7b	02 	. 
	ret nz			;ac7c	c0 	. 
	scf			;ac7d	37 	7 
	ret nz			;ac7e	c0 	. 
	ld a,(053c0h)		;ac7f	3a c0 53 	: . S 
	inc bc			;ac82	03 	. 
	ret nz			;ac83	c0 	. 
	ld d,e			;ac84	53 	S 
	ld (bc),a			;ac85	02 	. 
	ret nz			;ac86	c0 	. 
	scf			;ac87	37 	7 
	ret nz			;ac88	c0 	. 
	ccf			;ac89	3f 	? 
	ret nz			;ac8a	c0 	. 
	ld d,e			;ac8b	53 	S 
	inc bc			;ac8c	03 	. 
	ret nz			;ac8d	c0 	. 
	call m,00250h		;ac8e	fc 50 02 	. P . 
	rlca			;ac91	07 	. 
	ret nz			;ac92	c0 	. 
	ccf			;ac93	3f 	? 
	ret nz			;ac94	c0 	. 
	call m,00350h		;ac95	fc 50 03 	. P . 
	ret nz			;ac98	c0 	. 
	ld d,b			;ac99	50 	P 
	ld (bc),a			;ac9a	02 	. 
	rlca			;ac9b	07 	. 
	ret nz			;ac9c	c0 	. 
	ccf			;ac9d	3f 	? 
	ret nz			;ac9e	c0 	. 
	call m,00350h		;ac9f	fc 50 03 	. P . 
	call m,00250h		;aca2	fc 50 02 	. P . 
	rlca			;aca5	07 	. 
	ret nz			;aca6	c0 	. 
	ccf			;aca7	3f 	? 
	ret nz			;aca8	c0 	. 
	nop			;aca9	00 	. 
	rrca			;acaa	0f 	. 
	ld d,e			;acab	53 	S 
	ld (bc),a			;acac	02 	. 
	cp 0c0h		;acad	fe c0 	. . 
	rst 28h			;acaf	ef 	. 
	rst 38h			;acb0	ff 	. 
	ret nz			;acb1	c0 	. 
	rrca			;acb2	0f 	. 
	ret nz			;acb3	c0 	. 
	nop			;acb4	00 	. 
	rrca			;acb5	0f 	. 
	ld d,e			;acb6	53 	S 
	ld (bc),a			;acb7	02 	. 
	cp 0c0h		;acb8	fe c0 	. . 
	rst 28h			;acba	ef 	. 
	rst 38h			;acbb	ff 	. 
	call m,0c00fh		;acbc	fc 0f c0 	. . . 
	nop			;acbf	00 	. 
	rrca			;acc0	0f 	. 
	ld d,e			;acc1	53 	S 
	ld (bc),a			;acc2	02 	. 
	cp 0c0h		;acc3	fe c0 	. . 
	rst 28h			;acc5	ef 	. 
	rst 38h			;acc6	ff 	. 
	call m,00350h		;acc7	fc 50 03 	. P . 
	rrca			;acca	0f 	. 
	ld d,e			;accb	53 	S 
	ld (bc),a			;accc	02 	. 
	cp 0c0h		;accd	fe c0 	. . 
	rst 28h			;accf	ef 	. 
	ld d,e			;acd0	53 	S 
	dec b			;acd1	05 	. 
	rrca			;acd2	0f 	. 
	ld d,e			;acd3	53 	S 
	ld (bc),a			;acd4	02 	. 
	cp 0c0h		;acd5	fe c0 	. . 
	rst 28h			;acd7	ef 	. 
	ld d,e			;acd8	53 	S 
	ex af,af'			;acd9	08 	. 
	cp 0c0h		;acda	fe c0 	. . 
	rst 28h			;acdc	ef 	. 
	rst 38h			;acdd	ff 	. 
	ld d,b			;acde	50 	P 
	nop			;acdf	00 	. 
	halt			;ace0	76 	v 
	inc hl			;ace1	23 	# 
	ld (0201eh),hl		;ace2	22 1e 20 	" .   
	add hl,de			;ace5	19 	. 
	dec de			;ace6	1b 	. 
	ex af,af'			;ace7	08 	. 
	inc c			;ace8	0c 	. 
	ld a,(bc)			;ace9	0a 	. 
	ex af,af'			;acea	08 	. 
	inc c			;aceb	0c 	. 
	ld e,020h		;acec	1e 20 	.   
	add hl,de			;acee	19 	. 
	dec de			;acef	1b 	. 
	jr z,$+21		;acf0	28 13 	( . 
	inc de			;acf2	13 	. 
	dec c			;acf3	0d 	. 
	ex af,af'			;acf4	08 	. 
	dec b			;acf5	05 	. 
	dec de			;acf6	1b 	. 
	rra			;acf7	1f 	. 
	add hl,de			;acf8	19 	. 
	dec de			;acf9	1b 	. 
	ld hl,0ff03h		;acfa	21 03 ff 	! . . 
	ld a,(bc)			;acfd	0a 	. 
	inc bc			;acfe	03 	. 
	ld h,028h		;acff	26 28 	& ( 
	ld b,006h		;ad01	06 06 	. . 
	inc hl			;ad03	23 	# 
	inc h			;ad04	24 	$ 
	inc b			;ad05	04 	. 
	ld b,023h		;ad06	06 23 	. # 
	ld a,(bc)			;ad08	0a 	. 
	add hl,de			;ad09	19 	. 
	dec de			;ad0a	1b 	. 
	ld (bc),a			;ad0b	02 	. 
	inc b			;ad0c	04 	. 
	ld b,008h		;ad0d	06 08 	. . 
	ld a,(bc)			;ad0f	0a 	. 
	ld (bc),a			;ad10	02 	. 
	inc b			;ad11	04 	. 
	ld b,008h		;ad12	06 08 	. . 
	ld a,(bc)			;ad14	0a 	. 
	ld (bc),a			;ad15	02 	. 
	inc b			;ad16	04 	. 
	ld b,008h		;ad17	06 08 	. . 
	ld a,(bc)			;ad19	0a 	. 
	inc bc			;ad1a	03 	. 
	ld b,009h		;ad1b	06 09 	. . 
	ld a,(bc)			;ad1d	0a 	. 
	ld (bc),a			;ad1e	02 	. 
	inc b			;ad1f	04 	. 
	ld b,008h		;ad20	06 08 	. . 
	ld a,(bc)			;ad22	0a 	. 
	ld (bc),a			;ad23	02 	. 
	inc b			;ad24	04 	. 
	ld b,008h		;ad25	06 08 	. . 
	ld a,(bc)			;ad27	0a 	. 
	ld (bc),a			;ad28	02 	. 
	inc b			;ad29	04 	. 
	ld b,008h		;ad2a	06 08 	. . 
	ld a,(bc)			;ad2c	0a 	. 
	rst 38h			;ad2d	ff 	. 
	dec de			;ad2e	1b 	. 
	inc b			;ad2f	04 	. 
	jr z,$+42		;ad30	28 28 	( ( 
	ld de,028ffh		;ad32	11 ff 28 	. . ( 
	inc bc			;ad35	03 	. 
	ld a,(de)			;ad36	1a 	. 
	ex af,af'			;ad37	08 	. 
	ld b,020h		;ad38	06 20 	.   
	ld (02624h),hl		;ad3a	22 24 26 	" $ & 
	jr z,$+34		;ad3d	28 20 	(   
	ld (02624h),hl		;ad3f	22 24 26 	" $ & 
	jr z,$+34		;ad42	28 20 	(   
	ld (02624h),hl		;ad44	22 24 26 	" $ & 
	jr z,$+34		;ad47	28 20 	(   
	ld (02624h),hl		;ad49	22 24 26 	" $ & 
	jr z,$+34		;ad4c	28 20 	(   
	ld (02624h),hl		;ad4e	22 24 26 	" $ & 
	jr z,$+31		;ad51	28 1d 	( . 
	inc bc			;ad53	03 	. 
	djnz $+18		;ad54	10 10 	. . 
	inc a			;ad56	3c 	< 
	ld a,(05a5ah)		;ad57	3a 5a 5a 	: Z Z 
	ld (hl),d			;ad5a	72 	r 
	ld (hl),d			;ad5b	72 	r 
	ld a,d			;ad5c	7a 	z 
	ld a,d			;ad5d	7a 	z 
	ld a,(hl)			;ad5e	7e 	~ 
	add a,d			;ad5f	82 	. 
	add a,d			;ad60	82 	. 
	adc a,d			;ad61	8a 	. 
	adc a,d			;ad62	8a 	. 
	rst 38h			;ad63	ff 	. 
	adc a,(hl)			;ad64	8e 	. 
	inc bc			;ad65	03 	. 
	sub d			;ad66	92 	. 
	sub (hl)			;ad67	96 	. 
	jp nz,014e0h		;ad68	c2 e0 14 	. . . 
	jr $+32		;ad6b	18 1e 	. . 
	ld b,(hl)			;ad6d	46 	F 
	ld b,(hl)			;ad6e	46 	F 
	ld e,d			;ad6f	5a 	Z 
	ld e,h			;ad70	5c 	\ 
	ld l,b			;ad71	68 	h 
	ld l,(hl)			;ad72	6e 	n 
	ld (hl),h			;ad73	74 	t 
	sbc a,h			;ad74	9c 	. 
	sbc a,h			;ad75	9c 	. 
	and h			;ad76	a4 	. 
	or b			;ad77	b0 	. 
	cp (hl)			;ad78	be 	. 
	ret m			;ad79	f8 	. 
	inc c			;ad7a	0c 	. 
	inc c			;ad7b	0c 	. 
	ld d,020h		;ad7c	16 20 	.   
	ld b,h			;ad7e	44 	D 
	ld b,h			;ad7f	44 	D 
	rst 38h			;ad80	ff 	. 
	ld c,b			;ad81	48 	H 
	dec b			;ad82	05 	. 
	rst 38h			;ad83	ff 	. 
	ld c,h			;ad84	4c 	L 
	dec b			;ad85	05 	. 
	rst 38h			;ad86	ff 	. 
	ld d,b			;ad87	50 	P 
	dec b			;ad88	05 	. 
	rst 38h			;ad89	ff 	. 
	ld e,h			;ad8a	5c 	\ 
	inc bc			;ad8b	03 	. 
	ld h,b			;ad8c	60 	` 
	rst 38h			;ad8d	ff 	. 
	ld l,b			;ad8e	68 	h 
	dec b			;ad8f	05 	. 
	rst 38h			;ad90	ff 	. 
	ld l,h			;ad91	6c 	l 
	dec b			;ad92	05 	. 
	rst 38h			;ad93	ff 	. 
	ld (hl),b			;ad94	70 	p 
	dec b			;ad95	05 	. 
	and b			;ad96	a0 	. 
	and h			;ad97	a4 	. 
	xor b			;ad98	a8 	. 
	xor h			;ad99	ac 	. 
	jp c,0e0deh		;ad9a	da de e0 	. . . 
	jp po,0f2e6h		;ad9d	e2 e6 f2 	. . . 
	ld (bc),a			;ada0	02 	. 
	ld a,(bc)			;ada1	0a 	. 
	ld b,(hl)			;ada2	46 	F 
	rst 38h			;ada3	ff 	. 
	ld a,005h		;ada4	3e 05 	> . 
	rst 38h			;ada6	ff 	. 
	ld b,d			;ada7	42 	B 
	dec b			;ada8	05 	. 
	rst 38h			;ada9	ff 	. 
	ld b,(hl)			;adaa	46 	F 
	dec b			;adab	05 	. 
	rst 38h			;adac	ff 	. 
	ld c,d			;adad	4a 	J 
	dec b			;adae	05 	. 
	rst 38h			;adaf	ff 	. 
	ld c,(hl)			;adb0	4e 	N 
	dec b			;adb1	05 	. 
	ld h,b			;adb2	60 	` 
	adc a,d			;adb3	8a 	. 
	sub d			;adb4	92 	. 
	sub (hl)			;adb5	96 	. 
	ld l,h			;adb6	6c 	l 
	xor b			;adb7	a8 	. 
	rst 38h			;adb8	ff 	. 
	ld a,h			;adb9	7c 	| 
	inc b			;adba	04 	. 
	nop			;adbb	00 	. 
	nop			;adbc	00 	. 
	sbc a,b			;adbd	98 	. 
	sub b			;adbe	90 	. 
	sub b			;adbf	90 	. 
	ld a,h			;adc0	7c 	| 
	ld a,h			;adc1	7c 	| 
	and b			;adc2	a0 	. 
	and b			;adc3	a0 	. 
	inc d			;adc4	14 	. 
	sbc a,h			;adc5	9c 	. 
	sbc a,h			;adc6	9c 	. 
	ld l,h			;adc7	6c 	l 
	ld l,h			;adc8	6c 	l 
	sub c			;adc9	91 	. 
	sub c			;adca	91 	. 
	ld l,l			;adcb	6d 	m 
	and c			;adcc	a1 	. 
	and c			;adcd	a1 	. 
	sub c			;adce	91 	. 
	dec d			;adcf	15 	. 
	rst 38h			;add0	ff 	. 
	ld c,l			;add1	4d 	M 
	inc bc			;add2	03 	. 
	ld a,l			;add3	7d 	} 
	ld a,l			;add4	7d 	} 
	rst 38h			;add5	ff 	. 
	sub c			;add6	91 	. 
	inc b			;add7	04 	. 
	ld a,(hl)			;add8	7e 	~ 
	ld a,(hl)			;add9	7e 	~ 
	sub d			;adda	92 	. 
	sub d			;addb	92 	. 
	ld a,(hl)			;addc	7e 	~ 
	ld a,(hl)			;addd	7e 	~ 
	and (hl)			;adde	a6 	. 
	rst 38h			;addf	ff 	. 
	sub d			;ade0	92 	. 
	inc bc			;ade1	03 	. 
	and (hl)			;ade2	a6 	. 
	and (hl)			;ade3	a6 	. 
	sub d			;ade4	92 	. 
	sbc a,d			;ade5	9a 	. 
	sub d			;ade6	92 	. 
	and (hl)			;ade7	a6 	. 
	and (hl)			;ade8	a6 	. 
	rst 38h			;ade9	ff 	. 
	sub d			;adea	92 	. 
	inc bc			;adeb	03 	. 
	and (hl)			;adec	a6 	. 
	rst 38h			;aded	ff 	. 
	ld d,d			;adee	52 	R 
	inc bc			;adef	03 	. 
	ld l,(hl)			;adf0	6e 	n 
	and (hl)			;adf1	a6 	. 
	rst 38h			;adf2	ff 	. 
	sub d			;adf3	92 	. 
	inc bc			;adf4	03 	. 
	and (hl)			;adf5	a6 	. 
	and (hl)			;adf6	a6 	. 
	sub d			;adf7	92 	. 
	sbc a,d			;adf8	9a 	. 
	sub d			;adf9	92 	. 
	and (hl)			;adfa	a6 	. 
	and (hl)			;adfb	a6 	. 
	rst 38h			;adfc	ff 	. 
	sub d			;adfd	92 	. 
	inc bc			;adfe	03 	. 
	and (hl)			;adff	a6 	. 
	rst 38h			;ae00	ff 	. 
	ld l,(hl)			;ae01	6e 	n 
	inc b			;ae02	04 	. 
	ld c,(hl)			;ae03	4e 	N 
	ld c,(hl)			;ae04	4e 	N 
	ld a,(hl)			;ae05	7e 	~ 
	ld c,(hl)			;ae06	4e 	N 
	ld c,(hl)			;ae07	4e 	N 
	ld a,(hl)			;ae08	7e 	~ 
	ld a,a			;ae09	7f 	 
	ld a,a			;ae0a	7f 	 
	sub e			;ae0b	93 	. 
	xor a			;ae0c	af 	. 
	sub e			;ae0d	93 	. 
	or e			;ae0e	b3 	. 
	sub e			;ae0f	93 	. 
	xor a			;ae10	af 	. 
	or a			;ae11	b7 	. 
	or e			;ae12	b3 	. 
	sub e			;ae13	93 	. 
	or e			;ae14	b3 	. 
	or a			;ae15	b7 	. 
	sbc a,a			;ae16	9f 	. 
	rst 38h			;ae17	ff 	. 
	sbc a,e			;ae18	9b 	. 
	inc bc			;ae19	03 	. 
	sbc a,a			;ae1a	9f 	. 
	or a			;ae1b	b7 	. 
	or e			;ae1c	b3 	. 
	sub e			;ae1d	93 	. 
	or e			;ae1e	b3 	. 
	or a			;ae1f	b7 	. 
	xor a			;ae20	af 	. 
	sub e			;ae21	93 	. 
	or e			;ae22	b3 	. 
	sub e			;ae23	93 	. 
	xor a			;ae24	af 	. 
	ld l,a			;ae25	6f 	o 
	ld a,a			;ae26	7f 	 
	ld d,e			;ae27	53 	S 
	ld l,a			;ae28	6f 	o 
	ld c,000h		;ae29	0e 00 	. . 
	rst 38h			;ae2b	ff 	. 
	ccf			;ae2c	3f 	? 
	inc b			;ae2d	04 	. 
	ld c,l			;ae2e	4d 	M 
	ld c,l			;ae2f	4d 	M 
	rra			;ae30	1f 	. 
	ld e,01eh		;ae31	1e 1e 	. . 
	ccf			;ae33	3f 	? 
	ccf			;ae34	3f 	? 
	dec c			;ae35	0d 	. 
	dec c			;ae36	0d 	. 
	ld l,l			;ae37	6d 	m 
	dec c			;ae38	0d 	. 
	dec c			;ae39	0d 	. 
	ld c,00eh		;ae3a	0e 0e 	. . 
	ld e,01eh		;ae3c	1e 1e 	. . 
	ld c,00dh		;ae3e	0e 0d 	. . 
	dec c			;ae40	0d 	. 
	ld e,06dh		;ae41	1e 6d 	. m 
	rst 38h			;ae43	ff 	. 
	inc b			;ae44	04 	. 
	inc bc			;ae45	03 	. 
	ccf			;ae46	3f 	? 
	ccf			;ae47	3f 	? 
	rst 38h			;ae48	ff 	. 
	ld e,004h		;ae49	1e 04 	. . 
	ccf			;ae4b	3f 	? 
	ccf			;ae4c	3f 	? 
	ld e,01eh		;ae4d	1e 1e 	. . 
	ccf			;ae4f	3f 	? 
	ccf			;ae50	3f 	? 
	ld l,0ffh		;ae51	2e ff 	. . 
	ld e,003h		;ae53	1e 03 	. . 
	ld l,02eh		;ae55	2e 2e 	. . 
	ld e,01fh		;ae57	1e 1f 	. . 
	ld e,02eh		;ae59	1e 2e 	. . 
	ld l,0ffh		;ae5b	2e ff 	. . 
	ld e,003h		;ae5d	1e 03 	. . 
	ld l,0ffh		;ae5f	2e ff 	. . 
	ex af,af'			;ae61	08 	. 
	inc bc			;ae62	03 	. 
	ld c,02eh		;ae63	0e 2e 	. . 
	rst 38h			;ae65	ff 	. 
	ld e,003h		;ae66	1e 03 	. . 
	ld l,02eh		;ae68	2e 2e 	. . 
	ld e,01fh		;ae6a	1e 1f 	. . 
	ld e,02eh		;ae6c	1e 2e 	. . 
	ld l,0ffh		;ae6e	2e ff 	. . 
	ld e,003h		;ae70	1e 03 	. . 
	ld l,0ffh		;ae72	2e ff 	. . 
	ld c,004h		;ae74	0e 04 	. . 
	inc b			;ae76	04 	. 
	inc b			;ae77	04 	. 
	ccf			;ae78	3f 	? 
	inc b			;ae79	04 	. 
	inc b			;ae7a	04 	. 
	rst 38h			;ae7b	ff 	. 
	ccf			;ae7c	3f 	? 
	inc bc			;ae7d	03 	. 
	ld e,02bh		;ae7e	1e 2b 	. + 
	dec e			;ae80	1d 	. 
	dec hl			;ae81	2b 	+ 
	dec e			;ae82	1d 	. 
	rst 38h			;ae83	ff 	. 
	dec hl			;ae84	2b 	+ 
	inc bc			;ae85	03 	. 
	dec e			;ae86	1d 	. 
	rst 38h			;ae87	ff 	. 
	dec hl			;ae88	2b 	+ 
	inc bc			;ae89	03 	. 
	rst 38h			;ae8a	ff 	. 
	rra			;ae8b	1f 	. 
	inc bc			;ae8c	03 	. 
	rst 38h			;ae8d	ff 	. 
	dec hl			;ae8e	2b 	+ 
	inc bc			;ae8f	03 	. 
	dec e			;ae90	1d 	. 
	rst 38h			;ae91	ff 	. 
	dec hl			;ae92	2b 	+ 
	inc bc			;ae93	03 	. 
	dec e			;ae94	1d 	. 
	dec hl			;ae95	2b 	+ 
	dec e			;ae96	1d 	. 
	dec hl			;ae97	2b 	+ 
	ld c,03fh		;ae98	0e 3f 	. ? 
	ex af,af'			;ae9a	08 	. 
	ld c,0ffh		;ae9b	0e ff 	. . 
	nop			;ae9d	00 	. 
	ld c,001h		;ae9e	0e 01 	. . 
	rst 38h			;aea0	ff 	. 
	nop			;aea1	00 	. 
	rlca			;aea2	07 	. 
	rst 38h			;aea3	ff 	. 
	ld (bc),a			;aea4	02 	. 
	dec c			;aea5	0d 	. 
	rst 38h			;aea6	ff 	. 
	inc bc			;aea7	03 	. 
	rlca			;aea8	07 	. 
	rst 38h			;aea9	ff 	. 
	inc b			;aeaa	04 	. 
	inc b			;aeab	04 	. 
	rst 38h			;aeac	ff 	. 
	dec b			;aead	05 	. 
	dec b			;aeae	05 	. 
	rst 38h			;aeaf	ff 	. 
	ld b,005h		;aeb0	06 05 	. . 
	rst 38h			;aeb2	ff 	. 
	rlca			;aeb3	07 	. 
	dec b			;aeb4	05 	. 
	rst 38h			;aeb5	ff 	. 
	ex af,af'			;aeb6	08 	. 
	inc bc			;aeb7	03 	. 
	rst 38h			;aeb8	ff 	. 
	add hl,bc			;aeb9	09 	. 
	dec b			;aeba	05 	. 
	rst 38h			;aebb	ff 	. 
	ld a,(bc)			;aebc	0a 	. 
	dec d			;aebd	15 	. 
	rst 38h			;aebe	ff 	. 
	dec bc			;aebf	0b 	. 
	dec b			;aec0	05 	. 
	rst 38h			;aec1	ff 	. 
	inc c			;aec2	0c 	. 
	add hl,bc			;aec3	09 	. 
	rst 38h			;aec4	ff 	. 
	dec c			;aec5	0d 	. 
	dec b			;aec6	05 	. 
	rst 38h			;aec7	ff 	. 
	ld c,008h		;aec8	0e 08 	. . 
	rst 38h			;aeca	ff 	. 
	rrca			;aecb	0f 	. 
	inc bc			;aecc	03 	. 
	djnz $+1		;aecd	10 ff 	. . 
	ld de,0120ah		;aecf	11 0a 12 	. . . 
	ld (de),a			;aed2	12 	. 
	ld de,01311h		;aed3	11 11 13 	. . . 
	inc de			;aed6	13 	. 
	inc d			;aed7	14 	. 
	inc d			;aed8	14 	. 
	dec d			;aed9	15 	. 
	dec d			;aeda	15 	. 
	inc d			;aedb	14 	. 
	inc d			;aedc	14 	. 
	inc de			;aedd	13 	. 
	inc de			;aede	13 	. 
	ld de,01211h		;aedf	11 11 12 	. . . 
	ld (de),a			;aee2	12 	. 
	rst 38h			;aee3	ff 	. 
	ld de,0160ah		;aee4	11 0a 16 	. . . 
	rst 38h			;aee7	ff 	. 
	rla			;aee8	17 	. 
	ld b,0ffh		;aee9	06 ff 	. . 
	jr $+6		;aeeb	18 04 	. . 
	add hl,de			;aeed	19 	. 
	ld a,(de)			;aeee	1a 	. 
	ld a,(de)			;aeef	1a 	. 
	dec de			;aef0	1b 	. 
	rst 38h			;aef1	ff 	. 
	inc e			;aef2	1c 	. 
	inc bc			;aef3	03 	. 
	dec e			;aef4	1d 	. 
	rst 38h			;aef5	ff 	. 
	ld e,00bh		;aef6	1e 0b 	. . 
	rst 38h			;aef8	ff 	. 
	rra			;aef9	1f 	. 
	inc b			;aefa	04 	. 
	jr nz,$+1		;aefb	20 ff 	  . 
	ld hl,0ff04h		;aefd	21 04 ff 	! . . 
	ld e,00bh		;af00	1e 0b 	. . 
	rst 38h			;af02	ff 	. 
	ld (02304h),hl		;af03	22 04 23 	" . # 
	rst 38h			;af06	ff 	. 
	inc h			;af07	24 	$ 
	inc b			;af08	04 	. 
	rst 38h			;af09	ff 	. 
	ld e,007h		;af0a	1e 07 	. . 
	rst 38h			;af0c	ff 	. 
	jr nz,$+7		;af0d	20 05 	  . 
	rst 38h			;af0f	ff 	. 
	ld e,00fh		;af10	1e 0f 	. . 
	rst 38h			;af12	ff 	. 
	inc hl			;af13	23 	# 
	dec b			;af14	05 	. 
	rst 38h			;af15	ff 	. 
	ld e,00fh		;af16	1e 0f 	. . 
	rst 38h			;af18	ff 	. 
	ld hl,0ff05h		;af19	21 05 ff 	! . . 
	ld e,00fh		;af1c	1e 0f 	. . 
	rst 38h			;af1e	ff 	. 
	ld (02505h),hl		;af1f	22 05 25 	" . % 
	dec h			;af22	25 	% 
	ld h,0ffh		;af23	26 ff 	& . 
	daa			;af25	27 	' 
	inc b			;af26	04 	. 
	jr z,$+43		;af27	28 29 	( ) 
	add hl,hl			;af29	29 	) 
	ld hl,(01effh)		;af2a	2a ff 1e 	* . . 
	inc b			;af2d	04 	. 
	rst 38h			;af2e	ff 	. 
	ld hl,0ff05h		;af2f	21 05 ff 	! . . 
	ld e,003h		;af32	1e 03 	. . 
	rst 38h			;af34	ff 	. 
	ld (0ff05h),hl		;af35	22 05 ff 	" . . 
	ld e,00ah		;af38	1e 0a 	. . 
	ld hl,020ffh		;af3a	21 ff 20 	! .   
	inc b			;af3d	04 	. 
	rra			;af3e	1f 	. 
	rst 38h			;af3f	ff 	. 
	ld e,018h		;af40	1e 18 	. . 
	dec hl			;af42	2b 	+ 
	dec hl			;af43	2b 	+ 
	inc l			;af44	2c 	, 
	rst 38h			;af45	ff 	. 
	dec l			;af46	2d 	- 
	inc b			;af47	04 	. 
	ld l,02fh		;af48	2e 2f 	. / 
	rst 38h			;af4a	ff 	. 
	jr nc,$+13		;af4b	30 0b 	0 . 
	ld sp,03231h		;af4d	31 31 32 	1 1 2 
	ld (03433h),a		;af50	32 33 34 	2 3 4 
	dec (hl)			;af53	35 	5 
	dec (hl)			;af54	35 	5 
	inc (hl)			;af55	34 	4 
	inc sp			;af56	33 	3 
	ld (03132h),a		;af57	32 32 31 	2 2 1 
	ld sp,030ffh		;af5a	31 ff 30 	1 . 0 
	ex af,af'			;af5d	08 	. 
	ld (hl),036h		;af5e	36 36 	6 6 
	rst 38h			;af60	ff 	. 
	scf			;af61	37 	7 
	ld a,(bc)			;af62	0a 	. 
	jr c,$+1		;af63	38 ff 	8 . 
	add hl,sp			;af65	39 	9 
	dec b			;af66	05 	. 
	rst 38h			;af67	ff 	. 
	ld a,(0ff03h)		;af68	3a 03 ff 	: . . 
	dec sp			;af6b	3b 	; 
	inc b			;af6c	04 	. 
	inc a			;af6d	3c 	< 
	rst 38h			;af6e	ff 	. 
	dec a			;af6f	3d 	= 
	inc bc			;af70	03 	. 
	rst 38h			;af71	ff 	. 
	ld a,004h		;af72	3e 04 	> . 
	ccf			;af74	3f 	? 
	rst 38h			;af75	ff 	. 
	ld b,b			;af76	40 	@ 
	inc b			;af77	04 	. 
	rst 38h			;af78	ff 	. 
	ld b,c			;af79	41 	A 
	rlca			;af7a	07 	. 
	rst 38h			;af7b	ff 	. 
	ld b,d			;af7c	42 	B 
	inc b			;af7d	04 	. 
	rst 38h			;af7e	ff 	. 
	ld b,e			;af7f	43 	C 
	dec b			;af80	05 	. 
	rst 38h			;af81	ff 	. 
	ld b,h			;af82	44 	D 
	ld a,(de)			;af83	1a 	. 
	ld d,e			;af84	53 	S 
	ld (bc),a			;af85	02 	. 
	call pe,0530eh		;af86	ec 0e 53 	. . S 
	add hl,bc			;af89	09 	. 
	xor 0aeh		;af8a	ee ae 	. . 
	ld d,e			;af8c	53 	S 
	add hl,bc			;af8d	09 	. 
	call pe,0ff0eh		;af8e	ec 0e ff 	. . . 
	ret p			;af91	f0 	. 
	ld d,b			;af92	50 	P 
	inc b			;af93	04 	. 
	inc bc			;af94	03 	. 
	ld d,e			;af95	53 	S 
	ld (bc),a			;af96	02 	. 
	call pe,0ff0eh		;af97	ec 0e ff 	. . . 
	jp m,0c0aah		;af9a	fa aa c0 	. . . 
	inc bc			;af9d	03 	. 
	xor h			;af9e	ac 	. 
	inc bc			;af9f	03 	. 
	ld d,e			;afa0	53 	S 
	ld (bc),a			;afa1	02 	. 
	call m,00550h		;afa2	fc 50 05 	. P . 
	inc bc			;afa5	03 	. 
	call m,0f003h		;afa6	fc 03 f0 	. . . 
	inc bc			;afa9	03 	. 
	call m,00550h		;afaa	fc 50 05 	. P . 
	inc bc			;afad	03 	. 
	call m,0f003h		;afae	fc 03 f0 	. . . 
	inc bc			;afb1	03 	. 
	cp 052h		;afb2	fe 52 	. R 
	dec b			;afb4	05 	. 
	xor e			;afb5	ab 	. 
	call m,0f003h		;afb6	fc 03 f0 	. . . 
	ld d,b			;afb9	50 	P 
	rlca			;afba	07 	. 
	inc bc			;afbb	03 	. 
	xor h			;afbc	ac 	. 
	inc bc			;afbd	03 	. 
	ei			;afbe	fb 	. 
	cp e			;afbf	bb 	. 
	cp e			;afc0	bb 	. 
	cp e			;afc1	bb 	. 
	cp e			;afc2	bb 	. 
	cp e			;afc3	bb 	. 
	cp e			;afc4	bb 	. 
	or b			;afc5	b0 	. 
	inc bc			;afc6	03 	. 
	xor h			;afc7	ac 	. 
	inc bc			;afc8	03 	. 
	ret p			;afc9	f0 	. 
	ld d,b			;afca	50 	P 
	inc b			;afcb	04 	. 
	inc bc			;afcc	03 	. 
	xor d			;afcd	aa 	. 
	or b			;afce	b0 	. 
	inc bc			;afcf	03 	. 
	call m,0f003h		;afd0	fc 03 f0 	. . . 
	inc bc			;afd3	03 	. 
	xor e			;afd4	ab 	. 
	cp d			;afd5	ba 	. 
	or b			;afd6	b0 	. 
	inc bc			;afd7	03 	. 
	jp pe,003f0h		;afd8	ea f0 03 	. . . 
	call m,0f003h		;afdb	fc 03 f0 	. . . 
	inc bc			;afde	03 	. 
	or b			;afdf	b0 	. 
	ld d,b			;afe0	50 	P 
	ld (bc),a			;afe1	02 	. 
	inc bc			;afe2	03 	. 
	xor d			;afe3	aa 	. 
	or b			;afe4	b0 	. 
	inc bc			;afe5	03 	. 
	call m,0f003h		;afe6	fc 03 f0 	. . . 
	inc bc			;afe9	03 	. 
	ret p			;afea	f0 	. 
	ld (bc),a			;afeb	02 	. 
	ret po			;afec	e0 	. 
	inc bc			;afed	03 	. 
	jp pe,003f0h		;afee	ea f0 03 	. . . 
	call m,0f003h		;aff1	fc 03 f0 	. . . 
	inc bc			;aff4	03 	. 
	or b			;aff5	b0 	. 
	ld (bc),a			;aff6	02 	. 
	ret po			;aff7	e0 	. 
	ld d,b			;aff8	50 	P 
	inc bc			;aff9	03 	. 
	inc bc			;affa	03 	. 
	call m,0f003h		;affb	fc 03 f0 	. . . 
	inc bc			;affe	03 	. 
	call m,05303h		;afff	fc 03 53 	. . S 
	dec b			;b002	05 	. 
	call m,0b003h		;b003	fc 03 b0 	. . . 
	inc bc			;b006	03 	. 
	ret nz			;b007	c0 	. 
	ld d,b			;b008	50 	P 
	ld (bc),a			;b009	02 	. 
	ccf			;b00a	3f 	? 
	ld d,e			;b00b	53 	S 
	inc bc			;b00c	03 	. 
	call m,0f003h		;b00d	fc 03 f0 	. . . 
	inc bc			;b010	03 	. 
	ret nz			;b011	c0 	. 
	ld d,b			;b012	50 	P 
	ld (bc),a			;b013	02 	. 
	rrca			;b014	0f 	. 
	ld d,e			;b015	53 	S 
	inc bc			;b016	03 	. 
	call m,0f003h		;b017	fc 03 f0 	. . . 
	inc bc			;b01a	03 	. 
	ret nz			;b01b	c0 	. 
	ld d,b			;b01c	50 	P 
	ld (bc),a			;b01d	02 	. 
	inc c			;b01e	0c 	. 
	ld d,b			;b01f	50 	P 
	inc b			;b020	04 	. 
	inc bc			;b021	03 	. 
	ret p			;b022	f0 	. 
	inc bc			;b023	03 	. 
	ret nz			;b024	c0 	. 
	ld d,d			;b025	52 	R 
	ld (bc),a			;b026	02 	. 
	xor h			;b027	ac 	. 
	ld d,b			;b028	50 	P 
	inc b			;b029	04 	. 
	inc bc			;b02a	03 	. 
	ret p			;b02b	f0 	. 
	inc bc			;b02c	03 	. 
	ret nz			;b02d	c0 	. 
	ld d,b			;b02e	50 	P 
	ld (bc),a			;b02f	02 	. 
	inc c			;b030	0c 	. 
	ld d,b			;b031	50 	P 
	ld (bc),a			;b032	02 	. 
	jr z,$+2		;b033	28 00 	( . 
	inc bc			;b035	03 	. 
	ret p			;b036	f0 	. 
	inc bc			;b037	03 	. 
	ret nz			;b038	c0 	. 
	ld d,b			;b039	50 	P 
	ld (bc),a			;b03a	02 	. 
	inc c			;b03b	0c 	. 
	nop			;b03c	00 	. 
	call pe,00250h		;b03d	ec 50 02 	. P . 
	inc bc			;b040	03 	. 
	ret p			;b041	f0 	. 
	inc bc			;b042	03 	. 
	ret nz			;b043	c0 	. 
	ld d,b			;b044	50 	P 
	inc bc			;b045	03 	. 
	ld a,(bc)			;b046	0a 	. 
	call pe,0283ch		;b047	ec 3c 28 	. < ( 
	ccf			;b04a	3f 	? 
	ret p			;b04b	f0 	. 
	inc bc			;b04c	03 	. 
	ret nz			;b04d	c0 	. 
	ld d,b			;b04e	50 	P 
	ld (bc),a			;b04f	02 	. 
	rrca			;b050	0f 	. 
	ld d,e			;b051	53 	S 
	inc bc			;b052	03 	. 
	ret p			;b053	f0 	. 
	inc bc			;b054	03 	. 
	ret p			;b055	f0 	. 
	inc bc			;b056	03 	. 
	ret nz			;b057	c0 	. 
	ld d,b			;b058	50 	P 
	inc bc			;b059	03 	. 
	ld c,052h		;b05a	0e 52 	. R 
	ld (bc),a			;b05c	02 	. 
	or b			;b05d	b0 	. 
	inc bc			;b05e	03 	. 
	ret p			;b05f	f0 	. 
	inc bc			;b060	03 	. 
	ret nz			;b061	c0 	. 
	inc bc			;b062	03 	. 
	rst 38h			;b063	ff 	. 
	jp m,053afh		;b064	fa af 53 	. . S 
	ld (bc),a			;b067	02 	. 
	ret p			;b068	f0 	. 
	inc bc			;b069	03 	. 
	ret p			;b06a	f0 	. 
	inc bc			;b06b	03 	. 
	jp pe,0ff03h		;b06c	ea 03 ff 	. . . 
	jp m,053afh		;b06f	fa af 53 	. . S 
	ld (bc),a			;b072	02 	. 
	ret p			;b073	f0 	. 
	inc bc			;b074	03 	. 
	ret nz			;b075	c0 	. 
	inc bc			;b076	03 	. 
	rst 38h			;b077	ff 	. 
	inc bc			;b078	03 	. 
	ld d,e			;b079	53 	S 
	dec b			;b07a	05 	. 
	ret p			;b07b	f0 	. 
	inc bc			;b07c	03 	. 
	ret nz			;b07d	c0 	. 
	ccf			;b07e	3f 	? 
	rst 38h			;b07f	ff 	. 
	inc bc			;b080	03 	. 
	ld d,e			;b081	53 	S 
	dec b			;b082	05 	. 
	ret p			;b083	f0 	. 
	inc bc			;b084	03 	. 
	ret nz			;b085	c0 	. 
	jr nc,$+2		;b086	30 00 	0 . 
	inc bc			;b088	03 	. 
	rst 38h			;b089	ff 	. 
	ret p			;b08a	f0 	. 
	nop			;b08b	00 	. 
	and b			;b08c	a0 	. 
	nop			;b08d	00 	. 
	and b			;b08e	a0 	. 
	rrca			;b08f	0f 	. 
	ret nz			;b090	c0 	. 
	jr nc,$+2		;b091	30 00 	0 . 
	ld d,e			;b093	53 	S 
	ld (bc),a			;b094	02 	. 
	ret p			;b095	f0 	. 
	nop			;b096	00 	. 
	ret p			;b097	f0 	. 
	nop			;b098	00 	. 
	ret p			;b099	f0 	. 
	rrca			;b09a	0f 	. 
	ret nz			;b09b	c0 	. 
	jr nc,$+2		;b09c	30 00 	0 . 
	and b			;b09e	a0 	. 
	nop			;b09f	00 	. 
	and b			;b0a0	a0 	. 
	nop			;b0a1	00 	. 
	ret p			;b0a2	f0 	. 
	nop			;b0a3	00 	. 
	ret p			;b0a4	f0 	. 
	rrca			;b0a5	0f 	. 
	ret nz			;b0a6	c0 	. 
	jr nc,$+2		;b0a7	30 00 	0 . 
	ret p			;b0a9	f0 	. 
	nop			;b0aa	00 	. 
	ret p			;b0ab	f0 	. 
	nop			;b0ac	00 	. 
	ret p			;b0ad	f0 	. 
	ld d,b			;b0ae	50 	P 
	ld (bc),a			;b0af	02 	. 
	rrca			;b0b0	0f 	. 
	ret nz			;b0b1	c0 	. 
	jr nc,$+2		;b0b2	30 00 	0 . 
	ret p			;b0b4	f0 	. 
	ld d,b			;b0b5	50 	P 
	inc bc			;b0b6	03 	. 
	ret p			;b0b7	f0 	. 
	ld d,b			;b0b8	50 	P 
	ld (bc),a			;b0b9	02 	. 
	rrca			;b0ba	0f 	. 
	ret nz			;b0bb	c0 	. 
	jr nc,$+2		;b0bc	30 00 	0 . 
	ret p			;b0be	f0 	. 
	ld d,b			;b0bf	50 	P 
	inc bc			;b0c0	03 	. 
	ret p			;b0c1	f0 	. 
	nop			;b0c2	00 	. 
	ret p			;b0c3	f0 	. 
	rrca			;b0c4	0f 	. 
	ret nz			;b0c5	c0 	. 
	jr nc,$+2		;b0c6	30 00 	0 . 
	ret p			;b0c8	f0 	. 
	nop			;b0c9	00 	. 
	ret p			;b0ca	f0 	. 
	ld d,b			;b0cb	50 	P 
	inc bc			;b0cc	03 	. 
	ret p			;b0cd	f0 	. 
	rrca			;b0ce	0f 	. 
	add a,b			;b0cf	80 	. 
	jr nc,$+82		;b0d0	30 50 	0 P 
	inc bc			;b0d2	03 	. 
	ret p			;b0d3	f0 	. 
	ld d,b			;b0d4	50 	P 
	inc bc			;b0d5	03 	. 
	ret p			;b0d6	f0 	. 
	rrca			;b0d7	0f 	. 
	ret nz			;b0d8	c0 	. 
	jr nc,$+82		;b0d9	30 50 	0 P 
	inc bc			;b0db	03 	. 
	ret p			;b0dc	f0 	. 
	nop			;b0dd	00 	. 
	and b			;b0de	a0 	. 
	nop			;b0df	00 	. 
	ret p			;b0e0	f0 	. 
	rrca			;b0e1	0f 	. 
	ret nz			;b0e2	c0 	. 
	ccf			;b0e3	3f 	? 
	ld d,e			;b0e4	53 	S 
	dec b			;b0e5	05 	. 
	ret p			;b0e6	f0 	. 
	nop			;b0e7	00 	. 
	ret p			;b0e8	f0 	. 
	rrca			;b0e9	0f 	. 
	ret nz			;b0ea	c0 	. 
	ld d,b			;b0eb	50 	P 
	ld (bc),a			;b0ec	02 	. 
	and b			;b0ed	a0 	. 
	nop			;b0ee	00 	. 
	and b			;b0ef	a0 	. 
	nop			;b0f0	00 	. 
	ret p			;b0f1	f0 	. 
	nop			;b0f2	00 	. 
	ret p			;b0f3	f0 	. 
	rrca			;b0f4	0f 	. 
	ret nz			;b0f5	c0 	. 
	ld d,b			;b0f6	50 	P 
	inc b			;b0f7	04 	. 
	ret p			;b0f8	f0 	. 
	nop			;b0f9	00 	. 
	ret p			;b0fa	f0 	. 
	nop			;b0fb	00 	. 
	ret p			;b0fc	f0 	. 
	rrca			;b0fd	0f 	. 
	ret nz			;b0fe	c0 	. 
	ld d,b			;b0ff	50 	P 
	inc b			;b100	04 	. 
	ret p			;b101	f0 	. 
	nop			;b102	00 	. 
	cp 0abh		;b103	fe ab 	. . 
	jp m,0eaafh		;b105	fa af ea 	. . . 
	or b			;b108	b0 	. 
	nop			;b109	00 	. 
	and b			;b10a	a0 	. 
	nop			;b10b	00 	. 
	ret p			;b10c	f0 	. 
	nop			;b10d	00 	. 
	ld d,e			;b10e	53 	S 
	inc b			;b10f	04 	. 
	ret nz			;b110	c0 	. 
	jr nc,$+2		;b111	30 00 	0 . 
	ret p			;b113	f0 	. 
	nop			;b114	00 	. 
	ret p			;b115	f0 	. 
	nop			;b116	00 	. 
	ld d,e			;b117	53 	S 
	inc b			;b118	04 	. 
	ret nz			;b119	c0 	. 
	jr nc,$+2		;b11a	30 00 	0 . 
	ret p			;b11c	f0 	. 
	nop			;b11d	00 	. 
	ret p			;b11e	f0 	. 
	nop			;b11f	00 	. 
	jp m,0f0aah		;b120	fa aa f0 	. . . 
	rrca			;b123	0f 	. 
	ret nz			;b124	c0 	. 
	jr nc,$+5		;b125	30 03 	0 . 
	ret p			;b127	f0 	. 
	inc bc			;b128	03 	. 
	ret p			;b129	f0 	. 
	inc bc			;b12a	03 	. 
	cp 0abh		;b12b	fe ab 	. . 
	ret p			;b12d	f0 	. 
	inc bc			;b12e	03 	. 
	add a,b			;b12f	80 	. 
	jr nc,$+82		;b130	30 50 	0 P 
	ld (bc),a			;b132	02 	. 
	inc bc			;b133	03 	. 
	ret p			;b134	f0 	. 
	inc bc			;b135	03 	. 
	ld d,e			;b136	53 	S 
	ld (bc),a			;b137	02 	. 
	ret p			;b138	f0 	. 
	inc bc			;b139	03 	. 
	ret nz			;b13a	c0 	. 
	jr nc,$+5		;b13b	30 03 	0 . 
	ld d,e			;b13d	53 	S 
	inc b			;b13e	04 	. 
	ret p			;b13f	f0 	. 
	ld d,b			;b140	50 	P 
	ld (bc),a			;b141	02 	. 
	inc bc			;b142	03 	. 
	ret nz			;b143	c0 	. 
	jr nc,$+82		;b144	30 50 	0 P 
	inc bc			;b146	03 	. 
	rrca			;b147	0f 	. 
	rst 38h			;b148	ff 	. 
	ret p			;b149	f0 	. 
	ld d,b			;b14a	50 	P 
	ld (bc),a			;b14b	02 	. 
	inc bc			;b14c	03 	. 
	ret nz			;b14d	c0 	. 
	jr nc,$+82		;b14e	30 50 	0 P 
	inc bc			;b150	03 	. 
	ld a,(bc)			;b151	0a 	. 
	ld d,b			;b152	50 	P 
	inc b			;b153	04 	. 
	inc bc			;b154	03 	. 
	ret nz			;b155	c0 	. 
	jr nc,$+82		;b156	30 50 	0 P 
	inc bc			;b158	03 	. 
	rrca			;b159	0f 	. 
	ld d,b			;b15a	50 	P 
	inc b			;b15b	04 	. 
	jp 030c0h		;b15c	c3 c0 30 	. . 0 
	ld d,b			;b15f	50 	P 
	inc bc			;b160	03 	. 
	rrca			;b161	0f 	. 
	ld d,b			;b162	50 	P 
	inc bc			;b163	03 	. 
	and b			;b164	a0 	. 
	inc bc			;b165	03 	. 
	ret nz			;b166	c0 	. 
	jr nc,$+82		;b167	30 50 	0 P 
	inc bc			;b169	03 	. 
	rrca			;b16a	0f 	. 
	ld d,b			;b16b	50 	P 
	ld (bc),a			;b16c	02 	. 
	ret p			;b16d	f0 	. 
	nop			;b16e	00 	. 
	jp 030c0h		;b16f	c3 c0 30 	. . 0 
	ld d,b			;b172	50 	P 
	ld b,0f0h		;b173	06 f0 	. . 
	nop			;b175	00 	. 
	jp 030c0h		;b176	c3 c0 30 	. . 0 
	ld d,b			;b179	50 	P 
	dec b			;b17a	05 	. 
	and b			;b17b	a0 	. 
	nop			;b17c	00 	. 
	and b			;b17d	a0 	. 
	inc bc			;b17e	03 	. 
	ret nz			;b17f	c0 	. 
	jr nc,$+82		;b180	30 50 	0 P 
	inc bc			;b182	03 	. 
	inc c			;b183	0c 	. 
	ld d,b			;b184	50 	P 
	inc b			;b185	04 	. 
	inc bc			;b186	03 	. 
	ret nz			;b187	c0 	. 
	ld a,(0aeaeh)		;b188	3a ae ae 	: . . 
	cp e			;b18b	bb 	. 
	xor a			;b18c	af 	. 
	ret nz			;b18d	c0 	. 
	ld d,d			;b18e	52 	R 
	ld (bc),a			;b18f	02 	. 
	and b			;b190	a0 	. 
	inc bc			;b191	03 	. 
	ret nz			;b192	c0 	. 
	ccf			;b193	3f 	? 
	ld d,e			;b194	53 	S 
	rlca			;b195	07 	. 
	ret p			;b196	f0 	. 
	inc bc			;b197	03 	. 
	ret nz			;b198	c0 	. 
	ld d,b			;b199	50 	P 
	add hl,bc			;b19a	09 	. 
	inc bc			;b19b	03 	. 
	ret nz			;b19c	c0 	. 
	ccf			;b19d	3f 	? 
	jp m,053bfh		;b19e	fa bf 53 	. . S 
	ld (bc),a			;b1a1	02 	. 
	jp pe,00352h		;b1a2	ea 52 03 	. R . 
	xor e			;b1a5	ab 	. 
	ret nz			;b1a6	c0 	. 
	ccf			;b1a7	3f 	? 
	ld d,e			;b1a8	53 	S 
	inc b			;b1a9	04 	. 
	ret nz			;b1aa	c0 	. 
	ld d,b			;b1ab	50 	P 
	inc bc			;b1ac	03 	. 
	rrca			;b1ad	0f 	. 
	ret nz			;b1ae	c0 	. 
	ccf			;b1af	3f 	? 
	ret nz			;b1b0	c0 	. 
	rrca			;b1b1	0f 	. 
	jp pe,0c0aah		;b1b2	ea aa c0 	. . . 
	ld d,b			;b1b5	50 	P 
	inc bc			;b1b6	03 	. 
	rrca			;b1b7	0f 	. 
	ret nz			;b1b8	c0 	. 
	ccf			;b1b9	3f 	? 
	ret nz			;b1ba	c0 	. 
	rrca			;b1bb	0f 	. 
	ld d,e			;b1bc	53 	S 
	ld (bc),a			;b1bd	02 	. 
	ret nz			;b1be	c0 	. 
	rrca			;b1bf	0f 	. 
	rst 38h			;b1c0	ff 	. 
	ret nz			;b1c1	c0 	. 
	rrca			;b1c2	0f 	. 
	ret nz			;b1c3	c0 	. 
	ld a,(00bc0h)		;b1c4	3a c0 0b 	: . . 
	add a,b			;b1c7	80 	. 
	ld d,b			;b1c8	50 	P 
	ld (bc),a			;b1c9	02 	. 
	ld c,0aah		;b1ca	0e aa 	. . 
	ret nz			;b1cc	c0 	. 
	rrca			;b1cd	0f 	. 
	ret nz			;b1ce	c0 	. 
	ccf			;b1cf	3f 	? 
	ret nz			;b1d0	c0 	. 
	rrca			;b1d1	0f 	. 
	ret nz			;b1d2	c0 	. 
	ld d,b			;b1d3	50 	P 
	ld (bc),a			;b1d4	02 	. 
	rrca			;b1d5	0f 	. 
	ret nz			;b1d6	c0 	. 
	nop			;b1d7	00 	. 
	rrca			;b1d8	0f 	. 
	ret nz			;b1d9	c0 	. 
	cpl			;b1da	2f 	/ 
	add a,b			;b1db	80 	. 
	ld c,0c0h		;b1dc	0e c0 	. . 
	rrca			;b1de	0f 	. 
	ld d,e			;b1df	53 	S 
	ld (bc),a			;b1e0	02 	. 
	ret nz			;b1e1	c0 	. 
	nop			;b1e2	00 	. 
	rrca			;b1e3	0f 	. 
	ret nz			;b1e4	c0 	. 
	ccf			;b1e5	3f 	? 
	ret nz			;b1e6	c0 	. 
	rrca			;b1e7	0f 	. 
	ret nz			;b1e8	c0 	. 
	rrca			;b1e9	0f 	. 
	rst 38h			;b1ea	ff 	. 
	cp 0c0h		;b1eb	fe c0 	. . 
	rst 28h			;b1ed	ef 	. 
	rst 38h			;b1ee	ff 	. 
	ret nz			;b1ef	c0 	. 
	inc bc			;b1f0	03 	. 
	ret nz			;b1f1	c0 	. 
	rrca			;b1f2	0f 	. 
	ret nz			;b1f3	c0 	. 
	rrca			;b1f4	0f 	. 
	rst 38h			;b1f5	ff 	. 
	cp 0c0h		;b1f6	fe c0 	. . 
	rst 28h			;b1f8	ef 	. 
	rst 38h			;b1f9	ff 	. 
	ret nz			;b1fa	c0 	. 
	ld d,b			;b1fb	50 	P 
	inc b			;b1fc	04 	. 
	rrca			;b1fd	0f 	. 
	rst 38h			;b1fe	ff 	. 
	cp 0c0h		;b1ff	fe c0 	. . 
	rst 28h			;b201	ef 	. 
	ld d,e			;b202	53 	S 
	ex af,af'			;b203	08 	. 
	cp 0c0h		;b204	fe c0 	. . 
	rst 28h			;b206	ef 	. 
	rst 38h			;b207	ff 	. 
	ld d,b			;b208	50 	P 
	nop			;b209	00 	. 
	ld e,c			;b20a	59 	Y 
	rst 38h			;b20b	ff 	. 
	add hl,hl			;b20c	29 	) 
	inc bc			;b20d	03 	. 
	rra			;b20e	1f 	. 
	inc bc			;b20f	03 	. 
	rra			;b210	1f 	. 
	inc bc			;b211	03 	. 
	inc bc			;b212	03 	. 
	rst 38h			;b213	ff 	. 
	dec c			;b214	0d 	. 
	inc bc			;b215	03 	. 
	add hl,hl			;b216	29 	) 
	ld (de),a			;b217	12 	. 
	inc c			;b218	0c 	. 
	djnz $+20		;b219	10 12 	. . 
	inc d			;b21b	14 	. 
	djnz $+20		;b21c	10 12 	. . 
	inc d			;b21e	14 	. 
	djnz $+20		;b21f	10 12 	. . 
	inc d			;b221	14 	. 
	djnz $+20		;b222	10 12 	. . 
	inc d			;b224	14 	. 
	ld d,018h		;b225	16 18 	. . 
	djnz $+20		;b227	10 12 	. . 
	inc d			;b229	14 	. 
	djnz $+20		;b22a	10 12 	. . 
	inc d			;b22c	14 	. 
	inc c			;b22d	0c 	. 
	djnz $+20		;b22e	10 12 	. . 
	inc d			;b230	14 	. 
	ld c,010h		;b231	0e 10 	. . 
	ld (de),a			;b233	12 	. 
	ld b,008h		;b234	06 08 	. . 
	ld a,(bc)			;b236	0a 	. 
	ld e,020h		;b237	1e 20 	.   
	ld (003ffh),hl		;b239	22 ff 03 	" . . 
	inc bc			;b23c	03 	. 
	ld b,008h		;b23d	06 08 	. . 
	ld a,(bc)			;b23f	0a 	. 
	ld c,010h		;b240	0e 10 	. . 
	ld (de),a			;b242	12 	. 
	ld d,018h		;b243	16 18 	. . 
	ld a,(de)			;b245	1a 	. 
	ld e,020h		;b246	1e 20 	.   
	ld (0120ch),hl		;b248	22 0c 12 	" . . 
	inc d			;b24b	14 	. 
	ld (de),a			;b24c	12 	. 
	inc d			;b24d	14 	. 
	ld (de),a			;b24e	12 	. 
	inc d			;b24f	14 	. 
	inc c			;b250	0c 	. 
	ld (de),a			;b251	12 	. 
	inc d			;b252	14 	. 
	ld d,018h		;b253	16 18 	. . 
	ld a,(de)			;b255	1a 	. 
	inc c			;b256	0c 	. 
	ld (de),a			;b257	12 	. 
	inc d			;b258	14 	. 
	ld d,012h		;b259	16 12 	. . 
	inc d			;b25b	14 	. 
	ld (de),a			;b25c	12 	. 
	inc d			;b25d	14 	. 
	inc c			;b25e	0c 	. 
	ld (de),a			;b25f	12 	. 
	inc d			;b260	14 	. 
	ld h,00ah		;b261	26 0a 	& . 
	ld a,(de)			;b263	1a 	. 
	ld (03e38h),a		;b264	32 38 3e 	2 8 > 
	ld d,b			;b267	50 	P 
	ld e,(hl)			;b268	5e 	^ 
	ld h,b			;b269	60 	` 
	ld h,h			;b26a	64 	d 
	ld l,d			;b26b	6a 	j 
	cp (hl)			;b26c	be 	. 
	jp nz,0cac6h		;b26d	c2 c6 ca 	. . . 
	call p,00affh		;b270	f4 ff 0a 	. . . 
	inc b			;b273	04 	. 
	rst 38h			;b274	ff 	. 
	ld c,003h		;b275	0e 03 	. . 
	rst 38h			;b277	ff 	. 
	ld (de),a			;b278	12 	. 
	inc bc			;b279	03 	. 
	rst 38h			;b27a	ff 	. 
	ld d,005h		;b27b	16 05 	. . 
	rst 38h			;b27d	ff 	. 
	ld a,(de)			;b27e	1a 	. 
	inc bc			;b27f	03 	. 
	rst 38h			;b280	ff 	. 
	ld e,003h		;b281	1e 03 	. . 
	rst 38h			;b283	ff 	. 
	ld (0ff04h),hl		;b284	22 04 ff 	" . . 
	ld a,(hl)			;b287	7e 	~ 
	inc bc			;b288	03 	. 
	rst 38h			;b289	ff 	. 
	add a,h			;b28a	84 	. 
	inc bc			;b28b	03 	. 
	rst 38h			;b28c	ff 	. 
	adc a,h			;b28d	8c 	. 
	inc bc			;b28e	03 	. 
	or d			;b28f	b2 	. 
	cp d			;b290	ba 	. 
	jp nz,028ffh		;b291	c2 ff 28 	. . ( 
	ld b,0ffh		;b294	06 ff 	. . 
	ld e,d			;b296	5a 	Z 
	inc bc			;b297	03 	. 
	rst 38h			;b298	ff 	. 
	xor b			;b299	a8 	. 
	inc bc			;b29a	03 	. 
	rst 38h			;b29b	ff 	. 
	jp p,0f603h		;b29c	f2 03 f6 	. . . 
	or 0fah		;b29f	f6 fa 	. . 
	jp m,0feffh		;b2a1	fa ff fe 	. . . 
	inc b			;b2a4	04 	. 
	nop			;b2a5	00 	. 
	nop			;b2a6	00 	. 
	rst 38h			;b2a7	ff 	. 
	ld (bc),a			;b2a8	02 	. 
	inc b			;b2a9	04 	. 
	ld b,006h		;b2aa	06 06 	. . 
	ld a,(bc)			;b2ac	0a 	. 
	ld a,(bc)			;b2ad	0a 	. 
	rst 38h			;b2ae	ff 	. 
	ld c,003h		;b2af	0e 03 	. . 
	ld d,b			;b2b1	50 	P 
	ld d,h			;b2b2	54 	T 
	ld e,h			;b2b3	5c 	\ 
	rst 38h			;b2b4	ff 	. 
	inc d			;b2b5	14 	. 
	inc bc			;b2b6	03 	. 
	ld b,h			;b2b7	44 	D 
	ld (hl),h			;b2b8	74 	t 
	ld b,h			;b2b9	44 	D 
	ld (hl),h			;b2ba	74 	t 
	ld (hl),h			;b2bb	74 	t 
	rst 38h			;b2bc	ff 	. 
	ld c,b			;b2bd	48 	H 
	inc bc			;b2be	03 	. 
	ld b,h			;b2bf	44 	D 
	inc e			;b2c0	1c 	. 
	ld h,l			;b2c1	65 	e 
	rst 38h			;b2c2	ff 	. 
	dec b			;b2c3	05 	. 
	inc c			;b2c4	0c 	. 
	ld a,c			;b2c5	79 	y 
	ld a,c			;b2c6	79 	y 
	rst 38h			;b2c7	ff 	. 
	dec b			;b2c8	05 	. 
	ld b,065h		;b2c9	06 65 	. e 
	rst 38h			;b2cb	ff 	. 
	dec b			;b2cc	05 	. 
	inc bc			;b2cd	03 	. 
	rst 38h			;b2ce	ff 	. 
	ld a,l			;b2cf	7d 	} 
	add hl,bc			;b2d0	09 	. 
	rst 38h			;b2d1	ff 	. 
	dec e			;b2d2	1d 	. 
	inc bc			;b2d3	03 	. 
	rst 38h			;b2d4	ff 	. 
	ld a,(hl)			;b2d5	7e 	~ 
	inc c			;b2d6	0c 	. 
	ld h,(hl)			;b2d7	66 	f 
	rst 38h			;b2d8	ff 	. 
	ld b,006h		;b2d9	06 06 	. . 
	ld a,(hl)			;b2db	7e 	~ 
	ld b,006h		;b2dc	06 06 	. . 
	ld a,d			;b2de	7a 	z 
	ld a,e			;b2df	7b 	{ 
	ld a,e			;b2e0	7b 	{ 
	ld a,a			;b2e1	7f 	 
	rlca			;b2e2	07 	. 
	rlca			;b2e3	07 	. 
	ld a,e			;b2e4	7b 	{ 
	rst 38h			;b2e5	ff 	. 
	rlca			;b2e6	07 	. 
	inc b			;b2e7	04 	. 
	ld h,a			;b2e8	67 	g 
	rlca			;b2e9	07 	. 
	rlca			;b2ea	07 	. 
	rla			;b2eb	17 	. 
	ld b,a			;b2ec	47 	G 
	rra			;b2ed	1f 	. 
	rst 38h			;b2ee	ff 	. 
	ld l,l			;b2ef	6d 	m 
	inc bc			;b2f0	03 	. 
	ld a,(de)			;b2f1	1a 	. 
	ex af,af'			;b2f2	08 	. 
	ld a,(de)			;b2f3	1a 	. 
	ex af,af'			;b2f4	08 	. 
	ex af,af'			;b2f5	08 	. 
	rst 38h			;b2f6	ff 	. 
	ld e,l			;b2f7	5d 	] 
	inc bc			;b2f8	03 	. 
	ld a,(de)			;b2f9	1a 	. 
	ld a,(de)			;b2fa	1a 	. 
	ld a,e			;b2fb	7b 	{ 
	rst 38h			;b2fc	ff 	. 
	ld a,l			;b2fd	7d 	} 
	inc c			;b2fe	0c 	. 
	ld hl,(0ff2ah)		;b2ff	2a 2a ff 	* * . 
	ld a,l			;b302	7d 	} 
	ld b,07bh		;b303	06 7b 	. { 
	rst 38h			;b305	ff 	. 
	ld a,l			;b306	7d 	} 
	inc bc			;b307	03 	. 
	rst 38h			;b308	ff 	. 
	ccf			;b309	3f 	? 
	add hl,bc			;b30a	09 	. 
	rst 38h			;b30b	ff 	. 
	ld a,(de)			;b30c	1a 	. 
	inc bc			;b30d	03 	. 
	rst 38h			;b30e	ff 	. 
	ccf			;b30f	3f 	? 
	inc c			;b310	0c 	. 
	ld a,e			;b311	7b 	{ 
	rst 38h			;b312	ff 	. 
	ld a,l			;b313	7d 	} 
	ld b,03fh		;b314	06 3f 	. ? 
	ld a,l			;b316	7d 	} 
	ld a,l			;b317	7d 	} 
	rst 38h			;b318	ff 	. 
	ld hl,(03f03h)		;b319	2a 03 3f 	* . ? 
	ld a,l			;b31c	7d 	} 
	ld a,l			;b31d	7d 	} 
	ld hl,(07dffh)		;b31e	2a ff 7d 	* . } 
	inc b			;b321	04 	. 
	ld a,e			;b322	7b 	{ 
	ld a,l			;b323	7d 	} 
	ld a,l			;b324	7d 	} 
	ld l,l			;b325	6d 	m 
	ld a,(de)			;b326	1a 	. 
	ld a,(de)			;b327	1a 	. 
	rst 38h			;b328	ff 	. 
	nop			;b329	00 	. 
	ld c,001h		;b32a	0e 01 	. . 
	rst 38h			;b32c	ff 	. 
	nop			;b32d	00 	. 
	rlca			;b32e	07 	. 
	rst 38h			;b32f	ff 	. 
	ld (bc),a			;b330	02 	. 
	ld b,0ffh		;b331	06 ff 	. . 
	inc bc			;b333	03 	. 
	inc bc			;b334	03 	. 
	inc b			;b335	04 	. 
	inc b			;b336	04 	. 
	rst 38h			;b337	ff 	. 
	dec b			;b338	05 	. 
	add hl,bc			;b339	09 	. 
	rst 38h			;b33a	ff 	. 
	ld b,003h		;b33b	06 03 	. . 
	rst 38h			;b33d	ff 	. 
	rlca			;b33e	07 	. 
	inc bc			;b33f	03 	. 
	rst 38h			;b340	ff 	. 
	ex af,af'			;b341	08 	. 
	dec b			;b342	05 	. 
	add hl,bc			;b343	09 	. 
	rst 38h			;b344	ff 	. 
	ld a,(bc)			;b345	0a 	. 
	inc bc			;b346	03 	. 
	rst 38h			;b347	ff 	. 
	dec bc			;b348	0b 	. 
	inc bc			;b349	03 	. 
	rst 38h			;b34a	ff 	. 
	inc c			;b34b	0c 	. 
	inc bc			;b34c	03 	. 
	dec c			;b34d	0d 	. 
	rst 38h			;b34e	ff 	. 
	ld c,004h		;b34f	0e 04 	. . 
	rst 38h			;b351	ff 	. 
	rrca			;b352	0f 	. 
	inc b			;b353	04 	. 
	rst 38h			;b354	ff 	. 
	djnz $+5		;b355	10 03 	. . 
	rst 38h			;b357	ff 	. 
	ld de,0ff06h		;b358	11 06 ff 	. . . 
	ld (de),a			;b35b	12 	. 
	inc b			;b35c	04 	. 
	inc de			;b35d	13 	. 
	inc d			;b35e	14 	. 
	dec d			;b35f	15 	. 
	rst 38h			;b360	ff 	. 
	ld d,003h		;b361	16 03 	. . 
	rst 38h			;b363	ff 	. 
	rla			;b364	17 	. 
	inc bc			;b365	03 	. 
	jr $+1		;b366	18 ff 	. . 
	add hl,de			;b368	19 	. 
	inc bc			;b369	03 	. 
	rst 38h			;b36a	ff 	. 
	ld a,(de)			;b36b	1a 	. 
	inc bc			;b36c	03 	. 
	rst 38h			;b36d	ff 	. 
	dec de			;b36e	1b 	. 
	inc bc			;b36f	03 	. 
	inc e			;b370	1c 	. 
	inc e			;b371	1c 	. 
	dec e			;b372	1d 	. 
	dec e			;b373	1d 	. 
	ld e,01fh		;b374	1e 1f 	. . 
	rra			;b376	1f 	. 
	rst 38h			;b377	ff 	. 
	jr nz,$+19		;b378	20 11 	  . 
	rst 38h			;b37a	ff 	. 
	ld hl,0ff03h		;b37b	21 03 ff 	! . . 
	ld (0ff03h),hl		;b37e	22 03 ff 	" . . 
	inc hl			;b381	23 	# 
	inc bc			;b382	03 	. 
	rst 38h			;b383	ff 	. 
	inc h			;b384	24 	$ 
	inc bc			;b385	03 	. 
	rst 38h			;b386	ff 	. 
	dec h			;b387	25 	% 
	inc bc			;b388	03 	. 
	rst 38h			;b389	ff 	. 
	ld h,005h		;b38a	26 05 	& . 
	daa			;b38c	27 	' 
	daa			;b38d	27 	' 
	jr z,$+43		;b38e	28 29 	( ) 
	rst 38h			;b390	ff 	. 
	ld hl,(02903h)		;b391	2a 03 29 	* . ) 
	rst 38h			;b394	ff 	. 
	dec hl			;b395	2b 	+ 
	inc bc			;b396	03 	. 
	rst 38h			;b397	ff 	. 
	inc l			;b398	2c 	, 
	inc b			;b399	04 	. 
	rst 38h			;b39a	ff 	. 
	dec l			;b39b	2d 	- 
	inc bc			;b39c	03 	. 
	rst 38h			;b39d	ff 	. 
	ld l,003h		;b39e	2e 03 	. . 
	rst 38h			;b3a0	ff 	. 
	cpl			;b3a1	2f 	/ 
	dec b			;b3a2	05 	. 
	rst 38h			;b3a3	ff 	. 
	jr nc,$+7		;b3a4	30 05 	0 . 
	rst 38h			;b3a6	ff 	. 
	ld sp,03203h		;b3a7	31 03 32 	1 . 2 
	inc sp			;b3aa	33 	3 
	inc sp			;b3ab	33 	3 
	inc (hl)			;b3ac	34 	4 
	rst 38h			;b3ad	ff 	. 
	dec (hl)			;b3ae	35 	5 
	inc b			;b3af	04 	. 
	ld (hl),036h		;b3b0	36 36 	6 6 
	scf			;b3b2	37 	7 
	jr c,$+58		;b3b3	38 38 	8 8 
	rst 38h			;b3b5	ff 	. 
	add hl,sp			;b3b6	39 	9 
	inc b			;b3b7	04 	. 
	rst 38h			;b3b8	ff 	. 
	ld a,(0ff05h)		;b3b9	3a 05 ff 	: . . 
	dec sp			;b3bc	3b 	; 
	inc bc			;b3bd	03 	. 
	rst 38h			;b3be	ff 	. 
	inc a			;b3bf	3c 	< 
	rlca			;b3c0	07 	. 
	rst 38h			;b3c1	ff 	. 
	dec a			;b3c2	3d 	= 
	inc bc			;b3c3	03 	. 
	ld a,0ffh		;b3c4	3e ff 	> . 
	ccf			;b3c6	3f 	? 
	inc bc			;b3c7	03 	. 
	rst 38h			;b3c8	ff 	. 
	ld b,b			;b3c9	40 	@ 
	ld b,0ffh		;b3ca	06 ff 	. . 
	ld b,c			;b3cc	41 	A 
	inc bc			;b3cd	03 	. 
	ld b,d			;b3ce	42 	B 
	ld b,e			;b3cf	43 	C 
	ld b,e			;b3d0	43 	C 
	rst 38h			;b3d1	ff 	. 
	ld b,h			;b3d2	44 	D 
	dec b			;b3d3	05 	. 
	rst 38h			;b3d4	ff 	. 
	ld b,l			;b3d5	45 	E 
	inc b			;b3d6	04 	. 
	rst 38h			;b3d7	ff 	. 
	ld b,(hl)			;b3d8	46 	F 
	inc bc			;b3d9	03 	. 
	ld b,a			;b3da	47 	G 
	rst 38h			;b3db	ff 	. 
	ld c,b			;b3dc	48 	H 
	inc bc			;b3dd	03 	. 
	ld c,c			;b3de	49 	I 
	ld c,c			;b3df	49 	I 
	rst 38h			;b3e0	ff 	. 
	ld c,d			;b3e1	4a 	J 
	inc bc			;b3e2	03 	. 
	ld c,e			;b3e3	4b 	K 
	rst 38h			;b3e4	ff 	. 
	ld c,h			;b3e5	4c 	L 
	inc bc			;b3e6	03 	. 
	rst 38h			;b3e7	ff 	. 
	ld c,c			;b3e8	49 	I 
	inc b			;b3e9	04 	. 
	rst 38h			;b3ea	ff 	. 
	ld c,l			;b3eb	4d 	M 
	inc bc			;b3ec	03 	. 
	rst 38h			;b3ed	ff 	. 
	ld c,(hl)			;b3ee	4e 	N 
	inc bc			;b3ef	03 	. 
	rst 38h			;b3f0	ff 	. 
	ld c,a			;b3f1	4f 	O 
	inc b			;b3f2	04 	. 
	rst 38h			;b3f3	ff 	. 
	ld d,b			;b3f4	50 	P 
	inc bc			;b3f5	03 	. 
	rst 38h			;b3f6	ff 	. 
	ld d,c			;b3f7	51 	Q 
	inc bc			;b3f8	03 	. 
	ld d,d			;b3f9	52 	R 
	ld d,d			;b3fa	52 	R 
	rst 38h			;b3fb	ff 	. 
	ld d,e			;b3fc	53 	S 
	inc bc			;b3fd	03 	. 
	rst 38h			;b3fe	ff 	. 
	ld d,h			;b3ff	54 	T 
	inc bc			;b400	03 	. 
	ld d,l			;b401	55 	U 
	rst 38h			;b402	ff 	. 
	ld d,(hl)			;b403	56 	V 
	inc bc			;b404	03 	. 
	rst 38h			;b405	ff 	. 
	ld d,a			;b406	57 	W 
	inc bc			;b407	03 	. 
	rst 38h			;b408	ff 	. 
	ld e,b			;b409	58 	X 
	inc bc			;b40a	03 	. 
	rst 38h			;b40b	ff 	. 
	ld e,c			;b40c	59 	Y 
	inc bc			;b40d	03 	. 
	rst 38h			;b40e	ff 	. 
	ld e,d			;b40f	5a 	Z 
	inc b			;b410	04 	. 
	ld e,e			;b411	5b 	[ 
	ld e,h			;b412	5c 	\ 
	ld e,h			;b413	5c 	\ 
	rst 38h			;b414	ff 	. 
	ld e,l			;b415	5d 	] 
	inc bc			;b416	03 	. 
	ld e,(hl)			;b417	5e 	^ 
	rst 38h			;b418	ff 	. 
	ld e,a			;b419	5f 	_ 
	dec b			;b41a	05 	. 
	rst 38h			;b41b	ff 	. 
	ld h,b			;b41c	60 	` 
	rrca			;b41d	0f 	. 
	rst 38h			;b41e	ff 	. 
	ld h,c			;b41f	61 	a 
	inc bc			;b420	03 	. 
	ld h,d			;b421	62 	b 
	rst 38h			;b422	ff 	. 
	ld h,e			;b423	63 	c 
	ld (de),a			;b424	12 	. 
	ld h,h			;b425	64 	d 
	rst 38h			;b426	ff 	. 
	ld h,l			;b427	65 	e 
	inc bc			;b428	03 	. 
	ld h,(hl)			;b429	66 	f 
	rst 38h			;b42a	ff 	. 
	ld h,a			;b42b	67 	g 
	inc bc			;b42c	03 	. 
	ld l,b			;b42d	68 	h 
	ld l,b			;b42e	68 	h 
	rst 38h			;b42f	ff 	. 
	ld l,c			;b430	69 	i 
	inc bc			;b431	03 	. 
	ld l,d			;b432	6a 	j 
	ld l,d			;b433	6a 	j 
	ld l,e			;b434	6b 	k 
	rst 38h			;b435	ff 	. 
	ld l,h			;b436	6c 	l 
	ld a,(de)			;b437	1a 	. 
	rst 38h			;b438	ff 	. 
	ld l,l			;b439	6d 	m 
	inc bc			;b43a	03 	. 
	rst 38h			;b43b	ff 	. 
	ld l,(hl)			;b43c	6e 	n 
	inc b			;b43d	04 	. 
	ld l,a			;b43e	6f 	o 
	rst 38h			;b43f	ff 	. 
	ld (hl),b			;b440	70 	p 
	jr $+115		;b441	18 71 	. q 
	ld (hl),c			;b443	71 	q 
	rst 38h			;b444	ff 	. 
	ld (hl),d			;b445	72 	r 
	inc bc			;b446	03 	. 
	rst 38h			;b447	ff 	. 
	ld (hl),e			;b448	73 	s 
	inc bc			;b449	03 	. 
	rst 38h			;b44a	ff 	. 
	ld (hl),h			;b44b	74 	t 
	inc bc			;b44c	03 	. 
	rst 38h			;b44d	ff 	. 
	ld (hl),l			;b44e	75 	u 
	rlca			;b44f	07 	. 
	rst 38h			;b450	ff 	. 
	halt			;b451	76 	v 
	inc bc			;b452	03 	. 
	rst 38h			;b453	ff 	. 
	ld (hl),a			;b454	77 	w 
	rlca			;b455	07 	. 
	rst 38h			;b456	ff 	. 
	ld a,b			;b457	78 	x 
	inc bc			;b458	03 	. 
	rst 38h			;b459	ff 	. 
	ld a,c			;b45a	79 	y 
	rla			;b45b	17 	. 
	ld d,e			;b45c	53 	S 
	ld (bc),a			;b45d	02 	. 
	call pe,0530eh		;b45e	ec 0e 53 	. . S 
	add hl,bc			;b461	09 	. 
	xor 0aeh		;b462	ee ae 	. . 
	ld d,e			;b464	53 	S 
	add hl,bc			;b465	09 	. 
	call pe,0530eh		;b466	ec 0e 53 	. . S 
	dec b			;b469	05 	. 
	ret nz			;b46a	c0 	. 
	rrca			;b46b	0f 	. 
	ld d,e			;b46c	53 	S 
	ld (bc),a			;b46d	02 	. 
	call pe,0530eh		;b46e	ec 0e 53 	. . S 
	ld (bc),a			;b471	02 	. 
	ret nz			;b472	c0 	. 
	ld d,b			;b473	50 	P 
	ld (bc),a			;b474	02 	. 
	ret nz			;b475	c0 	. 
	rrca			;b476	0f 	. 
	ld d,e			;b477	53 	S 
	ld (bc),a			;b478	02 	. 
	call pe,0530eh		;b479	ec 0e 53 	. . S 
	ld (bc),a			;b47c	02 	. 
	ret nz			;b47d	c0 	. 
	jp pe,0c0c0h		;b47e	ea c0 c0 	. . . 
	rrca			;b481	0f 	. 
	ld d,e			;b482	53 	S 
	ld (bc),a			;b483	02 	. 
	call pe,0530eh		;b484	ec 0e 53 	. . S 
	ld (bc),a			;b487	02 	. 
	ret nz			;b488	c0 	. 
	rst 38h			;b489	ff 	. 
	ret nz			;b48a	c0 	. 
	call pe,0530fh		;b48b	ec 0f 53 	. . S 
	ld (bc),a			;b48e	02 	. 
	call m,00450h		;b48f	fc 50 04 	. P . 
	rst 38h			;b492	ff 	. 
	ret nz			;b493	c0 	. 
	call m,05303h		;b494	fc 03 53 	. . S 
	ex af,af'			;b497	08 	. 
	ret nz			;b498	c0 	. 
	rst 38h			;b499	ff 	. 
	inc bc			;b49a	03 	. 
	ret nz			;b49b	c0 	. 
	rst 38h			;b49c	ff 	. 
	ld d,b			;b49d	50 	P 
	dec b			;b49e	05 	. 
	rra			;b49f	1f 	. 
	ret nz			;b4a0	c0 	. 
	rst 38h			;b4a1	ff 	. 
	inc bc			;b4a2	03 	. 
	ret nz			;b4a3	c0 	. 
	ex de,hl			;b4a4	eb 	. 
	nop			;b4a5	00 	. 
	ld d,e			;b4a6	53 	S 
	dec b			;b4a7	05 	. 
	ret nz			;b4a8	c0 	. 
	rst 38h			;b4a9	ff 	. 
	inc bc			;b4aa	03 	. 
	ret nz			;b4ab	c0 	. 
	rst 38h			;b4ac	ff 	. 
	nop			;b4ad	00 	. 
	call m,00550h		;b4ae	fc 50 05 	. P . 
	rst 38h			;b4b1	ff 	. 
	inc bc			;b4b2	03 	. 
	ret nz			;b4b3	c0 	. 
	rst 38h			;b4b4	ff 	. 
	nop			;b4b5	00 	. 
	call m,0ff0fh		;b4b6	fc 0f ff 	. . . 
	call m,0aa03h		;b4b9	fc 03 aa 	. . . 
	xor e			;b4bc	ab 	. 
	inc bc			;b4bd	03 	. 
	ret nz			;b4be	c0 	. 
	rst 38h			;b4bf	ff 	. 
	nop			;b4c0	00 	. 
	call m,0ff0fh		;b4c1	fc 0f ff 	. . . 
	call m,05003h		;b4c4	fc 03 50 	. . P 
	ld (bc),a			;b4c7	02 	. 
	inc bc			;b4c8	03 	. 
	ret nz			;b4c9	c0 	. 
	rst 38h			;b4ca	ff 	. 
	nop			;b4cb	00 	. 
	call m,0ff0fh		;b4cc	fc 0f ff 	. . . 
	call m,00303h		;b4cf	fc 03 03 	. . . 
	rst 38h			;b4d2	ff 	. 
	inc bc			;b4d3	03 	. 
	ret nz			;b4d4	c0 	. 
	ld d,b			;b4d5	50 	P 
	ld (bc),a			;b4d6	02 	. 
	call m,0f00fh		;b4d7	fc 0f f0 	. . . 
	inc a			;b4da	3c 	< 
	inc bc			;b4db	03 	. 
	inc bc			;b4dc	03 	. 
	inc bc			;b4dd	03 	. 
	inc bc			;b4de	03 	. 
	ret nz			;b4df	c0 	. 
	ld d,e			;b4e0	53 	S 
	ld (bc),a			;b4e1	02 	. 
	call m,0f00fh		;b4e2	fc 0f f0 	. . . 
	inc a			;b4e5	3c 	< 
	inc bc			;b4e6	03 	. 
	inc bc			;b4e7	03 	. 
	inc bc			;b4e8	03 	. 
	inc bc			;b4e9	03 	. 
	ret nz			;b4ea	c0 	. 
	call pe,00250h		;b4eb	ec 50 02 	. P . 
	rrca			;b4ee	0f 	. 
	ret p			;b4ef	f0 	. 
	inc a			;b4f0	3c 	< 
	inc bc			;b4f1	03 	. 
	inc bc			;b4f2	03 	. 
	inc bc			;b4f3	03 	. 
	inc bc			;b4f4	03 	. 
	ret nz			;b4f5	c0 	. 
	call pe,0530fh		;b4f6	ec 0f 53 	. . S 
	ld (bc),a			;b4f9	02 	. 
	ret p			;b4fa	f0 	. 
	inc a			;b4fb	3c 	< 
	inc bc			;b4fc	03 	. 
	inc bc			;b4fd	03 	. 
	inc bc			;b4fe	03 	. 
	inc bc			;b4ff	03 	. 
	ret nz			;b500	c0 	. 
	call m,0530fh		;b501	fc 0f 53 	. . S 
	ld (bc),a			;b504	02 	. 
	ret p			;b505	f0 	. 
	inc a			;b506	3c 	< 
	inc bc			;b507	03 	. 
	nop			;b508	00 	. 
	inc bc			;b509	03 	. 
	inc bc			;b50a	03 	. 
	ret nz			;b50b	c0 	. 
	cp b			;b50c	b8 	. 
	rrca			;b50d	0f 	. 
	ld d,b			;b50e	50 	P 
	inc bc			;b50f	03 	. 
	inc a			;b510	3c 	< 
	inc bc			;b511	03 	. 
	nop			;b512	00 	. 
	inc bc			;b513	03 	. 
	inc bc			;b514	03 	. 
	ret nz			;b515	c0 	. 
	call m,0500fh		;b516	fc 0f 50 	. . P 
	inc bc			;b519	03 	. 
	inc a			;b51a	3c 	< 
	inc bc			;b51b	03 	. 
	ld d,e			;b51c	53 	S 
	ld (bc),a			;b51d	02 	. 
	inc bc			;b51e	03 	. 
	ret nz			;b51f	c0 	. 
	call m,0500fh		;b520	fc 0f 50 	. . P 
	inc bc			;b523	03 	. 
	inc a			;b524	3c 	< 
	ld d,b			;b525	50 	P 
	ld (bc),a			;b526	02 	. 
	inc bc			;b527	03 	. 
	inc bc			;b528	03 	. 
	ret nz			;b529	c0 	. 
	call pe,0020fh		;b52a	ec 0f 02 	. . . 
	ld d,e			;b52d	53 	S 
	ld (bc),a			;b52e	02 	. 
	call m,00250h		;b52f	fc 50 02 	. P . 
	inc bc			;b532	03 	. 
	inc bc			;b533	03 	. 
	ret nz			;b534	c0 	. 
	call m,0020fh		;b535	fc 0f 02 	. . . 
	ld d,e			;b538	53 	S 
	ld (bc),a			;b539	02 	. 
	cp 0aah		;b53a	fe aa 	. . 
	xor h			;b53c	ac 	. 
	inc bc			;b53d	03 	. 
	inc bc			;b53e	03 	. 
	ret nz			;b53f	c0 	. 
	cp b			;b540	b8 	. 
	rrca			;b541	0f 	. 
	ld d,b			;b542	50 	P 
	ld (bc),a			;b543	02 	. 
	ld a,a			;b544	7f 	 
	ld d,e			;b545	53 	S 
	ld (bc),a			;b546	02 	. 
	call m,00303h		;b547	fc 03 03 	. . . 
	ret nz			;b54a	c0 	. 
	call m,0500fh		;b54b	fc 0f 50 	. . P 
	ld (bc),a			;b54e	02 	. 
	ld (hl),b			;b54f	70 	p 
	ld d,b			;b550	50 	P 
	ld (bc),a			;b551	02 	. 
	inc a			;b552	3c 	< 
	inc bc			;b553	03 	. 
	inc bc			;b554	03 	. 
	ret nz			;b555	c0 	. 
	call pe,0530fh		;b556	ec 0f 53 	. . S 
	inc b			;b559	04 	. 
	ret p			;b55a	f0 	. 
	inc a			;b55b	3c 	< 
	inc bc			;b55c	03 	. 
	inc bc			;b55d	03 	. 
	ret nz			;b55e	c0 	. 
	cp b			;b55f	b8 	. 
	ld d,b			;b560	50 	P 
	ld b,03ch		;b561	06 3c 	. < 
	inc bc			;b563	03 	. 
	inc bc			;b564	03 	. 
	ret nz			;b565	c0 	. 
	call pe,0530fh		;b566	ec 0f 53 	. . S 
	dec b			;b569	05 	. 
	call m,00303h		;b56a	fc 03 03 	. . . 
	ret nz			;b56d	c0 	. 
	nop			;b56e	00 	. 
	rrca			;b56f	0f 	. 
	cp 052h		;b570	fe 52 	. R 
	inc b			;b572	04 	. 
	xor h			;b573	ac 	. 
	inc bc			;b574	03 	. 
	inc bc			;b575	03 	. 
	ret nz			;b576	c0 	. 
	nop			;b577	00 	. 
	rrca			;b578	0f 	. 
	call m,00550h		;b579	fc 50 05 	. P . 
	inc bc			;b57c	03 	. 
	inc bc			;b57d	03 	. 
	ret nz			;b57e	c0 	. 
	rrca			;b57f	0f 	. 
	rst 38h			;b580	ff 	. 
	call m,00550h		;b581	fc 50 05 	. P . 
	inc bc			;b584	03 	. 
	inc bc			;b585	03 	. 
	call m,0aa0eh		;b586	fc 0e aa 	. . . 
	xor h			;b589	ac 	. 
	rrca			;b58a	0f 	. 
	xor a			;b58b	af 	. 
	ld d,b			;b58c	50 	P 
	inc bc			;b58d	03 	. 
	inc bc			;b58e	03 	. 
	inc bc			;b58f	03 	. 
	call m,00250h		;b590	fc 50 02 	. P . 
	call m,0530fh		;b593	fc 0f 53 	. . S 
	inc bc			;b596	03 	. 
	ret p			;b597	f0 	. 
	inc bc			;b598	03 	. 
	inc bc			;b599	03 	. 
	cp 0bah		;b59a	fe ba 	. . 
	ret nz			;b59c	c0 	. 
	call m,0520eh		;b59d	fc 0e 52 	. . R 
	inc bc			;b5a0	03 	. 
	or b			;b5a1	b0 	. 
	inc bc			;b5a2	03 	. 
	inc bc			;b5a3	03 	. 
	ret nz			;b5a4	c0 	. 
	nop			;b5a5	00 	. 
	ret nz			;b5a6	c0 	. 
	call m,0530fh		;b5a7	fc 0f 53 	. . S 
	inc bc			;b5aa	03 	. 
	ret p			;b5ab	f0 	. 
	inc bc			;b5ac	03 	. 
	inc bc			;b5ad	03 	. 
	ret nz			;b5ae	c0 	. 
	ret nz			;b5af	c0 	. 
	ret nz			;b5b0	c0 	. 
	call m,0530fh		;b5b1	fc 0f 53 	. . S 
	inc bc			;b5b4	03 	. 
	ret p			;b5b5	f0 	. 
	inc bc			;b5b6	03 	. 
	inc bc			;b5b7	03 	. 
	ret nz			;b5b8	c0 	. 
	ret nz			;b5b9	c0 	. 
	ret nz			;b5ba	c0 	. 
	call m,00450h		;b5bb	fc 50 04 	. P . 
	ret p			;b5be	f0 	. 
	inc bc			;b5bf	03 	. 
	inc bc			;b5c0	03 	. 
	ret nz			;b5c1	c0 	. 
	ret nz			;b5c2	c0 	. 
	ret nz			;b5c3	c0 	. 
	ld d,e			;b5c4	53 	S 
	inc b			;b5c5	04 	. 
	ret nz			;b5c6	c0 	. 
	ret p			;b5c7	f0 	. 
	inc bc			;b5c8	03 	. 
	inc bc			;b5c9	03 	. 
	ret nz			;b5ca	c0 	. 
	ret nz			;b5cb	c0 	. 
	ret nz			;b5cc	c0 	. 
	ld d,b			;b5cd	50 	P 
	ld (bc),a			;b5ce	02 	. 
	ld d,e			;b5cf	53 	S 
	ld (bc),a			;b5d0	02 	. 
	ret nz			;b5d1	c0 	. 
	ret p			;b5d2	f0 	. 
	inc bc			;b5d3	03 	. 
	inc bc			;b5d4	03 	. 
	ret nz			;b5d5	c0 	. 
	ret nz			;b5d6	c0 	. 
	ret nz			;b5d7	c0 	. 
	ld d,b			;b5d8	50 	P 
	ld (bc),a			;b5d9	02 	. 
	rst 38h			;b5da	ff 	. 
	ret nz			;b5db	c0 	. 
	ret nz			;b5dc	c0 	. 
	ret p			;b5dd	f0 	. 
	inc bc			;b5de	03 	. 
	inc bc			;b5df	03 	. 
	ret nz			;b5e0	c0 	. 
	ret nz			;b5e1	c0 	. 
	ld d,e			;b5e2	53 	S 
	ld (bc),a			;b5e3	02 	. 
	ret nz			;b5e4	c0 	. 
	rst 38h			;b5e5	ff 	. 
	ret nz			;b5e6	c0 	. 
	ret nz			;b5e7	c0 	. 
	ret p			;b5e8	f0 	. 
	inc bc			;b5e9	03 	. 
	inc bc			;b5ea	03 	. 
	ret nz			;b5eb	c0 	. 
	ret nz			;b5ec	c0 	. 
	jp pe,0c0aah		;b5ed	ea aa c0 	. . . 
	ld d,b			;b5f0	50 	P 
	ld (bc),a			;b5f1	02 	. 
	ret nz			;b5f2	c0 	. 
	ret p			;b5f3	f0 	. 
	inc bc			;b5f4	03 	. 
	inc bc			;b5f5	03 	. 
	ret nz			;b5f6	c0 	. 
	ret nz			;b5f7	c0 	. 
	ld d,b			;b5f8	50 	P 
	inc bc			;b5f9	03 	. 
	rst 38h			;b5fa	ff 	. 
	ret nz			;b5fb	c0 	. 
	ret nz			;b5fc	c0 	. 
	ret p			;b5fd	f0 	. 
	inc bc			;b5fe	03 	. 
	inc bc			;b5ff	03 	. 
	ret nz			;b600	c0 	. 
	ret nz			;b601	c0 	. 
	ld d,e			;b602	53 	S 
	inc b			;b603	04 	. 
	ret nz			;b604	c0 	. 
	ret nz			;b605	c0 	. 
	ret p			;b606	f0 	. 
	inc bc			;b607	03 	. 
	inc bc			;b608	03 	. 
	ret nz			;b609	c0 	. 
	ret nz			;b60a	c0 	. 
	ld d,e			;b60b	53 	S 
	dec b			;b60c	05 	. 
	ret nz			;b60d	c0 	. 
	ret p			;b60e	f0 	. 
	inc bc			;b60f	03 	. 
	inc bc			;b610	03 	. 
	ret nz			;b611	c0 	. 
	ret nz			;b612	c0 	. 
	call m,00550h		;b613	fc 50 05 	. P . 
	ret p			;b616	f0 	. 
	inc bc			;b617	03 	. 
	inc bc			;b618	03 	. 
	ret nz			;b619	c0 	. 
	ret nz			;b61a	c0 	. 
	ret m			;b61b	f8 	. 
	dec bc			;b61c	0b 	. 
	ld d,e			;b61d	53 	S 
	inc b			;b61e	04 	. 
	ret p			;b61f	f0 	. 
	inc bc			;b620	03 	. 
	inc bc			;b621	03 	. 
	ret nz			;b622	c0 	. 
	ret nz			;b623	c0 	. 
	ret m			;b624	f8 	. 
	dec bc			;b625	0b 	. 
	ret nz			;b626	c0 	. 
	ld d,b			;b627	50 	P 
	ld (bc),a			;b628	02 	. 
	rrca			;b629	0f 	. 
	ret p			;b62a	f0 	. 
	inc bc			;b62b	03 	. 
	inc bc			;b62c	03 	. 
	ret nz			;b62d	c0 	. 
	ret nz			;b62e	c0 	. 
	ret m			;b62f	f8 	. 
	dec bc			;b630	0b 	. 
	ld d,e			;b631	53 	S 
	ld (bc),a			;b632	02 	. 
	call m,0f00fh		;b633	fc 0f f0 	. . . 
	inc bc			;b636	03 	. 
	inc bc			;b637	03 	. 
	ret nz			;b638	c0 	. 
	ret nz			;b639	c0 	. 
	call m,00250h		;b63a	fc 50 02 	. P . 
	ld c,0ach		;b63d	0e ac 	. . 
	rrca			;b63f	0f 	. 
	ret p			;b640	f0 	. 
	inc bc			;b641	03 	. 
	inc bc			;b642	03 	. 
	ret nz			;b643	c0 	. 
	ret nz			;b644	c0 	. 
	call m,00250h		;b645	fc 50 02 	. P . 
	rrca			;b648	0f 	. 
	call m,0f00fh		;b649	fc 0f f0 	. . . 
	nop			;b64c	00 	. 
	inc bc			;b64d	03 	. 
	ret nz			;b64e	c0 	. 
	ret nz			;b64f	c0 	. 
	ld d,e			;b650	53 	S 
	ld (bc),a			;b651	02 	. 
	call m,0fc0fh		;b652	fc 0f fc 	. . . 
	rrca			;b655	0f 	. 
	ret p			;b656	f0 	. 
	nop			;b657	00 	. 
	inc bc			;b658	03 	. 
	ret nz			;b659	c0 	. 
	ret nz			;b65a	c0 	. 
	ld d,e			;b65b	53 	S 
	ld (bc),a			;b65c	02 	. 
	call m,0fc0fh		;b65d	fc 0f fc 	. . . 
	rrca			;b660	0f 	. 
	jp m,003abh		;b661	fa ab 03 	. . . 
	ret nz			;b664	c0 	. 
	ret nz			;b665	c0 	. 
	ld d,b			;b666	50 	P 
	ld (bc),a			;b667	02 	. 
	call m,00250h		;b668	fc 50 02 	. P . 
	rrca			;b66b	0f 	. 
	ld d,e			;b66c	53 	S 
	ld (bc),a			;b66d	02 	. 
	inc bc			;b66e	03 	. 
	ret nz			;b66f	c0 	. 
	ret nz			;b670	c0 	. 
	ld d,b			;b671	50 	P 
	ld (bc),a			;b672	02 	. 
	call m,00450h		;b673	fc 50 04 	. P . 
	rst 38h			;b676	ff 	. 
	inc bc			;b677	03 	. 
	ret nz			;b678	c0 	. 
	ld d,e			;b679	53 	S 
	ld (bc),a			;b67a	02 	. 
	ret nz			;b67b	c0 	. 
	ld d,e			;b67c	53 	S 
	ld (bc),a			;b67d	02 	. 
	call m,00250h		;b67e	fc 50 02 	. P . 
	rst 38h			;b681	ff 	. 
	inc bc			;b682	03 	. 
	ret nz			;b683	c0 	. 
	nop			;b684	00 	. 
	ld bc,0fec0h		;b685	01 c0 fe 	. . . 
	xor d			;b688	aa 	. 
	xor a			;b689	af 	. 
	rst 38h			;b68a	ff 	. 
	ret nz			;b68b	c0 	. 
	rst 38h			;b68c	ff 	. 
	inc bc			;b68d	03 	. 
	ret nz			;b68e	c0 	. 
	ld d,e			;b68f	53 	S 
	ld (bc),a			;b690	02 	. 
	ret nz			;b691	c0 	. 
	ld d,e			;b692	53 	S 
	inc b			;b693	04 	. 
	ret nz			;b694	c0 	. 
	rst 38h			;b695	ff 	. 
	inc bc			;b696	03 	. 
	ret nz			;b697	c0 	. 
	rst 38h			;b698	ff 	. 
	ret nz			;b699	c0 	. 
	nop			;b69a	00 	. 
	call m,00250h		;b69b	fc 50 02 	. P . 
	rst 38h			;b69e	ff 	. 
	ret nz			;b69f	c0 	. 
	ex de,hl			;b6a0	eb 	. 
	inc bc			;b6a1	03 	. 
	ret nz			;b6a2	c0 	. 
	jp pe,0ebc0h		;b6a3	ea c0 eb 	. . . 
	xor e			;b6a6	ab 	. 
	xor d			;b6a7	aa 	. 
	ret nz			;b6a8	c0 	. 
	jp pe,0ffc0h		;b6a9	ea c0 ff 	. . . 
	inc bc			;b6ac	03 	. 
	ret nz			;b6ad	c0 	. 
	rst 38h			;b6ae	ff 	. 
	ret nz			;b6af	c0 	. 
	call m,00350h		;b6b0	fc 50 03 	. P . 
	rst 38h			;b6b3	ff 	. 
	ret nz			;b6b4	c0 	. 
	ex de,hl			;b6b5	eb 	. 
	inc bc			;b6b6	03 	. 
	ld d,e			;b6b7	53 	S 
	ld (bc),a			;b6b8	02 	. 
	ret nz			;b6b9	c0 	. 
	call m,0ff0fh		;b6ba	fc 0f ff 	. . . 
	ret nz			;b6bd	c0 	. 
	xor d			;b6be	aa 	. 
	add a,b			;b6bf	80 	. 
	rst 38h			;b6c0	ff 	. 
	inc bc			;b6c1	03 	. 
	ret nz			;b6c2	c0 	. 
	ld d,b			;b6c3	50 	P 
	ld (bc),a			;b6c4	02 	. 
	call m,0000ch		;b6c5	fc 0c 00 	. . . 
	ret nz			;b6c8	c0 	. 
	rst 38h			;b6c9	ff 	. 
	ret nz			;b6ca	c0 	. 
	rst 38h			;b6cb	ff 	. 
	inc bc			;b6cc	03 	. 
	ld d,e			;b6cd	53 	S 
	inc bc			;b6ce	03 	. 
	call m,0000ch		;b6cf	fc 0c 00 	. . . 
	ret nz			;b6d2	c0 	. 
	rst 38h			;b6d3	ff 	. 
	ret nz			;b6d4	c0 	. 
	rst 38h			;b6d5	ff 	. 
	inc bc			;b6d6	03 	. 
	rst 38h			;b6d7	ff 	. 
	nop			;b6d8	00 	. 
	inc bc			;b6d9	03 	. 
	call m,0000ch		;b6da	fc 0c 00 	. . . 
	ret nz			;b6dd	c0 	. 
	xor d			;b6de	aa 	. 
	add a,b			;b6df	80 	. 
	rst 38h			;b6e0	ff 	. 
	inc bc			;b6e1	03 	. 
	rst 38h			;b6e2	ff 	. 
	nop			;b6e3	00 	. 
	inc bc			;b6e4	03 	. 
	call m,0000ch		;b6e5	fc 0c 00 	. . . 
	ret nz			;b6e8	c0 	. 
	ld d,b			;b6e9	50 	P 
	ld (bc),a			;b6ea	02 	. 
	rst 38h			;b6eb	ff 	. 
	inc bc			;b6ec	03 	. 
	rst 38h			;b6ed	ff 	. 
	inc bc			;b6ee	03 	. 
	nop			;b6ef	00 	. 
	ld a,h			;b6f0	7c 	| 
	inc c			;b6f1	0c 	. 
	nop			;b6f2	00 	. 
	ret nz			;b6f3	c0 	. 
	ld d,b			;b6f4	50 	P 
	ld (bc),a			;b6f5	02 	. 
	rst 38h			;b6f6	ff 	. 
	inc bc			;b6f7	03 	. 
	rst 38h			;b6f8	ff 	. 
	inc bc			;b6f9	03 	. 
	nop			;b6fa	00 	. 
	ld a,h			;b6fb	7c 	| 
	inc c			;b6fc	0c 	. 
	nop			;b6fd	00 	. 
	ret nz			;b6fe	c0 	. 
	ld d,d			;b6ff	52 	R 
	ld (bc),a			;b700	02 	. 
	rst 38h			;b701	ff 	. 
	inc bc			;b702	03 	. 
	ex de,hl			;b703	eb 	. 
	inc bc			;b704	03 	. 
	rst 38h			;b705	ff 	. 
	call m,0000ch		;b706	fc 0c 00 	. . . 
	ret nz			;b709	c0 	. 
	ld d,e			;b70a	53 	S 
	inc bc			;b70b	03 	. 
	inc bc			;b70c	03 	. 
	rst 38h			;b70d	ff 	. 
	inc bc			;b70e	03 	. 
	rst 38h			;b70f	ff 	. 
	call m,0000ch		;b710	fc 0c 00 	. . . 
	ret nz			;b713	c0 	. 
	ld d,b			;b714	50 	P 
	ld (bc),a			;b715	02 	. 
	rrca			;b716	0f 	. 
	inc bc			;b717	03 	. 
	rst 38h			;b718	ff 	. 
	inc bc			;b719	03 	. 
	rst 38h			;b71a	ff 	. 
	call m,0530fh		;b71b	fc 0f 53 	. . S 
	inc bc			;b71e	03 	. 
	call m,0030fh		;b71f	fc 0f 03 	. . . 
	rst 38h			;b722	ff 	. 
	inc bc			;b723	03 	. 
	rst 38h			;b724	ff 	. 
	call m,00450h		;b725	fc 50 04 	. P . 
	inc a			;b728	3c 	< 
	rrca			;b729	0f 	. 
	inc bc			;b72a	03 	. 
	rst 38h			;b72b	ff 	. 
	inc bc			;b72c	03 	. 
	ld d,e			;b72d	53 	S 
	dec b			;b72e	05 	. 
	ret nz			;b72f	c0 	. 
	inc a			;b730	3c 	< 
	rrca			;b731	0f 	. 
	inc bc			;b732	03 	. 
	rst 38h			;b733	ff 	. 
	ld d,b			;b734	50 	P 
	inc bc			;b735	03 	. 
	inc bc			;b736	03 	. 
	ld d,d			;b737	52 	R 
	ld (bc),a			;b738	02 	. 
	ret nz			;b739	c0 	. 
	inc a			;b73a	3c 	< 
	rrca			;b73b	0f 	. 
	inc bc			;b73c	03 	. 
	rst 38h			;b73d	ff 	. 
	inc bc			;b73e	03 	. 
	rst 38h			;b73f	ff 	. 
	call m,05303h		;b740	fc 03 53 	. . S 
	ld (bc),a			;b743	02 	. 
	ret nz			;b744	c0 	. 
	inc a			;b745	3c 	< 
	rrca			;b746	0f 	. 
	inc bc			;b747	03 	. 
	rst 38h			;b748	ff 	. 
	inc bc			;b749	03 	. 
	rst 38h			;b74a	ff 	. 
	call m,00250h		;b74b	fc 50 02 	. P . 
	ld (hl),b			;b74e	70 	p 
	nop			;b74f	00 	. 
	inc a			;b750	3c 	< 
	rrca			;b751	0f 	. 
	inc bc			;b752	03 	. 
	call m,00750h		;b753	fc 50 07 	. P . 
	inc a			;b756	3c 	< 
	rrca			;b757	0f 	. 
	inc bc			;b758	03 	. 
	xor h			;b759	ac 	. 
	ld a,(bc)			;b75a	0a 	. 
	ld d,d			;b75b	52 	R 
	inc b			;b75c	04 	. 
	and b			;b75d	a0 	. 
	ccf			;b75e	3f 	? 
	call m,0030fh		;b75f	fc 0f 03 	. . . 
	call m,0500fh		;b762	fc 0f 50 	. . P 
	ld (bc),a			;b765	02 	. 
	ld bc,0f0ffh		;b766	01 ff f0 	. . . 
	ccf			;b769	3f 	? 
	call m,0030fh		;b76a	fc 0f 03 	. . . 
	call m,0fa0fh		;b76d	fc 0f fa 	. . . 
	xor d			;b770	aa 	. 
	ld (bc),a			;b771	02 	. 
	xor d			;b772	aa 	. 
	and b			;b773	a0 	. 
	ccf			;b774	3f 	? 
	call m,0030fh		;b775	fc 0f 03 	. . . 
	call m,0f00fh		;b778	fc 0f f0 	. . . 
	ld d,b			;b77b	50 	P 
	ld (bc),a			;b77c	02 	. 
	inc bc			;b77d	03 	. 
	ret p			;b77e	f0 	. 
	ccf			;b77f	3f 	? 
	call m,0030fh		;b780	fc 0f 03 	. . . 
	call m,0f00fh		;b783	fc 0f f0 	. . . 
	ld hl,(0abaah)		;b786	2a aa ab 	* . . 
	ret p			;b789	f0 	. 
	ccf			;b78a	3f 	? 
	call m,0030fh		;b78b	fc 0f 03 	. . . 
	call m,0f00fh		;b78e	fc 0f f0 	. . . 
	ccf			;b791	3f 	? 
	ld d,e			;b792	53 	S 
	ld (bc),a			;b793	02 	. 
	ret p			;b794	f0 	. 
	ccf			;b795	3f 	? 
	call m,0ab0fh		;b796	fc 0f ab 	. . . 
	ret nz			;b799	c0 	. 
	rrca			;b79a	0f 	. 
	ret p			;b79b	f0 	. 
	ld d,b			;b79c	50 	P 
	inc b			;b79d	04 	. 
	ccf			;b79e	3f 	? 
	call m,0ff0fh		;b79f	fc 0f ff 	. . . 
	ret nz			;b7a2	c0 	. 
	ld d,e			;b7a3	53 	S 
	rlca			;b7a4	07 	. 
	call m,0ff0fh		;b7a5	fc 0f ff 	. . . 
	ret nz			;b7a8	c0 	. 
	rst 38h			;b7a9	ff 	. 
	jp m,00452h		;b7aa	fa 52 04 	. R . 
	or b			;b7ad	b0 	. 
	inc e			;b7ae	1c 	. 
	rrca			;b7af	0f 	. 
	rst 38h			;b7b0	ff 	. 
	ret nz			;b7b1	c0 	. 
	ld d,e			;b7b2	53 	S 
	ld b,0f0h		;b7b3	06 f0 	. . 
	inc e			;b7b5	1c 	. 
	nop			;b7b6	00 	. 
	rrca			;b7b7	0f 	. 
	ret nz			;b7b8	c0 	. 
	rst 28h			;b7b9	ef 	. 
	or b			;b7ba	b0 	. 
	ld d,b			;b7bb	50 	P 
	dec b			;b7bc	05 	. 
	rra			;b7bd	1f 	. 
	call m,0c00fh		;b7be	fc 0f c0 	. . . 
	rst 38h			;b7c1	ff 	. 
	ret p			;b7c2	f0 	. 
	ccf			;b7c3	3f 	? 
	ld d,e			;b7c4	53 	S 
	dec b			;b7c5	05 	. 
	call m,0c00fh		;b7c6	fc 0f c0 	. . . 
	jp m,030f0h		;b7c9	fa f0 30 	. . 0 
	ld d,b			;b7cc	50 	P 
	ld b,00fh		;b7cd	06 0f 	. . 
	ret nz			;b7cf	c0 	. 
	rst 38h			;b7d0	ff 	. 
	ret p			;b7d1	f0 	. 
	jr nc,$+65		;b7d2	30 3f 	0 ? 
	ld d,e			;b7d4	53 	S 
	inc b			;b7d5	04 	. 
	ret nz			;b7d6	c0 	. 
	inc bc			;b7d7	03 	. 
	ret nz			;b7d8	c0 	. 
	rst 38h			;b7d9	ff 	. 
	ret p			;b7da	f0 	. 
	jr nc,$+50		;b7db	30 30 	0 0 
	ld d,b			;b7dd	50 	P 
	inc b			;b7de	04 	. 
	ret nz			;b7df	c0 	. 
	inc bc			;b7e0	03 	. 
	ret nz			;b7e1	c0 	. 
	rrca			;b7e2	0f 	. 
	ret p			;b7e3	f0 	. 
	jr nc,$+50		;b7e4	30 30 	0 0 
	ld d,b			;b7e6	50 	P 
	inc b			;b7e7	04 	. 
	ret nz			;b7e8	c0 	. 
	inc bc			;b7e9	03 	. 
	call m,0e00bh		;b7ea	fc 0b e0 	. . . 
	jr nc,$+50		;b7ed	30 30 	0 0 
	nop			;b7ef	00 	. 
	ld d,e			;b7f0	53 	S 
	inc bc			;b7f1	03 	. 
	ret nz			;b7f2	c0 	. 
	inc bc			;b7f3	03 	. 
	call m,0e00bh		;b7f4	fc 0b e0 	. . . 
	jr nc,$+50		;b7f7	30 30 	0 0 
	nop			;b7f9	00 	. 
	ret nz			;b7fa	c0 	. 
	ld d,b			;b7fb	50 	P 
	ld (bc),a			;b7fc	02 	. 
	ret nz			;b7fd	c0 	. 
	inc bc			;b7fe	03 	. 
	call m,0f00fh		;b7ff	fc 0f f0 	. . . 
	jr nc,$+50		;b802	30 30 	0 0 
	nop			;b804	00 	. 
	ret nz			;b805	c0 	. 
	jp pe,0c0c0h		;b806	ea c0 c0 	. . . 
	inc bc			;b809	03 	. 
	ret nz			;b80a	c0 	. 
	rrca			;b80b	0f 	. 
	ret p			;b80c	f0 	. 
	jr nc,$+2		;b80d	30 00 	0 . 
	cpl			;b80f	2f 	/ 
	ret nz			;b810	c0 	. 
	cp a			;b811	bf 	. 
	add a,b			;b812	80 	. 
	ret nz			;b813	c0 	. 
	inc bc			;b814	03 	. 
	ret nz			;b815	c0 	. 
	rst 38h			;b816	ff 	. 
	ret p			;b817	f0 	. 
	jr nc,$+2		;b818	30 00 	0 . 
	ccf			;b81a	3f 	? 
	ret nz			;b81b	c0 	. 
	rst 38h			;b81c	ff 	. 
	ret nz			;b81d	c0 	. 
	ret nz			;b81e	c0 	. 
	inc bc			;b81f	03 	. 
	ret nz			;b820	c0 	. 
	ret nz			;b821	c0 	. 
	jr nc,$+60		;b822	30 3a 	0 : 
	or b			;b824	b0 	. 
	cpl			;b825	2f 	/ 
	ret nz			;b826	c0 	. 
	jp pe,0c0c0h		;b827	ea c0 c0 	. . . 
	inc bc			;b82a	03 	. 
	ret nz			;b82b	c0 	. 
	ret nz			;b82c	c0 	. 
	jr nc,$+65		;b82d	30 3f 	0 ? 
	ret p			;b82f	f0 	. 
	ccf			;b830	3f 	? 
	ret nz			;b831	c0 	. 
	rst 38h			;b832	ff 	. 
	ret nz			;b833	c0 	. 
	call m,0c003h		;b834	fc 03 c0 	. . . 
	ret nz			;b837	c0 	. 
	jr nc,$+82		;b838	30 50 	0 P 
	ld (bc),a			;b83a	02 	. 
	ccf			;b83b	3f 	? 
	ret nz			;b83c	c0 	. 
	rst 38h			;b83d	ff 	. 
	ret nz			;b83e	c0 	. 
	inc a			;b83f	3c 	< 
	inc bc			;b840	03 	. 
	ret nz			;b841	c0 	. 
	ret nz			;b842	c0 	. 
	ccf			;b843	3f 	? 
	ld d,e			;b844	53 	S 
	inc bc			;b845	03 	. 
	ret nz			;b846	c0 	. 
	rst 38h			;b847	ff 	. 
	ret nz			;b848	c0 	. 
	call m,0c003h		;b849	fc 03 c0 	. . . 
	ret nz			;b84c	c0 	. 
	ld d,b			;b84d	50 	P 
	inc bc			;b84e	03 	. 
	ccf			;b84f	3f 	? 
	ret nz			;b850	c0 	. 
	rst 38h			;b851	ff 	. 
	ret nz			;b852	c0 	. 
	ret nz			;b853	c0 	. 
	inc bc			;b854	03 	. 
	ret nz			;b855	c0 	. 
	ret p			;b856	f0 	. 
	ccf			;b857	3f 	? 
	ld d,e			;b858	53 	S 
	inc bc			;b859	03 	. 
	ret nz			;b85a	c0 	. 
	rst 38h			;b85b	ff 	. 
	ret nz			;b85c	c0 	. 
	ret nz			;b85d	c0 	. 
	inc bc			;b85e	03 	. 
	ret nz			;b85f	c0 	. 
	ret p			;b860	f0 	. 
	ccf			;b861	3f 	? 
	ret nz			;b862	c0 	. 
	ld d,b			;b863	50 	P 
	inc bc			;b864	03 	. 
	rst 38h			;b865	ff 	. 
	ret nz			;b866	c0 	. 
	ret nz			;b867	c0 	. 
	inc bc			;b868	03 	. 
	ret nz			;b869	c0 	. 
	ret p			;b86a	f0 	. 
	ccf			;b86b	3f 	? 
	ret nz			;b86c	c0 	. 
	ld d,d			;b86d	52 	R 
	inc b			;b86e	04 	. 
	add a,b			;b86f	80 	. 
	jp 0c0ffh		;b870	c3 ff c0 	. . . 
	ret p			;b873	f0 	. 
	ccf			;b874	3f 	? 
	ret nz			;b875	c0 	. 
	ld d,e			;b876	53 	S 
	inc b			;b877	04 	. 
	ret nz			;b878	c0 	. 
	ld d,e			;b879	53 	S 
	ld (bc),a			;b87a	02 	. 
	ret nz			;b87b	c0 	. 
	ret p			;b87c	f0 	. 
	ld a,(0eac0h)		;b87d	3a c0 ea 	: . . 
	xor h			;b880	ac 	. 
	ld d,b			;b881	50 	P 
	inc b			;b882	04 	. 
	ld a,a			;b883	7f 	 
	ret nz			;b884	c0 	. 
	ret p			;b885	f0 	. 
	ld d,b			;b886	50 	P 
	ld (bc),a			;b887	02 	. 
	rst 38h			;b888	ff 	. 
	call m,00450h		;b889	fc 50 04 	. P . 
	ld a,a			;b88c	7f 	 
	ret nz			;b88d	c0 	. 
	call m,0aa0ah		;b88e	fc 0a aa 	. . . 
	rst 38h			;b891	ff 	. 
	call m,00450h		;b892	fc 50 04 	. P . 
	ld a,a			;b895	7f 	 
	ret nz			;b896	c0 	. 
	call m,0530fh		;b897	fc 0f 53 	. . S 
	ld (bc),a			;b89a	02 	. 
	call m,00450h		;b89b	fc 50 04 	. P . 
	rst 38h			;b89e	ff 	. 
	ret nz			;b89f	c0 	. 
	call m,0530fh		;b8a0	fc 0f 53 	. . S 
	ld (bc),a			;b8a3	02 	. 
	call m,00450h		;b8a4	fc 50 04 	. P . 
	ld bc,0fcc0h		;b8a7	01 c0 fc 	. . . 
	rrca			;b8aa	0f 	. 
	ld d,e			;b8ab	53 	S 
	rlca			;b8ac	07 	. 
	ld bc,0fcc0h		;b8ad	01 c0 fc 	. . . 
	rrca			;b8b0	0f 	. 
	ld d,e			;b8b1	53 	S 
	inc b			;b8b2	04 	. 
	ret nz			;b8b3	c0 	. 
	ld d,b			;b8b4	50 	P 
	ld (bc),a			;b8b5	02 	. 
	ld bc,0fcc0h		;b8b6	01 c0 fc 	. . . 
	rrca			;b8b9	0f 	. 
	ld d,e			;b8ba	53 	S 
	inc b			;b8bb	04 	. 
	ret nz			;b8bc	c0 	. 
	ld d,e			;b8bd	53 	S 
	inc bc			;b8be	03 	. 
	ret nz			;b8bf	c0 	. 
	call m,0530fh		;b8c0	fc 0f 53 	. . S 
	inc b			;b8c3	04 	. 
	ret nz			;b8c4	c0 	. 
	nop			;b8c5	00 	. 
	ld d,e			;b8c6	53 	S 
	ld (bc),a			;b8c7	02 	. 
	ret nz			;b8c8	c0 	. 
	call m,0530fh		;b8c9	fc 0f 53 	. . S 
	inc b			;b8cc	04 	. 
	cp 0c0h		;b8cd	fe c0 	. . 
	rst 28h			;b8cf	ef 	. 
	rst 38h			;b8d0	ff 	. 
	ret nz			;b8d1	c0 	. 
	call m,00350h		;b8d2	fc 50 03 	. P . 
	ld d,e			;b8d5	53 	S 
	ld (bc),a			;b8d6	02 	. 
	cp 0c0h		;b8d7	fe c0 	. . 
	rst 28h			;b8d9	ef 	. 
	rst 38h			;b8da	ff 	. 
	ret nz			;b8db	c0 	. 
	cp 052h		;b8dc	fe 52 	. R 
	ld (bc),a			;b8de	02 	. 
	add a,b			;b8df	80 	. 
	ld d,e			;b8e0	53 	S 
	ld (bc),a			;b8e1	02 	. 
	cp 0c0h		;b8e2	fe c0 	. . 
	rst 28h			;b8e4	ef 	. 
	rst 38h			;b8e5	ff 	. 
	ret nz			;b8e6	c0 	. 
	ld d,b			;b8e7	50 	P 
	inc b			;b8e8	04 	. 
	ld d,e			;b8e9	53 	S 
	ld (bc),a			;b8ea	02 	. 
	cp 0c0h		;b8eb	fe c0 	. . 
	rst 28h			;b8ed	ef 	. 
	ld d,e			;b8ee	53 	S 
	ex af,af'			;b8ef	08 	. 
	cp 0c0h		;b8f0	fe c0 	. . 
	rst 28h			;b8f2	ef 	. 
	rst 38h			;b8f3	ff 	. 
	ld d,b			;b8f4	50 	P 
	nop			;b8f5	00 	. 
	ccf			;b8f6	3f 	? 
	ld h,026h		;b8f7	26 26 	& & 
	ld bc,02419h		;b8f9	01 19 24 	. . $ 
	ld de,01d1dh		;b8fc	11 1d 1d 	. . . 
	rra			;b8ff	1f 	. 
	rst 38h			;b900	ff 	. 
	ld (bc),a			;b901	02 	. 
	inc bc			;b902	03 	. 
	add hl,de			;b903	19 	. 
	ex af,af'			;b904	08 	. 
	inc de			;b905	13 	. 
	ld bc,00909h		;b906	01 09 09 	. . . 
	inc d			;b909	14 	. 
	dec de			;b90a	1b 	. 
	add hl,bc			;b90b	09 	. 
	rra			;b90c	1f 	. 
	daa			;b90d	27 	' 
	ld b,027h		;b90e	06 27 	. ' 
	daa			;b910	27 	' 
	jr z,$+26		;b911	28 18 	( . 
	ld a,(de)			;b913	1a 	. 
	inc e			;b914	1c 	. 
	ld e,020h		;b915	1e 20 	.   
	ld (01824h),hl		;b917	22 24 18 	" $ . 
	ld a,(de)			;b91a	1a 	. 
	inc e			;b91b	1c 	. 
	ld e,020h		;b91c	1e 20 	.   
	ld (01824h),hl		;b91e	22 24 18 	" $ . 
	ld a,(de)			;b921	1a 	. 
	inc e			;b922	1c 	. 
	ld e,020h		;b923	1e 20 	.   
	ld (01824h),hl		;b925	22 24 18 	" $ . 
	ld a,(de)			;b928	1a 	. 
	inc e			;b929	1c 	. 
	ld e,020h		;b92a	1e 20 	.   
	ld (01824h),hl		;b92c	22 24 18 	" $ . 
	ld a,(de)			;b92f	1a 	. 
	inc e			;b930	1c 	. 
	ld e,020h		;b931	1e 20 	.   
	ld (02324h),hl		;b933	22 24 23 	" $ # 
	ld l,034h		;b936	2e 34 	. 4 
	ld h,b			;b938	60 	` 
	ld h,h			;b939	64 	d 
	add a,h			;b93a	84 	. 
	cp (hl)			;b93b	be 	. 
	jp po,0f2e8h		;b93c	e2 e8 f2 	. . . 
	inc d			;b93f	14 	. 
	ld a,(de)			;b940	1a 	. 
	jr nz,$+68		;b941	20 42 	  B 
	adc a,b			;b943	88 	. 
	sbc a,b			;b944	98 	. 
	xor (hl)			;b945	ae 	. 
	ret nc			;b946	d0 	. 
	sub 0e4h		;b947	d6 e4 	. . 
	nop			;b949	00 	. 
	ld a,(de)			;b94a	1a 	. 
	ld a,09ah		;b94b	3e 9a 	> . 
	sbc a,(hl)			;b94d	9e 	. 
	and b			;b94e	a0 	. 
	and (hl)			;b94f	a6 	. 
	jp nc,0f0ffh		;b950	d2 ff f0 	. . . 
	rlca			;b953	07 	. 
	rst 38h			;b954	ff 	. 
	call p,0ff07h		;b955	f4 07 ff 	. . . 
	ret m			;b958	f8 	. 
	rlca			;b959	07 	. 
	rst 38h			;b95a	ff 	. 
	call m,0ff07h		;b95b	fc 07 ff 	. . . 
	nop			;b95e	00 	. 
	rlca			;b95f	07 	. 
	inc a			;b960	3c 	< 
	rst 38h			;b961	ff 	. 
	add a,h			;b962	84 	. 
	ld b,034h		;b963	06 34 	. 4 
	jr c,$+86		;b965	38 54 	8 T 
	rst 38h			;b967	ff 	. 
	add hl,de			;b968	19 	. 
	inc bc			;b969	03 	. 
	add a,l			;b96a	85 	. 
	add a,l			;b96b	85 	. 
	dec (hl)			;b96c	35 	5 
	rst 38h			;b96d	ff 	. 
	add a,l			;b96e	85 	. 
	inc b			;b96f	04 	. 
	ld a,(08686h)		;b970	3a 86 86 	: . . 
	ld d,(hl)			;b973	56 	V 
	add a,(hl)			;b974	86 	. 
	ld d,(hl)			;b975	56 	V 
	ld (hl),086h		;b976	36 86 	6 . 
	xor (hl)			;b978	ae 	. 
	rst 38h			;b979	ff 	. 
	and d			;b97a	a2 	. 
	dec b			;b97b	05 	. 
	xor (hl)			;b97c	ae 	. 
	and (hl)			;b97d	a6 	. 
	sub d			;b97e	92 	. 
	xor (hl)			;b97f	ae 	. 
	and d			;b980	a2 	. 
	xor (hl)			;b981	ae 	. 
	sub d			;b982	92 	. 
	and (hl)			;b983	a6 	. 
	sub d			;b984	92 	. 
	sbc a,d			;b985	9a 	. 
	sub d			;b986	92 	. 
	sbc a,d			;b987	9a 	. 
	sub d			;b988	92 	. 
	sbc a,d			;b989	9a 	. 
	sub d			;b98a	92 	. 
	and (hl)			;b98b	a6 	. 
	sub d			;b98c	92 	. 
	xor (hl)			;b98d	ae 	. 
	and d			;b98e	a2 	. 
	xor (hl)			;b98f	ae 	. 
	sub d			;b990	92 	. 
	and (hl)			;b991	a6 	. 
	xor a			;b992	af 	. 
	rst 38h			;b993	ff 	. 
	and e			;b994	a3 	. 
	dec b			;b995	05 	. 
	xor a			;b996	af 	. 
	add a,a			;b997	87 	. 
	rst 38h			;b998	ff 	. 
	dec b			;b999	05 	. 
	ld b,0ffh		;b99a	06 ff 	. . 
	dec e			;b99c	1d 	. 
	inc bc			;b99d	03 	. 
	rst 38h			;b99e	ff 	. 
	ld l,l			;b99f	6d 	m 
	inc bc			;b9a0	03 	. 
	dec b			;b9a1	05 	. 
	dec b			;b9a2	05 	. 
	dec e			;b9a3	1d 	. 
	rst 38h			;b9a4	ff 	. 
	dec b			;b9a5	05 	. 
	inc b			;b9a6	04 	. 
	dec e			;b9a7	1d 	. 
	dec b			;b9a8	05 	. 
	dec b			;b9a9	05 	. 
	dec e			;b9aa	1d 	. 
	dec b			;b9ab	05 	. 
	dec e			;b9ac	1d 	. 
	dec e			;b9ad	1d 	. 
	dec b			;b9ae	05 	. 
	rst 38h			;b9af	ff 	. 
	dec hl			;b9b0	2b 	+ 
	ld b,00bh		;b9b1	06 0b 	. . 
	dec hl			;b9b3	2b 	+ 
	dec e			;b9b4	1d 	. 
	rst 38h			;b9b5	ff 	. 
	dec hl			;b9b6	2b 	+ 
	inc bc			;b9b7	03 	. 
	dec e			;b9b8	1d 	. 
	dec bc			;b9b9	0b 	. 
	dec e			;b9ba	1d 	. 
	rra			;b9bb	1f 	. 
	dec e			;b9bc	1d 	. 
	rra			;b9bd	1f 	. 
	dec e			;b9be	1d 	. 
	rra			;b9bf	1f 	. 
	dec e			;b9c0	1d 	. 
	dec hl			;b9c1	2b 	+ 
	dec e			;b9c2	1d 	. 
	rst 38h			;b9c3	ff 	. 
	dec hl			;b9c4	2b 	+ 
	inc bc			;b9c5	03 	. 
	dec e			;b9c6	1d 	. 
	dec bc			;b9c7	0b 	. 
	rst 38h			;b9c8	ff 	. 
	dec hl			;b9c9	2b 	+ 
	ld b,00bh		;b9ca	06 0b 	. . 
	dec b			;b9cc	05 	. 
	rst 38h			;b9cd	ff 	. 
	nop			;b9ce	00 	. 
	ld c,001h		;b9cf	0e 01 	. . 
	rst 38h			;b9d1	ff 	. 
	nop			;b9d2	00 	. 
	rrca			;b9d3	0f 	. 
	rst 38h			;b9d4	ff 	. 
	ld (bc),a			;b9d5	02 	. 
	inc bc			;b9d6	03 	. 
	rst 38h			;b9d7	ff 	. 
	inc bc			;b9d8	03 	. 
	inc bc			;b9d9	03 	. 
	rst 38h			;b9da	ff 	. 
	inc b			;b9db	04 	. 
	inc bc			;b9dc	03 	. 
	rst 38h			;b9dd	ff 	. 
	dec b			;b9de	05 	. 
	inc c			;b9df	0c 	. 
	rst 38h			;b9e0	ff 	. 
	inc b			;b9e1	04 	. 
	inc bc			;b9e2	03 	. 
	rst 38h			;b9e3	ff 	. 
	inc bc			;b9e4	03 	. 
	inc bc			;b9e5	03 	. 
	rst 38h			;b9e6	ff 	. 
	ld b,003h		;b9e7	06 03 	. . 
	rst 38h			;b9e9	ff 	. 
	rlca			;b9ea	07 	. 
	ld hl,007ffh		;b9eb	21 ff 07 	! . . 
	rst 38h			;b9ee	ff 	. 
	rst 38h			;b9ef	ff 	. 
	rlca			;b9f0	07 	. 
	add a,h			;b9f1	84 	. 
	ld d,e			;b9f2	53 	S 
	ld (bc),a			;b9f3	02 	. 
	call pe,0530eh		;b9f4	ec 0e 53 	. . S 
	add hl,bc			;b9f7	09 	. 
	xor 0aeh		;b9f8	ee ae 	. . 
	ld d,e			;b9fa	53 	S 
	add hl,bc			;b9fb	09 	. 
	call m,00750h		;b9fc	fc 50 07 	. P . 
	inc bc			;b9ff	03 	. 
	ld d,e			;ba00	53 	S 
	ld a,(bc)			;ba01	0a 	. 
	inc bc			;ba02	03 	. 
	ret nz			;ba03	c0 	. 
	ld d,b			;ba04	50 	P 
	add hl,bc			;ba05	09 	. 
	inc bc			;ba06	03 	. 
	ret nz			;ba07	c0 	. 
	ld d,b			;ba08	50 	P 
	rlca			;ba09	07 	. 
	ld d,e			;ba0a	53 	S 
	dec bc			;ba0b	0b 	. 
	ret nz			;ba0c	c0 	. 
	nop			;ba0d	00 	. 
	inc bc			;ba0e	03 	. 
	ld d,e			;ba0f	53 	S 
	rlca			;ba10	07 	. 
	cp 0c0h		;ba11	fe c0 	. . 
	rst 28h			;ba13	ef 	. 
	rst 38h			;ba14	ff 	. 
	ld d,b			;ba15	50 	P 
	nop			;ba16	00 	. 
	dec h			;ba17	25 	% 
	ld bc,00bffh		;ba18	01 ff 0b 	. . . 
	inc bc			;ba1b	03 	. 
	rst 38h			;ba1c	ff 	. 
	dec c			;ba1d	0d 	. 
	dec b			;ba1e	05 	. 
	rst 38h			;ba1f	ff 	. 
	rrca			;ba20	0f 	. 
	rlca			;ba21	07 	. 
	rst 38h			;ba22	ff 	. 
	ld de,0ff06h		;ba23	11 06 ff 	. . . 
	inc de			;ba26	13 	. 
	dec b			;ba27	05 	. 
	rst 38h			;ba28	ff 	. 
	dec d			;ba29	15 	. 
	inc bc			;ba2a	03 	. 
	rst 38h			;ba2b	ff 	. 
	rla			;ba2c	17 	. 
	inc bc			;ba2d	03 	. 
	add hl,de			;ba2e	19 	. 
	add hl,de			;ba2f	19 	. 
	dec de			;ba30	1b 	. 
	ld bc,05448h		;ba31	01 48 54 	. H T 
	ld e,b			;ba34	58 	X 
	ld e,h			;ba35	5c 	\ 
	ld d,b			;ba36	50 	P 
	ld d,h			;ba37	54 	T 
	ld e,b			;ba38	58 	X 
	ld e,h			;ba39	5c 	\ 
	ld h,b			;ba3a	60 	` 
	ld c,h			;ba3b	4c 	L 
	ld d,b			;ba3c	50 	P 
	ld d,h			;ba3d	54 	T 
	ld e,b			;ba3e	58 	X 
	ld e,h			;ba3f	5c 	\ 
	ld h,b			;ba40	60 	` 
	ld h,h			;ba41	64 	d 
	ld c,(hl)			;ba42	4e 	N 
	ld d,d			;ba43	52 	R 
	ld d,(hl)			;ba44	56 	V 
	ld e,d			;ba45	5a 	Z 
	ld e,(hl)			;ba46	5e 	^ 
	ld h,d			;ba47	62 	b 
	ld d,b			;ba48	50 	P 
	ld d,h			;ba49	54 	T 
	ld e,b			;ba4a	58 	X 
	ld e,h			;ba4b	5c 	\ 
	ld h,b			;ba4c	60 	` 
	ld d,d			;ba4d	52 	R 
	ld e,b			;ba4e	58 	X 
	ld e,(hl)			;ba4f	5e 	^ 
	ld d,h			;ba50	54 	T 
	ld e,b			;ba51	58 	X 
	ld e,h			;ba52	5c 	\ 
	ld d,(hl)			;ba53	56 	V 
	ld e,d			;ba54	5a 	Z 
	ld e,b			;ba55	58 	X 
	ld l,b			;ba56	68 	h 
	inc h			;ba57	24 	$ 
	sub h			;ba58	94 	. 
	sub b			;ba59	90 	. 
	sub h			;ba5a	94 	. 
	sub b			;ba5b	90 	. 
	or b			;ba5c	b0 	. 
	sbc a,b			;ba5d	98 	. 
	or b			;ba5e	b0 	. 
	sub b			;ba5f	90 	. 
	and h			;ba60	a4 	. 
	sbc a,b			;ba61	98 	. 
	sbc a,b			;ba62	98 	. 
	sub h			;ba63	94 	. 
	sbc a,b			;ba64	98 	. 
	sbc a,b			;ba65	98 	. 
	and h			;ba66	a4 	. 
	or b			;ba67	b0 	. 
	or h			;ba68	b4 	. 
	sbc a,b			;ba69	98 	. 
	sbc a,b			;ba6a	98 	. 
	or h			;ba6b	b4 	. 
	or b			;ba6c	b0 	. 
	sub b			;ba6d	90 	. 
	rst 38h			;ba6e	ff 	. 
	sbc a,b			;ba6f	98 	. 
	inc bc			;ba70	03 	. 
	sub b			;ba71	90 	. 
	or b			;ba72	b0 	. 
	sub b			;ba73	90 	. 
	or b			;ba74	b0 	. 
	rst 38h			;ba75	ff 	. 
	and b			;ba76	a0 	. 
	dec b			;ba77	05 	. 
	ld (hl),h			;ba78	74 	t 
	inc h			;ba79	24 	$ 
	adc a,b			;ba7a	88 	. 
	cpl			;ba7b	2f 	/ 
	ld hl,(02a2fh)		;ba7c	2a 2f 2a 	* / * 
	ld hl,(02a28h)		;ba7f	2a 28 2a 	* ( * 
	ld hl,(02825h)		;ba82	2a 25 28 	* % ( 
	jr z,$+49		;ba85	28 2f 	( / 
	jr z,$+42		;ba87	28 28 	( ( 
	dec h			;ba89	25 	% 
	ld hl,(0282ah)		;ba8a	2a 2a 28 	* * ( 
	jr z,$+1		;ba8d	28 ff 	( . 
	ld hl,(0ff03h)		;ba8f	2a 03 ff 	* . . 
	jr z,$+5		;ba92	28 03 	( . 
	rst 38h			;ba94	ff 	. 
	ld hl,(0ff04h)		;ba95	2a 04 ff 	* . . 
	jr z,$+7		;ba98	28 05 	( . 
	nop			;ba9a	00 	. 
	adc a,b			;ba9b	88 	. 
	ld a,0b8h		;ba9c	3e b8 	> . 
	ld (0eee7h),a		;ba9e	32 e7 ee 	2 . . 
	sub a			;baa1	97 	. 
	ld (0eee8h),a		;baa2	32 e8 ee 	2 . . 
	ld (0eee9h),a		;baa5	32 e9 ee 	2 . . 
	ld (0eeeah),a		;baa8	32 ea ee 	2 . . 
	ld ix,0eeebh		;baab	dd 21 eb ee 	. ! . . 
	ld b,005h		;baaf	06 05 	. . 
	push bc			;bab1	c5 	. 
	ld a,(ix+000h)		;bab2	dd 7e 00 	. ~ . 
	and a			;bab5	a7 	. 
	jr z,$+56		;bab6	28 36 	( 6 
	dec (ix+00ah)		;bab8	dd 35 0a 	. 5 . 
	jr nz,$+20		;babb	20 12 	  . 
	ld a,(ix+003h)		;babd	dd 7e 03 	. ~ . 
	ld (ix+00ah),a		;bac0	dd 77 0a 	. w . 
	inc (ix+008h)		;bac3	dd 34 08 	. 4 . 
	ld a,(ix+008h)		;bac6	dd 7e 08 	. ~ . 
	cp (ix+009h)		;bac9	dd be 09 	. . . 
	call z,0bb05h		;bacc	cc 05 bb 	. . . 
	call 0bc0eh		;bacf	cd 0e bc 	. . . 
	call 0bc43h		;bad2	cd 43 bc 	. C . 
	bit 2,(ix+000h)		;bad5	dd cb 00 56 	. . . V 
	jr z,$+21		;bad9	28 13 	( . 
	ld a,(ix+010h)		;badb	dd 7e 10 	. ~ . 
	add a,(ix+011h)		;bade	dd 86 11 	. . . 
	ld (ix+011h),a		;bae1	dd 77 11 	. w . 
	jr nc,$+10		;bae4	30 08 	0 . 
	dec (ix+001h)		;bae6	dd 35 01 	. 5 . 
	jr nz,$+5		;bae9	20 03 	  . 
	inc (ix+001h)		;baeb	dd 34 01 	. 4 . 
	ld de,00016h		;baee	11 16 00 	. . . 
	add ix,de		;baf1	dd 19 	. . 
	pop bc			;baf3	c1 	. 
	djnz $-67		;baf4	10 bb 	. . 
	ld hl,0eee0h		;baf6	21 e0 ee 	! . . 
	sub a			;baf9	97 	. 
	ld e,(hl)			;bafa	5e 	^ 
	call 00093h		;bafb	cd 93 00 	. . . 
	inc hl			;bafe	23 	# 
	inc a			;baff	3c 	< 
	cp 00bh		;bb00	fe 0b 	. . 
	jr nz,$-8		;bb02	20 f6 	  . 
	ret			;bb04	c9 	. 
	ld e,(ix+005h)		;bb05	dd 5e 05 	. ^ . 
	ld d,(ix+006h)		;bb08	dd 56 06 	. V . 
	dec de			;bb0b	1b 	. 
	inc de			;bb0c	13 	. 
	ld a,(de)			;bb0d	1a 	. 
	bit 7,a		;bb0e	cb 7f 	.  
	jp z,0bbb7h		;bb10	ca b7 bb 	. . . 
	cp 0dfh		;bb13	fe df 	. . 
	jp nc,0bbe5h		;bb15	d2 e5 bb 	. . . 
	inc de			;bb18	13 	. 
	res 7,a		;bb19	cb bf 	. . 
	ld hl,0bb0ch		;bb1b	21 0c bb 	! . . 
	push hl			;bb1e	e5 	. 
	ld bc,0bb27h		;bb1f	01 27 bb 	. ' . 
	call 0bcebh		;bb22	cd eb bc 	. . . 
	ld a,(de)			;bb25	1a 	. 
	jp (hl)			;bb26	e9 	. 
	ld b,e			;bb27	43 	C 
	cp e			;bb28	bb 	. 
	ld c,d			;bb29	4a 	J 
	cp e			;bb2a	bb 	. 
	ld d,c			;bb2b	51 	Q 
	cp e			;bb2c	bb 	. 
	ld (hl),c			;bb2d	71 	q 
	cp e			;bb2e	bb 	. 
	ld e,d			;bb2f	5a 	Z 
	cp e			;bb30	bb 	. 
	ld e,(hl)			;bb31	5e 	^ 
	cp e			;bb32	bb 	. 
	xor c			;bb33	a9 	. 
	cp e			;bb34	bb 	. 
	ld h,l			;bb35	65 	e 
	cp e			;bb36	bb 	. 
	ld l,c			;bb37	69 	i 
	cp e			;bb38	bb 	. 
	ld l,l			;bb39	6d 	m 
	cp e			;bb3a	bb 	. 
	ld (hl),l			;bb3b	75 	u 
	cp e			;bb3c	bb 	. 
	ld a,h			;bb3d	7c 	| 
	cp e			;bb3e	bb 	. 
	sbc a,l			;bb3f	9d 	. 
	cp e			;bb40	bb 	. 
	xor l			;bb41	ad 	. 
	cp e			;bb42	bb 	. 
	ld l,a			;bb43	6f 	o 
	inc de			;bb44	13 	. 
	ld a,(de)			;bb45	1a 	. 
	ld h,a			;bb46	67 	g 
	ex de,hl			;bb47	eb 	. 
	dec de			;bb48	1b 	. 
	ret			;bb49	c9 	. 
	dec (ix+00dh)		;bb4a	dd 35 0d 	. 5 . 
	jr nz,$-10		;bb4d	20 f4 	  . 
	inc de			;bb4f	13 	. 
	ret			;bb50	c9 	. 
	ld (ix+000h),000h		;bb51	dd 36 00 00 	. 6 . . 
	pop hl			;bb55	e1 	. 
	pop hl			;bb56	e1 	. 
	jp 0bad5h		;bb57	c3 d5 ba 	. . . 
	ld (ix+002h),a		;bb5a	dd 77 02 	. w . 
	ret			;bb5d	c9 	. 
	add a,(ix+007h)		;bb5e	dd 86 07 	. . . 
	ld (ix+007h),a		;bb61	dd 77 07 	. w . 
	ret			;bb64	c9 	. 
	ld (ix+00dh),a		;bb65	dd 77 0d 	. w . 
	ret			;bb68	c9 	. 
	ld (ix+015h),a		;bb69	dd 77 15 	. w . 
	ret			;bb6c	c9 	. 
	ld (ix+000h),a		;bb6d	dd 77 00 	. w . 
	ret			;bb70	c9 	. 
	ld (ix+001h),a		;bb71	dd 77 01 	. w . 
	ret			;bb74	c9 	. 
	ld a,001h		;bb75	3e 01 	> . 
	ld (0ef59h),a		;bb77	32 59 ef 	2 Y . 
	dec de			;bb7a	1b 	. 
	ret			;bb7b	c9 	. 
	ld c,a			;bb7c	4f 	O 
	inc de			;bb7d	13 	. 
	ld a,(de)			;bb7e	1a 	. 
	ld b,a			;bb7f	47 	G 
	dec (ix+013h)		;bb80	dd 35 13 	. 5 . 
	ret nz			;bb83	c0 	. 
	ld l,(ix+014h)		;bb84	dd 6e 14 	. n . 
	ld a,l			;bb87	7d 	} 
	add a,002h		;bb88	c6 02 	. . 
	ld (ix+014h),a		;bb8a	dd 77 14 	. w . 
	ld h,000h		;bb8d	26 00 	& . 
	add hl,bc			;bb8f	09 	. 
	ld a,(hl)			;bb90	7e 	~ 
	add a,(ix+007h)		;bb91	dd 86 07 	. . . 
	ld (ix+007h),a		;bb94	dd 77 07 	. w . 
	inc hl			;bb97	23 	# 
	ld a,(hl)			;bb98	7e 	~ 
	ld (ix+013h),a		;bb99	dd 77 13 	. w . 
	ret			;bb9c	c9 	. 
	ld (ix+010h),a		;bb9d	dd 77 10 	. w . 
	ld (ix+011h),000h		;bba0	dd 36 11 00 	. 6 . . 
	set 2,(ix+000h)		;bba4	dd cb 00 d6 	. . . . 
	ret			;bba8	c9 	. 
	ld (ix+004h),a		;bba9	dd 77 04 	. w . 
	ret			;bbac	c9 	. 
	ld (ix+013h),001h		;bbad	dd 36 13 01 	. 6 . . 
	ld (ix+014h),000h		;bbb1	dd 36 14 00 	. 6 . . 
	dec de			;bbb5	1b 	. 
	ret			;bbb6	c9 	. 
	inc de			;bbb7	13 	. 
	exx			;bbb8	d9 	. 
	and a			;bbb9	a7 	. 
	ld h,a			;bbba	67 	g 
	ld l,a			;bbbb	6f 	o 
	jr z,$+33		;bbbc	28 1f 	( . 
	add a,(ix+007h)		;bbbe	dd 86 07 	. . . 
	ld d,000h		;bbc1	16 00 	. . 
	cp 00dh		;bbc3	fe 0d 	. . 
	jr c,$+7		;bbc5	38 05 	8 . 
	inc d			;bbc7	14 	. 
	sub 00ch		;bbc8	d6 0c 	. . 
	jr $-7		;bbca	18 f7 	. . 
	ld bc,0bcf3h		;bbcc	01 f3 bc 	. . . 
	call 0bcebh		;bbcf	cd eb bc 	. . . 
	ld b,d			;bbd2	42 	B 
	rrc d		;bbd3	cb 0a 	. . 
	jr z,$+8		;bbd5	28 06 	( . 
	srl h		;bbd7	cb 3c 	. < 
	rr l		;bbd9	cb 1d 	. . 
	djnz $-4		;bbdb	10 fa 	. . 
	ld (ix+00fh),h		;bbdd	dd 74 0f 	. t . 
	ld (ix+00eh),l		;bbe0	dd 75 0e 	. u . 
	exx			;bbe3	d9 	. 
	ld a,(de)			;bbe4	1a 	. 
	sub 0e0h		;bbe5	d6 e0 	. . 
	ld c,(ix+00bh)		;bbe7	dd 4e 0b 	. N . 
	ld b,000h		;bbea	06 00 	. . 
	ld (ix+008h),b		;bbec	dd 70 08 	. p . 
	ld (ix+012h),b		;bbef	dd 70 12 	. p . 
	jr c,$+9		;bbf2	38 07 	8 . 
	ld hl,0bd38h		;bbf4	21 38 bd 	! 8 . 
	ld c,a			;bbf7	4f 	O 
	add hl,bc			;bbf8	09 	. 
	ld c,(hl)			;bbf9	4e 	N 
	inc de			;bbfa	13 	. 
	ld (ix+006h),d		;bbfb	dd 72 06 	. r . 
	ld (ix+005h),e		;bbfe	dd 73 05 	. s . 
	ld (ix+009h),c		;bc01	dd 71 09 	. q . 
	ld (ix+00bh),c		;bc04	dd 71 0b 	. q . 
	ld a,(ix+003h)		;bc07	dd 7e 03 	. ~ . 
	ld (ix+00ah),a		;bc0a	dd 77 0a 	. w . 
	ret			;bc0d	c9 	. 
	ld a,(ix+002h)		;bc0e	dd 7e 02 	. ~ . 
	add a,a			;bc11	87 	. 
	jp z,0bc3eh		;bc12	ca 3e bc 	. > . 
	ld hl,0bd45h		;bc15	21 45 bd 	! E . 
	ld c,a			;bc18	4f 	O 
	ld b,000h		;bc19	06 00 	. . 
	add hl,bc			;bc1b	09 	. 
	ld e,(hl)			;bc1c	5e 	^ 
	inc hl			;bc1d	23 	# 
	ld d,(hl)			;bc1e	56 	V 
	ld l,(ix+012h)		;bc1f	dd 6e 12 	. n . 
	ld h,b			;bc22	60 	` 
	add hl,de			;bc23	19 	. 
	bit 7,(hl)		;bc24	cb 7e 	. ~ 
	jr nz,$+7		;bc26	20 05 	  . 
	inc (ix+012h)		;bc28	dd 34 12 	. 4 . 
	jr $+3		;bc2b	18 01 	. . 
	dec hl			;bc2d	2b 	+ 
	ld a,(hl)			;bc2e	7e 	~ 
	cpl			;bc2f	2f 	/ 
	add a,010h		;bc30	c6 10 	. . 
	ld b,a			;bc32	47 	G 
	ld a,(ix+001h)		;bc33	dd 7e 01 	. ~ . 
	sub b			;bc36	90 	. 
	jr nc,$+3		;bc37	30 01 	0 . 
	sub a			;bc39	97 	. 
	ld (ix+00ch),a		;bc3a	dd 77 0c 	. w . 
	ret			;bc3d	c9 	. 
	ld a,(ix+001h)		;bc3e	dd 7e 01 	. ~ . 
	jr $-7		;bc41	18 f7 	. . 
	ld b,(ix+000h)		;bc43	dd 46 00 	. F . 
	ld e,(ix+00eh)		;bc46	dd 5e 0e 	. ^ . 
	ld d,(ix+00fh)		;bc49	dd 56 0f 	. V . 
	ld a,e			;bc4c	7b 	{ 
	or d			;bc4d	b2 	. 
	jr nz,$+5		;bc4e	20 03 	  . 
	ld (ix+00ch),a		;bc50	dd 77 0c 	. w . 
	ld c,(ix+004h)		;bc53	dd 4e 04 	. N . 
	bit 1,b		;bc56	cb 48 	. H 
	ld b,000h		;bc58	06 00 	. . 
	jr z,$+13		;bc5a	28 0b 	( . 
	ld a,(ix+015h)		;bc5c	dd 7e 15 	. ~ . 
	ld (0eee6h),a		;bc5f	32 e6 ee 	2 . . 
	ld a,0a8h		;bc62	3e a8 	> . 
	ld (0eee7h),a		;bc64	32 e7 ee 	2 . . 
	ld hl,0eee8h		;bc67	21 e8 ee 	! . . 
	add hl,bc			;bc6a	09 	. 
	ld a,(ix+00ch)		;bc6b	dd 7e 0c 	. ~ . 
	ld (hl),a			;bc6e	77 	w 
	sla c		;bc6f	cb 21 	. ! 
	ld hl,0eee0h		;bc71	21 e0 ee 	! . . 
	add hl,bc			;bc74	09 	. 
	ld (hl),e			;bc75	73 	s 
	inc hl			;bc76	23 	# 
	ld (hl),d			;bc77	72 	r 
	ret			;bc78	c9 	. 
	sub a			;bc79	97 	. 
	ld (0eee0h),a		;bc7a	32 e0 ee 	2 . . 
	push ix		;bc7d	dd e5 	. . 
	ld ix,0eeebh		;bc7f	dd 21 eb ee 	. ! . . 
	ld de,00016h		;bc83	11 16 00 	. . . 
	ld b,005h		;bc86	06 05 	. . 
	sub a			;bc88	97 	. 
	ld (ix+000h),a		;bc89	dd 77 00 	. w . 
	add ix,de		;bc8c	dd 19 	. . 
	djnz $-5		;bc8e	10 f9 	. . 
	pop ix		;bc90	dd e1 	. . 
	ld a,007h		;bc92	3e 07 	> . 
	ld e,0bfh		;bc94	1e bf 	. . 
	jp 00093h		;bc96	c3 93 00 	. . . 
	push bc			;bc99	c5 	. 
	push hl			;bc9a	e5 	. 
	push de			;bc9b	d5 	. 
	push ix		;bc9c	dd e5 	. . 
	di			;bc9e	f3 	. 
	call 0bca9h		;bc9f	cd a9 bc 	. . . 
	ei			;bca2	fb 	. 
	pop ix		;bca3	dd e1 	. . 
	pop de			;bca5	d1 	. 
	pop hl			;bca6	e1 	. 
	pop bc			;bca7	c1 	. 
	ret			;bca8	c9 	. 
	ld bc,0bd28h		;bca9	01 28 bd 	. ( . 
	call 0bcebh		;bcac	cd eb bc 	. . . 
	ld b,(hl)			;bcaf	46 	F 
	inc hl			;bcb0	23 	# 
	ld a,(hl)			;bcb1	7e 	~ 
	inc hl			;bcb2	23 	# 
	push hl			;bcb3	e5 	. 
	ld d,a			;bcb4	57 	W 
	add a,a			;bcb5	87 	. 
	add a,a			;bcb6	87 	. 
	add a,d			;bcb7	82 	. 
	add a,a			;bcb8	87 	. 
	add a,d			;bcb9	82 	. 
	add a,a			;bcba	87 	. 
	ld e,a			;bcbb	5f 	_ 
	ld d,000h		;bcbc	16 00 	. . 
	ld hl,0eeebh		;bcbe	21 eb ee 	! . . 
	add hl,de			;bcc1	19 	. 
	push hl			;bcc2	e5 	. 
	pop ix		;bcc3	dd e1 	. . 
	ex de,hl			;bcc5	eb 	. 
	pop hl			;bcc6	e1 	. 
	ld a,(hl)			;bcc7	7e 	~ 
	and a			;bcc8	a7 	. 
	jr z,$+30		;bcc9	28 1c 	( . 
	ld a,(de)			;bccb	1a 	. 
	bit 6,a		;bccc	cb 77 	. w 
	ret nz			;bcce	c0 	. 
	ld a,b			;bccf	78 	x 
	ld bc,00007h		;bcd0	01 07 00 	. . . 
	ldir		;bcd3	ed b0 	. . 
	ld b,a			;bcd5	47 	G 
	sub a			;bcd6	97 	. 
	ld (ix+007h),a		;bcd7	dd 77 07 	. w . 
	ld (ix+008h),a		;bcda	dd 77 08 	. w . 
	inc a			;bcdd	3c 	< 
	ld (ix+00ah),a		;bcde	dd 77 0a 	. w . 
	ld (ix+009h),a		;bce1	dd 77 09 	. w . 
	djnz $-51		;bce4	10 cb 	. . 
	ret			;bce6	c9 	. 
	ld (de),a			;bce7	12 	. 
	inc hl			;bce8	23 	# 
	jr $-5		;bce9	18 f9 	. . 
	add a,a			;bceb	87 	. 
	ld h,000h		;bcec	26 00 	& . 
	ld l,a			;bcee	6f 	o 
	add hl,bc			;bcef	09 	. 
	ld a,(hl)			;bcf0	7e 	~ 
	inc hl			;bcf1	23 	# 
	ld h,(hl)			;bcf2	66 	f 
	ld l,a			;bcf3	6f 	o 
	ret			;bcf4	c9 	. 
	cp 007h		;bcf5	fe 07 	. . 
	adc a,(hl)			;bcf7	8e 	. 
	rlca			;bcf8	07 	. 
	jr nz,$+9		;bcf9	20 07 	  . 
	cp d			;bcfb	ba 	. 
	ld b,05ah		;bcfc	06 5a 	. Z 
	ld b,0feh		;bcfe	06 fe 	. . 
	dec b			;bd00	05 	. 
	xor b			;bd01	a8 	. 
	dec b			;bd02	05 	. 
	ld d,(hl)			;bd03	56 	V 
	dec b			;bd04	05 	. 
	ld a,(bc)			;bd05	0a 	. 
	dec b			;bd06	05 	. 
	jp nz,07e04h		;bd07	c2 04 7e 	. . ~ 
	inc b			;bd0a	04 	. 
	inc a			;bd0b	3c 	< 
	inc b			;bd0c	04 	. 
	ret			;bd0d	c9 	. 
	di			;bd0e	f3 	. 
	ld b,003h		;bd0f	06 03 	. . 
	ld de,00016h		;bd11	11 16 00 	. . . 
	ld ix,0eeebh		;bd14	dd 21 eb ee 	. ! . . 
	set 2,(ix+000h)		;bd18	dd cb 00 d6 	. . . . 
	ld (ix+010h),030h		;bd1c	dd 36 10 30 	. 6 . 0 
	ld (ix+011h),000h		;bd20	dd 36 11 00 	. 6 . . 
	add ix,de		;bd24	dd 19 	. . 
	djnz $-14		;bd26	10 f0 	. . 
	ei			;bd28	fb 	. 
	ret			;bd29	c9 	. 
	sbc a,(hl)			;bd2a	9e 	. 
	cp l			;bd2b	bd 	. 
	jr c,$-63		;bd2c	38 bf 	8 . 
	sbc a,(hl)			;bd2e	9e 	. 
	cp l			;bd2f	bd 	. 
	ld d,l			;bd30	55 	U 
	cp a			;bd31	bf 	. 
	ld h,a			;bd32	67 	g 
	cp a			;bd33	bf 	. 
	exx			;bd34	d9 	. 
	cp a			;bd35	bf 	. 
	defb 0edh;next byte illegal after ed		;bd36	ed 	. 
	cp a			;bd37	bf 	. 
	ld bc,00302h		;bd38	01 02 03 	. . . 
	inc b			;bd3b	04 	. 
	ld b,008h		;bd3c	06 08 	. . 
	inc c			;bd3e	0c 	. 
	djnz $+26		;bd3f	10 18 	. . 
	jr nz,$+50		;bd41	20 30 	  0 
	add hl,bc			;bd43	09 	. 
	ld (de),a			;bd44	12 	. 
	inc e			;bd45	1c 	. 
	inc h			;bd46	24 	$ 
	ld c,l			;bd47	4d 	M 
	cp l			;bd48	bd 	. 
	ld l,e			;bd49	6b 	k 
	cp l			;bd4a	bd 	. 
	sub e			;bd4b	93 	. 
	cp l			;bd4c	bd 	. 
	ex af,af'			;bd4d	08 	. 
	inc c			;bd4e	0c 	. 
	rrca			;bd4f	0f 	. 
	rrca			;bd50	0f 	. 
	rrca			;bd51	0f 	. 
	rrca			;bd52	0f 	. 
	rrca			;bd53	0f 	. 
	rrca			;bd54	0f 	. 
	rrca			;bd55	0f 	. 
	rrca			;bd56	0f 	. 
	rrca			;bd57	0f 	. 
	rrca			;bd58	0f 	. 
	rrca			;bd59	0f 	. 
	rrca			;bd5a	0f 	. 
	rrca			;bd5b	0f 	. 
	rrca			;bd5c	0f 	. 
	rrca			;bd5d	0f 	. 
	ld c,00eh		;bd5e	0e 0e 	. . 
	ld c,00dh		;bd60	0e 0d 	. . 
	dec c			;bd62	0d 	. 
	dec c			;bd63	0d 	. 
	inc c			;bd64	0c 	. 
	inc c			;bd65	0c 	. 
	inc c			;bd66	0c 	. 
	dec bc			;bd67	0b 	. 
	dec bc			;bd68	0b 	. 
	ld a,(bc)			;bd69	0a 	. 
	add a,b			;bd6a	80 	. 
	rrca			;bd6b	0f 	. 
	rrca			;bd6c	0f 	. 
	ld c,00eh		;bd6d	0e 0e 	. . 
	dec c			;bd6f	0d 	. 
	dec c			;bd70	0d 	. 
	inc c			;bd71	0c 	. 
	inc c			;bd72	0c 	. 
	inc c			;bd73	0c 	. 
	dec bc			;bd74	0b 	. 
	dec bc			;bd75	0b 	. 
	dec bc			;bd76	0b 	. 
	dec bc			;bd77	0b 	. 
	dec bc			;bd78	0b 	. 
	dec bc			;bd79	0b 	. 
	dec bc			;bd7a	0b 	. 
	dec bc			;bd7b	0b 	. 
	ld a,(bc)			;bd7c	0a 	. 
	ld a,(bc)			;bd7d	0a 	. 
	ld a,(bc)			;bd7e	0a 	. 
	add hl,bc			;bd7f	09 	. 
	add hl,bc			;bd80	09 	. 
	add hl,bc			;bd81	09 	. 
	ex af,af'			;bd82	08 	. 
	ex af,af'			;bd83	08 	. 
	ex af,af'			;bd84	08 	. 
	rlca			;bd85	07 	. 
	rlca			;bd86	07 	. 
	rlca			;bd87	07 	. 
	ld b,006h		;bd88	06 06 	. . 
	ld b,005h		;bd8a	06 05 	. . 
	dec b			;bd8c	05 	. 
	inc b			;bd8d	04 	. 
	inc b			;bd8e	04 	. 
	inc bc			;bd8f	03 	. 
	inc bc			;bd90	03 	. 
	nop			;bd91	00 	. 
	add a,b			;bd92	80 	. 
	rrca			;bd93	0f 	. 
	ld c,00dh		;bd94	0e 0d 	. . 
	inc c			;bd96	0c 	. 
	dec bc			;bd97	0b 	. 
	ld a,(bc)			;bd98	0a 	. 
	ex af,af'			;bd99	08 	. 
	ld b,004h		;bd9a	06 04 	. . 
	nop			;bd9c	00 	. 
	add a,b			;bd9d	80 	. 
	inc bc			;bd9e	03 	. 
	nop			;bd9f	00 	. 
	ld bc,0010fh		;bda0	01 0f 01 	. . . 
	ld b,000h		;bda3	06 00 	. . 
	or a			;bda5	b7 	. 
	cp l			;bda6	bd 	. 
	ld bc,00d01h		;bda7	01 01 0d 	. . . 
	ld (bc),a			;bdaa	02 	. 
	ld b,001h		;bdab	06 01 	. . 
	ld de,002beh		;bdad	11 be 02 	. . . 
	ld bc,0030fh		;bdb0	01 0f 03 	. . . 
	ld b,002h		;bdb3	06 02 	. . 
	rst 38h			;bdb5	ff 	. 
	cp (hl)			;bdb6	be 	. 
	ld (0e0e6h),hl		;bdb7	22 e6 e0 	" . . 
	dec e			;bdba	1d 	. 
	ld (02925h),hl		;bdbb	22 25 29 	" % ) 
	rst 20h			;bdbe	e7 	. 
	daa			;bdbf	27 	' 
	and 0e0h		;bdc0	e6 e0 	. . 
	ld e,022h		;bdc2	1e 22 	. " 
	daa			;bdc4	27 	' 
	ld hl,(029e7h)		;bdc5	2a e7 29 	* . ) 
	and 0e3h		;bdc8	e6 e3 	. . 
	daa			;bdca	27 	' 
	push hl			;bdcb	e5 	. 
	jr z,$+43		;bdcc	28 29 	( ) 
	rst 20h			;bdce	e7 	. 
	rst 20h			;bdcf	e7 	. 
	ld (0e0e6h),hl		;bdd0	22 e6 e0 	" . . 
	dec e			;bdd3	1d 	. 
	ld (02925h),hl		;bdd4	22 25 29 	" % ) 
	rst 20h			;bdd7	e7 	. 
	daa			;bdd8	27 	' 
	and 0e0h		;bdd9	e6 e0 	. . 
	ld e,022h		;bddb	1e 22 	. " 
	daa			;bddd	27 	' 
	ld hl,(029e7h)		;bdde	2a e7 29 	* . ) 
	and 0e3h		;bde1	e6 e3 	. . 
	dec l			;bde3	2d 	- 
	push hl			;bde4	e5 	. 
	jr nc,$+48		;bde5	30 2e 	0 . 
	jp (hl)			;bde7	e9 	. 
	ld l,0e9h		;bde8	2e e9 	. . 
	ld (0e0e6h),hl		;bdea	22 e6 e0 	" . . 
	dec e			;bded	1d 	. 
	ld (02926h),hl		;bdee	22 26 29 	" & ) 
	and 0e2h		;bdf1	e6 e2 	. . 
	ret po			;bdf3	e0 	. 
	dec h			;bdf4	25 	% 
	defb 0edh;next byte illegal after ed		;bdf5	ed 	. 
	jp po,027e0h		;bdf6	e2 e0 27 	. . ' 
	rst 20h			;bdf9	e7 	. 
	inc h			;bdfa	24 	$ 
	push hl			;bdfb	e5 	. 
	ld hl,(0e929h)		;bdfc	2a 29 e9 	* ) . 
	ld (0e5e7h),hl		;bdff	22 e7 e5 	" . . 
	dec e			;be02	1d 	. 
	ld e,0edh		;be03	1e ed 	. . 
	jp po,024e0h		;be05	e2 e0 24 	. . $ 
	rst 20h			;be08	e7 	. 
	push hl			;be09	e5 	. 
	ld (0e721h),hl		;be0a	22 21 e7 	" ! . 
	dec e			;be0d	1d 	. 
	add a,b			;be0e	80 	. 
	or a			;be0f	b7 	. 
	cp l			;be10	bd 	. 
	add a,a			;be11	87 	. 
	ld bc,0e61dh		;be12	01 1d e6 	. . . 
	ret po			;be15	e0 	. 
	add hl,de			;be16	19 	. 
	dec e			;be17	1d 	. 
	ld (0e122h),hl		;be18	22 22 e1 	" " . 
	ld l,022h		;be1b	2e 22 	. " 
	ld l,022h		;be1d	2e 22 	. " 
	ld l,022h		;be1f	2e 22 	. " 
	ld l,022h		;be21	2e 22 	. " 
	and 0e0h		;be23	e6 e0 	. . 
	dec de			;be25	1b 	. 
	ld e,022h		;be26	1e 22 	. " 
	daa			;be28	27 	' 
	pop hl			;be29	e1 	. 
	inc sp			;be2a	33 	3 
	daa			;be2b	27 	' 
	inc sp			;be2c	33 	3 
	daa			;be2d	27 	' 
	inc sp			;be2e	33 	3 
	daa			;be2f	27 	' 
	inc sp			;be30	33 	3 
	ld sp,02e30h		;be31	31 30 2e 	1 0 . 
	inc l			;be34	2c 	, 
	ld l,02ch		;be35	2e 2c 	. , 
	ld hl,(08129h)		;be37	2a 29 81 	* ) . 
	ld d,a			;be3a	57 	W 
	cp (hl)			;be3b	be 	. 
	ld hl,(02729h)		;be3c	2a 29 27 	* ) ' 
	dec h			;be3f	25 	% 
	daa			;be40	27 	' 
	dec h			;be41	25 	% 
	inc h			;be42	24 	$ 
	ld (03529h),hl		;be43	22 29 35 	" ) 5 
	jr nc,$+62		;be46	30 3c 	0 < 
	dec h			;be48	25 	% 
	dec (hl)			;be49	35 	5 
	inc h			;be4a	24 	$ 
	dec (hl)			;be4b	35 	5 
	ld (02135h),hl		;be4c	22 35 21 	" 5 ! 
	dec (hl)			;be4f	35 	5 
	ld (02435h),hl		;be50	22 35 24 	" 5 $ 
	dec (hl)			;be53	35 	5 
	add a,b			;be54	80 	. 
	inc de			;be55	13 	. 
	cp (hl)			;be56	be 	. 
	dec l			;be57	2d 	- 
	add hl,hl			;be58	29 	) 
	dec l			;be59	2d 	- 
	add hl,hl			;be5a	29 	) 
	jr nc,$+43		;be5b	30 29 	0 ) 
	jr nc,$+43		;be5d	30 29 	0 ) 
	dec (hl)			;be5f	35 	5 
	add hl,hl			;be60	29 	) 
	inc sp			;be61	33 	3 
	add hl,hl			;be62	29 	) 
	ld sp,03029h		;be63	31 29 30 	1 ) 0 
	add hl,hl			;be66	29 	) 
	ld l,029h		;be67	2e 29 	. ) 
	dec l			;be69	2d 	- 
	add hl,hl			;be6a	29 	) 
	ld l,029h		;be6b	2e 29 	. ) 
	jr nc,$+43		;be6d	30 29 	0 ) 
	ld l,029h		;be6f	2e 29 	. ) 
	ld l,032h		;be71	2e 32 	. 2 
	dec (hl)			;be73	35 	5 
	ld (0292eh),a		;be74	32 2e 29 	2 . ) 
	ld l,029h		;be77	2e 29 	. ) 
	ld l,032h		;be79	2e 32 	. 2 
	dec (hl)			;be7b	35 	5 
	ld (0292eh),a		;be7c	32 2e 29 	2 . ) 
	add a,e			;be7f	83 	. 
	ld a,(bc)			;be80	0a 	. 
	add a,a			;be81	87 	. 
	ld (bc),a			;be82	02 	. 
	ld a,(041e0h)		;be83	3a e0 41 	: . A 
	ld a,041h		;be86	3e 41 	> A 
	ld a,(03e41h)		;be88	3a 41 3e 	: A > 
	ld b,c			;be8b	41 	A 
	ld a,(03e41h)		;be8c	3a 41 3e 	: A > 
	ld b,c			;be8f	41 	A 
	ld a,(03e41h)		;be90	3a 41 3e 	: A > 
	ld b,c			;be93	41 	A 
	add a,c			;be94	81 	. 
	add a,e			;be95	83 	. 
	cp (hl)			;be96	be 	. 
	add a,a			;be97	87 	. 
	ex af,af'			;be98	08 	. 
	ld (hl),03dh		;be99	36 3d 	6 = 
	ld a,(0813dh)		;be9b	3a 3d 81 	: = . 
	sbc a,c			;be9e	99 	. 
	cp (hl)			;be9f	be 	. 
	add a,a			;bea0	87 	. 
	inc b			;bea1	04 	. 
	jr c,$+65		;bea2	38 3f 	8 ? 
	inc a			;bea4	3c 	< 
	ccf			;bea5	3f 	? 
	jr c,$+68		;bea6	38 42 	8 B 
	inc a			;bea8	3c 	< 
	ld b,d			;bea9	42 	B 
	add a,c			;beaa	81 	. 
	and d			;beab	a2 	. 
	cp (hl)			;beac	be 	. 
	add a,a			;bead	87 	. 
	ex af,af'			;beae	08 	. 
	ld sp,03538h		;beaf	31 38 35 	1 8 5 
	jr c,$-125		;beb2	38 81 	8 . 
	xor a			;beb4	af 	. 
	cp (hl)			;beb5	be 	. 
	add a,a			;beb6	87 	. 
	ex af,af'			;beb7	08 	. 
	ld a,(03e41h)		;beb8	3a 41 3e 	: A > 
	ld b,c			;bebb	41 	A 
	add a,c			;bebc	81 	. 
	cp b			;bebd	b8 	. 
	cp (hl)			;bebe	be 	. 
	add a,a			;bebf	87 	. 
	ex af,af'			;bec0	08 	. 
	ld (hl),03dh		;bec1	36 3d 	6 = 
	ld a,(0813dh)		;bec3	3a 3d 81 	: = . 
	pop bc			;bec6	c1 	. 
	cp (hl)			;bec7	be 	. 
	add a,a			;bec8	87 	. 
	inc b			;bec9	04 	. 
	inc a			;beca	3c 	< 
	ld b,e			;becb	43 	C 
	ld b,b			;becc	40 	@ 
	ld b,e			;becd	43 	C 
	add a,c			;bece	81 	. 
	jp z,087beh		;becf	ca be 87 	. . . 
	inc b			;bed2	04 	. 
	inc a			;bed3	3c 	< 
	ld b,(hl)			;bed4	46 	F 
	ld b,b			;bed5	40 	@ 
	ld b,(hl)			;bed6	46 	F 
	add a,c			;bed7	81 	. 
	out (0beh),a		;bed8	d3 be 	. . 
	dec (hl)			;beda	35 	5 
	ld b,c			;bedb	41 	A 
	dec (hl)			;bedc	35 	5 
	ld b,c			;bedd	41 	A 
	inc sp			;bede	33 	3 
	ld b,c			;bedf	41 	A 
	inc sp			;bee0	33 	3 
	ld b,c			;bee1	41 	A 
	ld sp,03141h		;bee2	31 41 31 	1 A 1 
	ld b,c			;bee5	41 	A 
	jr nc,$+67		;bee6	30 41 	0 A 
	jr nc,$+67		;bee8	30 41 	0 A 
	ld l,041h		;beea	2e 41 	. A 
	ld l,041h		;beec	2e 41 	. A 
	dec l			;beee	2d 	- 
	ld b,c			;beef	41 	A 
	dec l			;bef0	2d 	- 
	ld b,c			;bef1	41 	A 
	ld l,041h		;bef2	2e 41 	. A 
	ld l,041h		;bef4	2e 41 	. A 
	jr nc,$+67		;bef6	30 41 	0 A 
	jr nc,$+67		;bef8	30 41 	0 A 
	add a,e			;befa	83 	. 
	dec c			;befb	0d 	. 
	add a,b			;befc	80 	. 
	ld de,087beh		;befd	11 be 87 	. . . 
	ld b,h			;bf00	44 	D 
	adc a,l			;bf01	8d 	. 
	adc a,e			;bf02	8b 	. 
	ld (de),a			;bf03	12 	. 
	cp a			;bf04	bf 	. 
	dec c			;bf05	0d 	. 
	pop hl			;bf06	e1 	. 
	add hl,de			;bf07	19 	. 
	dec c			;bf08	0d 	. 
	add hl,de			;bf09	19 	. 
	add a,c			;bf0a	81 	. 
	ld (bc),a			;bf0b	02 	. 
	cp a			;bf0c	bf 	. 
	add a,l			;bf0d	85 	. 
	ex af,af'			;bf0e	08 	. 
	add a,b			;bf0f	80 	. 
	rst 38h			;bf10	ff 	. 
	cp (hl)			;bf11	be 	. 
	defb 0fdh,004h,005h	;illegal sequence		;bf12	fd 04 05 	. . . 
	inc b			;bf15	04 	. 
	cp 002h		;bf16	fe 02 	. . 
	ld (bc),a			;bf18	02 	. 
	ld bc,001fdh		;bf19	01 fd 01 	. . . 
	dec b			;bf1c	05 	. 
	inc b			;bf1d	04 	. 
	ld sp,hl			;bf1e	f9 	. 
	inc b			;bf1f	04 	. 
	dec b			;bf20	05 	. 
	inc b			;bf21	04 	. 
	cp 002h		;bf22	fe 02 	. . 
	inc b			;bf24	04 	. 
	ld bc,001f8h		;bf25	01 f8 01 	. . . 
	ld bc,0fc0ch		;bf28	01 0c fc 	. . . 
	inc b			;bf2b	04 	. 
	ld (bc),a			;bf2c	02 	. 
	inc b			;bf2d	04 	. 
	dec b			;bf2e	05 	. 
	inc b			;bf2f	04 	. 
	defb 0fdh,004h,0fch	;illegal sequence		;bf30	fd 04 fc 	. . . 
	inc b			;bf33	04 	. 
	ld b,004h		;bf34	06 04 	. . 
	ld sp,hl			;bf36	f9 	. 
	inc b			;bf37	04 	. 
	ld bc,04103h		;bf38	01 03 41 	. . A 
	rrca			;bf3b	0f 	. 
	nop			;bf3c	00 	. 
	ld bc,04102h		;bf3d	01 02 41 	. . A 
	cp a			;bf40	bf 	. 
	adc a,h			;bf41	8c 	. 
	ld b,b			;bf42	40 	@ 
	inc a			;bf43	3c 	< 
	ret po			;bf44	e0 	. 
	add a,(hl)			;bf45	86 	. 
	ld bc,0893dh		;bf46	01 3d 89 	. = . 
	dec c			;bf49	0d 	. 
	add a,(hl)			;bf4a	86 	. 
	ld (bc),a			;bf4b	02 	. 
	add a,a			;bf4c	87 	. 
	ex af,af'			;bf4d	08 	. 
	dec a			;bf4e	3d 	= 
	ld a,03fh		;bf4f	3e 3f 	> ? 
	add a,c			;bf51	81 	. 
	ld c,(hl)			;bf52	4e 	N 
	cp a			;bf53	bf 	. 
	add a,d			;bf54	82 	. 
	ld (bc),a			;bf55	02 	. 
	inc bc			;bf56	03 	. 
	nop			;bf57	00 	. 
	inc bc			;bf58	03 	. 
	ld b,e			;bf59	43 	C 
	rrca			;bf5a	0f 	. 
	nop			;bf5b	00 	. 
	ld bc,06001h		;bf5c	01 01 60 	. . ` 
	cp a			;bf5f	bf 	. 
	adc a,h			;bf60	8c 	. 
	ld h,b			;bf61	60 	` 
	adc a,b			;bf62	88 	. 
	jr $+7		;bf63	18 05 	. . 
	ret pe			;bf65	e8 	. 
	add a,d			;bf66	82 	. 
	inc bc			;bf67	03 	. 
	nop			;bf68	00 	. 
	ld bc,0010fh		;bf69	01 0f 01 	. . . 
	dec b			;bf6c	05 	. 
	nop			;bf6d	00 	. 
	add a,b			;bf6e	80 	. 
	cp a			;bf6f	bf 	. 
	ld bc,00d01h		;bf70	01 01 0d 	. . . 
	ld (bc),a			;bf73	02 	. 
	dec b			;bf74	05 	. 
	ld bc,0bf96h		;bf75	01 96 bf 	. . . 
	ld (bc),a			;bf78	02 	. 
	ld bc,0010dh		;bf79	01 0d 01 	. . . 
	dec b			;bf7c	05 	. 
	ld (bc),a			;bf7d	02 	. 
	jp z,000bfh		;bf7e	ca bf 00 	. . . 
	xor 02dh		;bf81	ee 2d 	. - 
	ex de,hl			;bf83	eb 	. 
	jp po,0ebeeh		;bf84	e2 ee eb 	. . . 
	jp po,02ee8h		;bf87	e2 e8 2e 	. . . 
	and 02bh		;bf8a	e6 2b 	. + 
	dec l			;bf8c	2d 	- 
	ret pe			;bf8d	e8 	. 
	and 0e6h		;bf8e	e6 e6 	. . 
	ld h,0eah		;bf90	26 ea 	& . 
	adc a,h			;bf92	8c 	. 
	ex af,af'			;bf93	08 	. 
	ld h,082h		;bf94	26 82 	& . 
	add a,a			;bf96	87 	. 
	ex af,af'			;bf97	08 	. 
	dec d			;bf98	15 	. 
	ex (sp),hl			;bf99	e3 	. 
	ld a,(de)			;bf9a	1a 	. 
	dec e			;bf9b	1d 	. 
	add a,c			;bf9c	81 	. 
	sbc a,b			;bf9d	98 	. 
	cp a			;bf9e	bf 	. 
	ld d,01ah		;bf9f	16 1a 	. . 
	dec e			;bfa1	1d 	. 
	ld d,01ah		;bfa2	16 1a 	. . 
	dec e			;bfa4	1d 	. 
	ld d,01bh		;bfa5	16 1b 	. . 
	rra			;bfa7	1f 	. 
	ld d,01bh		;bfa8	16 1b 	. . 
	rra			;bfaa	1f 	. 
	dec d			;bfab	15 	. 
	add hl,de			;bfac	19 	. 
	rra			;bfad	1f 	. 
	dec d			;bfae	15 	. 
	ld a,(de)			;bfaf	1a 	. 
	dec e			;bfb0	1d 	. 
	dec d			;bfb1	15 	. 
	ld a,(de)			;bfb2	1a 	. 
	inc e			;bfb3	1c 	. 
	inc de			;bfb4	13 	. 
	add hl,de			;bfb5	19 	. 
	inc e			;bfb6	1c 	. 
	ld de,01a15h		;bfb7	11 15 1a 	. . . 
	dec e			;bfba	1d 	. 
	ld a,(de)			;bfbb	1a 	. 
	dec d			;bfbc	15 	. 
	ld a,(de)			;bfbd	1a 	. 
	dec d			;bfbe	15 	. 
	ld de,01115h		;bfbf	11 15 11 	. . . 
	dec d			;bfc2	15 	. 
	add a,h			;bfc3	84 	. 
	ld bc,0088ch		;bfc4	01 8c 08 	. . . 
	ld c,0eah		;bfc7	0e ea 	. . 
	add a,d			;bfc9	82 	. 
	ld a,(de)			;bfca	1a 	. 
	jp pe,01618h		;bfcb	ea 18 16 	. . . 
	ret pe			;bfce	e8 	. 
	inc de			;bfcf	13 	. 
	dec d			;bfd0	15 	. 
	dec d			;bfd1	15 	. 
	ld c,0eah		;bfd2	0e ea 	. . 
	adc a,h			;bfd4	8c 	. 
	ex af,af'			;bfd5	08 	. 
	ld c,08ah		;bfd6	0e 8a 	. . 
	add a,d			;bfd8	82 	. 
	ld bc,00104h		;bfd9	01 04 01 	. . . 
	rrca			;bfdc	0f 	. 
	nop			;bfdd	00 	. 
	ld bc,0e202h		;bfde	01 02 e2 	. . . 
	cp a			;bfe1	bf 	. 
	adc a,h			;bfe2	8c 	. 
	rst 38h			;bfe3	ff 	. 
	add a,a			;bfe4	87 	. 
	inc b			;bfe5	04 	. 
	ld (hl),0e0h		;bfe6	36 e0 	6 . 
	ld a,(0e681h)		;bfe8	3a 81 e6 	: . . 
	cp a			;bfeb	bf 	. 
	add a,d			;bfec	82 	. 
	ld (bc),a			;bfed	02 	. 
	inc bc			;bfee	03 	. 
	nop			;bfef	00 	. 
	inc bc			;bff0	03 	. 
	ld b,c			;bff1	41 	A 
	rrca			;bff2	0f 	. 
	nop			;bff3	00 	. 
	ld bc,0f801h		;bff4	01 01 f8 	. . . 
	cp a			;bff7	bf 	. 
	adc a,h			;bff8	8c 	. 
	ret nz			;bff9	c0 	. 
	ld a,(039e1h)		;bffa	3a e1 39 	: . 9 
	ld a,(082e5h)		;bffd	3a e5 82 	: . . 
