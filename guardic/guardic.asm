; z80dasm 1.1.3
; command line: z80dasm -lag 0x4000 Guardic (1986)(Compile)(Jp-En).rom

	org	04000h

	ld b,c			;4000
l4001h:
	ld b,d			;4001
	ld de,l4940h		;4002
	ld b,c			;4005
	jr c,$+56		;4006
	ld sp,04320h		;4008
	ld c,a			;400b
	ld c,l			;400c
	ld d,b			;400d
	ld c,c			;400e
l400fh:
	ld c,h			;400f
	ld b,l			;4010
l4011h:
	di			;4011
	ld sp,0f380h		;4012
	im 1		;4015
	ld a,0c3h		;4017
	ld (0fd9ah),a		;4019
	ld hl,l6beah		;401c
	ld (0fd9bh),hl		;401f
	call 00138h		;4022
	and 0cfh		;4025
	ld c,a			;4027
	add a,a			;4028
	add a,a			;4029
	and 030h		;402a
	or c			;402c
	call 0013bh		;402d
	call sub_41d6h		;4030
	call sub_412fh		;4033
	call sub_4187h		;4036
	call sub_a05fh		;4039
	call sub_441fh		;403c
	call sub_5b98h		;403f
	call 0013eh		;4042
	call sub_40c1h		;4045
	call sub_560fh		;4048
l404bh:
	call 041cah		;404b
	call 0523ah		;404e
	call 041cah		;4051
	call sub_412fh		;4054
	call sub_448ah		;4057
	ld a,001h		;405a
	ld (0d000h),a		;405c
	ld (0d01ch),a		;405f
	call sub_4512h		;4062
	ld a,(0e04bh)		;4065
	or a			;4068
	jp z,l5e1bh		;4069
	call sub_466bh		;406c
	ld a,001h		;406f
	call sub_a07bh		;4071
	call sub_45e9h		;4074
	call sub_636ah		;4077
l407ah:
	ld a,(0e04dh)		;407a
	or a			;407d
	jr z,l408fh		;407e
	ld a,01bh		;4080
	ld (0d080h),a		;4082
	ld a,010h		;4085
	ld (0e01bh),a		;4087
	ld a,001h		;408a
	ld (0e00dh),a		;408c
l408fh:
	call sub_40b3h		;408f
	call sub_6a6bh		;4092
	call sub_4df6h		;4095
	call sub_6f90h		;4098
	call sub_b982h		;409b
	call sub_4dbbh		;409e
	call sub_4c75h		;40a1
	call sub_5f24h		;40a4
	call sub_604dh		;40a7
	ld a,(l60eeh)		;40aa
	cp 022h		;40ad
	ret nz			;40af
	jp l408fh		;40b0
sub_40b3h:
	ld a,(0e002h)		;40b3
	cp 001h		;40b6
	jr c,sub_40b3h		;40b8
	xor a			;40ba
	ld (0e002h),a		;40bb
	jp l518bh		;40be
sub_40c1h:
	call 041cah		;40c1
	xor a			;40c4
	ld (0e069h),a		;40c5
	call sub_a032h		;40c8
	call 0013eh		;40cb
	ld hl,l41c2h		;40ce
	ld c,000h		;40d1
	ld b,008h		;40d3
l40d5h:
	push bc			;40d5
	ld b,(hl)			;40d6
	call 00047h		;40d7
	pop bc			;40da
	inc c			;40db
	inc hl			;40dc
	djnz l40d5h		;40dd
	ld hl,l8bf0h		;40df
	ld de,00000h		;40e2
	call sub_414bh		;40e5
	ld hl,00200h		;40e8
	ld de,00300h		;40eb
	ld bc,000d8h		;40ee
	call sub_413bh		;40f1
	ld de,02000h		;40f4
	ld hl,09133h		;40f7
	call sub_414bh		;40fa
	call sub_42feh		;40fd
	ld hl,00000h		;4100
	ld de,00800h		;4103
	ld bc,01000h		;4106
	call sub_413bh		;4109
	ld hl,02000h		;410c
	ld de,02800h		;410f
	ld bc,01000h		;4112
	call sub_413bh		;4115
	ld hl,093c9h		;4118
	ld de,01800h		;411b
	ld bc,00800h		;411e
	call sub_4299h		;4121
	ld hl,03b00h		;4124
	ld bc,00080h		;4127
	ld a,000h		;412a
	call 00056h		;412c
sub_412fh:
	ld hl,03800h		;412f
	ld bc,00300h		;4132
	ld a,020h		;4135
	call 00056h		;4137
	ret			;413a
sub_413bh:
	call 0004ah		;413b
	ex de,hl			;413e
	call 0004dh		;413f
	ex de,hl			;4142
	inc hl			;4143
	inc de			;4144
	dec bc			;4145
	ld a,b			;4146
	or c			;4147
	jr nz,sub_413bh		;4148
	ret			;414a
sub_414bh:
	xor a			;414b
	ld (0e009h),a		;414c
	ld a,(0e009h)		;414f
	ld c,a			;4152
l4153h:
	ld a,c			;4153
	or a			;4154
	jr nz,l4162h		;4155
l4157h:
	ld a,(hl)			;4157
	inc hl			;4158
	cp 011h		;4159
	jr z,l4171h		;415b
	call sub_417bh		;415d
	jr l4157h		;4160
l4162h:
	ld a,(hl)			;4162
	inc hl			;4163
	cp 011h		;4164
	jr z,l4171h		;4166
	ld b,(hl)			;4168
	inc hl			;4169
l416ah:
	call sub_417bh		;416a
	djnz l416ah		;416d
	jr l4162h		;416f
l4171h:
	ld a,c			;4171
	xor 0ffh		;4172
	ld c,a			;4174
	ld a,(hl)			;4175
	cp 011h		;4176
	jr nz,l4153h		;4178
	ret			;417a
sub_417bh:
	push hl			;417b
	push de			;417c
	push bc			;417d
	ex de,hl			;417e
	call 0004dh		;417f
	pop bc			;4182
	pop de			;4183
	pop hl			;4184
	inc de			;4185
	ret			;4186
sub_4187h:
	ld hl,0d000h		;4187
	ld b,020h		;418a
l418ch:
	ld a,01eh		;418c
	ld (hl),000h		;418e
	inc hl			;4190
	ld (hl),0f0h		;4191
l4193h:
	inc hl			;4193
	ld (hl),000h		;4194
	dec a			;4196
	jr nz,l4193h		;4197
	inc hl			;4199
	djnz l418ch		;419a
	xor a			;419c
	ld (0e01bh),a		;419d
	ret			;41a0
sub_41a1h:
	ld hl,0d000h		;41a1
	ld b,004h		;41a4
	call l418ch		;41a6
	ld hl,0d0e0h		;41a9
	ld b,019h		;41ac
	jr l418ch		;41ae
sub_41b0h:
	xor a			;41b0
	ld (0e01eh),a		;41b1
	call 041cah		;41b4
	ld a,0d0h		;41b7
	ld hl,03b00h		;41b9
	call 0004dh		;41bc
	jp l41d0h		;41bf
l41c2h:
	ld (bc),a			;41c2
	add a,d			;41c3
	ld c,0ffh		;41c4
	inc bc			;41c6
	halt			;41c7
	inc bc			;41c8
	ld bc,00101h		;41c9
	jp nz,l47c3h		;41cc
	nop			;41cf
l41d0h:
	ld bc,0e201h		;41d0
	jp 00047h		;41d3
sub_41d6h:
	ld bc,08001h		;41d6
	jp 00047h		;41d9
sub_41dch:
	call 041cah		;41dc
	ld a,00fh		;41df
	ld e,08fh		;41e1
	call 00093h		;41e3
	ld a,00eh		;41e6
	call 00096h		;41e8
	ld hl,0e000h		;41eb
	ld (hl),a			;41ee
	ld a,00fh		;41ef
	ld e,0cfh		;41f1
	call 00093h		;41f3
	ld a,00eh		;41f6
	call 00096h		;41f8
	and (hl)			;41fb
	ld (hl),a			;41fc
	bit 5,a		;41fd
	jr nz,l4203h		;41ff
	res 4,(hl)		;4201
l4203h:
	ld a,008h		;4203
	call 00141h		;4205
	bit 0,a		;4208
	jr nz,l420eh		;420a
	res 4,(hl)		;420c
l420eh:
	bit 5,a		;420e
	jr nz,l4214h		;4210
	res 0,(hl)		;4212
l4214h:
	bit 6,a		;4214
	jr nz,l421ah		;4216
	res 1,(hl)		;4218
l421ah:
	bit 4,a		;421a
	jr nz,l4220h		;421c
	res 2,(hl)		;421e
l4220h:
	bit 7,a		;4220
	jr nz,l4226h		;4222
	res 3,(hl)		;4224
l4226h:
	ld c,(hl)			;4226
	ld a,004h		;4227
	bit 0,c		;4229
	jr nz,l422fh		;422b
	add a,001h		;422d
l422fh:
	bit 1,c		;422f
	jr nz,l4235h		;4231
	sub 001h		;4233
l4235h:
	bit 2,c		;4235
	jr nz,l423bh		;4237
	sub 003h		;4239
l423bh:
	bit 3,c		;423b
	jr nz,l4241h		;423d
sub_423fh:
	add a,003h		;423f
l4241h:
	ld (0e001h),a		;4241
	jp l41d0h		;4244
	add a,a			;4247
	ld e,a			;4248
	ld d,000h		;4249
	add hl,de			;424b
	ld e,(hl)			;424c
	inc hl			;424d
	ld d,(hl)			;424e
	ex de,hl			;424f
	jp (hl)			;4250
sub_4251h:
	ld c,0ffh		;4251
	ld b,00ah		;4253
l4255h:
	sub b			;4255
	inc c			;4256
	jr nc,l4255h		;4257
	add a,b			;4259
	ld b,a			;425a
	ld a,c			;425b
	or a			;425c
	call z,sub_426ch		;425d
	add a,030h		;4260
	call 0004dh		;4262
	inc hl			;4265
	ld a,030h		;4266
	add a,b			;4268
	jp 0004dh		;4269
sub_426ch:
	ld a,0f0h		;426c
	ret			;426e
	call 00053h		;426f
	ld a,(00007h)		;4272
	ld c,a			;4275
l4276h:
	ld a,020h		;4276
	nop			;4278
	out (c),a		;4279
	djnz l4276h		;427b
	ret			;427d
	ret			;427e
sub_427fh:
	call sub_4287h		;427f
	and 07fh		;4282
	add a,024h		;4284
	ret			;4286
sub_4287h:
	ld a,r		;4287
	ld hl,(0e007h)		;4289
	add a,h			;428c
	ld h,a			;428d
	add a,l			;428e
	ld l,h			;428f
	ld h,a			;4290
	rlc h		;4291
	rrc l		;4293
	ld (0e007h),hl		;4295
	ret			;4298
sub_4299h:
	ex de,hl			;4299
	call 00053h		;429a
	ex de,hl			;429d
	ld e,c			;429e
	ld d,b			;429f
	ld a,(00007h)		;42a0
	ld c,a			;42a3
l42a4h:
	outi		;42a4
	dec de			;42a6
	ld a,d			;42a7
	or e			;42a8
	jp nz,l42a4h		;42a9
	ret			;42ac
sub_42adh:
	call 00050h		;42ad
	ex de,hl			;42b0
	ld e,c			;42b1
	ld d,b			;42b2
l42b3h:
	ld a,(00006h)		;42b3
	ld c,a			;42b6
l42b7h:
	ini		;42b7
	dec de			;42b9
	ld a,d			;42ba
	or e			;42bb
	jp nz,l42b7h		;42bc
	ret			;42bf
sub_42c0h:
	call 041cah		;42c0
l42c3h:
	ld e,(hl)			;42c3
	inc hl			;42c4
	ld d,(hl)			;42c5
	inc hl			;42c6
	ld a,d			;42c7
	and e			;42c8
	cp 0ffh		;42c9
	jp z,l41d0h		;42cb
	ex de,hl			;42ce
	call 00053h		;42cf
	ld a,(00007h)		;42d2
	ld c,a			;42d5
l42d6h:
	ld a,(de)			;42d6
	cp 0ffh		;42d7
	jr z,l42e0h		;42d9
	out (c),a		;42db
	inc de			;42dd
	jr l42d6h		;42de
l42e0h:
	ex de,hl			;42e0
	inc hl			;42e1
	jr l42c3h		;42e2
sub_42e4h:
	call 041cah		;42e4
	ld e,(hl)			;42e7
	inc hl			;42e8
	ld d,(hl)			;42e9
	inc hl			;42ea
	ex de,hl			;42eb
	call 00053h		;42ec
	ld a,(00007h)		;42ef
	ld c,a			;42f2
l42f3h:
	ld a,(de)			;42f3
	cp 0ffh		;42f4
	jp z,l41d0h		;42f6
	out (c),a		;42f9
	inc de			;42fb
	jr l42f3h		;42fc
sub_42feh:
	ld de,005c0h		;42fe
	ld hl,l4377h		;4301
	ld b,005h		;4304
	call sub_4350h		;4306
	ld de,00780h		;4309
	ld hl,l439fh		;430c
	ld b,002h		;430f
	call sub_4350h		;4311
	ld de,025c0h		;4314
	ld hl,l43e7h		;4317
	ld b,005h		;431a
	call sub_4350h		;431c
	ld de,02780h		;431f
	ld hl,l440fh		;4322
	ld b,002h		;4325
	call sub_4350h		;4327
	ld hl,l4370h		;432a
	ld b,007h		;432d
l432fh:
	ld a,(hl)			;432f
	inc hl			;4330
	push hl			;4331
	push bc			;4332
	ld l,a			;4333
	ld h,000h		;4334
	add hl,hl			;4336
	add hl,hl			;4337
	add hl,hl			;4338
	ld de,l43afh		;4339
	ld b,038h		;433c
l433eh:
	call 0004ah		;433e
	ex de,hl			;4341
	and (hl)			;4342
	ex de,hl			;4343
	call 0004dh		;4344
	inc hl			;4347
	inc de			;4348
	djnz l433eh		;4349
	pop bc			;434b
	pop hl			;434c
	djnz l432fh		;434d
	ret			;434f
sub_4350h:
	push bc			;4350
	exx			;4351
	ld b,008h		;4352
l4354h:
	exx			;4354
	push hl			;4355
	push de			;4356
	ld bc,00008h		;4357
	call sub_4299h		;435a
	pop hl			;435d
	ld bc,00008h		;435e
	add hl,bc			;4361
	ex de,hl			;4362
	pop hl			;4363
	exx			;4364
	djnz l4354h		;4365
	exx			;4367
	ld bc,00008h		;4368
	add hl,bc			;436b
	pop bc			;436c
	djnz sub_4350h		;436d
	ret			;436f
l4370h:
	cp c			;4370
	pop bc			;4371
	ret			;4372
	pop de			;4373
	exx			;4374
	pop af			;4375
	ld sp,hl			;4376
l4377h:
	add a,c			;4377
	ld b,d			;4378
	inc h			;4379
	jr l4394h		;437a
	inc h			;437c
	ld b,d			;437d
	add a,c			;437e
	rst 38h			;437f
	ld b,c			;4380
	ld a,l			;4381
	ld a,l			;4382
	ld a,l			;4383
	ld a,l			;4384
	ld a,a			;4385
	add a,c			;4386
	ld a,a			;4387
	ld a,a			;4388
	ld a,a			;4389
	ld a,a			;438a
	ld a,a			;438b
	ld a,a			;438c
	ld a,a			;438d
	nop			;438e
	rst 38h			;438f
	rst 38h			;4390
	rst 38h			;4391
	rst 38h			;4392
	rst 38h			;4393
l4394h:
	rst 38h			;4394
	rst 38h			;4395
	rst 38h			;4396
	ei			;4397
	cp a			;4398
	rst 38h			;4399
	ei			;439a
	ld a,a			;439b
	cp 0ffh		;439c
	rst 30h			;439e
l439fh:
	ex af,af'			;439f
	ex af,af'			;43a0
	ex af,af'			;43a1
	ex af,af'			;43a2
	rst 38h			;43a3
	ex af,af'			;43a4
	ex af,af'			;43a5
	ex af,af'			;43a6
	nop			;43a7
	rst 38h			;43a8
	rst 38h			;43a9
	rst 38h			;43aa
	rst 38h			;43ab
	rst 38h			;43ac
	rst 38h			;43ad
	rst 38h			;43ae
l43afh:
	rst 38h			;43af
	rst 38h			;43b0
	cp 0feh		;43b1
	call m,0f8fch		;43b3
	ret m			;43b6
	inc bc			;43b7
	rrca			;43b8
	ccf			;43b9
	rst 38h			;43ba
l43bbh:
	rst 38h			;43bb
	rst 38h			;43bc
	rst 38h			;43bd
	rst 38h			;43be
	inc bc			;43bf
	rrca			;43c0
	ld a,0feh		;43c1
l43c3h:
	call m,0f8fch		;43c3
	ret m			;43c6
	ret p			;43c7
	ret p			;43c8
	ret po			;43c9
	ret po			;43ca
	jp 0ffcfh		;43cb
	rst 38h			;43ce
	ret p			;43cf
	ret p			;43d0
	ret po			;43d1
	ret po			;43d2
	ret nz			;43d3
	call z,0f8f8h		;43d4
	nop			;43d7
	nop			;43d8
sub_43d9h:
	jr nz,l43bbh		;43d9
	jp 0ffcfh		;43db
	rst 38h			;43de
	nop			;43df
	nop			;43e0
	jr nz,l43c3h		;43e1
	ret nz			;43e3
	call z,0f8f8h		;43e4
l43e7h:
	ld b,c			;43e7
	ld b,c			;43e8
	ld b,c			;43e9
	ld b,c			;43ea
	ld b,c			;43eb
	ld b,c			;43ec
	ld b,c			;43ed
	ld b,c			;43ee
	pop af			;43ef
	pop de			;43f0
	pop de			;43f1
	pop de			;43f2
	pop de			;43f3
	pop de			;43f4
	pop de			;43f5
	pop de			;43f6
	pop af			;43f7
	and c			;43f8
	and c			;43f9
	and c			;43fa
	or c			;43fb
	and c			;43fc
	or c			;43fd
	ld bc,031c1h		;43fe
	ld hl,0c131h		;4401
	ld hl,0c121h		;4404
	sub c			;4407
	add a,c			;4408
	sub c			;4409
	add a,c			;440a
	ld h,c			;440b
	ld h,c			;440c
	add a,c			;440d
	ld h,c			;440e
l440fh:
	pop af			;440f
	pop af			;4410
	pop af			;4411
	pop af			;4412
	pop af			;4413
	pop af			;4414
	pop af			;4415
	pop af			;4416
	djnz sub_448ah		;4417
	ld d,c			;4419
	ld d,c			;441a
	ld b,c			;441b
	ld b,c			;441c
	ld b,c			;441d
	ld d,c			;441e
sub_441fh:
	ld hl,0e000h		;441f
	ld de,0e001h		;4422
	ld bc,001ffh		;4425
	ld (hl),000h		;4428
	ldir		;442a
	ld de,0e140h		;442c
	ld hl,l4442h		;442f
	ld bc,00048h		;4432
	ldir		;4435
	ld a,076h		;4437
	ld (03333h),a		;4439
	ret			;443c
	ld d,b			;443d
	ld b,c			;443e
	ld b,e			;443f
	ld c,b			;4440
	ld c,h			;4441
l4442h:
	nop			;4442
	nop			;4443
	ld bc,04150h		;4444
	ld b,e			;4447
	ld d,b			;4448
	ld b,c			;4449
	ld b,e			;444a
	nop			;444b
	sub b			;444c
	nop			;444d
sub_444eh:
	ld c,d			;444e
	ld b,l			;444f
	ld c,l			;4450
	ld c,c			;4451
	ld c,(hl)			;4452
	ld c,c			;4453
	nop			;4454
	add a,b			;4455
	nop			;4456
	ld c,l			;4457
	ld e,c			;4458
	ld b,c			;4459
	ld c,b			;445a
	ld c,l			;445b
	ld c,a			;445c
	nop			;445d
	ld (hl),b			;445e
	nop			;445f
	ld e,c			;4460
	ld c,a			;4461
	ld d,d			;4462
	ld c,c			;4463
	ld c,e			;4464
	ld c,c			;4465
	nop			;4466
	ld h,b			;4467
	nop			;4468
	ld d,a			;4469
	ld b,c			;446a
	ld c,a			;446b
	ld c,l			;446c
	ld b,c			;446d
	ld c,a			;446e
	nop			;446f
	ld d,b			;4470
	nop			;4471
	ld c,l			;4472
	ld c,a			;4473
	ld c,a			;4474
	ld c,a			;4475
	ld c,a			;4476
	ld c,a			;4477
	nop			;4478
	ld b,b			;4479
	nop			;447a
	ld c,h			;447b
	ld d,l			;447c
	ld c,(hl)			;447d
	ld c,h			;447e
	ld d,l			;447f
	ld c,(hl)			;4480
	nop			;4481
	jr nc,l4484h		;4482
l4484h:
	ld c,d			;4484
	ld b,c			;4485
	ld c,(hl)			;4486
	ld c,d			;4487
	ld b,c			;4488
	ld c,(hl)			;4489
sub_448ah:
	ld a,0ffh		;448a
	ld (0e071h),a		;448c
	xor a			;448f
	ld (0e06ch),a		;4490
	ld (0e065h),a		;4493
	ld (0e00bh),a		;4496
	ld (0e00fh),a		;4499
	ld (0e030h),a		;449c
	ld (0e05fh),a		;449f
	ld (0e063h),a		;44a2
	ld (0e064h),a		;44a5
	ld (0e03fh),a		;44a8
	ld hl,0e010h		;44ab
	ld b,003h		;44ae
l44b0h:
	ld (hl),a			;44b0
	inc hl			;44b1
	djnz l44b0h		;44b2
	ld (0e016h),a		;44b4
	ld (0e018h),a		;44b7
	ld (0e015h),a		;44ba
	inc a			;44bd
	ld (0d01ch),a		;44be
	inc a			;44c1
	ld (0e00ah),a		;44c2
	inc a			;44c5
	ld (0e027h),a		;44c6
	ld a,010h		;44c9
	ld (0e017h),a		;44cb
	ld hl,0001eh		;44ce
	ld (0e019h),hl		;44d1
	ld hl,0000fh		;44d4
	ld (0e036h),hl		;44d7	Set starting location.
	ld hl,0e700h		;44da
	ld de,0e701h		;44dd
	ld bc,00072h		;44e0
	ld (hl),000h		;44e3
	ldir		;44e5
	jp sub_4187h		;44e7
l44eah:
	ld hl,l73b8h		;44ea
	ld de,0de00h		;44ed
	ld bc,00100h		;44f0
	ldir		;44f3
	ret			;44f5
sub_44f6h:
	ld hl,l73b8h		;44f6
	ld de,0de00h		;44f9
	ld bc,00080h		;44fc
	ldir		;44ff
	ld a,002h		;4501
	ld (de),a			;4503
	inc de			;4504
	ld a,00bh		;4505
	ld (de),a			;4507
	inc de			;4508
	ld hl,0de80h		;4509
	ld bc,0003eh		;450c
	ldir		;450f
	ret			;4511
sub_4512h:
	call 041cah		;4512
	ld hl,039f8h		;4515
	ld a,(00007h)		;4518
	ld c,a			;451b
	ld b,003h		;451c
	call sub_4ac1h		;451e
	ld hl,038b8h		;4521
	ld b,003h		;4524
	call sub_4ac1h		;4526
	ld hl,l4563h		;4529
	call sub_42c0h		;452c
	call 041cah		;452f
	call sub_4ff8h		;4532
	call sub_4f7bh		;4535
	call sub_50fbh		;4538
	call sub_5107h		;453b
	call sub_50b7h		;453e
	call sub_509bh		;4541
	call sub_50a7h		;4544
	call sub_513fh		;4547
	call sub_5209h		;454a
	call 041cah		;454d
	ld a,030h		;4550
l4552h:
	ld hl,038feh		;4552
	call 0004dh		;4555
	ld a,030h		;4558
	ld hl,0395eh		;455a
	call 0004dh		;455d
	jp l41d0h		;4560
l4563h:
	jr l459dh		;4563
	and b			;4565
	and c			;4566
	jr nz,$+34		;4567
	jr nz,$+34		;4569
	and b			;456b
	and c			;456c
	rst 38h			;456d
	jr c,$+58		;456e
	and d			;4570
	and e			;4571
	and h			;4572
	and l			;4573
	and (hl)			;4574
l4575h:
	and a			;4575
	xor b			;4576
	xor c			;4577
	rst 38h			;4578
	ld e,b			;4579
	jr c,$+15		;457a
	rrca			;457c
	jr l4598h		;457d
	ld a,(de)			;457f
	dec de			;4580
	inc a			;4581
	dec a			;4582
	rst 38h			;4583
	ld a,b			;4584
	jr c,l45c5h		;4585
	ccf			;4587
	jr nz,l45aah		;4588
	jr nz,l45ach		;458a
	ld a,03fh		;458c
	rst 38h			;458e
	jr c,l45cbh		;458f
	ret po			;4591
	jp pe,0e0ebh		;4592
	ret po			;4595
	ret po			;4596
	ret po			;4597
l4598h:
	ret po			;4598
	rst 38h			;4599
	jr l45d6h		;459a
	ret po			;459c
l459dh:
	ret pe			;459d
	jp (hl)			;459e
	ret po			;459f
	ret po			;45a0
	ret po			;45a1
	ret po			;45a2
	ret po			;45a3
	rst 38h			;45a4
l45a5h:
	ld a,c			;45a5
	ld a,(l4f50h)		;45a6
	ld d,a			;45a9
l45aah:
	ld b,l			;45aa
	ld d,d			;45ab
l45ach:
	rst 38h			;45ac
	sbc a,b			;45ad
	add hl,sp			;45ae
	jp po,0e4e3h		;45af
	ret po			;45b2
	ret po			;45b3
	ret po			;45b4
	ret po			;45b5
	ret po			;45b6
	rst 38h			;45b7
	cp b			;45b8
	add hl,sp			;45b9
	push hl			;45ba
	and 0e7h		;45bb
	ret po			;45bd
	ret po			;45be
	ret po			;45bf
	ret po			;45c0
	ret po			;45c1
	rst 38h			;45c2
	ret c			;45c3
	add hl,sp			;45c4
l45c5h:
	pop hl			;45c5
	defb 0edh;next byte illegal after ed		;45c6
	xor 0e0h		;45c7
	ret po			;45c9
	ret po			;45ca
l45cbh:
	ret po			;45cb
	ret po			;45cc
	rst 38h			;45cd
	ld a,(05339h)		;45ce
	ld b,e			;45d1
	ld c,a			;45d2
	ld d,d			;45d3
	ld b,l			;45d4
	rst 38h			;45d5
l45d6h:
	call c,sub_5438h		;45d6
	ld c,a			;45d9
	ld d,b			;45da
	rst 38h			;45db
	rst 38h			;45dc
	rst 38h			;45dd
sub_45deh:
	ld hl,0d8c0h		;45de
	ld de,0d660h		;45e1
	ld bc,00240h		;45e4
	ldir		;45e7
sub_45e9h:
	ld de,0d660h		;45e9
	call 041cah		;45ec
	ld a,(00007h)		;45ef
	ld c,a			;45f2
	ld hl,03800h		;45f3
	ld b,018h		;45f6
l45f8h:
	call 00053h		;45f8
	exx			;45fb
	ld b,018h		;45fc
l45feh:
	exx			;45fe
	ld a,(de)			;45ff
	inc de			;4600
	out (c),a		;4601
	ex (sp),hl			;4603
	ex (sp),hl			;4604
	exx			;4605
	djnz l45feh		;4606
	exx			;4608
	push de			;4609
	ld de,00020h		;460a
	add hl,de			;460d
	pop de			;460e
	djnz l45f8h		;460f
	jp l41d0h		;4611
l4614h:
	ret m			;4614
	ret p			;4615
	ret c			;4616
	ret nc			;4617
	ret z			;4618
	ret nz			;4619
	cp b			;461a
sub_461bh:
	call sub_4f23h		;461b
	ld a,(0e00bh)		;461e
	rra			;4621
	rra			;4622
	rra			;4623
	rra			;4624
	and 00fh		;4625
	ld l,a			;4627
	ex af,af'			;4628
	ld h,000h		;4629
	ld de,l4614h		;462b
	add hl,de			;462e
	ld a,(hl)			;462f
	ld (0e068h),a		;4630
	ld hl,0d8c0h		;4633
	ld de,0d8c1h		;4636
	ld bc,0023fh		;4639
	ld (hl),a			;463c
	ldir		;463d
	ex af,af'			;463f
	add a,a			;4640
	add a,0aah		;4641
	ld hl,0d90bh		;4643
	ld (hl),a			;4646
	ld de,0d90ch		;4647
	ld bc,00011h		;464a
	ldir		;464d
	inc a			;464f
	ld hl,0dabbh		;4650
	ld (hl),a			;4653
	ld de,0dabch		;4654
	ld bc,00011h		;4657
	ldir		;465a
	ld hl,l48f8h		;465c
	call sub_4c2dh		;465f
	call sub_509bh		;4662
	call sub_ba09h		;4665
	jp l6b0fh		;4668
sub_466bh:
	ld hl,0d660h		;466b
	ld de,0d661h		;466e
	ld bc,00060h		;4671
	ld (hl),020h		;4674
	ldir		;4676
	ld bc,000d8h		;4678
	ld (hl),000h		;467b
	ldir		;467d
	ld bc,00107h		;467f
	ld (hl),08ah		;4682
	ldir		;4684
	ld hl,l493bh		;4686
	call sub_4c2dh		;4689
	ld hl,l48e2h		;468c
	call sub_48d6h		;468f
	ld hl,0d743h		;4692
	ld b,003h		;4695
	ld a,023h		;4697
	call sub_48d0h		;4699
	ld hl,0d772h		;469c
	ld b,005h		;469f
	ld a,027h		;46a1
	call sub_48d0h		;46a3
	ld hl,0d781h		;46a6
	ld b,003h		;46a9
	ld a,05bh		;46ab
	call sub_48d0h		;46ad
	ld hl,0d796h		;46b0
	ld (hl),05eh		;46b3
	inc hl			;46b5
	ld (hl),05fh		;46b6
	ret			;46b8
sub_46b9h:
	ld hl,0d8c0h		;46b9
	ld de,0d8c1h		;46bc
	ld bc,0023fh		;46bf
	ld (hl),000h		;46c2
	ldir		;46c4
	ld hl,l4981h		;46c6
	call sub_4c2dh		;46c9
	ld hl,0d8c3h		;46cc
	ld a,002h		;46cf
	ld c,008h		;46d1
l46d3h:
	ld b,013h		;46d3
l46d5h:
	ld (hl),a			;46d5
	inc hl			;46d6
	djnz l46d5h		;46d7
l46d9h:
	ld de,00035h		;46d9
	add hl,de			;46dc
	dec c			;46dd
	jr nz,l46d3h		;46de
	ret			;46e0
sub_46e1h:
	ld hl,0d8c0h		;46e1
	ld de,0d8c1h		;46e4
	ld bc,0023fh		;46e7
	ld (hl),000h		;46ea
	ldir		;46ec
	ld hl,l49a4h		;46ee
	call sub_4c2dh		;46f1
	ld hl,0dab8h		;46f4
	ld a,07bh		;46f7
	ld b,003h		;46f9
	call sub_48d0h		;46fb
	ld hl,0dae8h		;46fe
	call sub_4725h		;4701
	ld hl,0dad0h		;4704
	call sub_4725h		;4707
	ld hl,0daceh		;470a
	ld (hl),07eh		;470d
	inc hl			;470f
	ld (hl),07fh		;4710
	ld hl,0dafeh		;4712
	ld (hl),00ah		;4715
	inc hl			;4717
	ld (hl),008h		;4718
	ld hl,0dae6h		;471a
	ld (hl),00ah		;471d
	inc hl			;471f
	ld (hl),008h		;4720
l4722h:
	jp l47e4h		;4722
sub_4725h:
	ld (hl),000h		;4725
	inc hl			;4727
	ld (hl),004h		;4728
	inc hl			;472a
	ld (hl),006h		;472b
	jp l647eh		;472d
	ld hl,0d8c0h		;4730
	ld de,0d8c1h		;4733
	ld bc,0023fh		;4736
	ld (hl),000h		;4739
	ldir		;473b
	ld hl,l49b0h		;473d
	call sub_4c2dh		;4740
	ld hl,0d8c0h		;4743
	ld (hl),020h		;4746
	inc hl			;4748
	ld (hl),05bh		;4749
	inc hl			;474b
	ld (hl),05ch		;474c
	ld hl,0d8d8h		;474e
	ld (hl),020h		;4751
	inc hl			;4753
	ld (hl),082h		;4754
	jp l647eh		;4756
	ld hl,0d8c0h		;4759
	ld de,0d8c1h		;475c
	ld bc,0023fh		;475f
	ld (hl),000h		;4762
	ldir		;4764
	ld hl,l49cah		;4766
	call sub_4c2dh		;4769
	ld hl,0d8d6h		;476c
	ld (hl),05eh		;476f
	inc hl			;4771
	ld (hl),05fh		;4772
	ld hl,0d8efh		;4774
	ld (hl),083h		;4777
	jp l647eh		;4779
	ld hl,l49e4h		;477c
	call sub_4c2dh		;477f
	ld hl,0d8f0h		;4782
	ld de,0d908h		;4785
	ld bc,001b0h		;4788
	ldir		;478b
	ret			;478d
	call sub_46e1h		;478e
	ld hl,l4a01h		;4791
	call sub_4c2dh		;4794
	ld hl,0d8efh		;4797
	ld (hl),01fh		;479a
	jp l47e4h		;479c
	call sub_46e1h		;479f
	ld hl,l4a11h		;47a2
	call sub_4c2dh		;47a5
	ld hl,0d8d9h		;47a8
	ld (hl),01dh		;47ab
	jp l47e4h		;47ad
	ld hl,0d8c0h		;47b0
	ld de,0d8c1h		;47b3
	ld (hl),000h		;47b6
	ld bc,0023fh		;47b8
	ldir		;47bb
	ld hl,l4a26h		;47bd
	call sub_4c2dh		;47c0
l47c3h:
	ld hl,0d8c0h		;47c3
	ld (hl),020h		;47c6
	inc hl			;47c8
	ld (hl),05bh		;47c9
	inc hl			;47cb
	ld (hl),05ch		;47cc
	ld hl,0d8d6h		;47ce
	ld (hl),05eh		;47d1
	inc hl			;47d3
	ld (hl),05fh		;47d4
	inc hl			;47d6
	ld (hl),020h		;47d7
	inc hl			;47d9
	ld (hl),082h		;47da
	ld hl,0d8efh		;47dc
	ld (hl),083h		;47df
	jp l647eh		;47e1
l47e4h:
	ld a,(0e038h)		;47e4
	or a			;47e7
	ret z			;47e8
	ld hl,l4a43h		;47e9
	call sub_4c2dh		;47ec
	ld hl,0dab9h		;47ef
	ld (hl),084h		;47f2
	ld hl,0dacfh		;47f4
	ld (hl),086h		;47f7
	ld hl,0dad1h		;47f9
	ld (hl),01dh		;47fc
	ld hl,0dae7h		;47fe
	ld (hl),01fh		;4801
	jp l647eh		;4803
	ld hl,0d8c0h		;4806
	ld de,0d8c1h		;4809
	ld (hl),000h		;480c
	ld bc,0023fh		;480e
	ldir		;4811
	ld hl,l4a54h		;4813
	call sub_4c2dh		;4816
	ld hl,0d8c0h		;4819
	ld (hl),020h		;481c
	inc hl			;481e
	ld (hl),05bh		;481f
	inc hl			;4821
	ld (hl),05ch		;4822
	ld hl,0d8d8h		;4824
	ld (hl),020h		;4827
	inc hl			;4829
	ld (hl),082h		;482a
	ld hl,0dab8h		;482c
	ld (hl),07bh		;482f
	inc hl			;4831
	ld (hl),07ch		;4832
	inc hl			;4834
	ld (hl),07dh		;4835
	ld hl,0dad0h		;4837
	call sub_4725h		;483a
	ld hl,0dae8h		;483d
	call sub_4725h		;4840
	jp l47e4h		;4843
	ld hl,0d8c0h		;4846
	ld de,0d8c1h		;4849
	ld (hl),000h		;484c
	ld bc,0023fh		;484e
	ldir		;4851
	ld hl,l4a64h		;4853
	call sub_4c2dh		;4856
	ld hl,0d8d6h		;4859
	ld (hl),05eh		;485c
	inc hl			;485e
	ld (hl),05fh		;485f
	ld hl,0d8efh		;4861
	ld (hl),083h		;4864
	ld hl,0daceh		;4866
	ld (hl),07eh		;4869
	inc hl			;486b
	ld (hl),07fh		;486c
	ld hl,0dae6h		;486e
	ld (hl),00ah		;4871
	inc hl			;4873
	ld (hl),008h		;4874
	ld hl,0dafeh		;4876
	ld (hl),00ah		;4879
	inc hl			;487b
	ld (hl),008h		;487c
	jp l47e4h		;487e
sub_4881h:
	ld de,0d90bh		;4881
	ld hl,l4ad9h		;4884
	ld a,016h		;4887
l4889h:
	ld bc,00013h		;4889
	ldir		;488c
	ex de,hl			;488e
	ld bc,00005h		;488f
	add hl,bc			;4892
	ex de,hl			;4893
	dec a			;4894
	jr nz,l4889h		;4895
	ld hl,l4a74h		;4897
	jp sub_4c2dh		;489a
sub_489dh:
	ld hl,02000h		;489d
	ld b,008h		;48a0
l48a2h:
	push bc			;48a2
	push hl			;48a3
	call sub_40b3h		;48a4
	call sub_6f90h		;48a7
	call 041cah		;48aa
	pop hl			;48ad
	push hl			;48ae
	ld b,003h		;48af
l48b1h:
	push bc			;48b1
	ld b,00bh		;48b2
l48b4h:
	push bc			;48b4
l48b5h:
	xor a			;48b5
	call 0004dh		;48b6
	ld bc,00008h		;48b9
	add hl,bc			;48bc
	pop bc			;48bd
	djnz l48b4h		;48be
	ld bc,007a8h		;48c0
	add hl,bc			;48c3
	pop bc			;48c4
	djnz l48b1h		;48c5
	pop hl			;48c7
	inc hl			;48c8
	call l41d0h		;48c9
	pop bc			;48cc
	djnz l48a2h		;48cd
	ret			;48cf
sub_48d0h:
	ld (hl),a			;48d0
	inc a			;48d1
	inc hl			;48d2
	djnz sub_48d0h		;48d3
	ret			;48d5
sub_48d6h:
	ld a,(hl)			;48d6
	cp 0ffh		;48d7
	ret z			;48d9
	inc hl			;48da
	ld e,(hl)			;48db
	inc hl			;48dc
	ld d,(hl)			;48dd
	inc hl			;48de
	ld (de),a			;48df
	jr sub_48d6h		;48e0
l48e2h:
	inc e			;48e2
	sub c			;48e3
	sub 01dh		;48e4
	xor c			;48e6
	sub 01eh		;48e7
	and a			;48e9
	sub 01fh		;48ea
	cp a			;48ec
	sub 08bh		;48ed
	sbc a,c			;48ef
	rst 10h			;48f0
	adc a,h			;48f1
	xor a			;48f2
	rst 10h			;48f3
l48f4h:
	ld h,05ch		;48f4
	rst 10h			;48f6
	rst 38h			;48f7
l48f8h:
	ret nz			;48f8
	ret c			;48f9
	ld (de),a			;48fa
	jr l48fdh		;48fb
l48fdh:
	pop bc			;48fd
	ret c			;48fe
	ld (00318h),a		;48ff
	inc b			;4902
	inc b			;4903
	jp nz,032d8h		;4904
	jr $+7		;4907
	ld b,006h		;4909
	sub 0d8h		;490b
	ld (00918h),a		;490d
	ld a,(bc)			;4910
	ld a,(bc)			;4911
	rst 10h			;4912
	ret c			;4913
	ld (00718h),a		;4914
	ex af,af'			;4917
	ex af,af'			;4918
	jp 010d8h		;4919
	inc de			;491c
	ld (bc),a			;491d
	in a,(0d8h)		;491e
	jr nz,l4935h		;4920
	dec bc			;4922
	inc c			;4923
	di			;4924
	ret c			;4925
	djnz l493bh		;4926
	jr nz,l48fdh		;4928
	jp c,01320h		;492a
	djnz l4940h		;492d
	ex de,hl			;492f
	jp c,01310h		;4930
	nop			;4933
	dec e			;4934
l4935h:
	exx			;4935
	ld (de),a			;4936
	inc de			;4937
	jr nz,$+1		;4938
	rst 38h			;493a
l493bh:
	ld h,b			;493b
	sub 010h		;493c
	jr l494eh		;493e
l4940h:
	ld a,b			;4940
	sub 010h		;4941
	jr l4974h		;4943
	sub b			;4945
	sub 012h		;4946
	ld c,000h		;4948
	pop bc			;494a
	sub 032h		;494b
	ex af,af'			;494d
l494eh:
	inc b			;494e
	inc b			;494f
	inc bc			;4950
	jp nz,032d6h		;4951
	ex af,af'			;4954
	ld b,006h		;4955
	dec b			;4957
	jp 010d6h		;4958
	inc de			;495b
	adc a,l			;495c
	di			;495d
	sub 010h		;495e
	inc de			;4960
	adc a,l			;4961
	inc hl			;4962
	rst 10h			;4963
	djnz $+21		;4964
	adc a,l			;4966
	ld d,e			;4967
	rst 10h			;4968
	djnz l497eh		;4969
	adc a,l			;496b
	add a,e			;496c
	rst 10h			;496d
	djnz l4983h		;496e
	ld e,l			;4970
	rst 10h			;4971
	sub 032h		;4972
l4974h:
	ex af,af'			;4974
	ex af,af'			;4975
	ex af,af'			;4976
	rlca			;4977
	sub 0d6h		;4978
	ld (00a08h),a		;497a
	ld a,(bc)			;497d
l497eh:
	add hl,bc			;497e
	rst 38h			;497f
	rst 38h			;4980
l4981h:
	ret nz			;4981
	ret c			;4982
l4983h:
	ld (de),a			;4983
	jr l4986h		;4984
l4986h:
	pop bc			;4986
	ret c			;4987
	ld (00318h),a		;4988
	inc b			;498b
	inc b			;498c
	jp nz,032d8h		;498d
	jr $+7		;4990
	ld b,006h		;4992
	sub 0d8h		;4994
	ld (00918h),a		;4996
	ld a,(bc)			;4999
	ld a,(bc)			;499a
	rst 10h			;499b
	ret c			;499c
	ld (00718h),a		;499d
	ex af,af'			;49a0
	ex af,af'			;49a1
	rst 38h			;49a2
	rst 38h			;49a3
l49a4h:
	ret nz			;49a4
	ret c			;49a5
	djnz $+26		;49a6
	adc a,(hl)			;49a8
	ret c			;49a9
	ret c			;49aa
	djnz $+26		;49ab
	jr nz,$+1		;49ad
	rst 38h			;49af
l49b0h:
	sub 0d8h		;49b0
	ld (00a18h),a		;49b2
	ld a,(bc)			;49b5
	add hl,bc			;49b6
	rst 10h			;49b7
	ret c			;49b8
	ld (00818h),a		;49b9
	ex af,af'			;49bc
	rlca			;49bd
	cp b			;49be
	jp c,01810h		;49bf
	ld a,e			;49c2
	ret nc			;49c3
	jp c,03010h		;49c4
	call pe,0ffffh		;49c7
l49cah:
	pop bc			;49ca
	ret c			;49cb
	ld (00418h),a		;49cc
	inc b			;49cf
	inc bc			;49d0
	jp nz,032d8h		;49d1
	jr l49dch		;49d4
	ld b,005h		;49d6
	cp b			;49d8
	jp c,01810h		;49d9
l49dch:
	ld a,e			;49dc
	ret nc			;49dd
	jp c,03010h		;49de
	call pe,0ffffh		;49e1
l49e4h:
	ret nz			;49e4
	ret c			;49e5
	djnz $+26		;49e6
	adc a,(hl)			;49e8
	ret c			;49e9
	ret c			;49ea
	djnz $+26		;49eb
	jr nz,$-14		;49ed
	ret c			;49ef
	jr nc,l4a0ah		;49f0
	nop			;49f2
	add a,b			;49f3
	add a,c			;49f4
	cp b			;49f5
	jp c,01810h		;49f6
	ld a,e			;49f9
	ret nc			;49fa
	jp c,03010h		;49fb
	call pe,0ffffh		;49fe
l4a01h:
	rlca			;4a01
	exx			;4a02
	ld (00816h),a		;4a03
	rlca			;4a06
	ex af,af'			;4a07
	ld b,0d9h		;4a08
l4a0ah:
	ld (00a16h),a		;4a0a
	add hl,bc			;4a0d
	ld a,(bc)			;4a0e
	rst 38h			;4a0f
	rst 38h			;4a10
l4a11h:
	ret c			;4a11
	ret c			;4a12
	ld (de),a			;4a13
	jr l4a16h		;4a14
l4a16h:
	pop af			;4a16
	ret c			;4a17
	ld (00416h),a		;4a18
	inc bc			;4a1b
	inc b			;4a1c
	jp p,032d8h		;4a1d
	ld d,006h		;4a20
	dec b			;4a22
	ld b,0ffh		;4a23
	rst 38h			;4a25
l4a26h:
	cp b			;4a26
	jp c,01810h		;4a27
	ld a,e			;4a2a
	ret nc			;4a2b
	jp c,03010h		;4a2c
	call pe,0ffffh		;4a2f
	ld e,d			;4a32
	ret c			;4a33
	djnz l4a4bh		;4a34
	add a,l			;4a36
	ld (hl),d			;4a37
	ret c			;4a38
l4a39h:
	djnz $+23		;4a39
	jr nz,$-115		;4a3b
	ret c			;4a3d
	djnz l4a53h		;4a3e
	ld a,e			;4a40
	rst 38h			;4a41
	rst 38h			;4a42
l4a43h:
	cp d			;4a43
	jp c,01510h		;4a44
	add a,l			;4a47
	jp nc,010dah		;4a48
l4a4bh:
	dec d			;4a4b
	jr nz,l4a39h		;4a4c
	jp c,01310h		;4a4e
	ld a,e			;4a51
	rst 38h			;4a52
l4a53h:
	rst 38h			;4a53
l4a54h:
	rst 10h			;4a54
	ret c			;4a55
	ld (00818h),a		;4a56
	ex af,af'			;4a59
	rlca			;4a5a
	sub 0d8h		;4a5b
	ld (00a18h),a		;4a5d
	ld a,(bc)			;4a60
	add hl,bc			;4a61
	rst 38h			;4a62
	rst 38h			;4a63
l4a64h:
	pop bc			;4a64
	ret c			;4a65
	ld (00418h),a		;4a66
	inc b			;4a69
	inc bc			;4a6a
	jp nz,032d8h		;4a6b
	jr l4a76h		;4a6e
	ld b,005h		;4a70
	rst 38h			;4a72
	rst 38h			;4a73
l4a74h:
	ret c			;4a74
	ret c			;4a75
l4a76h:
	djnz $+50		;4a76
	ret nz			;4a78
	ret nz			;4a79
	ret c			;4a7a
	ld (de),a			;4a7b
	jr l4a7eh		;4a7c
l4a7eh:
	pop bc			;4a7e
	ret c			;4a7f
	ld (00418h),a		;4a80
	inc b			;4a83
	inc bc			;4a84
	jp nz,032d8h		;4a85
	jr $+8		;4a88
	ld b,005h		;4a8a
	rst 10h			;4a8c
	ret c			;4a8d
	ld (00818h),a		;4a8e
	ex af,af'			;4a91
	rlca			;4a92
	sub 0d8h		;4a93
	ld (00a18h),a		;4a95
	ld a,(bc)			;4a98
	add hl,bc			;4a99
	jp 020d8h		;4a9a
	inc de			;4a9d
	dec bc			;4a9e
	inc c			;4a9f
	ex de,hl			;4aa0
	jp c,01320h		;4aa1
	djnz $+19		;4aa4
	ld (hl),e			;4aa6
	jp c,01310h		;4aa7
	ret nz			;4aaa
	adc a,e			;4aab
l4aach:
	jp c,01310h		;4aac
	jp nz,0daa3h		;4aaf
	djnz l4ac7h		;4ab2
	rst 8			;4ab4
	cp e			;4ab5
	jp c,01310h		;4ab6
	call 0dad3h		;4ab9
	djnz l4ad1h		;4abc
	ret nz			;4abe
	rst 38h			;4abf
	rst 38h			;4ac0
sub_4ac1h:
	call 00053h		;4ac1
	ld a,0ech		;4ac4
	exx			;4ac6
l4ac7h:
	ld b,008h		;4ac7
l4ac9h:
	exx			;4ac9
	out (c),a		;4aca
	ex (sp),hl			;4acc
	ex (sp),hl			;4acd
	exx			;4ace
	djnz l4ac9h		;4acf
l4ad1h:
	exx			;4ad1
	ld de,00060h		;4ad2
	add hl,de			;4ad5
	djnz sub_4ac1h		;4ad6
	ret			;4ad8
l4ad9h:
	ret nz			;4ad9
	ret nz			;4ada
	ret nz			;4adb
	ret nz			;4adc
	ret nz			;4add
	ret nz			;4ade
	ret nz			;4adf
	ret nz			;4ae0
	pop bc			;4ae1
	jp nz,0c0c3h		;4ae2
	ret nz			;4ae5
	ret nz			;4ae6
	ret nz			;4ae7
	ret nz			;4ae8
	ret nz			;4ae9
	ret nz			;4aea
	ret nz			;4aeb
	add a,0c1h		;4aec
	jp 0c6c6h		;4aee
	add a,0c6h		;4af1
	add a,0c4h		;4af3
	out (0c5h),a		;4af5
	add a,0c6h		;4af7
	add a,0c6h		;4af9
	add a,0c1h		;4afb
	jp 0c0c6h		;4afd
	call nz,0c0c5h		;4b00
	ret nz			;4b03
	ret nz			;4b04
	ret nz			;4b05
	ret nz			;4b06
	call nz,0c5c7h		;4b07
	ret nz			;4b0a
	ret nz			;4b0b
	ret nz			;4b0c
	ret nz			;4b0d
	ret nz			;4b0e
	call nz,0c0c5h		;4b0f
	add a,0c4h		;4b12
	push bc			;4b14
	add a,0c6h		;4b15
	add a,0c6h		;4b17
	add a,0c4h		;4b19
	rst 0			;4b1b
	push bc			;4b1c
	add a,0c6h		;4b1d
	add a,0c6h		;4b1f
	add a,0c4h		;4b21
	push bc			;4b23
	add a,0c7h		;4b24
	call nz,0c8c5h		;4b26
l4b29h:
	ret z			;4b29
	ret z			;4b2a
	ret z			;4b2b
	rst 0			;4b2c
	call nz,0c5c7h		;4b2d
	ret z			;4b30
	ret z			;4b31
	ret z			;4b32
	ret z			;4b33
	rst 0			;4b34
	call nz,0c7c5h		;4b35
	ret			;4b38
	ret			;4b39
	ret			;4b3a
	ret			;4b3b
	jp nz,0c9c9h		;4b3c
	ret			;4b3f
	ret			;4b40
	ret			;4b41
	ret			;4b42
	ret			;4b43
	ret			;4b44
	ret			;4b45
	jp nz,0c9c9h		;4b46
l4b49h:
	ret			;4b49
	ret			;4b4a
	jp nz,0cc20h		;4b4b
	call nz,0c5c7h		;4b4e
	jp nz,0cac2h		;4b51
	rst 0			;4b54
	set 0,d		;4b55
	jp nz,0c7c4h		;4b57
	push bc			;4b5a
	jr nz,l4b29h		;4b5b
	jp nz,0c8c8h		;4b5d
	rst 0			;4b60
	call nz,0c5d3h		;4b61
	ret z			;4b64
	ret z			;4b65
	ret z			;4b66
	ret z			;4b67
	ret z			;4b68
	ret z			;4b69
	rst 0			;4b6a
	call nz,0c5d3h		;4b6b
	ret z			;4b6e
	ret z			;4b6f
	rst 0			;4b70
	jp 0cdcdh		;4b71
	call nz,0c5c7h		;4b74
	call 0c2c1h		;4b77
	jp nz,0c3c2h		;4b7a
	call 0c7c4h		;4b7d
	push bc			;4b80
	call 0c1cdh		;4b81
	ret			;4b84
	ret			;4b85
	ret			;4b86
	ret			;4b87
l4b88h:
	rst 0			;4b88
	ret			;4b89
	ret			;4b8a
	ret			;4b8b
	adc a,0cfh		;4b8c
	jr nz,$-53		;4b8e
	ret			;4b90
	ret			;4b91
	rst 0			;4b92
	ret			;4b93
	ret			;4b94
	ret			;4b95
	ret			;4b96
	push bc			;4b97
	ret nc			;4b98
	ret nc			;4b99
	call nz,0c5c7h		;4b9a
	ret nc			;4b9d
	call nz,0c0c5h		;4b9e
	call nz,0d0c5h		;4ba1
	call nz,0c5c7h		;4ba4
	ret nc			;4ba7
	ret nc			;4ba8
	call nz,0d1c5h		;4ba9
	pop de			;4bac
	jr nz,$-47		;4bad
	call z,0c4d1h		;4baf
	push bc			;4bb2
	ret nz			;4bb3
	call nz,0d1c5h		;4bb4
	jr nz,l4b88h		;4bb7
	call z,0d1d1h		;4bb9
	call nz,0d2c5h		;4bbc
	jp nc,0d2d2h		;4bbf
	jp nc,0c4d2h		;4bc2
	ret			;4bc5
	ret			;4bc6
	ret			;4bc7
	push bc			;4bc8
	jp nc,0d2d2h		;4bc9
	jp nc,0d2d2h		;4bcc
	call nz,0c2cbh		;4bcf
	jp nz,0c2c2h		;4bd2
	jp nz,0cac2h		;4bd5
	push bc			;4bd8
	ret nz			;4bd9
	call nz,0c2cbh		;4bda
	jp nz,0c2c2h		;4bdd
	jp nz,0cac2h		;4be0
	rst 8			;4be3
	rst 8			;4be4
	rst 8			;4be5
	rst 8			;4be6
	rst 8			;4be7
	rst 8			;4be8
	rst 8			;4be9
	rst 8			;4bea
	call z,020c0h		;4beb
	rst 8			;4bee
	rst 8			;4bef
	rst 8			;4bf0
	rst 8			;4bf1
	rst 8			;4bf2
	rst 8			;4bf3
	rst 8			;4bf4
	rst 8			;4bf5
sub_4bf6h:
	srl b		;4bf6
	srl b		;4bf8
	srl b		;4bfa
	srl c		;4bfc
	srl c		;4bfe
	srl c		;4c00
sub_4c02h:
	inc b			;4c02
	ld hl,0ebe8h		;4c03
	ld de,00018h		;4c06
	jr l4c28h		;4c09
sub_4c0bh:
	inc b			;4c0b
	ld hl,0d618h		;4c0c
	ld de,00018h		;4c0f
	jr l4c28h		;4c12
sub_4c14h:
	ld bc,(0e036h)		;4c14
	inc b			;4c18
	ld hl,lb560h		;4c19
	ld de,00020h		;4c1c
	jr l4c28h		;4c1f
sub_4c21h:
	inc b			;4c21
	ld hl,037e0h		;4c22
	ld de,00020h		;4c25
l4c28h:
	add hl,de			;4c28
	djnz l4c28h		;4c29
	add hl,bc			;4c2b
	ret			;4c2c
sub_4c2dh:
	ld e,(hl)			;4c2d
	inc hl			;4c2e
	ld d,(hl)			;4c2f
	ld a,d			;4c30
	and e			;4c31
	cp 0ffh		;4c32
l4c34h:
	ret z			;4c34
	push de			;4c35
	inc hl			;4c36
	ld a,(hl)			;4c37
	ld b,a			;4c38
	and 00fh		;4c39
	exx			;4c3b
	ld e,a			;4c3c
	ld d,000h		;4c3d
	ld hl,l4c71h		;4c3f
	add hl,de			;4c42
	ld c,(hl)			;4c43
	ld b,000h		;4c44
	pop hl			;4c46
	exx			;4c47
	srl b		;4c48
	srl b		;4c4a
	srl b		;4c4c
	srl b		;4c4e
	ld c,b			;4c50
	inc hl			;4c51
	ld a,(hl)			;4c52
	exx			;4c53
	ld d,a			;4c54
	exx			;4c55
	inc hl			;4c56
	push hl			;4c57
	ld e,b			;4c58
	ld d,000h		;4c59
	add hl,de			;4c5b
	ex (sp),hl			;4c5c
	ld d,h			;4c5d
	ld e,l			;4c5e
l4c5fh:
	ld a,(hl)			;4c5f
	inc hl			;4c60
	djnz l4c66h		;4c61
	ld b,c			;4c63
	ld h,d			;4c64
	ld l,e			;4c65
l4c66h:
	exx			;4c66
	ld (hl),a			;4c67
	add hl,bc			;4c68
	dec d			;4c69
	exx			;4c6a
	jr nz,l4c5fh		;4c6b
	pop hl			;4c6d
	jp sub_4c2dh		;4c6e
l4c71h:
	ld bc,01819h		;4c71
	rla			;4c74
sub_4c75h:
	ld hl,0e029h		;4c75
	ld a,(hl)			;4c78
	inc a			;4c79
	and 01fh		;4c7a
	ld (hl),a			;4c7c
	and 0f8h		;4c7d
	ex af,af'			;4c7f
	ld a,(0e066h)		;4c80
	ld e,a			;4c83
	ld d,000h		;4c84
	ld hl,00168h		;4c86
	add hl,de			;4c89
	ex de,hl			;4c8a
	ld a,(0e00bh)		;4c8b
	add a,a			;4c8e
	and 0e0h		;4c8f
	ld c,a			;4c91
	ld b,000h		;4c92
	ld hl,l4e0bh		;4c94
	add hl,bc			;4c97
	ex af,af'			;4c98
	ld c,a			;4c99
	ld b,000h		;4c9a
	add hl,bc			;4c9c
	call 041cah		;4c9d
	exx			;4ca0
	ld b,003h		;4ca1
l4ca3h:
	exx			;4ca3
	push hl			;4ca4
	push de			;4ca5
	ld bc,00008h		;4ca6
	call sub_4299h		;4ca9
	pop hl			;4cac
	ld de,00800h		;4cad
	add hl,de			;4cb0
	ex de,hl			;4cb1
	pop hl			;4cb2
	exx			;4cb3
	djnz l4ca3h		;4cb4
	jp l41d0h		;4cb6
l4cb9h:
	rra			;4cb9
	ccf			;4cba
	jr nc,$+50		;4cbb
	jr nc,$+50		;4cbd
	ccf			;4cbf
	rra			;4cc0
	rst 8			;4cc1
	rst 18h			;4cc2
	jr l4cddh		;4cc3
	jr l4cdfh		;4cc5
	rst 18h			;4cc7
	rst 8			;4cc8
	ex (sp),hl			;4cc9
	rst 30h			;4cca
	ld (hl),036h		;4ccb
	ld (hl),036h		;4ccd
	or 0e6h		;4ccf
	adc a,(hl)			;4cd1
	rst 18h			;4cd2
	ld de,005dbh		;4cd3
	ld de,03f73h		;4cd6
	ld a,a			;4cd9
	ld h,c			;4cda
	ld h,c			;4cdb
	ld h,c			;4cdc
l4cddh:
	ld a,a			;4cdd
	ld a,a			;4cde
l4cdfh:
	ld h,b			;4cdf
	ld (hl),011h		;4ce0
	or (hl)			;4ce2
	dec b			;4ce3
	scf			;4ce4
	ld (bc),a			;4ce5
	inc bc			;4ce6
	ld b,011h		;4ce7
	ei			;4ce9
	ei			;4cea
	call m,000fch		;4ceb
	call m,000fch		;4cee
	call m,011fch		;4cf1
	ld de,00021h		;4cf4
	call pe,00111h		;4cf7
	call pe,sub_9f01h		;4cfa
	ld (bc),a			;4cfd
	ld (hl),000h		;4cfe
	ldir		;4d00
	ret			;4d02
	ld hl,03800h		;4d03
	ld ix,00000h		;4d06
	call sub_4d28h		;4d0a
	call sub_4d28h		;4d0d
	call sub_4d28h		;4d10
l4d13h:
	ld bc,00300h		;4d13
	xor a			;4d16
	ex af,af'			;4d17
	ld hl,03800h		;4d18
l4d1bh:
	ex af,af'			;4d1b
	call 0004dh		;4d1c
	inc a			;4d1f
	inc hl			;4d20
	dec bc			;4d21
	ex af,af'			;4d22
	ld a,b			;4d23
	or c			;4d24
	jr nz,l4d1bh		;4d25
	ret			;4d27
sub_4d28h:
	ld b,000h		;4d28
	ld de,0e300h		;4d2a
l4d2dh:
	push hl			;4d2d
	push bc			;4d2e
	call 0004ah		;4d2f
	ld l,a			;4d32
	ld h,000h		;4d33
	add hl,hl			;4d35
	add hl,hl			;4d36
	add hl,hl			;4d37
	push ix		;4d38
	pop bc			;4d3a
	add hl,bc			;4d3b
	ld bc,00008h		;4d3c
	push hl			;4d3f
	push de			;4d40
	call sub_42adh		;4d41
	pop hl			;4d44
	ld bc,00008h		;4d45
	add hl,bc			;4d48
	ex de,hl			;4d49
	pop hl			;4d4a
	ld bc,02000h		;4d4b
	add hl,bc			;4d4e
	ld bc,00008h		;4d4f
	push de			;4d52
	call sub_42adh		;4d53
	pop hl			;4d56
	ld bc,00008h		;4d57
	add hl,bc			;4d5a
	ex de,hl			;4d5b
	pop bc			;4d5c
	pop hl			;4d5d
	inc hl			;4d5e
	djnz l4d2dh		;4d5f
	push hl			;4d61
	ld hl,0e300h		;4d62
	push ix		;4d65
	pop de			;4d67
l4d68h:
	push bc			;4d68
	ld bc,00008h		;4d69
	push hl			;4d6c
	push de			;4d6d
	call sub_4299h		;4d6e
	pop hl			;4d71
	ld bc,02000h		;4d72
	add hl,bc			;4d75
	ex de,hl			;4d76
	pop hl			;4d77
	ld bc,00008h		;4d78
	add hl,bc			;4d7b
	push hl			;4d7c
	push de			;4d7d
	call sub_4299h		;4d7e
	pop hl			;4d81
	ld bc,0e008h		;4d82
	add hl,bc			;4d85
	ex de,hl			;4d86
	pop hl			;4d87
	ld bc,00008h		;4d88
	add hl,bc			;4d8b
	pop bc			;4d8c
	djnz l4d68h		;4d8d
	pop hl			;4d8f
	ld bc,00800h		;4d90
	add ix,bc		;4d93
	ret			;4d95
sub_4d96h:
	ld b,017h		;4d96
	ld de,0ffe0h		;4d98
	ld hl,0d340h		;4d9b
l4d9eh:
	ld a,(hl)			;4d9e
	or a			;4d9f
	ret z			;4da0
	add hl,de			;4da1
	djnz l4d9eh		;4da2
	scf			;4da4
	ret			;4da5
	call 041cah		;4da6
	ld hl,l97c9h		;4da9
	ld de,01c00h		;4dac
	ld bc,00400h		;4daf
	call sub_4299h		;4db2
	call l41d0h		;4db5
	jp l44eah		;4db8
sub_4dbbh:
	ld a,(0e015h)		;4dbb
	or a			;4dbe
	ret nz			;4dbf
	ld a,(0e011h)		;4dc0
	and 00fh		;4dc3
	ret nz			;4dc5
	ld a,(0e00dh)		;4dc6
	cp 003h		;4dc9
	ret c			;4dcb
	ld hl,(0e049h)		;4dcc
	ld bc,0fff1h		;4dcf
	add hl,bc			;4dd2
	ret nc			;4dd3
	call sub_4d96h		;4dd4
	ret c			;4dd7
	ld (hl),00ah		;4dd8
	ld a,001h		;4dda
	ld (0e015h),a		;4ddc
	call sub_6a6bh+1		;4ddf
	ret z			;4de2
l4de3h:
	ld e,(hl)			;4de3
	inc hl			;4de4
	ld d,(hl)			;4de5
	inc hl			;4de6
	ld a,d			;4de7
	and e			;4de8
	cp 0ffh		;4de9
	ret z			;4deb
l4dech:
	ld a,(hl)			;4dec
	inc hl			;4ded
	cp 0ffh		;4dee
	jr z,l4de3h		;4df0
	ld (de),a			;4df2
	inc de			;4df3
	jr l4dech		;4df4
sub_4df6h:
	ld a,(0e05fh)		;4df6
	or a			;4df9
	ret z			;4dfa
	cp 001h		;4dfb
	jr nz,l4e03h		;4dfd
	ld (0e00ch),a		;4dff
	ret			;4e02
l4e03h:
	cp 004h		;4e03
	ret nz			;4e05
	dec a			;4e06
	ld (0d01ch),a		;4e07
	ret			;4e0a
l4e0bh:
	ld c,01fh		;4e0b
	rra			;4e0d
	rra			;4e0e
	ld c,060h		;4e0f
	ld h,b			;4e11
	nop			;4e12
	inc e			;4e13
	ld a,03eh		;4e14
	ld a,01ch		;4e16
	ld h,b			;4e18
	ld h,b			;4e19
	nop			;4e1a
	jr c,l4e99h		;4e1b
	ld a,h			;4e1d
	ld a,h			;4e1e
	jr c,l4e81h		;4e1f
	ld h,b			;4e21
	nop			;4e22
	inc e			;4e23
	ld a,03eh		;4e24
	ld a,01ch		;4e26
	ld h,b			;4e28
	ld h,b			;4e29
	nop			;4e2a
	ld c,01fh		;4e2b
	rra			;4e2d
	rra			;4e2e
	ld c,008h		;4e2f
	ex af,af'			;4e31
	ex af,af'			;4e32
	inc e			;4e33
	ld a,03eh		;4e34
	ld a,01ch		;4e36
	ex af,af'			;4e38
	ex af,af'			;4e39
	ex af,af'			;4e3a
	jr c,l4eb9h		;4e3b
	ld a,h			;4e3d
	ld a,h			;4e3e
	jr c,l4e49h		;4e3f
	ex af,af'			;4e41
	ex af,af'			;4e42
	inc e			;4e43
	ld a,03eh		;4e44
	ld a,01ch		;4e46
	ex af,af'			;4e48
l4e49h:
	ex af,af'			;4e49
	ex af,af'			;4e4a
	ld c,01fh		;4e4b
	rra			;4e4d
	rra			;4e4e
	ld c,061h		;4e4f
	ld h,b			;4e51
	ex af,af'			;4e52
	inc e			;4e53
	ld a,03eh		;4e54
	ld a,01ch		;4e56
	ld h,c			;4e58
	ld h,b			;4e59
	ex af,af'			;4e5a
	jr c,l4ed9h		;4e5b
	ld a,h			;4e5d
	ld a,h			;4e5e
	jr c,l4ec2h		;4e5f
	ld h,b			;4e61
	ex af,af'			;4e62
	inc e			;4e63
	ld a,03eh		;4e64
	ld a,01ch		;4e66
	ld h,c			;4e68
	ld h,b			;4e69
	ex af,af'			;4e6a
	ld c,01fh		;4e6b
	rra			;4e6d
	rra			;4e6e
	ld c,060h		;4e6f
	ld h,b			;4e71
	nop			;4e72
	inc e			;4e73
	ld a,03eh		;4e74
	ld a,01ch		;4e76
	ld h,b			;4e78
	ld h,b			;4e79
	nop			;4e7a
	jr c,l4ef9h		;4e7b
	ld a,h			;4e7d
	ld a,h			;4e7e
	jr c,l4ee1h		;4e7f
l4e81h:
	ld h,b			;4e81
	nop			;4e82
	inc e			;4e83
	ld a,03eh		;4e84
	ld a,01ch		;4e86
	ld h,b			;4e88
	ld h,b			;4e89
	nop			;4e8a
	ld c,01fh		;4e8b
	rra			;4e8d
	rra			;4e8e
	ld c,060h		;4e8f
	ld h,b			;4e91
	nop			;4e92
	inc e			;4e93
	ld a,03eh		;4e94
	ld a,01ch		;4e96
	ld h,b			;4e98
l4e99h:
	ld h,b			;4e99
	nop			;4e9a
	jr c,l4f19h		;4e9b
	ld a,h			;4e9d
	ld a,h			;4e9e
	jr c,$+98		;4e9f
	ld h,b			;4ea1
	nop			;4ea2
	inc e			;4ea3
	ld a,03eh		;4ea4
	ld a,01ch		;4ea6
	ld h,b			;4ea8
	ld h,b			;4ea9
	nop			;4eaa
	ld c,01fh		;4eab
	rra			;4ead
	rra			;4eae
	ld c,060h		;4eaf
	ld h,b			;4eb1
	ld a,(hl)			;4eb2
	inc e			;4eb3
	ld a,03eh		;4eb4
	ld a,01ch		;4eb6
	ld h,b			;4eb8
l4eb9h:
	ld h,b			;4eb9
	ld a,(hl)			;4eba
	jr c,l4f39h		;4ebb
	ld a,h			;4ebd
	ld a,h			;4ebe
	jr c,l4f21h		;4ebf
	ld h,b			;4ec1
l4ec2h:
	ld a,(hl)			;4ec2
	inc e			;4ec3
	ld a,03eh		;4ec4
	ld a,01ch		;4ec6
	ld h,b			;4ec8
	ld h,b			;4ec9
	ld a,(hl)			;4eca
	ld c,01fh		;4ecb
	rra			;4ecd
	rra			;4ece
	ld c,004h		;4ecf
	ld (bc),a			;4ed1
	add a,c			;4ed2
	inc e			;4ed3
	ld a,03eh		;4ed4
	ld a,01ch		;4ed6
	inc b			;4ed8
l4ed9h:
	ld (bc),a			;4ed9
	add a,c			;4eda
	jr c,l4f59h		;4edb
	ld a,h			;4edd
	ld a,h			;4ede
	jr c,$+6		;4edf
l4ee1h:
	ld (bc),a			;4ee1
	add a,c			;4ee2
	inc e			;4ee3
	ld a,03eh		;4ee4
	ld a,01ch		;4ee6
	inc b			;4ee8
	ld (bc),a			;4ee9
	add a,c			;4eea
l4eebh:
	or c			;4eeb
	or a			;4eec
	or l			;4eed
	or l			;4eee
	or h			;4eef
	inc d			;4ef0
	inc d			;4ef1
	dec d			;4ef2
	ld b,c			;4ef3
	ld b,c			;4ef4
	ld b,c			;4ef5
	ld b,c			;4ef6
	ld c,a			;4ef7
	pop af			;4ef8
l4ef9h:
	pop af			;4ef9
	pop af			;4efa
	add hl,hl			;4efb
	jr z,l4f27h		;4efc
	jr z,l4f26h		;4efe
	ld d,018h		;4f00
	ld d,0fch		;4f02
	di			;4f04
	jp p,0fcf3h		;4f05
	ld (de),a			;4f08
	ld (de),a			;4f09
	inc c			;4f0a
	adc a,a			;4f0b
	adc a,d			;4f0c
	adc a,d			;4f0d
	adc a,d			;4f0e
	adc a,e			;4f0f
	ld a,(de)			;4f10
	dec de			;4f11
	ld bc,07d7fh		;4f12
	ld a,l			;4f15
	ld a,l			;4f16
	ld a,l			;4f17
	dec e			;4f18
l4f19h:
	dec e			;4f19
	dec e			;4f1a
	pop de			;4f1b
	pop de			;4f1c
	pop de			;4f1d
	pop de			;4f1e
	pop de			;4f1f
	ld b,c			;4f20
l4f21h:
	ld b,c			;4f21
	ld b,c			;4f22
sub_4f23h:
	ld a,(0e066h)		;4f23
l4f26h:
	ld e,a			;4f26
l4f27h:
	ld d,000h		;4f27
	ld hl,00168h		;4f29
	add hl,de			;4f2c
	ex de,hl			;4f2d
	push de			;4f2e
	bit 3,a		;4f2f
	jr z,l4f37h		;4f31
	ld a,02eh		;4f33
	jr l4f39h		;4f35
l4f37h:
	ld a,02dh		;4f37
l4f39h:
	ld (0e067h),a		;4f39
	ld a,(0e00bh)		;4f3c
	add a,a			;4f3f
	and 0e0h		;4f40
	ld c,a			;4f42
l4f43h:
	ld b,000h		;4f43
	ld hl,l4e0bh		;4f45
	add hl,bc			;4f48
	call sub_4f5fh		;4f49
	pop hl			;4f4c
	ld de,02000h		;4f4d
l4f50h:
	add hl,de			;4f50
	ex de,hl			;4f51
	ld a,(0e00bh)		;4f52
	rra			;4f55
	and 038h		;4f56
	ld c,a			;4f58
l4f59h:
	ld b,000h		;4f59
	ld hl,l4eebh		;4f5b
	add hl,bc			;4f5e
sub_4f5fh:
	call 041cah		;4f5f
	exx			;4f62
	ld b,003h		;4f63
l4f65h:
	exx			;4f65
	push hl			;4f66
	push de			;4f67
	ld bc,00008h		;4f68
	call sub_4299h		;4f6b
	pop hl			;4f6e
	pop de			;4f6f
	ld bc,00800h		;4f70
	add hl,bc			;4f73
	ex de,hl			;4f74
	exx			;4f75
	djnz l4f65h		;4f76
	jp l41d0h		;4f78
sub_4f7bh:
	ld a,(0e04bh)		;4f7b
	or a			;4f7e
	ret z			;4f7f
	ld hl,0e012h		;4f80
	ld de,03958h		;4f83
l4f86h:
	call 041cah		;4f86
	ex de,hl			;4f89
	call 00053h		;4f8a
	ex de,hl			;4f8d
	ld b,003h		;4f8e
	ld a,(00007h)		;4f90
	ld c,a			;4f93
	xor a			;4f94
	ex af,af'			;4f95
l4f96h:
	ld a,(hl)			;4f96
	rrca			;4f97
	rrca			;4f98
	rrca			;4f99
	rrca			;4f9a
	call sub_4fa8h		;4f9b
	ld a,(hl)			;4f9e
	call sub_4fa8h		;4f9f
	dec hl			;4fa2
	djnz l4f96h		;4fa3
	jp l41d0h		;4fa5
sub_4fa8h:
	ex af,af'			;4fa8
	jr nz,l4fb6h		;4fa9
	ex af,af'			;4fab
	and 00fh		;4fac
	jr nz,l4fb4h		;4fae
	ld a,020h		;4fb0
	jr l4fbbh		;4fb2
l4fb4h:
	ex af,af'			;4fb4
	inc a			;4fb5
l4fb6h:
	ex af,af'			;4fb6
	and 00fh		;4fb7
	add a,030h		;4fb9
l4fbbh:
	out (c),a		;4fbb
	ret			;4fbd
l4fbeh:
	ld a,(0e04bh)		;4fbe
	or a			;4fc1
	ret z			;4fc2
	ld de,0e010h		;4fc3
	ld hl,0e140h		;4fc6
	ld b,003h		;4fc9
	or a			;4fcb
l4fcch:
	ld a,(de)			;4fcc
	sbc a,(hl)			;4fcd
	inc hl			;4fce
	inc de			;4fcf
	djnz l4fcch		;4fd0
	ret c			;4fd2
	ld hl,0e012h		;4fd3
	ld de,038f8h		;4fd6
	ld a,(0e030h)		;4fd9
	bit 6,a		;4fdc
	ret nz			;4fde
	bit 7,a		;4fdf
	jp nz,l4f86h		;4fe1
	or 040h		;4fe4
	ld (0e030h),a		;4fe6
	ld a,(0e065h)		;4fe9
	or a			;4fec
	jp nz,l4f86h		;4fed
	ld a,010h		;4ff0
	call sub_a07bh		;4ff2
	jp l4f86h		;4ff5
sub_4ff8h:
	ld a,(0e04bh)		;4ff8
	or a			;4ffb
	ret z			;4ffc
	ld de,038f8h		;4ffd
	ld hl,0e142h		;5000
	jp l4f86h		;5003
l5006h:
	ld a,(0e04bh)		;5006
	or a			;5009
	ret z			;500a
sub_500bh:
	ld a,(0e069h)		;500b
	or a			;500e
	ret nz			;500f
l5010h:
	ld a,c			;5010
sub_5011h:
	add a,a			;5011
	add a,c			;5012
l5013h:
	ld c,a			;5013
	ld b,000h		;5014
	ld hl,l5048h		;5016
l5019h:
	add hl,bc			;5019
	ld de,0e010h		;501a
	ld a,(de)			;501d
	add a,(hl)			;501e
	daa			;501f
	ld (de),a			;5020
	inc de			;5021
	inc hl			;5022
	ld a,(de)			;5023
	adc a,(hl)			;5024
	daa			;5025
	ld (de),a			;5026
	inc de			;5027
	inc hl			;5028
	ld a,(de)			;5029
	adc a,(hl)			;502a
	daa			;502b
	ld (de),a			;502c
	call c,sub_503dh		;502d
	call sub_4f7bh		;5030
	ld a,(0e065h)		;5033
	or a			;5036
	call z,sub_506ch		;5037
	jp l4fbeh		;503a
sub_503dh:
	ld hl,0e010h		;503d
	ld a,099h		;5040
	ld (hl),a			;5042
	inc hl			;5043
	ld (hl),a			;5044
	inc hl			;5045
	ld (hl),a			;5046
	ret			;5047
l5048h:
	nop			;5048
	nop			;5049
	nop			;504a
	inc bc			;504b
	nop			;504c
	nop			;504d
	dec b			;504e
	nop			;504f
	nop			;5050
	djnz l5053h		;5051
l5053h:
	nop			;5053
	dec d			;5054
	nop			;5055
	nop			;5056
	jr nz,l5059h		;5057
l5059h:
	nop			;5059
	jr nc,l505ch		;505a
l505ch:
	nop			;505c
	nop			;505d
	jr nz,l5060h		;505e
l5060h:
	nop			;5060
	ld (bc),a			;5061
	nop			;5062
	nop			;5063
	nop			;5064
	djnz l5067h		;5065
l5067h:
	ld d,b			;5067
	nop			;5068
	nop			;5069
	djnz sub_506ch		;506a
sub_506ch:
	ld de,0e010h		;506c
	ld hl,0e016h		;506f
	or a			;5072
	ld b,003h		;5073
l5075h:
	ld a,(de)			;5075
	sbc a,(hl)			;5076
	inc hl			;5077
	inc de			;5078
	djnz l5075h		;5079
	ret c			;507b
	ld hl,0e018h		;507c
	ld a,(hl)			;507f
	dec hl			;5080
l5081h:
	or a			;5081
	ld a,(hl)			;5082
	jr nz,l508eh		;5083
	cp 010h		;5085
	jr nz,l508eh		;5087
	ld (hl),020h		;5089
	jp l517ch		;508b
l508eh:
	add a,020h		;508e
	daa			;5090
	ld (hl),a			;5091
	inc hl			;5092
	ld a,(hl)			;5093
	adc a,000h		;5094
	daa			;5096
	ld (hl),a			;5097
	jp l517ch		;5098
sub_509bh:
	call 041cah		;509b
	ld de,03a1ch		;509e
	ld a,(0e00bh)		;50a1
	inc a			;50a4
	jr l50d3h		;50a5
sub_50a7h:
	ld a,(0e04dh)		;50a7
	or a			;50aa
	ret nz			;50ab
	call 041cah		;50ac
	ld de,03a3ch		;50af
	ld a,(0e00dh)		;50b2
	jr l50d3h		;50b5
sub_50b7h:
	ld a,(0e04bh)		;50b7
	or a			;50ba
	ret z			;50bb
	call 041cah		;50bc
	ld de,03a9ch		;50bf
	ld hl,(0e019h)		;50c2
	jr l50d6h		;50c5
sub_50c7h:
	call 041cah		;50c7
	ld de,03a9ch		;50ca
	ld hl,(0e04eh)		;50cd
	inc hl			;50d0
	jr l50d6h		;50d1
l50d3h:
	ld l,a			;50d3
	ld h,000h		;50d4
l50d6h:
	ld bc,00064h		;50d6
	call sub_50e9h		;50d9
	ld bc,0000ah		;50dc
	call sub_50e9h		;50df
	ld a,l			;50e2
	call sub_50f2h		;50e3
	jp l41d0h		;50e6
sub_50e9h:
	xor a			;50e9
l50eah:
	or a			;50ea
	sbc hl,bc		;50eb
	inc a			;50ed
	jr nc,l50eah		;50ee
l50f0h:
	dec a			;50f0
	add hl,bc			;50f1
sub_50f2h:
	add a,030h		;50f2
	ex de,hl			;50f4
	call 0004dh		;50f5
	ex de,hl			;50f8
	inc de			;50f9
	ret			;50fa
sub_50fbh:
	call 041cah		;50fb
	ld hl,0399ch		;50fe
	ld a,(0e00fh)		;5101
	jp l5112h		;5104
sub_5107h:
	call 041cah		;5107
	ld hl,039bch		;510a
	ld a,(0e00ah)		;510d
	dec a			;5110
	dec a			;5111
l5112h:
	ex af,af'			;5112
	call 00053h		;5113
	ld b,003h		;5116
	ld a,(00007h)		;5118
	ld c,a			;511b
	ld a,020h		;511c
l511eh:
	out (c),a		;511e
	djnz l511eh		;5120
	call 00053h		;5122
	ex af,af'			;5125
l5126h:
	or a			;5126
	jp z,l41d0h		;5127
	cp 001h		;512a
	jr nz,l5135h		;512c
	ld a,021h		;512e
	out (c),a		;5130
	jp l41d0h		;5132
l5135h:
	dec a			;5135
	dec a			;5136
	ld b,a			;5137
	ld a,022h		;5138
	out (c),a		;513a
	ld a,b			;513c
	jr l5126h		;513d
sub_513fh:
	ld a,(0e04bh)		;513f
	or a			;5142
	ret z			;5143
	ld a,(0e027h)		;5144
	or a			;5147
	ret z			;5148
	call 041cah		;5149
	ld hl,03ad8h		;514c
	call 00053h		;514f
	ld a,(00007h)		;5152
	ld c,a			;5155
	ld a,(0e027h)		;5156
	cp 008h		;5159
	jr c,l515fh		;515b
	ld a,008h		;515d
l515fh:
	cp 001h		;515f
	jr z,l516eh		;5161
	dec a			;5163
	ex af,af'			;5164
	ld a,02ch		;5165
	out (c),a		;5167
	ex (sp),hl			;5169
	ex (sp),hl			;516a
	ex af,af'			;516b
	jr l515fh		;516c
l516eh:
	ld a,020h		;516e
	out (c),a		;5170
	ld a,(0e027h)		;5172
	dec a			;5175
	ld de,03afch		;5176
	jp l50d3h		;5179
l517ch:
	ld a,(0e027h)		;517c
	inc a			;517f
	ld (0e027h),a		;5180
	ld a,011h		;5183
	call sub_a07bh		;5185
	jp sub_513fh		;5188
l518bh:
	ld a,(0e030h)		;518b
	bit 6,a		;518e
	ret z			;5190
	ld de,038f8h		;5191
	bit 2,a		;5194
	jr z,l51aeh		;5196
	ld hl,0e012h		;5198
	call l4f86h		;519b
	call 041cah		;519e
	ld hl,038feh		;51a1
	ld a,030h		;51a4
	call 0004dh		;51a6
	call l41d0h		;51a9
	jr l51bdh		;51ac
l51aeh:
	ex de,hl			;51ae
	call 041cah		;51af
	ld bc,00007h		;51b2
	ld a,020h		;51b5
	call 00056h		;51b7
	call l41d0h		;51ba
l51bdh:
	ld hl,0e030h		;51bd
	inc (hl)			;51c0
	ret			;51c1
	ld de,0e010h		;51c2
	ld hl,0e140h		;51c5
	ld b,003h		;51c8
	or a			;51ca
l51cbh:
	ld a,(de)			;51cb
	sbc a,(hl)			;51cc
	inc hl			;51cd
	inc de			;51ce
	djnz l51cbh		;51cf
	ret c			;51d1
	ld de,0e140h		;51d2
	ld hl,0e010h		;51d5
	ld bc,00003h		;51d8
	ldir		;51db
	ret			;51dd
sub_51deh:
	ld e,(ix+018h)		;51de
	ld d,000h		;51e1
	ld hl,l51ebh		;51e3
	add hl,de			;51e6
	ld c,(hl)			;51e7
	jp l5006h		;51e8
l51ebh:
	nop			;51eb
	nop			;51ec
	nop			;51ed
	nop			;51ee
	nop			;51ef
	nop			;51f0
	nop			;51f1
	nop			;51f2
	nop			;51f3
	nop			;51f4
	nop			;51f5
	nop			;51f6
	nop			;51f7
	nop			;51f8
	nop			;51f9
	nop			;51fa
	ld b,000h		;51fb
	nop			;51fd
	dec b			;51fe
	inc b			;51ff
	dec b			;5200
	ld bc,00502h		;5201
	inc bc			;5204
	inc b			;5205
	nop			;5206
	nop			;5207
	dec bc			;5208
sub_5209h:
	call 041cah		;5209
	ld a,(0e05fh)		;520c
	ld b,a			;520f
	add a,a			;5210
	add a,b			;5211
	ld c,a			;5212
	ld b,000h		;5213
	ld hl,l5225h		;5215
	add hl,bc			;5218
	ld de,039dch		;5219
	ld bc,00003h		;521c
	call sub_4299h		;521f
	jp l41d0h		;5222
l5225h:
	jr nz,$+34		;5225
	jr nz,$-111		;5227
	sub b			;5229
	sub c			;522a
	sub d			;522b
	sub e			;522c
	sub h			;522d
	sub l			;522e
	sub (hl)			;522f
	sub a			;5230
	sbc a,b			;5231
	sbc a,c			;5232
	sbc a,d			;5233
	sbc a,e			;5234
	sbc a,h			;5235
	sbc a,l			;5236
	sbc a,(hl)			;5237
	sbc a,a			;5238
	ld a,(l673eh)		;5239
	ld (0e024h),a		;523c
	ld a,001h		;523f
	ld (0e06bh),a		;5241
	ld a,004h		;5244
	ld (0e06ah),a		;5246
l5249h:
	ld a,002h		;5249
	ld (0e00ah),a		;524b
	dec a			;524e
	ld (0e04bh),a		;524f
	ld (0e069h),a		;5252
	dec a			;5255
	ld (0e062h),a		;5256
	ld (0e00fh),a		;5259
	ld (0e05fh),a		;525c
	ld (0d000h),a		;525f
	ld (0e04dh),a		;5262
	dec a			;5265
	ld (0e02eh),a		;5266
	call sub_a05fh		;5269
	call sub_41b0h		;526c
	call sub_4187h		;526f
	call 041cah		;5272
	call sub_412fh		;5275
	call sub_542fh		;5278
	call sub_54b9h		;527b
	ld hl,l5407h		;527e
	ld de,00c70h		;5281
	call sub_54f2h		;5284
	ld hl,l5418h		;5287
	ld de,00e28h		;528a
	call sub_54f2h		;528d
	ld hl,02c70h		;5290
	ld bc,00080h		;5293
	ld a,090h		;5296
	call 00056h		;5298
	ld hl,02e28h		;529b
	ld bc,000b0h		;529e
	ld a,070h		;52a1
	call 00056h		;52a3
	ld de,01780h		;52a6
	ld hl,l4cb9h		;52a9
	call sub_414bh		;52ac
	ld hl,03780h		;52af
	ld a,0d0h		;52b2
	ld bc,00040h		;52b4
	call 00056h		;52b7
	ld hl,l53d7h		;52ba
	call sub_53b4h		;52bd
	ld hl,0e012h		;52c0
	ld de,03a26h		;52c3
	call l4f86h		;52c6
	ld hl,0e142h		;52c9
	ld de,03a31h		;52cc
	call l4f86h		;52cf
	ld a,002h		;52d2
	call sub_a07bh		;52d4
	call 041cah		;52d7
	ld hl,03a2ch		;52da
	ld a,030h		;52dd
	call 0004dh		;52df
	ld hl,03a37h		;52e2
	ld a,030h		;52e5
	call 0004dh		;52e7
	call l41d0h		;52ea
	ld bc,00580h		;52ed
l52f0h:
	push bc			;52f0
	call sub_40b3h		;52f1
	call sub_41dch		;52f4
	call sub_5516h		;52f7	check code
	pop bc			;52fa
	jp c,l5563h		;52fb
	call sub_556ah		;52fe
	jp c,sub_40c1h		;5301
	dec bc			;5304
	ld a,b			;5305
l5306h:
	or a			;5306
	jr nz,l52f0h		;5307
	call sub_40c1h		;5309
	xor a			;530c
	ld (0e062h),a		;530d
	inc a			;5310
	ld (0e069h),a		;5311
	call sub_4512h		;5314
	ld hl,0d660h		;5317
	ld de,0d661h		;531a
	ld bc,0023fh		;531d
	ld (hl),020h		;5320
	ldir		;5322
	call sub_6275h		;5324
	ld bc,00100h		;5327
l532ah:
	push bc			;532a
	call sub_40b3h		;532b
	call sub_41dch		;532e
	call sub_5516h		;5331
	jp c,l557eh		;5334
	pop bc			;5337
	call sub_556ah		;5338
	jp c,sub_40c1h		;533b
	dec bc			;533e
	ld a,b			;533f
	or c			;5340
	jr nz,l532ah		;5341
	ld a,(0e024h)		;5343
	xor 063h		;5346
	ld (0e024h),a		;5348
	ld (0e00bh),a		;534b
	call sub_461bh		;534e
	call sub_45deh		;5351
	ld a,001h		;5354
	ld (0d000h),a		;5356
	call sub_4287h		;5359
	ld a,h			;535c
	and 003h		;535d
	ld (0e00fh),a		;535f
	ld a,l			;5362
	and 001h		;5363
	add a,002h		;5365
	ld (0e00ah),a		;5367
	call sub_4512h		;536a
l536dh:
	call sub_41dch		;536d
	ld a,(0e000h)		;5370
	call sub_556ah		;5373
	jp c,sub_40c1h		;5376
	call sub_40b3h		;5379
	call sub_4df6h		;537c
	call sub_6f90h		;537f
	call sub_b982h		;5382
	call sub_4c75h		;5385
	ld a,(0d000h)		;5388
	or a			;538b
	jr z,l5397h		;538c
	ld a,(0e00dh)		;538e
	or a			;5391
	jr z,l5397h		;5392
	jp l536dh		;5394
l5397h:
	ld b,080h		;5397
l5399h:
	push bc			;5399
	call sub_41dch		;539a
	pop bc			;539d
	ld a,(0e000h)		;539e
	call sub_556ah		;53a1
	jp c,sub_40c1h		;53a4
	push bc			;53a7
	call sub_40b3h		;53a8
	call sub_6f90h		;53ab
	pop bc			;53ae
	djnz l5399h		;53af
	jp l5249h		;53b1
sub_53b4h:
	call 041cah		;53b4
	ld a,(00007h)		;53b7
	ld c,a			;53ba
l53bbh:
	ld e,(hl)			;53bb
	inc hl			;53bc
	ld d,(hl)			;53bd
	inc hl			;53be
	ld a,d			;53bf
	and e			;53c0
	cp 0ffh		;53c1
	jp z,l41d0h		;53c3
	ex de,hl			;53c6
	call 00053h		;53c7
	ex de,hl			;53ca
l53cbh:
	ld a,(hl)			;53cb
	inc hl			;53cc
	cp 0ffh		;53cd
	jr z,l53bbh		;53cf
	out (c),a		;53d1
	ex (sp),hl			;53d3
	ex (sp),hl			;53d4
	jr l53cbh		;53d5
l53d7h:
	rlca			;53d7
	ld a,(04353h)		;53d8
	ld c,a			;53db
	ld d,d			;53dc
	ld b,l			;53dd
	jr nz,$+34		;53de
	jr nz,l5402h		;53e0
	jr nz,l5404h		;53e2
	jr nz,$+86		;53e4
	ld c,a			;53e6
	ld d,b			;53e7
	rst 38h			;53e8
	adc a,c			;53e9
	ld a,(l5550h)		;53ea
	ld d,e			;53ed
	ld c,b			;53ee
	jr nz,l5444h		;53ef
	ld d,b			;53f1
	ld b,c			;53f2
	ld b,e			;53f3
	ld b,l			;53f4
	jr nz,$+68		;53f5
	ld b,c			;53f7
	ld d,d			;53f8
	rst 38h			;53f9
	ex de,hl			;53fa
	ld a,(0f1f0h)		;53fb
	jp p,0f4f3h		;53fe
	push af			;5401
l5402h:
	or 0f7h		;5402
l5404h:
	rst 38h			;5404
	rst 38h			;5405
	rst 38h			;5406
l5407h:
	ld b,d			;5407
	ld e,c			;5408
	jr nz,l545bh		;5409
	ld b,c			;540b
	ld b,e			;540c
	jr nz,$+72		;540d
	ld d,l			;540f
	ld c,d			;5410
	ld c,c			;5411
	ld d,e			;5412
	ld c,b			;5413
	ld c,c			;5414
	ld c,l			;5415
	ld b,c			;5416
	rst 38h			;5417
l5418h:
	ld b,e			;5418
	ld c,a			;5419
	ld d,b			;541a
	ld e,c			;541b
	ld d,d			;541c
	ld c,c			;541d
	ld b,a			;541e
	ld c,b			;541f
	ld d,h			;5420
	ld b,b			;5421
	ld sp,03839h		;5422
	ld (hl),020h		;5425
	ld b,e			;5427
	ld c,a			;5428
	ld c,l			;5429
	ld d,b			;542a
	ld c,c			;542b
	ld c,h			;542c
	ld b,l			;542d
	rst 38h			;542e
sub_542fh:
	call sub_41d6h		;542f
	ld hl,03800h		;5432
	call 00053h		;5435
sub_5438h:
	ld a,(00007h)		;5438
	ld c,a			;543b
	ld de,00200h		;543c
	ld h,000h		;543f
l5441h:
	out (c),h		;5441
	inc h			;5443
l5444h:
	dec de			;5444
	ld a,d			;5445
	or e			;5446
	jr nz,l5441h		;5447
	ld hl,00000h		;5449
	ld bc,01000h		;544c
	xor a			;544f
	call 00056h		;5450
l5453h:
	ld hl,02000h		;5453
	ld bc,01000h		;5456
	ld a,0f0h		;5459
l545bh:
	call 00056h		;545b
	ld hl,l5668h		;545e
	ld (0e060h),hl		;5461
	ld hl,00228h		;5464
	xor a			;5467
	ld (0e070h),a		;5468
l546bh:
	ld bc,000b8h		;546b
l546eh:
	push hl			;546e
	call sub_5483h		;546f
	pop hl			;5472
	ret c			;5473
	call 0004dh		;5474
	inc hl			;5477
	dec bc			;5478
	ld a,b			;5479
	or c			;547a
	jr nz,l546eh		;547b
	ld bc,00048h		;547d
	add hl,bc			;5480
	jr l546bh		;5481
sub_5483h:
	ld a,(0e070h)		;5483
	or a			;5486
	jr z,l549dh		;5487
	ld hl,0e06fh		;5489
	dec (hl)			;548c
	ld a,000h		;548d
	jr nz,l549bh		;548f
	ld hl,(0e060h)		;5491
	inc hl			;5494
	ld (0e060h),hl		;5495
	ld (0e070h),a		;5498
l549bh:
	or a			;549b
	ret			;549c
l549dh:
	ld hl,(0e060h)		;549d
	ld a,(hl)			;54a0
	inc hl			;54a1
	ld (0e060h),hl		;54a2
	or a			;54a5
	jr nz,l549bh		;54a6
	ld a,(hl)			;54a8
	cp 0ffh		;54a9
	jr z,l54b7h		;54ab
l54adh:
	ld (0e06fh),a		;54ad
	ld a,001h		;54b0
	ld (0e070h),a		;54b2
	jr sub_5483h		;54b5
l54b7h:
	scf			;54b7
	ret			;54b8
sub_54b9h:
	ld a,(00007h)		;54b9
	ld c,a			;54bc
	ld b,00ah		;54bd
	ld hl,02228h		;54bf
	ld de,l5aech		;54c2
l54c5h:
	call 00053h		;54c5
	ex de,hl			;54c8
	exx			;54c9
	ld b,017h		;54ca
l54cch:
	ld c,008h		;54cc
l54ceh:
	exx			;54ce
	ld a,(hl)			;54cf
	out (c),a		;54d0
	ex (sp),hl			;54d2
	ex (sp),hl			;54d3
	inc hl			;54d4
	exx			;54d5
	dec c			;54d6
	jr nz,l54ceh		;54d7
l54d9h:
	exx			;54d9
	push bc			;54da
	ld bc,0fff8h		;54db
	add hl,bc			;54de
	pop bc			;54df
	exx			;54e0
	djnz l54cch		;54e1
	exx			;54e3
	push bc			;54e4
	ld bc,00008h		;54e5
	add hl,bc			;54e8
	ex de,hl			;54e9
	ld bc,00100h		;54ea
	add hl,bc			;54ed
	pop bc			;54ee
	djnz l54c5h		;54ef
	ret			;54f1
sub_54f2h:
	push de			;54f2
	exx			;54f3
	pop de			;54f4
	exx			;54f5
l54f6h:
	ld a,(hl)			;54f6
	cp 0ffh		;54f7
	ret z			;54f9
	exx			;54fa
	ld l,a			;54fb
	ld h,000h		;54fc
	add hl,hl			;54fe
	add hl,hl			;54ff
	add hl,hl			;5500
	ld bc,l8bf0h		;5501
	add hl,bc			;5504
	push de			;5505
	ld bc,00008h		;5506
	call sub_4299h		;5509
	pop hl			;550c
	ld bc,00008h		;550d
	add hl,bc			;5510
	ex de,hl			;5511
	exx			;5512
	inc hl			;5513
	jr l54f6h		;5514
sub_5516h:
	ld a,(0e062h)		;5516
	bit 7,a		;5519
	jr nz,l5542h		;551b
	ld e,a			;551d
	ld d,000h		;551e
	ld hl,l555bh		;5520
	add hl,de			;5523
	ld a,(0e001h)		;5524
	cp 004h		;5527
	ret z			;5529
	cp (hl)			;552a
	jr z,l5532h		;552b
	xor a			;552d
	ld (0e062h),a		;552e
	ret			;5531
l5532h:
	ld a,(0e062h)		;5532
	inc a			;5535
	cp 006h		;5536
	jp z,05561h		;5538 SCF!; ret
	set 7,a		;553b
	ld (0e062h),a		;553d
	or a			;5540
	ret			;5541
l5542h:
	res 7,a		;5542
	dec a			;5544
	ld e,a			;5545
	ld d,000h		;5546
	ld hl,l555bh		;5548
	add hl,de			;554b
	ld a,(0e001h)		;554c
	cp (hl)			;554f
l5550h:
	ret z			;5550
	ld a,(0e062h)		;5551
	res 7,a		;5554
	ld (0e062h),a		;5556
	or a			;5559
	ret			;555a
l555bh:
	ld bc,00107h		;555b
	rlca			;555e
	ld bc,03707h		;555f
	ret			;5562
l5563h:
	xor a			;5563
	ld (0e04bh),a		;5564
	jp sub_40c1h		;5567
sub_556ah:
	ld a,(0e000h)		;556a
	bit 4,a		;556d
	jr z,l5576h		;556f
	xor a			;5571
	ld (0e02eh),a		;5572
	ret			;5575
l5576h:
	ld a,(0e02eh)		;5576
	or a			;5579
	jr z,$-25		;557a
	or a			;557c
	ret			;557d
l557eh:
	pop bc			;557e
	call sub_412fh		;557f
	call sub_4187h		;5582
	xor a			;5585
	ld (0e021h),a		;5586
	inc a			;5589
	ld (0e02eh),a		;558a
	call sub_542fh		;558d
	ld hl,l55f5h		;5590
	call sub_53b4h		;5593
l5596h:
	call sub_40b3h		;5596
	ld a,007h		;5599
	call 00141h		;559b
	bit 2,a		;559e
	jp z,0523ah		;55a0
	call sub_69e9h		;55a3
	cp 001h		;55a6
	jr z,l55b9h		;55a8
	cp 002h		;55aa
	jr nz,l55d7h		;55ac
	ld a,(0e021h)		;55ae
	inc a			;55b1
	cp 017h		;55b2
	jr c,l55c3h		;55b4
	xor a			;55b6
	jr l55c3h		;55b7
l55b9h:
	ld a,(0e021h)		;55b9
	dec a			;55bc
	cp 016h		;55bd
	jr c,l55c3h		;55bf
	ld a,015h		;55c1
l55c3h:
	ld (0e021h),a		;55c3
	ld hl,03a52h		;55c6
	ex af,af'			;55c9
	call 041cah		;55ca
	ex af,af'			;55cd
	call sub_4251h		;55ce
	call l41d0h		;55d1
	call sub_a05fh		;55d4
l55d7h:
	ld a,(0e000h)		;55d7
	bit 4,a		;55da
	jr z,l55e4h		;55dc
	xor a			;55de
	ld (0e02eh),a		;55df
	jr l5596h		;55e2
l55e4h:
	ld hl,0e02eh		;55e4
	ld a,(hl)			;55e7
	or a			;55e8
	jr nz,l5596h		;55e9
	inc (hl)			;55eb
	ld a,(0e021h)		;55ec
	inc a			;55ef
	call sub_a07bh		;55f0
	jr l5596h		;55f3
l55f5h:
	dec bc			;55f5
	ld a,(04f53h)		;55f6
	ld d,l			;55f9
	ld c,(hl)			;55fa
	ld b,h			;55fb
	jr nz,l5652h		;55fc
	ld b,l			;55fe
	ld d,e			;55ff
	ld d,h			;5600
	rst 38h			;5601
	ld c,h			;5602
	ld a,(04f53h)		;5603
	ld d,l			;5606
	ld c,(hl)			;5607
	ld b,h			;5608
	jr nz,l562bh		;5609
	jr nc,$+1		;560b
	rst 38h			;560d
	rst 38h			;560e
sub_560fh:
	call 041cah		;560f
	call sub_412fh		;5612
	call sub_4187h		;5615
	call sub_5654h		;5618
	ld hl,l5634h		;561b
	call sub_53b4h		;561e
	ld b,080h		;5621
l5623h:
	push bc			;5623
	call sub_40b3h		;5624
	call sub_41dch		;5627
	pop bc			;562a
l562bh:
	ld a,(0e000h)		;562b
	bit 4,a		;562e
	ret z			;5630
	djnz l5623h		;5631
	ret			;5633
l5634h:
	ld l,h			;5634
	add hl,sp			;5635
	ret p			;5636
	pop af			;5637
	jp p,0f4f3h		;5638
	push af			;563b
	or 0f7h		;563c
	rst 38h			;563e
	adc a,b			;563f
	ld a,(l4f43h)		;5640
	ld c,l			;5643
	ld d,b			;5644
	ld c,c			;5645
	ld c,h			;5646
	ld b,l			;5647
	jr nz,l569ah		;5648
	ld d,d			;564a
	ld b,l			;564b
	ld d,e			;564c
	ld b,l			;564d
	ld c,(hl)			;564e
	ld d,h			;564f
	ld d,e			;5650
	rst 38h			;5651
l5652h:
	rst 38h			;5652
	rst 38h			;5653
sub_5654h:
	ld de,00f80h		;5654
	ld hl,l4cb9h		;5657
	call sub_414bh		;565a
	ld hl,02f80h		;565d
	ld a,0d0h		;5660
	ld bc,00040h		;5662
	jp 00056h		;5665
l5668h:
	nop			;5668
	dec d			;5669
	ld bc,00301h		;566a
	inc a			;566d
	ld a,(hl)			;566e
	ld a,(hl)			;566f
	rst 38h			;5670
	rst 38h			;5671
	rst 38h			;5672
	rst 38h			;5673
	rst 38h			;5674
	nop			;5675
	dec b			;5676
	add a,b			;5677
	add a,b			;5678
	ret nz			;5679
	nop			;567a
	ld l,l			;567b
	ld bc,00301h		;567c
	inc a			;567f
	ld a,(hl)			;5680
	ld a,(hl)			;5681
	rst 38h			;5682
	rst 38h			;5683
	rst 38h			;5684
	rst 38h			;5685
	rst 38h			;5686
	nop			;5687
	dec b			;5688
	add a,b			;5689
	add a,b			;568a
	ret nz			;568b
	nop			;568c
	jr nz,l5692h		;568d
	rlca			;568f
	rlca			;5690
	rrca			;5691
l5692h:
	rrca			;5692
	rra			;5693
	rra			;5694
	ccf			;5695
	rst 38h			;5696
	rst 38h			;5697
	rst 38h			;5698
	rst 38h			;5699
l569ah:
	rst 38h			;569a
	rst 38h			;569b
	rst 38h			;569c
	rst 38h			;569d
	ret nz			;569e
	ret po			;569f
	ret po			;56a0
	ret p			;56a1
	ret p			;56a2
	ret m			;56a3
	ret m			;56a4
	call m,06800h		;56a5
	inc bc			;56a8
	rlca			;56a9
	rlca			;56aa
	rrca			;56ab
	rrca			;56ac
	rra			;56ad
	rra			;56ae
	ccf			;56af
	rst 38h			;56b0
	rst 38h			;56b1
	rst 38h			;56b2
	rst 38h			;56b3
	rst 38h			;56b4
	rst 38h			;56b5
	rst 38h			;56b6
	rst 38h			;56b7
	ret nz			;56b8
	ret po			;56b9
	ret po			;56ba
	ret p			;56bb
	ret p			;56bc
	ret m			;56bd
	ret m			;56be
	call m,01d00h		;56bf
	ld bc,00301h		;56c2
	ccf			;56c5
	ld a,a			;56c6
	ld a,a			;56c7
	rst 38h			;56c8
	rst 38h			;56c9
	rst 38h			;56ca
	rst 38h			;56cb
	rst 38h			;56cc
	rst 20h			;56cd
	rst 20h			;56ce
	jp 081c3h		;56cf
	add a,c			;56d2
	nop			;56d3
	ld (bc),a			;56d4
	call m,0fcfeh		;56d5
	call m,0f9f9h		;56d8
	di			;56db
	di			;56dc
	ld a,a			;56dd
	ld a,a			;56de
	rst 38h			;56df
	rst 38h			;56e0
	rst 38h			;56e1
	rst 38h			;56e2
	cp 0feh		;56e3
	ret nz			;56e5
	ret nz			;56e6
	add a,b			;56e7
	add a,b			;56e8
	nop			;56e9
	rlca			;56ea
	ld bc,00303h		;56eb
	rlca			;56ee
	rlca			;56ef
	ld a,a			;56f0
	rst 38h			;56f1
	rst 38h			;56f2
	rst 38h			;56f3
	rst 38h			;56f4
	cp 0feh		;56f5
	call m,08fc3h		;56f7
	sbc a,a			;56fa
	rra			;56fb
	ccf			;56fc
	ccf			;56fd
	ld a,a			;56fe
	ld a,a			;56ff
	pop hl			;5700
	pop af			;5701
	ld sp,hl			;5702
	ld sp,hl			;5703
	ld sp,hl			;5704
	ld sp,hl			;5705
	ld sp,hl			;5706
	ld sp,hl			;5707
	rst 38h			;5708
	rst 38h			;5709
	rst 38h			;570a
	rst 38h			;570b
	rst 38h			;570c
	rst 38h			;570d
	rst 38h			;570e
	rst 38h			;570f
	ret m			;5710
	call m,0fefeh		;5711
	rst 38h			;5714
	rst 38h			;5715
	rst 38h			;5716
	rst 38h			;5717
	nop			;5718
	ld b,080h		;5719
	add a,b			;571b
	rra			;571c
	rra			;571d
	rra			;571e
	rra			;571f
	rra			;5720
	rra			;5721
	rra			;5722
	rra			;5723
	rst 38h			;5724
	rst 38h			;5725
	rst 38h			;5726
	rst 38h			;5727
	rst 38h			;5728
	rst 38h			;5729
	rst 38h			;572a
	rst 38h			;572b
	rst 20h			;572c
	rst 20h			;572d
	di			;572e
	di			;572f
	ld sp,hl			;5730
	ld sp,hl			;5731
	call m,0fcfch		;5732
	call m,0fefeh		;5735
	rst 38h			;5738
	rst 38h			;5739
	rst 38h			;573a
	rst 38h			;573b
	ccf			;573c
	ld a,a			;573d
	rst 38h			;573e
	ld a,a			;573f
	ld a,a			;5740
	ccf			;5741
	cp a			;5742
	sbc a,a			;5743
	rst 20h			;5744
	rst 20h			;5745
	jp 081c3h		;5746
	add a,c			;5749
	nop			;574a
	ld (bc),a			;574b
	call m,0fefeh		;574c
	rst 38h			;574f
	rst 38h			;5750
	rst 38h			;5751
	rst 38h			;5752
	rst 38h			;5753
	nop			;5754
	dec b			;5755
	add a,b			;5756
	add a,b			;5757
	ret nz			;5758
	nop			;5759
	djnz l575fh		;575a
	rlca			;575c
	rlca			;575d
	rrca			;575e
l575fh:
	rrca			;575f
	rra			;5760
	rra			;5761
	ccf			;5762
	cp 0feh		;5763
	call m,0f8fch		;5765
	ret m			;5768
	ret p			;5769
	ret p			;576a
	nop			;576b
	ex af,af'			;576c
	ld h,a			;576d
	ld h,a			;576e
	rrca			;576f
	rrca			;5770
	rra			;5771
	rra			;5772
	ccf			;5773
	ccf			;5774
	call m,0f8fch		;5775
	ret m			;5778
	ret p			;5779
	ret p			;577a
	call po,000eeh		;577b
	ex af,af'			;577e
	rrca			;577f
	rrca			;5780
	rra			;5781
	rra			;5782
	ccf			;5783
	ccf			;5784
	ld a,a			;5785
	ld a,a			;5786
	call m,0f9f8h		;5787
	pop af			;578a
	di			;578b
	ex (sp),hl			;578c
	rst 20h			;578d
	rst 0			;578e
	rst 38h			;578f
	rst 38h			;5790
	rst 38h			;5791
	rst 38h			;5792
	rst 38h			;5793
	rst 38h			;5794
	rst 38h			;5795
	rst 38h			;5796
	ld sp,hl			;5797
	ld sp,hl			;5798
	ld sp,hl			;5799
	ld sp,hl			;579a
	ld sp,hl			;579b
	ld sp,hl			;579c
	ld sp,hl			;579d
	ld sp,hl			;579e
	cp 0feh		;579f
	cp 0feh		;57a1
	cp 0feh		;57a3
	cp 0feh		;57a5
	ld a,a			;57a7
	ld a,a			;57a8
	ccf			;57a9
	ccf			;57aa
	rra			;57ab
	rra			;57ac
	rrca			;57ad
	rrca			;57ae
	ret nz			;57af
	ret nz			;57b0
	ret po			;57b1
	ret po			;57b2
	ret p			;57b3
	ret p			;57b4
	ret m			;57b5
	ret m			;57b6
	rra			;57b7
	rra			;57b8
	rra			;57b9
	rra			;57ba
	rra			;57bb
	rra			;57bc
	rra			;57bd
	rra			;57be
	rst 20h			;57bf
	rst 20h			;57c0
	ex (sp),hl			;57c1
	ex (sp),hl			;57c2
	pop hl			;57c3
	pop hl			;57c4
	ret po			;57c5
	ret po			;57c6
	cp 0feh		;57c7
	rst 38h			;57c9
	rst 38h			;57ca
	rst 38h			;57cb
	rst 38h			;57cc
	rst 38h			;57cd
	rst 38h			;57ce
	ld a,a			;57cf
	ld a,a			;57d0
	ccf			;57d1
	ccf			;57d2
	sbc a,a			;57d3
	sbc a,a			;57d4
	rst 8			;57d5
	rst 8			;57d6
	sbc a,0ceh		;57d7
	call pe,0f0e4h		;57d9
	ret p			;57dc
	ret m			;57dd
	ret m			;57de
	nop			;57df
	ex af,af'			;57e0
	ld a,a			;57e1
	ld a,a			;57e2
	ccf			;57e3
	ccf			;57e4
	rra			;57e5
	rra			;57e6
	rrca			;57e7
	rrca			;57e8
	ret nz			;57e9
	ret po			;57ea
	ret po			;57eb
	ret p			;57ec
	ret p			;57ed
	ret m			;57ee
	ret m			;57ef
	call m,00d00h		;57f0
	ld bc,00301h		;57f3
	ccf			;57f6
	ld a,a			;57f7
	ld a,a			;57f8
	rst 38h			;57f9
	rst 38h			;57fa
	rst 38h			;57fb
	rst 38h			;57fc
	rst 38h			;57fd
	ret po			;57fe
	ret po			;57ff
	ret nz			;5800
	ret nz			;5801
	add a,b			;5802
	add a,b			;5803
	inc bc			;5804
	inc bc			;5805
	nop			;5806
	ld b,0ffh		;5807
	rst 38h			;5809
	ld a,a			;580a
	ld a,a			;580b
	rst 38h			;580c
	rst 38h			;580d
	nop			;580e
	ld (bc),a			;580f
	rst 38h			;5810
	rst 38h			;5811
	ret nz			;5812
	ret nz			;5813
	add a,b			;5814
	add a,b			;5815
	nop			;5816
	ld (bc),a			;5817
	rst 38h			;5818
	rst 38h			;5819
	nop			;581a
	ld (bc),a			;581b
	ld bc,00301h		;581c
	inc bc			;581f
	rst 20h			;5820
	rst 0			;5821
	rst 38h			;5822
	rst 38h			;5823
	rst 38h			;5824
	rst 38h			;5825
	rst 38h			;5826
	cp 0feh		;5827
	call m,sub_8fcfh		;5829
	sbc a,a			;582c
	rra			;582d
	ccf			;582e
	ccf			;582f
	ld a,a			;5830
	ld a,a			;5831
	rst 38h			;5832
	rst 38h			;5833
	rst 38h			;5834
	rst 30h			;5835
	rst 30h			;5836
	rst 20h			;5837
	rst 20h			;5838
	rst 0			;5839
	ld sp,hl			;583a
	ld sp,hl			;583b
	ld sp,hl			;583c
	ld sp,hl			;583d
	ld sp,hl			;583e
	ld sp,hl			;583f
	ld sp,hl			;5840
	ld sp,hl			;5841
	cp 0feh		;5842
	cp 0feh		;5844
	cp 0feh		;5846
	cp 0feh		;5848
	rlca			;584a
	rlca			;584b
	inc bc			;584c
	inc bc			;584d
	ld bc,00001h		;584e
	ld (bc),a			;5851
	call m,0fefch		;5852
	cp 0ffh		;5855
	rst 38h			;5857
	rst 38h			;5858
	rst 38h			;5859
	rra			;585a
	rra			;585b
	rra			;585c
	rra			;585d
	rra			;585e
	rra			;585f
	sbc a,a			;5860
	sbc a,a			;5861
	ret po			;5862
	ret po			;5863
	ret po			;5864
	ret po			;5865
	ret po			;5866
	ret po			;5867
	ret po			;5868
	ret po			;5869
	ld a,a			;586a
	ld a,a			;586b
	ccf			;586c
	ccf			;586d
	rra			;586e
	rra			;586f
	rrca			;5870
	rrca			;5871
	rst 20h			;5872
	rst 20h			;5873
	di			;5874
	di			;5875
	ld sp,hl			;5876
	ld sp,hl			;5877
	call m,0fcfch		;5878
	call m,0fefeh		;587b
	rst 38h			;587e
	rst 38h			;587f
	rst 38h			;5880
	ld a,a			;5881
	nop			;5882
	ld b,080h		;5883
	add a,b			;5885
	nop			;5886
	ld c,07fh		;5887
	ld a,a			;5889
	nop			;588a
	ld b,0c0h		;588b
	add a,b			;588d
	inc bc			;588e
	ld bc,00001h		;588f
	dec b			;5892
	rst 38h			;5893
	rst 38h			;5894
	rst 38h			;5895
	rst 38h			;5896
	rst 38h			;5897
	ld a,a			;5898
	ld a,a			;5899
	ccf			;589a
	inc bc			;589b
	inc bc			;589c
	add a,e			;589d
	add a,e			;589e
	jp 0e0c3h		;589f
	ret po			;58a2
	rst 38h			;58a3
	rst 38h			;58a4
	rst 38h			;58a5
	rst 38h			;58a6
	rst 38h			;58a7
	rst 38h			;58a8
	nop			;58a9
	ld (bc),a			;58aa
	rst 38h			;58ab
	rst 38h			;58ac
	rst 38h			;58ad
	rst 38h			;58ae
	rst 38h			;58af
	rst 38h			;58b0
	rlca			;58b1
	rlca			;58b2
	rst 38h			;58b3
	rst 38h			;58b4
	rst 38h			;58b5
	rst 38h			;58b6
	rst 38h			;58b7
	cp 0feh		;58b8
	call m,sub_8fcfh		;58ba
	sbc a,a			;58bd
	rra			;58be
	ccf			;58bf
	ccf			;58c0
	ld a,a			;58c1
	ld a,a			;58c2
	call m,0f9f8h		;58c3
	pop af			;58c6
	di			;58c7
	ex (sp),hl			;58c8
	rst 20h			;58c9
	rst 0			;58ca
	rst 38h			;58cb
	rst 38h			;58cc
	rst 38h			;58cd
	rst 38h			;58ce
	rst 38h			;58cf
	cp 0feh		;58d0
	call m,l87c6h+1		;58d2
	add a,a			;58d5
	rlca			;58d6
	rlca			;58d7
	rlca			;58d8
	rlca			;58d9
	rlca			;58da
	ld sp,hl			;58db
	ld sp,hl			;58dc
	ld sp,hl			;58dd
	ld sp,hl			;58de
	ld sp,hl			;58df
	ld sp,hl			;58e0
	ld sp,hl			;58e1
	ld sp,hl			;58e2
	cp 0feh		;58e3
	cp 0feh		;58e5
	cp 0feh		;58e7
	cp 0feh		;58e9
	nop			;58eb
	ld (bc),a			;58ec
	ld bc,00301h		;58ed
	inc bc			;58f0
	rlca			;58f1
	rlca			;58f2
	rst 38h			;58f3
	rst 38h			;58f4
	rst 38h			;58f5
	rst 38h			;58f6
	cp 0feh		;58f7
	call m,09ffch		;58f9
	sbc a,a			;58fc
	rra			;58fd
	rra			;58fe
	rra			;58ff
	rra			;5900
	rra			;5901
	rra			;5902
	ret po			;5903
	ret po			;5904
	ret po			;5905
	ret po			;5906
	ret po			;5907
	ret po			;5908
	ret po			;5909
	ret po			;590a
	rrca			;590b
	rrca			;590c
	rra			;590d
	rra			;590e
	ccf			;590f
	ccf			;5910
	ld a,a			;5911
	ld a,a			;5912
	call m,0f9fch		;5913
	ld sp,hl			;5916
	di			;5917
	di			;5918
	rst 20h			;5919
	rst 20h			;591a
	ld a,a			;591b
	ld a,a			;591c
	ccf			;591d
	ccf			;591e
	sbc a,a			;591f
	sbc a,a			;5920
	rst 8			;5921
	rst 8			;5922
	ret nz			;5923
	ret nz			;5924
	ret po			;5925
	ret po			;5926
	ret p			;5927
	ret p			;5928
	ret m			;5929
	ret m			;592a
	nop			;592b
	ld (bc),a			;592c
	ld bc,00301h		;592d
	inc bc			;5930
	rlca			;5931
	rlca			;5932
	rst 38h			;5933
	rst 38h			;5934
	rst 38h			;5935
	cp 0feh		;5936
	call m,0f8fch		;5938
	nop			;593b
	djnz $+65		;593c
	rra			;593e
	rra			;593f
	rrca			;5940
	rrca			;5941
	rlca			;5942
	rlca			;5943
	inc bc			;5944
	ret p			;5945
	ret p			;5946
	ret m			;5947
	ret m			;5948
	ld sp,hl			;5949
	pop af			;594a
	di			;594b
	di			;594c
	ld a,a			;594d
	ld a,a			;594e
	rst 38h			;594f
	rst 38h			;5950
	rst 38h			;5951
	rst 38h			;5952
	cp 0ffh		;5953
	rst 8			;5955
	rst 8			;5956
	sbc a,a			;5957
	sbc a,a			;5958
	ccf			;5959
	nop			;595a
	ld (bc),a			;595b
	rst 38h			;595c
	call m,0f9f8h		;595d
	pop af			;5960
	di			;5961
	inc bc			;5962
	rlca			;5963
	rst 38h			;5964
	rst 38h			;5965
	rst 38h			;5966
	rst 38h			;5967
	rst 38h			;5968
	rst 38h			;5969
	cp 0feh		;596a
	call m,sub_8fcfh		;596c
	sbc a,a			;596f
	rra			;5970
	ccf			;5971
	ccf			;5972
	ld a,a			;5973
	ld a,a			;5974
	call m,0f8f8h		;5975
	ret p			;5978
	ret p			;5979
	ret po			;597a
	ret po			;597b
	jp 00707h		;597c
	rlca			;597f
	rlca			;5980
	rlca			;5981
	rlca			;5982
	rlca			;5983
	rst 38h			;5984
	ld sp,hl			;5985
	ld sp,hl			;5986
	ld sp,hl			;5987
	ld sp,hl			;5988
	ld sp,hl			;5989
	ld sp,hl			;598a
	ld sp,hl			;598b
	ld sp,hl			;598c
	cp 0feh		;598d
	cp 0feh		;598f
	cp 0feh		;5991
	cp 0feh		;5993
	rrca			;5995
	rrca			;5996
	rra			;5997
	rrca			;5998
	rrca			;5999
	rlca			;599a
	rlca			;599b
	inc bc			;599c
	ret m			;599d
	ret m			;599e
	ret p			;599f
	ret m			;59a0
	ret m			;59a1
	call m,0fffch		;59a2
	rra			;59a5
	rra			;59a6
	rra			;59a7
	rra			;59a8
	rra			;59a9
	rra			;59aa
	rra			;59ab
	rst 38h			;59ac
	ret po			;59ad
	ret po			;59ae
	pop hl			;59af
	pop hl			;59b0
	ex (sp),hl			;59b1
	ex (sp),hl			;59b2
	rst 20h			;59b3
	rst 38h			;59b4
	rst 38h			;59b5
	rst 38h			;59b6
	rst 38h			;59b7
	rst 38h			;59b8
	rst 38h			;59b9
	rst 38h			;59ba
	cp 0feh		;59bb
	rst 8			;59bd
	rst 8			;59be
	sbc a,a			;59bf
	sbc a,a			;59c0
	rra			;59c1
	rrca			;59c2
	rrca			;59c3
	rlca			;59c4
	rst 20h			;59c5
	rst 20h			;59c6
	di			;59c7
	di			;59c8
	ld sp,hl			;59c9
	ld sp,hl			;59ca
	call m,0fcfch		;59cb
	call m,0fefeh		;59ce
	rst 38h			;59d1
	rst 38h			;59d2
	rst 38h			;59d3
	rst 38h			;59d4
	rrca			;59d5
	rrca			;59d6
	rra			;59d7
	rra			;59d8
	ccf			;59d9
	ccf			;59da
	sbc a,a			;59db
	sbc a,a			;59dc
	ret m			;59dd
	ret p			;59de
	ret p			;59df
	ret po			;59e0
	ret po			;59e1
	ret nz			;59e2
	ret nz			;59e3
	add a,b			;59e4
	nop			;59e5
	djnz l59ebh		;59e6
	ld bc,00001h		;59e8
l59ebh:
	dec b			;59eb
	di			;59ec
	di			;59ed
	di			;59ee
	di			;59ef
	ld sp,hl			;59f0
	ld a,c			;59f1
	ld a,h			;59f2
	ld a,0ffh		;59f3
	rst 38h			;59f5
	rst 38h			;59f6
	rst 38h			;59f7
	rst 38h			;59f8
	rst 38h			;59f9
	ld a,a			;59fa
	nop			;59fb
	ld bc,0ffffh		;59fc
	rst 38h			;59ff
	rst 38h			;5a00
	rst 38h			;5a01
	rst 38h			;5a02
	rst 38h			;5a03
	nop			;5a04
	ld bc,0ffffh		;5a05
	rst 38h			;5a08
	rst 38h			;5a09
	rst 38h			;5a0a
	rst 38h			;5a0b
	cp 000h		;5a0c
	ld bc,0f8fch		;5a0e
	pop af			;5a11
	pop hl			;5a12
	jp 00783h		;5a13
	nop			;5a16
	ld bc,0ffffh		;5a17
	rst 38h			;5a1a
	rst 38h			;5a1b
	rst 38h			;5a1c
	cp 0feh		;5a1d
	nop			;5a1f
	ld bc,l83c3h		;5a20
	add a,e			;5a23
	inc bc			;5a24
	inc bc			;5a25
	inc bc			;5a26
	inc bc			;5a27
	nop			;5a28
	ld bc,0ffffh		;5a29
	rst 38h			;5a2c
	rst 38h			;5a2d
	rst 38h			;5a2e
	rst 38h			;5a2f
	rst 38h			;5a30
	nop			;5a31
	ld bc,0f9f9h		;5a32
	ld sp,hl			;5a35
	ld sp,hl			;5a36
	ld sp,hl			;5a37
	ld sp,hl			;5a38
	ld sp,hl			;5a39
	nop			;5a3a
	ld bc,0fefeh		;5a3b
	cp 0feh		;5a3e
	cp 0feh		;5a40
	cp 000h		;5a42
	ld bc,00103h		;5a44
	ld bc,00500h		;5a47
	rst 38h			;5a4a
	rst 38h			;5a4b
	rst 38h			;5a4c
	rst 38h			;5a4d
	rst 38h			;5a4e
	ld a,a			;5a4f
	ld a,a			;5a50
	nop			;5a51
	ld bc,0ffffh		;5a52
	rst 38h			;5a55
	rst 38h			;5a56
	rst 38h			;5a57
	rst 38h			;5a58
	rst 38h			;5a59
	nop			;5a5a
	ld bc,0ffffh		;5a5b
	rst 38h			;5a5e
	rst 38h			;5a5f
	rst 38h			;5a60
	rst 38h			;5a61
	rst 38h			;5a62
	nop			;5a63
	ld bc,0fcfch		;5a64
	ret m			;5a67
	ret m			;5a68
	ret p			;5a69
	ret p			;5a6a
	ret po			;5a6b
	nop			;5a6c
	ld bc,00307h		;5a6d
	inc bc			;5a70
	ld bc,00001h		;5a71
	inc bc			;5a74
	cp 0feh		;5a75
	rst 38h			;5a77
	rst 38h			;5a78
	rst 38h			;5a79
	rst 38h			;5a7a
	rst 38h			;5a7b
	ld a,a			;5a7c
	ld a,a			;5a7d
	ld a,a			;5a7e
	ccf			;5a7f
	ccf			;5a80
	sbc a,a			;5a81
	sbc a,a			;5a82
	rst 8			;5a83
	ret nz			;5a84
	rst 8			;5a85
	rst 8			;5a86
	rst 20h			;5a87
	and 0f2h		;5a88
	ret p			;5a8a
	ret m			;5a8b
	nop			;5a8c
	ld bc,00080h		;5a8d
	rra			;5a90
	ccf			;5a91
	rra			;5a92
	rra			;5a93
	rrca			;5a94
	rrca			;5a95
	rlca			;5a96
	rlca			;5a97
	inc bc			;5a98
	nop			;5a99
	ld bc,0ffffh		;5a9a
	rst 38h			;5a9d
	rst 38h			;5a9e
	rst 38h			;5a9f
	rst 38h			;5aa0
	rst 38h			;5aa1
	nop			;5aa2
	ld bc,0f8f8h		;5aa3
	ret p			;5aa6
	ret p			;5aa7
	ret po			;5aa8
	ret po			;5aa9
	ret nz			;5aaa
	nop			;5aab
	ld l,b			;5aac
	ld a,a			;5aad
	ccf			;5aae
	ccf			;5aaf
	rra			;5ab0
	rra			;5ab1
	rrca			;5ab2
	rrca			;5ab3
	rlca			;5ab4
	ret po			;5ab5
	rst 38h			;5ab6
	rst 38h			;5ab7
	rst 38h			;5ab8
	rst 38h			;5ab9
	rst 38h			;5aba
	rst 38h			;5abb
	rst 38h			;5abc
	nop			;5abd
	ld bc,0f0f0h		;5abe
	ret po			;5ac1
	ret po			;5ac2
	ret nz			;5ac3
	ret nz			;5ac4
	add a,b			;5ac5
	nop			;5ac6
	jr nz,l5acch		;5ac7
	ld bc,00001h		;5ac9
l5acch:
	dec b			;5acc
	rst 38h			;5acd
	rst 38h			;5ace
	rst 38h			;5acf
	rst 38h			;5ad0
	rst 38h			;5ad1
	ld a,(hl)			;5ad2
	ld a,(hl)			;5ad3
	inc a			;5ad4
	ret nz			;5ad5
	add a,b			;5ad6
	add a,b			;5ad7
	nop			;5ad8
	ld l,l			;5ad9
	rlca			;5ada
	inc bc			;5adb
	inc bc			;5adc
	ld bc,00001h		;5add
	inc bc			;5ae0
	rst 38h			;5ae1
	rst 38h			;5ae2
	rst 38h			;5ae3
	cp 0feh		;5ae4
	call m,sub_78fch		;5ae6
	add a,b			;5ae9
	nop			;5aea
	rst 38h			;5aeb
l5aech:
	ret po			;5aec
	ret po			;5aed
	ret po			;5aee
	ret po			;5aef
	ret po			;5af0
	ret po			;5af1
	ret po			;5af2
	ret po			;5af3
	ret po			;5af4
	ret po			;5af5
	ret po			;5af6
	ret po			;5af7
	ret po			;5af8
	ret po			;5af9
	ret po			;5afa
	ret po			;5afb
	ret p			;5afc
	ret p			;5afd
	ld b,b			;5afe
	ld d,b			;5aff
	ld d,b			;5b00
	ld (hl),b			;5b01
	ld (hl),b			;5b02
	ld (hl),b			;5b03
	ld (hl),b			;5b04
	ld (hl),b			;5b05
	ld (hl),b			;5b06
	ld (hl),b			;5b07
	ld (hl),b			;5b08
	ld (hl),b			;5b09
	ld (hl),b			;5b0a
	ld (hl),b			;5b0b
	ld (hl),b			;5b0c
	ld (hl),b			;5b0d
	ld (hl),b			;5b0e
	ld (hl),b			;5b0f
	ld (hl),b			;5b10
	ld (hl),b			;5b11
	ret p			;5b12
	ret po			;5b13
	nop			;5b14
	ld b,b			;5b15
	ld b,b			;5b16
	ld d,b			;5b17
	ld d,b			;5b18
	ld d,b			;5b19
	ld d,b			;5b1a
	ld d,b			;5b1b
	ld d,b			;5b1c
	ld d,b			;5b1d
	ld d,b			;5b1e
	ld d,b			;5b1f
	ld d,b			;5b20
	ld d,b			;5b21
	ld d,b			;5b22
	ld d,b			;5b23
	ld d,b			;5b24
	ld d,b			;5b25
	ret p			;5b26
	ret p			;5b27
	ld b,b			;5b28
	ld b,b			;5b29
	ld b,b			;5b2a
	ld b,b			;5b2b
	ld b,b			;5b2c
	ld b,b			;5b2d
	ld b,b			;5b2e
	ld b,b			;5b2f
	ld b,b			;5b30
	ld b,b			;5b31
	ld b,b			;5b32
	ld b,b			;5b33
	ld b,b			;5b34
	ld b,b			;5b35
	ld b,b			;5b36
	ld b,b			;5b37
	ld b,b			;5b38
	ld b,b			;5b39
	ld b,b			;5b3a
	ld b,b			;5b3b
sub_5b3ch:
	ld de,0e02dh		;5b3c
	ld a,(de)			;5b3f
	bit 7,a		;5b40
	ret z			;5b42
	ld hl,0e02ch		;5b43
	dec (hl)			;5b46
	ret nz			;5b47
	ld (hl),004h		;5b48
	ld a,(de)			;5b4a
	ld b,a			;5b4b
	inc a			;5b4c
	and 003h		;5b4d
	jr z,l5b94h		;5b4f
	ld c,a			;5b51
	ld a,b			;5b52
	and 0f0h		;5b53
	or c			;5b55
	ld (de),a			;5b56
	bit 5,a		;5b57
	jr nz,l5b60h		;5b59
	ld hl,l5bd8h		;5b5b
	jr l5b63h		;5b5e
l5b60h:
	ld hl,0d540h		;5b60
l5b63h:
	and 003h		;5b63
	bit 6,b		;5b65
	call z,sub_5b8ch		;5b67
	dec a			;5b6a
	ld e,a			;5b6b
	add a,a			;5b6c
	add a,e			;5b6d
	add a,a			;5b6e
	add a,a			;5b6f
	add a,a			;5b70
	add a,a			;5b71
	add a,a			;5b72
	ld e,a			;5b73
	ld d,000h		;5b74
	add hl,de			;5b76
l5b77h:
	ld de,01800h		;5b77
	call 041cah		;5b7a
	ld bc,00060h		;5b7d
	call sub_4299h		;5b80
	jp l41d0h		;5b83
l5b86h:
	pop hl			;5b86
	ld hl,093c9h		;5b87
	jr l5b77h		;5b8a
sub_5b8ch:
	ld b,a			;5b8c
	ld a,003h		;5b8d
	sub b			;5b8f
	or a			;5b90
	jr z,l5b86h		;5b91
	ret			;5b93
l5b94h:
	ex de,hl			;5b94
	res 7,(hl)		;5b95
	ret			;5b97
sub_5b98h:
	ld hl,0d540h		;5b98
	ld de,l5bd8h		;5b9b
	ld b,009h		;5b9e
l5ba0h:
	push bc			;5ba0
	push hl			;5ba1
	push de			;5ba2
	call sub_5bb2h		;5ba3
	ld bc,00020h		;5ba6
	pop hl			;5ba9
	add hl,bc			;5baa
	ex de,hl			;5bab
	pop hl			;5bac
	add hl,bc			;5bad
	pop bc			;5bae
	djnz l5ba0h		;5baf
	ret			;5bb1
sub_5bb2h:
	push hl			;5bb2
	push de			;5bb3
	ld bc,00010h		;5bb4
	add hl,bc			;5bb7
	exx			;5bb8
	ld b,010h		;5bb9
	call sub_5bc8h		;5bbb
	pop hl			;5bbe
	ld bc,00010h		;5bbf
	add hl,bc			;5bc2
	pop de			;5bc3
	ex de,hl			;5bc4
	exx			;5bc5
	ld b,010h		;5bc6
sub_5bc8h:
	exx			;5bc8
	ld a,(de)			;5bc9
	ld b,008h		;5bca
l5bcch:
	rla			;5bcc
	rr c		;5bcd
	djnz l5bcch		;5bcf
	ld (hl),c			;5bd1
	inc hl			;5bd2
	inc de			;5bd3
	exx			;5bd4
	djnz sub_5bc8h		;5bd5
	ret			;5bd7
l5bd8h:
	ex af,af'			;5bd8
	inc b			;5bd9
	inc b			;5bda
	inc bc			;5bdb
	ld bc,02141h		;5bdc
	ld sp,0013bh		;5bdf
	ld hl,00000h		;5be2
	nop			;5be5
	nop			;5be6
	nop			;5be7
	nop			;5be8
	ld b,b			;5be9
	jr nc,l5c1ch		;5bea
	cp b			;5bec
	sbc a,h			;5bed
	adc a,h			;5bee
	add a,b			;5bef
	nop			;5bf0
	nop			;5bf1
	ld b,b			;5bf2
	nop			;5bf3
	nop			;5bf4
	nop			;5bf5
	nop			;5bf6
	nop			;5bf7
	nop			;5bf8
	nop			;5bf9
	nop			;5bfa
	nop			;5bfb
	ld (bc),a			;5bfc
	ld b,002h		;5bfd
	nop			;5bff
	nop			;5c00
	ex af,af'			;5c01
l5c02h:
	inc e			;5c02
	inc a			;5c03
	ld a,01fh		;5c04
	rrca			;5c06
	nop			;5c07
	nop			;5c08
	nop			;5c09
	nop			;5c0a
	nop			;5c0b
	nop			;5c0c
	nop			;5c0d
	nop			;5c0e
	ld e,01fh		;5c0f
	rra			;5c11
	rra			;5c12
	ld c,00eh		;5c13
	nop			;5c15
	nop			;5c16
	nop			;5c17
	nop			;5c18
	ex af,af'			;5c19
	ex af,af'			;5c1a
	inc b			;5c1b
l5c1ch:
	ld c,h			;5c1c
	adc a,b			;5c1d
	call z,sub_444eh		;5c1e
	halt			;5c21
	ld b,d			;5c22
	inc bc			;5c23
	ld b,b			;5c24
	ld h,b			;5c25
	jr nc,l5c37h		;5c26
	nop			;5c28
	nop			;5c29
	nop			;5c2a
	nop			;5c2b
	ld b,b			;5c2c
	ld h,b			;5c2d
	ld (hl),b			;5c2e
	ld h,b			;5c2f
	ret po			;5c30
	ret po			;5c31
	and b			;5c32
	sub b			;5c33
	djnz l5c42h		;5c34
	nop			;5c36
l5c37h:
	nop			;5c37
	nop			;5c38
	rlca			;5c39
	ld bc,03e40h		;5c3a
	rlca			;5c3d
	ld bc,00101h		;5c3e
	ld h,b			;5c41
l5c42h:
	jr nc,l5c4ch		;5c42
	inc b			;5c44
	nop			;5c45
	nop			;5c46
	nop			;5c47
	nop			;5c48
	ret nz			;5c49
	ret p			;5c4a
	ret po			;5c4b
l5c4ch:
	nop			;5c4c
	nop			;5c4d
	nop			;5c4e
	nop			;5c4f
	add a,b			;5c50
	ret nz			;5c51
	nop			;5c52
	nop			;5c53
	nop			;5c54
	nop			;5c55
	nop			;5c56
	nop			;5c57
	nop			;5c58
	nop			;5c59
	nop			;5c5a
	nop			;5c5b
	nop			;5c5c
	ex af,af'			;5c5d
	ld c,000h		;5c5e
	nop			;5c60
	nop			;5c61
	ld (bc),a			;5c62
	inc bc			;5c63
	inc bc			;5c64
	rlca			;5c65
	rlca			;5c66
	nop			;5c67
	nop			;5c68
	nop			;5c69
	nop			;5c6a
	ld e,03eh		;5c6b
	rra			;5c6d
	rra			;5c6e
	rlca			;5c6f
	nop			;5c70
	nop			;5c71
	nop			;5c72
	add a,b			;5c73
	ret po			;5c74
	ret p			;5c75
	ret po			;5c76
	nop			;5c77
l5c78h:
	nop			;5c78
	nop			;5c79
	nop			;5c7a
	nop			;5c7b
	ld b,c			;5c7c
	jr nc,l5c8fh		;5c7d
	ld e,09eh		;5c7f
	adc a,a			;5c81
	ld b,l			;5c82
	inc (hl)			;5c83
	jr l5c8eh		;5c84
	nop			;5c86
	rlca			;5c87
	nop			;5c88
	nop			;5c89
	nop			;5c8a
	nop			;5c8b
	ret nz			;5c8c
	ret po			;5c8d
l5c8eh:
	ret po			;5c8e
l5c8fh:
	ret c			;5c8f
	cpl			;5c90
	inc hl			;5c91
	ret po			;5c92
	nop			;5c93
	nop			;5c94
	ex af,af'			;5c95
	jr l5c78h		;5c96
	nop			;5c98
	ld bc,03e1fh		;5c99
	nop			;5c9c
	ld c,01fh		;5c9d
	pop hl			;5c9f
	ld bc,00000h		;5ca0
	ld b,01eh		;5ca3
	ld bc,00000h		;5ca5
	nop			;5ca8
	add a,b			;5ca9
	add a,b			;5caa
	nop			;5cab
	nop			;5cac
	nop			;5cad
	jr nz,l5cb0h		;5cae
l5cb0h:
	ret nz			;5cb0
	nop			;5cb1
	nop			;5cb2
	nop			;5cb3
	nop			;5cb4
	add a,b			;5cb5
	nop			;5cb6
	nop			;5cb7
	nop			;5cb8
	nop			;5cb9
	nop			;5cba
	nop			;5cbb
	nop			;5cbc
	nop			;5cbd
	nop			;5cbe
	ld e,00ch		;5cbf
	nop			;5cc1
	nop			;5cc2
	nop			;5cc3
	nop			;5cc4
	nop			;5cc5
	nop			;5cc6
	nop			;5cc7
	jr nc,l5d42h		;5cc8
	ld a,h			;5cca
	cp 0feh		;5ccb
	nop			;5ccd
	nop			;5cce
	nop			;5ccf
	nop			;5cd0
	nop			;5cd1
l5cd2h:
	cp 0feh		;5cd2
	call m,sub_7078h		;5cd4
	nop			;5cd7
	nop			;5cd8
	nop			;5cd9
	nop			;5cda
l5cdbh:
	ld bc,00107h		;5cdb
	nop			;5cde
	nop			;5cdf
	jp p,00f1fh		;5ce0
	ld bc,01e21h		;5ce3
	ld bc,00000h		;5ce6
	nop			;5ce9
	nop			;5cea
	nop			;5ceb
	ld bc,0c0ffh		;5cec
	ret po			;5cef
	jr nz,l5cd2h		;5cf0
	ld bc,00201h		;5cf2
	inc b			;5cf5
	adc a,b			;5cf6
	jr nc,$+60		;5cf7
	jr c,l5cdbh		;5cf9
	cp 001h		;5cfb
	jp z,l5d48h		;5cfd
	cp 002h		;5d00
	jp z,l5d64h		;5d02
	xor a			;5d05
	ld (0e052h),a		;5d06
	ld b,030h		;5d09
l5d0bh:
	push bc			;5d0b
	call sub_5d25h		;5d0c
	call sub_40b3h		;5d0f
	call sub_45e9h		;5d12
	call sub_6f90h		;5d15
	call sub_4c75h		;5d18
	call sub_5b3ch		;5d1b
	call sub_5dd6h		;5d1e
	pop bc			;5d21
	djnz l5d0bh		;5d22
	ret			;5d24
sub_5d25h:
	ld hl,0e02ah		;5d25
	inc (hl)			;5d28
	bit 0,(hl)		;5d29
	ret z			;5d2b
	ld hl,0d887h		;5d2c
	ld de,0d89fh		;5d2f
	ld bc,00228h		;5d32
	lddr		;5d35
	ld hl,0daffh		;5d37
	ld bc,00018h		;5d3a
	lddr		;5d3d
	ld de,0daffh		;5d3f
l5d42h:
	ld bc,00228h		;5d42
	lddr		;5d45
	ret			;5d47
l5d48h:
	ld b,018h		;5d48
l5d4ah:
	push bc			;5d4a
	call sub_5dabh		;5d4b
	call sub_40b3h		;5d4e
	call sub_45e9h		;5d51
	call sub_6f90h		;5d54
	call sub_4c75h		;5d57
	call sub_5b3ch		;5d5a
	pop bc			;5d5d
l5d5eh:
	call sub_5dd6h		;5d5e
	djnz l5d4ah		;5d61
	ret			;5d63
l5d64h:
	ld b,018h		;5d64
l5d66h:
	push bc			;5d66
	call sub_5d80h		;5d67
	call sub_40b3h		;5d6a
	call sub_45e9h		;5d6d
	call sub_6f90h		;5d70
	call sub_4c75h		;5d73
	call sub_5b3ch		;5d76
	pop bc			;5d79
	call sub_5dd6h		;5d7a
	djnz l5d66h		;5d7d
	ret			;5d7f
sub_5d80h:
	ld hl,0d661h		;5d80
	ld de,0d660h		;5d83
	ld bc,0023fh		;5d86
	ldir		;5d89
	ld hl,0dae8h		;5d8b
	ld bc,0ffe8h		;5d8e
	exx			;5d91
	ld b,018h		;5d92
l5d94h:
	exx			;5d94
	ld a,(hl)			;5d95
	ld (de),a			;5d96
	add hl,bc			;5d97
	ex de,hl			;5d98
	add hl,bc			;5d99
	ex de,hl			;5d9a
	exx			;5d9b
	djnz l5d94h		;5d9c
	exx			;5d9e
	ld hl,0d8c1h		;5d9f
	ld de,0d8c0h		;5da2
	ld bc,0023fh		;5da5
	ldir		;5da8
	ret			;5daa
sub_5dabh:
	ld hl,0d89eh		;5dab
	ld de,0d89fh		;5dae
	ld bc,0023fh		;5db1
	lddr		;5db4
	ld hl,0d8d7h		;5db6
	ld bc,00018h		;5db9
	exx			;5dbc
	ld b,018h		;5dbd
l5dbfh:
	exx			;5dbf
	ld a,(hl)			;5dc0
	ld (de),a			;5dc1
	add hl,bc			;5dc2
	ex de,hl			;5dc3
	add hl,bc			;5dc4
	ex de,hl			;5dc5
	exx			;5dc6
	djnz l5dbfh		;5dc7
	exx			;5dc9
	ld hl,0dafeh		;5dca
	ld de,0daffh		;5dcd
	ld bc,0023fh		;5dd0
	lddr		;5dd3
	ret			;5dd5
sub_5dd6h:
	ld a,b			;5dd6
	cp 00fh		;5dd7
	ret nz			;5dd9
	ld hl,0e052h		;5dda
	ld a,(hl)			;5ddd
	or a			;5dde
	ret z			;5ddf
	ld (hl),000h		;5de0
	ld (0e02dh),a		;5de2
	ld a,001h		;5de5
	ld (0e02ch),a		;5de7
	ret			;5dea
l5debh:
	push bc			;5deb
l5dech:
	call sub_40b3h		;5dec
	call sub_6f90h		;5def
	call sub_4c75h		;5df2
	ld hl,0e02ah		;5df5
	inc (hl)			;5df8
	bit 0,(hl)		;5df9
	jr z,l5dech		;5dfb
	call sub_5e07h		;5dfd
	call sub_45e9h		;5e00
	pop bc			;5e03
	djnz l5debh		;5e04
l5e06h:
	ret			;5e06
sub_5e07h:
	ld hl,0d6d8h		;5e07
	ld de,0d660h		;5e0a
	ld bc,00048h		;5e0d
	ldir		;5e10
	ld hl,0d660h		;5e12
	ld bc,001f8h		;5e15
	ldir		;5e18
	ret			;5e1a
l5e1bh:
	call sub_a05fh		;5e1b
	ld bc,l404bh		;5e1e
	push bc			;5e21
	ld hl,l5ee1h		;5e22
	call sub_53b4h		;5e25
	ld a,001h		;5e28
	ld (0d000h),a		;5e2a
	xor a			;5e2d
l5e2eh:
	ld (0e00bh),a		;5e2e
	ld hl,00000h		;5e31
	ld (0e04eh),hl		;5e34
	call sub_50c7h		;5e37
l5e3ah:
	ld a,0ffh		;5e3a
	ld (0e02eh),a		;5e3c
	call sub_a05fh		;5e3f
	call 041cah		;5e42
	call sub_41b0h		;5e45
	call sub_4187h		;5e48
	call sub_461bh		;5e4b
	call sub_45deh		;5e4e
l5e51h:
	call l41d0h		;5e51
	call sub_40b3h		;5e54
	call sub_4c75h		;5e57
	call sub_69e9h		;5e5a
	cp 002h		;5e5d
	jr z,l5e7eh		;5e5f
	cp 001h		;5e61
	jr z,l5e8ah		;5e63
	ld a,(0e000h)		;5e65
	bit 4,a		;5e68
	jr nz,l5e74h		;5e6a
	ld a,(0e02eh)		;5e6c
	or a			;5e6f
	jr z,l5e95h		;5e70
	jr l5e78h		;5e72
l5e74h:
	xor a			;5e74
	ld (0e02eh),a		;5e75
l5e78h:
	call sub_5ec0h		;5e78
	jr nc,l5e51h		;5e7b
	ret			;5e7d
l5e7eh:
	ld a,(0e00bh)		;5e7e
	dec a			;5e81
	cp 0ffh		;5e82
	jr nz,l5e2eh		;5e84
	ld a,06fh		;5e86
	jr l5e2eh		;5e88
l5e8ah:
	ld a,(0e00bh)		;5e8a
	inc a			;5e8d
	cp 070h		;5e8e
	jr nz,l5e2eh		;5e90
	xor a			;5e92
	jr l5e2eh		;5e93
l5e95h:
	ld a,001h		;5e95
	ld (0d000h),a		;5e97
	call sub_679eh		;5e9a
l5e9dh:
	jr c,l5e3ah		;5e9d
l5e9fh:
	call l41d0h		;5e9f
	call sub_40b3h		;5ea2
	call sub_6a6bh		;5ea5
	call sub_6f90h		;5ea8
	call sub_b982h		;5eab
	call sub_4c75h		;5eae
	call sub_5f24h		;5eb1
	call sub_604dh		;5eb4
	call sub_5ec0h		;5eb7
	jp c,l5e3ah		;5eba
	jp l5e9fh		;5ebd
sub_5ec0h:
	call 041cah		;5ec0
	ld a,007h		;5ec3
	call 00141h		;5ec5
	bit 2,a		;5ec8
	ld hl,0e04ch		;5eca
	jr z,l5ed6h		;5ecd
	ld (hl),000h		;5ecf
	call l41d0h		;5ed1
	or a			;5ed4
	ret			;5ed5
l5ed6h:
	or a			;5ed6
	bit 0,(hl)		;5ed7
	ret nz			;5ed9
	set 0,(hl)		;5eda
	call l41d0h		;5edc
	scf			;5edf
	ret			;5ee0
l5ee1h:
	ret c			;5ee1
	jr c,l5f34h		;5ee2
	ld d,d			;5ee4
	ld b,c			;5ee5
	ld b,e			;5ee6
	ld d,h			;5ee7
	ld c,c			;5ee8
	ld b,e			;5ee9
	ld b,l			;5eea
	rst 38h			;5eeb
	ret m			;5eec
	jr c,l5f0fh		;5eed
	jr nz,$+34		;5eef
	ld c,l			;5ef1
	ld c,a			;5ef2
	ld b,h			;5ef3
	ld b,l			;5ef4
	jr nz,$+1		;5ef5
	jr $+59		;5ef7
	jr nz,$+34		;5ef9
	jr nz,l5f1dh		;5efb
	jr nz,l5f1fh		;5efd
	jr nz,l5f21h		;5eff
	rst 38h			;5f01
	jr c,$+59		;5f02
	ld (de),a			;5f04
	ld b,l			;5f05
	ld d,e			;5f06
	ld b,e			;5f07
	inc de			;5f08
	inc d			;5f09
	jr nz,l5f2ch		;5f0a
	jr nz,$+1		;5f0c
	ld e,b			;5f0e
l5f0fh:
	add hl,sp			;5f0f
	jr nz,$+34		;5f10
	jr nz,l5f65h		;5f12
	ld d,l			;5f14
	ld c,c			;5f15
	ld d,h			;5f16
	jr nz,$+1		;5f17
	ld a,b			;5f19
	ld a,(02020h)		;5f1a
l5f1dh:
	ld d,h			;5f1d
	ld c,c			;5f1e
l5f1fh:
	ld c,l			;5f1f
	ld b,l			;5f20
l5f21h:
	rst 38h			;5f21
	rst 38h			;5f22
	rst 38h			;5f23
sub_5f24h:
	ld a,(0e00dh)		;5f24
	or a			;5f27
	ret nz			;5f28
	ld a,(0e01bh)		;5f29
l5f2ch:
	or a			;5f2c
	ret nz			;5f2d
	ld a,(0d000h)		;5f2e
	cp 001h		;5f31
	ret nz			;5f33
l5f34h:
	ld a,0c9h		;5f34
	ld (03333h),a		;5f36
	call sub_6005h		;5f39
	ld a,(0e066h)		;5f3c
	xor 008h		;5f3f
	ld (0e066h),a		;5f41
	xor a			;5f44
	ld (0e03fh),a		;5f45
	ld (0e015h),a		;5f48
	ld (0e00ch),a		;5f4b
	call sub_a05fh		;5f4e
	ld a,(0e04dh)		;5f51
	or a			;5f54
	jr z,l5f9ah		;5f55
	ld b,005h		;5f57
l5f59h:
	push bc			;5f59
	ld c,007h		;5f5a
	call l5006h		;5f5c
	pop bc			;5f5f
	djnz l5f59h		;5f60
	call sub_a05fh		;5f62
l5f65h:
	ld hl,0e063h		;5f65
	inc (hl)			;5f68
	ld a,015h		;5f69
	call sub_a07bh		;5f6b
	call 041cah		;5f6e
	ld hl,09133h		;5f71
	ld de,02000h		;5f74
	ld bc,00058h		;5f77
	call sub_4299h		;5f7a
	ld hl,09133h		;5f7d
	ld de,02800h		;5f80
	ld bc,00058h		;5f83
	call sub_4299h		;5f86
	ld hl,09133h		;5f89
	ld de,03000h		;5f8c
	ld bc,00058h		;5f8f
	call sub_4299h		;5f92
	call l41d0h		;5f95
	jr l5fa3h		;5f98
l5f9ah:
	ld hl,0e064h		;5f9a
	inc (hl)			;5f9d
	ld a,007h		;5f9e
	call sub_a07bh		;5fa0
l5fa3h:
	ld b,060h		;5fa3
l5fa5h:
	push bc			;5fa5
	call sub_40b3h		;5fa6
	call sub_6f90h		;5fa9
	call sub_4c75h		;5fac
	pop bc			;5faf
	djnz l5fa5h		;5fb0
	ld a,002h		;5fb2
	ld (0d01ch),a		;5fb4
l5fb7h:
	call sub_40b3h		;5fb7
	call sub_6f90h		;5fba
	ld ix,0d000h		;5fbd
	ld a,(ix+001h)		;5fc1
	cp 0a8h		;5fc4
	jr c,l5fcdh		;5fc6
	dec (ix+001h)		;5fc8
	jr l5fb7h		;5fcb
l5fcdh:
	call 041cah		;5fcd
	ld a,(0e04bh)		;5fd0
	or a			;5fd3
	jr nz,l5fe1h		;5fd4
	ld hl,0e00bh		;5fd6
	inc (hl)			;5fd9
	ld a,(hl)			;5fda
	cp 070h		;5fdb
	jr nz,l5fe1h		;5fdd
	ld (hl),000h		;5fdf
l5fe1h:
	call sub_50b7h		;5fe1
	ld a,001h		;5fe4
	ld (0d01ch),a		;5fe6
	pop bc			;5fe9
	ld a,(0e04bh)		;5fea
	or a			;5fed
	jr z,l5ffeh		;5fee
	ld hl,(0e049h)		;5ff0
	ld (0e019h),hl		;5ff3
	call sub_50b7h		;5ff6
	ld bc,l407ah		;5ff9
	jr l6001h		;5ffc
l5ffeh:
	ld bc,l5e9dh		;5ffe
l6001h:
	push bc			;6001
	jp sub_636ah		;6002
sub_6005h:
	ld a,(0e04bh)		;6005
	or a			;6008
	ret z			;6009
	ld a,(0e00fh)		;600a
	or a			;600d
	ret nz			;600e
	ld a,(0e00ah)		;600f
	cp 002h		;6012
	ret nz			;6014
	ld a,(0e05fh)		;6015
	or a			;6018
	ret nz			;6019
	ld a,(0e00ch)		;601a
	or a			;601d
	ret nz			;601e
	ld a,(0e03fh)		;601f
	or a			;6022
	ret nz			;6023
	ld hl,l603bh		;6024
	call sub_42e4h		;6027
	ld c,007h		;602a
	call l5006h		;602c
	ld b,078h		;602f
l6031h:
	push bc			;6031
	call sub_40b3h		;6032
	pop bc			;6035
	djnz l6031h		;6036
	jp sub_45e9h		;6038
l603bh:
	add a,l			;603b
	add hl,sp			;603c
	ld b,d			;603d
	ld c,a			;603e
	ld c,(hl)			;603f
	ld d,l			;6040
	ld d,e			;6041
	jr nz,$+52		;6042
	jr nc,$+50		;6044
	jr nc,$+50		;6046
	jr nz,l609ah		;6048
	ld d,h			;604a
	ld d,e			;604b
	rst 38h			;604c
sub_604dh:
	ld a,(0d000h)		;604d
	or a			;6050
	ret nz			;6051
	ld b,020h		;6052
l6054h:
	push bc			;6054
	call sub_40b3h		;6055
	call sub_6f90h		;6058
	call sub_4c75h		;605b
	pop bc			;605e
	djnz l6054h		;605f
	ld a,001h		;6061
	ld (0e03fh),a		;6063
	ld a,(0e04bh)		;6066
	or a			;6069
	jr z,l60cbh		;606a
	ld hl,0e027h		;606c
	dec (hl)			;606f
	jr z,l60ebh		;6070
l6072h:
	ld a,0c9h		;6072
	ld (03333h),a		;6074
	ld a,(0e04dh)		;6077
	or a			;607a
	jr nz,l6088h		;607b
	call 041cah		;607d
	ld a,001h		;6080
	ld (0e06ch),a		;6082
	call sub_6f90h		;6085
l6088h:
	xor a			;6088
	ld (0e06ch),a		;6089
	ld (0e015h),a		;608c
	call sub_a05fh		;608f
	call sub_513fh		;6092
	ld a,(0e04dh)		;6095
	cp 003h		;6098
l609ah:
	jr nz,l60a1h		;609a
	call sub_41a1h		;609c
	jr l60a4h		;609f
l60a1h:
	call sub_4187h		;60a1
l60a4h:
	ld a,001h		;60a4
	ld (0d000h),a		;60a6
	call sub_6f90h		;60a9
	ld a,(0e04dh)		;60ac
	cp 003h		;60af
	jr nz,l60b8h		;60b1
	ld de,l6552h		;60b3
	jr l60c6h		;60b6
l60b8h:
	ld a,(0e04bh)		;60b8
	or a			;60bb
	jr nz,l60c3h		;60bc
	ld de,l5e9dh		;60be
	jr l60c6h		;60c1
l60c3h:
	ld de,l407ah		;60c3
l60c6h:
	pop bc			;60c6
	push de			;60c7
	jp sub_679eh		;60c8
l60cbh:
	ld hl,(0e04eh)		;60cb
	inc hl			;60ce
	push hl			;60cf
	ld de,0fc1ah		;60d0
	add hl,de			;60d3
	jr nc,l60e2h		;60d4
	ld hl,00000h		;60d6
	ld (0e04eh),hl		;60d9
	pop hl			;60dc
	call sub_50c7h		;60dd
	jr l6072h		;60e0
l60e2h:
	pop hl			;60e2
	ld (0e04eh),hl		;60e3
	call sub_50c7h		;60e6
	jr l6072h		;60e9
l60ebh:
	ld hl,0fe18h		;60eb
l60eeh:
	ld (03333h),hl		;60ee
	call 041cah		;60f1
	ld hl,l6135h		;60f4
	ld de,03987h		;60f7
	ld bc,00009h		;60fa
	call sub_4299h		;60fd
sub_6100h:
	call l41d0h		;6100
	call sub_a05fh		;6103
	ld a,006h		;6106
	call sub_a07bh		;6108
	ld bc,00200h		;610b
l610eh:
	push bc			;610e
	call sub_40b3h		;610f
	call sub_6f90h		;6112
	call sub_41dch		;6115
	ld a,(0e000h)		;6118
	bit 4,a		;611b
	jr z,l6132h		;611d
	call l41d0h		;611f
	pop bc			;6122
	dec bc			;6123
	ld a,b			;6124
	or c			;6125
	jr nz,l610eh		;6126
l6128h:
	call sub_616ah		;6128
	call 041cah		;612b
	pop bc			;612e
	jp l404bh		;612f
l6132h:
	pop bc			;6132
	jr l6128h		;6133
l6135h:
	ld h,a			;6135
	ld h,c			;6136
	ld l,l			;6137
	ld h,l			;6138
	jr nz,l61aah		;6139
	halt			;613b
	ld h,l			;613c
	ld (hl),d			;613d
l613eh:
	ld hl,(0e019h)		;613e
	ld a,h			;6141
	or l			;6142
	jr z,l6156h		;6143
	dec hl			;6145
	ld (0e019h),hl		;6146
	call sub_50b7h		;6149
	ld c,005h		;614c
	call l5006h		;614e
	call sub_40b3h		;6151
	jr l613eh		;6154
l6156h:
	ld hl,0e027h		;6156
	ld a,(hl)			;6159
	or a			;615a
	ret z			;615b
	dec (hl)			;615c
	call sub_513fh		;615d
	ld c,00ah		;6160
	call l5006h		;6162
	call sub_40b3h		;6165
	jr l6156h		;6168
sub_616ah:
	call sub_a05fh		;616a
	call sub_4187h		;616d
l6170h:
	call sub_41b0h		;6170
	ld a,0ffh		;6173
	ld (0e02eh),a		;6175
	call sub_632ch		;6178
	ld a,c			;617b
	cp 008h		;617c
	jp z,l6243h		;617e
	push bc			;6181
	add a,a			;6182
	add a,c			;6183
	ld b,a			;6184
	add a,a			;6185
	add a,b			;6186
	ld e,a			;6187
	ld d,000h		;6188
	ld hl,0e140h		;618a
	add hl,de			;618d
	ex de,hl			;618e
	ld hl,0e010h		;618f
	ld bc,00003h		;6192
	ldir		;6195
	push de			;6197
	ld hl,l626fh		;6198
	ld bc,00006h		;619b
	ldir		;619e
	ld a,013h		;61a0
	call sub_a07bh		;61a2
	call sub_6275h		;61a5
	pop de			;61a8
	pop bc			;61a9
l61aah:
	push de			;61aa
	ld b,c			;61ab
	inc b			;61ac
	ld hl,03890h		;61ad
	ld de,00040h		;61b0
l61b3h:
	add hl,de			;61b3
	djnz l61b3h		;61b4
	pop de			;61b6
	ld b,006h		;61b7
l61b9h:
	push bc			;61b9
l61bah:
	exx			;61ba
	call sub_40b3h		;61bb
	call sub_69e9h		;61be
	exx			;61c1
	cp 001h		;61c2
	jr z,l61e6h		;61c4
	cp 002h		;61c6
	jr nz,l61fdh		;61c8
	ld a,(de)			;61ca
	cp 020h		;61cb
	jr z,l61dbh		;61cd
	cp 017h		;61cf
	jr z,l61dfh		;61d1
	cp 05ah		;61d3
	jr nz,l61e3h		;61d5
	ld a,015h		;61d7
	jr l61fch		;61d9
l61dbh:
	ld a,041h		;61db
	jr l61fch		;61dd
l61dfh:
	ld a,020h		;61df
	jr l61fch		;61e1
l61e3h:
	inc a			;61e3
	jr l61fch		;61e4
l61e6h:
	ld a,(de)			;61e6
	cp 020h		;61e7
	jr z,l61f6h		;61e9
	cp 015h		;61eb
	jr z,l61fah		;61ed
	cp 041h		;61ef
	jr z,l61dfh		;61f1
	dec a			;61f3
	jr l61fch		;61f4
l61f6h:
	ld a,017h		;61f6
	jr l61fch		;61f8
l61fah:
	ld a,05ah		;61fa
l61fch:
	ld (de),a			;61fc
l61fdh:
	call 041cah		;61fd
	ld a,(0e05ch)		;6200
	add a,004h		;6203
	ld (0e05ch),a		;6205
	and 020h		;6208
	ld a,(de)			;620a
	jr z,l620fh		;620b
	ld a,020h		;620d
l620fh:
	call 0004dh		;620f
	call l41d0h		;6212
	ld a,(0e000h)		;6215
	bit 4,a		;6218
	jr z,l6222h		;621a
	xor a			;621c
	ld (0e02eh),a		;621d
	jr l61bah		;6220
l6222h:
	ld a,(0e02eh)		;6222
	or a			;6225
	jr nz,l61bah		;6226
	ld a,0ffh		;6228
	ld (0e02eh),a		;622a
	call 041cah		;622d
	ld a,(de)			;6230
	call 0004dh		;6231
	call l41d0h		;6234
	pop bc			;6237
	inc de			;6238
	inc hl			;6239
	dec b			;623a
	jp nz,l61b9h		;623b
	ld bc,00064h		;623e
	jr l624eh		;6241
l6243h:
	ld a,017h		;6243
	call sub_a07bh		;6245
	call sub_6275h		;6248
	ld bc,00300h		;624b
l624eh:
	push bc			;624e
	call sub_40b3h		;624f
	call sub_41dch		;6252
	ld a,(0e000h)		;6255
	bit 4,a		;6258
	jr z,l6267h		;625a
	xor a			;625c
	ld (0e02eh),a		;625d
l6260h:
	pop bc			;6260
	dec bc			;6261
	ld a,b			;6262
	or c			;6263
	jr nz,l624eh		;6264
	ret			;6266
l6267h:
	ld a,(0e02eh)		;6267
	or a			;626a
	jr nz,l6260h		;626b
	pop bc			;626d
	ret			;626e
l626fh:
	ld d,c			;626f
	ld b,d			;6270
	ld b,h			;6271
	ld b,c			;6272
	ld b,c			;6273
	ld b,c			;6274
sub_6275h:
	ld hl,0d8c0h		;6275
	ld de,0d8c1h		;6278
	ld bc,0023fh		;627b
	ld (hl),020h		;627e
	ldir		;6280
	ld de,0d954h		;6282
	ld hl,l62e6h		;6285
	ld a,008h		;6288
l628ah:
	ld bc,00003h		;628a
	ldir		;628d
	ld bc,0002dh		;628f
	ex de,hl			;6292
	add hl,bc			;6293
	ex de,hl			;6294
	dec a			;6295
	jr nz,l628ah		;6296
	ld hl,0d958h		;6298
	ld de,0e142h		;629b
	ld b,008h		;629e
l62a0h:
	push bc			;62a0
	call sub_62feh		;62a1
	ld bc,00029h		;62a4
	add hl,bc			;62a7
	ex de,hl			;62a8
	ld bc,0000ch		;62a9
	add hl,bc			;62ac
	ex de,hl			;62ad
	pop bc			;62ae
	djnz l62a0h		;62af
	ld hl,0e143h		;62b1
	ld de,0d960h		;62b4
	ld a,008h		;62b7
l62b9h:
	ld bc,00006h		;62b9
	ldir		;62bc
	ld bc,00003h		;62be
	add hl,bc			;62c1
	ex de,hl			;62c2
	ld bc,0002ah		;62c3
	add hl,bc			;62c6
	ex de,hl			;62c7
	dec a			;62c8
	jr nz,l62b9h		;62c9
	ld hl,l62d4h		;62cb
	call l4de3h		;62ce
	jp l5d64h		;62d1
l62d4h:
	ld c,0d9h		;62d4
	ld b,a			;62d6
	ld d,d			;62d7
	ld b,l			;62d8
	ld b,c			;62d9
	ld d,h			;62da
	jr nz,$+82		;62db
	ld c,h			;62dd
	ld b,c			;62de
	ld e,c			;62df
	ld b,l			;62e0
	ld d,d			;62e1
	ld d,e			;62e2
	rst 38h			;62e3
	rst 38h			;62e4
	rst 38h			;62e5
l62e6h:
	ld sp,l5453h		;62e6
	ld (sub_444eh),a		;62e9
	inc sp			;62ec
	ld d,d			;62ed
	ld b,h			;62ee
	inc (hl)			;62ef
	ld d,h			;62f0
	ld c,b			;62f1
	dec (hl)			;62f2
	ld d,h			;62f3
	ld c,b			;62f4
	ld (hl),054h		;62f5
	ld c,b			;62f7
	scf			;62f8
	ld d,h			;62f9
	ld c,b			;62fa
	jr c,$+86		;62fb
	ld c,b			;62fd
sub_62feh:
	ld b,003h		;62fe
	xor a			;6300
	ex af,af'			;6301
l6302h:
	ld a,(de)			;6302
	ld c,a			;6303
	rrca			;6304
	rrca			;6305
	rrca			;6306
	rrca			;6307
	call sub_6316h		;6308
	ld a,c			;630b
	call sub_6316h		;630c
	dec de			;630f
	djnz l6302h		;6310
	ld (hl),030h		;6312
	inc hl			;6314
	ret			;6315
sub_6316h:
	ex af,af'			;6316
	jr nz,l6324h		;6317
	ex af,af'			;6319
	and 00fh		;631a
	jr nz,l6322h		;631c
	ld a,020h		;631e
	jr l6329h		;6320
l6322h:
	ex af,af'			;6322
	inc a			;6323
l6324h:
	ex af,af'			;6324
	and 00fh		;6325
	add a,030h		;6327
l6329h:
	ld (hl),a			;6329
	inc hl			;632a
	ret			;632b
sub_632ch:
	ld hl,0e012h		;632c
	ld de,0e181h		;632f
	ld c,008h		;6332
l6334h:
	push hl			;6334
	push de			;6335
	ld b,003h		;6336
	call sub_6361h		;6338
	pop de			;633b
	pop hl			;633c
	ret nc			;633d
	ld a,c			;633e
	cp 008h		;633f
	jr z,l6355h		;6341
	push hl			;6343
	push bc			;6344
	push de			;6345
	dec de			;6346
	dec de			;6347
	ld hl,00009h		;6348
	add hl,de			;634b
	ld bc,00009h		;634c
	ex de,hl			;634f
	ldir		;6350
	pop de			;6352
	pop bc			;6353
	pop hl			;6354
l6355h:
	push bc			;6355
	ex de,hl			;6356
	ld bc,0fff7h		;6357
	add hl,bc			;635a
	ex de,hl			;635b
	pop bc			;635c
	dec c			;635d
	jr nz,l6334h		;635e
	ret			;6360
sub_6361h:
	ld a,(de)			;6361
	cp (hl)			;6362
	ret nz			;6363
	dec hl			;6364
	dec de			;6365
	djnz sub_6361h		;6366
	scf			;6368
	ret			;6369
sub_636ah:
	call sub_6581h		;636a
	xor a			;636d
	ld (0e04dh),a		;636e
	ld hl,(0e036h)		;6371
	ld a,(0e038h)		;6374
	or a			;6377
	jr nz,l638bh		;6378
	dec h			;637a
	ld a,h			;637b
	cp 0ffh		;637c
	jr nz,l6393h		;637e
	ld h,01fh		;6380
	ld a,(0e071h)		;6382
	inc a			;6385
	ld (0e071h),a		;6386
	jr l6393h		;6389
l638bh:
	cp 001h		;638b
	jr nz,l6392h		;638d
	dec l			;638f
	jr l6393h		;6390
l6392h:
	inc l			;6392
l6393h:
	ld (0e036h),hl		;6393
	ld a,(0e04bh)		;6396
	or a			;6399
	jr nz,l63a2h		;639a
	ld hl,0e00bh		;639c
	ld a,(hl)			;639f
	jr l63b9h		;63a0
l63a2h:
	ld a,h			;63a2
	cp 006h		;63a3
	jr nz,l63b6h		;63a5
	ld a,l			;63a7
	cp 01eh		;63a8
	jr nz,l63b6h		;63aa
	ld a,(0e071h)		;63ac
	or a			;63af
	jr z,l63b6h		;63b0
	ld a,0f1h		;63b2
	jr l63bah		;63b4
l63b6h:
	call sub_4c14h		;63b6
l63b9h:
	ld a,(hl)			;63b9
l63bah:
	cp 073h		;63ba
	jp z,l64feh		;63bc
	cp 070h		;63bf
	jr c,l63dch		;63c1
	cp 0f0h		;63c3
	jp c,l64b6h		;63c5
	sub 0f0h		;63c8
	add a,a			;63ca
	ld l,a			;63cb
	ld h,000h		;63cc
	ld de,l6400h		;63ce
	add hl,de			;63d1
	push hl			;63d2
	ld a,(hl)			;63d3
	inc hl			;63d4
	ld h,(hl)			;63d5
	ld l,a			;63d6
	ld bc,l6428h		;63d7
	push bc			;63da
	jp (hl)			;63db
l63dch:
	ld e,a			;63dc
	ex af,af'			;63dd
	ld d,000h		;63de
	ld hl,0e700h		;63e0
	add hl,de			;63e3
	ld a,(hl)			;63e4
	or a			;63e5
	jr nz,l63f7h		;63e6
	ld (hl),080h		;63e8
	ex af,af'			;63ea
	ld (0e00bh),a		;63eb
	call sub_461bh		;63ee
	call 05cf8h		;63f1
	jp sub_679eh		;63f4
l63f7h:
	call sub_46b9h		;63f7
	call 05cf8h		;63fa
	jp sub_636ah		;63fd
l6400h:
	cp c			;6400
	ld b,(hl)			;6401
	ld a,h			;6402
	ld b,a			;6403
	jr nc,l644dh		;6404
	adc a,(hl)			;6406
	ld b,a			;6407
	sbc a,a			;6408
	ld b,a			;6409
	ld e,c			;640a
	ld b,a			;640b
	ld b,048h		;640c
	pop hl			;640e
	ld b,(hl)			;640f
	ld b,(hl)			;6410
	ld c,b			;6411
	or b			;6412
l6413h:
	ld b,a			;6413
l6414h:
	ld l,d			;6414
	ld h,e			;6415
l6416h:
	ld l,d			;6416
	ld h,e			;6417
	ccf			;6418
	ld h,h			;6419
l641ah:
	ld c,d			;641a
	ld h,h			;641b
	ld d,d			;641c
	ld h,h			;641d
	ld e,d			;641e
	ld h,h			;641f
	ccf			;6420
	ld h,h			;6421
	ld h,l			;6422
	ld h,h			;6423
	ld e,d			;6424
	ld h,h			;6425
	ld (hl),b			;6426
	ld h,h			;6427
l6428h:
	call 05cf8h		;6428
	pop hl			;642b
	ld de,00014h		;642c
	add hl,de			;642f
	ld a,(hl)			;6430
	inc hl			;6431
	ld h,(hl)			;6432
	ld l,a			;6433
	jp (hl)			;6434
sub_6435h:
	call sub_40b3h		;6435
	call sub_6f90h		;6438
	ld a,(0e001h)		;643b
	ret			;643e
l643fh:
	call sub_6435h		;643f
	call sub_64afh		;6442
	call sub_649fh		;6445
	jr l643fh		;6448
l644ah:
	call sub_6435h		;644a
l644dh:
	call sub_649fh		;644d
	jr l644ah		;6450
l6452h:
	call sub_6435h		;6452
	call sub_6489h		;6455
	jr l6452h		;6458
l645ah:
	call sub_6435h		;645a
	call sub_64afh		;645d
	call sub_6489h		;6460
	jr l645ah		;6463
l6465h:
	call sub_6435h		;6465
	call sub_6489h		;6468
	call sub_649fh		;646b
	jr l6465h		;646e
l6470h:
	call sub_6435h		;6470
	call sub_6489h		;6473
	call sub_64afh		;6476
	call sub_649fh		;6479
	jr l6470h		;647c
l647eh:
	ld a,(0e02dh)		;647e
	and 0bch		;6481
	set 7,a		;6483
	ld (0e052h),a		;6485
	ret			;6488
sub_6489h:
	cp 007h		;6489
	ret nz			;648b
	pop bc			;648c
	ld hl,0e02dh		;648d
	ld (hl),0e0h		;6490
	ld a,001h		;6492
	ld (0e02ch),a		;6494
	ld a,002h		;6497
l6499h:
	ld (0e038h),a		;6499
	jp sub_636ah		;649c
sub_649fh:
	cp 001h		;649f
	ret nz			;64a1
	pop bc			;64a2
	ld hl,0e02dh		;64a3
	ld (hl),0c0h		;64a6
	ld a,001h		;64a8
	ld (0e02ch),a		;64aa
	jr l6499h		;64ad
sub_64afh:
	cp 005h		;64af
	ret nz			;64b1
	pop bc			;64b2
	xor a			;64b3
	jr l6499h		;64b4
l64b6h:
	ld (0e00bh),a		;64b6
	call sub_46b9h		;64b9
	call 05cf8h		;64bc
	ld a,(0e00bh)		;64bf
	ld e,a			;64c2
	ld d,000h		;64c3
	ld hl,0e700h		;64c5
	add hl,de			;64c8
	ld a,(hl)			;64c9
	or a			;64ca
	jp nz,sub_636ah		;64cb
	ld (hl),001h		;64ce
	call 04cf5h		;64d0
	call sub_a05fh		;64d3
	ld b,050h		;64d6
l64d8h:
	push bc			;64d8
	call sub_40b3h		;64d9
	call sub_6f90h		;64dc
	pop bc			;64df
	djnz l64d8h		;64e0
	ld a,014h		;64e2
	call sub_a07bh		;64e4
	call sub_489dh		;64e7
	ld b,0c8h		;64ea
l64ech:
	push bc			;64ec
	call sub_40b3h		;64ed
	call sub_6f90h		;64f0
	pop bc			;64f3
	djnz l64ech		;64f4
	ld a,001h		;64f6
	ld (0e04dh),a		;64f8
	jp sub_679eh		;64fb
l64feh:
	ld a,(0e063h)		;64fe
	cp 003h		;6501
	jp nz,l63f7h		;6503
	call 04cf5h		;6506
	ld a,014h		;6509
	call sub_a07bh		;650b
	call sub_658fh		;650e
	call sub_4881h		;6511
	call 05cf8h		;6514
	ld b,08ch		;6517
l6519h:
	push bc			;6519
	call sub_40b3h		;651a
	call sub_6f90h		;651d
	pop bc			;6520
	djnz l6519h		;6521
	ld hl,0d080h		;6523
	ld a,01dh		;6526
	ld (hl),a			;6528
	inc hl			;6529
	ld (hl),05fh		;652a
	inc hl			;652c
	ld (hl),038h		;652d
	ld de,0001eh		;652f
	add hl,de			;6532
	ld (hl),a			;6533
	inc hl			;6534
	ld (hl),05fh		;6535
	inc hl			;6537
	ld (hl),088h		;6538
	add hl,de			;653a
	ld (hl),a			;653b
	inc hl			;653c
	ld (hl),02fh		;653d
	inc hl			;653f
	ld (hl),060h		;6540
	pop bc			;6542
	ld a,003h		;6543
	ld (0e04dh),a		;6545
	ld (0e06eh),a		;6548
	call sub_679eh		;654b
	xor a			;654e
	ld (0e05fh),a		;654f
l6552h:
	call sub_40b3h		;6552
	call sub_65dfh		;6555
	call sub_6f90h		;6558
	call sub_656ah		;655b
	call sub_604dh		;655e
	ld a,(0e06eh)		;6561
	or a			;6564
	jr nz,l6552h		;6565
	jp l6c79h		;6567
sub_656ah:
	ld hl,0e040h		;656a
	dec (hl)			;656d
	ret nz			;656e
	ld (hl),012h		;656f
	ld hl,0e01bh		;6571
	ld a,(hl)			;6574
	cp 013h		;6575
	ret nc			;6577
	exx			;6578
	call sub_4d96h		;6579
	ld (hl),014h		;657c
	exx			;657e
	inc (hl)			;657f
	ret			;6580
sub_6581h:
	ld b,070h		;6581
	ld hl,0e700h		;6583
l6586h:
	ld a,(hl)			;6586
	or a			;6587
	jr z,l658bh		;6588
	dec (hl)			;658a
l658bh:
	inc hl			;658b
	djnz l6586h		;658c
	ret			;658e
sub_658fh:
	call 041cah		;658f
	ld de,00608h		;6592
	ld hl,l663eh		;6595
	ld bc,000a0h		;6598
	call sub_4299h		;659b
	ld de,00e08h		;659e
	ld hl,l663eh		;65a1
	ld bc,000a0h		;65a4
	call sub_4299h		;65a7
	ld de,01608h		;65aa
	ld hl,l663eh		;65ad
	ld bc,000a0h		;65b0
	call sub_4299h		;65b3
	ld de,02608h		;65b6
	ld hl,066deh		;65b9
	ld bc,000a0h		;65bc
	call sub_4299h		;65bf
	ld de,02e08h		;65c2
	ld hl,066deh		;65c5
	ld bc,000a0h		;65c8
	call sub_4299h		;65cb
	ld de,03608h		;65ce
	ld hl,066deh		;65d1
	ld bc,000a0h		;65d4
	call sub_4299h		;65d7
	ld a,003h		;65da
	ld (0e06dh),a		;65dc
sub_65dfh:
	ld hl,0e06dh		;65df
	inc (hl)			;65e2
	ld d,(hl)			;65e3
	ld a,d			;65e4
	and 003h		;65e5
	ret nz			;65e7
	call 041cah		;65e8
	ld a,d			;65eb
	rrca			;65ec
	rrca			;65ed
	and 007h		;65ee
	ld e,a			;65f0
	ld d,000h		;65f1
	push de			;65f3
	ld hl,l677eh		;65f4
	add hl,de			;65f7
	push hl			;65f8
	ld de,00600h		;65f9
	ld bc,00008h		;65fc
	call sub_4299h		;65ff
	pop hl			;6602
	push hl			;6603
	ld de,00e00h		;6604
	ld bc,00008h		;6607
	call sub_4299h		;660a
	pop hl			;660d
	ld de,01600h		;660e
	ld bc,00008h		;6611
	call sub_4299h		;6614
	ld hl,l678eh		;6617
	pop de			;661a
	add hl,de			;661b
	push hl			;661c
	ld de,02600h		;661d
	ld bc,00008h		;6620
	call sub_4299h		;6623
	pop hl			;6626
	push hl			;6627
	ld de,02e00h		;6628
	ld bc,00008h		;662b
	call sub_4299h		;662e
	pop hl			;6631
	ld de,03600h		;6632
	ld bc,00008h		;6635
	call sub_4299h		;6638
	jp l41d0h		;663b
l663eh:
	ccf			;663e
	ld a,a			;663f
	ccf			;6640
	rra			;6641
	rrca			;6642
	rlca			;6643
	inc bc			;6644
	ld bc,0ffffh		;6645
	rst 38h			;6648
	rst 38h			;6649
	sbc a,c			;664a
	rst 38h			;664b
	sbc a,c			;664c
	rst 38h			;664d
	call m,00301h		;664e
	rlca			;6651
	rrca			;6652
	rra			;6653
	ccf			;6654
	ld a,a			;6655
	nop			;6656
	ld a,(bc)			;6657
	ld a,(bc)			;6658
	nop			;6659
	nop			;665a
	ld a,(bc)			;665b
	ld a,(bc)			;665c
	nop			;665d
	rst 38h			;665e
	xor a			;665f
	ld d,b			;6660
	rst 38h			;6661
	rst 38h			;6662
	ld d,b			;6663
	xor a			;6664
	rst 38h			;6665
	nop			;6666
	rst 28h			;6667
	rst 28h			;6668
	nop			;6669
	nop			;666a
	rst 28h			;666b
	rst 28h			;666c
	nop			;666d
	nop			;666e
	call m,0fc00h		;666f
	call m,0fc00h		;6672
	cp 000h		;6675
	rst 38h			;6677
	nop			;6678
	rst 38h			;6679
	rst 38h			;667a
	nop			;667b
	rst 38h			;667c
	rst 38h			;667d
	rst 38h			;667e
	rst 38h			;667f
	rst 38h			;6680
	rst 38h			;6681
	rst 38h			;6682
	rst 38h			;6683
	rst 38h			;6684
	nop			;6685
	add a,b			;6686
	ret nz			;6687
	ret po			;6688
	ret p			;6689
	ret m			;668a
	call m,0fffeh		;668b
	cp 0fch		;668e
	ret m			;6690
	ret p			;6691
	ret po			;6692
	ret nz			;6693
	add a,b			;6694
	nop			;6695
	ld a,a			;6696
	ccf			;6697
	rra			;6698
	rrca			;6699
	rlca			;669a
	inc bc			;669b
	nop			;669c
	nop			;669d
	nop			;669e
	rst 30h			;669f
	nop			;66a0
	rst 18h			;66a1
	nop			;66a2
	nop			;66a3
	nop			;66a4
	rst 38h			;66a5
	nop			;66a6
	add a,b			;66a7
	ret nz			;66a8
	ret po			;66a9
	ret p			;66aa
	ret m			;66ab
	call m,000feh		;66ac
	ld h,(hl)			;66af
	nop			;66b0
	ld h,(hl)			;66b1
	nop			;66b2
	nop			;66b3
	nop			;66b4
	nop			;66b5
	rst 38h			;66b6
	rst 38h			;66b7
	rst 38h			;66b8
	rst 38h			;66b9
	rst 38h			;66ba
	rst 38h			;66bb
	rst 38h			;66bc
	rst 38h			;66bd
	rst 38h			;66be
	rst 38h			;66bf
l66c0h:
	rst 38h			;66c0
	rst 38h			;66c1
	rst 38h			;66c2
	rst 38h			;66c3
	rst 38h			;66c4
	rst 38h			;66c5
	rst 38h			;66c6
	rst 38h			;66c7
	rst 38h			;66c8
	rst 38h			;66c9
	rst 38h			;66ca
	rst 38h			;66cb
	rst 38h			;66cc
	rst 38h			;66cd
	inc a			;66ce
	ld b,d			;66cf
	cp l			;66d0
	cp l			;66d1
	cp l			;66d2
	cp l			;66d3
	ld b,d			;66d4
	inc a			;66d5
	inc b			;66d6
	ld b,(hl)			;66d7
	ex af,af'			;66d8
	ld d,(hl)			;66d9
	djnz l6720h		;66da
	add a,d			;66dc
	djnz l66c0h		;66dd
	pop hl			;66df
	pop hl			;66e0
	pop hl			;66e1
	pop hl			;66e2
	pop hl			;66e3
	pop hl			;66e4
	pop hl			;66e5
	ret po			;66e6
	ret po			;66e7
	ret po			;66e8
	ret po			;66e9
	pop hl			;66ea
	ret po			;66eb
	pop hl			;66ec
	ret po			;66ed
	pop hl			;66ee
	ld e,0feh		;66ef
	cp 0feh		;66f1
	cp 0feh		;66f3
	cp 001h		;66f5
	ld h,c			;66f7
	ld h,c			;66f8
	ld bc,sub_6100h+1		;66f9
	ld h,c			;66fc
	ld bc,0f1f0h		;66fd
	rra			;6700
	pop af			;6701
	pop af			;6702
	rra			;6703
	pop af			;6704
	pop af			;6705
	ld bc,l8f9fh		;6706
	ld bc,sub_9f01h		;6709
	adc a,a			;670c
	ld bc,0e100h		;670d
	ld bc,0e1f1h		;6710
	ld bc,0f1e1h		;6713
	nop			;6716
	ret po			;6717
	ld bc,0e0f0h		;6718
	ld bc,0f0e0h		;671b
	ret p			;671e
	ret po			;671f
l6720h:
	pop hl			;6720
	ret po			;6721
	ret po			;6722
	pop hl			;6723
	ret po			;6724
	ld bc,0e1e1h		;6725
	pop hl			;6728
	pop hl			;6729
	pop hl			;672a
	pop hl			;672b
	pop hl			;672c
	rst 28h			;672d
	cp 0feh		;672e
	cp 0feh		;6730
	cp 0feh		;6732
	cp 0feh		;6734
	pop af			;6736
	pop af			;6737
	pop af			;6738
	pop af			;6739
	pop af			;673a
	pop af			;673b
	pop af			;673c
	pop af			;673d
l673eh:
	ld bc,0019fh		;673e
	ld c,a			;6741
	ld bc,00101h		;6742
	or b			;6745
	pop af			;6746
	pop af			;6747
	pop af			;6748
	pop af			;6749
	pop af			;674a
	pop af			;674b
	pop af			;674c
	pop af			;674d
	ld bc,00181h		;674e
	add a,c			;6751
	ld bc,00101h		;6752
	ld bc,0f090h		;6755
	sub b			;6758
	sub b			;6759
	sub b			;675a
	sub b			;675b
	sub b			;675c
	sub b			;675d
	add a,b			;675e
	sub b			;675f
	add a,b			;6760
	add a,b			;6761
	add a,b			;6762
	add a,b			;6763
	ld h,b			;6764
	add a,b			;6765
	ld h,b			;6766
	ld h,b			;6767
	ld h,b			;6768
	ld h,b			;6769
	ld h,b			;676a
	ld h,b			;676b
	sub b			;676c
	ld h,b			;676d
	pop af			;676e
	sub c			;676f
	sub c			;6770
	add a,c			;6771
	add a,c			;6772
	add a,c			;6773
	ld h,c			;6774
	ld h,c			;6775
	ret po			;6776
	ld h,b			;6777
	ret po			;6778
	ld e,0e0h		;6779
	ld h,b			;677b
	ret po			;677c
	ld h,b			;677d
l677eh:
	nop			;677e
	jr nz,l6781h		;677f
l6781h:
	ex af,af'			;6781
	add a,b			;6782
	ld bc,00008h		;6783
	nop			;6786
	jr nz,l6789h		;6787
l6789h:
	ex af,af'			;6789
	add a,b			;678a
	ld bc,00008h		;678b
l678eh:
	nop			;678e
	ret p			;678f
	nop			;6790
	and b			;6791
	ld h,b			;6792
	ld d,b			;6793
	ld h,b			;6794
	nop			;6795
	nop			;6796
	ret p			;6797
	nop			;6798
	and b			;6799
	ld h,b			;679a
	ld d,b			;679b
	ld h,b			;679c
	nop			;679d
sub_679eh:
	call sub_a05fh		;679e
	ld a,002h		;67a1
	ld (0d01ch),a		;67a3
	ld (0e00ah),a		;67a6
	xor a			;67a9
	ld (0e00fh),a		;67aa
	ld (0e05fh),a		;67ad
	call sub_50fbh		;67b0
	call sub_5107h		;67b3
	call sub_5209h		;67b6
l67b9h:
	ld ix,0d000h		;67b9
	ld a,(ix+001h)		;67bd
	cp 0b4h		;67c0
	ld a,(ix+002h)		;67c2
	jr c,l67cfh		;67c5
	jr nz,l67d4h		;67c7
	cp 05ch		;67c9
	jr z,l67edh		;67cb
	jr l67dbh		;67cd
l67cfh:
	inc (ix+001h)		;67cf
	jr l67d7h		;67d2
l67d4h:
	dec (ix+001h)		;67d4
l67d7h:
	cp 05ch		;67d7
	jr z,l67e5h		;67d9
l67dbh:
	jr c,l67e2h		;67db
	dec (ix+002h)		;67dd
	jr l67e5h		;67e0
l67e2h:
	inc (ix+002h)		;67e2
l67e5h:
	call sub_40b3h		;67e5
	call sub_6f90h		;67e8
	jr l67b9h		;67eb
l67edh:
	ld a,003h		;67ed
	call sub_a07bh		;67ef
	xor a			;67f2
	ld (0d01ch),a		;67f3
	xor a			;67f6
	ld (0e021h),a		;67f7
	inc a			;67fa
	ld (0e025h),a		;67fb
	ld hl,(0e019h)		;67fe
	ld (0e049h),hl		;6801
	ld bc,0ffffh		;6804
	add hl,bc			;6807
	jp nc,l6905h		;6808
	ld hl,l6a22h		;680b
	call sub_42e4h		;680e
	ld a,(0e04bh)		;6811
	or a			;6814
	jr z,l6823h		;6815
	ld hl,l6a40h		;6817
	call sub_42e4h		;681a
	ld hl,(0e019h)		;681d
	call sub_6a5dh		;6820
l6823h:
	call sub_40b3h		;6823
	ld a,(0e04bh)		;6826
	or a			;6829
	jr nz,l6830h		;682a
	call sub_5ec0h		;682c
	ret c			;682f
l6830h:
	call sub_69d5h		;6830
	ld a,(0e021h)		;6833
	cp 0ffh		;6836
	jr nz,l6840h		;6838
	xor a			;683a
	ld (0e021h),a		;683b
	jr l6849h		;683e
l6840h:
	cp 007h		;6840
	jr nz,l6849h		;6842
	ld a,006h		;6844
	ld (0e021h),a		;6846
l6849h:
	ld (0e00fh),a		;6849
	ld hl,(0e019h)		;684c
	ld e,a			;684f
	ld d,000h		;6850
	or a			;6852
	sbc hl,de		;6853
	jr nc,l6862h		;6855
	ex de,hl			;6857
	ld hl,0e021h		;6858
	dec (hl)			;685b
	ld hl,0e00fh		;685c
	dec (hl)			;685f
	ex de,hl			;6860
	inc hl			;6861
l6862h:
	ld (0e022h),hl		;6862
	ld a,(0e04bh)		;6865
	or a			;6868
	call nz,sub_6a5dh		;6869
	call sub_50fbh		;686c
	ld a,(0e000h)		;686f
	bit 4,a		;6872
	jr z,l687dh		;6874
	xor a			;6876
	ld (0e025h),a		;6877
	jp l6823h		;687a
l687dh:
	ld a,(0e025h)		;687d
	or a			;6880
	jr nz,l6823h		;6881
	xor a			;6883
	ld (0e021h),a		;6884
	inc a			;6887
	ld (0e025h),a		;6888
	ld hl,(0e022h)		;688b
	ld (0e049h),hl		;688e
	ld bc,0ffffh		;6891
	add hl,bc			;6894
	jp nc,l6905h		;6895
	ld hl,l6a31h		;6898
	call sub_42e4h		;689b
l689eh:
	call sub_40b3h		;689e
	ld a,(0e04bh)		;68a1
	or a			;68a4
	jr nz,l68abh		;68a5
	call sub_5ec0h		;68a7
	ret c			;68aa
l68abh:
	call sub_69d5h		;68ab
	ld a,(0e021h)		;68ae
	cp 0ffh		;68b1
	jr nz,l68bbh		;68b3
	xor a			;68b5
	ld (0e021h),a		;68b6
	jr l68c4h		;68b9
l68bbh:
	cp 003h		;68bb
	jr nz,l68c4h		;68bd
	ld a,002h		;68bf
	ld (0e021h),a		;68c1
l68c4h:
	add a,002h		;68c4
	ld (0e00ah),a		;68c6
	ld hl,(0e022h)		;68c9
	ld a,(0e021h)		;68cc
	or a			;68cf
	jr z,l68e4h		;68d0
	neg		;68d2
	ld e,a			;68d4
	ld d,0ffh		;68d5
	add hl,de			;68d7
	jr c,l68e4h		;68d8
	ld hl,0e021h		;68da
	dec (hl)			;68dd
	ld hl,0e00ah		;68de
	dec (hl)			;68e1
	jr l68eeh		;68e2
l68e4h:
	ld (0e049h),hl		;68e4
	ld a,(0e04bh)		;68e7
	or a			;68ea
	call nz,sub_6a5dh		;68eb
l68eeh:
	call sub_5107h		;68ee
	ld a,(0e000h)		;68f1
	bit 4,a		;68f4
	jr z,l68ffh		;68f6
	xor a			;68f8
	ld (0e025h),a		;68f9
	jp l689eh		;68fc
l68ffh:
	ld a,(0e025h)		;68ff
	or a			;6902
	jr nz,l689eh		;6903
l6905h:
	ld a,001h		;6905
	ld (0e025h),a		;6907
	ld a,(0e04bh)		;690a
	or a			;690d
	jr z,l6978h		;690e
	ld hl,(0e049h)		;6910
	ld bc,0fffbh		;6913
	add hl,bc			;6916
	jr nc,l6978h		;6917
	ld hl,l6a4dh		;6919
	call sub_42e4h		;691c
l691fh:
	call sub_40b3h		;691f
	call sub_69e9h		;6922
	or a			;6925
	jr z,l695ch		;6926
	cp 001h		;6928
	ld a,(0e05fh)		;692a
	jr z,l693dh		;692d
l692fh:
	inc a			;692f
	cp 007h		;6930
	jr nz,l6935h		;6932
	xor a			;6934
l6935h:
	call sub_6992h		;6935
	jr c,l694ch		;6938
	ex af,af'			;693a
	jr l692fh		;693b
l693dh:
	dec a			;693d
	cp 0ffh		;693e
	jr nz,l6944h		;6940
	ld a,006h		;6942
l6944h:
	call sub_6992h		;6944
	jr c,l694ch		;6947
	ex af,af'			;6949
	jr l693dh		;694a
l694ch:
	ex af,af'			;694c
	ld (0e05fh),a		;694d
	call sub_5209h		;6950
	ld a,(0e05fh)		;6953
	call sub_6992h		;6956
	call sub_6a5dh		;6959
l695ch:
	ld a,(0e000h)		;695c
	bit 4,a		;695f
	jr z,l6969h		;6961
	xor a			;6963
	ld (0e025h),a		;6964
	jr l691fh		;6967
l6969h:
	ld a,(0e025h)		;6969
	or a			;696c
	jr nz,l691fh		;696d
	ld a,(0e05fh)		;696f
	call sub_6992h		;6972
	ld (0e049h),hl		;6975
l6978h:
	call sub_45e9h		;6978
	call sub_a05fh		;697b
	ld a,(0e04dh)		;697e
	or a			;6981
	jr nz,l698bh		;6982
	ld a,004h		;6984
	call sub_a07bh		;6986
	or a			;6989
sub_698ah:
	ret			;698a
l698bh:
	ld a,012h		;698b
	call sub_a07bh		;698d
	or a			;6990
	ret			;6991
sub_6992h:
	ld c,a			;6992
	ld b,000h		;6993
	ld hl,l69ach		;6995
	add hl,bc			;6998
	ex af,af'			;6999
	ld a,(hl)			;699a
	or a			;699b
	jr z,l69a7h		;699c
	neg		;699e
	ld c,a			;69a0
	dec b			;69a1
	ld hl,(0e049h)		;69a2
	add hl,bc			;69a5
	ret			;69a6
l69a7h:
	ld hl,(0e049h)		;69a7
	scf			;69aa
	ret			;69ab
l69ach:
	nop			;69ac
	inc d			;69ad
	ld a,(bc)			;69ae
	dec b			;69af
	dec b			;69b0
	ld a,(bc)			;69b1
	dec b			;69b2
	call 041cah		;69b3
	ld hl,03800h		;69b6
	ld a,(00007h)		;69b9
	ld c,a			;69bc
	ld de,00020h		;69bd
	ld b,018h		;69c0
l69c2h:
	push bc			;69c2
	call 00053h		;69c3
	ld a,020h		;69c6
	ld b,018h		;69c8
l69cah:
	out (c),a		;69ca
	djnz l69cah		;69cc
	add hl,de			;69ce
	pop bc			;69cf
	djnz l69c2h		;69d0
	jp l41d0h		;69d2
sub_69d5h:
	call sub_69e9h		;69d5
	or a			;69d8
	ret z			;69d9
	cp 002h		;69da
	jr z,l69e4h		;69dc
	ld hl,0e021h		;69de
	dec (hl)			;69e1
	jr l69e8h		;69e2
l69e4h:
	ld hl,0e021h		;69e4
	inc (hl)			;69e7
l69e8h:
	ret			;69e8
sub_69e9h:
	call sub_41dch		;69e9
	ld a,(0e001h)		;69ec
	ld hl,0e020h		;69ef
	cp (hl)			;69f2
	ld b,a			;69f3
	jr z,l6a0fh		;69f4
	ld (hl),a			;69f6
	ld a,018h		;69f7
	ld (0e028h),a		;69f9
l69fch:
	ld a,b			;69fc
	cp 001h		;69fd
	jr z,l6a1ch		;69ff
	cp 003h		;6a01
	jr z,l6a1fh		;6a03
	cp 007h		;6a05
	jr z,l6a1fh		;6a07
	cp 005h		;6a09
	jr z,l6a1ch		;6a0b
l6a0dh:
	xor a			;6a0d
	ret			;6a0e
l6a0fh:
	ld hl,0e028h		;6a0f
	dec (hl)			;6a12
	ld a,(hl)			;6a13
	and 07fh		;6a14
	jr nz,l6a0dh		;6a16
	ld (hl),084h		;6a18
	jr l69fch		;6a1a
l6a1ch:
	ld a,001h		;6a1c
	ret			;6a1e
l6a1fh:
	ld a,002h		;6a1f
	ret			;6a21
l6a22h:
	ld b,(hl)			;6a22
	add hl,sp			;6a23
	ld (hl),e			;6a24
	ld h,l			;6a25
	ld l,h			;6a26
	ld h,l			;6a27
	ld h,e			;6a28
	ld (hl),h			;6a29
	jr nz,$+117		;6a2a
	ld (hl),b			;6a2c
	ld h,l			;6a2d
	ld h,l			;6a2e
	ld h,h			;6a2f
	rst 38h			;6a30
l6a31h:
	ld b,(hl)			;6a31
	add hl,sp			;6a32
	ld (hl),e			;6a33
	ld h,l			;6a34
	ld l,h			;6a35
	ld h,l			;6a36
	ld h,e			;6a37
	ld (hl),h			;6a38
	jr nz,l6ab2h		;6a39
	ld h,c			;6a3b
	halt			;6a3c
	ld h,l			;6a3d
	jr nz,$+1		;6a3e
l6a40h:
	add a,(hl)			;6a40
	add hl,sp			;6a41
	ld d,l			;6a42
	ld d,e			;6a43
	ld b,l			;6a44
	jr nz,l6a97h		;6a45
	ld c,a			;6a47
	ld d,a			;6a48
	ld b,l			;6a49
	ld d,d			;6a4a
	jr nz,$+1		;6a4b
l6a4dh:
	ld b,(hl)			;6a4d
	add hl,sp			;6a4e
	ld (hl),e			;6a4f
	ld h,l			;6a50
	ld l,h			;6a51
	ld h,l			;6a52
	ld h,e			;6a53
	ld (hl),h			;6a54
	jr nz,$+113		;6a55
	ld (hl),b			;6a57
	ld (hl),h			;6a58
	ld l,c			;6a59
	ld l,a			;6a5a
	ld l,(hl)			;6a5b
	rst 38h			;6a5c
sub_6a5dh:
	ld de,(0e019h)		;6a5d
	ex de,hl			;6a61
	or a			;6a62
	sbc hl,de		;6a63
	ld de,03990h		;6a65
	jp l50d6h		;6a68
sub_6a6bh:
	ld hl,0c93dh		;6a6b
	ld (03333h),hl		;6a6e
	ld a,007h		;6a71
	ld hl,0e02fh		;6a73
	call 00141h		;6a76
	bit 4,a		;6a79
	jr z,l6a80h		;6a7b
	res 7,(hl)		;6a7d
	ret			;6a7f
l6a80h:
	bit 7,(hl)		;6a80
	ret nz			;6a82
	bit 6,a		;6a83
	ex af,af'			;6a85
	xor a			;6a86
	ld (hl),a			;6a87
	ex af,af'			;6a88
	jr z,l6b01h		;6a89
	call sub_a0f6h		;6a8b
	ld hl,0396ah		;6a8e
	ld de,0e031h		;6a91
	ld bc,00005h		;6a94
l6a97h:
	call sub_42adh		;6a97
l6a9ah:
	ld a,(0e02fh)		;6a9a
	ld b,a			;6a9d
	and 00fh		;6a9e
	jr nz,l6ac0h		;6aa0
	bit 4,b		;6aa2
	jr nz,l6ab4h		;6aa4
	ld de,0396ah		;6aa6
	ld hl,l6b0ah		;6aa9
	ld bc,00005h		;6aac
	call sub_4299h		;6aaf
l6ab2h:
	jr l6ac0h		;6ab2
l6ab4h:
	ld de,0396ah		;6ab4
	ld hl,0e031h		;6ab7
	ld bc,00005h		;6aba
	call sub_4299h		;6abd
l6ac0h:
	call sub_6ad1h		;6ac0
	jr nc,l6a9ah		;6ac3
	ld de,0396ah		;6ac5
	ld hl,0e031h		;6ac8
	ld bc,00005h		;6acb
	jp sub_4299h		;6ace
sub_6ad1h:
	ld hl,0e02fh		;6ad1
	ld a,(hl)			;6ad4
	ld b,a			;6ad5
	inc a			;6ad6
	and 01fh		;6ad7
	ld c,a			;6ad9
	ld a,b			;6ada
	and 080h		;6adb
	or c			;6add
	ld (hl),a			;6ade
	ld a,007h		;6adf
	call 00141h		;6ae1
	bit 4,a		;6ae4
	ex af,af'			;6ae6
	bit 7,(hl)		;6ae7
	jr z,l6af3h		;6ae9
	ex af,af'			;6aeb
	jr nz,l6af8h		;6aec
	call sub_a0fch		;6aee
	scf			;6af1
	ret			;6af2
l6af3h:
	ex af,af'			;6af3
	jr z,l6af8h		;6af4
	set 7,(hl)		;6af6
l6af8h:
	call l41d0h		;6af8
	halt			;6afb
	call 041cah		;6afc
	or a			;6aff
	ret			;6b00
l6b01h:
	call sub_a0f6h		;6b01
l6b04h:
	call sub_6ad1h		;6b04
	jr nc,l6b04h		;6b07
	ret			;6b09
l6b0ah:
	ld d,b			;6b0a
	ld b,c			;6b0b
	ld d,l			;6b0c
	ld d,e			;6b0d
	ld b,l			;6b0e
l6b0fh:
	call 04cf5h		;6b0f
	ld hl,(0e047h)		;6b12
	xor a			;6b15
l6b16h:
	exx			;6b16
	ld l,a			;6b17
	ex af,af'			;6b18
	ld h,000h		;6b19
	add hl,hl			;6b1b
	ld de,l6bd2h		;6b1c
	add hl,de			;6b1f
	ld c,(hl)			;6b20
	inc hl			;6b21
l6b22h:
	ld b,(hl)			;6b22
	exx			;6b23
	ld a,(hl)			;6b24
	inc hl			;6b25
	ld b,a			;6b26
	or a			;6b27
	jp z,l6b73h		;6b28
l6b2bh:
	push bc			;6b2b
	ld e,(hl)			;6b2c
	inc hl			;6b2d
	ld d,(hl)			;6b2e
	inc hl			;6b2f
	push hl			;6b30
	ld a,e			;6b31
	and 01fh		;6b32
	ld c,a			;6b34
	ld a,d			;6b35
	and 00fh		;6b36
	ld b,a			;6b38
	inc b			;6b39
	exx			;6b3a
	ld hl,0ec7ch		;6b3b
	ld de,00018h		;6b3e
	exx			;6b41
l6b42h:
	exx			;6b42
	add hl,de			;6b43
	exx			;6b44
	djnz l6b42h		;6b45
	exx			;6b47
	push hl			;6b48
	exx			;6b49
	pop hl			;6b4a
	add hl,bc			;6b4b
	ld a,e			;6b4c
	rlca			;6b4d
	rlca			;6b4e
	rlca			;6b4f
	and 007h		;6b50
	exx			;6b52
	ld e,a			;6b53
	ld hl,l4c71h		;6b54
	add hl,de			;6b57
	ld a,(hl)			;6b58
	exx			;6b59
	ld c,a			;6b5a
	ld a,d			;6b5b
	rrca			;6b5c
	rrca			;6b5d
	rrca			;6b5e
	rrca			;6b5f
	and 00fh		;6b60
	jr nz,l6b66h		;6b62
	ld a,010h		;6b64
l6b66h:
	ld b,a			;6b66
	exx			;6b67
	ld de,l6b6fh		;6b68
	push de			;6b6b
	push bc			;6b6c
	exx			;6b6d
	ret			;6b6e
l6b6fh:
	pop hl			;6b6f
	pop bc			;6b70
	djnz l6b2bh		;6b71
l6b73h:
	ex af,af'			;6b73
	inc a			;6b74
	cp 002h		;6b75
	jp nz,l6b16h		;6b77
	ld de,0ec30h		;6b7a
	ld hl,0d8c0h		;6b7d
	exx			;6b80
	ld bc,00240h		;6b81
l6b84h:
	exx			;6b84
	ld a,(de)			;6b85
	cp 001h		;6b86
	jr nz,l6bafh		;6b88
	ld (hl),0efh		;6b8a
	dec hl			;6b8c
	ld a,(hl)			;6b8d
	cp 0efh		;6b8e
	jr z,l6b95h		;6b90
	or 001h		;6b92
	ld (hl),a			;6b94
l6b95h:
	ld bc,00018h		;6b95
	add hl,bc			;6b98
	ld a,(hl)			;6b99
	cp 0efh		;6b9a
	jr z,l6ba1h		;6b9c
	or 004h		;6b9e
	ld (hl),a			;6ba0
l6ba1h:
	inc hl			;6ba1
	ld a,(hl)			;6ba2
	cp 0efh		;6ba3
	jr z,l6baah		;6ba5
	or 002h		;6ba7
	ld (hl),a			;6ba9
l6baah:
	or a			;6baa
	sbc hl,bc		;6bab
	jr l6bb7h		;6bad
l6bafh:
	cp 002h		;6baf
	jr nz,l6bb7h		;6bb1
	ld a,(0e067h)		;6bb3
	ld (hl),a			;6bb6
l6bb7h:
	inc hl			;6bb7
	inc de			;6bb8
	exx			;6bb9
	dec bc			;6bba
	ld a,b			;6bbb
	or c			;6bbc
	jr nz,l6b84h		;6bbd
	ld hl,0ec00h		;6bbf
	ld b,018h		;6bc2
	ld de,00016h		;6bc4
	ld a,001h		;6bc7
l6bc9h:
	ld (hl),a			;6bc9
	inc hl			;6bca
	ld (hl),a			;6bcb
	add hl,de			;6bcc
	ld (hl),a			;6bcd
	inc hl			;6bce
	djnz l6bc9h		;6bcf
	ret			;6bd1
l6bd2h:
	sub 06bh		;6bd2
	ret po			;6bd4
	ld l,e			;6bd5
l6bd6h:
	push bc			;6bd6
	ld (hl),002h		;6bd7
	ld b,000h		;6bd9
	add hl,bc			;6bdb
	pop bc			;6bdc
	djnz l6bd6h		;6bdd
	ret			;6bdf
l6be0h:
	push bc			;6be0
	ld (hl),001h		;6be1
	ld b,000h		;6be3
	add hl,bc			;6be5
	pop bc			;6be6
	djnz l6be0h		;6be7
	ret			;6be9
l6beah:
	pop af			;6bea
	call 0013eh		;6beb
	ex af,af'			;6bee
	ld hl,0e002h		;6bef
	inc (hl)			;6bf2
	call 041cah		;6bf3
	call sub_6c0eh		;6bf6
	call 09d85h		;6bf9
	call l41d0h		;6bfc
	pop ix		;6bff
	pop iy		;6c01
	pop af			;6c03
	pop bc			;6c04
	pop de			;6c05
	pop hl			;6c06
	ex af,af'			;6c07
	exx			;6c08
	pop af			;6c09
	pop bc			;6c0a
	pop de			;6c0b
	pop hl			;6c0c
	ret			;6c0d
sub_6c0eh:
	ld a,(0e01eh)		;6c0e
	or a			;6c11
	ret z			;6c12
	ld a,(0e013h)		;6c13
	or a			;6c16
	jr nz,l6c71h		;6c17
	ex af,af'			;6c19
	bit 6,a		;6c1a
	jr z,l6c26h		;6c1c
	ld hl,0e006h		;6c1e
	inc (hl)			;6c21
	bit 0,(hl)		;6c22
	jr z,l6c3fh		;6c24
l6c26h:
	ld hl,03b00h		;6c26
	call 00053h		;6c29
	ld a,(00007h)		;6c2c
	ld c,a			;6c2f
	ld a,(0e01eh)		;6c30
	ld b,a			;6c33
	ld hl,0e600h		;6c34
l6c37h:
	outi		;6c37
	ex (sp),hl			;6c39
	ex (sp),hl			;6c3a
	jr nz,l6c37h		;6c3b
	jr l6c6ch		;6c3d
l6c3fh:
	ld hl,03b00h		;6c3f
	call 00053h		;6c42
	ld hl,(0e01eh)		;6c45
	ld a,l			;6c48
	exx			;6c49
	ld b,a			;6c4a
	srl b		;6c4b
	srl b		;6c4d
	exx			;6c4f
	ld de,0fffch		;6c50
	add hl,de			;6c53
	ld a,(00007h)		;6c54
	ld c,a			;6c57
	exx			;6c58
l6c59h:
	exx			;6c59
	ld b,004h		;6c5a
l6c5ch:
	ld a,(hl)			;6c5c
	out (c),a		;6c5d
	inc hl			;6c5f
	ex (sp),hl			;6c60
	ex (sp),hl			;6c61
	djnz l6c5ch		;6c62
	ld de,0fff8h		;6c64
	add hl,de			;6c67
	exx			;6c68
	djnz l6c59h		;6c69
	exx			;6c6b
l6c6ch:
	ld a,0d0h		;6c6c
	out (c),a		;6c6e
	ret			;6c70
l6c71h:
	ld hl,03b00h		;6c71
	ld a,0d0h		;6c74
	jp 0004dh		;6c76
l6c79h:
	ld a,001h		;6c79
	ld (0e065h),a		;6c7b
	call sub_a05fh		;6c7e
	ld a,00eh		;6c81
	call sub_a07bh		;6c83
	call 041cah		;6c86
	call sub_5654h		;6c89
	call l41d0h		;6c8c
	call l613eh		;6c8f
	ld c,009h		;6c92
	call l5006h		;6c94
	ld b,000h		;6c97
l6c99h:
	push bc			;6c99
	call sub_40b3h		;6c9a
	pop bc			;6c9d
	djnz l6c99h		;6c9e
	call sub_41b0h		;6ca0
	call sub_4187h		;6ca3
	xor a			;6ca6
	ld (0d000h),a		;6ca7
	ld c,000h		;6caa
l6cach:
	push bc			;6cac
	call sub_6cd7h		;6cad
	call l5d48h		;6cb0
	ld b,000h		;6cb3
l6cb5h:
	push bc			;6cb5
	call sub_40b3h		;6cb6
	pop bc			;6cb9
	djnz l6cb5h		;6cba
	pop bc			;6cbc
	inc c			;6cbd
	ld a,c			;6cbe
	cp 008h		;6cbf
	jr nz,l6cach		;6cc1
	ld hl,l404bh		;6cc3
	push hl			;6cc6
l6cc7h:
	call sub_40b3h		;6cc7
	call sub_41dch		;6cca
	ld a,(0e000h)		;6ccd
	bit 4,a		;6cd0
	jp z,sub_616ah		;6cd2
	jr l6cc7h		;6cd5
sub_6cd7h:
	exx			;6cd7
	ld hl,0d8c0h		;6cd8
	ld de,0d8c1h		;6cdb
	ld bc,0023fh		;6cde
	ld (hl),020h		;6ce1
	ldir		;6ce3
	exx			;6ce5
	ld l,c			;6ce6
	ld h,000h		;6ce7
	add hl,hl			;6ce9
	ld de,l6cf5h		;6cea
	add hl,de			;6ced
	ld a,(hl)			;6cee
	inc hl			;6cef
	ld h,(hl)			;6cf0
	ld l,a			;6cf1
	jp l4de3h		;6cf2
l6cf5h:
	dec b			;6cf5
	ld l,l			;6cf6
	ld b,a			;6cf7
	ld l,l			;6cf8
	ld l,e			;6cf9
	ld l,l			;6cfa
	sub d			;6cfb
	ld l,l			;6cfc
	or l			;6cfd
	ld l,l			;6cfe
	cpl			;6cff
	ld l,(hl)			;6d00
	ld c,(hl)			;6d01
	ld l,(hl)			;6d02
	ld e,e			;6d03
	ld l,(hl)			;6d04
	sbc a,(hl)			;6d05
	exx			;6d06
	ld b,a			;6d07
	ld b,c			;6d08
	ld c,l			;6d09
	ld b,l			;6d0a
	jr nz,l6d51h		;6d0b
	ld b,l			;6d0d
	ld d,e			;6d0e
	ld c,c			;6d0f
	ld b,a			;6d10
	ld c,(hl)			;6d11
	rst 38h			;6d12
	cp b			;6d13
	exx			;6d14
	ld d,b			;6d15
	ld d,d			;6d16
	ld c,a			;6d17
	ld b,a			;6d18
	ld d,d			;6d19
	ld b,c			;6d1a
	ld c,l			;6d1b
	rst 38h			;6d1c
	call z,sub_43d9h		;6d1d
	ld c,b			;6d20
	ld b,c			;6d21
	ld d,d			;6d22
	ld b,c			;6d23
	ld b,e			;6d24
	ld d,h			;6d25
	ld b,l			;6d26
	ld d,d			;6d27
	jr nz,l6d6eh		;6d28
	ld b,l			;6d2a
	ld d,e			;6d2b
	ld c,c			;6d2c
	ld b,a			;6d2d
	ld c,(hl)			;6d2e
	rst 38h			;6d2f
	inc bc			;6d30
	jp c,07962h		;6d31
	rst 38h			;6d34
	dec l			;6d35
	jp c,l6170h		;6d36
	ld h,e			;6d39
	jr nz,l6da2h		;6d3a
	ld (hl),l			;6d3c
	ld l,d			;6d3d
	ld l,c			;6d3e
	ld (hl),e			;6d3f
	ld l,b			;6d40
	ld l,c			;6d41
	ld l,l			;6d42
	ld h,c			;6d43
	rst 38h			;6d44
	rst 38h			;6d45
	rst 38h			;6d46
	call 04dd9h		;6d47
	ld d,l			;6d4a
	ld d,e			;6d4b
	ld c,c			;6d4c
	ld b,e			;6d4d
	jr nz,$+69		;6d4e
	ld c,a			;6d50
l6d51h:
	ld c,l			;6d51
	ld d,b			;6d52
	ld c,a			;6d53
	ld d,e			;6d54
	ld b,l			;6d55
	rst 38h			;6d56
	inc bc			;6d57
	jp c,07962h		;6d58
	rst 38h			;6d5b
	cpl			;6d5c
	jp c,0166dh		;6d5d
	ld l,l			;6d60
	ld l,c			;6d61
	ld a,c			;6d62
	ld h,c			;6d63
	ld l,l			;6d64
	ld l,a			;6d65
	ld (hl),h			;6d66
	ld l,a			;6d67
	rst 38h			;6d68
	rst 38h			;6d69
	rst 38h			;6d6a
	call 053d9h		;6d6b
l6d6eh:
	ld c,a			;6d6e
	ld d,l			;6d6f
	ld c,(hl)			;6d70
	ld b,h			;6d71
	jr nz,l6dc4h		;6d72
	ld d,d			;6d74
	ld c,a			;6d75
l6d76h:
	ld b,a			;6d76
	ld d,d			;6d77
l6d78h:
	ld b,c			;6d78
	ld c,l			;6d79
	rst 38h			;6d7a
	inc bc			;6d7b
	jp c,07962h		;6d7c
	rst 38h			;6d7f
	dec l			;6d80
	jp c,sub_656ah		;6d81
	ld l,l			;6d84
	ld l,c			;6d85
	ld l,(hl)			;6d86
	ld l,c			;6d87
	jr nz,$+106		;6d88
	ld l,c			;6d8a
	ld (hl),d			;6d8b
	ld l,a			;6d8c
	ld l,(hl)			;6d8d
	ld l,a			;6d8e
	rst 38h			;6d8f
	rst 38h			;6d90
	rst 38h			;6d91
	call z,sub_43d9h		;6d92
	ld c,b			;6d95
	ld b,c			;6d96
	ld d,d			;6d97
	ld b,c			;6d98
	ld b,e			;6d99
	ld d,h			;6d9a
	ld b,l			;6d9b
	ld d,d			;6d9c
	jr nz,l6de0h		;6d9d
	ld d,e			;6d9f
	ld d,e			;6da0
	ld c,c			;6da1
l6da2h:
	ld d,e			;6da2
	ld d,h			;6da3
	rst 38h			;6da4
	inc bc			;6da5
	jp c,07962h		;6da6
	rst 38h			;6da9
	ld sp,l79dah		;6daa
	ld l,a			;6dad
	ld (hl),d			;6dae
	ld l,c			;6daf
	ld l,e			;6db0
	ld l,c			;6db1
	rst 38h			;6db2
	rst 38h			;6db3
	rst 38h			;6db4
	add a,l			;6db5
	exx			;6db6
	ld d,e			;6db7
	ld d,b			;6db8
	ld b,l			;6db9
	ld b,e			;6dba
	ld c,c			;6dbb
	ld b,c			;6dbc
	ld c,h			;6dbd
	jr nz,l6e14h		;6dbe
	ld c,b			;6dc0
	ld b,c			;6dc1
	ld c,(hl)			;6dc2
	ld c,e			;6dc3
l6dc4h:
	ld d,e			;6dc4
	rst 38h			;6dc5
	cp e			;6dc6
	exx			;6dc7
	ld d,h			;6dc8
	ld c,a			;6dc9
	rst 38h			;6dca
	nop			;6dcb
	jp c,06177h		;6dcc
	ld l,a			;6dcf
	jr nz,l6e3bh		;6dd0
	ld (hl),e			;6dd2
	ld h,l			;6dd3
	ld h,l			;6dd4
	rst 38h			;6dd5
	inc de			;6dd6
	jp c,0756ch		;6dd7
	ld l,(hl)			;6dda
	ld h,c			;6ddb
	ld (hl),d			;6ddc
	ld l,c			;6ddd
	ld h,c			;6dde
	ld l,(hl)			;6ddf
l6de0h:
	jr nz,l6e55h		;6de0
	ld l,b			;6de2
	ld l,c			;6de3
	ld l,(hl)			;6de4
	ld (hl),h			;6de5
	ld h,c			;6de6
	ld l,(hl)			;6de7
	ld l,c			;6de8
	rst 38h			;6de9
	dec l			;6dea
	jp c,sub_616ah		;6deb
	ld l,(hl)			;6dee
	ld (hl),l			;6def
	ld (hl),e			;6df0
	jr nz,l6e67h		;6df1
	ld h,l			;6df3
	ld (hl),d			;6df4
	ld h,c			;6df5
	ld l,l			;6df6
	ld l,a			;6df7
	ld (hl),h			;6df8
	ld l,a			;6df9
	rst 38h			;6dfa
	ld b,(hl)			;6dfb
	jp c,l6170h		;6dfc
	ld l,h			;6dff
	jr nz,l6e6dh		;6e00
	ld l,c			;6e02
	ld (hl),h			;6e03
	ld h,c			;6e04
	ld (hl),h			;6e05
	ld h,c			;6e06
	ld l,(hl)			;6e07
	ld l,c			;6e08
	rst 38h			;6e09
	ld e,l			;6e0a
	jp c,07567h		;6e0b
	ld a,c			;6e0e
	jr nz,l6e84h		;6e0f
	ld l,b			;6e11
	ld l,c			;6e12
	ld (hl),d			;6e13
l6e14h:
	ld h,c			;6e14
	ld (hl),e			;6e15
	ld h,c			;6e16
	ld l,e			;6e17
	ld l,c			;6e18
	rst 38h			;6e19
	ld (hl),h			;6e1a
	jp c,l6e61h		;6e1b
	ld h,a			;6e1e
l6e1fh:
	jr nz,l6e89h		;6e1f
	ld l,c			;6e21
	ld (hl),d			;6e22
	ld h,c			;6e23
	ld (hl),h			;6e24
	ld h,c			;6e25
	ld (hl),d			;6e26
	ld h,c			;6e27
	ld l,b			;6e28
	ld l,l			;6e29
	ld h,l			;6e2a
	ld l,(hl)			;6e2b
	rst 38h			;6e2c
	rst 38h			;6e2d
	rst 38h			;6e2e
	and b			;6e2f
	exx			;6e30
	ld d,b			;6e31
	ld d,d			;6e32
	ld c,a			;6e33
	ld b,h			;6e34
	ld d,l			;6e35
	ld b,e			;6e36
	ld b,l			;6e37
	rst 38h			;6e38
	out (0d9h),a		;6e39
l6e3bh:
	ld h,d			;6e3b
	ld a,c			;6e3c
	rst 38h			;6e3d
	cp 0d9h		;6e3e
	ld l,l			;6e40
	ld l,a			;6e41
	ld l,a			;6e42
	jr nz,l6eb3h		;6e43
	ld l,c			;6e45
	ld l,c			;6e46
	ld (hl),h			;6e47
	ld h,c			;6e48
	ld l,(hl)			;6e49
	ld l,c			;6e4a
	rst 38h			;6e4b
	rst 38h			;6e4c
	rst 38h			;6e4d
	ret nc			;6e4e
	exx			;6e4f
	ret p			;6e50
	pop af			;6e51
	jp p,0f4f3h		;6e52
l6e55h:
	push af			;6e55
	or 0f7h		;6e56
	rst 38h			;6e58
	rst 38h			;6e59
	rst 38h			;6e5a
	ret m			;6e5b
	ret c			;6e5c
	ld b,a			;6e5d
	ld d,d			;6e5e
	ld b,l			;6e5f
	ld b,c			;6e60
l6e61h:
	ld d,h			;6e61
	dec d			;6e62
	dec d			;6e63
	rst 38h			;6e64
	inc hl			;6e65
	exx			;6e66
l6e67h:
	ld e,c			;6e67
	ld c,a			;6e68
	ld d,l			;6e69
	jr nz,l6eb0h		;6e6a
	ld b,l			;6e6c
l6e6dh:
	ld d,e			;6e6d
	ld d,h			;6e6e
	ld d,d			;6e6f
	ld c,a			;6e70
	ld e,c			;6e71
	ld b,l			;6e72
	ld b,h			;6e73
	jr nz,l6eb7h		;6e74
	ld c,h			;6e76
	ld c,h			;6e77
	rst 38h			;6e78
	ld a,(l54d9h)		;6e79
	ld c,b			;6e7c
	ld b,l			;6e7d
	jr nz,l6ec5h		;6e7e
	ld c,(hl)			;6e80
	ld b,l			;6e81
	ld c,l			;6e82
	ld e,c			;6e83
l6e84h:
	jr nz,l6ed3h		;6e84
	ld c,a			;6e86
	ld d,h			;6e87
	ld c,b			;6e88
l6e89h:
	ld b,l			;6e89
	ld d,d			;6e8a
	jr nz,$+85		;6e8b
	ld c,b			;6e8d
	ld c,c			;6e8e
	ld d,b			;6e8f
	rst 38h			;6e90
	ld d,d			;6e91
	exx			;6e92
	ld d,h			;6e93
	ld c,b			;6e94
	ld b,l			;6e95
	ld c,(hl)			;6e96
	jr nz,l6ef2h		;6e97
	ld c,a			;6e99
	ld d,l			;6e9a
	ld d,d			;6e9b
	jr nz,l6eebh		;6e9c
	ld c,c			;6e9e
	ld d,e			;6e9f
	ld d,e			;6ea0
	ld c,c			;6ea1
	ld c,a			;6ea2
	ld c,(hl)			;6ea3
	jr nz,l6eefh		;6ea4
	ld d,e			;6ea6
	rst 38h			;6ea7
	ld l,d			;6ea8
	exx			;6ea9
	ld b,e			;6eaa
	ld c,a			;6eab
	ld c,l			;6eac
	ld d,b			;6ead
	ld c,h			;6eae
	ld b,l			;6eaf
l6eb0h:
	ld d,h			;6eb0
	ld b,l			;6eb1
	ld b,h			;6eb2
l6eb3h:
	ld d,0ffh		;6eb3
	sbc a,e			;6eb5
	exx			;6eb6
l6eb7h:
	ld c,h			;6eb7
	ld b,c			;6eb8
	ld d,h			;6eb9
	ld b,l			;6eba
	ld d,d			;6ebb
	jr nz,$+91		;6ebc
	ld c,a			;6ebe
	ld d,l			;6ebf
	jr nz,l6f08h		;6ec0
	ld c,a			;6ec2
	ld d,l			;6ec3
	ld c,(hl)			;6ec4
l6ec5h:
	ld b,h			;6ec5
	jr nz,l6f1ch		;6ec6
	ld c,b			;6ec8
	ld b,l			;6ec9
	rst 38h			;6eca
	or d			;6ecb
	exx			;6ecc
	ld d,a			;6ecd
	ld d,d			;6ece
	ld c,c			;6ecf
	ld d,h			;6ed0
	ld d,h			;6ed1
	ld c,c			;6ed2
l6ed3h:
	ld c,(hl)			;6ed3
	ld b,a			;6ed4
	jr nz,l6f2bh		;6ed5
	ld c,b			;6ed7
	ld b,c			;6ed8
	ld d,h			;6ed9
	jr nz,l6f30h		;6eda
	ld b,l			;6edc
	ld c,h			;6edd
	ld c,h			;6ede
	jr nz,l6f3ah		;6edf
	ld c,a			;6ee1
	ld d,l			;6ee2
	rst 38h			;6ee3
	jp z,l54d9h		;6ee4
	ld c,b			;6ee7
	ld b,l			;6ee8
	jr nz,l6f3bh		;6ee9
l6eebh:
	ld c,a			;6eeb
	ld d,e			;6eec
	ld c,c			;6eed
	ld d,h			;6eee
l6eefh:
	ld c,c			;6eef
	ld c,a			;6ef0
	ld c,(hl)			;6ef1
l6ef2h:
	jr nz,l6f43h		;6ef2
	ld b,(hl)			;6ef4
	jr nz,l6f4bh		;6ef5
	ld c,b			;6ef7
	ld b,l			;6ef8
	rst 38h			;6ef9
	jp po,052d9h		;6efa
	ld b,l			;6efd
	ld b,c			;6efe
	ld c,h			;6eff
	ld c,h			;6f00
	ld e,c			;6f01
	jr nz,$+72		;6f02
	ld c,a			;6f04
	ld d,d			;6f05
	ld d,h			;6f06
	ld d,d			;6f07
l6f08h:
	ld b,l			;6f08
	ld d,e			;6f09
	ld d,e			;6f0a
	rst 38h			;6f0b
	jp m,l46d9h		;6f0c
	ld d,d			;6f0f
	ld c,a			;6f10
	ld c,l			;6f11
	jr nz,$+86		;6f12
	ld c,b			;6f14
	ld b,l			;6f15
	jr nz,l6f5ah		;6f16
	ld d,d			;6f18
	ld c,a			;6f19
	ld c,e			;6f1a
	ld b,l			;6f1b
l6f1ch:
	ld c,(hl)			;6f1c
	jr nz,l6f61h		;6f1d
	ld b,c			;6f1f
	ld d,e			;6f20
	ld b,l			;6f21
	ld d,0ffh		;6f22
	dec hl			;6f24
	jp c,l4f59h		;6f25
	ld d,l			;6f28
	jr nz,l6f6fh		;6f29
l6f2bh:
	ld b,l			;6f2b
	ld d,(hl)			;6f2c
	ld b,l			;6f2d
	ld c,h			;6f2e
	ld c,a			;6f2f
l6f30h:
	ld d,b			;6f30
	ld b,l			;6f31
	ld b,h			;6f32
	jr nz,l6f89h		;6f33
	ld c,b			;6f35
	ld b,l			;6f36
	jr nz,l6f87h		;6f37
	ld b,l			;6f39
l6f3ah:
	ld d,a			;6f3a
l6f3bh:
	jr nz,$+1		;6f3b
	ld b,d			;6f3d
	jp c,05547h		;6f3e
	ld b,c			;6f41
	ld d,d			;6f42
l6f43h:
	ld b,h			;6f43
	ld c,c			;6f44
	ld b,e			;6f45
	jr nz,$+86		;6f46
	ld c,a			;6f48
	jr nz,l6f8fh		;6f49
l6f4bh:
	ld b,l			;6f4b
	ld d,e			;6f4c
	ld d,h			;6f4d
	ld d,d			;6f4e
	ld c,a			;6f4f
	ld e,c			;6f50
	jr nz,$+86		;6f51
	ld c,b			;6f53
	ld b,l			;6f54
l6f55h:
	rst 38h			;6f55
	ld e,d			;6f56
	jp c,l4552h		;6f57
l6f5ah:
	ld b,c			;6f5a
	ld c,h			;6f5b
	ld c,h			;6f5c
	ld e,c			;6f5d
	jr nz,l6fa6h		;6f5e
	ld c,a			;6f60
l6f61h:
	ld d,d			;6f61
	ld d,h			;6f62
	ld d,d			;6f63
	ld b,l			;6f64
	ld d,e			;6f65
	ld d,e			;6f66
	jr nz,l6fb2h		;6f67
	ld c,(hl)			;6f69
	jr nz,l6fc0h		;6f6a
	ld c,b			;6f6c
	ld b,l			;6f6d
	rst 38h			;6f6e
l6f6fh:
	ld (hl),d			;6f6f
	jp c,04e55h		;6f70
	ld c,c			;6f73
	ld d,(hl)			;6f74
	ld b,l			;6f75
	ld d,d			;6f76
	ld d,e			;6f77
	ld b,l			;6f78
	ld d,0ffh		;6f79
	and e			;6f7b
	jp c,04f54h		;6f7c
	jr nz,$+68		;6f7f
	ld b,l			;6f81
	jr nz,l6fc7h		;6f82
	ld c,a			;6f84
	ld c,(hl)			;6f85
	ld d,h			;6f86
l6f87h:
	ld c,c			;6f87
	ld c,(hl)			;6f88
l6f89h:
	ld d,l			;6f89
	ld b,l			;6f8a
	ld b,h			;6f8b
	ld d,0ffh		;6f8c
	rst 38h			;6f8e
l6f8fh:
	rst 38h			;6f8f
sub_6f90h:
	ld a,(0e013h)		;6f90
	or a			;6f93
	ret nz			;6f94
	ld hl,0e500h		;6f95
	ld (0e01ch),hl		;6f98
	ld b,01ch		;6f9b
	ld ix,0d000h		;6f9d
l6fa1h:
	push bc			;6fa1
	ld a,(ix+000h)		;6fa2
	or a			;6fa5
l6fa6h:
	jp z,l6fbah		;6fa6
	ld l,a			;6fa9
	ld h,000h		;6faa
	add hl,hl			;6fac
	ld de,l8bb0h		;6fad
	add hl,de			;6fb0
	ld a,(hl)			;6fb1
l6fb2h:
	inc hl			;6fb2
	ld h,(hl)			;6fb3
	ld l,a			;6fb4
	ld bc,l6fbah		;6fb5
	push bc			;6fb8
	jp (hl)			;6fb9
l6fbah:
	ld bc,00020h		;6fba
	add ix,bc		;6fbd
	pop bc			;6fbf
l6fc0h:
	djnz l6fa1h		;6fc0
	ld a,(0d000h)		;6fc2
	cp 001h		;6fc5
l6fc7h:
	jr nz,l7011h		;6fc7
	ld de,(0d001h)		;6fc9
	ld a,e			;6fcd
	add a,0f0h		;6fce
	ld hl,(0e01ch)		;6fd0
	ld (hl),a			;6fd3
	inc hl			;6fd4
	ld (hl),d			;6fd5
	inc hl			;6fd6
	ld (hl),004h		;6fd7
	inc hl			;6fd9
	ex af,af'			;6fda
	ld a,(0d01ch)		;6fdb
	or a			;6fde
	jr nz,l6fe6h		;6fdf
	ex af,af'			;6fe1
	ld (hl),003h		;6fe2
	jr l6fe9h		;6fe4
l6fe6h:
	ex af,af'			;6fe6
	ld (hl),007h		;6fe7
l6fe9h:
	inc hl			;6fe9
	ld (hl),a			;6fea
	inc hl			;6feb
	ld (hl),d			;6fec
	inc hl			;6fed
	ld (hl),008h		;6fee
	inc hl			;6ff0
	ld (hl),001h		;6ff1
	inc hl			;6ff3
	ld (0e01ch),hl		;6ff4
l6ff7h:
	exx			;6ff7
	call 041cah		;6ff8
	ld hl,0e500h		;6ffb
	ld de,0e600h		;6ffe
	ld bc,00080h		;7001
	ldir		;7004
	exx			;7006
	ld de,00100h		;7007
	add hl,de			;700a
	ld (0e01eh),hl		;700b
	jp l41d0h		;700e
l7011h:
	ld hl,(0e01ch)		;7011
	jr l6ff7h		;7014
sub_7016h:
	ld a,(0e06ch)		;7016
	or a			;7019
	jp nz,l729ah		;701a
	bit 3,(ix+008h)		;701d
	call nz,sub_70c4h		;7021
	bit 4,(ix+008h)		;7024
	call nz,sub_70edh		;7028
	ld c,(ix+008h)		;702b
	bit 7,c		;702e
	jp nz,l729ah		;7030
	bit 0,c		;7033
	call nz,sub_7045h		;7035
	bit 1,c		;7038
	call nz,sub_7065h		;703a
	bit 2,c		;703d
	call nz,sub_7085h		;703f
	jp 07264h		;7042
sub_7045h:
	ld h,(ix+001h)		;7045
	ld l,(ix+005h)		;7048
	ld e,(ix+00ah)		;704b
	ld d,(ix+00bh)		;704e
	add hl,de			;7051
	ld (ix+001h),h		;7052
	ld (ix+005h),l		;7055
	ld a,h			;7058
	cp 0d0h		;7059
	ret c			;705b
	bit 3,(ix+007h)		;705c
	ret nz			;7060
	xor a			;7061
	jp l729ah		;7062
sub_7065h:
	ld h,(ix+002h)		;7065
	ld l,(ix+006h)		;7068
	ld e,(ix+00ch)		;706b
	ld d,(ix+00dh)		;706e
	add hl,de			;7071
	ld (ix+002h),h		;7072
	ld (ix+006h),l		;7075
sub_7078h:
	ld a,h			;7078
	cp 0b8h		;7079
	ret c			;707b
	bit 3,(ix+007h)		;707c
	ret nz			;7080
	xor a			;7081
	call l729ah		;7082
sub_7085h:
	dec (ix+00eh)		;7085
	ret nz			;7088
	ld a,(ix+00fh)		;7089
	ld (ix+00eh),a		;708c
	ld e,(ix+010h)		;708f
	ld d,000h		;7092
	ld l,(ix+012h)		;7094
	ld h,(ix+013h)		;7097
	add hl,de			;709a
	ld a,(hl)			;709b
	ld (ix+003h),a		;709c
	inc hl			;709f
	ld a,(hl)			;70a0
	ld (ix+004h),a		;70a1
	ld a,e			;70a4
	inc a			;70a5
	inc a			;70a6
	cp (ix+011h)		;70a7
	jp c,l70aeh		;70aa
	xor a			;70ad
l70aeh:
	ld (ix+010h),a		;70ae
	ret			;70b1
sub_70b2h:
	push ix		;70b2
	pop hl			;70b4
	ld bc,00008h		;70b5
	add hl,bc			;70b8
	ex de,hl			;70b9
	ld bc,00010h		;70ba
	ldir		;70bd
	set 7,(ix+007h)		;70bf
	ret			;70c3
sub_70c4h:
	ld b,(ix+009h)		;70c4
l70c7h:
	ld a,(ix+014h)		;70c7
	ld e,(ix+00ah)		;70ca
	ld d,(ix+00bh)		;70cd
	ex de,hl			;70d0
	ld d,000h		;70d1
	ld e,(ix+016h)		;70d3
	cp (ix+001h)		;70d6
	jr z,l70e5h		;70d9
	jr c,l70e8h		;70db
	add hl,de			;70dd
l70deh:
	ex de,hl			;70de
	ld (ix+00ah),e		;70df
	ld (ix+00bh),d		;70e2
l70e5h:
	djnz l70c7h		;70e5
	ret			;70e7
l70e8h:
	or a			;70e8
	sbc hl,de		;70e9
	jr l70deh		;70eb
sub_70edh:
	ld b,(ix+009h)		;70ed
l70f0h:
	ld a,(ix+015h)		;70f0
	ld d,(ix+00dh)		;70f3
	ld e,(ix+00ch)		;70f6
	ex de,hl			;70f9
	ld d,000h		;70fa
	ld e,(ix+017h)		;70fc
	cp (ix+002h)		;70ff
	jr z,l7115h		;7102
	jr c,l7110h		;7104
	add hl,de			;7106
l7107h:
	ex de,hl			;7107
	ld (ix+00dh),d		;7108
	ld (ix+00ch),e		;710b
	jr l7115h		;710e
l7110h:
	or a			;7110
	sbc hl,de		;7111
	jr l7107h		;7113
l7115h:
	djnz l70f0h		;7115
	ret			;7117
sub_7118h:
	ld a,(0d001h)		;7118
	ld (0e003h),a		;711b
	ld a,(0d002h)		;711e
	ld (0e004h),a		;7121
sub_7124h:
	ld iy,0e005h		;7124
	ld (iy+000h),000h		;7128
	ld a,(0e003h)		;712c
	sub (ix+001h)		;712f
	jp nc,l713bh		;7132
	neg		;7135
	set 2,(iy+000h)		;7137
l713bh:
	jp nz,l713fh		;713b
	inc a			;713e
l713fh:
	ld c,a			;713f
	ld a,(0e004h)		;7140
	sub (ix+002h)		;7143
	jp nc,l714fh		;7146
	neg		;7149
	set 3,(iy+000h)		;714b
l714fh:
	jp nz,l7153h		;714f
	inc a			;7152
l7153h:
	cp c			;7153
	jp c,l715eh		;7154
	ld b,a			;7157
	ld a,c			;7158
	ld c,b			;7159
	set 4,(iy+000h)		;715a
l715eh:
	ld h,a			;715e
	ld l,000h		;715f
	ld e,c			;7161
	ld a,h			;7162
	sla l		;7163
	rl a		;7165
	inc l			;7167
	sub e			;7168
	jr nc,l716dh		;7169
	add a,e			;716b
	dec l			;716c
l716dh:
	sla l		;716d
	rl a		;716f
	inc l			;7171
	sub e			;7172
	jr nc,l7177h		;7173
	add a,e			;7175
	dec l			;7176
l7177h:
	sla l		;7177
	rl a		;7179
	inc l			;717b
	sub e			;717c
	jr nc,l7181h		;717d
	add a,e			;717f
l7180h:
	dec l			;7180
l7181h:
	sla l		;7181
	rl a		;7183
	inc l			;7185
	sub e			;7186
	jr nc,l718bh		;7187
	add a,e			;7189
	dec l			;718a
l718bh:
	sla l		;718b
	rl a		;718d
	inc l			;718f
	sub e			;7190
	jr nc,l7195h		;7191
	add a,e			;7193
	dec l			;7194
l7195h:
	sla l		;7195
	rl a		;7197
	inc l			;7199
	sub e			;719a
	jr nc,l719fh		;719b
	add a,e			;719d
	dec l			;719e
l719fh:
	sla l		;719f
	rl a		;71a1
	inc l			;71a3
	sub e			;71a4
	jr nc,l71a9h		;71a5
	add a,e			;71a7
	dec l			;71a8
l71a9h:
	sla l		;71a9
	rl a		;71ab
	inc l			;71ad
	sub e			;71ae
	jr nc,l71b3h		;71af
	add a,e			;71b1
	dec l			;71b2
l71b3h:
	ld a,l			;71b3
	ld hl,l7201h		;71b4
	ld b,003h		;71b7
l71b9h:
	cp (hl)			;71b9
	jr c,l71bfh		;71ba
	inc hl			;71bc
	djnz l71b9h		;71bd
l71bfh:
	ld a,b			;71bf
	or (iy+000h)		;71c0
	ld e,a			;71c3
	ld d,000h		;71c4
	ld hl,l7204h		;71c6
	add hl,de			;71c9
	ld e,(hl)			;71ca
	ret			;71cb
l71cch:
	call sub_7118h		;71cc
sub_71cfh:
	ld d,000h		;71cf
	ex de,hl			;71d1
	add hl,hl			;71d2
	add hl,hl			;71d3
	ld de,l7224h		;71d4
	add hl,de			;71d7
	ld e,(hl)			;71d8
	inc hl			;71d9
	ld d,(hl)			;71da
	inc hl			;71db
	ld c,(hl)			;71dc
	inc hl			;71dd
	ld b,(hl)			;71de
	push bc			;71df
	ld hl,00000h		;71e0
	push hl			;71e3
	exx			;71e4
	pop hl			;71e5
	pop de			;71e6
	ld b,(ix+009h)		;71e7
l71eah:
	add hl,de			;71ea
	exx			;71eb
	add hl,de			;71ec
	exx			;71ed
	djnz l71eah		;71ee
	ex de,hl			;71f0
	ld (ix+00ch),e		;71f1
	ld (ix+00dh),d		;71f4
	exx			;71f7
	ex de,hl			;71f8
	ld (ix+00ah),e		;71f9
	ld (ix+00bh),d		;71fc
	exx			;71ff
l7200h:
	ret			;7200
l7201h:
	ld (lab6ah),a		;7201
l7204h:
	ld (bc),a			;7204
	inc bc			;7205
	inc bc			;7206
	inc b			;7207
	ld c,00dh		;7208
	dec c			;720a
	inc c			;720b
	ld b,005h		;720c
	dec b			;720e
	inc b			;720f
	ld a,(bc)			;7210
	dec bc			;7211
	dec bc			;7212
	inc c			;7213
	ld (bc),a			;7214
	ld bc,00001h		;7215
	ld c,00fh		;7218
	rrca			;721a
	nop			;721b
	ld b,007h		;721c
	rlca			;721e
	ex af,af'			;721f
	ld a,(bc)			;7220
	add hl,bc			;7221
	add hl,bc			;7222
	ex af,af'			;7223
l7224h:
	nop			;7224
	nop			;7225
	nop			;7226
	ld bc,00061h		;7227
	call pe,0b500h		;722a
	nop			;722d
	or l			;722e
	nop			;722f
	call pe,sub_6100h		;7230
	nop			;7233
	nop			;7234
	ld bc,00000h		;7235
	call pe,09f00h		;7238
	rst 38h			;723b
	or l			;723c
	nop			;723d
	ld c,e			;723e
	rst 38h			;723f
	ld h,c			;7240
	nop			;7241
	inc d			;7242
	rst 38h			;7243
	nop			;7244
	nop			;7245
	nop			;7246
	rst 38h			;7247
	sbc a,a			;7248
	rst 38h			;7249
	inc d			;724a
	rst 38h			;724b
	ld c,e			;724c
	rst 38h			;724d
	ld c,e			;724e
	rst 38h			;724f
	inc d			;7250
	rst 38h			;7251
	sbc a,a			;7252
	rst 38h			;7253
	nop			;7254
	rst 38h			;7255
	nop			;7256
	nop			;7257
	inc d			;7258
	rst 38h			;7259
	ld h,c			;725a
	nop			;725b
	ld c,e			;725c
	rst 38h			;725d
	or l			;725e
	nop			;725f
	sbc a,a			;7260
	rst 38h			;7261
	call pe,0dd00h		;7262
	push hl			;7265
	pop de			;7266
	inc de			;7267
	ld hl,(0e01ch)		;7268
	ld a,(de)			;726b
	add a,0f0h		;726c
	ld (hl),a			;726e
	inc hl			;726f
	inc de			;7270
	ld b,003h		;7271
l7273h:
	ld a,(de)			;7273
	ld (hl),a			;7274
	inc hl			;7275
	inc de			;7276
	djnz l7273h		;7277
	ld (0e01ch),hl		;7279
	ret			;727c
l727dh:
	push ix		;727d
	pop de			;727f
	inc de			;7280
	ld hl,(0e01ch)		;7281
	ld a,(de)			;7284
	add a,0f0h		;7285
	ld (hl),a			;7287
	inc hl			;7288
	inc de			;7289
	ld a,(de)			;728a
	ld (hl),a			;728b
	inc hl			;728c
	inc de			;728d
	ld a,(de)			;728e
	add a,004h		;728f
	ld (hl),a			;7291
	inc hl			;7292
	ld (hl),001h		;7293
	inc hl			;7295
	ld (0e01ch),hl		;7296
	ret			;7299
l729ah:
	xor a			;729a
	ld (ix+007h),a		;729b
	ld (ix+000h),a		;729e
	ld (ix+001h),0f0h		;72a1
	ld a,(0e01bh)		;72a5
	sub (ix+019h)		;72a8
	ld (0e01bh),a		;72ab
	xor a			;72ae
	ld (ix+019h),a		;72af
	ret			;72b2
sub_72b3h:
	ld a,(ix+001h)		;72b3
	add a,004h		;72b6
	ld b,a			;72b8
	ld a,(ix+002h)		;72b9
	add a,004h		;72bc
	ld c,a			;72be
	call sub_4bf6h		;72bf
	ld a,(hl)			;72c2
	inc hl			;72c3
	or (hl)			;72c4
	bit 0,a		;72c5
	ret			;72c7
l72c8h:
	call sub_72b3h		;72c8
	ret z			;72cb
	jp l729ah		;72cc
sub_72cfh:
	ex af,af'			;72cf
	ld a,(0e04dh)		;72d0
	or a			;72d3
	jr nz,l72dch		;72d4
	ld a,(0e05fh)		;72d6
	cp 005h		;72d9
	ret z			;72db
l72dch:
	ld hl,0e01bh		;72dc
	ld a,(hl)			;72df
	cp 013h		;72e0
	ccf			;72e2
	ret c			;72e3
	exx			;72e4
	call sub_4d96h		;72e5
	ret c			;72e8
	ex af,af'			;72e9
	ld (hl),a			;72ea
	inc hl			;72eb
	ld a,(ix+001h)		;72ec
	ld (hl),a			;72ef
	inc hl			;72f0
	ld a,(ix+002h)		;72f1
	ld (hl),a			;72f4
	or a			;72f5
	exx			;72f6
	inc (hl)			;72f7
	ret			;72f8
sub_72f9h:
	ld hl,0e01bh		;72f9
	ld a,(hl)			;72fc
	cp 013h		;72fd
	jr c,l730ah		;72ff
	pop bc			;7301
	ld (ix+000h),000h		;7302
	dec (hl)			;7306
	ex de,hl			;7307
	inc (hl)			;7308
	ret			;7309
l730ah:
	inc (hl)			;730a
	ret			;730b
sub_730ch:
	call sub_7399h		;730c
	ld iy,0d000h		;730f
	call sub_7363h		;7313
	ret nc			;7316
	jr l7347h		;7317
sub_7319h:
	call sub_7399h		;7319
	ld iy,0d000h		;731c
	call sub_7363h		;7320
	jp c,l7347h		;7323
	jr l732bh		;7326
sub_7328h:
	call sub_7399h		;7328
l732bh:
	ld iy,0d020h		;732b
	call sub_7363h		;732f
	jp c,l7347h		;7332
	ld iy,0d040h		;7335
	call sub_7363h		;7339
	jp c,l7347h		;733c
	ld iy,0d060h		;733f
	call sub_7363h		;7343
	ret nc			;7346
l7347h:
	ld e,(ix+000h)		;7347
	ld (ix+018h),e		;734a
	ld d,000h		;734d
	ld hl,074b8h		;734f
	add hl,de			;7352
	ld a,(hl)			;7353
	ld (ix+000h),a		;7354
	ld e,(iy+000h)		;7357
	ld hl,074b8h		;735a
	add hl,de			;735d
	ld a,(hl)			;735e
	ld (iy+000h),a		;735f
	ret			;7362
sub_7363h:
	or a			;7363
	bit 7,(iy+007h)		;7364
	ret z			;7368
	ld a,(iy+003h)		;7369
	ld e,a			;736c
	ld d,000h		;736d
	ld hl,0de00h		;736f
	add hl,de			;7372
	ld a,(iy+001h)		;7373
	add a,(hl)			;7376
	cp b			;7377
	inc hl			;7378
	jp nc,l7382h		;7379
	add a,(hl)			;737c
	cp b			;737d
	ccf			;737e
	ret nc			;737f
	jr l7384h		;7380
l7382h:
	cp c			;7382
	ret nc			;7383
l7384h:
	inc hl			;7384
	ld a,(iy+002h)		;7385
	add a,(hl)			;7388
	exx			;7389
	cp b			;738a
	jp nc,l7396h		;738b
	exx			;738e
	inc hl			;738f
	add a,(hl)			;7390
	exx			;7391
	cp b			;7392
	exx			;7393
	ccf			;7394
	ret			;7395
l7396h:
	cp c			;7396
	exx			;7397
	ret			;7398
sub_7399h:
	ld a,(ix+003h)		;7399
	ld e,a			;739c
	ld d,000h		;739d
	ld hl,0de00h		;739f
	add hl,de			;73a2
	ld a,(ix+001h)		;73a3
	add a,(hl)			;73a6
	ld b,a			;73a7
	inc hl			;73a8
	add a,(hl)			;73a9
	inc hl			;73aa
	ld c,a			;73ab
	push bc			;73ac
	ld a,(ix+002h)		;73ad
	add a,(hl)			;73b0
	ld b,a			;73b1
	inc hl			;73b2
	add a,(hl)			;73b3
	ld c,a			;73b4
	exx			;73b5
	pop bc			;73b6
	ret			;73b7
l73b8h:
	inc bc			;73b8
	ex af,af'			;73b9
	inc bc			;73ba
	add hl,bc			;73bb
	inc bc			;73bc
	ex af,af'			;73bd
	inc bc			;73be
	add hl,bc			;73bf
	nop			;73c0
	rlca			;73c1
	nop			;73c2
	rlca			;73c3
	nop			;73c4
	rrca			;73c5
	nop			;73c6
	rrca			;73c7
	nop			;73c8
	rrca			;73c9
	nop			;73ca
	rra			;73cb
	nop			;73cc
	nop			;73cd
	nop			;73ce
	nop			;73cf
	nop			;73d0
	rrca			;73d1
	ld b,003h		;73d2
	nop			;73d4
	nop			;73d5
	nop			;73d6
	nop			;73d7
	nop			;73d8
	rrca			;73d9
	nop			;73da
	rrca			;73db
	nop			;73dc
	rrca			;73dd
	nop			;73de
	rrca			;73df
	rlca			;73e0
	ld bc,00107h		;73e1
	rlca			;73e4
	ld bc,00107h		;73e5
	dec b			;73e8
	dec b			;73e9
	dec b			;73ea
	dec b			;73eb
	dec b			;73ec
	dec b			;73ed
	dec b			;73ee
	dec b			;73ef
	dec b			;73f0
	dec b			;73f1
	dec b			;73f2
	dec b			;73f3
	dec b			;73f4
	dec b			;73f5
	dec b			;73f6
	dec b			;73f7
	nop			;73f8
	rrca			;73f9
	nop			;73fa
	rrca			;73fb
	nop			;73fc
	rrca			;73fd
	nop			;73fe
	rrca			;73ff
	nop			;7400
	rrca			;7401
	nop			;7402
	rrca			;7403
	nop			;7404
	rrca			;7405
	nop			;7406
	rrca			;7407
	nop			;7408
	rrca			;7409
	nop			;740a
	rrca			;740b
	nop			;740c
	rrca			;740d
	nop			;740e
	rrca			;740f
	nop			;7410
	rrca			;7411
	nop			;7412
	rrca			;7413
	nop			;7414
	rrca			;7415
	nop			;7416
	rrca			;7417
	nop			;7418
	rrca			;7419
	ld bc,0000dh		;741a
	rrca			;741d
	ld b,002h		;741e
	ld (bc),a			;7420
	ld a,(bc)			;7421
	ld bc,0020dh		;7422
	ld a,(bc)			;7425
	ld bc,0020dh		;7426
	add hl,bc			;7429
	ld bc,0020dh		;742a
	add hl,bc			;742d
	ld bc,0020dh		;742e
	rlca			;7431
	ld bc,0020dh		;7432
	rlca			;7435
	ld bc,0010dh		;7436
	dec c			;7439
	ld bc,0010dh		;743a
	dec c			;743d
	ld bc,0040dh		;743e
	rlca			;7441
	ld bc,0040dh		;7442
	rlca			;7445
	ld bc,0040dh		;7446
	rlca			;7449
	ld bc,0040dh		;744a
	rlca			;744d
	ld bc,0010dh		;744e
	dec c			;7451
	ld bc,0010dh		;7452
	dec c			;7455
	ld bc,0010dh		;7456
	inc c			;7459
	ld bc,0010ch		;745a
	inc c			;745d
	ld bc,0030ch		;745e
	ex af,af'			;7461
	ld bc,0030ch		;7462
	ex af,af'			;7465
	ld bc,0050ch		;7466
	inc b			;7469
	ld bc,0050ch		;746a
	inc b			;746d
	ld bc,0030ch		;746e
	ex af,af'			;7471
	ld bc,0030ch		;7472
	ex af,af'			;7475
	ld bc,0010ch		;7476
	dec c			;7479
	ld bc,0010dh		;747a
	dec c			;747d
	ld bc,0010dh		;747e
	inc c			;7481
	inc bc			;7482
	add hl,bc			;7483
	ld bc,0030ch		;7484
	add hl,bc			;7487
	ld (bc),a			;7488
	inc c			;7489
	ld bc,0020dh		;748a
	inc c			;748d
	ld bc,0010dh		;748e
	dec c			;7491
	nop			;7492
	ld c,001h		;7493
	dec c			;7495
	nop			;7496
	ld c,001h		;7497
	dec c			;7499
	ld bc,0010dh		;749a
	dec c			;749d
	ld bc,0020dh		;749e
	dec bc			;74a1
	ld (bc),a			;74a2
	dec bc			;74a3
	ld (bc),a			;74a4
	dec bc			;74a5
	ld (bc),a			;74a6
	dec bc			;74a7
	ld bc,0020bh		;74a8
	dec bc			;74ab
	ld bc,0020bh		;74ac
	dec bc			;74af
	ld (bc),a			;74b0
	ld a,(bc)			;74b1
	ld bc,0020dh		;74b2
	ld a,(bc)			;74b5
	ld bc,0000dh		;74b6
	rrca			;74b9
	rlca			;74ba
	ex af,af'			;74bb
	add hl,bc			;74bc
	dec b			;74bd
	ld b,007h		;74be
	ex af,af'			;74c0
	add hl,bc			;74c1
	ld b,00bh		;74c2
	inc c			;74c4
	ld c,00eh		;74c5
	rrca			;74c7
	ld b,00eh		;74c8
	ld c,006h		;74ca
	ld b,006h		;74cc
	ld b,006h		;74ce
	ld b,006h		;74d0
	ld b,006h		;74d2
	ld b,006h		;74d4
l74d6h:
	bit 7,(ix+007h)		;74d6
	jr nz,l7517h		;74da
	call 041cah		;74dc
	ld hl,093c9h		;74df
	ld de,01800h		;74e2
	ld bc,00100h		;74e5
	call sub_4299h		;74e8
	call l41d0h		;74eb
	ld (ix+001h),0a0h		;74ee
	ld (ix+002h),05ch		;74f2
	xor a			;74f6
	ld (0e02bh),a		;74f7
	ld (ix+003h),a		;74fa
	ld (ix+004h),00ah		;74fd
	ld (ix+008h),003h		;7501
	ld (ix+019h),a		;7505
	ld (ix+01eh),040h		;7508
	ld (ix+01fh),000h		;750c
	set 7,(ix+007h)		;7510
	jp l7669h		;7514
l7517h:
	ld a,(ix+01ch)		;7517
	or a			;751a
	jr nz,l7523h		;751b
	ld (ix+004h),00ah		;751d
	jr l7527h		;7521
l7523h:
	ld (ix+004h),00fh		;7523
l7527h:
	cp 002h		;7527
	jp z,07264h		;7529
	ld a,(0e00fh)		;752c
	inc a			;752f
	ld (ix+009h),a		;7530
	call sub_7926h		;7533
	ld a,(0e001h)		;7536
	cp 004h		;7539
	jp z,l760bh		;753b
	ld e,a			;753e
	ld d,000h		;753f
	ld hl,l771eh		;7541
	add hl,de			;7544
	ld e,(hl)			;7545
	ld (ix+01dh),e		;7546
	call sub_71cfh		;7549
	ld a,(ix+01dh)		;754c
	and 007h		;754f
	jr z,l75b2h		;7551
	ld l,(ix+005h)		;7553
	ld h,(ix+001h)		;7556
	ld e,(ix+00ah)		;7559
	ld d,(ix+00bh)		;755c
	add hl,de			;755f
	ld a,h			;7560
	cp 027h		;7561
	jr nc,l756ah		;7563
	ld hl,02700h		;7565
	jr l7584h		;7568
l756ah:
	ex af,af'			;756a
	ld a,(ix+01ch)		;756b
	cp 001h		;756e
	jr z,l757ch		;7570
	ex af,af'			;7572
	cp 0c0h		;7573
	jr c,l7584h		;7575
	ld hl,0c000h		;7577
	jr l7584h		;757a
l757ch:
	ex af,af'			;757c
	cp 0a8h		;757d
	jr c,l7584h		;757f
	ld hl,la800h		;7581
l7584h:
	ld (ix+001h),h		;7584
	ld (ix+005h),l		;7587
	ld a,(ix+01ch)		;758a
	or a			;758d
	jr nz,l75b2h		;758e
	call sub_76c8h		;7590
	jr z,l75b2h		;7593
	ld a,(ix+01dh)		;7595
	cp 008h		;7598
	jr c,l75a8h		;759a
	ld a,00ch		;759c
	add a,h			;759e
	and 0f8h		;759f
	sub 004h		;75a1
	ld (ix+001h),a		;75a3
	jr l75b2h		;75a6
l75a8h:
	ld a,h			;75a8
	sub 004h		;75a9
	and 0f8h		;75ab
	add a,004h		;75ad
	ld (ix+001h),a		;75af
l75b2h:
	ld a,(ix+01dh)		;75b2
	add a,004h		;75b5
	and 007h		;75b7
	jr z,l760bh		;75b9
	ld e,(ix+00ch)		;75bb
	ld d,(ix+00dh)		;75be
	ld l,(ix+006h)		;75c1
	ld h,(ix+002h)		;75c4
	add hl,de			;75c7
	ld a,h			;75c8
	cp 010h		;75c9
	jr nc,l75d2h		;75cb
	ld hl,01000h		;75cd
	jr l75d9h		;75d0
l75d2h:
	cp 0a8h		;75d2
	jr c,l75d9h		;75d4
	ld hl,la800h		;75d6
l75d9h:
	ld (ix+002h),h		;75d9
	ld (ix+006h),l		;75dc
	ld a,(ix+01ch)		;75df
	or a			;75e2
	jr nz,l760bh		;75e3
	call sub_76c8h		;75e5
	jr z,l760bh		;75e8
	ld a,(ix+01dh)		;75ea
	add a,004h		;75ed
	and 00fh		;75ef
	cp 008h		;75f1
	jr c,l7601h		;75f3
	ld a,00ch		;75f5
	add a,h			;75f7
	and 0f8h		;75f8
	sub 004h		;75fa
	ld (ix+002h),a		;75fc
	jr l760bh		;75ff
l7601h:
	ld a,h			;7601
	sub 004h		;7602
	and 0f8h		;7604
	add a,004h		;7606
	ld (ix+002h),a		;7608
l760bh:
	ld a,(ix+01ch)		;760b
	cp 001h		;760e
	jr z,l7621h		;7610
	ld a,(0e00ch)		;7612
	or a			;7615
	call nz,sub_78ceh		;7616
	ld a,(0e000h)		;7619
	bit 4,a		;761c
	jp z,l7634h		;761e
l7621h:
	ld a,(0e02bh)		;7621
	or a			;7624
	jp z,l7669h		;7625
	xor a			;7628
	ld (0e02bh),a		;7629
	ld a,00dh		;762c
	call sub_a07bh		;762e
	jp l7669h		;7631
l7634h:
	ld a,(0e02bh)		;7634
	or a			;7637
	jr nz,l7643h		;7638
	inc a			;763a
	ld (0e02bh),a		;763b
	ld a,00ch		;763e
	call sub_a07bh		;7640
l7643h:
	ld hl,0d020h		;7643
	ld de,00020h		;7646
	ld b,003h		;7649
l764bh:
	ld a,(hl)			;764b
	or a			;764c
	jr z,l7654h		;764d
	add hl,de			;764f
	djnz l764bh		;7650
	jr l7669h		;7652
l7654h:
	push hl			;7654
	pop iy		;7655
	ld a,(0e00ah)		;7657
	ld (iy+000h),a		;765a
	ld a,(ix+001h)		;765d
	ld (iy+001h),a		;7660
	ld a,(ix+002h)		;7663
	ld (iy+002h),a		;7666
l7669h:
	ld a,(ix+01ch)		;7669
	or a			;766c
	jp nz,07264h		;766d
	call 07264h		;7670
	ld a,(ix+001h)		;7673
	add a,008h		;7676
	ld b,a			;7678
	ld a,(ix+002h)		;7679
	add a,008h		;767c
	ld c,a			;767e
	srl b		;767f
	srl b		;7681
	srl b		;7683
	srl c		;7685
	srl c		;7687
	srl c		;7689
	push bc			;768b
	call sub_4c02h		;768c
	pop bc			;768f
	ld a,(hl)			;7690
	cp 002h		;7691
	ret nz			;7693
	ld (hl),000h		;7694
	ld a,00fh		;7696
	call sub_a07bh		;7698
	ld de,00001h		;769b
	ld hl,(0e019h)		;769e
	add hl,de			;76a1
	ret c			;76a2
	ld (0e019h),hl		;76a3
	ld hl,(0e049h)		;76a6
	add hl,de			;76a9
	ret c			;76aa
	ld (0e049h),hl		;76ab
	push bc			;76ae
	dec b			;76af
	dec b			;76b0
	call sub_4c21h		;76b1
	call 041cah		;76b4
	ld a,(0e068h)		;76b7
	call 0004dh		;76ba
	pop bc			;76bd
	call sub_4c0bh		;76be
	ld a,(0e068h)		;76c1
	ld (hl),a			;76c4
	jp sub_50b7h		;76c5
sub_76c8h:
	push hl			;76c8
	ld d,000h		;76c9
	ld a,(ix+001h)		;76cb
	add a,004h		;76ce
	ld b,a			;76d0
	and 007h		;76d1
	jr nz,l76d7h		;76d3
	set 0,d		;76d5
l76d7h:
	ld a,(ix+002h)		;76d7
	add a,004h		;76da
	ld c,a			;76dc
	and 007h		;76dd
	jr nz,l76e3h		;76df
	set 1,d		;76e1
l76e3h:
	ld a,d			;76e3
	ex af,af'			;76e4
	call sub_4bf6h		;76e5
	ex de,hl			;76e8
	ex af,af'			;76e9
	ld l,a			;76ea
	ld h,000h		;76eb
	add hl,hl			;76ed
	ld bc,l76f7h		;76ee
	add hl,bc			;76f1
	ld a,(hl)			;76f2
	inc hl			;76f3
	ld h,(hl)			;76f4
	ld l,a			;76f5
	jp (hl)			;76f6
l76f7h:
	rst 38h			;76f7
	halt			;76f8
	ld c,077h		;76f9
	ld (de),a			;76fb
	ld (hl),a			;76fc
	ld a,(de)			;76fd
	ld (hl),a			;76fe
	ex de,hl			;76ff
	ld a,(hl)			;7700
	inc hl			;7701
	or (hl)			;7702
	ld bc,00017h		;7703
	add hl,bc			;7706
	or (hl)			;7707
l7708h:
	inc hl			;7708
l7709h:
	or (hl)			;7709
l770ah:
	bit 0,a		;770a
	pop hl			;770c
	ret			;770d
	ex de,hl			;770e
	ld a,(hl)			;770f
	jr l7708h		;7710
	ex de,hl			;7712
	ld a,(hl)			;7713
	ld bc,00018h		;7714
	add hl,bc			;7717
	jr l7709h		;7718
	ex de,hl			;771a
	ld a,(hl)			;771b
	jr l770ah		;771c
l771eh:
	ld b,008h		;771e
	ld a,(bc)			;7720
	inc b			;7721
	nop			;7722
	inc c			;7723
	ld (bc),a			;7724
	nop			;7725
	ld c,0ddh		;7726
	rlc a		;7728
	ld a,(hl)			;772a
	jr nz,l7737h		;772b
	ld (ix+003h),018h		;772d
	call sub_7855h		;7731
	call sub_71cfh		;7734
l7737h:
	call sub_7848h		;7737
	call sub_7016h		;773a
	call sub_4287h		;773d
	ld a,l			;7740
	and 00fh		;7741
	ld (ix+004h),a		;7743
	ld a,(0e05fh)		;7746
	cp 002h		;7749
	ret z			;774b
	ld a,(ix+001h)		;774c
	add a,004h		;774f
	ld b,a			;7751
	ld a,(ix+002h)		;7752
	add a,008h		;7755
	ld c,a			;7757
	call sub_4bf6h		;7758
	ld a,(hl)			;775b
	ld bc,00018h		;775c
	add hl,bc			;775f
	or (hl)			;7760
	and 003h		;7761
	ret z			;7763
	ld hl,(0e01ch)		;7764
	ld de,0fffch		;7767
	add hl,de			;776a
	ld (0e01ch),hl		;776b
	jp l729ah		;776e
l7771h:
	bit 7,(ix+007h)		;7771
	jr nz,l7781h		;7775
	ld (ix+003h),00ch		;7777
	call sub_7855h		;777b
	call sub_71cfh		;777e
l7781h:
	call sub_7848h		;7781
	call sub_7016h		;7784
	call sub_4287h		;7787
	ld a,l			;778a
	and 00fh		;778b
	ld (ix+004h),a		;778d
	ld a,(0e05fh)		;7790
	cp 002h		;7793
	ret z			;7795
	ld a,(ix+001h)		;7796
	add a,004h		;7799
	ld b,a			;779b
	ld a,(ix+002h)		;779c
	add a,004h		;779f
	ld c,a			;77a1
	call sub_4bf6h		;77a2
	ld a,(hl)			;77a5
	inc hl			;77a6
	or (hl)			;77a7
	ld bc,00017h		;77a8
	add hl,bc			;77ab
	or (hl)			;77ac
	inc hl			;77ad
	or (hl)			;77ae
	and 003h		;77af
	ret z			;77b1
	ld hl,(0e01ch)		;77b2
	ld de,0fffch		;77b5
	add hl,de			;77b8
	ld (0e01ch),hl		;77b9
	jp l729ah		;77bc
l77bfh:
	bit 7,(ix+007h)		;77bf
	jr nz,l77d7h		;77c3
	ld a,(ix+002h)		;77c5
	add a,0f8h		;77c8
	ld (ix+002h),a		;77ca
	ld (ix+003h),010h		;77cd
	call sub_7855h		;77d1
	call sub_71cfh		;77d4
l77d7h:
	call sub_7839h		;77d7
	call sub_7016h		;77da
	ld hl,(0e01ch)		;77dd
	ld a,(ix+001h)		;77e0
	add a,0f0h		;77e3
	ld (hl),a			;77e5
	inc hl			;77e6
	ld a,(ix+002h)		;77e7
	add a,010h		;77ea
	ld (hl),a			;77ec
	inc hl			;77ed
	ld (hl),014h		;77ee
	inc hl			;77f0
	ld a,(ix+004h)		;77f1
	ld (hl),a			;77f4
	inc hl			;77f5
	ld (0e01ch),hl		;77f6
	call sub_4287h		;77f9
	ld a,l			;77fc
	and 00fh		;77fd
	ld (ix+004h),a		;77ff
	ld a,(0e05fh)		;7802
	cp 002h		;7805
	ret z			;7807
sub_7808h:
	ld a,(ix+001h)		;7808
	add a,004h		;780b
	ld b,a			;780d
	ld a,(ix+002h)		;780e
	add a,004h		;7811
	ld c,a			;7813
	call sub_4bf6h		;7814
	ld a,(hl)			;7817
	inc hl			;7818
	or (hl)			;7819
	inc hl			;781a
	or (hl)			;781b
	inc hl			;781c
	or (hl)			;781d
	ld bc,00015h		;781e
	add hl,bc			;7821
	or (hl)			;7822
	inc hl			;7823
	or (hl)			;7824
	inc hl			;7825
	or (hl)			;7826
	inc hl			;7827
	or (hl)			;7828
	and 003h		;7829
	ret z			;782b
	ld hl,(0e01ch)		;782c
	ld de,0fff8h		;782f
	add hl,de			;7832
	ld (0e01ch),hl		;7833
	jp l729ah		;7836
sub_7839h:
	ld a,(0e05fh)		;7839
	cp 006h		;783c
	ret nz			;783e
	ld a,(0d002h)		;783f
	add a,0f8h		;7842
	ld (ix+002h),a		;7844
	ret			;7847
sub_7848h:
	ld a,(0e05fh)		;7848
	cp 006h		;784b
	ret nz			;784d
	ld a,(0d002h)		;784e
	ld (ix+002h),a		;7851
	ret			;7854
sub_7855h:
	set 7,(ix+007h)		;7855
	ld (ix+008h),003h		;7859
	ld (ix+009h),00ch		;785d
	ld a,(0e05fh)		;7861
	cp 006h		;7864
	jr z,l787bh		;7866
	ld a,(0e001h)		;7868
	cp 003h		;786b
	jr c,l7877h		;786d
	cp 006h		;786f
	jr c,l787bh		;7871
	ld de,0000dh		;7873
	ret			;7876
l7877h:
	ld de,0000bh		;7877
	ret			;787a
l787bh:
	ld de,0000ch		;787b
	ret			;787e
l787fh:
	ld de,00341h		;787f
	push ix		;7882
	pop hl			;7884
	add hl,de			;7885
	ld (hl),0f0h		;7886
	jp l729ah		;7888
	ld a,d			;788b
	add a,a			;788c
	add a,a			;788d
	add a,a			;788e
	ld b,a			;788f
	ld a,e			;7890
	add a,a			;7891
	add a,a			;7892
	add a,a			;7893
	sub b			;7894
	ld b,a			;7895
	jr c,l78a1h		;7896
	ld a,(ix+002h)		;7898
	sub (ix+001h)		;789b
	ret c			;789e
l789fh:
	cp b			;789f
	ret			;78a0
l78a1h:
	ld a,(ix+002h)		;78a1
	sub (ix+001h)		;78a4
	jr c,l789fh		;78a7
	ret			;78a9
	ld a,d			;78aa
	add a,a			;78ab
	add a,a			;78ac
	add a,a			;78ad
	ld b,a			;78ae
	ld a,e			;78af
	add a,a			;78b0
	add a,a			;78b1
	add a,a			;78b2
	add a,b			;78b3
	ld b,a			;78b4
	jr c,l78c3h		;78b5
	ld a,(ix+001h)		;78b7
	add a,006h		;78ba
	add a,(ix+002h)		;78bc
	jr nc,l78cch		;78bf
	ccf			;78c1
	ret			;78c2
l78c3h:
	ld a,(ix+001h)		;78c3
	add a,008h		;78c6
	add a,(ix+002h)		;78c8
	ret c			;78cb
l78cch:
	cp b			;78cc
	ret			;78cd
sub_78ceh:
	inc (ix+01fh)		;78ce
	ld a,(ix+01fh)		;78d1
	and 007h		;78d4
	jr nz,l78e0h		;78d6
	ld a,(ix+01eh)		;78d8
	xor 010h		;78db
	ld (ix+01eh),a		;78dd
l78e0h:
	ld a,(ix+001h)		;78e0
	add a,0e8h		;78e3
	ld c,a			;78e5
	ld a,(ix+002h)		;78e6
	add a,0f8h		;78e9
	ld d,a			;78eb
	add a,010h		;78ec
	ld e,a			;78ee
	ld a,(ix+01eh)		;78ef
	ld hl,(0e01ch)		;78f2
	ld b,002h		;78f5
l78f7h:
	ld (hl),c			;78f7
	inc hl			;78f8
	ld (hl),d			;78f9
	inc hl			;78fa
	ld (hl),a			;78fb
sub_78fch:
	add a,004h		;78fc
	inc hl			;78fe
	inc hl			;78ff
	ld (hl),c			;7900
	inc hl			;7901
	ld (hl),e			;7902
	inc hl			;7903
	ld (hl),a			;7904
	add a,004h		;7905
	inc hl			;7907
	inc hl			;7908
	ex af,af'			;7909
	ld a,c			;790a
	add a,010h		;790b
	ld c,a			;790d
	ex af,af'			;790e
	djnz l78f7h		;790f
	ld (0e01ch),hl		;7911
	push hl			;7914
	call sub_427fh		;7915
	and 00fh		;7918
	pop hl			;791a
	ld b,004h		;791b
	ld de,0fffch		;791d
	dec hl			;7920
l7921h:
	ld (hl),a			;7921
	add hl,de			;7922
	djnz l7921h		;7923
	ret			;7925
sub_7926h:
	ld a,(0e069h)		;7926
	or a			;7929
	jp z,sub_41dch		;792a
	ld hl,0e000h		;792d
	res 4,(hl)		;7930
	ld a,(0e06ah)		;7932
	ld (0e001h),a		;7935
	ld hl,0e06bh		;7938
	dec (hl)			;793b
	ret nz			;793c
	call sub_4287h		;793d
	ld a,h			;7940
	and 00fh		;7941
	add a,008h		;7943
	ld (0e06bh),a		;7945
	ld a,l			;7948
	and 00fh		;7949
	cp 009h		;794b
	jr c,l7951h		;794d
	ld a,004h		;794f
l7951h:
	ld (0e06ah),a		;7951
	ret			;7954
	ld a,(ix+007h)		;7955
	bit 7,a		;7958
	jp z,l7a36h		;795a
	bit 2,(ix+008h)		;795d
	jp nz,l7a14h		;7961
	bit 1,a		;7964
	jr nz,l799ah		;7966
	ld a,(0d001h)		;7968
	sub (ix+001h)		;796b
	jr nc,l7971h		;796e
	cpl			;7970
l7971h:
	ld b,a			;7971
	ld a,(0d002h)		;7972
	sub (ix+002h)		;7975
	jr nc,l797bh		;7978
	cpl			;797a
l797bh:
	add a,b			;797b
	cp 050h		;797c
	jr nc,l799ah		;797e
	bit 0,(ix+01fh)		;7980
	jr z,l798ah		;7984
	ld a,012h		;7986
	jr l798ch		;7988
l798ah:
	ld a,011h		;798a
l798ch:
	call sub_72cfh		;798c
	jr c,l799ah		;798f
	ld a,00bh		;7991
	call sub_a07bh		;7993
	set 1,(ix+007h)		;7996
l799ah:
	ld a,(ix+001h)		;799a
	bit 0,(ix+01fh)		;799d
	jr nz,l79ach		;79a1
	cp 0b8h		;79a3
	jr c,l79c1h		;79a5
	ld de,l7a70h		;79a7
	jr l79b3h		;79aa
l79ach:
	cp 018h		;79ac
	jr nc,l79c1h		;79ae
	ld de,l7a78h		;79b0
l79b3h:
	ld (ix+012h),e		;79b3
	ld (ix+013h),d		;79b6
	ld (ix+010h),000h		;79b9
	ld (ix+008h),004h		;79bd
l79c1h:
	ld e,(ix+01ch)		;79c1
	ld d,000h		;79c4
	call sub_71cfh		;79c6
	call sub_7016h		;79c9
	ld a,(ix+000h)		;79cc
	or a			;79cf
	jr nz,l79d7h		;79d0
	ld hl,0e050h		;79d2
	inc (hl)			;79d5
	ret			;79d6
l79d7h:
	call sub_72b3h		;79d7
l79dah:
	jr z,l79f1h		;79da
	ld a,(ix+01ch)		;79dc
	add a,008h		;79df
	and 00fh		;79e1
	ld (ix+01ch),a		;79e3
	add a,009h		;79e6
	and 00fh		;79e8
	ld (ix+01eh),a		;79ea
	ld (ix+01dh),002h		;79ed
l79f1h:
	ld a,(ix+01ch)		;79f1
	cp (ix+01eh)		;79f4
	jr z,l7a08h		;79f7
	dec (ix+01dh)		;79f9
	jr nz,l7a08h		;79fc
	ld (ix+01dh),002h		;79fe
	dec a			;7a02
	and 00fh		;7a03
	ld (ix+01ch),a		;7a05
l7a08h:
	call sub_7319h		;7a08
	ld a,(ix+000h)		;7a0b
	cp 010h		;7a0e
	ret nz			;7a10
	jp l727dh		;7a11
l7a14h:
	ld a,(ix+010h)		;7a14
	cp 008h		;7a17
	jr nz,l79c1h		;7a19
	ld (ix+008h),003h		;7a1b
	call sub_7118h		;7a1f
	ld (ix+01ch),e		;7a22
	ld (ix+01eh),e		;7a25
	ld a,(ix+01fh)		;7a28
	xor 001h		;7a2b
	ld (ix+01fh),a		;7a2d
	res 1,(ix+007h)		;7a30
	jr l79c1h		;7a34
l7a36h:
	ld de,0e050h		;7a36
	call sub_72f9h		;7a39
	call sub_427fh		;7a3c
	ld (ix+002h),a		;7a3f
	xor a			;7a42
	ld (ix+001h),a		;7a43
	ld (ix+003h),080h		;7a46
	ld (ix+004h),008h		;7a4a
	ld (ix+01fh),a		;7a4e
	ld a,004h		;7a51
	ld (ix+01ch),a		;7a53
	ld (ix+01eh),a		;7a56
	ld (ix+019h),002h		;7a59
	ld de,l7a66h		;7a5d
	call sub_70b2h		;7a60
	jp l727dh		;7a63
l7a66h:
	inc bc			;7a66
	inc bc			;7a67
	nop			;7a68
	nop			;7a69
	nop			;7a6a
	nop			;7a6b
	inc bc			;7a6c
	inc bc			;7a6d
	nop			;7a6e
	ld a,(bc)			;7a6f
l7a70h:
	add a,b			;7a70
	ex af,af'			;7a71
	adc a,b			;7a72
	ex af,af'			;7a73
	sub b			;7a74
	ex af,af'			;7a75
	sbc a,b			;7a76
	ex af,af'			;7a77
l7a78h:
	sbc a,b			;7a78
	ex af,af'			;7a79
	sub b			;7a7a
	ex af,af'			;7a7b
	adc a,b			;7a7c
	ex af,af'			;7a7d
	add a,b			;7a7e
	ex af,af'			;7a7f
	bit 7,(ix+007h)		;7a80
	jr z,l7a94h		;7a84
	call sub_7016h		;7a86
	call sub_730ch		;7a89
	ld a,(ix+000h)		;7a8c
	or a			;7a8f
	ret z			;7a90
	jp l72c8h		;7a91
l7a94h:
	ld (ix+00bh),005h		;7a94
l7a98h:
	ld (ix+008h),001h		;7a98
	ld (ix+00ah),000h		;7a9c
	ld (ix+003h),060h		;7aa0
	ld (ix+004h),00bh		;7aa4
	ld (ix+007h),080h		;7aa8
	ld (ix+019h),001h		;7aac
	ret			;7ab0
	ld (ix+000h),011h		;7ab1
	ld (ix+00bh),0fbh		;7ab5
	jr l7a98h		;7ab9
	bit 7,(ix+007h)		;7abb
	jr z,l7b25h		;7abf
	dec (ix+01dh)		;7ac1
	jr nz,l7adch		;7ac4
	ld (ix+01dh),008h		;7ac6
	ld a,(ix+01ch)		;7aca
	bit 0,(ix+01eh)		;7acd
	jr z,l7ad6h		;7ad1
	dec a			;7ad3
	jr l7ad7h		;7ad4
l7ad6h:
	inc a			;7ad6
l7ad7h:
	and 00fh		;7ad7
	ld (ix+01ch),a		;7ad9
l7adch:
	ld e,(ix+01ch)		;7adc
	ld d,000h		;7adf
	call sub_71cfh		;7ae1
	call sub_7016h		;7ae4
	ld a,(ix+000h)		;7ae7
	or a			;7aea
	jr nz,l7af2h		;7aeb
	ld hl,0e053h		;7aed
	inc (hl)			;7af0
	ret			;7af1
l7af2h:
	call sub_72b3h		;7af2
	jr z,l7b05h		;7af5
	ld a,(ix+01ch)		;7af7
	add a,008h		;7afa
	and 00fh		;7afc
	ld (ix+01ch),a		;7afe
	ld (ix+01dh),001h		;7b01
l7b05h:
	call sub_7319h		;7b05
	ld a,(ix+000h)		;7b08
	cp 006h		;7b0b
	jr z,l7b15h		;7b0d
	cp 013h		;7b0f
	jp z,l727dh		;7b11
	ret			;7b14
l7b15h:
	dec (ix+01fh)		;7b15
	ret z			;7b18
	ld a,009h		;7b19
	call sub_a07bh		;7b1b
	ld (ix+000h),013h		;7b1e
	jp l727dh		;7b22
l7b25h:
	ld de,0e053h		;7b25
	call sub_72f9h		;7b28
	call sub_427fh		;7b2b
	ld (ix+002h),a		;7b2e
	xor a			;7b31
	ld (ix+001h),a		;7b32
	ld (ix+003h),0a0h		;7b35
	ld (ix+004h),00ah		;7b39
	ld a,l			;7b3d
	and 003h		;7b3e
	add a,002h		;7b40
	ld (ix+01ch),a		;7b42
	ld (ix+019h),002h		;7b45
	ld a,r		;7b49
	and 001h		;7b4b
	ld (ix+01eh),a		;7b4d
	ld (ix+01dh),008h		;7b50
	ld (ix+01fh),003h		;7b54
	ld de,l7b61h		;7b58
	call sub_70b2h		;7b5b
	jp l727dh		;7b5e
l7b61h:
	rlca			;7b61
	inc bc			;7b62
	nop			;7b63
	nop			;7b64
	nop			;7b65
	nop			;7b66
	ex af,af'			;7b67
	ex af,af'			;7b68
	nop			;7b69
	ex af,af'			;7b6a
	ld l,l			;7b6b
	ld a,e			;7b6c
	and b			;7b6d
	ld a,(bc)			;7b6e
	xor b			;7b6f
	ld a,(bc)			;7b70
	or b			;7b71
	ld a,(bc)			;7b72
	cp b			;7b73
	ld a,(bc)			;7b74
	bit 7,(ix+007h)		;7b75
	jp z,l7c05h		;7b79
	ld a,(ix+01fh)		;7b7c
	or a			;7b7f
	jr z,l7ba8h		;7b80
	dec (ix+01fh)		;7b82
	jr nz,l7ba8h		;7b85
	ld a,(ix+01ch)		;7b87
	add a,004h		;7b8a
	and 00fh		;7b8c
	ld (ix+01ch),a		;7b8e
	bit 0,(ix+01dh)		;7b91
	jr nz,l7b9dh		;7b95
	cp 004h		;7b97
	jr z,l7ba8h		;7b99
	jr l7ba1h		;7b9b
l7b9dh:
	cp 00ch		;7b9d
	jr z,l7ba8h		;7b9f
l7ba1h:
	ld a,(ix+01ah)		;7ba1
	inc a			;7ba4
	ld (ix+01fh),a		;7ba5
l7ba8h:
	ld a,(ix+001h)		;7ba8
	cp 050h		;7bab
	jr c,l7bc0h		;7bad
	bit 1,(ix+01dh)		;7baf
	jr nz,l7bc0h		;7bb3
	ld a,00dh		;7bb5
	call sub_72cfh		;7bb7
	jr c,l7bc0h		;7bba
	set 1,(ix+01dh)		;7bbc
l7bc0h:
	ld e,(ix+01ch)		;7bc0
	call sub_71cfh		;7bc3
	call sub_7016h		;7bc6
	ld a,(ix+000h)		;7bc9
	or a			;7bcc
	jr nz,l7bd4h		;7bcd
	ld hl,0e054h		;7bcf
	inc (hl)			;7bd2
	ret			;7bd3
l7bd4h:
	call sub_72b3h		;7bd4
	jr z,l7bf9h		;7bd7
	ld a,(ix+01ch)		;7bd9
	add a,008h		;7bdc
	and 00fh		;7bde
	ld (ix+01ch),a		;7be0
	ld a,(ix+01ah)		;7be3
	or a			;7be6
	jr z,l7bech		;7be7
	dec (ix+01ah)		;7be9
l7bech:
	inc a			;7bec
	ld (ix+01fh),a		;7bed
	dec (ix+01eh)		;7bf0
	jr nz,l7bf9h		;7bf3
	set 0,(ix+01dh)		;7bf5
l7bf9h:
	call sub_7319h		;7bf9
	ld a,(ix+000h)		;7bfc
	cp 014h		;7bff
	ret nz			;7c01
	jp l727dh		;7c02
l7c05h:
	ld de,0e054h		;7c05
	call sub_72f9h		;7c08
	call sub_427fh		;7c0b
	ld (ix+002h),a		;7c0e
	xor a			;7c11
	ld (ix+001h),a		;7c12
	ld (ix+003h),0c0h		;7c15
	ld (ix+004h),003h		;7c19
	ld (ix+01dh),a		;7c1d
	ld (ix+01fh),a		;7c20
	ld a,004h		;7c23
	ld (ix+01eh),a		;7c25
	ld (ix+01ch),a		;7c28
	ld (ix+01ah),008h		;7c2b
	ld (ix+008h),003h		;7c2f
	ld (ix+009h),003h		;7c33
	ld (ix+019h),002h		;7c37
	ld a,e			;7c3b
	call sub_71cfh		;7c3c
	set 7,(ix+007h)		;7c3f
	jp l727dh		;7c43
	bit 7,(ix+007h)		;7c46
	jr z,l7c62h		;7c4a
	ld a,(ix+003h)		;7c4c
	xor 007h		;7c4f
	ld (ix+003h),a		;7c51
	ld a,(ix+004h)		;7c54
	xor 00ah		;7c57
	ld (ix+004h),a		;7c59
	call sub_7016h		;7c5c
	jp sub_730ch		;7c5f
l7c62h:
	ld (ix+003h),02ch		;7c62
	ld (ix+004h),008h		;7c66
	ld (ix+009h),002h		;7c6a
	ld (ix+019h),001h		;7c6e
	ld (ix+008h),003h		;7c72
	set 7,(ix+007h)		;7c76
	jp l71cch		;7c7a
	bit 7,(ix+007h)		;7c7d
	jp z,l7d77h		;7c81
	ld a,(ix+01fh)		;7c84
	bit 1,a		;7c87
	jp nz,l7d0eh		;7c89
	bit 2,a		;7c8c
	jr nz,l7c96h		;7c8e
	bit 0,a		;7c90
	jr nz,l7cc5h		;7c92
	jr l7ce0h		;7c94
l7c96h:
	ld a,(ix+01ch)		;7c96
	cp (ix+01bh)		;7c99
	jr z,l7cb3h		;7c9c
	dec (ix+01dh)		;7c9e
	jp nz,l7d2dh		;7ca1
	ld (ix+01dh),003h		;7ca4
	ld a,(ix+01ch)		;7ca8
	dec a			;7cab
	and 00fh		;7cac
	ld (ix+01ch),a		;7cae
	jr l7cc5h		;7cb1
l7cb3h:
	res 2,(ix+01fh)		;7cb3
	ld (ix+008h),003h		;7cb7
	ld a,(ix+01ch)		;7cbb
	add a,00ah		;7cbe
	and 00fh		;7cc0
	ld (ix+01bh),a		;7cc2
l7cc5h:
	dec (ix+01dh)		;7cc5
	jr nz,l7ce0h		;7cc8
	ld (ix+01dh),004h		;7cca
	ld a,(ix+01ch)		;7cce
	dec a			;7cd1
	and 00fh		;7cd2
	ld (ix+01ch),a		;7cd4
	cp (ix+01bh)		;7cd7
	jr nz,l7ce0h		;7cda
	res 0,(ix+01fh)		;7cdc
l7ce0h:
	ld e,(ix+01ch)		;7ce0
	call sub_71cfh		;7ce3
	ld a,(ix+01fh)		;7ce6
	or a			;7ce9
	jr nz,l7d2dh		;7cea
	dec (ix+01eh)		;7cec
	ld a,(ix+01eh)		;7cef
	cp 020h		;7cf2
	jr nz,l7cfdh		;7cf4
	ld a,00dh		;7cf6
	call sub_72cfh		;7cf8
	jr l7d2dh		;7cfb
l7cfdh:
	or a			;7cfd
	jr nz,l7d2dh		;7cfe
	set 1,(ix+01fh)		;7d00
	ld (ix+01dh),018h		;7d04
	ld (ix+008h),000h		;7d08
	jr l7d2dh		;7d0c
l7d0eh:
	dec (ix+01dh)		;7d0e
	jr nz,l7d2dh		;7d11
	ld (ix+01eh),030h		;7d13
	call sub_7118h		;7d17
	ld (ix+01bh),e		;7d1a
	set 0,(ix+01fh)		;7d1d
	res 1,(ix+01fh)		;7d21
	ld (ix+008h),003h		;7d25
	ld (ix+01dh),004h		;7d29
l7d2dh:
	ld a,(ix+01ch)		;7d2d
	add a,a			;7d30
	add a,a			;7d31
	add a,a			;7d32
	add a,080h		;7d33
	ld (ix+003h),a		;7d35
	call sub_7016h		;7d38
	ld a,(ix+000h)		;7d3b
	or a			;7d3e
	jr nz,l7d46h		;7d3f
	ld hl,0e055h		;7d41
	inc (hl)			;7d44
	ret			;7d45
l7d46h:
	bit 2,(ix+01fh)		;7d46
	jr nz,l7d6bh		;7d4a
	call sub_72b3h		;7d4c
	jr z,l7d6bh		;7d4f
	ld a,(ix+01ch)		;7d51
	add a,008h		;7d54
	and 00fh		;7d56
	set 0,(ix+01fh)		;7d58
	set 2,(ix+01fh)		;7d5c
	ld (ix+01dh),003h		;7d60
	ld (ix+01bh),a		;7d64
	ld (ix+008h),000h		;7d67
l7d6bh:
	call sub_7319h		;7d6b
	ld a,(ix+000h)		;7d6e
	cp 015h		;7d71
	ret nz			;7d73
	jp l727dh		;7d74
l7d77h:
	ld de,0e055h		;7d77
	call sub_72f9h		;7d7a
	call sub_427fh		;7d7d
	ld (ix+002h),a		;7d80
	xor a			;7d83
	ld (ix+001h),a		;7d84
	ld (ix+004h),00dh		;7d87
	ld (ix+019h),002h		;7d8b
	ld (ix+008h),003h		;7d8f
	ld (ix+01fh),a		;7d93
	ld (ix+009h),003h		;7d96
	ld a,004h		;7d9a
	ld (ix+01ch),a		;7d9c
	ld (ix+01bh),a		;7d9f
	call sub_4287h		;7da2
	ld a,h			;7da5
	and 01fh		;7da6
	add a,010h		;7da8
	ld (ix+01eh),a		;7daa
	ld e,004h		;7dad
	call sub_71cfh		;7daf
	set 7,(ix+007h)		;7db2
	jp l727dh		;7db6
	call sub_44f6h		;7db9
	call 041cah		;7dbc
	ld hl,l7e7ch		;7dbf
	ld de,01e00h		;7dc2
	ld bc,00140h		;7dc5
	call sub_4299h		;7dc8
	call l41d0h		;7dcb
	ld b,004h		;7dce
	ld hl,l7e66h		;7dd0
l7dd3h:
	push bc			;7dd3
	ld a,(hl)			;7dd4
	ex de,hl			;7dd5
	ld l,a			;7dd6
	ld h,000h		;7dd7
	add hl,hl			;7dd9
	add hl,hl			;7dda
	add hl,hl			;7ddb
	ld bc,l7e7ch		;7ddc
	add hl,bc			;7ddf
	ex de,hl			;7de0
	inc hl			;7de1
	push hl			;7de2
	push de			;7de3
	ld hl,0e4c0h		;7de4
	call sub_5bb2h		;7de7
	pop hl			;7dea
	ld de,00020h		;7deb
	add hl,de			;7dee
	ex de,hl			;7def
	ld hl,0e4e0h		;7df0
	call sub_5bb2h		;7df3
	pop hl			;7df6
	ld a,(hl)			;7df7
	inc hl			;7df8
	call sub_7e49h		;7df9
	pop bc			;7dfc
	djnz l7dd3h		;7dfd
	ld b,007h		;7dff
	ld hl,l7e6eh		;7e01
l7e04h:
	push bc			;7e04
	ld a,(hl)			;7e05
	ex de,hl			;7e06
	ld l,a			;7e07
	ld h,000h		;7e08
	add hl,hl			;7e0a
	add hl,hl			;7e0b
	add hl,hl			;7e0c
	ld bc,01800h		;7e0d
	add hl,bc			;7e10
	ex de,hl			;7e11
	inc hl			;7e12
	ld a,(hl)			;7e13
	inc hl			;7e14
	push hl			;7e15
	ld l,a			;7e16
	ld h,000h		;7e17
	add hl,hl			;7e19
	add hl,hl			;7e1a
	add hl,hl			;7e1b
	ld bc,0180eh		;7e1c
	add hl,bc			;7e1f
	ex de,hl			;7e20
	exx			;7e21
	ld b,004h		;7e22
l7e24h:
	exx			;7e24
	call 041cah		;7e25
	ld b,010h		;7e28
l7e2ah:
	call 0004ah		;7e2a
	ex de,hl			;7e2d
	call 0004dh		;7e2e
	ex de,hl			;7e31
	inc hl			;7e32
	dec de			;7e33
	djnz l7e2ah		;7e34
	call l41d0h		;7e36
	ld bc,00020h		;7e39
	ex de,hl			;7e3c
	add hl,bc			;7e3d
	ex de,hl			;7e3e
	exx			;7e3f
	djnz l7e24h		;7e40
	pop hl			;7e42
	pop bc			;7e43
	djnz l7e04h		;7e44
	jp l41d0h		;7e46
sub_7e49h:
	exx			;7e49
	ld l,a			;7e4a
	ld h,000h		;7e4b
	add hl,hl			;7e4d
	add hl,hl			;7e4e
	add hl,hl			;7e4f
	ld de,01800h		;7e50
	add hl,de			;7e53
	ld de,0e4c0h		;7e54
	ex de,hl			;7e57
	call 041cah		;7e58
	ld bc,00040h		;7e5b
	call sub_4299h		;7e5e
	call l41d0h		;7e61
	exx			;7e64
	ret			;7e65
l7e66h:
	nop			;7e66
	add a,b			;7e67
	ex af,af'			;7e68
	ret m			;7e69
	djnz $-14		;7e6a
	jr $-22		;7e6c
l7e6eh:
	ret z			;7e6e
	cp b			;7e6f
	ret nc			;7e70
	or b			;7e71
	ret c			;7e72
	xor b			;7e73
	ret po			;7e74
	and b			;7e75
	ret pe			;7e76
	sbc a,b			;7e77
	ret p			;7e78
	sub b			;7e79
	ret m			;7e7a
	adc a,b			;7e7b
l7e7ch:
	nop			;7e7c
	nop			;7e7d
	ld bc,03f03h		;7e7e
	nop			;7e81
	nop			;7e82
	inc a			;7e83
	inc a			;7e84
	ld e,07fh		;7e85
	nop			;7e87
	inc bc			;7e88
	ld bc,00000h		;7e89
	nop			;7e8c
	nop			;7e8d
	ret m			;7e8e
l7e8fh:
	call m,000f0h		;7e8f
	nop			;7e92
	inc c			;7e93
	inc c			;7e94
	jr l7e8fh		;7e95
	nop			;7e97
	call m,000f8h		;7e98
	nop			;7e9b
	nop			;7e9c
	ld bc,00402h		;7e9d
	nop			;7ea0
	ld a,a			;7ea1
	ld a,043h		;7ea2
	ld b,e			;7ea4
	jr nz,l7ea7h		;7ea5
l7ea7h:
	ccf			;7ea7
	inc b			;7ea8
	ld (bc),a			;7ea9
	ld bc,00000h		;7eaa
	ret p			;7ead
	nop			;7eae
	nop			;7eaf
	nop			;7eb0
	ret m			;7eb1
	jr l7eb4h		;7eb2
l7eb4h:
	nop			;7eb4
	nop			;7eb5
	nop			;7eb6
	ret p			;7eb7
	nop			;7eb8
	nop			;7eb9
	ret p			;7eba
	nop			;7ebb
	nop			;7ebc
	nop			;7ebd
	add hl,de			;7ebe
	rlca			;7ebf
	ld bc,03838h		;7ec0
	ld a,b			;7ec3
	inc a			;7ec4
	ld b,009h		;7ec5
	ld c,007h		;7ec7
	inc bc			;7ec9
	nop			;7eca
	nop			;7ecb
	nop			;7ecc
	nop			;7ecd
	call m,0fefch		;7ece
	ld a,008h		;7ed1
	nop			;7ed3
	djnz l7f0eh		;7ed4
	ret p			;7ed6
	ld h,b			;7ed7
	add a,b			;7ed8
	ret po			;7ed9
	nop			;7eda
	nop			;7edb
	nop			;7edc
	ld bc,01822h		;7edd
	ld a,(hl)			;7ee0
	ld b,a			;7ee1
	ld b,(hl)			;7ee2
	add a,(hl)			;7ee3
	ret nz			;7ee4
	jr c,l7efdh		;7ee5
	ld de,00c08h		;7ee7
	inc bc			;7eea
	nop			;7eeb
	nop			;7eec
	ret po			;7eed
	nop			;7eee
	nop			;7eef
	nop			;7ef0
	ret nz			;7ef1
	jr nc,l7f0ch		;7ef2
	ex af,af'			;7ef4
	nop			;7ef5
	nop			;7ef6
	add a,b			;7ef7
l7ef8h:
	ld b,b			;7ef8
	nop			;7ef9
	ret nz			;7efa
	nop			;7efb
	nop			;7efc
l7efdh:
	ld b,003h		;7efd
	add hl,de			;7eff
	inc e			;7f00
l7f01h:
	inc a			;7f01
	jr c,$+30		;7f02
	inc c			;7f04
	ld d,01bh		;7f05
	dec e			;7f07
	ld c,007h		;7f08
	nop			;7f0a
	nop			;7f0b
l7f0ch:
	nop			;7f0c
	nop			;7f0d
l7f0eh:
	nop			;7f0e
	ret m			;7f0f
	call m,03e7eh		;7f10
	ld e,00ah		;7f13
	nop			;7f15
	jr nc,l7ef8h		;7f16
	ret nz			;7f18
	nop			;7f19
	nop			;7f1a
	nop			;7f1b
	nop			;7f1c
	ex af,af'			;7f1d
	inc e			;7f1e
	ld h,063h		;7f1f
	ld b,e			;7f21
	ld b,a			;7f22
	ld (02830h),hl		;7f23
	inc h			;7f26
	ld (00811h),hl		;7f27
	rlca			;7f2a
	nop			;7f2b
	nop			;7f2c
	nop			;7f2d
	ret p			;7f2e
	nop			;7f2f
	nop			;7f30
	add a,b			;7f31
	ld b,b			;7f32
	jr nz,l7f45h		;7f33
	jr l7f37h		;7f35
l7f37h:
	nop			;7f37
	nop			;7f38
	nop			;7f39
	add a,b			;7f3a
	nop			;7f3b
	nop			;7f3c
	nop			;7f3d
	ld b,01eh		;7f3e
	ld e,00eh		;7f40
	inc c			;7f42
l7f43h:
	inc (hl)			;7f43
	inc (hl)			;7f44
l7f45h:
	inc (hl)			;7f45
	ld a,(01d1bh)		;7f46
	inc c			;7f49
	nop			;7f4a
	nop			;7f4b
	add a,b			;7f4c
	add a,b			;7f4d
	ld b,b			;7f4e
	ld b,b			;7f4f
	ld a,h			;7f50
	inc a			;7f51
	ld a,01eh		;7f52
	ld e,01eh		;7f54
	inc b			;7f56
	ret nz			;7f57
	ret nz			;7f58
	nop			;7f59
	nop			;7f5a
	nop			;7f5b
	ld bc,0290fh		;7f5c
	ld hl,01121h		;7f5f
	inc sp			;7f62
	ld c,b			;7f63
	ld c,b			;7f64
	ld c,b			;7f65
	ld b,h			;7f66
	inc h			;7f67
	ld (00c30h),hl		;7f68
	nop			;7f6b
	nop			;7f6c
	nop			;7f6d
	add a,b			;7f6e
	or b			;7f6f
	add a,b			;7f70
	ret nz			;7f71
	ld b,b			;7f72
	jr nz,l7f95h		;7f73
	jr nz,l7fe7h		;7f75
	jr nz,l7f79h		;7f77
l7f79h:
	nop			;7f79
	nop			;7f7a
	nop			;7f7b
	nop			;7f7c
	nop			;7f7d
	dec b			;7f7e
l7f7fh:
	rlca			;7f7f
	rlca			;7f80
	rlca			;7f81
	ld d,034h		;7f82
	inc (hl)			;7f84
	inc (hl)			;7f85
	inc (hl)			;7f86
	ld (hl),017h		;7f87
	ld bc,00000h		;7f89
	nop			;7f8c
	nop			;7f8d
	sub b			;7f8e
	sub b			;7f8f
	sub b			;7f90
	sbc a,b			;7f91
	inc e			;7f92
	ld e,01eh		;7f93
l7f95h:
	ld e,01eh		;7f95
	ld e,08ch		;7f97
	adc a,b			;7f99
	nop			;7f9a
	nop			;7f9b
	nop			;7f9c
	dec b			;7f9d
	ld a,(bc)			;7f9e
	ex af,af'			;7f9f
	ex af,af'			;7fa0
	jr l7fcch		;7fa1
	ld c,c			;7fa3
	ld c,b			;7fa4
	ld c,b			;7fa5
	ld c,b			;7fa6
	ld c,b			;7fa7
	jr nz,l7fbah		;7fa8
	nop			;7faa
	nop			;7fab
	nop			;7fac
	and b			;7fad
	ld h,b			;7fae
	ld h,b			;7faf
	ld h,b			;7fb0
	ld h,b			;7fb1
	ret po			;7fb2
	and b			;7fb3
	jr nz,l7fd6h		;7fb4
	jr nz,l8018h		;7fb6
	ld h,b			;7fb8
	nop			;7fb9
l7fbah:
	nop			;7fba
	nop			;7fbb
	bit 7,(ix+007h)		;7fbc
	jr z,l7fe4h		;7fc0
	dec (ix+01ah)		;7fc2
	jr nz,l7fd0h		;7fc5
	ld a,00ch		;7fc7
	call sub_72cfh		;7fc9
l7fcch:
	ld (ix+01ah),00ah		;7fcc
l7fd0h:
	call sub_7016h		;7fd0
	ld a,(ix+000h)		;7fd3
l7fd6h:
	or a			;7fd6
	jr nz,l7fdeh		;7fd7
	ld hl,0e058h		;7fd9
	inc (hl)			;7fdc
	ret			;7fdd
l7fdeh:
	call l727dh		;7fde
	jp sub_7319h		;7fe1
l7fe4h:
	ld de,0e058h		;7fe4
l7fe7h:
	call sub_72f9h		;7fe7
	call sub_427fh		;7fea
	ld (ix+002h),a		;7fed
	xor a			;7ff0
	ld (ix+001h),a		;7ff1
	ld (ix+019h),002h		;7ff4
	ld (ix+003h),0d8h		;7ff8
	ld (ix+004h),007h		;7ffc
	ld (ix+01ah),018h		;8000
	ld (ix+00ah),a		;8004
	ld (ix+00bh),002h		;8007
	ld (ix+008h),001h		;800b
	set 7,(ix+007h)		;800f
	ret			;8013
	bit 7,(ix+007h)		;8014
l8018h:
	jr z,l8042h		;8018
	call sub_7016h		;801a
	ld a,(ix+001h)		;801d
	add a,00ch		;8020
	ld b,a			;8022
	ld a,(ix+002h)		;8023
	add a,008h		;8026
	ld c,a			;8028
	call sub_4bf6h		;8029
sub_802ch:
	ld a,(hl)			;802c
	bit 0,a		;802d
	jp nz,l729ah		;802f
	call sub_4287h		;8032
	ld a,h			;8035
	and 00fh		;8036
	ld (ix+003h),064h		;8038
	ld (ix+004h),a		;803c
	jp sub_730ch		;803f
l8042h:
	ld (ix+019h),001h		;8042
	ld (ix+00ah),000h		;8046
	ld (ix+00bh),008h		;804a
	ld (ix+008h),001h		;804e
	ld (ix+01ah),00ah		;8052
	set 7,(ix+007h)		;8056
	ret			;805a
	bit 7,(ix+007h)		;805b
	jr z,l80b5h		;805f
	bit 0,(ix+01ah)		;8061
	jr nz,l8084h		;8065
	dec (ix+01bh)		;8067
	jr nz,l8084h		;806a
	bit 1,(ix+01ah)		;806c
	jr nz,l807ch		;8070
	set 1,(ix+01ah)		;8072
	ld (ix+014h),040h		;8076
	jr l8084h		;807a
l807ch:
	ld (ix+014h),000h		;807c
l8080h:
	set 0,(ix+01ah)		;8080
l8084h:
	dec (ix+01ch)		;8084
	jr nz,l80a1h		;8087
	ld a,(0d001h)		;8089
	cp 0c0h		;808c
	jr z,l809dh		;808e
	cp 030h		;8090
	jr c,l8098h		;8092
	cp 050h		;8094
	jr c,l809dh		;8096
l8098h:
	ld a,00dh		;8098
	call sub_72cfh		;809a
l809dh:
	ld (ix+01ch),014h		;809d
l80a1h:
	call sub_7016h		;80a1
	ld a,(ix+000h)		;80a4
	or a			;80a7
	jr nz,l80afh		;80a8
	ld hl,0e059h		;80aa
	inc (hl)			;80ad
	ret			;80ae
l80afh:
	call l727dh		;80af
	jp sub_7319h		;80b2
l80b5h:
	ld de,0e059h		;80b5
	call sub_72f9h		;80b8
	call sub_427fh		;80bb
	ld (ix+002h),a		;80be
	xor a			;80c1
	ld (ix+001h),a		;80c2
	ld (ix+019h),002h		;80c5
	ld (ix+01ah),a		;80c9
	ld (ix+01bh),014h		;80cc
	ld (ix+01ch),014h		;80d0
	ld de,l80dah		;80d4
	jp sub_70b2h		;80d7
l80dah:
	dec c			;80da
	ld (bc),a			;80db
	nop			;80dc
	inc bc			;80dd
	nop			;80de
	nop			;80df
	ld bc,00005h		;80e0
	ex af,af'			;80e3
sub_80e4h:
	jp pe,00080h		;80e4
	nop			;80e7
	djnz l80eah		;80e8
l80eah:
	ld l,b			;80ea
	inc c			;80eb
	ld (hl),b			;80ec
	inc c			;80ed
	ld a,b			;80ee
	inc c			;80ef
	ld (hl),b			;80f0
	inc c			;80f1
	bit 7,(ix+007h)		;80f2
	jr z,l8134h		;80f6
	ld a,(ix+00bh)		;80f8
	inc a			;80fb
	cp 003h		;80fc
	jr nc,l810ah		;80fe
	add a,a			;8100
l8101h:
	add a,a			;8101
	add a,a			;8102
	ld b,a			;8103
	ld a,0f8h		;8104
	sub b			;8106
	ld (ix+003h),a		;8107
l810ah:
	call sub_7016h		;810a
	ld a,(ix+000h)		;810d
	or a			;8110
	jr nz,l8118h		;8111
	ld hl,0e05ah		;8113
	inc (hl)			;8116
	ret			;8117
l8118h:
	call l727dh		;8118
	call sub_7319h		;811b
	ld a,(ix+000h)		;811e
	or a			;8121
	ret z			;8122
	cp 006h		;8123
	ret nz			;8125
	dec (ix+01ah)		;8126
	ret z			;8129
	ld a,009h		;812a
	call sub_a07bh		;812c
	ld (ix+000h),01ah		;812f
	ret			;8133
l8134h:
	ld de,0e05ah		;8134
	call sub_72f9h		;8137
	call sub_427fh		;813a
	ld (ix+002h),a		;813d
	xor a			;8140
	ld (ix+019h),002h		;8141
	ld (ix+001h),a		;8145
	ld (ix+003h),0e0h		;8148
	ld (ix+004h),00eh		;814c
	ld (ix+01ah),005h		;8150
	ld de,l8161h		;8154
	call sub_70b2h		;8157
	call sub_4287h		;815a
	ld (ix+00ah),h		;815d
	ret			;8160
l8161h:
	dec de			;8161
	ld bc,00400h		;8162
	nop			;8165
	nop			;8166
	nop			;8167
	nop			;8168
	nop			;8169
	nop			;816a
	nop			;816b
	nop			;816c
	nop			;816d
	ld e,h			;816e
	djnz l8181h		;816f
	bit 7,(ix+007h)		;8171
	jp z,l82a7h		;8175
	ld a,(ix+01ah)		;8178
	or a			;817b
	jr z,l8189h		;817c
	dec (ix+01ah)		;817e
l8181h:
	ld a,040h		;8181
	sub (ix+01ah)		;8183
	ld (0de81h),a		;8186
l8189h:
	ld a,(ix+001h)		;8189
	and 0feh		;818c
	cp (ix+01ch)		;818e
l8191h:
	jr nz,l81aeh		;8191
	ld a,(ix+002h)		;8193
	and 0feh		;8196
	cp (ix+01dh)		;8198
	jr nz,l81aeh		;819b
	call sub_4287h		;819d
	ld a,h			;81a0
	and 07eh		;81a1
	ld (ix+01dh),a		;81a3
	ld a,l			;81a6
	and 01eh		;81a7
	add a,020h		;81a9
	ld (ix+01ch),a		;81ab
l81aeh:
	ld a,(ix+01ah)		;81ae
	or a			;81b1
	jr nz,l81d9h		;81b2
	ld a,(ix+001h)		;81b4
	add a,030h		;81b7
	ld (ix+001h),a		;81b9
	ld a,(ix+002h)		;81bc
	add a,018h		;81bf
	ld (ix+002h),a		;81c1
	ld a,00bh		;81c4
	call sub_72cfh		;81c6
	ld a,(ix+002h)		;81c9
	add a,0e8h		;81cc
	ld (ix+002h),a		;81ce
	ld a,(ix+001h)		;81d1
	add a,0d0h		;81d4
	ld (ix+001h),a		;81d6
l81d9h:
	ld a,(ix+01ch)		;81d9
	ld (0e003h),a		;81dc
	ld a,(ix+01dh)		;81df
	ld (0e004h),a		;81e2
	call sub_7124h		;81e5
	call sub_71cfh		;81e8
	call sub_7016h		;81eb
	ld a,080h		;81ee
	ex af,af'			;81f0
	ld hl,(0e01ch)		;81f1
	ld bc,0fffch		;81f4
	add hl,bc			;81f7
	ld bc,00400h		;81f8
l81fbh:
	exx			;81fb
	ld bc,00400h		;81fc
l81ffh:
	exx			;81ff
	ld a,(ix+001h)		;8200
	sub (ix+01ah)		;8203
	add a,c			;8206
	cp 0c0h		;8207
	jr nc,l8224h		;8209
	add a,0f0h		;820b
	ld (hl),a			;820d
	ld a,(ix+002h)		;820e
	exx			;8211
	add a,c			;8212
	exx			;8213
	cp 0c0h		;8214
	jr nc,l8224h		;8216
	inc hl			;8218
	ld (hl),a			;8219
	ex af,af'			;821a
	inc hl			;821b
	ld (hl),a			;821c
	ex af,af'			;821d
	inc hl			;821e
	ld a,(ix+004h)		;821f
	ld (hl),a			;8222
	inc hl			;8223
l8224h:
	ex af,af'			;8224
	add a,004h		;8225
	ex af,af'			;8227
	exx			;8228
	ld a,010h		;8229
	add a,c			;822b
	ld c,a			;822c
	djnz l81ffh		;822d
	exx			;822f
	ld a,010h		;8230
	add a,c			;8232
	ld c,a			;8233
	djnz l81fbh		;8234
	ld (0e01ch),hl		;8236
	call sub_7319h		;8239
	ld a,(ix+000h)		;823c
	cp 01bh		;823f
	ret z			;8241
	ld a,009h		;8242
	call sub_a07bh		;8244
	ld (ix+000h),01bh		;8247
	dec (ix+01bh)		;824b
	jr z,l8267h		;824e
	ld a,(ix+01bh)		;8250
	rlca			;8253
	rlca			;8254
	and 003h		;8255
	ld l,a			;8257
	ld h,000h		;8258
	ld de,l8263h		;825a
	add hl,de			;825d
	ld a,(hl)			;825e
	ld (ix+004h),a		;825f
	ret			;8262
l8263h:
	ex af,af'			;8263
	dec bc			;8264
	ld c,00fh		;8265
l8267h:
	ld a,(ix+001h)		;8267
	ld (ix+01ah),a		;826a
	ld a,(ix+002h)		;826d
	ld (ix+01bh),a		;8270
	ld iy,0d080h		;8273
	ld bc,00400h		;8277
l827ah:
	exx			;827a
	ld bc,00400h		;827b
l827eh:
	exx			;827e
	ld (iy+000h),01ch		;827f
	ld a,c			;8283
	add a,(ix+01ah)		;8284
	ld (iy+001h),a		;8287
	ld a,(ix+01bh)		;828a
	exx			;828d
	add a,c			;828e
	exx			;828f
	ld (iy+002h),a		;8290
	ld de,00020h		;8293
	add iy,de		;8296
	exx			;8298
	ld a,c			;8299
	add a,010h		;829a
	ld c,a			;829c
	djnz l827eh		;829d
	exx			;829f
	ld a,c			;82a0
	add a,010h		;82a1
	ld c,a			;82a3
	djnz l827ah		;82a4
	ret			;82a6
l82a7h:
	xor a			;82a7
	ld (ix+001h),a		;82a8
	ld (ix+01ch),a		;82ab
	ld a,020h		;82ae
	ld (ix+002h),a		;82b0
	ld (ix+01dh),a		;82b3
	ld (ix+008h),003h		;82b6
	ld (ix+009h),001h		;82ba
	ld (ix+019h),000h		;82be
	ld (ix+003h),080h		;82c2
	ld (ix+004h),00fh		;82c6
	ld (ix+01ah),040h		;82ca
	ld (ix+01bh),000h		;82ce
	set 7,(ix+007h)		;82d2
	ld hl,0de80h		;82d6
	xor a			;82d9
	ld (hl),a			;82da
	inc hl			;82db
	inc hl			;82dc
	ld (hl),a			;82dd
	inc hl			;82de
	ld (hl),040h		;82df
	call 041cah		;82e1
	ld hl,l9bc9h		;82e4
	ld de,01c00h		;82e7
	call sub_414bh		;82ea
	jp l41d0h		;82ed
	ld a,008h		;82f0
	call sub_a07bh		;82f2
	ld de,l87d7h		;82f5
	call sub_70b2h		;82f8
	call sub_4287h		;82fb
	ld (ix+009h),002h		;82fe
	ld (ix+014h),h		;8302
	ld (ix+015h),l		;8305
	ld (ix+016h),020h		;8308
	ld (ix+017h),020h		;830c
	ld (ix+008h),01fh		;8310
	ld (ix+019h),001h		;8314
	ld (ix+000h),006h		;8318
	set 5,(ix+007h)		;831c
	ret			;8320
	ld (ix+000h),00dh		;8321
	ld (ix+003h),038h		;8325
	ld (ix+004h),008h		;8329
	ld (ix+009h),003h		;832d
	ld (ix+019h),001h		;8331
	ld (ix+008h),003h		;8335
	set 7,(ix+007h)		;8339
	call l71cch		;833d
	call sub_4287h		;8340
	ld (ix+00ah),h		;8343
	ld (ix+00ch),l		;8346
	ret			;8349
	bit 7,(ix+007h)		;834a
	jr z,l8370h		;834e
	ld a,(0d001h)		;8350
	ld (ix+014h),a		;8353
	ld a,(0d002h)		;8356
	ld (ix+015h),a		;8359
	call sub_7016h		;835c
	ld a,(ix+000h)		;835f
	or a			;8362
	jr nz,l836ah		;8363
	ld hl,0e056h		;8365
	inc (hl)			;8368
	ret			;8369
l836ah:
	call l727dh		;836a
	jp sub_7319h		;836d
l8370h:
	ld de,0e056h		;8370
	call sub_72f9h		;8373
	ld de,l8393h		;8376
	call sub_70b2h		;8379
	call sub_427fh		;837c
	ld (ix+002h),a		;837f
	xor a			;8382
	ld (ix+001h),a		;8383
	ld (ix+003h),0c8h		;8386
	ld (ix+004h),00bh		;838a
	ld (ix+019h),002h		;838e
	ret			;8392
l8393h:
	dec de			;8393
	ld bc,00000h		;8394
	nop			;8397
	nop			;8398
	nop			;8399
	nop			;839a
	nop			;839b
	nop			;839c
	nop			;839d
	nop			;839e
	nop			;839f
	nop			;83a0
	djnz $+18		;83a1
	bit 7,(ix+007h)		;83a3
	jr z,l83bdh		;83a7
	call sub_7016h		;83a9
	ld a,(ix+000h)		;83ac
	or a			;83af
	jr nz,l83b7h		;83b0
	ld hl,0e057h		;83b2
	inc (hl)			;83b5
	ret			;83b6
l83b7h:
	call l727dh		;83b7
	jp sub_7319h		;83ba
l83bdh:
	ld de,0e057h		;83bd
	call sub_72f9h		;83c0
l83c3h:
	call sub_427fh		;83c3
	ld (ix+002h),a		;83c6
	xor a			;83c9
	ld (ix+001h),a		;83ca
	ld (ix+003h),0d0h		;83cd
	ld (ix+004h),003h		;83d1
	ld (ix+009h),003h		;83d5
	ld (ix+019h),002h		;83d9
	ld (ix+008h),003h		;83dd
	set 7,(ix+007h)		;83e1
	jp l71cch		;83e5
	bit 7,(ix+007h)		;83e8
	jr z,l844dh		;83ec
	dec (ix+01ah)		;83ee
	jr nz,l8407h		;83f1
	ld (ix+01ah),020h		;83f3
	ld a,(0d01ch)		;83f7
	or a			;83fa
	jr nz,l8407h		;83fb
	ld a,(0d000h)		;83fd
	cp 001h		;8400
	ld a,01eh		;8402
	call z,sub_72cfh		;8404
l8407h:
	call sub_7328h		;8407
	ld a,(ix+000h)		;840a
	cp 01dh		;840d
	ret z			;840f
	ld a,009h		;8410
	call sub_a07bh		;8412
	dec (ix+01bh)		;8415
	jr z,l841fh		;8418
	ld (ix+000h),01dh		;841a
	ret			;841e
l841fh:
	ld hl,0e06eh		;841f
	dec (hl)			;8422
	ld b,(ix+001h)		;8423
	srl b		;8426
	srl b		;8428
	srl b		;842a
	dec b			;842c
	ld c,(ix+002h)		;842d
	srl c		;8430
	srl c		;8432
	srl c		;8434
	push bc			;8436
	inc b			;8437
	inc b			;8438
	call sub_4c0bh		;8439
	ld (hl),0d4h		;843c
	pop bc			;843e
	call sub_4c21h		;843f
	call 041cah		;8442
	ld a,0d4h		;8445
	call 0004dh		;8447
	jp l41d0h		;844a
l844dh:
	ld (ix+003h),008h		;844d
	ld (ix+008h),000h		;8451
	ld (ix+01ah),010h		;8455
	ld (ix+01bh),080h		;8459
	ld (ix+019h),000h		;845d
	set 7,(ix+007h)		;8461
	ret			;8465
	ld (ix+000h),00dh		;8466
	ld (ix+003h),038h		;846a
	ld (ix+004h),003h		;846e
	ld (ix+009h),002h		;8472
	ld (ix+019h),001h		;8476
	ld (ix+008h),003h		;847a
	set 7,(ix+007h)		;847e
	call l71cch		;8482
	call sub_4287h		;8485
	ld (ix+00ah),h		;8488
	ld (ix+00ch),l		;848b
	ret			;848e
	bit 7,(ix+007h)		;848f
	jp z,l8528h		;8493
	ld a,(ix+001h)		;8496
	or a			;8499
	jp z,l729ah		;849a
	inc (ix+01ah)		;849d
	ld b,(ix+01ah)		;84a0
	ld a,b			;84a3
	and 00fh		;84a4
	jr nz,l84c3h		;84a6
	ld a,b			;84a8
	and 010h		;84a9
	add a,a			;84ab
	add a,a			;84ac
	ld l,a			;84ad
	ld h,000h		;84ae
	ld de,l8577h		;84b0
	add hl,de			;84b3
	call 041cah		;84b4
	ld de,01900h		;84b7
	ld bc,00040h		;84ba
	call sub_4299h		;84bd
	call l41d0h		;84c0
l84c3h:
	bit 0,(ix+01eh)		;84c3
	jr nz,l84f7h		;84c7
	ld a,(0e00dh)		;84c9
	cp 003h		;84cc
	jr nc,l84d6h		;84ce
	ld (ix+014h),000h		;84d0
	jr l84f7h		;84d4
l84d6h:
	ld a,(ix+01ch)		;84d6
	or a			;84d9
	jr z,l84e5h		;84da
	dec (ix+01ch)		;84dc
	jr nz,l84f7h		;84df
	ld (ix+014h),060h		;84e1
l84e5h:
	ld a,(0e001h)		;84e5
	cp 004h		;84e8
	jr z,l84f7h		;84ea
	ld e,a			;84ec
	ld d,000h		;84ed
	ld hl,l771eh		;84ef
	add hl,de			;84f2
	ld e,(hl)			;84f3
	call sub_71cfh		;84f4
l84f7h:
	call sub_7016h		;84f7
	call l727dh		;84fa
	ld a,(ix+01dh)		;84fd
	or a			;8500
	ret nz			;8501
	ld a,(0e00dh)		;8502
l8505h:
	or a			;8505
	ret z			;8506
	call sub_730ch		;8507
	ld a,(ix+000h)		;850a
	cp 006h		;850d
	ret nz			;850f
	xor a			;8510
	ld (ix+014h),a		;8511
	ld (ix+01ch),a		;8514
	inc a			;8517
	ld (ix+01eh),a		;8518
	ld (0d000h),a		;851b
	ld (ix+000h),00ah		;851e
	ld (ix+01dh),a		;8522
	jp l85f7h		;8525
l8528h:
	ld (ix+003h),020h		;8528
	ld (ix+004h),007h		;852c
	ld (ix+001h),001h		;8530
	call sub_427fh		;8534
	ld (ix+002h),a		;8537
	ld (ix+008h),01bh		;853a
	ld (ix+01ah),007h		;853e
	xor a			;8542
	ld (ix+00ch),a		;8543
	ld (ix+00dh),a		;8546
	ld (ix+00ah),a		;8549
	ld (ix+00bh),a		;854c
	ld (ix+01eh),a		;854f
	ld a,010h		;8552
	ld (ix+016h),a		;8554
	ld (ix+017h),a		;8557
	ld (ix+009h),001h		;855a
	ld (ix+014h),040h		;855e
	ld (ix+01ch),03ch		;8562
	ld (ix+01dh),000h		;8566
	ld (ix+015h),060h		;856a
	ld (ix+019h),000h		;856e
	set 7,(ix+007h)		;8572
	ret			;8576
l8577h:
	nop			;8577
	rlca			;8578
	rra			;8579
	ccf			;857a
	inc hl			;857b
l857ch:
	ld b,c			;857c
	ld h,c			;857d
	ld b,c			;857e
	ld h,e			;857f
	ccf			;8580
	jr c,l859fh		;8581
	rlca			;8583
	nop			;8584
	nop			;8585
	nop			;8586
	nop			;8587
	ret nz			;8588
	ret p			;8589
	ret m			;858a
	adc a,b			;858b
	inc b			;858c
	add a,h			;858d
	inc b			;858e
	adc a,h			;858f
	ret m			;8590
	jr c,$+114		;8591
	ret nz			;8593
	nop			;8594
	nop			;8595
	nop			;8596
	rlca			;8597
	jr l85bah		;8598
	ld b,b			;859a
	ld e,h			;859b
	cp (hl)			;859c
	sbc a,(hl)			;859d
	cp (hl)			;859e
l859fh:
	sbc a,h			;859f
	ld b,b			;85a0
	ld b,a			;85a1
	inc hl			;85a2
	jr l85bch		;85a3
	ret po			;85a5
	jr nc,$-62		;85a6
	jr nc,$+10		;85a8
	inc b			;85aa
	ld (hl),h			;85ab
	jp m,0fa7ah		;85ac
	ld (hl),d			;85af
	inc b			;85b0
	call nz,03088h		;85b1
	ret nc			;85b4
	ld c,018h		;85b5
	nop			;85b7
	rlca			;85b8
	rra			;85b9
l85bah:
	ccf			;85ba
	inc hl			;85bb
l85bch:
	ld b,c			;85bc
	ld b,e			;85bd
	ld b,c			;85be
	ld h,e			;85bf
	ccf			;85c0
	jr c,l85e2h		;85c1
l85c3h:
	rlca			;85c3
	nop			;85c4
	nop			;85c5
	nop			;85c6
	nop			;85c7
	ret nz			;85c8
	ret p			;85c9
	ret m			;85ca
	adc a,b			;85cb
	inc b			;85cc
	inc c			;85cd
	inc b			;85ce
	adc a,h			;85cf
	ret m			;85d0
	jr c,l85c3h		;85d1
	ret nz			;85d3
	nop			;85d4
	nop			;85d5
	nop			;85d6
	rlca			;85d7
	jr l85fah		;85d8
	ld b,b			;85da
	ld e,h			;85db
	cp (hl)			;85dc
	cp h			;85dd
	cp (hl)			;85de
	sbc a,h			;85df
	ld b,b			;85e0
	ld b,a			;85e1
l85e2h:
	jr nz,l857ch		;85e2
	and a			;85e4
	ld b,b			;85e5
	ld b,b			;85e6
	ret nz			;85e7
	jr nc,$+10		;85e8
	inc b			;85ea
	ld (hl),h			;85eb
	jp m,0faf2h		;85ec
	ld (hl),d			;85ef
	inc b			;85f0
	call nz,03208h		;85f1
	jp z,00404h		;85f4
l85f7h:
	call sub_a05fh		;85f7
l85fah:
	ld c,008h		;85fa
	call l5006h		;85fc
	ld b,040h		;85ff
l8601h:
	push bc			;8601
	call sub_40b3h		;8602
	pop bc			;8605
	djnz l8601h		;8606
	call 041cah		;8608
	ld a,001h		;860b
	ld (0e013h),a		;860d
	ld hl,0d8c0h		;8610
	ld de,0d8c1h		;8613
	ld bc,0023fh		;8616
	ld (hl),020h		;8619
	ldir		;861b
	ld hl,l872ah		;861d
	call l4de3h		;8620
	ld hl,0d660h		;8623
	ld de,0db40h		;8626
	ld bc,00240h		;8629
	ldir		;862c
	ld a,016h		;862e
	call sub_a07bh		;8630
	call l41d0h		;8633
	call l5d64h		;8636
	ld hl,0db40h		;8639
	ld de,0d8c0h		;863c
	ld bc,00240h		;863f
	ldir		;8642
	xor a			;8644
	ld (0e014h),a		;8645
l8648h:
	call sub_40b3h		;8648
	call sub_69e9h		;864b
	ld b,a			;864e
	ld hl,0e014h		;864f
	ld c,(hl)			;8652
	ld a,c			;8653
	djnz l865eh		;8654
	dec a			;8656
	cp 0ffh		;8657
	jr nz,l8669h		;8659
	xor a			;865b
	jr l86afh		;865c
l865eh:
	djnz l86afh		;865e
	inc a			;8660
	cp 004h		;8661
	jr nz,l8669h		;8663
	ld a,003h		;8665
	jr l86afh		;8667
l8669h:
	ld (hl),a			;8669
	ex af,af'			;866a
	ld a,c			;866b
	add a,a			;866c
	add a,a			;866d
	add a,a			;866e
	add a,a			;866f
	ld l,a			;8670
	ld h,000h		;8671
	push hl			;8673
	add hl,hl			;8674
	add hl,hl			;8675
	ld de,03946h		;8676
	add hl,de			;8679
	call 041cah		;867a
	ld a,020h		;867d
	call 0004dh		;867f
l8682h:
	pop hl			;8682
	ld e,l			;8683
	ld d,h			;8684
	add hl,hl			;8685
	add hl,de			;8686
	ld de,0d756h		;8687
	add hl,de			;868a
	ld (hl),020h		;868b
	ex af,af'			;868d
	add a,a			;868e
	add a,a			;868f
	add a,a			;8690
	add a,a			;8691
	ld l,a			;8692
	ld h,000h		;8693
	push hl			;8695
	add hl,hl			;8696
	add hl,hl			;8697
	ld de,03946h		;8698
	add hl,de			;869b
	ld a,001h		;869c
	call 0004dh		;869e
	pop hl			;86a1
	ld e,l			;86a2
	ld d,h			;86a3
	add hl,hl			;86a4
	add hl,de			;86a5
	ld de,0d756h		;86a6
	add hl,de			;86a9
	ld (hl),001h		;86aa
	call l41d0h		;86ac
l86afh:
	ld a,(0e000h)		;86af
	bit 4,a		;86b2
	jr nz,l8648h		;86b4
	call sub_a05fh		;86b6
	ld a,(0e014h)		;86b9
	or a			;86bc
	jr z,l8701h		;86bd
	cp 001h		;86bf
	jr nz,l86cbh		;86c1
	call l517ch		;86c3
	call l517ch		;86c6
	jr l86dbh		;86c9
l86cbh:
	cp 002h		;86cb
	jr z,l86d6h		;86cd
	ld c,007h		;86cf
	call l5006h		;86d1
	jr l86dbh		;86d4
l86d6h:
	ld a,001h		;86d6
	ld (0e00ch),a		;86d8
l86dbh:
	call 041cah		;86db
	ld hl,l8720h		;86de
	ld de,03a4ah		;86e1
	ld bc,0000ah		;86e4
	call sub_4299h		;86e7
	call l41d0h		;86ea
	ld hl,(0e019h)		;86ed
	ld bc,0fff1h		;86f0
	add hl,bc			;86f3
	ld (0e019h),hl		;86f4
	ld hl,(0e049h)		;86f7
	add hl,bc			;86fa
	ld (0e049h),hl		;86fb
	call sub_50b7h		;86fe
l8701h:
	ld b,028h		;8701
l8703h:
	push bc			;8703
	call sub_40b3h		;8704
	pop bc			;8707
	djnz l8703h		;8708
	call l5d48h		;870a
	xor a			;870d
	ld (0e013h),a		;870e
	ld a,004h		;8711
	call sub_a07bh		;8713
	ld b,028h		;8716
l8718h:
	push bc			;8718
	call sub_40b3h		;8719
	pop bc			;871c
	djnz l8718h		;871d
	ret			;871f
l8720h:
	ld d,h			;8720
	ld c,b			;8721
	ld b,c			;8722
	ld c,(hl)			;8723
	ld c,e			;8724
	jr nz,l8780h		;8725
	ld c,a			;8727
	ld d,l			;8728
	dec d			;8729
l872ah:
	daa			;872a
	exx			;872b
	ld c,c			;872c
	rla			;872d
	ld c,l			;872e
	jr nz,l8783h		;872f
	ld b,c			;8731
	ld c,(hl)			;8732
	ld b,h			;8733
	ld b,c			;8734
	ld d,d			;8735
	dec d			;8736
	rst 38h			;8737
	ld d,l			;8738
	exx			;8739
	ld d,b			;873a
	ld c,h			;873b
	ld b,l			;873c
	ld b,c			;873d
	ld d,e			;873e
	ld b,l			;873f
	jr nz,l8789h		;8740
	ld c,c			;8742
	ld d,(hl)			;8743
	ld b,l			;8744
	jr nz,l8794h		;8745
	ld b,l			;8747
	rst 38h			;8748
	ld l,h			;8749
	exx			;874a
	ld sp,02035h		;874b
	ld d,b			;874e
	ld c,a			;874f
	ld d,a			;8750
	ld b,l			;8751
	ld d,d			;8752
	ld d,e			;8753
	jr nz,$+86		;8754
	ld c,b			;8756
	ld b,l			;8757
	ld c,(hl)			;8758
	jr nz,$+75		;8759
	rst 38h			;875b
	add a,h			;875c
	exx			;875d
	ld b,a			;875e
	ld c,c			;875f
	ld d,(hl)			;8760
	ld b,l			;8761
l8762h:
	jr nz,$+91		;8762
	ld c,a			;8764
	ld d,l			;8765
	jr nz,$+85		;8766
	ld c,a			;8768
	ld c,l			;8769
	ld b,l			;876a
	ld d,h			;876b
	ld c,b			;876c
	ld c,c			;876d
	ld c,(hl)			;876e
	ld b,a			;876f
	ld d,0ffh		;8770
	or (hl)			;8772
	exx			;8773
	ld bc,04e20h		;8774
	ld c,a			;8777
	rst 38h			;8778
	ret pe			;8779
	exx			;877a
	ld (l6720h),a		;877b
	ld (hl),l			;877e
	ld h,c			;877f
l8780h:
	ld (hl),d			;8780
	ld h,h			;8781
	ld l,c			;8782
l8783h:
	ld h,e			;8783
	ld (hl),e			;8784
	rst 38h			;8785
	jr l8762h		;8786
	ld h,d			;8788
l8789h:
	ld h,c			;8789
	ld (hl),d			;878a
	ld (hl),d			;878b
	ld l,c			;878c
	ld h,l			;878d
	ld (hl),d			;878e
	rst 38h			;878f
	ld c,b			;8790
	jp c,03032h		;8791
l8794h:
	jr nc,l87c6h		;8794
	jr nc,$+34		;8796
	ld (hl),b			;8798
	ld l,a			;8799
	ld l,c			;879a
	ld l,(hl)			;879b
	ld (hl),h			;879c
	ld (hl),e			;879d
	rst 38h			;879e
	rst 38h			;879f
	rst 38h			;87a0
	bit 5,(ix+007h)		;87a1
	jr nz,l87b9h		;87a5
	ld a,008h		;87a7
	call sub_a07bh		;87a9
	call sub_51deh		;87ac
	set 5,(ix+007h)		;87af
	ld de,l87d7h		;87b3
	jp sub_70b2h		;87b6
l87b9h:
	call sub_7016h		;87b9
	ld a,(ix+010h)		;87bc
	cp 00ah		;87bf
	ret nz			;87c1
	ld hl,0e00dh		;87c2
	dec (hl)			;87c5
l87c6h:
	call sub_50a7h		;87c6
	ld a,(0e04dh)		;87c9
	or a			;87cc
	jp z,l729ah		;87cd
	xor a			;87d0
	ld (0e00dh),a		;87d1
	jp l729ah		;87d4
l87d7h:
	inc b			;87d7
	nop			;87d8
	nop			;87d9
	nop			;87da
	nop			;87db
	nop			;87dc
	ld bc,00003h		;87dd
	dec bc			;87e0
	ex (sp),hl			;87e1
	add a,a			;87e2
	jr nc,l87f0h		;87e3
	inc (hl)			;87e5
	add hl,bc			;87e6
	jr c,$+10		;87e7
	inc a			;87e9
	ld b,03ch		;87ea
	ld b,03ah		;87ec
	ld e,a			;87ee
	ret po			;87ef
l87f0h:
	cp 003h		;87f0
	jp nz,l787fh		;87f2
	ld (ix+000h),002h		;87f5
	jp 07727h		;87f9
	ld a,(0e05fh)		;87fc
	cp 003h		;87ff
	jp nz,l787fh		;8801
	ld (ix+000h),003h		;8804
	jp l7771h		;8808
	ld a,(0e05fh)		;880b
	cp 003h		;880e
	jp nz,l787fh		;8810
	ld (ix+000h),004h		;8813
	jp l77bfh		;8817
	ret			;881a
	bit 7,(ix+007h)		;881b
	jr z,l8851h		;881f
	ld a,(0e00ch)		;8821
	or a			;8824
	jr z,l882eh		;8825
	ld (ix+000h),001h		;8827
	jp l74d6h		;882b
l882eh:
	call sub_a05fh		;882e
	ld a,00ah		;8831
	call sub_a07bh		;8833
	ld iy,0d020h		;8836
	ld a,00eh		;883a
	ld (iy+000h),a		;883c
	ld (iy+020h),a		;883f
	ld (iy+040h),a		;8842
	ld (ix+01ah),000h		;8845
	ld (ix+01bh),001h		;8849
	res 7,(ix+007h)		;884d
l8851h:
	dec (ix+01bh)		;8851
	jr z,l8867h		;8854
	ld de,(0e01ch)		;8856
	ld hl,0e200h		;885a
	ld bc,00010h		;885d
	ldir		;8860
	ld (0e01ch),de		;8862
	ret			;8866
l8867h:
	ld a,(ix+01ah)		;8867
	call sub_887dh		;886a
	inc (ix+01ah)		;886d
	ld (ix+01bh),006h		;8870
	ld a,(ix+01ah)		;8874
	cp 00dh		;8877
	ret nz			;8879
	jp l729ah		;887a
sub_887dh:
	add a,a			;887d
	add a,a			;887e
	add a,a			;887f
	add a,a			;8880
	ld c,a			;8881
	ld b,000h		;8882
	ld hl,l88f0h		;8884
	add hl,bc			;8887
	ex de,hl			;8888
	call 041cah		;8889
	bit 0,(ix+01ah)		;888c
l8890h:
	ld a,010h		;8890
	jr nz,l8895h		;8892
	xor a			;8894
l8895h:
	ld b,004h		;8895
l8897h:
	push bc			;8897
	call sub_88ach		;8898
	pop bc			;889b
	add a,004h		;889c
	djnz l8897h		;889e
	dec hl			;88a0
	ld de,0e20fh		;88a1
	ld bc,00010h		;88a4
	lddr		;88a7
	jp l41d0h		;88a9
sub_88ach:
	ld l,a			;88ac
	ld h,000h		;88ad
	add hl,hl			;88af
	add hl,hl			;88b0
	add hl,hl			;88b1
	ld bc,01800h		;88b2
	add hl,bc			;88b5
	ex de,hl			;88b6
	ex af,af'			;88b7
	push hl			;88b8
	ld l,(hl)			;88b9
	ld h,000h		;88ba
	add hl,hl			;88bc
	add hl,hl			;88bd
	add hl,hl			;88be
	add hl,hl			;88bf
	add hl,hl			;88c0
	ld bc,l89b0h		;88c1
	add hl,bc			;88c4
	ld bc,00020h		;88c5
	call sub_4299h		;88c8
	pop hl			;88cb
	ld de,(0e01ch)		;88cc
	inc hl			;88d0
	ld a,(0d001h)		;88d1
	add a,(hl)			;88d4
	add a,0f0h		;88d5
	ld (de),a			;88d7
	inc hl			;88d8
	inc de			;88d9
	ld a,(0d002h)		;88da
	add a,(hl)			;88dd
	ld (de),a			;88de
	inc hl			;88df
	inc de			;88e0
	ex af,af'			;88e1
	ld (de),a			;88e2
	ex af,af'			;88e3
	inc de			;88e4
	ld a,(hl)			;88e5
	ld (de),a			;88e6
	inc de			;88e7
	ld (0e01ch),de		;88e8
	inc hl			;88ec
	ex de,hl			;88ed
	ex af,af'			;88ee
	ret			;88ef
l88f0h:
	nop			;88f0
	nop			;88f1
	nop			;88f2
	ld a,(bc)			;88f3
	ld bc,00000h		;88f4
	inc bc			;88f7
	ld (bc),a			;88f8
	nop			;88f9
	nop			;88fa
	ld bc,00003h		;88fb
	nop			;88fe
	add hl,bc			;88ff
	inc b			;8900
	nop			;8901
	nop			;8902
	ld a,(bc)			;8903
	dec b			;8904
	nop			;8905
	nop			;8906
	inc bc			;8907
	ld b,0f8h		;8908
	nop			;890a
	add hl,bc			;890b
	rlca			;890c
	ex af,af'			;890d
	nop			;890e
	add hl,bc			;890f
	ex af,af'			;8910
	ret m			;8911
	ret m			;8912
	add hl,bc			;8913
	add hl,bc			;8914
	ex af,af'			;8915
	ret m			;8916
	add hl,bc			;8917
	ld a,(bc)			;8918
	ret m			;8919
	ex af,af'			;891a
	add hl,bc			;891b
	dec bc			;891c
	ex af,af'			;891d
	ex af,af'			;891e
	add hl,bc			;891f
	inc c			;8920
	ret m			;8921
	ret m			;8922
	add hl,bc			;8923
	dec c			;8924
	ex af,af'			;8925
	ret m			;8926
	add hl,bc			;8927
	ld c,0f8h		;8928
	ex af,af'			;892a
	add hl,bc			;892b
	rrca			;892c
	ex af,af'			;892d
	ex af,af'			;892e
	add hl,bc			;892f
	ex af,af'			;8930
	ret m			;8931
	ret m			;8932
	dec bc			;8933
	add hl,bc			;8934
	ex af,af'			;8935
	ret m			;8936
	dec bc			;8937
	ld a,(bc)			;8938
	ret m			;8939
	ex af,af'			;893a
	dec bc			;893b
	dec bc			;893c
	ex af,af'			;893d
	ex af,af'			;893e
	dec bc			;893f
	inc c			;8940
	ret m			;8941
	ret m			;8942
	dec bc			;8943
	dec c			;8944
	ex af,af'			;8945
	ret m			;8946
	dec bc			;8947
	ld c,0f8h		;8948
	ex af,af'			;894a
	dec bc			;894b
	rrca			;894c
	ex af,af'			;894d
	ex af,af'			;894e
	dec bc			;894f
	ex af,af'			;8950
	ret m			;8951
	ret m			;8952
	add hl,bc			;8953
	add hl,bc			;8954
	ex af,af'			;8955
	ret m			;8956
	add hl,bc			;8957
	ld a,(bc)			;8958
	ret m			;8959
	ex af,af'			;895a
	add hl,bc			;895b
	dec bc			;895c
	ex af,af'			;895d
	ex af,af'			;895e
	add hl,bc			;895f
	inc c			;8960
	ret m			;8961
	ret m			;8962
	ex af,af'			;8963
	dec c			;8964
	ex af,af'			;8965
	ret m			;8966
	ex af,af'			;8967
	ld c,0f8h		;8968
	ex af,af'			;896a
	ex af,af'			;896b
	rrca			;896c
	ex af,af'			;896d
	ex af,af'			;896e
	ex af,af'			;896f
	ex af,af'			;8970
	ret m			;8971
	ret m			;8972
	ld b,009h		;8973
	ex af,af'			;8975
	ret m			;8976
	ld b,00ah		;8977
	ret m			;8979
	ex af,af'			;897a
	ld b,00bh		;897b
	ex af,af'			;897d
	ex af,af'			;897e
	ld b,004h		;897f
	nop			;8981
	nop			;8982
	nop			;8983
	dec b			;8984
	nop			;8985
	nop			;8986
	nop			;8987
	ld b,0f8h		;8988
	nop			;898a
	ld b,007h		;898b
	ex af,af'			;898d
	nop			;898e
	ld b,000h		;898f
	nop			;8991
	nop			;8992
	nop			;8993
	ld bc,00000h		;8994
	nop			;8997
	ld (bc),a			;8998
	nop			;8999
	nop			;899a
	nop			;899b
	inc bc			;899c
	nop			;899d
	nop			;899e
	ld b,000h		;899f
	nop			;89a1
	nop			;89a2
	nop			;89a3
	nop			;89a4
	nop			;89a5
	nop			;89a6
	nop			;89a7
	nop			;89a8
	nop			;89a9
	nop			;89aa
	nop			;89ab
	nop			;89ac
	nop			;89ad
	nop			;89ae
	nop			;89af
l89b0h:
	nop			;89b0
	nop			;89b1
	nop			;89b2
	djnz l89c5h		;89b3
	jr l89c7h		;89b5
	nop			;89b7
	nop			;89b8
	nop			;89b9
	nop			;89ba
	nop			;89bb
	nop			;89bc
	nop			;89bd
	nop			;89be
	nop			;89bf
	add a,b			;89c0
	add a,b			;89c1
	adc a,b			;89c2
	ld c,h			;89c3
	ld l,h			;89c4
l89c5h:
	ld l,h			;89c5
	inc l			;89c6
l89c7h:
	add a,(hl)			;89c7
	ld b,000h		;89c8
	ld b,b			;89ca
	nop			;89cb
	nop			;89cc
	nop			;89cd
	nop			;89ce
	nop			;89cf
	nop			;89d0
	nop			;89d1
	nop			;89d2
	nop			;89d3
	nop			;89d4
	nop			;89d5
	nop			;89d6
	nop			;89d7
	jr c,l8a52h		;89d8
	ld a,b			;89da
	ld (hl),h			;89db
	inc a			;89dc
	inc e			;89dd
	inc c			;89de
	nop			;89df
	nop			;89e0
	nop			;89e1
	nop			;89e2
	add a,b			;89e3
	add a,b			;89e4
	nop			;89e5
	nop			;89e6
	nop			;89e7
	nop			;89e8
	inc a			;89e9
	ld e,02eh		;89ea
	inc a			;89ec
	jr c,l8a1fh		;89ed
	nop			;89ef
	ld bc,00101h		;89f0
	ld (02022h),hl		;89f3
	jr nz,l8a38h		;89f6
	ld b,b			;89f8
	ld (bc),a			;89f9
	add a,e			;89fa
	add a,b			;89fb
	ld b,b			;89fc
	jr nz,$+18		;89fd
	inc c			;89ff
	nop			;8a00
	nop			;8a01
	nop			;8a02
	nop			;8a03
	nop			;8a04
	djnz l8a07h		;8a05
l8a07h:
	jr l8a09h		;8a07
l8a09h:
	nop			;8a09
	jr nz,l8a2ch		;8a0a
	jr nz,l8a2eh		;8a0c
	jr nz,l8a40h		;8a0e
	nop			;8a10
	nop			;8a11
	djnz l8a1dh		;8a12
	dec b			;8a14
	rlca			;8a15
	rrca			;8a16
	ccf			;8a17
	rlca			;8a18
	dec b			;8a19
	ex af,af'			;8a1a
	nop			;8a1b
	nop			;8a1c
l8a1dh:
	nop			;8a1d
	nop			;8a1e
l8a1fh:
	nop			;8a1f
	nop			;8a20
	nop			;8a21
	nop			;8a22
	nop			;8a23
	nop			;8a24
	add a,b			;8a25
	ret nc			;8a26
	ld h,b			;8a27
	ret m			;8a28
	ret po			;8a29
	add a,b			;8a2a
	add a,b			;8a2b
l8a2ch:
	add a,b			;8a2c
	add a,b			;8a2d
l8a2eh:
	nop			;8a2e
	nop			;8a2f
	nop			;8a30
	nop			;8a31
	jr nz,l8a64h		;8a32
	ld (bc),a			;8a34
	inc hl			;8a35
	inc bc			;8a36
	ld h,b			;8a37
l8a38h:
	ld (hl),b			;8a38
	ld h,b			;8a39
	nop			;8a3a
	nop			;8a3b
	nop			;8a3c
	nop			;8a3d
	nop			;8a3e
	nop			;8a3f
l8a40h:
	add a,b			;8a40
	add a,b			;8a41
	add a,b			;8a42
	inc b			;8a43
	inc c			;8a44
	inc e			;8a45
	nop			;8a46
	ld c,09eh		;8a47
	add a,(hl)			;8a49
	nop			;8a4a
	nop			;8a4b
	nop			;8a4c
	nop			;8a4d
	nop			;8a4e
	nop			;8a4f
	nop			;8a50
	nop			;8a51
l8a52h:
	nop			;8a52
	nop			;8a53
	nop			;8a54
	nop			;8a55
	nop			;8a56
	nop			;8a57
	nop			;8a58
	nop			;8a59
	nop			;8a5a
	ld (hl),b			;8a5b
	jr nc,l8a62h		;8a5c
	nop			;8a5e
	nop			;8a5f
	nop			;8a60
	nop			;8a61
l8a62h:
	nop			;8a62
	nop			;8a63
l8a64h:
	nop			;8a64
	nop			;8a65
	nop			;8a66
	nop			;8a67
	nop			;8a68
	nop			;8a69
	nop			;8a6a
	ld e,00ch		;8a6b
	nop			;8a6d
	nop			;8a6e
	nop			;8a6f
	nop			;8a70
	nop			;8a71
	nop			;8a72
	nop			;8a73
	nop			;8a74
	ld bc,02101h		;8a75
	ld sp,01f1dh		;8a78
	rst 8			;8a7b
	dec a			;8a7c
	inc e			;8a7d
	call m,0001fh		;8a7e
	nop			;8a81
	nop			;8a82
	nop			;8a83
	nop			;8a84
	nop			;8a85
	nop			;8a86
	nop			;8a87
	nop			;8a88
	nop			;8a89
	inc c			;8a8a
	ret c			;8a8b
	ret p			;8a8c
	ret po			;8a8d
	call m,00ff0h		;8a8e
	rra			;8a91
	rst 38h			;8a92
	rrca			;8a93
	rrca			;8a94
	add hl,de			;8a95
	ld sp,00101h		;8a96
	ld bc,00000h		;8a99
	nop			;8a9c
	nop			;8a9d
	nop			;8a9e
	nop			;8a9f
	ld h,b			;8aa0
	ld a,b			;8aa1
	rst 38h			;8aa2
	ret po			;8aa3
	ret p			;8aa4
	jr c,l8ac3h		;8aa5
	inc b			;8aa7
	nop			;8aa8
	nop			;8aa9
	nop			;8aaa
	nop			;8aab
	nop			;8aac
	nop			;8aad
	nop			;8aae
	nop			;8aaf
	nop			;8ab0
	nop			;8ab1
	nop			;8ab2
	nop			;8ab3
	ld (bc),a			;8ab4
	ld bc,00000h		;8ab5
	nop			;8ab8
	nop			;8ab9
	ld b,003h		;8aba
	nop			;8abc
	nop			;8abd
	nop			;8abe
	inc bc			;8abf
	nop			;8ac0
	nop			;8ac1
	nop			;8ac2
l8ac3h:
	nop			;8ac3
	ld bc,l8101h		;8ac4
	ld h,c			;8ac7
	ld a,c			;8ac8
	ccf			;8ac9
	rra			;8aca
	sbc a,a			;8acb
	rst 38h			;8acc
	ld a,a			;8acd
	ccf			;8ace
	rst 38h			;8acf
	nop			;8ad0
	nop			;8ad1
	nop			;8ad2
	nop			;8ad3
	nop			;8ad4
	nop			;8ad5
	nop			;8ad6
	ld bc,00002h		;8ad7
	nop			;8ada
	nop			;8adb
	nop			;8adc
	nop			;8add
	nop			;8ade
	nop			;8adf
	ccf			;8ae0
	rra			;8ae1
	rra			;8ae2
	ccf			;8ae3
	ld (hl),e			;8ae4
	ld h,e			;8ae5
	add a,e			;8ae6
	ld bc,00101h		;8ae7
	ld bc,00001h		;8aea
	nop			;8aed
	nop			;8aee
	nop			;8aef
	nop			;8af0
	nop			;8af1
	nop			;8af2
	nop			;8af3
	nop			;8af4
	nop			;8af5
	nop			;8af6
	nop			;8af7
	ld bc,0ecc2h		;8af8
	call m,0f0f8h		;8afb
	ret m			;8afe
	ret m			;8aff
	nop			;8b00
	nop			;8b01
l8b02h:
	nop			;8b02
	nop			;8b03
	nop			;8b04
	nop			;8b05
	nop			;8b06
	nop			;8b07
	nop			;8b08
	nop			;8b09
	nop			;8b0a
	nop			;8b0b
	nop			;8b0c
	nop			;8b0d
	nop			;8b0e
	nop			;8b0f
	cp 0ffh		;8b10
	ret m			;8b12
	ret m			;8b13
	ret m			;8b14
	sbc a,h			;8b15
	adc a,h			;8b16
	ld (bc),a			;8b17
	ld bc,00000h		;8b18
	nop			;8b1b
	nop			;8b1c
	nop			;8b1d
	nop			;8b1e
	nop			;8b1f
	nop			;8b20
	ret nz			;8b21
	nop			;8b22
	nop			;8b23
	nop			;8b24
	nop			;8b25
	nop			;8b26
	nop			;8b27
	nop			;8b28
	add a,b			;8b29
	ld b,b			;8b2a
	nop			;8b2b
	nop			;8b2c
	nop			;8b2d
	nop			;8b2e
	nop			;8b2f
	nop			;8b30
	djnz l8b3bh		;8b31
	inc b			;8b33
	ld (bc),a			;8b34
	ld bc,00001h		;8b35
	nop			;8b38
	nop			;8b39
	ex af,af'			;8b3a
l8b3bh:
	ld b,001h		;8b3b
	ld bc,00701h		;8b3d
	ld bc,00101h		;8b40
	ld bc,08301h		;8b43
	jp 07fffh		;8b46
	ld a,a			;8b49
	ld a,a			;8b4a
	rst 38h			;8b4b
	rst 38h			;8b4c
	rst 38h			;8b4d
	rst 38h			;8b4e
	rst 38h			;8b4f
	ld bc,00101h		;8b50
	nop			;8b53
	nop			;8b54
	nop			;8b55
	nop			;8b56
	nop			;8b57
	ld bc,00402h		;8b58
	nop			;8b5b
	nop			;8b5c
	nop			;8b5d
	nop			;8b5e
	nop			;8b5f
	rst 38h			;8b60
	rst 38h			;8b61
	rst 38h			;8b62
	rst 38h			;8b63
	rst 38h			;8b64
	ld a,a			;8b65
	rst 38h			;8b66
	rst 18h			;8b67
	rlca			;8b68
	inc bc			;8b69
	inc bc			;8b6a
	ld bc,00101h		;8b6b
	ld bc,00001h		;8b6e
	nop			;8b71
	nop			;8b72
	nop			;8b73
	nop			;8b74
	add a,b			;8b75
	add a,b			;8b76
	ret po			;8b77
	ret m			;8b78
	call m,0ffffh		;8b79
	rst 38h			;8b7c
	rst 38h			;8b7d
	rst 38h			;8b7e
	rst 38h			;8b7f
	nop			;8b80
	nop			;8b81
	nop			;8b82
	nop			;8b83
	nop			;8b84
	nop			;8b85
	nop			;8b86
	nop			;8b87
	ld b,b			;8b88
	add a,b			;8b89
	nop			;8b8a
	nop			;8b8b
	nop			;8b8c
	add a,b			;8b8d
	add a,b			;8b8e
	add a,b			;8b8f
	rst 38h			;8b90
	rst 38h			;8b91
	rst 38h			;8b92
	rst 38h			;8b93
	rst 38h			;8b94
	cp 0fch		;8b95
	cp 0efh		;8b97
	add a,e			;8b99
	add a,b			;8b9a
	nop			;8b9b
	nop			;8b9c
	nop			;8b9d
	nop			;8b9e
	nop			;8b9f
	ret nz			;8ba0
	ret p			;8ba1
	add a,b			;8ba2
	nop			;8ba3
	nop			;8ba4
	nop			;8ba5
	nop			;8ba6
	nop			;8ba7
	nop			;8ba8
	nop			;8ba9
	add a,b			;8baa
	ld b,b			;8bab
	jr nz,l8bbeh		;8bac
	ex af,af'			;8bae
	nop			;8baf
l8bb0h:
	sub b			;8bb0
	ld l,a			;8bb1
	sub 074h		;8bb2
	daa			;8bb4
	ld (hl),a			;8bb5
	ld (hl),c			;8bb6
	ld (hl),a			;8bb7
	cp a			;8bb8
	ld (hl),a			;8bb9
	ld a,a			;8bba
	ld a,b			;8bbb
	and c			;8bbc
	add a,a			;8bbd
l8bbeh:
	defb 0edh;next byte illegal after ed		;8bbe
	add a,a			;8bbf
	call m,00b87h		;8bc0
	adc a,b			;8bc3
	adc a,a			;8bc4
	add a,h			;8bc5
	ld hl,01483h		;8bc6
	add a,b			;8bc9
	ld b,(hl)			;8bca
	ld a,h			;8bcb
	sbc a,d			;8bcc
	ld (hl),d			;8bcd
	dec de			;8bce
	adc a,b			;8bcf
	ld d,l			;8bd0
	ld a,c			;8bd1
	add a,b			;8bd2
	ld a,d			;8bd3
	or c			;8bd4
	ld a,d			;8bd5
	cp e			;8bd6
	ld a,d			;8bd7
l8bd8h:
	ld (hl),l			;8bd8
	ld a,e			;8bd9
	ld a,l			;8bda
	ld a,h			;8bdb
	ld c,d			;8bdc
	add a,e			;8bdd
	and e			;8bde
	add a,e			;8bdf
	cp h			;8be0
	ld a,a			;8be1
	ld e,e			;8be2
	add a,b			;8be3
	jp p,l7180h		;8be4
	add a,c			;8be7
	ret p			;8be8
	add a,d			;8be9
	ret pe			;8bea
	add a,e			;8beb
	ld h,(hl)			;8bec
	add a,h			;8bed
	rst 38h			;8bee
	rst 38h			;8bef
l8bf0h:
	rst 38h			;8bf0
	rst 38h			;8bf1
	rst 38h			;8bf2
	rst 38h			;8bf3
	rst 38h			;8bf4
	rst 38h			;8bf5
	rst 38h			;8bf6
	rst 38h			;8bf7
	ld a,(hl)			;8bf8
	sbc a,c			;8bf9
	cp l			;8bfa
	sbc a,c			;8bfb
	rst 20h			;8bfc
	ld a,(hl)			;8bfd
	ld b,d			;8bfe
	rst 20h			;8bff
	nop			;8c00
	nop			;8c01
	rst 38h			;8c02
	nop			;8c03
	nop			;8c04
	rst 38h			;8c05
	rst 38h			;8c06
	rst 38h			;8c07
	call nz,0e0c0h		;8c08
	ret m			;8c0b
	call m,0c4c4h		;8c0c
	call nz,0c4c4h		;8c0f
	call nz,0c4c4h		;8c12
	call nz,0c4c4h		;8c15
	ld a,b			;8c18
	ld a,b			;8c19
	ld a,b			;8c1a
	ld a,b			;8c1b
	ret m			;8c1c
	nop			;8c1d
	ld a,b			;8c1e
	ld a,b			;8c1f
	ld a,b			;8c20
	ld a,b			;8c21
	ld a,b			;8c22
	ld a,b			;8c23
	ld a,b			;8c24
	ld a,b			;8c25
	ld a,b			;8c26
	ld a,b			;8c27
	inc hl			;8c28
	inc bc			;8c29
	rlca			;8c2a
	rra			;8c2b
	ccf			;8c2c
	inc hl			;8c2d
	inc hl			;8c2e
	call c,02323h		;8c2f
	inc hl			;8c32
	inc hl			;8c33
	inc hl			;8c34
	inc hl			;8c35
	inc hl			;8c36
	call c,01e1eh		;8c37
	ld e,01eh		;8c3a
	rra			;8c3c
	nop			;8c3d
	ld e,01eh		;8c3e
	ld e,01eh		;8c40
	ld e,01eh		;8c42
	ld e,01eh		;8c44
	ld e,01eh		;8c46
	nop			;8c48
	ld c,0c6h		;8c49
	jp 0e657h		;8c4b
	rst 38h			;8c4e
	nop			;8c4f
	nop			;8c50
	nop			;8c51
	djnz l8bd8h		;8c52
	ccf			;8c54
	ld e,049h		;8c55
	inc h			;8c57
	rst 20h			;8c58
	ret po			;8c59
	ld (hl),b			;8c5a
	ld (hl),b			;8c5b
	add hl,sp			;8c5c
	add hl,sp			;8c5d
	dec de			;8c5e
	dec e			;8c5f
	rst 38h			;8c60
	rst 38h			;8c61
	nop			;8c62
	rst 38h			;8c63
	rst 38h			;8c64
	rst 38h			;8c65
	rst 38h			;8c66
	rst 38h			;8c67
	nop			;8c68
	rlca			;8c69
	xor 0eeh		;8c6a
	defb 0ddh,0c1h,0ffh	;illegal sequence		;8c6c
	nop			;8c6f
	nop			;8c70
	nop			;8c71
	nop			;8c72
	add a,c			;8c73
	inc h			;8c74
	adc a,c			;8c75
	jp 000f6h		;8c76
	ld a,(de)			;8c79
	add a,c			;8c7a
	dec l			;8c7b
	ccf			;8c7c
	add a,b			;8c7d
	inc b			;8c7e
	nop			;8c7f
	nop			;8c80
	jr $+50		;8c81
	jr nc,$+50		;8c83
	jr nc,l8cb7h		;8c85
	jr l8c89h		;8c87
l8c89h:
	jr nc,l8ca3h		;8c89
	jr l8ca5h		;8c8b
	jr $+26		;8c8d
	jr nc,l8c91h		;8c8f
l8c91h:
	nop			;8c91
	nop			;8c92
	nop			;8c93
	cp 000h		;8c94
	nop			;8c96
	nop			;8c97
	nop			;8c98
	jr $+62		;8c99
	inc a			;8c9b
	jr $+26		;8c9c
	nop			;8c9e
	jr l8ca1h		;8c9f
l8ca1h:
	nop			;8ca1
	nop			;8ca2
l8ca3h:
	nop			;8ca3
	nop			;8ca4
l8ca5h:
	nop			;8ca5
	jr nc,$+50		;8ca6
	jr nc,l8cdah		;8ca8
	jr nz,l8cach		;8caa
l8cach:
	nop			;8cac
	nop			;8cad
	nop			;8cae
	nop			;8caf
	ld (hl),a			;8cb0
	ld (hl),a			;8cb1
	xor 0eeh		;8cb2
	call c,0b9dch		;8cb4
l8cb7h:
	add hl,sp			;8cb7
	dec sp			;8cb8
	dec sp			;8cb9
	dec sp			;8cba
	dec sp			;8cbb
	dec sp			;8cbc
	dec sp			;8cbd
	ei			;8cbe
	ei			;8cbf
	add a,a			;8cc0
	add a,a			;8cc1
	adc a,(hl)			;8cc2
	adc a,(hl)			;8cc3
	sbc a,h			;8cc4
	sbc a,h			;8cc5
	adc a,a			;8cc6
	adc a,a			;8cc7
	ld (hl),c			;8cc8
	ld (hl),c			;8cc9
	ld (hl),e			;8cca
	ld (hl),e			;8ccb
	ld (hl),a			;8ccc
	ld (hl),a			;8ccd
	cp 0feh		;8cce
	nop			;8cd0
	nop			;8cd1
	nop			;8cd2
	add a,b			;8cd3
	ret nz			;8cd4
	ret nz			;8cd5
	call nz,0c4c4h		;8cd6
	ret nz			;8cd9
l8cdah:
	ret po			;8cda
	ret m			;8cdb
	call m,0c4c4h		;8cdc
	call nz,00000h		;8cdf
	nop			;8ce2
	ld bc,00303h		;8ce3
	inc hl			;8ce6
	inc hl			;8ce7
	inc hl			;8ce8
	inc bc			;8ce9
	rlca			;8cea
	rra			;8ceb
	ccf			;8cec
	inc hl			;8ced
	inc hl			;8cee
	call c,00000h		;8cef
	nop			;8cf2
	nop			;8cf3
	nop			;8cf4
	nop			;8cf5
	nop			;8cf6
	nop			;8cf7
	nop			;8cf8
	ld (hl),b			;8cf9
	ld (hl),b			;8cfa
	ld (hl),b			;8cfb
	ld (hl),b			;8cfc
	ld (hl),b			;8cfd
	ld (hl),b			;8cfe
	ld (hl),b			;8cff
	nop			;8d00
	ld (hl),a			;8d01
	ld (hl),a			;8d02
	ld (hl),a			;8d03
	ld (hl),a			;8d04
	ld (hl),a			;8d05
	ld (hl),a			;8d06
	ld (hl),a			;8d07
	nop			;8d08
	nop			;8d09
	nop			;8d0a
	nop			;8d0b
	ld bc,00703h		;8d0c
	rrca			;8d0f
	jr $+62		;8d10
	ld a,(hl)			;8d12
	rst 38h			;8d13
	rst 38h			;8d14
	rst 38h			;8d15
	rst 38h			;8d16
	rst 38h			;8d17
	nop			;8d18
	nop			;8d19
	nop			;8d1a
	nop			;8d1b
	add a,b			;8d1c
	ret nz			;8d1d
	ret po			;8d1e
	ret p			;8d1f
	rst 38h			;8d20
	rst 38h			;8d21
	rst 38h			;8d22
	rst 38h			;8d23
	rst 38h			;8d24
	rst 38h			;8d25
	rst 38h			;8d26
	rst 38h			;8d27
	nop			;8d28
	ld a,h			;8d29
	adc a,0c0h		;8d2a
	ld a,h			;8d2c
	ld c,0ceh		;8d2d
	ld a,h			;8d2f
	nop			;8d30
	cp 038h		;8d31
	jr c,l8d6dh		;8d33
	jr c,l8d6fh		;8d35
	jr c,l8d39h		;8d37
l8d39h:
	ld a,h			;8d39
	adc a,0ceh		;8d3a
	adc a,0feh		;8d3c
	adc a,0ceh		;8d3e
	nop			;8d40
	call m,0ceceh		;8d41
	adc a,0fch		;8d44
	call c,000ceh		;8d46
	cp 038h		;8d49
	jr c,l8d85h		;8d4b
	jr c,l8d87h		;8d4d
	jr c,l8d51h		;8d4f
l8d51h:
	ex af,af'			;8d51
	ld hl,(03e3eh)		;8d52
	ld l,e			;8d55
	ld h,e			;8d56
	ld (03e1ch),hl		;8d57
	ld a,03eh		;8d5a
	inc e			;8d5c
	ld h,b			;8d5d
	ld h,b			;8d5e
	nop			;8d5f
	nop			;8d60
	ex af,af'			;8d61
	ld hl,(03e3eh)		;8d62
	ld l,e			;8d65
	ld h,e			;8d66
	ld (0ffffh),hl		;8d67
	rst 38h			;8d6a
	rst 38h			;8d6b
	rst 38h			;8d6c
l8d6dh:
	rst 38h			;8d6d
	sbc a,c			;8d6e
l8d6fh:
	rst 38h			;8d6f
	nop			;8d70
	ld a,h			;8d71
	adc a,0ceh		;8d72
	adc a,0ceh		;8d74
	adc a,07ch		;8d76
	nop			;8d78
	jr $+58		;8d79
	ld a,b			;8d7b
	jr c,$+58		;8d7c
	jr c,l8dfch		;8d7e
	nop			;8d80
	ld a,h			;8d81
	adc a,0ceh		;8d82
	inc e			;8d84
l8d85h:
	ld a,b			;8d85
	ret nz			;8d86
l8d87h:
	cp 000h		;8d87
	ld a,h			;8d89
	adc a,00eh		;8d8a
	inc e			;8d8c
	ld c,0ceh		;8d8d
	ld a,h			;8d8f
	nop			;8d90
	inc e			;8d91
	ld a,h			;8d92
	call c,0fedch		;8d93
	inc e			;8d96
	inc e			;8d97
	nop			;8d98
	cp 0c0h		;8d99
	call m,00e0eh		;8d9b
	adc a,07ch		;8d9e
	nop			;8da0
	ld a,h			;8da1
	adc a,0c0h		;8da2
	call m,0ceceh		;8da4
	ld a,h			;8da7
	nop			;8da8
	cp 0ceh		;8da9
	ld c,01ch		;8dab
	inc e			;8dad
	jr c,$+58		;8dae
	nop			;8db0
	ld a,h			;8db1
	adc a,0ceh		;8db2
	ld a,h			;8db4
	adc a,0ceh		;8db5
	ld a,h			;8db7
	nop			;8db8
	ld a,h			;8db9
	adc a,0ceh		;8dba
	ld a,h			;8dbc
	inc e			;8dbd
	jr c,l8df8h		;8dbe
	nop			;8dc0
	ld b,h			;8dc1
	ld d,h			;8dc2
	ld d,h			;8dc3
	ld d,h			;8dc4
	ld d,h			;8dc5
	ld d,h			;8dc6
	add hl,hl			;8dc7
	rst 38h			;8dc8
	rra			;8dc9
	rst 0			;8dca
	ret p			;8dcb
	or c			;8dcc
	ccf			;8dcd
	adc a,a			;8dce
	cp 0ceh		;8dcf
	adc a,0b7h		;8dd1
	or a			;8dd3
	dec sp			;8dd4
	dec sp			;8dd5
	dec e			;8dd6
	dec e			;8dd7
	rlca			;8dd8
	rlca			;8dd9
	ld c,00eh		;8dda
	sbc a,h			;8ddc
	sbc a,h			;8ddd
	ret c			;8dde
	ret c			;8ddf
	inc c			;8de0
	ld c,007h		;8de1
	rlca			;8de3
	inc bc			;8de4
	inc bc			;8de5
	ld bc,00000h		;8de6
	ld (hl),b			;8de9
	ret po			;8dea
	ret po			;8deb
	ret nz			;8dec
	ret nz			;8ded
	add a,b			;8dee
	nop			;8def
	nop			;8df0
	ld a,h			;8df1
	add a,d			;8df2
	cp d			;8df3
	and d			;8df4
	cp d			;8df5
	add a,d			;8df6
	ld a,h			;8df7
l8df8h:
	nop			;8df8
	ld a,h			;8df9
	adc a,0ceh		;8dfa
l8dfch:
	adc a,0feh		;8dfc
	adc a,0ceh		;8dfe
	nop			;8e00
	call m,0ceceh		;8e01
	call m,0ceceh		;8e04
	call m,07c00h		;8e07
	adc a,0c0h		;8e0a
	ret nz			;8e0c
	ret nz			;8e0d
	adc a,07ch		;8e0e
	nop			;8e10
	call m,0ceceh		;8e11
	adc a,0ceh		;8e14
	adc a,0fch		;8e16
	nop			;8e18
	cp 0c0h		;8e19
	ret nz			;8e1b
	call m,0c0c0h		;8e1c
	cp 000h		;8e1f
	cp 0c0h		;8e21
	ret nz			;8e23
	call m,0c0c0h		;8e24
	ret nz			;8e27
	nop			;8e28
	ld a,h			;8e29
	adc a,0c0h		;8e2a
	ret nz			;8e2c
	sbc a,0ceh		;8e2d
	ld a,h			;8e2f
	nop			;8e30
	adc a,0ceh		;8e31
	adc a,0feh		;8e33
	adc a,0ceh		;8e35
	adc a,000h		;8e37
	jr c,$+58		;8e39
	jr c,$+58		;8e3b
	jr c,l8e77h		;8e3d
	jr c,l8e41h		;8e3f
l8e41h:
	inc e			;8e41
	inc e			;8e42
	inc e			;8e43
	inc e			;8e44
	inc e			;8e45
	ret c			;8e46
	ld (hl),b			;8e47
	nop			;8e48
	adc a,0dch		;8e49
	ret m			;8e4b
	ret p			;8e4c
	call c,0ceceh		;8e4d
	nop			;8e50
	ret nz			;8e51
	ret nz			;8e52
	ret nz			;8e53
	ret nz			;8e54
	ret nz			;8e55
	ret nz			;8e56
	cp 000h		;8e57
	add a,(hl)			;8e59
	adc a,0beh		;8e5a
	or (hl)			;8e5c
	add a,(hl)			;8e5d
	add a,(hl)			;8e5e
	add a,(hl)			;8e5f
	nop			;8e60
	adc a,0eeh		;8e61
	sbc a,0ceh		;8e63
	adc a,0ceh		;8e65
	adc a,000h		;8e67
	ld a,h			;8e69
	adc a,0ceh		;8e6a
	adc a,0ceh		;8e6c
	adc a,07ch		;8e6e
	nop			;8e70
	call m,0ceceh		;8e71
	adc a,0fch		;8e74
	ret nz			;8e76
l8e77h:
	ret nz			;8e77
	nop			;8e78
	ld a,h			;8e79
	adc a,0ceh		;8e7a
	adc a,0eeh		;8e7c
	sbc a,07eh		;8e7e
	nop			;8e80
	call m,0ceceh		;8e81
	adc a,0fch		;8e84
	call c,000ceh		;8e86
	ld a,h			;8e89
	adc a,0c0h		;8e8a
	ld a,h			;8e8c
	ld c,0ceh		;8e8d
	ld a,h			;8e8f
	nop			;8e90
	cp 038h		;8e91
	jr c,l8ecdh		;8e93
	jr c,l8ecfh		;8e95
	jr c,l8e99h		;8e97
l8e99h:
	adc a,0ceh		;8e99
	adc a,0ceh		;8e9b
	adc a,0ceh		;8e9d
	ld a,h			;8e9f
	nop			;8ea0
	adc a,0ceh		;8ea1
	adc a,07ch		;8ea3
	ld a,h			;8ea5
	jr c,l8ee0h		;8ea6
	nop			;8ea8
	or (hl)			;8ea9
	or (hl)			;8eaa
	or (hl)			;8eab
	or (hl)			;8eac
	call m,0dcdch		;8ead
	nop			;8eb0
	adc a,0ceh		;8eb1
	ld a,h			;8eb3
	jr c,l8f32h		;8eb4
	adc a,0ceh		;8eb6
	nop			;8eb8
	adc a,0ceh		;8eb9
	ld a,h			;8ebb
	ld a,h			;8ebc
	jr c,l8ef7h		;8ebd
	jr c,l8ec1h		;8ebf
l8ec1h:
	cp 00eh		;8ec1
	inc e			;8ec3
	jr c,l8f36h		;8ec4
	ret po			;8ec6
	cp 0c4h		;8ec7
	ret nz			;8ec9
	ret po			;8eca
	jr l8ed1h		;8ecb
l8ecdh:
	inc bc			;8ecd
	nop			;8ece
l8ecfh:
	nop			;8ecf
	ld a,b			;8ed0
l8ed1h:
	ld a,b			;8ed1
	ld a,b			;8ed2
	ld a,b			;8ed3
	ret m			;8ed4
	nop			;8ed5
	nop			;8ed6
	nop			;8ed7
	nop			;8ed8
	nop			;8ed9
	rst 38h			;8eda
	rst 38h			;8edb
	nop			;8edc
	nop			;8edd
	nop			;8ede
	ld a,b			;8edf
l8ee0h:
	ld e,01eh		;8ee0
	ld e,01eh		;8ee2
	rra			;8ee4
	nop			;8ee5
	nop			;8ee6
	nop			;8ee7
	inc hl			;8ee8
	inc bc			;8ee9
	rlca			;8eea
	jr l8f0dh		;8eeb
	ccf			;8eed
	nop			;8eee
	nop			;8eef
	ld de,0d800h		;8ef0
	rst 38h			;8ef3
	inc b			;8ef4
	nop			;8ef5
	inc b			;8ef6
l8ef7h:
	ld de,000ffh		;8ef7
	ret po			;8efa
	ret m			;8efb
	call m,0c411h		;8efc
	inc bc			;8eff
	rst 38h			;8f00
	inc b			;8f01
	ret m			;8f02
	ld bc,00107h		;8f03
	ld a,b			;8f06
	ld (bc),a			;8f07
	rst 38h			;8f08
	inc b			;8f09
	ld de,0e01fh		;8f0a
l8f0dh:
	ld e,01eh		;8f0d
	rst 38h			;8f0f
	nop			;8f10
	rlca			;8f11
	rra			;8f12
	ccf			;8f13
	inc hl			;8f14
	inc hl			;8f15
	call c,00111h		;8f16
	ex af,af'			;8f19
	add a,b			;8f1a
	ex af,af'			;8f1b
	ld de,0feffh		;8f1c
	ret p			;8f1f
	ret p			;8f20
	ret po			;8f21
	ret po			;8f22
	ret nz			;8f23
	add a,b			;8f24
	rst 38h			;8f25
	ld a,a			;8f26
	rrca			;8f27
	rrca			;8f28
	rlca			;8f29
	rlca			;8f2a
	inc bc			;8f2b
	ld bc,000ffh		;8f2c
	rst 38h			;8f2f
	rst 38h			;8f30
	rst 38h			;8f31
l8f32h:
	rst 38h			;8f32
	jr nz,$+34		;8f33
	rst 38h			;8f35
l8f36h:
	nop			;8f36
	rst 38h			;8f37
	rst 38h			;8f38
	rst 38h			;8f39
	rst 38h			;8f3a
	nop			;8f3b
	nop			;8f3c
	rst 38h			;8f3d
	nop			;8f3e
	rst 38h			;8f3f
	rst 38h			;8f40
	rst 38h			;8f41
	rst 38h			;8f42
	ei			;8f43
	inc b			;8f44
	cp a			;8f45
	defb 0fdh,0f3h,011h	;illegal sequence		;8f46
	nop			;8f49
	dec b			;8f4a
	ld de,lbf0fh		;8f4b
	defb 0edh;next byte illegal after ed		;8f4e
	add a,b			;8f4f
	pop af			;8f50
	pop af			;8f51
	cp a			;8f52
	defb 0ddh,0ddh,0e3h	;illegal sequence		;8f53
	cp a			;8f56
	rrca			;8f57
	ei			;8f58
	ret po			;8f59
	ld e,0f1h		;8f5a
	ei			;8f5c
	cp a			;8f5d
	rst 38h			;8f5e
	ei			;8f5f
	ld a,a			;8f60
	cp 0ffh		;8f61
	rst 30h			;8f63
	nop			;8f64
	ld bc,00303h		;8f65
	ld c,01fh		;8f68
	scf			;8f6a
	ld a,(hl)			;8f6b
	nop			;8f6c
	add a,b			;8f6d
	add a,b			;8f6e
	ret po			;8f6f
	ret p			;8f70
	ret c			;8f71
	call pe,011beh		;8f72
	nop			;8f75
	dec b			;8f76
	rst 38h			;8f77
	add hl,bc			;8f78
	nop			;8f79
	inc bc			;8f7a
	ld de,l4575h		;8f7b
	ld b,l			;8f7e
	ld (hl),a			;8f7f
	dec d			;8f80
	dec d			;8f81
	ld (hl),l			;8f82
	nop			;8f83
	ld e,l			;8f84
	ld d,c			;8f85
	ld d,c			;8f86
	ld e,l			;8f87
	ld d,c			;8f88
	ld d,c			;8f89
	ld e,l			;8f8a
	nop			;8f8b
	jr l8f9fh		;8f8c
	inc d			;8f8e
	dec b			;8f8f
	ld de,000d8h		;8f90
	ld (hl),l			;8f93
	dec h			;8f94
	dec h			;8f95
	daa			;8f96
	dec h			;8f97
	dec h			;8f98
	dec h			;8f99
	nop			;8f9a
	ld h,d			;8f9b
	ld d,l			;8f9c
	ld d,l			;8f9d
	ld h,l			;8f9e
l8f9fh:
	ld d,l			;8f9f
	ld d,l			;8fa0
	ld d,d			;8fa1
l8fa2h:
	nop			;8fa2
	ld de,00650h		;8fa3
	ld de,00024h		;8fa6
	ld d,l			;8fa9
	ld d,l			;8faa
	ld d,l			;8fab
	ld (hl),d			;8fac
	ld d,d			;8fad
	ld d,d			;8fae
	ld d,d			;8faf
	nop			;8fb0
	ld h,a			;8fb1
	ld d,h			;8fb2
	ld d,h			;8fb3
	ld h,a			;8fb4
	ld b,h			;8fb5
	ld b,h			;8fb6
	ld b,a			;8fb7
	nop			;8fb8
	ld h,b			;8fb9
	ld d,b			;8fba
	ld d,b			;8fbb
	ld h,b			;8fbc
	ld d,b			;8fbd
	ld d,b			;8fbe
	ld d,b			;8fbf
	nop			;8fc0
	ld de,00645h		;8fc1
	ld de,00072h		;8fc4
	dec h			;8fc7
	ld d,l			;8fc8
	ld b,l			;8fc9
	ld b,l			;8fca
	ld b,l			;8fcb
	ld d,l			;8fcc
	dec h			;8fcd
	nop			;8fce
sub_8fcfh:
	add a,b			;8fcf
	ld de,00540h		;8fd0
	ld de,00080h		;8fd3
	ld (hl),b			;8fd6
	ld b,c			;8fd7
	ld b,c			;8fd8
	ld (hl),c			;8fd9
	ld b,c			;8fda
	ld b,c			;8fdb
	ld (hl),h			;8fdc
	nop			;8fdd
	sbc a,l			;8fde
	ld c,c			;8fdf
	add hl,bc			;8fe0
	add hl,bc			;8fe1
	add hl,bc			;8fe2
	ld c,c			;8fe3
	adc a,c			;8fe4
	nop			;8fe5
	sub b			;8fe6
	ld d,b			;8fe7
	ld d,b			;8fe8
	sub b			;8fe9
	ld d,b			;8fea
	ld d,b			;8feb
	ld e,l			;8fec
	nop			;8fed
	dec h			;8fee
	ld d,l			;8fef
	ld b,l			;8ff0
	dec h			;8ff1
	dec d			;8ff2
	ld d,l			;8ff3
	dec h			;8ff4
	nop			;8ff5
	sbc a,h			;8ff6
	ld d,b			;8ff7
	ld d,b			;8ff8
	ld e,h			;8ff9
	ld d,b			;8ffa
	ld d,b			;8ffb
	sbc a,h			;8ffc
	nop			;8ffd
	ld bc,00303h		;8ffe
	rlca			;9001
	rlca			;9002
	ld c,00eh		;9003
	nop			;9005
	add a,b			;9006
	ret nz			;9007
	ret nz			;9008
	ret po			;9009
	ret po			;900a
	ld (hl),b			;900b
	ld (hl),b			;900c
	inc e			;900d
	inc e			;900e
	jr c,l9049h		;900f
	ld (hl),b			;9011
	ld (hl),b			;9012
	ret po			;9013
	rst 20h			;9014
	scf			;9015
	scf			;9016
	ld c,00eh		;9017
	inc e			;9019
	inc e			;901a
	nop			;901b
	rst 38h			;901c
	rlca			;901d
	rlca			;901e
	ld c,00eh		;901f
	dec e			;9021
	dec e			;9022
	dec sp			;9023
	cp e			;9024
	inc sp			;9025
	ld a,e			;9026
	ei			;9027
	ei			;9028
	ei			;9029
	ei			;902a
	cp e			;902b
	cp e			;902c
	ret p			;902d
	ret p			;902e
	cp b			;902f
	cp b			;9030
	sbc a,h			;9031
	sbc a,h			;9032
	adc a,(hl)			;9033
	adc a,(hl)			;9034
	ld a,(hl)			;9035
	ld a,(hl)			;9036
	ld (hl),a			;9037
	ld (hl),a			;9038
	ld (hl),e			;9039
	ld (hl),e			;903a
	ld (hl),c			;903b
	ld (hl),c			;903c
	call pe,070ech		;903d
	ld (hl),b			;9040
	cp b			;9041
	cp b			;9042
	call c,038dch		;9043
	jr c,l9064h		;9046
	inc e			;9048
l9049h:
	ld c,000h		;9049
	nop			;904b
	rlca			;904c
	nop			;904d
	call p,0c0c0h		;904e
	nop			;9051
	nop			;9052
	nop			;9053
	rst 38h			;9054
	nop			;9055
	nop			;9056
	rst 38h			;9057
sub_9058h:
	rst 38h			;9058
	nop			;9059
	pop hl			;905a
	and c			;905b
	ei			;905c
	nop			;905d
	nop			;905e
	ex af,af'			;905f
	ex af,af'			;9060
	rst 38h			;9061
	ex af,af'			;9062
	ex af,af'			;9063
l9064h:
	ex af,af'			;9064
	ex af,af'			;9065
	ex af,af'			;9066
	ex af,af'			;9067
	ex af,af'			;9068
	rst 38h			;9069
	ex af,af'			;906a
	nop			;906b
	nop			;906c
	nop			;906d
	nop			;906e
	ld (hl),h			;906f
	jp m,0fe7fh		;9070
	rst 38h			;9073
	rst 30h			;9074
	ei			;9075
	cp a			;9076
	rst 38h			;9077
	ei			;9078
l9079h:
	ld a,a			;9079
	jp m,00034h		;907a
	nop			;907d
	djnz l9079h		;907e
	ld de,00affh		;9080
	ld de,0183eh		;9083
	nop			;9086
	nop			;9087
	nop			;9088
	ld de,0057fh		;9089
	nop			;908c
	ld bc,0057fh		;908d
	nop			;9090
	inc b			;9091
	ld de,07d01h		;9092
	ld a,l			;9095
	ld a,l			;9096
	ld a,l			;9097
	ld a,a			;9098
	add a,c			;9099
	rst 38h			;909a
	ld b,c			;909b
	ld a,l			;909c
	ld a,l			;909d
	ld a,l			;909e
	ld a,l			;909f
	ld b,c			;90a0
	nop			;90a1
	nop			;90a2
	nop			;90a3
	inc b			;90a4
	jr l90bfh		;90a5
	inc h			;90a7
	ld b,d			;90a8
	add a,c			;90a9
	add a,c			;90aa
	ld b,d			;90ab
	inc h			;90ac
	jr l90c7h		;90ad
	inc h			;90af
	ld (bc),a			;90b0
	nop			;90b1
	ld de,00000h		;90b2
	nop			;90b5
	ld b,b			;90b6
	rst 38h			;90b7
	ex af,af'			;90b8
	ld de,02600h		;90b9
	ld d,l			;90bc
	ld d,l			;90bd
	ld d,(hl)			;90be
l90bfh:
	ld d,h			;90bf
	ld d,h			;90c0
	inc h			;90c1
	nop			;90c2
	daa			;90c3
	ld d,l			;90c4
	ld b,l			;90c5
	daa			;90c6
l90c7h:
	inc d			;90c7
	ld d,h			;90c8
	inc h			;90c9
	nop			;90ca
	ld (hl),a			;90cb
	ld b,h			;90cc
	ld b,h			;90cd
	ld (hl),a			;90ce
	ld b,h			;90cf
	ld b,h			;90d0
	ld (hl),a			;90d1
	nop			;90d2
	ld h,b			;90d3
	ld d,d			;90d4
	ld d,b			;90d5
	ld d,b			;90d6
	ld d,b			;90d7
	ld d,d			;90d8
	ld h,b			;90d9
	nop			;90da
	ld d,h			;90db
	ld de,00555h		;90dc
	ld de,00029h		;90df
	jp z,02a2ah		;90e2
	jp pe,02a2ah		;90e5
	inc h			;90e8
	nop			;90e9
	ret p			;90ea
	add a,d			;90eb
	add a,b			;90ec
	ret po			;90ed
	add a,b			;90ee
	add a,d			;90ef
	ret p			;90f0
	nop			;90f1
	daa			;90f2
	ld d,l			;90f3
	ld d,l			;90f4
	halt			;90f5
	ld d,l			;90f6
	ld d,l			;90f7
	ld d,l			;90f8
	nop			;90f9
	ld (hl),d			;90fa
	ld b,l			;90fb
	ld b,l			;90fc
	ld (hl),a			;90fd
	ld b,l			;90fe
	ld b,l			;90ff
	ld (hl),l			;9100
l9101h:
	nop			;9101
	ld b,d			;9102
	ld b,l			;9103
	ld b,l			;9104
	ld b,a			;9105
	ld b,l			;9106
	ld b,l			;9107
	ld (hl),l			;9108
	nop			;9109
	ld (hl),a			;910a
	ld b,d			;910b
	ld b,d			;910c
	ld (hl),d			;910d
	ld (de),a			;910e
	ld (de),a			;910f
	ld (hl),d			;9110
	nop			;9111
	nop			;9112
	rst 38h			;9113
	nop			;9114
	rst 38h			;9115
	rst 38h			;9116
	nop			;9117
	rst 38h			;9118
	rst 38h			;9119
	adc a,e			;911a
	jp c,0dadah		;911b
	jp c,0dbdah		;911e
	rst 38h			;9121
	ld l,l			;9122
	and l			;9123
	xor c			;9124
	xor l			;9125
	xor l			;9126
	xor l			;9127
	ld l,l			;9128
	nop			;9129
	ld a,(hl)			;912a
	inc a			;912b
	jr l9146h		;912c
	inc a			;912e
	ld a,(hl)			;912f
	nop			;9130
	ld de,l4011h		;9131
	ld b,b			;9134
	ld b,b			;9135
	ld b,b			;9136
	ld b,b			;9137
	ld b,b			;9138
	ld b,b			;9139
	ld b,b			;913a
	ld (hl),b			;913b
	ld (hl),b			;913c
	ld (hl),b			;913d
	ld (hl),b			;913e
	ld (hl),b			;913f
	ld (hl),b			;9140
	ld (hl),b			;9141
	ld (hl),b			;9142
	inc b			;9143
	inc b			;9144
	ld d,b			;9145
l9146h:
	ld bc,0700fh		;9146
	ld d,b			;9149
	ld d,b			;914a
	ld d,h			;914b
	rra			;914c
	ld d,c			;914d
	ld d,c			;914e
	ld d,c			;914f
	ld d,h			;9150
	ld d,h			;9151
	ld d,h			;9152
	ld d,h			;9153
	ld d,h			;9154
	ld d,h			;9155
	ld d,h			;9156
	ld d,h			;9157
	ld d,h			;9158
	ld d,h			;9159
	ld d,h			;915a
	sub c			;915b
	sub c			;915c
	sub c			;915d
	add a,c			;915e
	pop af			;915f
	ld bc,l8181h		;9160
	sub c			;9163
	sub c			;9164
	sub c			;9165
	add a,c			;9166
	add a,c			;9167
	ld h,c			;9168
l9169h:
	add a,c			;9169
	add a,c			;916a
	ld d,h			;916b
	rra			;916c
	ld d,c			;916d
	ld d,c			;916e
	ld d,c			;916f
	ld d,h			;9170
	ld d,h			;9171
	ld b,l			;9172
	ld d,h			;9173
	ld d,h			;9174
	ld d,h			;9175
	ld d,h			;9176
	ld d,h			;9177
	ld d,h			;9178
	ld d,h			;9179
	ld b,l			;917a
	sub c			;917b
	sub c			;917c
	sub c			;917d
	add a,c			;917e
	pop af			;917f
	ld bc,l8181h		;9180
	sub c			;9183
	sub c			;9184
	sub c			;9185
	add a,c			;9186
	add a,c			;9187
	ld h,c			;9188
	add a,c			;9189
	add a,c			;918a
	inc d			;918b
	ld d,h			;918c
	ld b,l			;918d
	ld d,h			;918e
	rra			;918f
	rra			;9190
	inc d			;9191
	ld bc,00404h		;9192
	call p,04ff1h		;9195
	pop af			;9198
	pop af			;9199
	pop af			;919a
	ld b,b			;919b
	ld de,00550h		;919c
	ld de,040e0h		;919f
	ld (hl),c			;91a2
	ld b,e			;91a3
	ld bc,05071h		;91a4
	ld d,b			;91a7
	ld b,b			;91a8
	ld (hl),c			;91a9
	call p,sub_5011h		;91aa
	dec b			;91ad
	ld de,0f4e0h		;91ae
	ld bc,0f101h		;91b1
	pop af			;91b4
	pop af			;91b5
	push af			;91b6
	ld e,a			;91b7
	ld b,c			;91b8
	pop af			;91b9
	pop af			;91ba
	pop af			;91bb
	pop af			;91bc
	ld c,a			;91bd
	push af			;91be
	ld d,h			;91bf
	inc b			;91c0
	ld de,030b0h		;91c1
	ld de,01140h		;91c4
	ld d,b			;91c7
	dec b			;91c8
	ld de,040e0h		;91c9
	ld b,b			;91cc
	ld de,00550h		;91cd
	ld de,040e0h		;91d0
	ld b,b			;91d3
	ld de,00550h		;91d4
	ld de,040e0h		;91d7
	ld b,b			;91da
	ld de,00550h		;91db
	ld de,040e0h		;91de
	ld de,00300h		;91e1
	ld d,b			;91e4
	dec b			;91e5
	ld de,01f51h		;91e6
	ld de,00351h		;91e9
	ld d,h			;91ec
	inc bc			;91ed
	nop			;91ee
	inc bc			;91ef
	ld d,b			;91f0
	dec b			;91f1
	ld de,01f51h		;91f2
	ld d,c			;91f5
	ld d,c			;91f6
	ld d,c			;91f7
	ld d,h			;91f8
	ld d,h			;91f9
	ld b,l			;91fa
	ld de,00801h		;91fb
	ld de,0f090h		;91fe
	sub b			;9201
	add a,b			;9202
	ld h,b			;9203
	ld h,b			;9204
	add a,b			;9205
	sub b			;9206
	sub b			;9207
	ret p			;9208
	sub b			;9209
	add a,b			;920a
	ld h,b			;920b
	ld h,b			;920c
	add a,b			;920d
	sub b			;920e
	ld de,l48f4h		;920f
	ld de,01110h		;9212
	and b			;9215
	inc b			;9216
	jr nc,l921ch		;9217
	ld de,lb7b1h		;9219
l921ch:
	or l			;921c
	or l			;921d
	or h			;921e
	inc d			;921f
	inc d			;9220
	dec d			;9221
	ld bc,la5a7h		;9222
	and l			;9225
	and h			;9226
	inc (hl)			;9227
	inc (hl)			;9228
	dec (hl)			;9229
	ld (hl),c			;922a
	ld (hl),c			;922b
	ld d,b			;922c
	ld (hl),c			;922d
	ld b,b			;922e
	ld d,b			;922f
	ld d,c			;9230
	ld d,b			;9231
	ld de,l50f0h		;9232
	ld de,01110h		;9235
	sub b			;9238
	rlca			;9239
	ld b,b			;923a
	ld bc,00745h		;923b
	ld b,b			;923e
	ld bc,00550h		;923f
	ld de,040e0h		;9242
	ld b,b			;9245
	ld de,00550h		;9246
	ret po			;9249
	ld bc,00840h		;924a
	ld de,0f000h		;924d
	ld de,00640h		;9250
	nop			;9253
	ld bc,0d8b0h		;9254
	ld de,01f54h		;9257
	ld d,c			;925a
	ld d,c			;925b
	ld d,c			;925c
	ld b,c			;925d
	ld bc,l9101h		;925e
	sub c			;9261
	sub c			;9262
	add a,c			;9263
	pop af			;9264
	ld bc,00101h		;9265
	inc b			;9268
	inc b			;9269
	ld d,b			;926a
	ld d,b			;926b
	rrca			;926c
	inc b			;926d
	ld bc,l9169h		;926e
	sub c			;9271
	sub c			;9272
	add a,c			;9273
	pop af			;9274
	ld bc,00101h		;9275
	ld d,h			;9278
	rra			;9279
	ld d,c			;927a
	ld d,c			;927b
	ld d,c			;927c
	inc d			;927d
	ld bc,01101h		;927e
	sub c			;9281
	ret c			;9282
	ld de,0f040h		;9283
	ld d,b			;9286
	ld d,b			;9287
	inc b			;9288
	inc b			;9289
	inc b			;928a
	inc b			;928b
	ld b,b			;928c
	rra			;928d
	ld d,c			;928e
	ld d,c			;928f
	ld d,c			;9290
	ld d,h			;9291
	ld d,h			;9292
	ld d,h			;9293
	ld b,b			;9294
	ld b,b			;9295
	ld b,b			;9296
	ld d,b			;9297
	push af			;9298
	ld b,c			;9299
	add a,c			;929a
	add a,c			;929b
	ld b,b			;929c
	ld b,b			;929d
	ld b,b			;929e
	ld d,b			;929f
	push af			;92a0
	ld b,c			;92a1
	add a,c			;92a2
	add a,c			;92a3
	ld b,b			;92a4
	rra			;92a5
	ld d,c			;92a6
	ld d,c			;92a7
	ld d,c			;92a8
	ld d,h			;92a9
	ld d,h			;92aa
	ld b,l			;92ab
	ld de,008f4h		;92ac
	inc d			;92af
	jr l92c3h		;92b0
	ld b,b			;92b2
	ld bc,l70f0h		;92b3
	ld d,b			;92b6
	ld d,b			;92b7
	ld b,c			;92b8
	ld b,c			;92b9
	ld b,b			;92ba
	ld bc,l70f0h		;92bb
	ld d,b			;92be
	ld d,b			;92bf
	ld bc,l4001h		;92c0
l92c3h:
	ld bc,l70f0h		;92c3
	ld d,b			;92c6
	ld d,b			;92c7
	inc d			;92c8
	ld b,c			;92c9
	ld h,c			;92ca
	add a,c			;92cb
	sub c			;92cc
	ld bc,0040fh		;92cd
	inc b			;92d0
	inc b			;92d1
	ld b,l			;92d2
	ld e,a			;92d3
	ld c,a			;92d4
	push af			;92d5
	push af			;92d6
	ld l,a			;92d7
	add a,c			;92d8
	sub c			;92d9
	ld b,l			;92da
	ld b,l			;92db
	ld e,a			;92dc
	ld b,l			;92dd
	ld c,a			;92de
	ld b,l			;92df
	ld b,l			;92e0
	ld b,l			;92e1
	sub c			;92e2
	add a,c			;92e3
	sub b			;92e4
	add a,c			;92e5
	ld h,c			;92e6
	ld h,c			;92e7
	add a,b			;92e8
	ld h,c			;92e9
	sub c			;92ea
	ld h,c			;92eb
	sub c			;92ec
	ld h,c			;92ed
	sub c			;92ee
	ld h,c			;92ef
	ld h,c			;92f0
	add a,c			;92f1
	sub c			;92f2
	ld h,c			;92f3
	add a,c			;92f4
	sub c			;92f5
	ld h,c			;92f6
	add a,c			;92f7
	ld h,c			;92f8
	sub c			;92f9
	ld bc,00401h		;92fa
	ld bc,0700fh		;92fd
	ld d,b			;9300
	ld d,b			;9301
l9302h:
	ld (hl),b			;9302
	ld (hl),b			;9303
	ld d,b			;9304
	ld (hl),b			;9305
	ld d,b			;9306
	ld d,b			;9307
	inc b			;9308
	inc b			;9309
	ld de,l8890h		;930a
	ld de,01100h		;930d
	ret po			;9310
	rlca			;9311
	nop			;9312
	ld bc,007e0h		;9313
l9316h:
	ld de,040f0h		;9316
	ld de,00570h		;9319
	ld de,0f0f0h		;931c
	ld b,b			;931f
	ld (hl),b			;9320
	ld (hl),b			;9321
	ld (hl),b			;9322
	ld (hl),b			;9323
	djnz l9316h		;9324
	ret p			;9326
	ld b,b			;9327
	ld de,00570h		;9328
	ld de,0f0f0h		;932b
	ld b,b			;932e
	ld de,00570h		;932f
	ld de,0f0f0h		;9332
	ld b,b			;9335
	ld de,00570h		;9336
	ld de,0f0f0h		;9339
	ld b,b			;933c
	ld de,00570h		;933d
	ld de,0f0f0h		;9340
	ld b,b			;9343
	ld de,00570h		;9344
	ld de,0f0f0h		;9347
l934ah:
	ld b,b			;934a
	ld (hl),b			;934b
	ld (hl),b			;934c
	ld (hl),b			;934d
	ld (hl),b			;934e
	ret p			;934f
	ret p			;9350
	ld bc,01515h		;9351
	ld d,h			;9354
	inc d			;9355
	inc d			;9356
	inc d			;9357
	ld d,b			;9358
	ld bc,05017h		;9359
	ld d,b			;935c
	inc d			;935d
	ld d,h			;935e
	dec d			;935f
	dec d			;9360
	ld de,004f1h		;9361
	ret p			;9364
	ld bc,007f1h		;9365
	ld de,0f1f0h		;9368
	ld bc,00101h		;936b
	ld bc,l8191h		;936e
	ld h,c			;9371
	ld h,c			;9372
	add a,b			;9373
	ld h,c			;9374
	sub c			;9375
	add a,c			;9376
	sub b			;9377
	add a,c			;9378
	ld h,c			;9379
	ld h,c			;937a
	add a,b			;937b
	ld h,c			;937c
	ld bc,02131h		;937d
	jr nc,$-62		;9380
	jr nz,$+34		;9382
	ret nz			;9384
	ret nz			;9385
	jr nc,l93a8h		;9386
	jr nc,l934ah		;9388
	ld hl,0c121h		;938a
	ld bc,la101h		;938d
	and c			;9390
	or c			;9391
	and c			;9392
	or c			;9393
	ld bc,la1f1h		;9394
	and c			;9397
	and c			;9398
	or c			;9399
	ld bc,00101h		;939a
	ld bc,0d111h		;939d
	rlca			;93a0
	ret p			;93a1
	ld bc,007d1h		;93a2
	ld b,c			;93a5
	djnz l93a8h		;93a6
l93a8h:
	nop			;93a8
	nop			;93a9
	ld b,b			;93aa
	ld b,b			;93ab
	ex af,af'			;93ac
	call p,01158h		;93ad
	rlca			;93b0
	inc b			;93b1
	nop			;93b2
	rlca			;93b3
	ld d,b			;93b4
	ld d,b			;93b5
	inc b			;93b6
	nop			;93b7
	ld de,0104fh		;93b8
	ld de,0f90fh		;93bb
	ld sp,hl			;93be
	ld sp,hl			;93bf
	ld l,c			;93c0
	ld l,c			;93c1
	ld l,c			;93c2
	ld b,011h		;93c3
	nop			;93c5
	add a,b			;93c6
	ld de,00011h		;93c7
	nop			;93ca
	nop			;93cb
	djnz l93deh		;93cc
	jr l93e8h		;93ce
	ld hl,00121h		;93d0
	nop			;93d3
	nop			;93d4
	nop			;93d5
	nop			;93d6
	nop			;93d7
	nop			;93d8
	add a,b			;93d9
	add a,b			;93da
	adc a,b			;93db
	ld c,h			;93dc
	ld l,h			;93dd
l93deh:
	ld l,h			;93de
	ld l,h			;93df
	add a,006h		;93e0
	nop			;93e2
	ld b,b			;93e3
	nop			;93e4
	nop			;93e5
	nop			;93e6
	nop			;93e7
l93e8h:
	nop			;93e8
	nop			;93e9
	nop			;93ea
	nop			;93eb
	nop			;93ec
	ld bc,00001h		;93ed
	nop			;93f0
	inc e			;93f1
	ld a,h			;93f2
	ld a,h			;93f3
	ld a,h			;93f4
	inc a			;93f5
	inc e			;93f6
	inc c			;93f7
	nop			;93f8
	nop			;93f9
	nop			;93fa
	nop			;93fb
	add a,b			;93fc
	add a,b			;93fd
	add a,b			;93fe
	add a,b			;93ff
	nop			;9400
	jr $+32		;9401
	rra			;9403
	rra			;9404
	ld e,01ch		;9405
	jr l9409h		;9407
l9409h:
	ld bc,01101h		;9409
	inc hl			;940c
	ld h,026h		;940d
	daa			;940f
	ld e,(hl)			;9410
	ld b,d			;9411
	ld (bc),a			;9412
	add a,e			;9413
	add a,b			;9414
	ld b,b			;9415
	jr nz,l9428h		;9416
	inc c			;9418
	nop			;9419
	nop			;941a
	nop			;941b
	nop			;941c
	nop			;941d
	djnz l9430h		;941e
	jr c,$-30		;9420
	ret po			;9422
	and b			;9423
	jr nz,$+34		;9424
	jr nz,l9448h		;9426
l9428h:
	jr nc,$+9		;9428
	jr $+34		;942a
	ld b,a			;942c
	jr $+34		;942d
	ld b,a			;942f
l9430h:
	jr l9452h		;9430
	ld b,a			;9432
	jr l9455h		;9433
	ld b,a			;9435
	jr $+34		;9436
	ld b,b			;9438
	ret po			;9439
	jr $+6		;943a
	jp po,00418h		;943c
	jp po,00418h		;943f
	jp po,00418h		;9442
	jp po,00418h		;9445
l9448h:
	ld (bc),a			;9448
	nop			;9449
	ld bc,0300eh		;944a
	nop			;944d
	ld bc,0300eh		;944e
	nop			;9451
l9452h:
	ld bc,0300eh		;9452
l9455h:
	nop			;9455
	ld bc,0300eh		;9456
	rrca			;9459
	ret p			;945a
	nop			;945b
	nop			;945c
	rrca			;945d
	ret p			;945e
	nop			;945f
	nop			;9460
	rrca			;9461
	ret p			;9462
	nop			;9463
	nop			;9464
	rrca			;9465
	ret p			;9466
	nop			;9467
	nop			;9468
	ret p			;9469
	rrca			;946a
	nop			;946b
	nop			;946c
	ret p			;946d
	rrca			;946e
	nop			;946f
	nop			;9470
	ret p			;9471
	rrca			;9472
	nop			;9473
	nop			;9474
	ret p			;9475
	rrca			;9476
	nop			;9477
	nop			;9478
	nop			;9479
	add a,b			;947a
	ld (hl),b			;947b
	inc c			;947c
	nop			;947d
	add a,b			;947e
	ld (hl),b			;947f
	inc c			;9480
	nop			;9481
	add a,b			;9482
	ld (hl),b			;9483
	inc c			;9484
	nop			;9485
	add a,b			;9486
	ld (hl),b			;9487
	inc c			;9488
	ld bc,00002h		;9489
	ld bc,00002h		;948c
	ld bc,00002h		;948f
	ld bc,00002h		;9492
	ld bc,00002h		;9495
	nop			;9498
	add a,b			;9499
	ld b,b			;949a
	nop			;949b
	add a,b			;949c
	ld b,b			;949d
	nop			;949e
	add a,b			;949f
	ld b,b			;94a0
	nop			;94a1
	add a,b			;94a2
	ld b,b			;94a3
	nop			;94a4
	add a,b			;94a5
	ld b,b			;94a6
	nop			;94a7
	nop			;94a8
	nop			;94a9
	nop			;94aa
	nop			;94ab
	nop			;94ac
	nop			;94ad
	nop			;94ae
	inc bc			;94af
	rlca			;94b0
	rlca			;94b1
	inc bc			;94b2
	nop			;94b3
	nop			;94b4
	nop			;94b5
	nop			;94b6
	nop			;94b7
	nop			;94b8
	nop			;94b9
	nop			;94ba
	nop			;94bb
	nop			;94bc
	nop			;94bd
	nop			;94be
	nop			;94bf
	add a,b			;94c0
	add a,b			;94c1
	nop			;94c2
	nop			;94c3
	nop			;94c4
	nop			;94c5
	nop			;94c6
	nop			;94c7
	nop			;94c8
	nop			;94c9
	nop			;94ca
	nop			;94cb
	nop			;94cc
	nop			;94cd
	nop			;94ce
	rlca			;94cf
	nop			;94d0
	ld bc,00000h		;94d1
	nop			;94d4
	nop			;94d5
	nop			;94d6
	nop			;94d7
	nop			;94d8
	nop			;94d9
	nop			;94da
	nop			;94db
	nop			;94dc
	nop			;94dd
	nop			;94de
	add a,b			;94df
	ld a,b			;94e0
	ret nz			;94e1
	nop			;94e2
	nop			;94e3
	nop			;94e4
	nop			;94e5
	nop			;94e6
	nop			;94e7
	nop			;94e8
	nop			;94e9
	nop			;94ea
	ccf			;94eb
	ld h,b			;94ec
	nop			;94ed
	nop			;94ee
	nop			;94ef
	nop			;94f0
	nop			;94f1
	nop			;94f2
	nop			;94f3
	nop			;94f4
	ld h,b			;94f5
	ccf			;94f6
	nop			;94f7
	nop			;94f8
	nop			;94f9
	nop			;94fa
	cp 000h		;94fb
	nop			;94fd
	nop			;94fe
	nop			;94ff
	nop			;9500
	nop			;9501
	nop			;9502
	nop			;9503
	nop			;9504
	nop			;9505
	cp 000h		;9506
	nop			;9508
	nop			;9509
	nop			;950a
	nop			;950b
	nop			;950c
	nop			;950d
	nop			;950e
	ld bc,00303h		;950f
	ld bc,00000h		;9512
	nop			;9515
	nop			;9516
	nop			;9517
	nop			;9518
	nop			;9519
	nop			;951a
	nop			;951b
	nop			;951c
	nop			;951d
	nop			;951e
	add a,b			;951f
	ret nz			;9520
	ret nz			;9521
	add a,b			;9522
	nop			;9523
	nop			;9524
	nop			;9525
	nop			;9526
	nop			;9527
	nop			;9528
	nop			;9529
	nop			;952a
	nop			;952b
	nop			;952c
	nop			;952d
	ld bc,00703h		;952e
	rlca			;9531
	inc bc			;9532
	ld bc,00000h		;9533
	nop			;9536
	nop			;9537
	nop			;9538
	nop			;9539
	nop			;953a
	nop			;953b
	nop			;953c
	nop			;953d
	add a,b			;953e
	ret nz			;953f
	ret po			;9540
	ret po			;9541
	ret nz			;9542
	add a,b			;9543
	nop			;9544
	nop			;9545
	nop			;9546
	nop			;9547
	nop			;9548
	nop			;9549
	inc bc			;954a
	rrca			;954b
	rra			;954c
	ccf			;954d
	ccf			;954e
	ld a,a			;954f
	ld a,a			;9550
	ld a,a			;9551
	ld a,a			;9552
	ccf			;9553
	ccf			;9554
	rra			;9555
	rrca			;9556
	inc bc			;9557
	nop			;9558
	nop			;9559
	ret nz			;955a
	ret p			;955b
	ret m			;955c
	call m,0fefch		;955d
	cp 0feh		;9560
	cp 0fch		;9562
	call m,0f0f8h		;9564
	ret nz			;9567
	nop			;9568
	nop			;9569
	nop			;956a
	nop			;956b
	ld bc,00f07h		;956c
	rrca			;956f
	rra			;9570
	rra			;9571
	rrca			;9572
	rrca			;9573
	rlca			;9574
	ld bc,00000h		;9575
	nop			;9578
	nop			;9579
	nop			;957a
	nop			;957b
	add a,b			;957c
	ret po			;957d
	ret p			;957e
	ret p			;957f
	ret m			;9580
	ret m			;9581
	ret p			;9582
	ret p			;9583
	ret po			;9584
	add a,b			;9585
	nop			;9586
	nop			;9587
	nop			;9588
	nop			;9589
	nop			;958a
	nop			;958b
	nop			;958c
	inc bc			;958d
	rlca			;958e
	rrca			;958f
	rrca			;9590
	rrca			;9591
	rrca			;9592
	rlca			;9593
	inc bc			;9594
	nop			;9595
	nop			;9596
	nop			;9597
	nop			;9598
	nop			;9599
	nop			;959a
	nop			;959b
	nop			;959c
	ret nz			;959d
	ret po			;959e
	ret p			;959f
	ret p			;95a0
	ret p			;95a1
	ret p			;95a2
	ret po			;95a3
	ret nz			;95a4
	nop			;95a5
	nop			;95a6
	nop			;95a7
	nop			;95a8
	nop			;95a9
	nop			;95aa
	nop			;95ab
	nop			;95ac
	nop			;95ad
	ld bc,00703h		;95ae
	rlca			;95b1
	inc bc			;95b2
	ld bc,00000h		;95b3
	nop			;95b6
	nop			;95b7
	nop			;95b8
	nop			;95b9
	nop			;95ba
	nop			;95bb
	nop			;95bc
	nop			;95bd
	add a,b			;95be
	ret nz			;95bf
	ret po			;95c0
	ret po			;95c1
	ret nz			;95c2
	add a,b			;95c3
	nop			;95c4
	nop			;95c5
	nop			;95c6
	nop			;95c7
	nop			;95c8
	nop			;95c9
	nop			;95ca
	ld bc,00402h		;95cb
	ex af,af'			;95ce
	djnz l95f1h		;95cf
	jr nz,$+66		;95d1
	ld b,b			;95d3
	ld b,b			;95d4
	add a,b			;95d5
	add a,b			;95d6
	add a,b			;95d7
	add a,b			;95d8
	rrca			;95d9
	ld (hl),b			;95da
	add a,b			;95db
	nop			;95dc
	nop			;95dd
	nop			;95de
	nop			;95df
	nop			;95e0
	nop			;95e1
	nop			;95e2
	nop			;95e3
	nop			;95e4
	nop			;95e5
	nop			;95e6
	nop			;95e7
	nop			;95e8
	ret p			;95e9
	ld c,001h		;95ea
	nop			;95ec
	nop			;95ed
	nop			;95ee
	nop			;95ef
	nop			;95f0
l95f1h:
	nop			;95f1
	nop			;95f2
	nop			;95f3
	nop			;95f4
	nop			;95f5
	nop			;95f6
	nop			;95f7
	nop			;95f8
	nop			;95f9
	nop			;95fa
	add a,b			;95fb
	ld b,b			;95fc
	jr nz,l960fh		;95fd
	ex af,af'			;95ff
	inc b			;9600
	inc b			;9601
	ld (bc),a			;9602
	ld (bc),a			;9603
	ld (bc),a			;9604
	ld bc,00101h		;9605
	ld bc,l8080h		;9608
	add a,b			;960b
	add a,b			;960c
	ld b,b			;960d
	ld b,b			;960e
l960fh:
	ld b,b			;960f
	jr nz,l9632h		;9610
	djnz l961ch		;9612
	inc b			;9614
	ld (bc),a			;9615
	ld bc,00000h		;9616
	nop			;9619
	nop			;961a
	nop			;961b
l961ch:
	nop			;961c
	nop			;961d
l961eh:
	nop			;961e
	nop			;961f
	nop			;9620
	nop			;9621
	nop			;9622
	nop			;9623
	nop			;9624
	nop			;9625
	add a,b			;9626
	ld (hl),b			;9627
	rrca			;9628
	nop			;9629
	nop			;962a
	nop			;962b
	nop			;962c
	nop			;962d
	nop			;962e
	nop			;962f
	nop			;9630
	nop			;9631
l9632h:
	nop			;9632
	nop			;9633
	nop			;9634
	nop			;9635
	ld bc,0f00eh		;9636
	ld bc,00101h		;9639
	ld bc,00202h		;963c
	ld (bc),a			;963f
	inc b			;9640
	inc b			;9641
	ex af,af'			;9642
	djnz l9665h		;9643
	ld b,b			;9645
	add a,b			;9646
	nop			;9647
	nop			;9648
	nop			;9649
	nop			;964a
	nop			;964b
	nop			;964c
	nop			;964d
	ld bc,00402h		;964e
	ex af,af'			;9651
	ex af,af'			;9652
	djnz l9665h		;9653
	jr nz,l9677h		;9655
	jr nz,l9679h		;9657
	nop			;9659
	nop			;965a
	rrca			;965b
	jr nc,l961eh		;965c
	nop			;965e
	nop			;965f
	nop			;9660
	nop			;9661
	nop			;9662
	nop			;9663
	nop			;9664
l9665h:
	nop			;9665
	nop			;9666
	nop			;9667
	nop			;9668
	nop			;9669
	nop			;966a
	ret p			;966b
	inc c			;966c
	inc bc			;966d
	nop			;966e
	nop			;966f
	nop			;9670
	nop			;9671
	nop			;9672
	nop			;9673
	nop			;9674
	nop			;9675
	nop			;9676
l9677h:
	nop			;9677
	nop			;9678
l9679h:
	nop			;9679
	nop			;967a
	nop			;967b
	nop			;967c
	nop			;967d
	add a,b			;967e
	ld b,b			;967f
	jr nz,l9692h		;9680
	djnz $+10		;9682
	ex af,af'			;9684
	inc b			;9685
	inc b			;9686
	inc b			;9687
	inc b			;9688
	jr nz,l96abh		;9689
	jr nz,l96adh		;968b
	djnz l969fh		;968d
	ex af,af'			;968f
	ex af,af'			;9690
	inc b			;9691
l9692h:
	ld (bc),a			;9692
	ld bc,00000h		;9693
	nop			;9696
	nop			;9697
	nop			;9698
	nop			;9699
	nop			;969a
	nop			;969b
	nop			;969c
	nop			;969d
	nop			;969e
l969fh:
	nop			;969f
	nop			;96a0
	nop			;96a1
	nop			;96a2
	nop			;96a3
	ret nz			;96a4
	jr nc,l96b6h		;96a5
	nop			;96a7
	nop			;96a8
	nop			;96a9
	nop			;96aa
l96abh:
	nop			;96ab
	nop			;96ac
l96adh:
	nop			;96ad
	nop			;96ae
	nop			;96af
	nop			;96b0
	nop			;96b1
	nop			;96b2
	nop			;96b3
	inc bc			;96b4
	inc c			;96b5
l96b6h:
	ret p			;96b6
	nop			;96b7
	nop			;96b8
	inc b			;96b9
	inc b			;96ba
	inc b			;96bb
	inc b			;96bc
	ex af,af'			;96bd
	ex af,af'			;96be
	djnz l96d1h		;96bf
	jr nz,l9703h		;96c1
	add a,b			;96c3
	nop			;96c4
	nop			;96c5
	nop			;96c6
	nop			;96c7
	nop			;96c8
	nop			;96c9
	jr nz,l973ch		;96ca
	ld (hl),b			;96cc
	ld (hl),b			;96cd
	ld (hl),b			;96ce
	ld (hl),b			;96cf
	ld (hl),b			;96d0
l96d1h:
	ld (hl),b			;96d1
	ld (hl),b			;96d2
	ld (hl),b			;96d3
	ld (hl),b			;96d4
	ld (hl),b			;96d5
	ld (hl),b			;96d6
	jr nz,l96d9h		;96d7
l96d9h:
	nop			;96d9
	inc b			;96da
	ld c,00eh		;96db
	ld c,00eh		;96dd
	ld c,00eh		;96df
	ld c,00eh		;96e1
	ld c,00eh		;96e3
	ld c,00eh		;96e5
	inc b			;96e7
	nop			;96e8
	inc bc			;96e9
	inc bc			;96ea
	inc bc			;96eb
	inc bc			;96ec
	inc bc			;96ed
	inc bc			;96ee
	inc bc			;96ef
	inc bc			;96f0
	inc bc			;96f1
	inc bc			;96f2
	inc bc			;96f3
	inc bc			;96f4
	inc bc			;96f5
	inc bc			;96f6
	inc bc			;96f7
	inc bc			;96f8
	add a,b			;96f9
	add a,b			;96fa
	add a,b			;96fb
	add a,b			;96fc
	add a,b			;96fd
	add a,b			;96fe
	add a,b			;96ff
	add a,b			;9700
	add a,b			;9701
	add a,b			;9702
l9703h:
	add a,b			;9703
	add a,b			;9704
	add a,b			;9705
	add a,b			;9706
	add a,b			;9707
	add a,b			;9708
	inc b			;9709
	inc b			;970a
	ld b,007h		;970b
	inc bc			;970d
	dec de			;970e
	ld a,(0323ah)		;970f
	ld (hl),d			;9712
	ld (hl),d			;9713
	ld (hl),b			;9714
	jr nz,l9737h		;9715
	djnz l9719h		;9717
l9719h:
	jr nz,l973bh		;9719
	ld h,b			;971b
	ld h,b			;971c
	ld b,b			;971d
	ld a,h			;971e
	ld a,(hl)			;971f
	ld a,(hl)			;9720
	ld c,(hl)			;9721
	ld b,a			;9722
	ld b,a			;9723
	rlca			;9724
	ld (bc),a			;9725
	ld (bc),a			;9726
	inc b			;9727
	nop			;9728
	nop			;9729
	nop			;972a
	nop			;972b
	nop			;972c
	nop			;972d
	dec h			;972e
	ld b,l			;972f
	ld b,l			;9730
	ld c,l			;9731
	add a,b			;9732
	add a,b			;9733
	add a,b			;9734
	ld b,b			;9735
	ld b,b			;9736
l9737h:
	jr nz,$+26		;9737
	nop			;9739
	nop			;973a
l973bh:
	nop			;973b
l973ch:
	add a,b			;973c
	add a,b			;973d
	add a,b			;973e
	add a,b			;973f
	add a,b			;9740
	or b			;9741
	ex af,af'			;9742
	ex af,af'			;9743
	ex af,af'			;9744
	inc b			;9745
	inc b			;9746
	ex af,af'			;9747
	jr l974ah		;9748
l974ah:
	inc b			;974a
	inc b			;974b
	ld b,00fh		;974c
	dec de			;974e
	dec sp			;974f
	ld a,(0727ah)		;9750
	ld h,d			;9753
	ld h,d			;9754
	ld b,b			;9755
	nop			;9756
	nop			;9757
	nop			;9758
	nop			;9759
	jr nz,l977ch		;975a
	ld h,b			;975c
	ld a,b			;975d
	ld a,h			;975e
	ld a,(hl)			;975f
	ld e,(hl)			;9760
	ld c,a			;9761
	ld b,a			;9762
	ld b,e			;9763
	ld b,e			;9764
	ld bc,00000h		;9765
	nop			;9768
	nop			;9769
	nop			;976a
	nop			;976b
	nop			;976c
	djnz l9793h		;976d
	ld b,h			;976f
	ld b,l			;9770
	add a,c			;9771
	add a,c			;9772
	add a,b			;9773
	add a,b			;9774
	add a,b			;9775
	ld b,b			;9776
	ld h,b			;9777
	nop			;9778
	nop			;9779
	nop			;977a
	nop			;977b
l977ch:
	nop			;977c
	add a,b			;977d
	add a,b			;977e
	add a,b			;977f
	and b			;9780
	sub b			;9781
	adc a,b			;9782
	inc b			;9783
	inc b			;9784
	ld (bc),a			;9785
	ld (bc),a			;9786
	ld b,000h		;9787
	nop			;9789
	inc b			;978a
	inc b			;978b
	ld b,00fh		;978c
	dec sp			;978e
	dec sp			;978f
	ld (hl),d			;9790
	ld b,d			;9791
	ld (bc),a			;9792
l9793h:
	ld (bc),a			;9793
	ld (bc),a			;9794
	nop			;9795
	nop			;9796
	nop			;9797
	nop			;9798
	nop			;9799
	jr nz,l97bch		;979a
	ld h,b			;979c
	ld (hl),b			;979d
	ld a,h			;979e
	ld a,(hl)			;979f
	ld c,a			;97a0
	ld b,e			;97a1
	ld b,c			;97a2
	ld b,b			;97a3
	ld b,b			;97a4
	nop			;97a5
	nop			;97a6
	nop			;97a7
	nop			;97a8
	nop			;97a9
	nop			;97aa
	nop			;97ab
	nop			;97ac
	nop			;97ad
	inc b			;97ae
	ld b,h			;97af
	adc a,l			;97b0
	or c			;97b1
	pop bc			;97b2
	add a,b			;97b3
	add a,b			;97b4
	nop			;97b5
	nop			;97b6
	nop			;97b7
	nop			;97b8
	nop			;97b9
	nop			;97ba
	nop			;97bb
l97bch:
	nop			;97bc
	add a,b			;97bd
	add a,b			;97be
	add a,b			;97bf
	or b			;97c0
	adc a,h			;97c1
	add a,d			;97c2
	ld bc,00001h		;97c3
	nop			;97c6
	nop			;97c7
	nop			;97c8
l97c9h:
	djnz $+34		;97c9
	ld d,b			;97cb
	jr nz,l981eh		;97cc
	ld sp,l7971h		;97ce
	ld a,c			;97d1
	ld (hl),c			;97d2
	ld (hl),b			;97d3
	ld (hl),b			;97d4
	ld (hl),b			;97d5
	djnz $+18		;97d6
	nop			;97d8
	nop			;97d9
	inc b			;97da
	ld (bc),a			;97db
	dec b			;97dc
	add a,d			;97dd
	push bc			;97de
	add a,0e7h		;97df
	rst 20h			;97e1
	rst 0			;97e2
	ld b,a			;97e3
	add a,a			;97e4
	rlca			;97e5
	ld bc,00001h		;97e6
	nop			;97e9
	djnz l980ch		;97ea
	ret nc			;97ec
	and c			;97ed
	jp nz,l8682h		;97ee
	add a,(hl)			;97f1
	add a,d			;97f2
	add a,e			;97f3
	add a,c			;97f4
	add a,b			;97f5
	ret po			;97f6
	ret po			;97f7
	ld h,b			;97f8
	ex af,af'			;97f9
	ex af,af'			;97fa
	inc c			;97fb
	ld a,(bc)			;97fc
	dec c			;97fd
	ld a,(bc)			;97fe
	add hl,bc			;97ff
	jr l981ah		;9800
	ex af,af'			;9802
	adc a,b			;9803
	ex af,af'			;9804
	ex af,af'			;9805
	ld c,00eh		;9806
	ld b,000h		;9808
	nop			;980a
	nop			;980b
l980ch:
	nop			;980c
	nop			;980d
	ld bc,07931h		;980e
	add hl,de			;9811
	ld de,00010h		;9812
	nop			;9815
	nop			;9816
	nop			;9817
	nop			;9818
	nop			;9819
l981ah:
	nop			;981a
	nop			;981b
	nop			;981c
	add a,b			;981d
l981eh:
	ret nz			;981e
	call nz,0c1c7h		;981f
	pop bc			;9822
	ld b,c			;9823
	add a,b			;9824
	nop			;9825
	nop			;9826
	nop			;9827
	nop			;9828
	nop			;9829
	nop			;982a
	nop			;982b
	nop			;982c
	ld sp,0c2f2h		;982d
	add a,(hl)			;9830
	and 0e2h		;9831
	ex (sp),hl			;9833
	ld h,c			;9834
	nop			;9835
	nop			;9836
	nop			;9837
	nop			;9838
	nop			;9839
	nop			;983a
	nop			;983b
	nop			;983c
	inc c			;983d
	rrca			;983e
	dec bc			;983f
	jr c,$+64		;9840
	ld c,08eh		;9842
	ld b,000h		;9844
	nop			;9846
	nop			;9847
	nop			;9848
	nop			;9849
	nop			;984a
	nop			;984b
	nop			;984c
	nop			;984d
	ld de,01911h		;984e
	ld a,c			;9851
	ld sp,00000h		;9852
	nop			;9855
	nop			;9856
	nop			;9857
	nop			;9858
	nop			;9859
	nop			;985a
	nop			;985b
	nop			;985c
	add a,b			;985d
	pop bc			;985e
	pop bc			;985f
	pop bc			;9860
	rst 0			;9861
	call nz,08040h		;9862
	nop			;9865
	nop			;9866
	nop			;9867
	nop			;9868
	nop			;9869
	nop			;986a
	nop			;986b
	nop			;986c
	ld h,c			;986d
	jp po,0e6e2h		;986e
	add a,(hl)			;9871
	jp nz,031f3h		;9872
	nop			;9875
	nop			;9876
	nop			;9877
	nop			;9878
	nop			;9879
	nop			;987a
	nop			;987b
	nop			;987c
	ld b,00eh		;987d
	ld c,03eh		;987f
	jr c,l988eh		;9881
	adc a,a			;9883
	inc c			;9884
	nop			;9885
	nop			;9886
	nop			;9887
	nop			;9888
	nop			;9889
	djnz $+18		;988a
	ld (hl),b			;988c
	ld (hl),b			;988d
l988eh:
	ld (hl),c			;988e
	ld (hl),c			;988f
	ld a,c			;9890
	ld a,c			;9891
	ld (hl),c			;9892
	jr nc,$+66		;9893
	jr nz,l98e7h		;9895
	jr nz,l98a9h		;9897
	nop			;9899
	ld bc,00701h		;989a
	add a,a			;989d
	rst 0			;989e
	rst 0			;989f
	rst 20h			;98a0
	rst 20h			;98a1
	add a,045h		;98a2
	add a,d			;98a4
	dec b			;98a5
	ld (bc),a			;98a6
	inc b			;98a7
	nop			;98a8
l98a9h:
	ld h,b			;98a9
	ret po			;98aa
	ret po			;98ab
	add a,b			;98ac
	add a,c			;98ad
	add a,b			;98ae
	add a,d			;98af
	add a,(hl)			;98b0
	add a,(hl)			;98b1
	add a,d			;98b2
	jp 0d0a1h		;98b3
	jr nz,l98c8h		;98b6
	nop			;98b8
	ld b,00eh		;98b9
	ld c,008h		;98bb
	ex af,af'			;98bd
	ex af,af'			;98be
	ex af,af'			;98bf
	jr l98dah		;98c0
	add hl,bc			;98c2
	adc a,d			;98c3
	dec c			;98c4
	ld a,(bc)			;98c5
	inc c			;98c6
	ex af,af'			;98c7
l98c8h:
	ex af,af'			;98c8
	nop			;98c9
	ld (bc),a			;98ca
	ld b,00eh		;98cb
	dec e			;98cd
	dec sp			;98ce
	ld (hl),a			;98cf
	rrca			;98d0
	rlca			;98d1
	inc bc			;98d2
	ld bc,00000h		;98d3
	nop			;98d6
	nop			;98d7
	nop			;98d8
	nop			;98d9
l98dah:
	add a,b			;98da
	ret nz			;98db
	ret po			;98dc
	ld (hl),b			;98dd
	cp b			;98de
	call c,0dce0h		;98df
l98e2h:
	cp b			;98e2
	ld (hl),b			;98e3
	ret po			;98e4
	ret nz			;98e5
	add a,b			;98e6
l98e7h:
	nop			;98e7
	nop			;98e8
	nop			;98e9
	ld bc,00101h		;98ea
	ld (bc),a			;98ed
	inc b			;98ee
	ex af,af'			;98ef
	ld (hl),b			;98f0
	ld a,b			;98f1
	inc a			;98f2
	ld e,00fh		;98f3
	rlca			;98f5
	inc bc			;98f6
	nop			;98f7
	nop			;98f8
	nop			;98f9
	nop			;98fa
	nop			;98fb
	nop			;98fc
	add a,b			;98fd
	ld b,b			;98fe
	jr nz,l991dh		;98ff
	jr nz,l9943h		;9901
	add a,b			;9903
	nop			;9904
	nop			;9905
	nop			;9906
	nop			;9907
	nop			;9908
	nop			;9909
	nop			;990a
	nop			;990b
	nop			;990c
	nop			;990d
	ld b,00eh		;990e
	add hl,sp			;9910
	rla			;9911
	rrca			;9912
	rlca			;9913
	ld bc,00000h		;9914
	nop			;9917
	nop			;9918
	nop			;9919
	nop			;991a
	nop			;991b
	nop			;991c
l991dh:
	ret nz			;991d
	ret po			;991e
	ret m			;991f
	jr c,l98e2h		;9920
	ret po			;9922
	ret nz			;9923
	nop			;9924
	nop			;9925
	nop			;9926
	nop			;9927
	nop			;9928
	nop			;9929
	nop			;992a
	nop			;992b
	ld bc,00907h		;992c
	ld sp,02846h		;992f
	djnz l9934h		;9932
l9934h:
	nop			;9934
	nop			;9935
	nop			;9936
	nop			;9937
	nop			;9938
	nop			;9939
	nop			;993a
	nop			;993b
	nop			;993c
	nop			;993d
	nop			;993e
	nop			;993f
	call nz,01028h		;9940
l9943h:
	nop			;9943
	nop			;9944
	nop			;9945
	nop			;9946
	nop			;9947
	nop			;9948
	nop			;9949
	nop			;994a
	nop			;994b
	nop			;994c
	nop			;994d
	ld e,03eh		;994e
	nop			;9950
	nop			;9951
	nop			;9952
	nop			;9953
	nop			;9954
	nop			;9955
	nop			;9956
	nop			;9957
	nop			;9958
	nop			;9959
	nop			;995a
	nop			;995b
	nop			;995c
	nop			;995d
	ret p			;995e
	ret m			;995f
	nop			;9960
	ret m			;9961
	ret p			;9962
	nop			;9963
	nop			;9964
	nop			;9965
	nop			;9966
	nop			;9967
	nop			;9968
	nop			;9969
	nop			;996a
	nop			;996b
	nop			;996c
	nop			;996d
	ld bc,l7f01h		;996e
	ccf			;9971
	rra			;9972
	nop			;9973
	nop			;9974
	nop			;9975
	nop			;9976
	nop			;9977
	nop			;9978
	nop			;9979
	nop			;997a
	nop			;997b
	nop			;997c
	nop			;997d
	nop			;997e
	nop			;997f
	call m,00000h		;9980
	nop			;9983
	nop			;9984
	nop			;9985
	nop			;9986
	nop			;9987
	nop			;9988
	nop			;9989
	nop			;998a
	nop			;998b
	ld bc,00f07h		;998c
	rla			;998f
	add hl,sp			;9990
	ld c,006h		;9991
	nop			;9993
	nop			;9994
	nop			;9995
	nop			;9996
	nop			;9997
	nop			;9998
	nop			;9999
	nop			;999a
	nop			;999b
	nop			;999c
	ret nz			;999d
	ret po			;999e
	ret c			;999f
	inc a			;99a0
	ret m			;99a1
	ret po			;99a2
	ret nz			;99a3
	nop			;99a4
	nop			;99a5
	nop			;99a6
	nop			;99a7
	nop			;99a8
	nop			;99a9
	nop			;99aa
	nop			;99ab
	nop			;99ac
	nop			;99ad
	djnz l99d8h		;99ae
	ld b,(hl)			;99b0
	ld sp,00709h		;99b1
	ld bc,00000h		;99b4
	nop			;99b7
	nop			;99b8
	nop			;99b9
	nop			;99ba
	nop			;99bb
	nop			;99bc
	nop			;99bd
	djnz l99e0h		;99be
	ret nz			;99c0
	nop			;99c1
	nop			;99c2
	nop			;99c3
	nop			;99c4
	nop			;99c5
	nop			;99c6
	nop			;99c7
	nop			;99c8
	ld b,007h		;99c9
	inc bc			;99cb
	nop			;99cc
	ld b,006h		;99cd
	ld b,004h		;99cf
	nop			;99d1
	nop			;99d2
	inc b			;99d3
	inc b			;99d4
	inc b			;99d5
	inc b			;99d6
	nop			;99d7
l99d8h:
	nop			;99d8
	ld h,b			;99d9
	ret nz			;99da
	ret nz			;99db
	add a,b			;99dc
	ret p			;99dd
	ret p			;99de
	ret p			;99df
l99e0h:
	or b			;99e0
	sub b			;99e1
	ret nz			;99e2
	ret po			;99e3
	ret po			;99e4
	ret po			;99e5
	ret po			;99e6
	ret nz			;99e7
	add a,b			;99e8
	jr nz,l9a0bh		;99e9
	jr nz,l9a14h		;99eb
	ld l,c			;99ed
	ld l,c			;99ee
	ld l,c			;99ef
	ld l,e			;99f0
	rst 28h			;99f1
	rst 20h			;99f2
	ex (sp),hl			;99f3
	ei			;99f4
	ei			;99f5
	ei			;99f6
	ld a,e			;99f7
	ld sp,00404h		;99f8
	inc b			;99fb
	ld h,h			;99fc
	ld b,006h		;99fd
	ld b,046h		;99ff
l9a01h:
	ld h,a			;9a01
	daa			;9a02
	rlca			;9a03
	rra			;9a04
	rra			;9a05
	rra			;9a06
	ld e,00ch		;9a07
	nop			;9a09
	nop			;9a0a
l9a0bh:
	ld a,(bc)			;9a0b
	ld a,(bc)			;9a0c
	ld (bc),a			;9a0d
	ld (bc),a			;9a0e
	ld (bc),a			;9a0f
	inc bc			;9a10
	ld bc,00000h		;9a11
l9a14h:
	nop			;9a14
	nop			;9a15
	nop			;9a16
	nop			;9a17
	nop			;9a18
	nop			;9a19
	nop			;9a1a
	jr c,l9a55h		;9a1b
	jr nc,l9a4fh		;9a1d
	jr nz,l9a01h		;9a1f
	ret nz			;9a21
	add a,b			;9a22
	add a,b			;9a23
	add a,b			;9a24
	add a,b			;9a25
	add a,b			;9a26
	add a,b			;9a27
	nop			;9a28
	nop			;9a29
	nop			;9a2a
	inc d			;9a2b
	inc d			;9a2c
	inc c			;9a2d
	inc c			;9a2e
	inc b			;9a2f
	inc b			;9a30
	ld (bc),a			;9a31
	ld bc,00101h		;9a32
	ld bc,00101h		;9a35
	nop			;9a38
	nop			;9a39
	nop			;9a3a
	ld b,b			;9a3b
	ld b,b			;9a3c
	ld b,b			;9a3d
	ld b,b			;9a3e
	ld b,b			;9a3f
	nop			;9a40
	nop			;9a41
	nop			;9a42
	nop			;9a43
	nop			;9a44
	nop			;9a45
	nop			;9a46
	nop			;9a47
	nop			;9a48
	nop			;9a49
	nop			;9a4a
	jr nz,l9a85h		;9a4b
	jr c,l9a87h		;9a4d
l9a4fh:
	inc a			;9a4f
	inc a			;9a50
	ex af,af'			;9a51
	nop			;9a52
	nop			;9a53
	nop			;9a54
l9a55h:
	nop			;9a55
	nop			;9a56
	nop			;9a57
	nop			;9a58
	nop			;9a59
	nop			;9a5a
	ld b,00eh		;9a5b
	ld c,08eh		;9a5d
	adc a,0cch		;9a5f
	ret nz			;9a61
	add a,b			;9a62
	add a,b			;9a63
	add a,b			;9a64
	add a,b			;9a65
	add a,b			;9a66
	nop			;9a67
	nop			;9a68
	nop			;9a69
	nop			;9a6a
	ld b,b			;9a6b
	ld b,b			;9a6c
	ld b,b			;9a6d
	ld b,c			;9a6e
	ld b,e			;9a6f
	ld b,e			;9a70
	scf			;9a71
	dec bc			;9a72
	ld bc,00101h		;9a73
	ld bc,00001h		;9a76
	nop			;9a79
	nop			;9a7a
	nop			;9a7b
	djnz l9a8eh		;9a7c
	djnz l9ab0h		;9a7e
	ld (0503ch),a		;9a80
	nop			;9a83
	nop			;9a84
l9a85h:
	nop			;9a85
	nop			;9a86
l9a87h:
	add a,b			;9a87
	nop			;9a88
	ex af,af'			;9a89
	ld l,b			;9a8a
	ld l,l			;9a8b
	ld a,l			;9a8c
	dec sp			;9a8d
l9a8eh:
	dec de			;9a8e
	dec bc			;9a8f
	inc b			;9a90
	ld c,002h		;9a91
	ld (bc),a			;9a93
	nop			;9a94
	nop			;9a95
	nop			;9a96
	nop			;9a97
	nop			;9a98
	ld (lba2ah),hl		;9a99
	jp m,0f2fah		;9a9c
	ret po			;9a9f
	ret po			;9aa0
	ret p			;9aa1
	ret po			;9aa2
	add a,b			;9aa3
	nop			;9aa4
	nop			;9aa5
	nop			;9aa6
	nop			;9aa7
	nop			;9aa8
	add a,b			;9aa9
	add a,b			;9aaa
	sub d			;9aab
	add a,d			;9aac
	call nz,014a4h		;9aad
l9ab0h:
	dec bc			;9ab0
	ld de,00d0dh		;9ab1
	ld (bc),a			;9ab4
	ld (bc),a			;9ab5
	ld (bc),a			;9ab6
	ld (bc),a			;9ab7
	ld (bc),a			;9ab8
	nop			;9ab9
	inc b			;9aba
	ld b,h			;9abb
	inc b			;9abc
	inc b			;9abd
	ex af,af'			;9abe
	djnz l9ac1h		;9abf
l9ac1h:
	nop			;9ac1
	nop			;9ac2
	ld h,b			;9ac3
	add a,b			;9ac4
	add a,b			;9ac5
	add a,b			;9ac6
	add a,b			;9ac7
	add a,b			;9ac8
	inc b			;9ac9
	inc c			;9aca
	inc e			;9acb
	inc a			;9acc
	ld a,h			;9acd
	cp 0feh		;9ace
	cp 0fah		;9ad0
	jp p,0c2e2h		;9ad2
	add a,b			;9ad5
	nop			;9ad6
	nop			;9ad7
	nop			;9ad8
	nop			;9ad9
	djnz l9af4h		;9ada
	inc e			;9adc
	ld e,01fh		;9add
	rra			;9adf
	rra			;9ae0
	rra			;9ae1
	rrca			;9ae2
	rlca			;9ae3
	inc hl			;9ae4
	ld bc,00000h		;9ae5
	nop			;9ae8
	nop			;9ae9
	nop			;9aea
	nop			;9aeb
	nop			;9aec
	nop			;9aed
	nop			;9aee
	nop			;9aef
	ld bc,00d05h		;9af0
	inc d			;9af3
l9af4h:
	inc h			;9af4
	ld b,d			;9af5
	add a,d			;9af6
	ld (bc),a			;9af7
	ld (bc),a			;9af8
	jr nz,l9b1bh		;9af9
	jr nz,l9b1dh		;9afb
	jr nz,l9b5fh		;9afd
	ld h,b			;9aff
	ret po			;9b00
	ret po			;9b01
	ret p			;9b02
	ld l,b			;9b03
	ld b,h			;9b04
	ld b,d			;9b05
	ld b,c			;9b06
	ld b,b			;9b07
	ld b,b			;9b08
	djnz l9b1bh		;9b09
	jr nc,l9b3dh		;9b0b
	ld (hl),b			;9b0d
	ld (hl),d			;9b0e
	ld (hl),d			;9b0f
	ld a,d			;9b10
	ld l,d			;9b11
	ld l,d			;9b12
	ld b,d			;9b13
	ld b,b			;9b14
	nop			;9b15
	nop			;9b16
	nop			;9b17
	nop			;9b18
	ex af,af'			;9b19
	ex af,af'			;9b1a
l9b1bh:
	inc c			;9b1b
	inc c			;9b1c
l9b1dh:
	ld c,02eh		;9b1d
	ld l,02eh		;9b1f
	ld h,026h		;9b21
	ld (00002h),hl		;9b23
	nop			;9b26
	nop			;9b27
	nop			;9b28
	nop			;9b29
	nop			;9b2a
	nop			;9b2b
	nop			;9b2c
	ld (bc),a			;9b2d
	inc b			;9b2e
	dec b			;9b2f
	dec b			;9b30
	dec d			;9b31
	inc d			;9b32
	inc h			;9b33
	ld (l4241h+1),hl		;9b34
	ld (bc),a			;9b37
	nop			;9b38
	nop			;9b39
	nop			;9b3a
	nop			;9b3b
	nop			;9b3c
l9b3dh:
	ld b,b			;9b3d
	ld b,b			;9b3e
	ret nz			;9b3f
	ret nc			;9b40
	ret c			;9b41
	ld e,b			;9b42
	ld b,h			;9b43
	ld b,h			;9b44
	ld b,d			;9b45
	ld b,d			;9b46
	ld b,b			;9b47
	nop			;9b48
	ld b,b			;9b49
	ld b,b			;9b4a
	ld h,b			;9b4b
	ld h,b			;9b4c
	ld (hl),d			;9b4d
	ld (hl),d			;9b4e
	ld (hl),d			;9b4f
	ld (hl),d			;9b50
	ld (00032h),a		;9b51
	djnz l9b56h		;9b54
l9b56h:
	nop			;9b56
	nop			;9b57
	nop			;9b58
	ld (bc),a			;9b59
	ld (bc),a			;9b5a
	ld b,006h		;9b5b
	ld l,02eh		;9b5d
l9b5fh:
	ld l,03eh		;9b5f
	inc a			;9b61
	inc a			;9b62
	nop			;9b63
	ex af,af'			;9b64
	nop			;9b65
	nop			;9b66
	nop			;9b67
	nop			;9b68
	nop			;9b69
	nop			;9b6a
	nop			;9b6b
	ld (bc),a			;9b6c
	inc b			;9b6d
	dec b			;9b6e
	dec b			;9b6f
	dec c			;9b70
	ld c,h			;9b71
	ld c,h			;9b72
	ld (01222h),a		;9b73
	ld (de),a			;9b76
	nop			;9b77
	nop			;9b78
	nop			;9b79
	nop			;9b7a
	nop			;9b7b
	ld b,b			;9b7c
	ld b,b			;9b7d
	ret nz			;9b7e
	ret nz			;9b7f
	ret nz			;9b80
	ld b,d			;9b81
	ld b,d			;9b82
	ld c,h			;9b83
	ld b,h			;9b84
	ld c,b			;9b85
	ld c,b			;9b86
	nop			;9b87
	nop			;9b88
	nop			;9b89
	nop			;9b8a
	ld b,b			;9b8b
	ld h,d			;9b8c
	ld (hl),d			;9b8d
	ld a,d			;9b8e
	ld (hl),d			;9b8f
	ld (hl),d			;9b90
	ld (hl),d			;9b91
	ld (hl),b			;9b92
	jr z,l9badh		;9b93
	ex af,af'			;9b95
	nop			;9b96
	nop			;9b97
	nop			;9b98
	nop			;9b99
	ld bc,02703h		;9b9a
	cpl			;9b9d
	ccf			;9b9e
	ccf			;9b9f
	ccf			;9ba0
	ccf			;9ba1
	ld c,014h		;9ba2
	jr $+18		;9ba4
	nop			;9ba6
	nop			;9ba7
	nop			;9ba8
	nop			;9ba9
	add a,b			;9baa
	add a,d			;9bab
	add a,h			;9bac
l9badh:
	add a,l			;9bad
	add a,l			;9bae
	adc a,l			;9baf
	adc a,h			;9bb0
	adc a,h			;9bb1
	adc a,d			;9bb2
	ld d,d			;9bb3
	ld (00812h),hl		;9bb4
	nop			;9bb7
	nop			;9bb8
	nop			;9bb9
	nop			;9bba
	ld b,b			;9bbb
	ld b,b			;9bbc
	ret nz			;9bbd
	ret nz			;9bbe
	ret nz			;9bbf
	ld b,b			;9bc0
	ld b,b			;9bc1
	ld d,c			;9bc2
	ld c,d			;9bc3
	ld b,h			;9bc4
	ld c,b			;9bc5
	djnz l9bc8h		;9bc6
l9bc8h:
	nop			;9bc8
l9bc9h:
	nop			;9bc9
	nop			;9bca
	nop			;9bcb
	nop			;9bcc
	add a,b			;9bcd
	ret po			;9bce
	sbc a,h			;9bcf
	add a,e			;9bd0
	sbc a,h			;9bd1
	cp a			;9bd2
	cp a			;9bd3
	ld e,a			;9bd4
	ld e,a			;9bd5
	ld e,a			;9bd6
	ld e,a			;9bd7
	ld a,a			;9bd8
	ld bc,00211h		;9bd9
	dec b			;9bdc
	ld de,l8505h		;9bdd
	ld h,l			;9be0
	add a,l			;9be1
	push hl			;9be2
	push hl			;9be3
	push hl			;9be4
	push hl			;9be5
	call po,sub_80e4h		;9be6
	ld b,b			;9be9
	ret nz			;9bea
	ret nz			;9beb
	ret nz			;9bec
	ret nz			;9bed
	ret po			;9bee
	ret po			;9bef
	ret po			;9bf0
	and b			;9bf1
	and b			;9bf2
	and b			;9bf3
	and b			;9bf4
	jr nz,l9c1ah		;9bf5
	ld c,h			;9bf7
	ld de,00d00h		;9bf8
	ret nz			;9bfb
	inc bc			;9bfc
	nop			;9bfd
	dec c			;9bfe
	ld de,00203h		;9bff
	ld (bc),a			;9c02
	ld bc,00211h		;9c03
	dec b			;9c06
	dec b			;9c07
	ld b,011h		;9c08
	inc b			;9c0a
	inc b			;9c0b
	call nz,08074h		;9c0c
	ld b,b			;9c0f
	ret nz			;9c10
	ret nz			;9c11
	ret nz			;9c12
	ret nz			;9c13
	ret po			;9c14
	pop hl			;9c15
	xor 0e8h		;9c16
	jp (hl)			;9c18
	xor e			;9c19
l9c1ah:
	xor e			;9c1a
	xor e			;9c1b
	dec hl			;9c1c
	dec hl			;9c1d
	nop			;9c1e
	nop			;9c1f
	nop			;9c20
	nop			;9c21
	ld bc,03f07h		;9c22
	rst 8			;9c25
	ccf			;9c26
	rst 38h			;9c27
	rst 38h			;9c28
	ld de,005feh		;9c29
	ld de,03f7fh		;9c2c
	daa			;9c2f
	ld bc,02618h		;9c30
	ld hl,l4722h		;9c33
	ld c,a			;9c36
	ld c,a			;9c37
	ld c,a			;9c38
	sbc a,a			;9c39
	cp a			;9c3a
	cp a			;9c3b
	cp a			;9c3c
	call po,0e4e5h		;9c3d
	call po,00564h		;9c40
	add a,l			;9c43
	ld h,l			;9c44
	sbc a,c			;9c45
	ld de,007f9h		;9c46
	ld de,02793h		;9c49
	ld c,a			;9c4c
	sbc a,a			;9c4d
	cp a			;9c4e
	cp a			;9c4f
	dec a			;9c50
	ld a,d			;9c51
	ld (hl),e			;9c52
	ld (hl),d			;9c53
	ld (hl),d			;9c54
	ld (hl),d			;9c55
	ld (hl),c			;9c56
	ld a,b			;9c57
	inc a			;9c58
	dec e			;9c59
	ret nz			;9c5a
	ret nz			;9c5b
	ret nz			;9c5c
	ret nz			;9c5d
	ret nc			;9c5e
	ret c			;9c5f
	call c,sub_9058h		;9c60
	ld h,b			;9c63
	jr $-57		;9c64
	ld a,e			;9c66
	ei			;9c67
	ccf			;9c68
	dec c			;9c69
	ld de,00502h		;9c6a
	ld de,0f292h		;9c6d
	jp p,0e6f1h		;9c70
	ld e,c			;9c73
	inc hl			;9c74
	ld b,a			;9c75
	ld c,a			;9c76
	ld e,h			;9c77
	ld (0c509h),a		;9c78
	jp p,0fffdh		;9c7b
	rst 38h			;9c7e
	sbc a,a			;9c7f
	ld e,a			;9c80
	rst 18h			;9c81
	ld e,a			;9c82
	ld e,a			;9c83
	ld e,a			;9c84
	cp a			;9c85
	ld a,a			;9c86
	ld a,(hl)			;9c87
	ld a,(de)			;9c88
	cpl			;9c89
	xor a			;9c8a
	xor a			;9c8b
	ld l,a			;9c8c
	ld l,(hl)			;9c8d
	xor b			;9c8e
	and c			;9c8f
	and (hl)			;9c90
	sbc a,c			;9c91
	and e			;9c92
	and a			;9c93
	and a			;9c94
	and a			;9c95
	xor a			;9c96
	xor a			;9c97
	xor a			;9c98
	cp 0fch		;9c99
	call po,01880h		;9c9b
	ld a,h			;9c9e
	cp h			;9c9f
	ld a,h			;9ca0
	ld de,004feh		;9ca1
	rst 38h			;9ca4
	inc b			;9ca5
	cp a			;9ca6
	inc c			;9ca7
	ld de,l5d5eh		;9ca8
	ld c,l			;9cab
	ld b,c			;9cac
	ld sp,hl			;9cad
	ld sp,hl			;9cae
	ld sp,hl			;9caf
	ld sp,hl			;9cb0
	pop af			;9cb1
	pop af			;9cb2
	call pe,0deech		;9cb3
	rst 18h			;9cb6
	rst 18h			;9cb7
	cp l			;9cb8
	cp (hl)			;9cb9
	ld a,(hl)			;9cba
	ld a,l			;9cbb
	ld a,e			;9cbc
	ld bc,l7f43h		;9cbd
	ld a,(hl)			;9cc0
	ld a,d			;9cc1
	ld (hl),h			;9cc2
	xor c			;9cc3
	xor e			;9cc4
	ld d,a			;9cc5
	ld l,081h		;9cc6
	rst 8			;9cc8
	set 1,c		;9cc9
	adc a,b			;9ccb
	ld l,c			;9ccc
	ld (bc),a			;9ccd
	inc hl			;9cce
	inc sp			;9ccf
	ld (hl),e			;9cd0
	ld h,a			;9cd1
	call po,0c7e7h		;9cd2
	and h			;9cd5
	ld h,a			;9cd6
	rst 20h			;9cd7
	rst 20h			;9cd8
	rst 20h			;9cd9
	call nz,0cf23h		;9cda
	ld a,(bc)			;9cdd
	cp l			;9cde
	sbc a,l			;9cdf
	sbc a,(hl)			;9ce0
	xor (hl)			;9ce1
	cpl			;9ce2
	and a			;9ce3
	xor e			;9ce4
	dec l			;9ce5
	ld l,02bh		;9ce6
	dec hl			;9ce8
	add hl,hl			;9ce9
	add hl,hl			;9cea
	adc a,h			;9ceb
	sub e			;9cec
	add a,b			;9ced
	ld h,l			;9cee
	ld a,a			;9cef
	cp a			;9cf0
	cp a			;9cf1
	ld e,(hl)			;9cf2
	xor l			;9cf3
	push de			;9cf4
	jp pe,08174h		;9cf5
	di			;9cf8
	rst 30h			;9cf9
	or 051h		;9cfa
	sub (hl)			;9cfc
	xor a			;9cfd
	and a			;9cfe
	sub a			;9cff
	adc a,e			;9d00
	adc a,e			;9d01
	and l			;9d02
	dec h			;9d03
	ld (0f272h),a		;9d04
	ld sp,hl			;9d07
	ld sp,hl			;9d08
	ld sp,hl			;9d09
	call m,0c83ch		;9d0a
	ld de,00affh		;9d0d
	ld de,l7f7fh		;9d10
	ld a,(hl)			;9d13
	cp d			;9d14
	cp d			;9d15
	cp d			;9d16
	ld b,c			;9d17
	dec h			;9d18
	dec l			;9d19
	cpl			;9d1a
	rla			;9d1b
	rla			;9d1c
	dec bc			;9d1d
	dec bc			;9d1e
	dec b			;9d1f
	dec b			;9d20
	ld (bc),a			;9d21
	ld (bc),a			;9d22
	ld bc,00000h		;9d23
l9d26h:
	nop			;9d26
	inc h			;9d27
	dec de			;9d28
	ld h,058h		;9d29
	nop			;9d2b
	nop			;9d2c
	nop			;9d2d
	add a,b			;9d2e
	add a,b			;9d2f
	add a,b			;9d30
	ret nz			;9d31
	ret nz			;9d32
	ld h,b			;9d33
	or b			;9d34
	ld (hl),b			;9d35
	jr l9d26h		;9d36
	add a,b			;9d38
	ld de,00e00h		;9d39
	ld de,04737h		;9d3c
	ld c,a			;9d3f
	ld e,h			;9d40
l9d41h:
	ld e,b			;9d41
	ld e,b			;9d42
	jr z,l9d6dh		;9d43
	jr z,l9d73h		;9d45
	inc d			;9d47
	inc d			;9d48
	inc d			;9d49
	inc c			;9d4a
	inc c			;9d4b
	inc b			;9d4c
	sbc a,h			;9d4d
	sub d			;9d4e
	sub d			;9d4f
	ld d,016h		;9d50
	ld d,014h		;9d52
	inc d			;9d54
	inc (hl)			;9d55
	inc l			;9d56
	jr z,l9d81h		;9d57
	jr z,$+50		;9d59
	jr nc,l9d7dh		;9d5b
	ld (hl),a			;9d5d
	ld bc,00011h		;9d5e
	ld c,011h		;9d61
	jr nz,l9d41h		;9d63
	ld h,h			;9d65
	jr l9d68h		;9d66
l9d68h:
	nop			;9d68
	nop			;9d69
	ld bc,00101h		;9d6a
l9d6dh:
	ld (bc),a			;9d6d
	ld (bc),a			;9d6e
	dec b			;9d6f
	dec bc			;9d70
	ld c,018h		;9d71
l9d73h:
	adc a,d			;9d73
	add a,h			;9d74
	add a,h			;9d75
	and h			;9d76
	xor b			;9d77
	cp b			;9d78
	or b			;9d79
	ld (hl),b			;9d7a
	ld h,b			;9d7b
	ld h,b			;9d7c
l9d7dh:
	ret nz			;9d7d
	ret nz			;9d7e
	add a,b			;9d7f
	nop			;9d80
l9d81h:
	nop			;9d81
	nop			;9d82
	ld de,02111h		;9d83
	nop			;9d86
	ex (sp),hl			;9d87
	bit 0,(hl)		;9d88
	res 0,(hl)		;9d8a
	jp nz,la074h		;9d8c
	bit 1,(hl)		;9d8f
	ret nz			;9d91
	ld a,0b8h		;9d92
	ld (0e308h),a		;9d94
	sub a			;9d97
	ld (0e309h),a		;9d98
	ld (0e30ah),a		;9d9b
	ld (0e30bh),a		;9d9e
	ld ix,0e30ch		;9da1
	ld b,005h		;9da5
l9da7h:
	ld a,(ix+000h)		;9da7
	ld d,a			;9daa
	ld e,(ix+009h)		;9dab
	and a			;9dae
	jp z,l9e02h		;9daf
	exx			;9db2
	dec (ix+00dh)		;9db3
	jr nz,l9dcah		;9db6
	ld a,(ix+005h)		;9db8
	ld (ix+00dh),a		;9dbb
	inc (ix+00ah)		;9dbe
	ld a,(ix+00ah)		;9dc1
	cp (ix+00bh)		;9dc4
	call z,sub_9e5bh		;9dc7
l9dcah:
	call sub_9f7ah		;9dca
	exx			;9dcd
	bit 2,d		;9dce
	exx			;9dd0
	call nz,sub_9fcbh		;9dd1
	exx			;9dd4
	bit 7,e		;9dd5
	exx			;9dd7
	call nz,sub_9e1eh		;9dd8
l9ddbh:
	call sub_9fd6h		;9ddb
	exx			;9dde
	bit 5,e		;9ddf
	jp z,l9e02h		;9de1
	ld a,(ix+016h)		;9de4
	add a,(ix+017h)		;9de7
	ld (ix+017h),a		;9dea
	jr nc,l9e02h		;9ded
	ld a,(ix+001h)		;9def
	cp (ix+018h)		;9df2
	jp nz,l9dfdh		;9df5
	set 1,e		;9df8
	jp l9e02h		;9dfa
l9dfdh:
	res 1,e		;9dfd
	dec (ix+001h)		;9dff
l9e02h:
	ld (ix+009h),e		;9e02
	ld de,00020h		;9e05
	add ix,de		;9e08
	dec b			;9e0a
	jp nz,l9da7h		;9e0b
	ld hl,0e301h		;9e0e
	sub a			;9e11
l9e12h:
	ld e,(hl)			;9e12
	call 00093h		;9e13
	inc hl			;9e16
	inc a			;9e17
	cp 00bh		;9e18
	jp nz,l9e12h		;9e1a
	ret			;9e1d
sub_9e1eh:
	ld a,(ix+012h)		;9e1e
	add a,(ix+013h)		;9e21
	ld (ix+013h),a		;9e24
	ret nc			;9e27
	ld a,(ix+019h)		;9e28
	and a			;9e2b
	ret z			;9e2c
	ld c,(ix+014h)		;9e2d
	ld b,(ix+015h)		;9e30
	ld h,b			;9e33
	ld l,c			;9e34
l9e35h:
	srl b		;9e35
	rr c		;9e37
	dec a			;9e39
	jp nz,l9e35h		;9e3a
	exx			;9e3d
	bit 6,e		;9e3e
	exx			;9e40
	jr nz,l9e4ch		;9e41
	add hl,bc			;9e43
	ld a,h			;9e44
	cp 010h		;9e45
	jr c,l9e54h		;9e47
	jp l9e51h		;9e49
l9e4ch:
	and a			;9e4c
	sbc hl,bc		;9e4d
	jr nc,l9e54h		;9e4f
l9e51h:
	ld hl,00000h		;9e51
l9e54h:
	ld (ix+014h),l		;9e54
	ld (ix+015h),h		;9e57
	ret			;9e5a
sub_9e5bh:
	ld e,(ix+007h)		;9e5b
	ld d,(ix+008h)		;9e5e
	dec de			;9e61
l9e62h:
	inc de			;9e62
	ld a,(de)			;9e63
	bit 7,a		;9e64
	jp z,l9f17h		;9e66
	cp 0dfh		;9e69
	jp nc,l9f2fh		;9e6b
	inc de			;9e6e
	res 7,a		;9e6f
	ld hl,l9e62h		;9e71
	push hl			;9e74
	ld bc,l9e7dh		;9e75
	call sub_a0d4h		;9e78
	ld a,(de)			;9e7b
	jp (hl)			;9e7c
l9e7dh:
	sub l			;9e7d
	sbc a,(hl)			;9e7e
	sbc a,h			;9e7f
	sbc a,(hl)			;9e80
	and h			;9e81
	sbc a,(hl)			;9e82
	xor l			;9e83
	sbc a,(hl)			;9e84
	ld a,e			;9e85
	and b			;9e86
	cp b			;9e87
	sbc a,(hl)			;9e88
	cp l			;9e89
	sbc a,(hl)			;9e8a
	pop bc			;9e8b
	sbc a,(hl)			;9e8c
	call nc,0eb9eh		;9e8d
	sbc a,(hl)			;9e90
	ld c,09fh		;9e91
	xor b			;9e93
	sbc a,(hl)			;9e94
l9e95h:
	ld l,a			;9e95
	inc de			;9e96
	ld a,(de)			;9e97
	ld h,a			;9e98
	ex de,hl			;9e99
	dec de			;9e9a
	ret			;9e9b
	ld a,(de)			;9e9c
	dec (ix+010h)		;9e9d
	jr nz,l9e95h		;9ea0
	inc de			;9ea2
	ret			;9ea3
	ld (ix+000h),000h		;9ea4
	pop hl			;9ea8
	pop hl			;9ea9
	jp l9ddbh		;9eaa
	and a			;9ead
	jp z,l9eb4h		;9eae
	add a,(ix+004h)		;9eb1
l9eb4h:
	ld (ix+004h),a		;9eb4
	ret			;9eb7
	ld a,(de)			;9eb8
	ld (ix+010h),a		;9eb9
	ret			;9ebc
	ld (ix+01ch),a		;9ebd
	ret			;9ec0
	ld c,a			;9ec1
	inc de			;9ec2
	ld a,(de)			;9ec3
	ld b,a			;9ec4
	ld l,(ix+010h)		;9ec5
	dec l			;9ec8
	ld h,000h		;9ec9
	add hl,bc			;9ecb
	ld a,(hl)			;9ecc
	add a,(ix+004h)		;9ecd
	ld (ix+004h),a		;9ed0
	ret			;9ed3
	ld b,(ix+009h)		;9ed4
	res 1,b		;9ed7
	ld (ix+018h),a		;9ed9
	inc de			;9edc
	ld a,(de)			;9edd
	ld (ix+016h),a		;9ede
	ld (ix+017h),000h		;9ee1
	set 5,b		;9ee5
	ld (ix+009h),b		;9ee7
	ret			;9eea
	ld b,a			;9eeb
	inc de			;9eec
	ld a,(de)			;9eed
	ld (ix+012h),a		;9eee
	ld a,b			;9ef1
	ld b,(ix+009h)		;9ef2
	res 6,b		;9ef5
	bit 7,a		;9ef7
	jr z,l9efdh		;9ef9
	set 6,b		;9efb
l9efdh:
	set 7,b		;9efd
	and 07fh		;9eff
sub_9f01h:
	jr z,l9f08h		;9f01
	ld (ix+019h),a		;9f03
	jr l9f0ah		;9f06
l9f08h:
	res 7,b		;9f08
l9f0ah:
	ld (ix+009h),b		;9f0a
	ret			;9f0d
	bit 1,(ix+009h)		;9f0e
	jp z,l9e95h		;9f12
	inc de			;9f15
	ret			;9f16
l9f17h:
	ld (ix+00ch),a		;9f17
	call sub_9f67h		;9f1a
	ld (ix+015h),b		;9f1d
	ld (ix+014h),c		;9f20
	ld a,(de)			;9f23
	cp 0dfh		;9f24
	jp nc,l9f2fh		;9f26
	ld a,(ix+00eh)		;9f29
	jp l9f3ah		;9f2c
l9f2fh:
	sub 0e0h		;9f2f
	ld hl,la12dh		;9f31
	ld c,a			;9f34
	ld b,000h		;9f35
	add hl,bc			;9f37
	ld a,(hl)			;9f38
	inc de			;9f39
l9f3ah:
	ld (ix+008h),d		;9f3a
	ld (ix+007h),e		;9f3d
	ld (ix+00bh),a		;9f40
	ld d,a			;9f43
	ld (ix+00eh),a		;9f44
	ld a,(ix+005h)		;9f47
	ld (ix+00dh),a		;9f4a
	sub a			;9f4d
	ld (ix+00ah),a		;9f4e
	ld (ix+01eh),a		;9f51
	bit 7,(ix+009h)		;9f54
	jr z,l9f5eh		;9f58
	ld (ix+013h),080h		;9f5a
l9f5eh:
	exx			;9f5e
	ld d,(ix+000h)		;9f5f
	ld e,(ix+009h)		;9f62
	exx			;9f65
	ret			;9f66
sub_9f67h:
	inc de			;9f67
	and a			;9f68
	ld bc,00000h		;9f69
	ret z			;9f6c
	add a,(ix+004h)		;9f6d
	dec a			;9f70
	ld bc,0e3ach		;9f71
	call sub_a0d4h		;9f74
	ld c,l			;9f77
	ld b,h			;9f78
	ret			;9f79
sub_9f7ah:
	ld a,(ix+002h)		;9f7a
	ld e,a			;9f7d
	and 07fh		;9f7e
	jp z,l9fa7h		;9f80
	add a,a			;9f83
	ld hl,la13ch		;9f84
	ld c,a			;9f87
	ld b,000h		;9f88
	add hl,bc			;9f8a
	ld c,(hl)			;9f8b
	inc hl			;9f8c
	ld b,(hl)			;9f8d
	ld d,(ix+01eh)		;9f8e
	call sub_9fadh		;9f91
	inc d			;9f94
	ld (ix+01eh),d		;9f95
	cpl			;9f98
	add a,010h		;9f99
	ld b,a			;9f9b
	ld a,(ix+001h)		;9f9c
	sub b			;9f9f
	jr nc,l9fa3h		;9fa0
	sub a			;9fa2
l9fa3h:
	ld (ix+00fh),a		;9fa3
	ret			;9fa6
l9fa7h:
	ld a,(ix+001h)		;9fa7
	jp l9fa3h		;9faa
sub_9fadh:
	ld l,d			;9fad
	ld h,000h		;9fae
	add hl,bc			;9fb0
	ld a,(hl)			;9fb1
	bit 7,a		;9fb2
	ret z			;9fb4
	cp 080h		;9fb5
	jp nz,l9fbeh		;9fb7
	dec d			;9fba
	dec hl			;9fbb
	ld a,(hl)			;9fbc
	ret			;9fbd
l9fbeh:
	cp 081h		;9fbe
	ret nz			;9fc0
	inc hl			;9fc1
	ld a,d			;9fc2
	sub (hl)			;9fc3
	ld d,a			;9fc4
	ld l,d			;9fc5
	ld h,000h		;9fc6
	add hl,bc			;9fc8
	ld a,(hl)			;9fc9
	ret			;9fca
sub_9fcbh:
	ld a,(ix+014h)		;9fcb
	rrca			;9fce
	rrca			;9fcf
	and 01fh		;9fd0
	ld (ix+01ch),a		;9fd2
	ret			;9fd5
sub_9fd6h:
	ld b,(ix+000h)		;9fd6
	ld a,b			;9fd9
	and 003h		;9fda
	ret z			;9fdc
	ld e,(ix+014h)		;9fdd
	ld d,(ix+015h)		;9fe0
	ld a,e			;9fe3
	or d			;9fe4
	jr nz,l9feah		;9fe5
	ld (ix+00fh),a		;9fe7
l9feah:
	bit 0,b		;9fea
	jr nz,l9ff1h		;9fec
	ld de,00000h		;9fee
l9ff1h:
	ld a,(ix+006h)		;9ff1
	ld c,a			;9ff4
	bit 1,b		;9ff5
	ld b,000h		;9ff7
	jr nz,la009h		;9ff9
	ld hl,la02fh		;9ffb
	add hl,bc			;9ffe
	ld a,(0e308h)		;9fff
	or (hl)			;a002
	ld (0e308h),a		;a003
	jp la01ah		;a006
la009h:
	ld a,(ix+01ch)		;a009
	ld (0e307h),a		;a00c
	ld hl,la02ch		;a00f
	add hl,bc			;a012
	ld a,(0e308h)		;a013
	and (hl)			;a016
	ld (0e308h),a		;a017
la01ah:
	ld hl,0e309h		;a01a
	add hl,bc			;a01d
	ld a,(ix+00fh)		;a01e
	ld (hl),a			;a021
	sla c		;a022
	ld hl,0e301h		;a024
	add hl,bc			;a027
	ld (hl),e			;a028
	inc hl			;a029
	ld (hl),d			;a02a
	ret			;a02b
la02ch:
	rst 30h			;a02c
	rst 28h			;a02d
	rst 18h			;a02e
la02fh:
	ex af,af'			;a02f
	djnz la052h		;a030
sub_a032h:
	ld de,0e3ach		;a032
	ld b,000h		;a035
la037h:
	push bc			;a037
	push de			;a038
	ld a,b			;a039
	ld bc,la0deh		;a03a
	call sub_a0d4h		;a03d
	ex de,hl			;a040
	ld a,00ah		;a041
la043h:
	ld (hl),e			;a043
	inc hl			;a044
	ld (hl),d			;a045
	ld bc,00017h		;a046
	add hl,bc			;a049
	srl d		;a04a
	rr e		;a04c
	dec a			;a04e
	jr nz,la043h		;a04f
	pop de			;a051
la052h:
	pop bc			;a052
	inc de			;a053
	inc de			;a054
	inc b			;a055
	ld a,b			;a056
	cp 00ch		;a057
	jr nz,la037h		;a059
	sub a			;a05b
	ld (0e300h),a		;a05c
sub_a05fh:
	push ix		;a05f
	ld ix,0e30ch		;a061
	ld de,00020h		;a065
	ld b,005h		;a068
	sub a			;a06a
la06bh:
	ld (ix+000h),a		;a06b
	add ix,de		;a06e
	djnz la06bh		;a070
	pop ix		;a072
la074h:
	ld a,007h		;a074
	ld e,0bfh		;a076
	jp 00093h		;a078
sub_a07bh:
	push bc			;a07b
	push hl			;a07c
	push de			;a07d
	push ix		;a07e
	di			;a080
	call sub_a08bh		;a081
	ei			;a084
	pop ix		;a085
	pop de			;a087
	pop hl			;a088
	pop bc			;a089
	ret			;a08a
sub_a08bh:
	ld d,a			;a08b
	and a			;a08c
	ret z			;a08d
	ld bc,la0fdh		;a08e
	call sub_a0d4h		;a091
	ld c,d			;a094
	ld b,(hl)			;a095
	inc hl			;a096
la097h:
	ld a,(hl)			;a097
	inc hl			;a098
	push hl			;a099
	ld d,a			;a09a
	add a,a			;a09b
	add a,a			;a09c
	add a,a			;a09d
	add a,a			;a09e
	add a,a			;a09f
	ld e,a			;a0a0
	ld d,000h		;a0a1
	ld hl,0e30ch		;a0a3
	add hl,de			;a0a6
	push hl			;a0a7
	pop ix		;a0a8
	ex de,hl			;a0aa
	pop hl			;a0ab
	ld a,(hl)			;a0ac
	and a			;a0ad
	jr z,la0cfh		;a0ae
	ld a,(de)			;a0b0
	bit 6,a		;a0b1
	ret nz			;a0b3
	ld (ix+01ah),c		;a0b4
	ld a,b			;a0b7
	ld bc,00009h		;a0b8
	ldir		;a0bb
	ld b,a			;a0bd
	sub a			;a0be
	ld (ix+009h),a		;a0bf
	ld (ix+00ah),a		;a0c2
	inc a			;a0c5
	ld (ix+00dh),a		;a0c6
	ld (ix+00bh),a		;a0c9
	jp la0d1h		;a0cc
la0cfh:
	ld (de),a			;a0cf
	inc hl			;a0d0
la0d1h:
	djnz la097h		;a0d1
	ret			;a0d3
sub_a0d4h:
	add a,a			;a0d4
	ld h,000h		;a0d5
	ld l,a			;a0d7
	add hl,bc			;a0d8
	ld a,(hl)			;a0d9
	inc hl			;a0da
	ld h,(hl)			;a0db
	ld l,a			;a0dc
	ret			;a0dd
la0deh:
	call m,01c0fh		;a0de
	rrca			;a0e1
	ld b,b			;a0e2
	ld c,074h		;a0e3
	dec c			;a0e5
	or h			;a0e6
	inc c			;a0e7
	call m,sub_500bh		;a0e8
	dec bc			;a0eb
	xor h			;a0ec
	ld a,(bc)			;a0ed
	inc d			;a0ee
	ld a,(bc)			;a0ef
	add a,h			;a0f0
	add hl,bc			;a0f1
	call m,sub_7808h		;a0f2
	ex af,af'			;a0f5
sub_a0f6h:
	ld a,003h		;a0f6
la0f8h:
	ld (0e300h),a		;a0f8
	ret			;a0fb
sub_a0fch:
	sub a			;a0fc
la0fdh:
	jr la0f8h		;a0fd
	xor a			;a0ff
	and c			;a100
la101h:
	ld sp,hl			;a101
	and c			;a102
	sbc a,(hl)			;a103
	and d			;a104
	jp nz,l8fa2h		;a105
	and e			;a108
	djnz $-90		;a109
	ld d,l			;a10b
	and h			;a10c
	call p,00aa4h		;a10d
	and l			;a110
	dec de			;a111
	and l			;a112
	ld sp,l45a5h		;a113
	and l			;a116
	ld e,b			;a117
	and l			;a118
	ld l,a			;a119
	and l			;a11a
	add a,b			;a11b
	and (hl)			;a11c
	sub c			;a11d
	and (hl)			;a11e
	call nc,0ffa6h		;a11f
	and (hl)			;a122
	ld d,(hl)			;a123
	and a			;a124
	ld (hl),a			;a125
	xor b			;a126
	ret nc			;a127
	xor b			;a128
	jr sub_a0d4h		;a129
	xor e			;a12b
	xor c			;a12c
la12dh:
	ld bc,00302h		;a12d
	inc b			;a130
	ld b,008h		;a131
	inc c			;a133
	djnz $+26		;a134
	jr nz,la168h		;a136
	ld b,b			;a138
	inc h			;a139
	ld h,b			;a13a
	add hl,bc			;a13b
la13ch:
	ld (de),a			;a13c
	rrca			;a13d
	ld c,b			;a13e
	and c			;a13f
	ld e,b			;a140
	and c			;a141
	add a,b			;a142
	and c			;a143
	adc a,e			;a144
	and c			;a145
	and e			;a146
	and c			;a147
	rrca			;a148
	nop			;a149
	add a,b			;a14a
	ld c,00eh		;a14b
	ld c,00dh		;a14d
	dec c			;a14f
	dec c			;a150
	inc c			;a151
	inc c			;a152
	inc c			;a153
	dec bc			;a154
	dec bc			;a155
	ld a,(bc)			;a156
	add a,b			;a157
	rrca			;a158
	rrca			;a159
	ld c,00eh		;a15a
	dec c			;a15c
	dec c			;a15d
	inc c			;a15e
	inc c			;a15f
	inc c			;a160
	dec bc			;a161
	dec bc			;a162
	dec bc			;a163
	dec bc			;a164
	dec bc			;a165
	dec bc			;a166
	dec bc			;a167
la168h:
	dec bc			;a168
	ld a,(bc)			;a169
	ld a,(bc)			;a16a
	ld a,(bc)			;a16b
	add hl,bc			;a16c
	add hl,bc			;a16d
	add hl,bc			;a16e
	ex af,af'			;a16f
	ex af,af'			;a170
	ex af,af'			;a171
	rlca			;a172
	rlca			;a173
	rlca			;a174
	ld b,006h		;a175
	ld b,005h		;a177
	dec b			;a179
	inc b			;a17a
	inc b			;a17b
	inc bc			;a17c
	inc bc			;a17d
	nop			;a17e
	add a,b			;a17f
	rrca			;a180
	ld c,00dh		;a181
	inc c			;a183
	dec bc			;a184
	ld a,(bc)			;a185
	ex af,af'			;a186
	ld b,004h		;a187
	nop			;a189
	add a,b			;a18a
	dec bc			;a18b
	inc c			;a18c
	dec c			;a18d
	ld c,00fh		;a18e
	rrca			;a190
	ld c,00eh		;a191
	dec c			;a193
	dec c			;a194
	dec c			;a195
	inc c			;a196
	inc c			;a197
	inc c			;a198
	inc c			;a199
	inc c			;a19a
	inc c			;a19b
	inc c			;a19c
	inc c			;a19d
	dec bc			;a19e
	ld a,(bc)			;a19f
	dec bc			;a1a0
	add a,c			;a1a1
	dec b			;a1a2
	dec c			;a1a3
	ld c,00fh		;a1a4
la1a6h:
	rrca			;a1a6
	ld c,00eh		;a1a7
	dec c			;a1a9
	dec c			;a1aa
	inc c			;a1ab
	inc c			;a1ac
	dec bc			;a1ad
	add a,b			;a1ae
	inc bc			;a1af
	nop			;a1b0
	ld bc,0020fh		;a1b1
	nop			;a1b4
	nop			;a1b5
	ld (bc),a			;a1b6
	nop			;a1b7
	adc a,0a1h		;a1b8
	ld bc,00f01h		;a1ba
	inc bc			;a1bd
	nop			;a1be
	nop			;a1bf
	ld (bc),a			;a1c0
	ld bc,0a1dch		;a1c1
	ld (bc),a			;a1c4
	ld bc,0020fh		;a1c5
	nop			;a1c8
	nop			;a1c9
	ld (bc),a			;a1ca
	ld (bc),a			;a1cb
	jp pe,033a1h		;a1cc
	call po,0332eh		;a1cf
	scf			;a1d2
	and 033h		;a1d3
	ld a,(038e4h)		;a1d5
	scf			;a1d8
	ccf			;a1d9
	call pe,02282h		;a1da
	call po,0221fh		;a1dd
	daa			;a1e0
	and 022h		;a1e1
	dec hl			;a1e3
	call po,02729h		;a1e4
	ld l,0ech		;a1e7
la1e9h:
	add a,d			;a1e9
	rra			;a1ea
	call po,01b1dh		;a1eb
	ld (01f20h),hl		;a1ee
la1f1h:
	ld (02624h),hl		;a1f1
	call po,02724h		;a1f4
	call pe,00382h		;a1f7
	nop			;a1fa
	ld bc,0030bh		;a1fb
	nop			;a1fe
	nop			;a1ff
	ld (bc),a			;a200
	nop			;a201
	jr la1a6h		;a202
	ld bc,00d01h		;a204
	ld (bc),a			;a207
	nop			;a208
	nop			;a209
	ld (bc),a			;a20a
	ld bc,la247h		;a20b
	ld (bc),a			;a20e
	ld bc,0050fh		;a20f
	nop			;a212
	nop			;a213
	ld (bc),a			;a214
	ld (bc),a			;a215
	ld h,(hl)			;a216
	and d			;a217
	add a,l			;a218
	inc b			;a219
	add a,a			;a21a
	sbc a,d			;a21b
	and d			;a21c
	ld sp,020e2h		;a21d
	jr nz,la247h		;a220
	add hl,de			;a222
	ld sp,02f20h		;a223
	add hl,de			;a226
	ld l,020h		;a227
	inc l			;a229
	add hl,de			;a22a
	ld l,020h		;a22b
	cpl			;a22d
	ld sp,0202ch		;a22e
	jr z,la24ch		;a231
	inc l			;a233
	jr nz,la264h		;a234
	add hl,de			;a236
	cpl			;a237
	jr nz,$+48		;a238
	add hl,de			;a23a
	cpl			;a23b
	jr nz,$+51		;a23c
	add a,c			;a23e
	ld a,(de)			;a23f
	and d			;a240
	adc a,b			;a241
	nop			;a242
	ex af,af'			;a243
	add a,b			;a244
	jr la1e9h		;a245
la247h:
	add a,l			;a247
	inc b			;a248
	add a,a			;a249
	sbc a,d			;a24a
	and d			;a24b
la24ch:
	jr nz,$-26		;a24c
	ld sp,03334h		;a24e
	ld (hl),034h		;a251
	inc sp			;a253
	ld (hl),020h		;a254
	ld sp,03334h		;a256
	ld (hl),034h		;a259
	inc sp			;a25b
	cpl			;a25c
	add a,c			;a25d
	ld c,c			;a25e
	and d			;a25f
	adc a,b			;a260
	nop			;a261
	ex af,af'			;a262
	add a,b			;a263
la264h:
	ld b,a			;a264
	and d			;a265
	dec h			;a266
	call po,0312ch		;a267
	call pe,0e400h		;a26a
	ld sp,02e2fh		;a26d
	inc l			;a270
	cpl			;a271
	ld l,02ah		;a272
	cpl			;a274
	ret pe			;a275
	ld hl,(0e400h)		;a276
	cpl			;a279
	dec l			;a27a
	inc l			;a27b
	ld hl,(02c2dh)		;a27c
	jr z,la2a8h		;a27f
	ret pe			;a281
	inc sp			;a282
	inc sp			;a283
	call po,03334h		;a284
	inc (hl)			;a287
	ld (hl),034h		;a288
	inc sp			;a28a
	jp po,02f31h		;a28b
	inc l			;a28e
	ld sp,02ce8h		;a28f
	jr z,la2b9h		;a292
	adc a,b			;a294
	nop			;a295
	ex af,af'			;a296
	add a,b			;a297
	ld h,(hl)			;a298
	and d			;a299
	dec b			;a29a
	defb 0fdh,0feh,000h	;illegal sequence		;a29b
	ld bc,00200h		;a29e
	rrca			;a2a1
	ld bc,00000h		;a2a2
	ld (bc),a			;a2a5
	nop			;a2a6
	xor c			;a2a7
la2a8h:
	and d			;a2a8
	add a,(hl)			;a2a9
	ld (bc),a			;a2aa
	add hl,de			;a2ab
	push hl			;a2ac
	ex (sp),hl			;a2ad
	ex (sp),hl			;a2ae
	push hl			;a2af
	ex (sp),hl			;a2b0
	ex (sp),hl			;a2b1
	adc a,b			;a2b2
	nop			;a2b3
	nop			;a2b4
	push hl			;a2b5
	ex (sp),hl			;a2b6
	ex (sp),hl			;a2b7
	ex (sp),hl			;a2b8
la2b9h:
	ex (sp),hl			;a2b9
	ex (sp),hl			;a2ba
	ex (sp),hl			;a2bb
	adc a,b			;a2bc
	nop			;a2bd
	inc b			;a2be
	add a,b			;a2bf
	xor e			;a2c0
	and d			;a2c1
	ld (bc),a			;a2c2
	nop			;a2c3
	ld bc,0040fh		;a2c4
	nop			;a2c7
	nop			;a2c8
	ld (bc),a			;a2c9
	nop			;a2ca
	rst 10h			;a2cb
	and d			;a2cc
	ld bc,00f01h		;a2cd
	ld (bc),a			;a2d0
	nop			;a2d1
	nop			;a2d2
	ld (bc),a			;a2d3
	ld bc,la34eh		;a2d4
	daa			;a2d7
	call pe,0e42bh		;a2d8
	inc l			;a2db
	ld l,0ech		;a2dc
	inc sp			;a2de
	call po,03735h		;a2df
	call pe,0e438h		;a2e2
	scf			;a2e5
	ld a,(033e6h)		;a2e6
	ld l,02bh		;a2e9
	inc l			;a2eb
	call pe,0e42bh		;a2ec
la2efh:
	add hl,hl			;a2ef
	inc l			;a2f0
	call pe,0e42eh		;a2f1
	jr nc,la322h		;a2f4
	call pe,0e42bh		;a2f6
	add hl,hl			;a2f9
	inc l			;a2fa
	jp pe,0e433h		;a2fb
	jr nc,$+48		;a2fe
	inc sp			;a300
	jr nc,$+48		;a301
	inc sp			;a303
	dec (hl)			;a304
	scf			;a305
	call pe,0e600h		;a306
	jr c,la2efh		;a309
	scf			;a30b
	jr c,$+60		;a30c
	inc a			;a30e
	ld a,(03738h)		;a30f
	ld a,(03738h)		;a312
	dec (hl)			;a315
	jr c,la34fh		;a316
la318h:
	dec (hl)			;a318
	inc sp			;a319
	dec (hl)			;a31a
	call pe,0e437h		;a31b
	dec (hl)			;a31e
	jr c,$-24		;a31f
	scf			;a321
la322h:
	dec (hl)			;a322
	inc sp			;a323
	dec (hl)			;a324
	defb 0edh;next byte illegal after ed		;a325
	inc sp			;a326
	call pe,0e431h		;a327
	jr nc,$+48		;a32a
	call pe,0e42bh		;a32c
	inc l			;a32f
	ld l,0ech		;a330
	jr nc,la318h		;a332
	ld l,031h		;a334
	ret pe			;a336
	ld l,02ch		;a337
	call pe,0e42bh		;a339
	add hl,hl			;a33c
	inc l			;a33d
	call pe,0e42bh		;a33e
	add hl,hl			;a341
	dec h			;a342
	call pe,0e627h		;a343
	add hl,hl			;a346
	call pe,0e42bh		;a347
	inc l			;a34a
	add a,b			;a34b
	rst 10h			;a34c
	and d			;a34d
la34eh:
	add a,l			;a34e
la34fh:
	ld (bc),a			;a34f
	rrca			;a350
	call po,0e61bh		;a351
	ld d,0e4h		;a354
	add hl,de			;a356
	xor 018h		;a357
	jp po,0e416h		;a359
	inc de			;a35c
	rrca			;a35d
	call po,0e61bh		;a35e
	ld d,0e4h		;a361
	add hl,de			;a363
	xor 018h		;a364
	jp po,0e416h		;a366
	ld (l5081h),hl		;a369
	and e			;a36c
	add a,l			;a36d
	ld (bc),a			;a36e
	dec c			;a36f
	call po,0e619h		;a370
	inc d			;a373
	call po,0ee17h		;a374
	ld d,0e2h		;a377
	inc d			;a379
	call po,00d11h		;a37a
	call po,0e619h		;a37d
	inc d			;a380
	call po,0ee17h		;a381
	ld d,0e2h		;a384
	inc d			;a386
	call po,08120h		;a387
	ld l,a			;a38a
	and e			;a38b
	add a,b			;a38c
	ld c,(hl)			;a38d
	and e			;a38e
	inc bc			;a38f
	nop			;a390
	ld bc,0020fh		;a391
	nop			;a394
	nop			;a395
	ld (bc),a			;a396
	nop			;a397
	xor (hl)			;a398
	and e			;a399
	ld bc,00e01h		;a39a
	inc bc			;a39d
	nop			;a39e
	nop			;a39f
	ld (bc),a			;a3a0
	ld bc,la3dah		;a3a1
	ld (bc),a			;a3a4
	ld bc,0020fh		;a3a5
	nop			;a3a8
	nop			;a3a9
	ld (bc),a			;a3aa
	ld (bc),a			;a3ab
	ei			;a3ac
	and e			;a3ad
	inc l			;a3ae
	xor 02eh		;a3af
	jp po,0e42ch		;a3b1
	ld hl,(02927h)		;a3b4
	ld hl,(02ae6h)		;a3b7
	xor 02eh		;a3ba
	jp po,0e42ch		;a3bc
	ld hl,(02e2fh)		;a3bf
	inc l			;a3c2
	and 02ch		;a3c3
	xor 02eh		;a3c5
	jp po,0e42ch		;a3c7
	ld hl,(02927h)		;a3ca
	ld hl,(02ce6h)		;a3cd
	call po,03129h		;a3d0
	jp po,02e30h		;a3d3
	inc l			;a3d6
	ld sp,082e8h		;a3d7
la3dah:
	add a,l			;a3da
	inc bc			;a3db
	add hl,de			;a3dc
	jp po,0201dh		;a3dd
	dec h			;a3e0
	add hl,hl			;a3e1
	inc l			;a3e2
	ld sp,01b35h		;a3e3
	inc hl			;a3e6
	daa			;a3e7
	ld hl,(0332fh)		;a3e8
	ld (hl),03bh		;a3eb
	add a,c			;a3ed
	call c,03da3h		;a3ee
	inc a			;a3f1
	ld a,(03638h)		;a3f2
	dec (hl)			;a3f5
	inc sp			;a3f6
	ld sp,0e83dh		;a3f7
	add a,d			;a3fa
	add a,l			;a3fb
	inc bc			;a3fc
	dec c			;a3fd
	call po,00d19h		;a3fe
	add hl,de			;a401
	dec bc			;a402
	rla			;a403
	dec bc			;a404
	rla			;a405
	add a,c			;a406
	defb 0fdh,0a3h,00dh	;illegal sequence		;a407
	add hl,de			;a40a
	jr nz,la421h		;a40b
	dec c			;a40d
	ret pe			;a40e
	add a,d			;a40f
	ld (bc),a			;a410
	nop			;a411
	ld bc,0020eh		;a412
	nop			;a415
	nop			;a416
	ld (bc),a			;a417
	nop			;a418
	dec h			;a419
	and h			;a41a
	ld bc,00f01h		;a41b
	ld (bc),a			;a41e
	nop			;a41f
	nop			;a420
la421h:
	ld (bc),a			;a421
	ld bc,0a449h		;a422
	dec h			;a425
	call po,02520h		;a426
	daa			;a429
	jr z,la44ch		;a42a
	jr z,$+44		;a42c
	inc l			;a42e
	ld hl,(02a28h)		;a42f
	jr z,la45bh		;a432
	dec h			;a434
	jr nz,la45ch		;a435
	jr nz,la45eh		;a437
	daa			;a439
	jr z,la45ch		;a43a
	jr z,$+44		;a43c
	inc l			;a43e
	ld hl,(02d2fh)		;a43f
	inc l			;a442
	ld hl,(02728h)		;a443
	dec h			;a446
	jp pe,01982h		;a447
	ret pe			;a44a
	rla			;a44b
la44ch:
	dec d			;a44c
	inc d			;a44d
	add hl,de			;a44e
	rla			;a44f
	dec d			;a450
	inc d			;a451
	add hl,de			;a452
	jp pe,00382h		;a453
	nop			;a456
	ld bc,0020eh		;a457
	nop			;a45a
la45bh:
	nop			;a45b
la45ch:
	ld (bc),a			;a45c
	nop			;a45d
la45eh:
	ld (hl),h			;a45e
	and h			;a45f
	ld bc,00e01h		;a460
	ld (bc),a			;a463
	nop			;a464
	nop			;a465
	ld (bc),a			;a466
	ld bc,la49dh		;a467
	ld (bc),a			;a46a
	ld bc,0020fh		;a46b
	nop			;a46e
	nop			;a46f
	ld (bc),a			;a470
	ld (bc),a			;a471
	add a,0a4h		;a472
	daa			;a474
	ex (sp),hl			;a475
	daa			;a476
	daa			;a477
	dec hl			;a478
	and 033h		;a479
	ld l,02ch		;a47b
	ex (sp),hl			;a47d
	inc l			;a47e
	inc l			;a47f
	ld sp,035e6h		;a480
	ld sp,0ee33h		;a483
	dec (hl)			;a486
	jp po,0e833h		;a487
la48ah:
	ld l,0e6h		;a48a
	ld sp,033eeh		;a48c
	jp po,0e831h		;a48f
	inc l			;a492
	and 02eh		;a493
	xor 030h		;a495
	jp po,0ec2eh		;a497
	add a,b			;a49a
	ld (hl),h			;a49b
	and h			;a49c
la49dh:
	ld (022e3h),hl		;a49d
	ld (0e627h),hl		;a4a0
la4a3h:
	dec hl			;a4a3
	daa			;a4a4
	jr nz,la48ah		;a4a5
	jr nz,la4c9h		;a4a7
	dec h			;a4a9
	and 029h		;a4aa
	dec h			;a4ac
	daa			;a4ad
	xor 029h		;a4ae
la4b0h:
	jp po,0e827h		;a4b0
	ld (025e6h),hl		;a4b3
	xor 027h		;a4b6
	jp po,0e825h		;a4b8
	jr nz,la4a3h		;a4bb
	ld (027eeh),hl		;a4bd
	jp po,0ec22h		;a4c0
	add a,b			;a4c3
	sbc a,l			;a4c4
	and h			;a4c5
	add a,l			;a4c6
	ld (bc),a			;a4c7
	rrca			;a4c8
la4c9h:
	ex (sp),hl			;a4c9
	nop			;a4ca
	rrca			;a4cb
	rrca			;a4cc
	nop			;a4cd
	rrca			;a4ce
	rrca			;a4cf
	nop			;a4d0
	rrca			;a4d1
	rrca			;a4d2
	nop			;a4d3
	rrca			;a4d4
	dec c			;a4d5
	nop			;a4d6
	dec c			;a4d7
	dec c			;a4d8
	nop			;a4d9
	dec c			;a4da
	dec c			;a4db
	nop			;a4dc
	dec c			;a4dd
	dec c			;a4de
	nop			;a4df
	dec c			;a4e0
	add a,c			;a4e1
	ret z			;a4e2
	and h			;a4e3
	rrca			;a4e4
	ex (sp),hl			;a4e5
	nop			;a4e6
	rrca			;a4e7
	rrca			;a4e8
	nop			;a4e9
	rrca			;a4ea
	rrca			;a4eb
	nop			;a4ec
	rrca			;a4ed
	rrca			;a4ee
	nop			;a4ef
la4f0h:
	rrca			;a4f0
	add a,b			;a4f1
	add a,0a4h		;a4f2
	ld bc,00304h		;a4f4
	rrca			;a4f7
	nop			;a4f8
	nop			;a4f9
	nop			;a4fa
	ld bc,0ff02h		;a4fb
	and h			;a4fe
	adc a,b			;a4ff
	inc b			;a500
	ld h,b			;a501
	add a,(hl)			;a502
	inc c			;a503
	adc a,c			;a504
	inc bc			;a505
	rst 38h			;a506
	jr nz,la4f0h		;a507
	add a,d			;a509
	ld bc,00104h		;a50a
	rrca			;a50d
	nop			;a50e
	nop			;a50f
	nop			;a510
	ld bc,01502h		;a511
	and l			;a514
	adc a,c			;a515
	add a,d			;a516
	rst 38h			;a517
	ld d,d			;a518
	call po,00182h		;a519
	inc b			;a51c
	inc bc			;a51d
	rrca			;a51e
	nop			;a51f
	nop			;a520
	nop			;a521
	ld bc,02602h		;a522
	and l			;a525
	adc a,b			;a526
	inc b			;a527
	jr la4b0h		;a528
	inc c			;a52a
	adc a,c			;a52b
	add a,h			;a52c
	jr nz,la535h		;a52d
	call pe,00182h		;a52f
	inc b			;a532
	ld b,00fh		;a533
la535h:
	nop			;a535
	nop			;a536
	nop			;a537
	ld bc,03c02h		;a538
	and l			;a53b
	adc a,b			;a53c
	inc b			;a53d
	jr nc,la4c9h		;a53e
	add a,d			;a540
	add a,b			;a541
	ld sp,082e8h		;a542
	ld bc,00103h		;a545
	inc c			;a548
	nop			;a549
	nop			;a54a
	nop			;a54b
	ld bc,05002h		;a54c
	and l			;a54f
	adc a,c			;a550
	add a,d			;a551
	rst 38h			;a552
	add hl,de			;a553
	call po,05380h		;a554
	and l			;a557
	ld bc,00103h		;a558
	ld a,(bc)			;a55b
	nop			;a55c
	nop			;a55d
	nop			;a55e
	ld bc,l6302h		;a55f
	and l			;a562
	adc a,c			;a563
	add a,d			;a564
	rst 38h			;a565
	adc a,b			;a566
	inc b			;a567
	ld b,b			;a568
	add hl,de			;a569
	call po,sub_698ah		;a56a
	and l			;a56d
	add a,d			;a56e
	inc bc			;a56f
	nop			;a570
	ld bc,0020fh		;a571
	nop			;a574
	nop			;a575
	ld (bc),a			;a576
	nop			;a577
	adc a,(hl)			;a578
	and l			;a579
	ld bc,00c01h		;a57a
	ld (bc),a			;a57d
	nop			;a57e
	nop			;a57f
	ld (bc),a			;a580
	ld bc,la5feh		;a581
	ld (bc),a			;a584
	ld bc,0030eh		;a585
	nop			;a588
	nop			;a589
	ld (bc),a			;a58a
	ld (bc),a			;a58b
	ld c,l			;a58c
	and (hl)			;a58d
	dec (hl)			;a58e
	call po,03836h		;a58f
	and 036h		;a592
	call po,0e635h		;a594
	ld (hl),0e4h		;a597
	dec a			;a599
	ret pe			;a59a
	jr c,$-24		;a59b
	dec a			;a59d
	dec (hl)			;a59e
	call po,03836h		;a59f
	and 036h		;a5a2
	call po,0e635h		;a5a4
la5a7h:
	ld (hl),0e4h		;a5a7
	dec a			;a5a9
	ret pe			;a5aa
	nop			;a5ab
	ld b,h			;a5ac
	call po,0e642h		;a5ad
	ld b,c			;a5b0
	call po,sub_423fh		;a5b1
	ld b,c			;a5b4
	dec a			;a5b5
	ccf			;a5b6
	ret pe			;a5b7
	dec sp			;a5b8
	and 03fh		;a5b9
	dec a			;a5bb
	call po,0e63bh		;a5bc
	ld a,(038e4h)		;a5bf
	dec sp			;a5c2
	ld a,(03836h)		;a5c3
	ret pe			;a5c6
	nop			;a5c7
	and 03ah		;a5c8
	inc a			;a5ca
	ret pe			;a5cb
	dec a			;a5cc
	and 03fh		;a5cd
	ld b,d			;a5cf
	ld b,c			;a5d0
	ccf			;a5d1
	dec a			;a5d2
la5d3h:
	ld b,c			;a5d3
	call po,03d3fh		;a5d4
	inc a			;a5d7
	ccf			;a5d8
	dec a			;a5d9
	inc a			;a5da
	ld a,(0e83fh)		;a5db
	nop			;a5de
	ld b,d			;a5df
	ex (sp),hl			;a5e0
	ld b,d			;a5e1
	ld b,d			;a5e2
	ld b,d			;a5e3
	and 042h		;a5e4
	call po,03f41h		;a5e6
	dec a			;a5e9
	ld b,c			;a5ea
	ret pe			;a5eb
	dec a			;a5ec
	and 041h		;a5ed
	ccf			;a5ef
	call po,03c3dh		;a5f0
	ld a,(03c3dh)		;a5f3
	ld a,(03836h)		;a5f6
	ret pe			;a5f9
	nop			;a5fa
	add a,b			;a5fb
	adc a,(hl)			;a5fc
	and l			;a5fd
la5feh:
	add a,l			;a5fe
	ld (bc),a			;a5ff
	add a,e			;a600
	nop			;a601
	add a,a			;a602
	ld l,(hl)			;a603
	and (hl)			;a604
	ld sp,031e3h		;a605
	ld sp,0e431h		;a608
	nop			;a60b
	inc sp			;a60c
	and 035h		;a60d
	ld sp,031e3h		;a60f
	ld sp,0e431h		;a612
	nop			;a615
	cpl			;a616
	and 033h		;a617
	ld sp,031e3h		;a619
	ld sp,0e431h		;a61c
	nop			;a61f
	inc sp			;a620
	and 035h		;a621
	ld sp,000e8h		;a623
	dec (hl)			;a626
	ex (sp),hl			;a627
	dec (hl)			;a628
	dec (hl)			;a629
	dec (hl)			;a62a
	call po,03600h		;a62b
	and 038h		;a62e
	dec (hl)			;a630
	ex (sp),hl			;a631
	dec (hl)			;a632
	dec (hl)			;a633
	dec (hl)			;a634
	call po,03300h		;a635
	and 036h		;a638
	dec (hl)			;a63a
	ex (sp),hl			;a63b
	dec (hl)			;a63c
	dec (hl)			;a63d
	dec (hl)			;a63e
	call po,03600h		;a63f
	and 038h		;a642
	dec (hl)			;a644
	ret pe			;a645
	nop			;a646
	add a,c			;a647
	ld (bc),a			;a648
	and (hl)			;a649
	add a,b			;a64a
	cp 0a5h		;a64b
	add a,l			;a64d
	djnz la5d3h		;a64e
	nop			;a650
	add a,a			;a651
	ld (hl),b			;a652
	and (hl)			;a653
	dec c			;a654
	call po,0e219h		;a655
	add hl,de			;a658
	dec c			;a659
	call po,0e219h		;a65a
	add hl,de			;a65d
	dec bc			;a65e
	call po,0e217h		;a65f
	rla			;a662
	dec bc			;a663
	call po,0e217h		;a664
	rla			;a667
	add a,c			;a668
	ld d,c			;a669
	and (hl)			;a66a
	add a,b			;a66b
	ld c,l			;a66c
	and (hl)			;a66d
	ei			;a66e
	nop			;a66f
	nop			;a670
	nop			;a671
	nop			;a672
	nop			;a673
	nop			;a674
	nop			;a675
	nop			;a676
	ei			;a677
	nop			;a678
	nop			;a679
	nop			;a67a
	nop			;a67b
	nop			;a67c
	nop			;a67d
	nop			;a67e
	nop			;a67f
	ld bc,00104h		;a680
	rrca			;a683
	nop			;a684
	nop			;a685
	nop			;a686
	ld bc,l8b02h		;a687
	and (hl)			;a68a
	adc a,c			;a68b
	ld bc,063ffh		;a68c
	ex (sp),hl			;a68f
	add a,d			;a690
	ld b,002h		;a691
	nop			;a693
	inc bc			;a694
	nop			;a695
	inc b			;a696
	nop			;a697
	ld (bc),a			;a698
	ld b,c			;a699
	rrca			;a69a
	ld (bc),a			;a69b
	nop			;a69c
	nop			;a69d
	ld (bc),a			;a69e
	nop			;a69f
	or (hl)			;a6a0
	and (hl)			;a6a1
	inc bc			;a6a2
	ld b,c			;a6a3
	rrca			;a6a4
	ld (bc),a			;a6a5
	nop			;a6a6
	nop			;a6a7
	ld (bc),a			;a6a8
	ld bc,la6c0h		;a6a9
	inc b			;a6ac
	ld b,c			;a6ad
	rrca			;a6ae
	ld (bc),a			;a6af
	nop			;a6b0
	nop			;a6b1
	ld (bc),a			;a6b2
	ld (bc),a			;a6b3
	jp z,028a6h		;a6b4
	jp po,02729h		;a6b7
	inc l			;a6ba
	ld hl,(02e29h)		;a6bb
	ret pe			;a6be
	add a,d			;a6bf
la6c0h:
	daa			;a6c0
	jp po,02425h		;a6c1
	add hl,hl			;a6c4
	daa			;a6c5
la6c6h:
	dec h			;a6c6
	daa			;a6c7
	ret pe			;a6c8
	add a,d			;a6c9
	ccf			;a6ca
	jp po,03c3eh		;a6cb
	ld b,c			;a6ce
	ccf			;a6cf
	ld a,043h		;a6d0
	ret pe			;a6d2
	add a,d			;a6d3
	dec b			;a6d4
	ld (bc),a			;a6d5
	nop			;a6d6
	inc bc			;a6d7
	nop			;a6d8
	inc b			;a6d9
	nop			;a6da
	inc bc			;a6db
	ld b,c			;a6dc
	rrca			;a6dd
	dec b			;a6de
	nop			;a6df
	nop			;a6e0
	ld (bc),a			;a6e1
	nop			;a6e2
	rst 28h			;a6e3
	and (hl)			;a6e4
	inc b			;a6e5
	ld b,c			;a6e6
	rrca			;a6e7
	dec b			;a6e8
	nop			;a6e9
	nop			;a6ea
	ld (bc),a			;a6eb
	ld bc,la6f9h		;a6ec
	dec (hl)			;a6ef
	call po,02c31h		;a6f0
	inc sp			;a6f3
	jr nc,$+46		;a6f4
	ld (082ech),a		;a6f6
la6f9h:
	ld sp,030efh		;a6f9
	ld l,0ech		;a6fc
	add a,d			;a6fe
	ld (bc),a			;a6ff
	nop			;a700
	ld bc,0040fh		;a701
	nop			;a704
	nop			;a705
	ld (bc),a			;a706
	nop			;a707
	inc d			;a708
	and a			;a709
	ld bc,00f01h		;a70a
	ld (bc),a			;a70d
	nop			;a70e
	nop			;a70f
	ld (bc),a			;a710
	ld bc,la738h		;a711
	ld hl,020e4h		;a714
	inc hl			;a717
	ld (02728h),hl		;a718
	nop			;a71b
	daa			;a71c
	ld hl,020e4h		;a71d
	inc hl			;a720
	ld (02728h),hl		;a721
	nop			;a724
	daa			;a725
	ld hl,(02beah)		;a726
	call po,0ec28h		;a729
	nop			;a72c
	call po,0ec2eh		;a72d
	dec l			;a730
	call po,02f2eh		;a731
	jp pe,01480h		;a734
	and a			;a737
la738h:
	add a,l			;a738
	inc c			;a739
	add a,e			;a73a
	nop			;a73b
	add a,a			;a73c
	ld c,d			;a73d
	and a			;a73e
	inc e			;a73f
	call po,01c10h		;a740
	djnz la6c6h		;a743
	inc a			;a745
	and a			;a746
	add a,b			;a747
	jr c,$-87		;a748
	nop			;a74a
	ld bc,0ff00h		;a74b
	nop			;a74e
	ld bc,0ff00h		;a74f
	nop			;a752
	nop			;a753
	nop			;a754
	nop			;a755
	inc bc			;a756
	nop			;a757
	ld bc,0020fh		;a758
	nop			;a75b
	nop			;a75c
	ld (bc),a			;a75d
	nop			;a75e
	ld (hl),l			;a75f
	and a			;a760
	ld bc,00d01h		;a761
	ld (bc),a			;a764
	nop			;a765
	nop			;a766
	ld (bc),a			;a767
	ld bc,la80dh		;a768
	ld (bc),a			;a76b
	ld bc,0030fh		;a76c
	nop			;a76f
	nop			;a770
	ld (bc),a			;a771
	ld (bc),a			;a772
	ld d,b			;a773
	xor b			;a774
	dec h			;a775
	call po,0282ch		;a776
	and 02fh		;a779
	ld hl,(0ea2ch)		;a77b
	dec h			;a77e
	call po,0282ch		;a77f
	and 02fh		;a782
	inc l			;a784
	inc sp			;a785
	jp pe,0e234h		;a786
	nop			;a789
	inc sp			;a78a
la78bh:
	nop			;a78b
	ld sp,038e6h		;a78c
	ld sp,0e234h		;a78f
	nop			;a792
	inc sp			;a793
	nop			;a794
	ld sp,038e6h		;a795
	ld sp,0e234h		;a798
	nop			;a79b
	inc sp			;a79c
	nop			;a79d
	ld sp,038e6h		;a79e
	ld sp,0e434h		;a7a1
	inc sp			;a7a4
	ld sp,02e30h		;a7a5
	inc l			;a7a8
	ld l,030h		;a7a9
	ld sp,000e2h		;a7ab
	inc (hl)			;a7ae
	nop			;a7af
	ld sp,038e6h		;a7b0
	ld sp,0e231h		;a7b3
	nop			;a7b6
	inc sp			;a7b7
	nop			;a7b8
	ld sp,038e6h		;a7b9
	ld sp,0e231h		;a7bc
	nop			;a7bf
	inc (hl)			;a7c0
	nop			;a7c1
	ld sp,038e6h		;a7c2
	ld sp,0e83bh		;a7c5
	jr c,$+63		;a7c8
	jp po,03b00h		;a7ca
	nop			;a7cd
	ld a,(03800h)		;a7ce
	nop			;a7d1
	ld (hl),000h		;a7d2
	inc (hl)			;a7d4
	nop			;a7d5
	ld (hl),000h		;a7d6
	jr c,la7dah		;a7d8
la7dah:
	dec sp			;a7da
	nop			;a7db
	ld a,(03800h)		;a7dc
	nop			;a7df
	ld (hl),000h		;a7e0
	inc (hl)			;a7e2
	nop			;a7e3
	inc sp			;a7e4
	nop			;a7e5
	inc (hl)			;a7e6
	nop			;a7e7
	ld (hl),000h		;a7e8
	add hl,sp			;a7ea
	nop			;a7eb
	jr c,la7eeh		;a7ec
la7eeh:
	ld (hl),000h		;a7ee
	inc (hl)			;a7f0
	nop			;a7f1
	inc sp			;a7f2
	nop			;a7f3
	ld sp,03300h		;a7f4
	nop			;a7f7
	inc (hl)			;a7f8
	nop			;a7f9
	inc sp			;a7fa
	nop			;a7fb
	ld sp,03000h		;a7fc
	nop			;a7ff
la800h:
	ld l,000h		;a800
	ld sp,02e30h		;a802
	inc l			;a805
	jr nc,la836h		;a806
	inc l			;a808
	jr z,la78bh		;a809
	ld (hl),l			;a80b
	and a			;a80c
la80dh:
	dec h			;a80d
	jp po,02525h		;a80e
	dec h			;a811
	dec h			;a812
	call po,02525h		;a813
	jp po,02525h		;a816
	dec h			;a819
	dec h			;a81a
	call po,02825h		;a81b
	jp po,02828h		;a81e
	jr z,la84bh		;a821
	call po,02828h		;a823
	jp po,02828h		;a826
	jr z,$+42		;a829
	call po,02d28h		;a82b
	jp po,02d2dh		;a82e
	dec l			;a831
	dec l			;a832
	call po,02d2dh		;a833
la836h:
	jp po,02d2dh		;a836
	dec l			;a839
	dec l			;a83a
	call po,02c2dh		;a83b
	jp po,02c2ch		;a83e
	inc l			;a841
	inc l			;a842
	call po,02c2ch		;a843
	jp po,02c2ch		;a846
	inc l			;a849
	inc l			;a84a
la84bh:
	call po,sub_802ch		;a84b
	dec c			;a84e
	xor b			;a84f
	add hl,de			;a850
	call po,01920h		;a851
	jr nz,la86fh		;a854
	jr nz,$+27		;a856
	jr nz,$+25		;a858
	ld e,017h		;a85a
	ld e,017h		;a85c
	ld e,017h		;a85e
	ld e,015h		;a860
	inc e			;a862
	dec d			;a863
	inc e			;a864
	dec d			;a865
	inc e			;a866
	dec d			;a867
	inc e			;a868
	inc d			;a869
	dec de			;a86a
	inc d			;a86b
	dec de			;a86c
	inc d			;a86d
	dec de			;a86e
la86fh:
	inc d			;a86f
	jp po,01420h		;a870
	jr nz,$-126		;a873
	ld d,b			;a875
	xor b			;a876
	inc bc			;a877
	nop			;a878
	ld bc,0040fh		;a879
	nop			;a87c
	nop			;a87d
	ld (bc),a			;a87e
	nop			;a87f
	sub (hl)			;a880
	xor b			;a881
	ld bc,00e01h		;a882
	ld (bc),a			;a885
	nop			;a886
	call p,00102h		;a887
	sub (hl)			;a88a
	xor b			;a88b
	ld (bc),a			;a88c
	ld bc,0020ch		;a88d
	nop			;a890
	nop			;a891
	ld (bc),a			;a892
	ld (bc),a			;a893
	xor b			;a894
	xor b			;a895
	dec h			;a896
	and 020h		;a897
	inc hl			;a899
	nop			;a89a
	call po,0e221h		;a89b
	jr nz,$+35		;a89e
	ret p			;a8a0
	inc e			;a8a1
	jp po,0e61fh		;a8a2
	dec de			;a8a5
	call pe,02082h		;a8a6
	jp po,0202ch		;a8a9
	inc l			;a8ac
	dec de			;a8ad
	daa			;a8ae
	dec de			;a8af
	daa			;a8b0
	ld e,02ah		;a8b1
	ld e,02ah		;a8b3
	ld e,02ah		;a8b5
	inc e			;a8b7
	dec de			;a8b8
	inc e			;a8b9
	jr z,la8d8h		;a8ba
	jr z,la8dah		;a8bc
	rla			;a8be
	ld a,(de)			;a8bf
	ld h,01ah		;a8c0
	ld h,016h		;a8c2
	ld (02216h),hl		;a8c4
	ld d,022h		;a8c7
	ld d,022h		;a8c9
	ld d,022h		;a8cb
	ld d,0e6h		;a8cd
	add a,d			;a8cf
	inc bc			;a8d0
	nop			;a8d1
	ld bc,0020fh		;a8d2
	nop			;a8d5
	nop			;a8d6
	ld (bc),a			;a8d7
la8d8h:
	nop			;a8d8
	rst 28h			;a8d9
la8dah:
	xor b			;a8da
	ld bc,00f01h		;a8db
	ld (bc),a			;a8de
	nop			;a8df
	nop			;a8e0
	ld (bc),a			;a8e1
	ld bc,0a8f9h		;a8e2
	ld (bc),a			;a8e5
	ld bc,0020fh		;a8e6
	nop			;a8e9
	nop			;a8ea
	ld (bc),a			;a8eb
	ld (bc),a			;a8ec
	ld a,(bc)			;a8ed
	xor c			;a8ee
	dec (hl)			;a8ef
	call po,03533h		;a8f0
	and 031h		;a8f3
	inc sp			;a8f5
	dec (hl)			;a8f6
	jp pe,03182h		;a8f7
	call po,03130h		;a8fa
	and 02eh		;a8fd
la8ffh:
	jp po,03130h		;a8ff
	inc sp			;a902
	dec (hl)			;a903
	ld (hl),035h		;a904
	ld (hl),031h		;a906
	jp pe,02082h		;a908
	call po,0202ch		;a90b
	inc l			;a90e
	ld e,02ah		;a90f
	jr nz,la93fh		;a911
	jr c,la8ffh		;a913
	add a,h			;a915
	rlca			;a916
	adc a,e			;a917
	inc bc			;a918
	nop			;a919
	ld bc,0020fh		;a91a
	nop			;a91d
	nop			;a91e
	ld (bc),a			;a91f
	nop			;a920
	scf			;a921
	xor c			;a922
	ld bc,00b01h		;a923
	ld (bc),a			;a926
	nop			;a927
	nop			;a928
	ld (bc),a			;a929
	ld bc,la975h		;a92a
	ld (bc),a			;a92d
	ld bc,0020bh		;a92e
	nop			;a931
	nop			;a932
	ld (bc),a			;a933
	ld (bc),a			;a934
	sub l			;a935
	xor c			;a936
	dec h			;a937
	jp po,02000h		;a938
	dec h			;a93b
	call po,03129h		;a93c
la93fh:
	jp po,02c30h		;a93f
	rst 28h			;a942
	nop			;a943
	jp po,0e227h		;a944
	nop			;a947
	inc hl			;a948
	daa			;a949
	call po,0332ah		;a94a
	jp po,02f31h		;a94d
	rst 28h			;a950
	nop			;a951
	jp po,03100h		;a952
	nop			;a955
	inc l			;a956
	ld sp,035e4h		;a957
	jr c,la992h		;a95a
	dec (hl)			;a95c
	ld sp,0e200h		;a95d
	cpl			;a960
	nop			;a961
	ld hl,(0e42fh)		;a962
	inc sp			;a965
	ld (hl),035h		;a966
	inc sp			;a968
	cpl			;a969
	ld sp,0292ch		;a96a
	inc l			;a96d
	cpl			;a96e
	ld hl,(02a27h)		;a96f
	add a,b			;a972
	scf			;a973
	xor c			;a974
la975h:
	add a,l			;a975
	ld a,(bc)			;a976
	add a,e			;a977
	nop			;a978
	add a,a			;a979
	adc a,e			;a97a
	xor c			;a97b
	inc l			;a97c
	jp po,03129h		;a97d
	inc l			;a980
	dec (hl)			;a981
	ld sp,0292ch		;a982
	add a,c			;a985
	ld a,c			;a986
	xor c			;a987
	add a,b			;a988
	ld (hl),l			;a989
	xor c			;a98a
	cp 002h		;a98b
	nop			;a98d
	cp 000h		;a98e
	ld (bc),a			;a990
	nop			;a991
la992h:
	cp 000h		;a992
	nop			;a994
	add a,l			;a995
	ld a,(bc)			;a996
	add a,e			;a997
	nop			;a998
	add a,a			;a999
	adc a,e			;a99a
	xor c			;a99b
	add hl,de			;a99c
	jp po,01919h		;a99d
	dec h			;a9a0
	add hl,de			;a9a1
	add hl,de			;a9a2
	add hl,de			;a9a3
	dec h			;a9a4
	add a,c			;a9a5
	sbc a,c			;a9a6
	xor c			;a9a7
	add a,b			;a9a8
	sub l			;a9a9
	xor c			;a9aa
	inc bc			;a9ab
	nop			;a9ac
	ld bc,0020fh		;a9ad
	nop			;a9b0
	nop			;a9b1
	ld (bc),a			;a9b2
	nop			;a9b3
	jp z,001a9h		;a9b4
	ld bc,0030eh		;a9b7
	nop			;a9ba
	nop			;a9bb
	ld (bc),a			;a9bc
	ld bc,laa0eh		;a9bd
	ld (bc),a			;a9c0
	ld bc,0020eh		;a9c1
	nop			;a9c4
	nop			;a9c5
	ld (bc),a			;a9c6
	ld (bc),a			;a9c7
	inc a			;a9c8
	xor d			;a9c9
	nop			;a9ca
	call po,0312ch		;a9cb
la9ceh:
	inc sp			;a9ce
	dec (hl)			;a9cf
	inc sp			;a9d0
	ld (hl),035h		;a9d1
	nop			;a9d3
la9d4h:
	ld hl,(0312fh)		;a9d4
	inc sp			;a9d7
	ld sp,03334h		;a9d8
	nop			;a9db
	inc l			;a9dc
	ld sp,03533h		;a9dd
	inc sp			;a9e0
	ld (hl),035h		;a9e1
la9e3h:
	jr c,la9d4h		;a9e3
	inc sp			;a9e5
	call po,0e833h		;a9e6
	nop			;a9e9
	call po,03635h		;a9ea
	jr c,$+60		;a9ed
	jr c,laa2ch		;a9ef
	dec sp			;a9f1
	jr c,la9e3h		;a9f2
	ld (hl),0e2h		;a9f4
	dec (hl)			;a9f6
	ld (hl),0efh		;a9f7
	jr c,$-26		;a9f9
	ld (hl),0efh		;a9fb
	dec (hl)			;a9fd
	call po,0ef35h		;a9fe
	ld (hl),0e4h		;aa01
	dec (hl)			;aa03
	rst 28h			;aa04
	inc sp			;aa05
	call po,0ef33h		;aa06
	cpl			;aa09
	call po,0ea31h		;aa0a
	add a,d			;aa0d
laa0eh:
	add a,l			;aa0e
	ld (bc),a			;aa0f
	dec h			;aa10
	call po,02525h		;aa11
	dec h			;aa14
	dec h			;aa15
	dec h			;aa16
	dec h			;aa17
	dec h			;aa18
	inc hl			;aa19
	inc hl			;aa1a
	inc hl			;aa1b
	inc hl			;aa1c
	inc hl			;aa1d
	inc hl			;aa1e
	inc hl			;aa1f
	inc hl			;aa20
	add a,c			;aa21
	djnz la9ceh		;aa22
	add a,l			;aa24
laa25h:
	ld (bc),a			;aa25
	jr nz,$+34		;aa26
	jr nz,laa4ah		;aa28
	jr nz,laa4ch		;aa2a
laa2ch:
	jr nz,laa4eh		;aa2c
	ld e,01eh		;aa2e
	ld e,01eh		;aa30
	ld e,01eh		;aa32
	ld e,01eh		;aa34
	add a,c			;aa36
	ld h,0aah		;aa37
	jr nz,laa25h		;aa39
	add a,d			;aa3b
	add a,l			;aa3c
	inc b			;aa3d
	add hl,de			;aa3e
	and 019h		;aa3f
	xor 014h		;aa41
	jp po,0e419h		;aa43
	add hl,de			;aa46
	jr nz,$+27		;aa47
	rla			;aa49
laa4ah:
	and 017h		;aa4a
laa4ch:
	xor 012h		;aa4c
laa4eh:
	jp po,0e417h		;aa4e
	rla			;aa51
	ld e,017h		;aa52
	add a,c			;aa54
	ld a,0aah		;aa55
	add hl,de			;aa57
	jp pe,0ff82h		;aa58
	rst 38h			;aa5b
sub_aa5ch:
	ld l,a			;aa5c
	ld h,000h		;aa5d
	add hl,hl			;aa5f
	ld de,laa6ch		;aa60
	add hl,de			;aa63
	ld a,(hl)			;aa64
	inc hl			;aa65
	ld h,(hl)			;aa66
	ld l,a			;aa67
	ld (0e047h),hl		;aa68
	ret			;aa6b
laa6ch:
	ld c,h			;aa6c
	xor e			;aa6d
	ld c,(hl)			;aa6e
	xor e			;aa6f
	ld l,b			;aa70
	xor e			;aa71
	add a,d			;aa72
	xor e			;aa73
	sub d			;aa74
	xor e			;aa75
	sbc a,h			;aa76
	xor e			;aa77
	xor d			;aa78
	xor e			;aa79
	or h			;aa7a
	xor e			;aa7b
	cp (hl)			;aa7c
	xor e			;aa7d
	jp nz,0ceabh		;aa7e
	xor e			;aa81
	call c,0e4abh		;aa82
	xor e			;aa85
	cp 0abh		;aa86
	ld a,(bc)			;aa88
	xor h			;aa89
	ld a,(l4aach)		;aa8a
	xor h			;aa8d
	adc a,b			;aa8e
	xor h			;aa8f
	xor h			;aa90
	xor h			;aa91
	cp h			;aa92
	xor h			;aa93
	ret po			;aa94
	xor h			;aa95
	jp pe,0f0ach		;aa96
	xor h			;aa99
	jp m,018ach		;aa9a
	xor l			;aa9d
	ld hl,(030adh)		;aa9e
	xor l			;aaa1
	ld a,(l54adh)		;aaa2
	xor l			;aaa5
	add a,d			;aaa6
	xor l			;aaa7
	sub (hl)			;aaa8
	xor l			;aaa9
	and h			;aaaa
	xor l			;aaab
	or b			;aaac
	xor l			;aaad
	jp nz,012adh		;aaae
	xor (hl)			;aab1
	jr $-80		;aab2
	ld l,0aeh		;aab4
	ld a,(l4aach+2)		;aab6
	xor (hl)			;aab9
	ld c,(hl)			;aaba
	xor (hl)			;aabb
	ld l,b			;aabc
	xor (hl)			;aabd
	add a,d			;aabe
	xor (hl)			;aabf
	sbc a,b			;aac0
	xor (hl)			;aac1
	or h			;aac2
	xor (hl)			;aac3
	ret c			;aac4
	xor (hl)			;aac5
	ret po			;aac6
	xor (hl)			;aac7
	ret p			;aac8
	xor (hl)			;aac9
	inc e			;aaca
	xor a			;aacb
	ld d,b			;aacc
	xor a			;aacd
	ld e,d			;aace
	xor a			;aacf
	ld a,b			;aad0
	xor a			;aad1
	ret nz			;aad2
	xor a			;aad3
	sbc a,0afh		;aad4
	call p,004afh		;aad6
	or b			;aad9
	jr nz,$-78		;aada
	inc h			;aadc
	or b			;aadd
	ld l,0b0h		;aade
	inc (hl)			;aae0
	or b			;aae1
	ld a,0b0h		;aae2
	ld c,h			;aae4
	or b			;aae5
	ld d,h			;aae6
	or b			;aae7
	add a,b			;aae8
	or b			;aae9
	sbc a,b			;aaea
	or b			;aaeb
	sbc a,(hl)			;aaec
	or b			;aaed
	ret nc			;aaee
	or b			;aaef
	or 0b0h		;aaf0
	ld c,0b1h		;aaf2
	ld d,0b1h		;aaf4
	inc h			;aaf6
	or c			;aaf7
	inc (hl)			;aaf8
	or c			;aaf9
	ld d,b			;aafa
	or c			;aafb
	ld h,d			;aafc
	or c			;aafd
	ld (hl),h			;aafe
	or c			;aaff
	add a,b			;ab00
	or c			;ab01
	adc a,b			;ab02
	or c			;ab03
	sub h			;ab04
	or c			;ab05
	and (hl)			;ab06
	or c			;ab07
	or (hl)			;ab08
	or c			;ab09
	call p,00cb1h		;ab0a
	or d			;ab0d
	ld b,d			;ab0e
	or d			;ab0f
	ld d,h			;ab10
	or d			;ab11
	ld a,(hl)			;ab12
	or d			;ab13
	sbc a,(hl)			;ab14
	or d			;ab15
	or b			;ab16
	or d			;ab17
	call nz,0eeb2h		;ab18
	or d			;ab1b
	ex af,af'			;ab1c
	or e			;ab1d
	ld hl,(l42b3h)		;ab1e
	or e			;ab21
	ld l,h			;ab22
	or e			;ab23
	add a,(hl)			;ab24
	or e			;ab25
	and d			;ab26
	or e			;ab27
	xor (hl)			;ab28
	or e			;ab29
	ret nc			;ab2a
	or e			;ab2b
	ret po			;ab2c
	or e			;ab2d
	jp m,02cb3h		;ab2e
	or h			;ab31
	ld c,(hl)			;ab32
	or h			;ab33
	ld d,h			;ab34
	or h			;ab35
	ld a,(hl)			;ab36
	or h			;ab37
	sbc a,b			;ab38
	or h			;ab39
	sbc a,h			;ab3a
	or h			;ab3b
	cp (hl)			;ab3c
	or h			;ab3d
	and 0b4h		;ab3e
	ret p			;ab40
	or h			;ab41
	inc d			;ab42
	or l			;ab43
	ld hl,(l48b5h)		;ab44
	or l			;ab47
	ld d,d			;ab48
	or l			;ab49
	ld l,d			;ab4a
	or l			;ab4b
	nop			;ab4c
	nop			;ab4d
	nop			;ab4e
	inc c			;ab4f
	inc bc			;ab50
	ld (02342h),hl		;ab51
	ld b,l			;ab54
	inc hl			;ab55
	inc bc			;ab56
	dec h			;ab57
	inc c			;ab58
	ld h,04bh		;ab59
	daa			;ab5b
	ld c,(hl)			;ab5c
	daa			;ab5d
	inc c			;ab5e
	add hl,hl			;ab5f
	dec b			;ab60
	inc l			;ab61
	ld b,h			;ab62
	dec l			;ab63
	ld b,a			;ab64
	dec l			;ab65
	dec b			;ab66
	cpl			;ab67
	nop			;ab68
	inc c			;ab69
lab6ah:
	inc bc			;ab6a
	jr nz,labcfh		;ab6b
	ld hl,02340h		;ab6d
	inc c			;ab70
	jr nz,laba1h		;ab71
	ld hl,02350h		;ab73
	ld b,b			;ab76
	dec hl			;ab77
	ld hl,0032dh		;ab78
	cpl			;ab7b
	ld d,b			;ab7c
	dec hl			;ab7d
	ld l,a			;ab7e
	dec l			;ab7f
	inc c			;ab80
	cpl			;ab81
	nop			;ab82
	rlca			;ab83
	ld b,053h		;ab84
	ld b,l			;ab86
	ld (hl),h			;ab87
	ld c,e			;ab88
	ld (hl),h			;ab89
	ld b,05bh		;ab8a
	ld c,b			;ab8c
	dec h			;ab8d
	ld b,a			;ab8e
	jr z,labdah		;ab8f
	jr z,lab95h		;ab91
	rlca			;ab93
	rla			;ab94
lab95h:
	ld a,(bc)			;ab95
	ld a,(de)			;ab96
	ld (bc),a			;ab97
	add hl,bc			;ab98
	ld c,b			;ab99
	ld c,b			;ab9a
	ld c,c			;ab9b
	nop			;ab9c
	ld b,005h		;ab9d
	dec d			;ab9f
	dec bc			;aba0
laba1h:
	dec d			;aba1
	dec b			;aba2
	ld a,(de)			;aba3
	dec bc			;aba4
	ld a,(de)			;aba5
	ld b,h			;aba6
	daa			;aba7
	ld c,h			;aba8
	daa			;aba9
	nop			;abaa
	inc b			;abab
	ld bc,00e11h		;abac
	ld (de),a			;abaf
	ld bc,00e1eh		;abb0
	inc e			;abb3
	nop			;abb4
	inc b			;abb5
	add hl,bc			;abb6
	ld d,007h		;abb7
	dec h			;abb9
	ld h,036h		;abba
	ld b,019h		;abbc
	ld bc,0006fh		;abbe
	nop			;abc1
	nop			;abc2
	dec b			;abc3
	ld b,l			;abc4
	ld d,l			;abc5
	ld c,e			;abc6
	ld d,l			;abc7
	ld b,(hl)			;abc8
	ld hl,(02a4ah)		;abc9
	rlca			;abcc
	inc a			;abcd
	nop			;abce
labcfh:
	ld b,04ch		;abcf
	inc sp			;abd1
	dec c			;abd2
	ld d,005h		;abd3
	scf			;abd5
	ex af,af'			;abd6
	jr labdbh		;abd7
	dec a			;abd9
labdah:
	dec b			;abda
labdbh:
	inc e			;abdb
	nop			;abdc
	inc bc			;abdd
	rlca			;abde
	ld e,009h		;abdf
	ld e,007h		;abe1
	ccf			;abe3
	inc b			;abe4
	ex af,af'			;abe5
	inc d			;abe6
	ex af,af'			;abe7
	dec de			;abe8
	ld b,l			;abe9
	daa			;abea
	ld c,e			;abeb
	daa			;abec
	ex af,af'			;abed
	ld h,a			;abee
	ld d,d			;abef
	add hl,hl			;abf0
	ld d,d			;abf1
	inc hl			;abf2
	ld e,c			;abf3
	ld l,l			;abf4
	ld e,c			;abf5
	ld h,035h		;abf6
	ld l,d			;abf8
	dec h			;abf9
	ld l,b			;abfa
	jr c,lac26h		;abfb
	add hl,hl			;abfd
	nop			;abfe
	dec b			;abff
	ld l,b			;ac00
	ld b,e			;ac01
	add hl,hl			;ac02
	inc (hl)			;ac03
	ld b,l			;ac04
	ld h,a			;ac05
	ld c,e			;ac06
	ld h,a			;ac07
	ld b,058h		;ac08
	nop			;ac0a
	rla			;ac0b
	nop			;ac0c
	djnz lac0fh		;ac0d
lac0fh:
	ld (de),a			;ac0f
	nop			;ac10
	inc d			;ac11
	nop			;ac12
	ld d,000h		;ac13
	jr lac17h		;ac15
lac17h:
	ld a,(de)			;ac17
	nop			;ac18
	inc e			;ac19
	nop			;ac1a
	ld e,010h		;ac1b
	djnz lac2fh		;ac1d
	ld (de),a			;ac1f
	djnz $+22		;ac20
	djnz $+24		;ac22
	djnz lac3eh		;ac24
lac26h:
	djnz lac42h		;ac26
	djnz lac46h		;ac28
	djnz lac4ah		;ac2a
	ld (bc),a			;ac2c
	djnz lac33h		;ac2d
lac2fh:
	djnz lac37h		;ac2f
	djnz lac3bh		;ac31
lac33h:
	djnz $+12		;ac33
	djnz lac43h		;ac35
lac37h:
	djnz lac47h		;ac37
	djnz lac3ch		;ac39
lac3bh:
	rlca			;ac3b
lac3ch:
	jr c,lac44h		;ac3c
lac3eh:
	ld bc,l400fh		;ac3e
	pop af			;ac41
lac42h:
	nop			;ac42
lac43h:
	nop			;ac43
lac44h:
	ld d,b			;ac44
	ret po			;ac45
lac46h:
	ld (bc),a			;ac46
lac47h:
	sbc hl,bc		;ac47
	or d			;ac49
lac4ah:
	inc b			;ac4a
	ld bc,00126h		;ac4b
	daa			;ac4e
	add hl,bc			;ac4f
	ld h,009h		;ac50
	daa			;ac52
	ld a,(de)			;ac53
	dec b			;ac54
	ld h,b			;ac55
	inc bc			;ac56
	and c			;ac57
	ld (bc),a			;ac58
	jp nz,0e301h		;ac59
	ld bc,00614h		;ac5c
	ld b,h			;ac5f
	ld c,014h		;ac60
	ld b,b			;ac62
	ld d,l			;ac63
	ld b,a			;ac64
	ld b,l			;ac65
	ld c,b			;ac66
	ld b,l			;ac67
	ld c,a			;ac68
	ld d,l			;ac69
	ld bc,00e19h		;ac6a
	add hl,de			;ac6d
	ld b,049h		;ac6e
	ld bc,001eah		;ac70
	ld c,e			;ac73
	dec bc			;ac74
	ld c,e			;ac75
	ld (bc),a			;ac76
	ld c,h			;ac77
	ld a,(bc)			;ac78
	ld c,h			;ac79
	inc bc			;ac7a
	ld c,l			;ac7b
	add hl,bc			;ac7c
	ld c,l			;ac7d
	ld (bc),a			;ac7e
	ld e,00dh		;ac7f
	ld e,005h		;ac81
	ld l,(hl)			;ac83
	nop			;ac84
	ld c,a			;ac85
	inc c			;ac86
	ld c,a			;ac87
	nop			;ac88
	ld de,01100h		;ac89
	ld (bc),a			;ac8c
	ld de,01104h		;ac8d
	ld b,011h		;ac90
	ex af,af'			;ac92
	ld de,0110ah		;ac93
	inc c			;ac96
	ld de,0110eh		;ac97
	djnz lacadh		;ac9a
	ld bc,00313h		;ac9c
	inc de			;ac9f
	dec b			;aca0
	inc de			;aca1
	rlca			;aca2
	inc de			;aca3
	add hl,bc			;aca4
	inc de			;aca5
	dec bc			;aca6
	inc de			;aca7
	dec c			;aca8
	inc de			;aca9
	rrca			;acaa
	inc de			;acab
	nop			;acac
lacadh:
	rlca			;acad
	ld b,l			;acae
	inc hl			;acaf
	ld h,a			;acb0
	ld hl,02108h		;acb1
	ld hl,(l6b22h)		;acb4
	inc (hl)			;acb7
	ld c,b			;acb8
	ld (hl),008h		;acb9
	ld a,(de)			;acbb
	ld de,00040h		;acbc
	ld b,c			;acbf
	nop			;acc0
	ld b,d			;acc1
	nop			;acc2
	ld b,e			;acc3
	nop			;acc4
	ld b,h			;acc5
	nop			;acc6
	ld b,l			;acc7
	nop			;acc8
	ld b,(hl)			;acc9
	nop			;acca
	ld b,a			;accb
	nop			;accc
	ld c,b			;accd
	nop			;acce
	ld c,c			;accf
	nop			;acd0
	ld c,d			;acd1
	nop			;acd2
	ld c,e			;acd3
	nop			;acd4
	ld c,h			;acd5
	nop			;acd6
	ld c,l			;acd7
	nop			;acd8
	ld c,(hl)			;acd9
	nop			;acda
	ld c,a			;acdb
	nop			;acdc
	ld d,b			;acdd
	nop			;acde
	nop			;acdf
	nop			;ace0
	inc b			;ace1
	ld b,056h		;ace2
	ld b,057h		;ace4
	ld b,058h		;ace6
	ld b,059h		;ace8
	nop			;acea
	ld (bc),a			;aceb
	ld b,h			;acec
	ld h,l			;aced
	ld c,h			;acee
	ld h,l			;acef
	ld (bc),a			;acf0
	rlca			;acf1
	rla			;acf2
	dec b			;acf3
	add hl,de			;acf4
	ld (bc),a			;acf5
	inc b			;acf6
	inc de			;acf7
	dec c			;acf8
	ld d,005h		;acf9
	inc b			;acfb
	ld de,0130eh		;acfc
	dec b			;acff
	ld d,003h		;ad00
	dec de			;ad02
	ld c,01eh		;ad03
	add hl,bc			;ad05
	dec bc			;ad06
	ld de,01402h		;ad07
	ex af,af'			;ad0a
	inc d			;ad0b
	dec c			;ad0c
	ld d,005h		;ad0d
	add hl,de			;ad0f
	ld a,(bc)			;ad10
	add hl,de			;ad11
	ld b,01ch		;ad12
	dec c			;ad14
	inc e			;ad15
	ld (bc),a			;ad16
	dec e			;ad17
	nop			;ad18
	ex af,af'			;ad19
	ld b,a			;ad1a
	ld b,e			;ad1b
	ld c,c			;ad1c
	ld b,e			;ad1d
	inc b			;ad1e
	ld (hl),00ah		;ad1f
	ld (hl),047h		;ad21
	ld c,b			;ad23
	ld c,c			;ad24
	ld c,b			;ad25
	inc b			;ad26
	jr c,lad33h		;ad27
	jr c,lad2bh		;ad29
lad2bh:
	ld (bc),a			;ad2b
	ld h,055h		;ad2c
	ld l,d			;ad2e
	ld d,l			;ad2f
	nop			;ad30
	inc b			;ad31
	rlca			;ad32
lad33h:
	dec (hl)			;ad33
	rlca			;ad34
	add hl,sp			;ad35
	ld b,(hl)			;ad36
	ld (hl),04ah		;ad37
	ld (hl),003h		;ad39
	inc b			;ad3b
	ld a,(de)			;ad3c
	ex af,af'			;ad3d
	ld a,(de)			;ad3e
	inc c			;ad3f
	ld a,(de)			;ad40
	add hl,bc			;ad41
	inc bc			;ad42
	dec (hl)			;ad43
	ld b,h			;ad44
	ld (hl),047h		;ad45
	ld (hl),049h		;ad47
	ld (hl),008h		;ad49
	dec d			;ad4b
	ex af,af'			;ad4c
	rla			;ad4d
	inc c			;ad4e
	dec h			;ad4f
	ld c,e			;ad50
	ld b,l			;ad51
	inc c			;ad52
	rla			;ad53
	nop			;ad54
	ld d,001h		;ad55
	ld sp,03241h		;ad57
	ld bc,00535h		;ad5a
	ld sp,03505h		;ad5d
	ld b,l			;ad60
	ld (03247h),a		;ad61
	ld c,c			;ad64
	ld b,d			;ad65
	ld c,l			;ad66
	ld b,d			;ad67
	add hl,hl			;ad68
	ld sp,0216dh		;ad69
	inc bc			;ad6c
	daa			;ad6d
	inc bc			;ad6e
	add hl,hl			;ad6f
	ld b,d			;ad70
	ld d,a			;ad71
	inc b			;ad72
	jr ladbbh		;ad73
	ld d,a			;ad75
	ld c,b			;ad76
	ld d,a			;ad77
	add hl,bc			;ad78
	dec hl			;ad79
	ld c,h			;ad7a
	ld d,a			;ad7b
	dec c			;ad7c
	daa			;ad7d
	dec c			;ad7e
	add hl,hl			;ad7f
	dec c			;ad80
	dec hl			;ad81
	ld (bc),a			;ad82
	ld bc,00f14h		;ad83
	inc e			;ad86
	rlca			;ad87
	dec b			;ad88
	ld (de),a			;ad89
	inc c			;ad8a
	ld de,01706h		;ad8b
	ex af,af'			;ad8e
	rla			;ad8f
	ld a,(bc)			;ad90
	rla			;ad91
	inc b			;ad92
	inc e			;ad93
	inc c			;ad94
	dec e			;ad95
	ld bc,01f00h		;ad96
	dec b			;ad99
	inc b			;ad9a
	inc d			;ad9b
	add hl,bc			;ad9c
	inc de			;ad9d
	rlca			;ad9e
	jr ladadh		;ad9f
	rla			;ada1
	ld a,(bc)			;ada2
	inc e			;ada3
	nop			;ada4
	dec b			;ada5
	ld (bc),a			;ada6
	inc d			;ada7
	dec c			;ada8
	ld de,01905h		;ada9
	inc c			;adac
ladadh:
	ld a,(de)			;adad
	inc bc			;adae
	ld e,001h		;adaf
	ld a,(bc)			;adb1
	inc e			;adb2
	rlca			;adb3
	nop			;adb4
	inc d			;adb5
	inc bc			;adb6
	ld (de),a			;adb7
	ld b,014h		;adb8
	dec b			;adba
ladbbh:
	rla			;adbb
	ex af,af'			;adbc
	add hl,de			;adbd
	dec bc			;adbe
	ld a,(de)			;adbf
	ld c,01ah		;adc0
	inc b			;adc2
	ld bc,00162h		;adc3
	ld d,e			;adc6
	ld bc,00154h		;adc7
	dec (hl)			;adca
	inc hl			;adcb
	nop			;adcc
	nop			;adcd
	ld b,b			;adce
	pop af			;adcf
	ld d,b			;add0
	nop			;add1
	ld bc,0097fh		;add2
	ld a,a			;add5
	inc c			;add6
	ld de,01e0dh		;add7
	ld bc,0011bh		;adda
	scf			;addd
	ld b,h			;adde
	ld (hl),002h		;addf
	add hl,de			;ade1
	ld b,e			;ade2
	ld a,(07d02h)		;ade3
	ld c,e			;ade6
	inc l			;ade7
	inc c			;ade8
	inc l			;ade9
	ld c,l			;adea
	add hl,sp			;adeb
	ld b,l			;adec
	add hl,sp			;aded
	ld b,02bh		;adee
	ex af,af'			;adf0
	ld (0230bh),a		;adf1
	dec c			;adf4
	inc h			;adf5
	ld c,(hl)			;adf6
	ld (01409h),hl		;adf7
	ld a,(bc)			;adfa
	dec h			;adfb
	inc c			;adfc
	ld h,00eh		;adfd
	daa			;adff
	dec b			;ae00
	dec (hl)			;ae01
	ld b,a			;ae02
	inc hl			;ae03
	ex af,af'			;ae04
	ld d,009h		;ae05
	daa			;ae07
	dec bc			;ae08
	jr z,lae31h		;ae09
	daa			;ae0b
	rlca			;ae0c
	add hl,sp			;ae0d
	add hl,bc			;ae0e
	ld a,(l4b49h)		;ae0f
	nop			;ae12
	ld (bc),a			;ae13
	nop			;ae14
	add a,a			;ae15
	add hl,bc			;ae16
	add a,a			;ae17
	ld bc,03407h		;ae18
	add hl,bc			;ae1b
	nop			;ae1c
	rla			;ae1d
	ld (bc),a			;ae1e
	rla			;ae1f
	inc b			;ae20
	rla			;ae21
	ld b,017h		;ae22
	ex af,af'			;ae24
	rla			;ae25
	ld a,(bc)			;ae26
	rla			;ae27
	inc c			;ae28
	rla			;ae29
	ld c,017h		;ae2a
	djnz lae45h		;ae2c
	ld bc,04648h		;ae2e
lae31h:
	inc b			;ae31
	jr nz,lae94h		;ae32
	dec hl			;ae34
	ld l,d			;ae35
	ld (hl),b			;ae36
	ld h,b			;ae37
	ld h,l			;ae38
	ld l,d			;ae39
	inc bc			;ae3a
	ld b,a			;ae3b
	daa			;ae3c
	jr z,lae65h		;ae3d
	ld l,c			;ae3f
	jr z,$+6		;ae40
	nop			;ae42
	djnz lae55h		;ae43
lae45h:
	djnz lae47h		;ae45
lae47h:
	rra			;ae47
	djnz lae69h		;ae48
	nop			;ae4a
	ld bc,00048h		;ae4b
	ld bc,01207h		;ae4e
	dec bc			;ae51
	inc b			;ae52
	dec d			;ae53
	ld a,(bc)			;ae54
lae55h:
	dec d			;ae55
	dec b			;ae56
	inc h			;ae57
	ex af,af'			;ae58
	inc h			;ae59
	ld b,a			;ae5a
	ld (hl),l			;ae5b
	dec b			;ae5c
	ld e,h			;ae5d
	inc bc			;ae5e
	sbc a,l			;ae5f
	ld (bc),a			;ae60
	adc a,002h		;ae61
	rst 38h			;ae63
	rrca			;ae64
lae65h:
	ld l,010h		;ae65
	dec e			;ae67
	dec b			;ae68
lae69h:
	ld b,(hl)			;ae69
	ld b,c			;ae6a
	ld b,a			;ae6b
	ld b,d			;ae6c
	ld c,b			;ae6d
	ld d,c			;ae6e
	ld c,c			;ae6f
	ld b,d			;ae70
	ld c,d			;ae71
	ld b,c			;ae72
	rlca			;ae73
	ld c,b			;ae74
	add a,(hl)			;ae75
	dec b			;ae76
	ld a,(hl)			;ae77
	rlca			;ae78
	cpl			;ae79
	inc bc			;ae7a
	inc a			;ae7b
	dec bc			;ae7c
	inc a			;ae7d
	ld (bc),a			;ae7e
	ld e,l			;ae7f
	ld a,(bc)			;ae80
	ld e,l			;ae81
	ld (bc),a			;ae82
	ld b,017h		;ae83
	ld a,(bc)			;ae85
	rla			;ae86
	ex af,af'			;ae87
	nop			;ae88
	add a,b			;ae89
	add hl,bc			;ae8a
	add a,b			;ae8b
	nop			;ae8c
	adc a,a			;ae8d
	add hl,bc			;ae8e
	adc a,a			;ae8f
	ld c,b			;ae90
	ld b,b			;ae91
	ld b,a			;ae92
	inc sp			;ae93
lae94h:
	ld c,c			;ae94
	inc sp			;ae95
	ld c,b			;ae96
	or l			;ae97
	ld (bc),a			;ae98
	ld (bc),a			;ae99
	inc d			;ae9a
	inc c			;ae9b
	ld d,00bh		;ae9c
	ld b,(hl)			;ae9e
	ld sp,03148h		;ae9f
	ld b,a			;aea2
	ld b,c			;aea3
	inc bc			;aea4
	sub l			;aea5
	ld b,a			;aea6
	ld b,(hl)			;aea7
	inc b			;aea8
	add hl,sp			;aea9
	ld b,e			;aeaa
	ld a,(02d02h)		;aeab
	jr z,laeeah		;aeae
	ld l,h			;aeb0
	ld hl,(01b0dh)		;aeb1
	inc b			;aeb4
	dec c			;aeb5
	inc de			;aeb6
	dec c			;aeb7
	dec d			;aeb8
	ld (bc),a			;aeb9
	add hl,de			;aeba
	ld (bc),a			;aebb
	dec de			;aebc
	dec c			;aebd
	ld (bc),a			;aebe
	ld d,d			;aebf
	ld h,(hl)			;aec0
	ld b,e			;aec1
	inc b			;aec2
	inc d			;aec3
	ld c,b			;aec4
	ld d,d			;aec5
	ld l,e			;aec6
	inc (hl)			;aec7
	inc b			;aec8
	ld e,b			;aec9
	ld h,a			;aeca
	ld c,c			;aecb
	daa			;aecc
	dec hl			;aecd
	ld l,h			;aece
	jr c,$+15		;aecf
	jr z,laf21h		;aed1
	add hl,hl			;aed3
	ld l,l			;aed4
	dec hl			;aed5
	inc c			;aed6
	ld a,(de)			;aed7
	ld (bc),a			;aed8
	dec b			;aed9
	ld (de),a			;aeda
	dec bc			;aedb
	ld (de),a			;aedc
	ld bc,l5306h		;aedd
	ld bc,0d241h		;aee0
	ld b,000h		;aee3
	add a,b			;aee5
	ld b,b			;aee6
	pop af			;aee7
	ld b,e			;aee8
	pop de			;aee9
laeeah:
	ld b,l			;aeea
	jp po,0f147h		;aeeb
	nop			;aeee
	ld l,a			;aeef
	ld bc,03547h		;aef0
	inc d			;aef3
	inc bc			;aef4
	jr laefbh		;aef5
	add hl,hl			;aef7
	ld b,04ah		;aef8
	ld a,(bc)			;aefa
laefbh:
	add hl,hl			;aefb
	inc c			;aefc
	jr laf06h		;aefd
	add hl,hl			;aeff
	ld b,048h		;af00
	ld b,l			;af02
	ld h,046h		;af03
	dec (hl)			;af05
laf06h:
	ld c,c			;af06
	dec (hl)			;af07
	ld c,d			;af08
	ld h,064h		;af09
	ld b,h			;af0b
	ld h,e			;af0c
	inc h			;af0d
	ld (bc),a			;af0e
	inc de			;af0f
	dec b			;af10
	inc d			;af11
	dec b			;af12
	ld h,e			;af13
	ld a,(bc)			;af14
	inc d			;af15
	dec c			;af16
	inc de			;af17
	dec hl			;af18
	ld b,h			;af19
	ld c,h			;af1a
	inc h			;af1b
	ex af,af'			;af1c
	ld b,c			;af1d
	jp nc,0b342h		;af1e
laf21h:
	ld b,e			;af21
	or e			;af22
	ld b,h			;af23
	sub h			;af24
	ld c,e			;af25
	sub h			;af26
	ld c,h			;af27
	or e			;af28
	ld c,l			;af29
	or e			;af2a
	ld c,(hl)			;af2b
	jp nc,l4011h		;af2c
	nop			;af2f
	ld bc,00120h		;af30
	cpl			;af33
	inc bc			;af34
	ld hl,02e03h		;af35
	dec b			;af38
	ld (de),a			;af39
	dec b			;af3a
	dec e			;af3b
	ld b,(hl)			;af3c
	and e			;af3d
	ld d,b			;af3e
	nop			;af3f
	ld c,020h		;af40
	ld c,02fh		;af42
	inc c			;af44
	ld hl,02e0ch		;af45
	dec bc			;af48
	ld (de),a			;af49
	dec bc			;af4a
	dec e			;af4b
	ld c,d			;af4c
	and e			;af4d
	ld c,b			;af4e
	ld d,l			;af4f
	nop			;af50
	inc b			;af51
	ld b,b			;af52
	nop			;af53
	ld d,b			;af54
	nop			;af55
	ld bc,001f0h		;af56
	rst 38h			;af59
	ld (bc),a			;af5a
	ld h,e			;af5b
	ld c,b			;af5c
	ld l,h			;af5d
	ld c,b			;af5e
	inc c			;af5f
	nop			;af60
	jr nc,lafa3h		;af61
	ld hl,0200fh		;af63
	ld d,b			;af66
	ld hl,l9302h		;af67
	ld l,c			;af6a
	sub h			;af6b
	ld b,b			;af6c
	dec a			;af6d
	ld bc,l6e1fh		;af6e
	add a,h			;af71
	ld b,0ach		;af72
	ld d,b			;af74
	dec a			;af75
	ld c,02fh		;af76
	ld bc,03006h		;af78
	ld (03062h),hl		;af7b
	ld b,b			;af7e
	inc hl			;af7f
	ld bc,l4214h+1		;af80
	ld d,(hl)			;af83
	nop			;af84
	dec l			;af85
	ld h,d			;af86
	ld l,067h		;af87
	ld hl,01103h		;af89
	dec b			;af8c
	ld (de),a			;af8d
	ld b,h			;af8e
	ld b,d			;af8f
	dec h			;af90
	daa			;af91
	ld b,01ah		;af92
	ex af,af'			;af94
	dec de			;af95
	add hl,bc			;af96
	dec e			;af97
	ld b,(hl)			;af98
	inc a			;af99
	inc b			;af9a
	ld l,005h		;af9b
	rra			;af9d
	ld b,a			;af9e
	inc (hl)			;af9f
	ex af,af'			;afa0
	inc d			;afa1
	ld a,(bc)			;afa2
lafa3h:
	inc d			;afa3
	ld l,e			;afa4
	jr nc,lb010h		;afa5
	jr z,lafd2h		;afa7
	add hl,hl			;afa9
	inc c			;afaa
	dec de			;afab
	ld c,e			;afac
	ld c,h			;afad
	dec l			;afae
	dec l			;afaf
	djnz lafd0h		;afb0
	ld c,a			;afb2
	dec hl			;afb3
	ld c,019h		;afb4
	ld c,e			;afb6
	ld b,d			;afb7
	inc c			;afb8
	ld (de),a			;afb9
	ld (hl),b			;afba
	ld b,b			;afbb
	rrca			;afbc
	dec d			;afbd
	ld c,l			;afbe
	dec (hl)			;afbf
	ld bc,01708h		;afc0
	dec c			;afc3
	inc bc			;afc4
	ld d,b			;afc5
	ex af,af'			;afc6
	ld sp,0220bh		;afc7
	ld c,(hl)			;afca
	inc h			;afcb
	ld c,a			;afcc
	ld (hl),050h		;afcd
	ld c,c			;afcf
lafd0h:
	ld b,b			;afd0
	ld d,b			;afd1
lafd2h:
	ld b,c			;afd2
	dec (hl)			;afd3
	ld b,d			;afd4
	jr z,laffah		;afd5
	ld hl,(02c05h)		;afd7
	rlca			;afda
	dec a			;afdb
	ld a,(bc)			;afdc
	ld e,(hl)			;afdd
	ld bc,03448h		;afde
	add hl,bc			;afe1
	ld h,a			;afe2
	ld h,c			;afe3
	inc bc			;afe4
	rla			;afe5
	ex af,af'			;afe6
	ld (de),a			;afe7
	add hl,hl			;afe8
	ld h,c			;afe9
	dec c			;afea
	rla			;afeb
	ld l,b			;afec
	ld h,a			;afed
	inc b			;afee
	dec e			;afef
	add hl,hl			;aff0
	ld e,b			;aff1
	inc c			;aff2
	dec e			;aff3
	ld (bc),a			;aff4
	rlca			;aff5
	ld d,009h		;aff6
	ld d,005h		;aff8
laffah:
	nop			;affa
	ld d,b			;affb
	inc c			;affc
	ld d,b			;affd
	ld b,054h		;affe
	nop			;b000
	ld e,b			;b001
	inc c			;b002
	ld e,b			;b003
	ld bc,01b08h		;b004
	inc c			;b007
	rlca			;b008
	inc de			;b009
	add hl,bc			;b00a
	inc de			;b00b
	rlca			;b00c
	dec d			;b00d
	add hl,bc			;b00e
	dec d			;b00f
lb010h:
	rlca			;b010
	rla			;b011
	add hl,bc			;b012
	rla			;b013
	ld b,019h		;b014
	ld a,(bc)			;b016
	add hl,de			;b017
	dec b			;b018
	dec de			;b019
	dec bc			;b01a
	dec de			;b01b
	rlca			;b01c
	dec e			;b01d
	add hl,bc			;b01e
	dec e			;b01f
	ld bc,l5e06h		;b020
	nop			;b023
	inc b			;b024
	ld b,c			;b025
	dec sp			;b026
	ld b,d			;b027
	dec sp			;b028
	ld c,(hl)			;b029
	dec sp			;b02a
	ld c,a			;b02b
	dec sp			;b02c
	nop			;b02d
	ld (bc),a			;b02e
	jr nz,lb08ch		;b02f
	ld (hl),b			;b031
	ld e,e			;b032
	nop			;b033
	inc b			;b034
	rlca			;b035
	ld h,007h		;b036
	add hl,hl			;b038
	ld b,(hl)			;b039
	daa			;b03a
	ld c,c			;b03b
	daa			;b03c
	nop			;b03d
	ld b,005h		;b03e
	daa			;b040
	ld a,(bc)			;b041
	daa			;b042
	dec b			;b043
	add hl,hl			;b044
	ld a,(bc)			;b045
	add hl,hl			;b046
	dec b			;b047
	jr lb055h		;b048
	jr lb04ch		;b04a
lb04ch:
	inc bc			;b04c
	rlca			;b04d
	ld (hl),007h		;b04e
	scf			;b050
	rlca			;b051
	jr c,lb054h		;b052
lb054h:
	inc b			;b054
lb055h:
	nop			;b055
	inc h			;b056
	nop			;b057
	dec h			;b058
	ld c,024h		;b059
	ld c,025h		;b05b
	ld de,l7200h		;b05d
	add hl,bc			;b060
	ld (hl),d			;b061
	inc b			;b062
	dec (hl)			;b063
	add hl,bc			;b064
	dec (hl)			;b065
	nop			;b066
	ld b,a			;b067
	inc c			;b068
	ld b,a			;b069
	ld b,(hl)			;b06a
	ld d,(hl)			;b06b
	ld c,c			;b06c
	ld d,(hl)			;b06d
	ld b,h			;b06e
	jr c,lb0bch		;b06f
	jr c,lb0b8h		;b071
	add hl,hl			;b073
	ld c,d			;b074
	add hl,hl			;b075
	ld b,b			;b076
	ld l,b			;b077
	ld c,a			;b078
	ld l,b			;b079
	ld b,d			;b07a
	ld c,d			;b07b
	ld c,l			;b07c
	ld c,d			;b07d
	inc bc			;b07e
	xor l			;b07f
	inc bc			;b080
	ld b,d			;b081
	add hl,sp			;b082
	ld c,b			;b083
	add hl,sp			;b084
	ld c,(hl)			;b085
	add hl,sp			;b086
	ex af,af'			;b087
	ld b,b			;b088
	nop			;b089
	ld d,b			;b08a
	nop			;b08b
lb08ch:
	ld bc,0097fh		;b08c
	ld a,a			;b08f
	ld hl,l6f55h		;b090
	ld d,l			;b093
	ld l,b			;b094
	ld (hl),029h		;b095
	daa			;b097
	ld bc,0c16ch		;b098
	ld bc,0e16eh		;b09b
	inc bc			;b09e
	ld (bc),a			;b09f
	jr nz,$+9		;b0a0
	jr nz,lb0b1h		;b0a2
	jr nz,lb0bbh		;b0a4
	ld b,c			;b0a6
	ld hl,02147h		;b0a7
	ld c,l			;b0aa
	ld hl,02344h		;b0ab
	ld c,d			;b0ae
	inc hl			;b0af
	ld d,b			;b0b0
lb0b1h:
	inc hl			;b0b1
	ld b,c			;b0b2
	dec h			;b0b3
	ld b,a			;b0b4
	dec h			;b0b5
	ld c,l			;b0b6
	dec h			;b0b7
lb0b8h:
	ld b,h			;b0b8
	daa			;b0b9
	ld c,d			;b0ba
lb0bbh:
	daa			;b0bb
lb0bch:
	ld d,b			;b0bc
	daa			;b0bd
	ld b,c			;b0be
	add hl,hl			;b0bf
	ld b,a			;b0c0
	add hl,hl			;b0c1
	ld c,l			;b0c2
	add hl,hl			;b0c3
	ld b,h			;b0c4
	dec hl			;b0c5
	ld c,d			;b0c6
	dec hl			;b0c7
	ld d,b			;b0c8
	dec hl			;b0c9
	ld b,c			;b0ca
	dec l			;b0cb
	ld b,a			;b0cc
	dec l			;b0cd
	ld c,l			;b0ce
	dec l			;b0cf
	ex af,af'			;b0d0
	ld bc,00126h		;b0d1
	add hl,hl			;b0d4
	ld b,b			;b0d5
	daa			;b0d6
	ld b,e			;b0d7
	daa			;b0d8
	rlca			;b0d9
	inc l			;b0da
	rlca			;b0db
	cpl			;b0dc
	ld b,(hl)			;b0dd
	dec l			;b0de
	ld c,c			;b0df
	dec l			;b0e0
	ld a,(bc)			;b0e1
	nop			;b0e2
	inc b			;b0e3
	nop			;b0e4
	ld a,(bc)			;b0e5
	djnz lb0fch		;b0e6
	djnz lb104h		;b0e8
	ld b,l			;b0ea
	nop			;b0eb
	ld c,e			;b0ec
	nop			;b0ed
	dec l			;b0ee
	jr nc,lb160h		;b0ef
	jr nc,lb120h		;b0f1
	ld (hl),06fh		;b0f3
	ld (hl),002h		;b0f5
	ld a,(bc)			;b0f7
	inc l			;b0f8
	ld a,(bc)			;b0f9
	dec l			;b0fa
	add hl,bc			;b0fb
lb0fch:
	ex af,af'			;b0fc
	ld hl,0312ah		;b0fd
	ex af,af'			;b100
	inc de			;b101
	add hl,hl			;b102
	ld b,e			;b103
lb104h:
	ld b,a			;b104
	or c			;b105
	inc bc			;b106
	ld c,e			;b107
	ld (bc),a			;b108
	ld e,h			;b109
	ld (bc),a			;b10a
	ld e,l			;b10b
	inc bc			;b10c
	ld a,001h		;b10d
	ld b,043h		;b10f
	ld (bc),a			;b111
	ld bc,001f1h		;b112
	cp 003h		;b115
	ld b,03bh		;b117
	ld b,03ch		;b119
	ld b,03dh		;b11b
	inc bc			;b11d
	ld b,l			;b11e
	and (hl)			;b11f
lb120h:
	ld c,d			;b120
	and (hl)			;b121
	ld b,049h		;b122
	inc b			;b124
	inc b			;b125
	add a,b			;b126
	dec b			;b127
	ld h,c			;b128
	ld b,042h		;b129
	rlca			;b12b
	inc hl			;b12c
	inc bc			;b12d
	inc h			;b12e
	inc hl			;b12f
	ld l,e			;b130
	inc hl			;b131
	rlca			;b132
	dec h			;b133
	dec c			;b134
	inc c			;b135
	djnz lb142h		;b136
	ld hl,04206h		;b138
	inc b			;b13b
	inc hl			;b13c
	ld b,e			;b13d
	inc h			;b13e
	inc b			;b13f
	ld d,005h		;b140
lb142h:
	daa			;b142
	rlca			;b143
	jr c,lb150h		;b144
	add hl,hl			;b146
	inc l			;b147
	ld hl,(02c6dh)		;b148
	ld a,(bc)			;b14b
	ld l,008h		;b14c
	cpl			;b14e
	nop			;b14f
lb150h:
	dec b			;b150
	rlca			;b151
	add hl,sp			;b152
	ld b,05ah		;b153
	ld b,05bh		;b155
	ld b,05ch		;b157
	rlca			;b159
	dec a			;b15a
	inc bc			;b15b
	ld b,b			;b15c
	pop af			;b15d
	ld d,b			;b15e
	pop af			;b15f
lb160h:
	ld bc,004ffh		;b160
	ld b,012h		;b163
	ex af,af'			;b165
	dec d			;b166
	ld b,018h		;b167
	ex af,af'			;b169
	dec de			;b16a
	inc b			;b16b
	daa			;b16c
	ld sp,03466h		;b16d
	jr z,lb1a9h		;b170
	ld h,(hl)			;b172
	dec sp			;b173
	inc bc			;b174
	ld c,h			;b175
	dec sp			;b176
	ld d,b			;b177
	dec sp			;b178
	dec c			;b179
	inc a			;b17a
	ld (bc),a			;b17b
	ld l,d			;b17c
	ld e,d			;b17d
	dec bc			;b17e
	ld l,c			;b17f
	ld (bc),a			;b180
	ld c,b			;b181
	dec a			;b182
	rlca			;b183
	ld a,001h		;b184
	ld bc,004f8h		;b186
	add hl,bc			;b189
	ld (de),a			;b18a
	rlca			;b18b
	inc d			;b18c
	dec bc			;b18d
	inc d			;b18e
	add hl,bc			;b18f
	ld d,001h		;b190
	add hl,bc			;b192
	inc d			;b193
	inc b			;b194
	ld b,h			;b195
	dec (hl)			;b196
	ld c,d			;b197
	dec (hl)			;b198
	inc bc			;b199
	ld (hl),009h		;b19a
	ld (hl),004h		;b19c
	ld h,d			;b19e
	inc h			;b19f
	inc l			;b1a0
	inc h			;b1a1
	ld hl,l6d76h		;b1a2
	ld h,(hl)			;b1a5
	nop			;b1a6
	rlca			;b1a7
	ld b,l			;b1a8
lb1a9h:
	ld c,h			;b1a9
	ld c,e			;b1aa
	ld c,h			;b1ab
	ld b,(hl)			;b1ac
	ld l,04ah		;b1ad
	ld l,007h		;b1af
	ccf			;b1b1
	daa			;b1b2
	inc l			;b1b3
	add hl,bc			;b1b4
	inc e			;b1b5
	ld a,(bc)			;b1b6
	inc b			;b1b7
	djnz lb1cah		;b1b8
	djnz lb1c4h		;b1ba
	inc de			;b1bc
	inc b			;b1bd
	ld d,00ch		;b1be
	ld d,000h		;b1c0
	add hl,de			;b1c2
	inc c			;b1c3
lb1c4h:
	add hl,de			;b1c4
	djnz lb1e3h		;b1c5
	nop			;b1c7
	rra			;b1c8
	ex af,af'			;b1c9
lb1cah:
	rra			;b1ca
	inc d			;b1cb
	nop			;b1cc
	djnz lb1d7h		;b1cd
	djnz lb1ddh		;b1cf
	djnz lb1d3h		;b1d1
lb1d3h:
	inc de			;b1d3
	inc b			;b1d4
	inc de			;b1d5
	inc c			;b1d6
lb1d7h:
	inc de			;b1d7
	djnz lb1edh		;b1d8
	nop			;b1da
	ld d,008h		;b1db
lb1ddh:
	ld d,010h		;b1dd
	ld d,004h		;b1df
	add hl,de			;b1e1
	ex af,af'			;b1e2
lb1e3h:
	add hl,de			;b1e3
	djnz lb1ffh		;b1e4
	nop			;b1e6
	inc e			;b1e7
	inc b			;b1e8
	inc e			;b1e9
	ex af,af'			;b1ea
	inc e			;b1eb
	inc c			;b1ec
lb1edh:
	inc e			;b1ed
	inc b			;b1ee
	rra			;b1ef
	inc c			;b1f0
	rra			;b1f1
	djnz lb213h		;b1f2
	ld bc,0da02h		;b1f4
	ld a,(bc)			;b1f7
	ld b,b			;b1f8
	adc a,b			;b1f9
	ld d,b			;b1fa
	adc a,b			;b1fb
	ld bc,042f8h		;b1fc
lb1ffh:
	ld c,h			;b1ff
	ld b,h			;b200
	ld c,h			;b201
	ld b,(hl)			;b202
	ld c,h			;b203
	ld c,b			;b204
	ld c,h			;b205
	ld c,d			;b206
	ld c,h			;b207
	ld c,h			;b208
	ld c,h			;b209
	ld c,(hl)			;b20a
	ld c,h			;b20b
	djnz lb20fh		;b20c
	rra			;b20e
lb20fh:
	ld bc,0011dh		;b20f
	dec de			;b212
lb213h:
	inc bc			;b213
	dec de			;b214
	inc bc			;b215
	add hl,de			;b216
	dec b			;b217
	add hl,de			;b218
	dec b			;b219
	rla			;b21a
	rlca			;b21b
	rla			;b21c
	add hl,bc			;b21d
	rla			;b21e
	dec bc			;b21f
	rla			;b220
	dec bc			;b221
	add hl,de			;b222
	dec c			;b223
	add hl,de			;b224
	dec c			;b225
	dec de			;b226
	rrca			;b227
	dec de			;b228
	rrca			;b229
	dec e			;b22a
	rrca			;b22b
	rra			;b22c
	ld a,(bc)			;b22d
	ld b,e			;b22e
	dec a			;b22f
	ld b,l			;b230
	ld e,e			;b231
	ld b,a			;b232
	ld a,c			;b233
	ld c,c			;b234
	ld a,c			;b235
	ld c,e			;b236
	ld e,e			;b237
	ld c,l			;b238
	dec a			;b239
	rlca			;b23a
	add hl,sp			;b23b
	dec b			;b23c
	ld a,e			;b23d
	inc bc			;b23e
	cp l			;b23f
	inc bc			;b240
	cp a			;b241
	ld (bc),a			;b242
	dec b			;b243
	ld a,009h		;b244
	ld a,006h		;b246
	dec h			;b248
	add hl,sp			;b249
	ld l,e			;b24a
	add hl,sp			;b24b
	dec b			;b24c
	jr lb25ah		;b24d
	jr lb277h		;b24f
	scf			;b251
	ld l,d			;b252
	daa			;b253
	inc b			;b254
	rlca			;b255
	dec (hl)			;b256
	rlca			;b257
	ld (hl),006h		;b258
lb25ah:
	ld d,a			;b25a
	ld b,058h		;b25b
	djnz lb2a6h		;b25d
	jr nz,$+72		;b25f
	ld (02445h),hl		;b261
	ld b,h			;b264
	ld h,043h		;b265
	jr z,lb2abh		;b267
	ld hl,(02c41h)		;b269
	ld b,b			;b26c
	ld l,049h		;b26d
	jr nz,$+76		;b26f
	ld (0244bh),hl		;b271
	ld c,h			;b274
	ld h,04dh		;b275
lb277h:
	jr z,lb2c7h		;b277
	ld hl,(02c4fh)		;b279
	ld d,b			;b27c
	ld l,00fh		;b27d
	ex af,af'			;b27f
	inc de			;b280
	inc b			;b281
	inc d			;b282
	inc c			;b283
	inc d			;b284
	add hl,bc			;b285
	dec d			;b286
	inc c			;b287
	rla			;b288
	inc bc			;b289
	dec de			;b28a
	ex af,af'			;b28b
	dec e			;b28c
	daa			;b28d
	ld b,(hl)			;b28e
	ld a,(bc)			;b28f
	rla			;b290
	ld l,h			;b291
	ld hl,(02725h)		;b292
	ld h,(hl)			;b295
	add hl,hl			;b296
	rlca			;b297
	jr z,lb2e2h		;b298
	add hl,hl			;b29a
	rlca			;b29b
	dec de			;b29c
	nop			;b29d
	nop			;b29e
	ex af,af'			;b29f
	inc h			;b2a0
	sub e			;b2a1
	ld l,h			;b2a2
	sub e			;b2a3
	ld l,d			;b2a4
	ld (hl),e			;b2a5
lb2a6h:
	ld h,073h		;b2a6
	inc h			;b2a8
	ld (hl),l			;b2a9
	ld l,h			;b2aa
lb2abh:
	ld (hl),l			;b2ab
	ld l,b			;b2ac
	ld d,e			;b2ad
	ld l,h			;b2ae
	ld d,a			;b2af
	inc bc			;b2b0
	jr z,lb2e9h		;b2b1
	daa			;b2b3
	scf			;b2b4
	jr z,$+41		;b2b5
	ld b,067h		;b2b7
	add a,b			;b2b9
	ld hl,l6d78h		;b2ba
	ld l,b			;b2bd
	jr z,lb313h		;b2be
	ld h,a			;b2c0
	ld b,h			;b2c1
	dec h			;b2c2
	jr c,lb2c5h		;b2c3
lb2c5h:
	inc d			;b2c5
	ld b,(hl)			;b2c6
lb2c7h:
	jr nz,lb30eh		;b2c7
	ld b,b			;b2c9
	ld b,h			;b2ca
	ld b,d			;b2cb
	ld b,e			;b2cc
	ld d,h			;b2cd
	ld b,d			;b2ce
	add a,(hl)			;b2cf
	ld b,c			;b2d0
	ld a,c			;b2d1
	ld b,b			;b2d2
	dec a			;b2d3
	ld b,e			;b2d4
	dec hl			;b2d5
	ld b,h			;b2d6
	ld hl,(03945h)		;b2d7
	ld b,(hl)			;b2da
	jr c,lb324h		;b2db
	jr z,lb327h		;b2dd
	jr c,lb32ah		;b2df
	ld e,c			;b2e1
lb2e2h:
	ld c,d			;b2e2
	ld c,e			;b2e3
	ld c,e			;b2e4
	dec a			;b2e5
	ld c,h			;b2e6
	ld l,04dh		;b2e7
lb2e9h:
	dec a			;b2e9
	ld c,(hl)			;b2ea
	inc a			;b2eb
	ld c,a			;b2ec
	inc l			;b2ed
	nop			;b2ee
	inc c			;b2ef
	ld b,b			;b2f0
	call nz,0a641h		;b2f1
	ld b,d			;b2f4
	adc a,b			;b2f5
	ld b,e			;b2f6
	ld l,d			;b2f7
	ld b,h			;b2f8
	ld c,h			;b2f9
	ld b,l			;b2fa
	ld l,050h		;b2fb
	call nz,0a64fh		;b2fd
	ld c,(hl)			;b300
	adc a,b			;b301
	ld c,l			;b302
	ld l,d			;b303
	ld c,h			;b304
	ld c,h			;b305
	ld c,e			;b306
	ld l,005h		;b307
	dec bc			;b309
	ld b,d			;b30a
	ld bc,00b45h		;b30b
lb30eh:
	ld c,b			;b30e
	ld bc,00b4bh		;b30f
	ld c,(hl)			;b312
lb313h:
	dec bc			;b313
	nop			;b314
	nop			;b315
	ld bc,001f3h		;b316
	or 001h		;b319
	ld sp,hl			;b31b
	ld bc,000fch		;b31c
	rrca			;b31f
	ld d,b			;b320
	ld hl,02440h		;b321
lb324h:
	ld d,b			;b324
	daa			;b325
	ld b,b			;b326
lb327h:
	ld hl,(02d50h)		;b327
lb32ah:
	inc b			;b32a
	ld b,058h		;b32b
	ld b,059h		;b32d
	ld b,05ah		;b32f
	ld b,05bh		;b331
	rlca			;b333
	dec b			;b334
	halt			;b335
	ld b,h			;b336
	ld (hl),a			;b337
	ld c,h			;b338
	ld (hl),a			;b339
	dec b			;b33a
	dec a			;b33b
	add hl,bc			;b33c
	dec a			;b33d
	ld b,a			;b33e
	ld l,049h		;b33f
	ld l,000h		;b341
	inc d			;b343
	nop			;b344
	ld h,c			;b345
	nop			;b346
	ld h,d			;b347
	nop			;b348
	ld h,e			;b349
	nop			;b34a
	ld h,h			;b34b
	nop			;b34c
	ld h,l			;b34d
	rlca			;b34e
	and c			;b34f
	rlca			;b350
	and d			;b351
	rlca			;b352
	and e			;b353
	rlca			;b354
	and h			;b355
	rlca			;b356
	and l			;b357
	ld bc,001b7h		;b358
	cp b			;b35b
	ld bc,001b9h		;b35c
	cp d			;b35f
	ld bc,00dbbh		;b360
	ld b,a			;b363
	dec c			;b364
	ld c,b			;b365
	dec c			;b366
	ld c,c			;b367
	dec c			;b368
	ld c,d			;b369
	dec c			;b36a
	ld c,e			;b36b
	nop			;b36c
	inc c			;b36d
	rlca			;b36e
	inc sp			;b36f
	rlca			;b370
	scf			;b371
	inc b			;b372
	jr c,lb37fh		;b373
	jr c,lb37bh		;b375
	inc a			;b377
	ld a,(bc)			;b378
	inc a			;b379
	ld b,(hl)			;b37a
lb37bh:
	inc (hl)			;b37b
	ld c,d			;b37c
	inc (hl)			;b37d
	ld b,e			;b37e
lb37fh:
	add hl,sp			;b37f
	ld b,a			;b380
	add hl,sp			;b381
	ld c,c			;b382
	add hl,sp			;b383
	ld c,l			;b384
	add hl,sp			;b385
	ld b,004h		;b386
	djnz lb396h		;b388
	djnz lb38ch		;b38a
lb38ch:
	jr $+18		;b38c
	jr lb394h		;b38e
	ld e,00ch		;b390
	ld e,007h		;b392
lb394h:
	ld b,014h		;b394
lb396h:
	ld a,(bc)			;b396
	inc d			;b397
	inc b			;b398
	jr lb3a3h		;b399
	jr $+14		;b39b
	jr lb3a5h		;b39d
	dec de			;b39f
	ld a,(bc)			;b3a0
	dec de			;b3a1
	nop			;b3a2
lb3a3h:
	dec b			;b3a3
	ld h,l			;b3a4
lb3a5h:
	dec h			;b3a5
	dec hl			;b3a6
	dec h			;b3a7
	ld h,035h		;b3a8
	ld l,d			;b3aa
	dec h			;b3ab
	ld c,b			;b3ac
	ld d,a			;b3ad
	ex af,af'			;b3ae
	ld h,l			;b3af
	inc h			;b3b0
	ld h,024h		;b3b1
	dec b			;b3b3
	ld h,06ah		;b3b4
	inc h			;b3b6
	dec hl			;b3b7
	inc h			;b3b8
	ld a,(bc)			;b3b9
	ld h,067h		;b3ba
	daa			;b3bc
	ld b,039h		;b3bd
	ex af,af'			;b3bf
	ld h,l			;b3c0
	ld hl,02126h		;b3c1
	ld l,d			;b3c4
	ld hl,0212bh		;b3c5
	ld b,05bh		;b3c8
	rlca			;b3ca
	dec a			;b3cb
	ld b,01ch		;b3cc
	ld a,(bc)			;b3ce
	inc e			;b3cf
	nop			;b3d0
	rlca			;b3d1
	ld c,b			;b3d2
	and e			;b3d3
	ld h,a			;b3d4
	inc sp			;b3d5
	add hl,hl			;b3d6
	inc sp			;b3d7
	ld b,h			;b3d8
	ld h,04ch		;b3d9
	ld h,043h		;b3db
	ld c,b			;b3dd
	ld c,l			;b3de
	ld c,b			;b3df
	inc bc			;b3e0
	inc b			;b3e1
	sub h			;b3e2
	inc bc			;b3e3
	dec d			;b3e4
	dec c			;b3e5
	dec d			;b3e6
	add hl,bc			;b3e7
	inc b			;b3e8
	ld (hl),00ah		;b3e9
	ld (hl),003h		;b3eb
	ld d,a			;b3ed
	add hl,bc			;b3ee
	ld d,a			;b3ef
	inc bc			;b3f0
	cp b			;b3f1
	inc bc			;b3f2
	ld e,c			;b3f3
	add hl,bc			;b3f4
	ld e,c			;b3f5
	inc b			;b3f6
	ld a,(03a0ah)		;b3f7
	ex af,af'			;b3fa
	nop			;b3fb
	jr nz,lb40dh		;b3fc
	jr nz,lb400h		;b3fe
lb400h:
	cpl			;b400
	rrca			;b401
	cpl			;b402
	nop			;b403
	ld de,01110h		;b404
	nop			;b407
	ld e,010h		;b408
	ld e,010h		;b40a
	dec b			;b40c
lb40dh:
	ld (hl),b			;b40d
	dec b			;b40e
	ld a,a			;b40f
	ld b,b			;b410
	ld h,l			;b411
	ld d,b			;b412
	ld h,l			;b413
	ld h,e			;b414
	ld sp,0312dh		;b415
	ld l,a			;b418
	inc a			;b419
	ld hl,0043ch		;b41a
	ld de,01401h		;b41d
	inc c			;b420
	ld de,0140fh		;b421
	ld bc,0041bh		;b424
	ld e,00ch		;b427
	ld e,00fh		;b429
	dec de			;b42b
	ld b,022h		;b42c
	jr nz,lb45fh		;b42e
	ld hl,02226h		;b430
	ld (02727h),hl		;b433
	jr z,lb45bh		;b436
	ld l,00ah		;b438
	add hl,hl			;b43a
	ld hl,02423h		;b43b
	ld l,025h		;b43e
	add hl,hl			;b440
	ld h,025h		;b441
	ld hl,(02a2eh)		;b443
	ld hl,02a2bh		;b446
	dec hl			;b449
	daa			;b44a
	ld l,02fh		;b44b
	ld l,000h		;b44d
	ld (bc),a			;b44f
	nop			;b450
	add a,a			;b451
	ex af,af'			;b452
	sbc a,b			;b453
	ld b,00ch		;b454
	add hl,hl			;b456
	dec c			;b457
	jr lb4c0h		;b458
	scf			;b45a
lb45bh:
	ld h,a			;b45b
	ld b,a			;b45c
	ld l,b			;b45d
	ld b,a			;b45e
lb45fh:
	ex af,af'			;b45f
	jr z,$+16		;b460
	ld h,a			;b462
	ld b,e			;b463
	ld h,h			;b464
	scf			;b465
	ld b,d			;b466
	ld hl,(03c03h)		;b467
	ld h,a			;b46a
	ld a,(02969h)		;b46b
	ld hl,(00d39h)		;b46e
	dec hl			;b471
	ld (hl),b			;b472
	add hl,hl			;b473
	ld l,036h		;b474
	ld l,l			;b476
	ld h,02ah		;b477
	ld h,06ch		;b479
	inc sp			;b47b
	inc c			;b47c
	ld (de),a			;b47d
	inc b			;b47e
	nop			;b47f
	ld de,01110h		;b480
	nop			;b483
	rra			;b484
	djnz lb4a6h		;b485
	ex af,af'			;b487
	nop			;b488
	inc hl			;b489
	nop			;b48a
	dec l			;b48b
	rrca			;b48c
	inc hl			;b48d
	rrca			;b48e
	dec l			;b48f
	ld b,d			;b490
	ld hl,0214eh		;b491
	ld b,d			;b494
	ld l,04eh		;b495
	ld l,001h		;b497
	ld c,b			;b499
	nop			;b49a
	nop			;b49b
	rlca			;b49c
	ld b,l			;b49d
	add hl,sp			;b49e
	ld b,02ch		;b49f
	ld c,b			;b4a1
	ld hl,(02909h)		;b4a2
	ld c,e			;b4a5
lb4a6h:
	ld hl,(01c0ch)		;b4a6
	ld c,l			;b4a9
	ld hl,(04209h)		;b4aa
	dec (hl)			;b4ad
	ld b,l			;b4ae
	dec (hl)			;b4af
	ld c,b			;b4b0
	dec (hl)			;b4b1
	inc bc			;b4b2
	inc h			;b4b3
	ld b,024h		;b4b4
	inc bc			;b4b6
	jr z,lb4bfh		;b4b7
	jr z,$+5		;b4b9
	ld d,006h		;b4bb
	ld d,000h		;b4bd
lb4bfh:
	inc de			;b4bf
lb4c0h:
	rlca			;b4c0
	ld sp,02247h		;b4c1
	ld b,(hl)			;b4c4
	inc sp			;b4c5
	inc b			;b4c6
	inc hl			;b4c7
	ld h,e			;b4c8
	inc sp			;b4c9
	ld hl,00436h		;b4ca
	jr z,lb514h		;b4cd
	ld a,c			;b4cf
	ld b,02fh		;b4d0
	ld c,b			;b4d2
	ld c,h			;b4d3
	ld c,l			;b4d4
	ld c,h			;b4d5
lb4d6h:
	add hl,bc			;b4d6
	ld c,l			;b4d7
	ld c,02fh		;b4d8
	ld d,b			;b4da
	and (hl)			;b4db
	rrca			;b4dc
	dec d			;b4dd
	ld c,(hl)			;b4de
	ld (hl),049h		;b4df
	ld h,e			;b4e1
	ld a,(bc)			;b4e2
	ld c,b			;b4e3
	ld a,(bc)			;b4e4
	ld (de),a			;b4e5
	nop			;b4e6
	inc b			;b4e7
	nop			;b4e8
	dec c			;b4e9
	nop			;b4ea
	rrca			;b4eb
	djnz lb50bh		;b4ec
	djnz lb50fh		;b4ee
	ld b,001h		;b4f0
	ld (03301h),a		;b4f2
	ld bc,00c24h		;b4f5
	ld (0330ch),a		;b4f8
	dec c			;b4fb
	inc h			;b4fc
	dec bc			;b4fd
	ld bc,00b50h		;b4fe
	ld d,b			;b501
	ld b,b			;b502
	ld b,c			;b503
	ld d,b			;b504
	ld b,c			;b505
	ld bc,00d35h		;b506
	dec (hl)			;b509
	ld b,l			;b50a
lb50bh:
	ld (0224bh),hl		;b50b
	inc b			;b50e
lb50fh:
	inc d			;b50f
	inc c			;b510
	inc d			;b511
	ld b,056h		;b512
lb514h:
	dec b			;b514
	ld c,015h		;b515
	dec c			;b517
	ld h,00ch		;b518
	scf			;b51a
	dec bc			;b51b
	ld c,b			;b51c
	ld a,(bc)			;b51d
	ld e,c			;b51e
	dec b			;b51f
	ld l,(hl)			;b520
	ret p			;b521
	ld l,(hl)			;b522
	out (00fh),a		;b523
	djnz $+82		;b525
	or b			;b527
	ex af,af'			;b528
	adc a,d			;b529
	inc b			;b52a
	rlca			;b52b
	ld (hl),006h		;b52c
	ld d,a			;b52e
	ld b,058h		;b52f
	rlca			;b531
	add hl,sp			;b532
	ld a,(bc)			;b533
	rlca			;b534
	inc d			;b535
	ld h,(hl)			;b536
	inc (hl)			;b537
	ld b,h			;b538
	daa			;b539
	inc h			;b53a
	add hl,sp			;b53b
	rlca			;b53c
	dec de			;b53d
	add hl,bc			;b53e
	inc d			;b53f
	ld hl,(l4c34h)		;b540
	daa			;b543
	ld l,h			;b544
	add hl,sp			;b545
	add hl,bc			;b546
	dec de			;b547
	nop			;b548
	inc b			;b549
	ld h,a			;b54a
	add a,b			;b54b
	jr nz,lb4d6h		;b54c
	add hl,hl			;b54e
	add a,b			;b54f
	ld (hl),b			;b550
	adc a,b			;b551
	ld (bc),a			;b552
	ld (bc),a			;b553
	dec de			;b554
	ld c,01bh		;b555
	add hl,bc			;b557
	ld b,b			;b558
	ret po			;b559
	ld d,b			;b55a
	ret po			;b55b
	ld bc,00a6dh		;b55c
	ld l,l			;b55f
lb560h:
	ld h,a			;b560
	dec hl			;b561
	ld h,02eh		;b562
	add hl,hl			;b564
	dec hl			;b565
	ld l,d			;b566
	ld l,008h		;b567
	dec e			;b569
	ld a,(bc)			;b56a
	ld b,011h		;b56b
	dec c			;b56d
	ld (de),a			;b56e
	ld bc,00d15h		;b56f
	dec d			;b572
	ex af,af'			;b573
	ld d,00eh		;b574
	jr lb57eh		;b576
	ld a,(de)			;b578
	ld (bc),a			;b579
	dec de			;b57a
	inc c			;b57b
	dec e			;b57c
	dec b			;b57d
lb57eh:
	ld e,000h		;b57e
	ret p			;b580
	rst 38h			;b581
	ret p			;b582
	rst 38h			;b583
	rst 38h			;b584
	ret p			;b585
	rst 38h			;b586
	ret p			;b587
	rst 38h			;b588
	inc l			;b589
	rst 38h			;b58a
	rst 38h			;b58b
	ret p			;b58c
	rst 38h			;b58d
	rst 38h			;b58e
	ret p			;b58f
	rst 38h			;b590
	rst 38h			;b591
	rst 38h			;b592
	rst 38h			;b593
	jr nc,$+1		;b594
	rst 38h			;b596
	ret p			;b597
	rst 38h			;b598
	rst 38h			;b599
	rst 38h			;b59a
	rst 38h			;b59b
	rst 38h			;b59c
	rst 38h			;b59d
	ccf			;b59e
	rst 38h			;b59f
	ld l,(hl)			;b5a0
	rst 38h			;b5a1
	ld hl,(0ffffh)		;b5a2
	ret p			;b5a5
	rst 38h			;b5a6
	dec hl			;b5a7
	rst 38h			;b5a8
	ret p			;b5a9
	rst 38h			;b5aa
	rst 38h			;b5ab
	ld h,(hl)			;b5ac
	rst 38h			;b5ad
	rst 38h			;b5ae
	ret m			;b5af
	pop af			;b5b0
	pop af			;b5b1
	rst 30h			;b5b2
	pop af			;b5b3
	or 0ffh		;b5b4
	rst 38h			;b5b6
	ret p			;b5b7
	rst 38h			;b5b8
	rst 38h			;b5b9
	rst 38h			;b5ba
	rst 38h			;b5bb
	rst 38h			;b5bc
	rst 38h			;b5bd
	ret p			;b5be
	rst 38h			;b5bf
	ld l,a			;b5c0
	rst 38h			;b5c1
	ret m			;b5c2
	pop af			;b5c3
	pop af			;b5c4
	ld sp,hl			;b5c5
	pop af			;b5c6
	ld sp,hl			;b5c7
	pop af			;b5c8
	jp p,0ffffh		;b5c9
	push af			;b5cc
	di			;b5cd
	rst 38h			;b5ce
	ret p			;b5cf
	rst 38h			;b5d0
	rst 38h			;b5d1
	ret p			;b5d2
	rst 38h			;b5d3
	ld (hl),b			;b5d4
	rst 38h			;b5d5
	rst 38h			;b5d6
	ret m			;b5d7
	pop af			;b5d8
	rst 30h			;b5d9
	pop af			;b5da
	pop af			;b5db
	di			;b5dc
	rst 38h			;b5dd
	ld a,0ffh		;b5de
	ret m			;b5e0
	pop af			;b5e1
	or 0ffh		;b5e2
	rst 38h			;b5e4
	rst 38h			;b5e5
	rst 38h			;b5e6
	rst 38h			;b5e7
	rst 38h			;b5e8
	rst 38h			;b5e9
	rst 38h			;b5ea
	rst 38h			;b5eb
	rst 38h			;b5ec
	scf			;b5ed
	rst 38h			;b5ee
	ld (hl),0ffh		;b5ef
	rst 38h			;b5f1
	dec (hl)			;b5f2
	rst 38h			;b5f3
	inc (hl)			;b5f4
	rst 38h			;b5f5
	rst 38h			;b5f6
	ret p			;b5f7
	rst 38h			;b5f8
	ld (0ffffh),a		;b5f9
	ld sp,0f0ffh		;b5fc
	rst 38h			;b5ff
	ret p			;b600
	rst 38h			;b601
	add hl,hl			;b602
	rst 38h			;b603
	rst 38h			;b604
	rst 38h			;b605
	rst 38h			;b606
	call p,0f7f1h		;b607
	pop af			;b60a
	pop af			;b60b
	rst 30h			;b60c
	ld sp,hl			;b60d
	pop af			;b60e
	jp p,0f4ffh		;b60f
	jp p,0f5ffh		;b612
	di			;b615
	rst 38h			;b616
	ret m			;b617
	pop af			;b618
	jp p,0f4ffh		;b619
	jp p,03dffh		;b61c
	rst 38h			;b61f
	ld l,l			;b620
	rst 38h			;b621
	push af			;b622
	rst 30h			;b623
	pop af			;b624
	pop af			;b625
	pop af			;b626
	jp p,0f0ffh		;b627
	rst 38h			;b62a
	rst 38h			;b62b
	jr c,$+1		;b62c
	rst 38h			;b62e
	rst 38h			;b62f
	rst 38h			;b630
	add hl,sp			;b631
	rst 38h			;b632
	rst 38h			;b633
	rst 38h			;b634
	ld h,d			;b635
	rst 38h			;b636
	ld l,c			;b637
	rst 38h			;b638
	rst 38h			;b639
	rst 38h			;b63a
	ld l,b			;b63b
	rst 38h			;b63c
	rst 38h			;b63d
	ret p			;b63e
	rst 38h			;b63f
	ret p			;b640
	rst 38h			;b641
	rst 38h			;b642
	jr z,$+1		;b643
	rst 38h			;b645
	rst 38h			;b646
	rst 38h			;b647
	rst 38h			;b648
	ld h,b			;b649
	rst 38h			;b64a
	rst 38h			;b64b
	push af			;b64c
	pop af			;b64d
	pop af			;b64e
	di			;b64f
	rst 38h			;b650
	ret p			;b651
	rst 38h			;b652
	call p,0f6f1h		;b653
	rst 38h			;b656
	push af			;b657
	pop af			;b658
	pop af			;b659
	rst 30h			;b65a
	ld sp,hl			;b65b
	pop af			;b65c
	rst 30h			;b65d
	ld sp,hl			;b65e
	di			;b65f
	push af			;b660
	pop af			;b661
	pop af			;b662
	or 0ffh		;b663
	call p,0f1f1h		;b665
	rst 30h			;b668
	ld sp,hl			;b669
	di			;b66a
	rst 38h			;b66b
	rst 38h			;b66c
	rst 38h			;b66d
	rst 38h			;b66e
	ret p			;b66f
	rst 38h			;b670
	push af			;b671
	pop af			;b672
	or 0ffh		;b673
	dec sp			;b675
	rst 38h			;b676
	rst 38h			;b677
	rst 38h			;b678
	rst 38h			;b679
	inc d			;b67a
	rst 38h			;b67b
	rst 38h			;b67c
	inc a			;b67d
	rst 38h			;b67e
	ret p			;b67f
	rst 38h			;b680
	rst 38h			;b681
	rst 38h			;b682
	ret m			;b683
	pop af			;b684
	jp p,0ffffh		;b685
	ret p			;b688
	rst 38h			;b689
	ld d,l			;b68a
	rst 38h			;b68b
	rst 38h			;b68c
	rst 38h			;b68d
	rst 38h			;b68e
	rla			;b68f
	rst 38h			;b690
	rst 38h			;b691
	rst 38h			;b692
	ld a,(0f8ffh)		;b693
	pop af			;b696
	pop af			;b697
	pop af			;b698
	pop af			;b699
	jp p,0f4ffh		;b69a
	jp p,053ffh		;b69d
	call p,0f1f1h		;b6a0
	jp p,0ffffh		;b6a3
	rst 38h			;b6a6
	rst 38h			;b6a7
	ld e,a			;b6a8
	rst 38h			;b6a9
	ret m			;b6aa
	pop af			;b6ab
	pop af			;b6ac
	di			;b6ad
	rst 38h			;b6ae
	push af			;b6af
	rst 30h			;b6b0
	pop af			;b6b1
	pop af			;b6b2
	or 0ffh		;b6b3
	ret p			;b6b5
	rst 38h			;b6b6
	rst 38h			;b6b7
	rst 38h			;b6b8
	rst 38h			;b6b9
	rst 38h			;b6ba
	rst 38h			;b6bb
	ld d,d			;b6bc
	rst 38h			;b6bd
	rst 38h			;b6be
	ret p			;b6bf
	ret p			;b6c0
	rst 38h			;b6c1
	rst 38h			;b6c2
	rst 38h			;b6c3
	rst 38h			;b6c4
	rst 38h			;b6c5
	rst 38h			;b6c6
	rst 38h			;b6c7
	ld e,(hl)			;b6c8
	rst 38h			;b6c9
	jr $+1		;b6ca
	rst 38h			;b6cc
	ld d,0ffh		;b6cd
	rst 38h			;b6cf
	ld d,h			;b6d0
	rst 38h			;b6d1
	rst 38h			;b6d2
	ret p			;b6d3
	rst 38h			;b6d4
	inc de			;b6d5
	rst 38h			;b6d6
	call p,0f1f1h		;b6d7
	pop af			;b6da
	pop af			;b6db
	jp p,0f4ffh		;b6dc
	jp p,0ff26h		;b6df
	rst 38h			;b6e2
	call p,0f1f1h		;b6e3
	rst 30h			;b6e6
	pop af			;b6e7
	ld sp,hl			;b6e8
	rst 30h			;b6e9
	jp p,0ffffh		;b6ea
	push af			;b6ed
	rst 30h			;b6ee
	pop af			;b6ef
	ld sp,hl			;b6f0
	di			;b6f1
	rst 38h			;b6f2
	ld l,e			;b6f3
	rst 38h			;b6f4
	ret p			;b6f5
	rst 38h			;b6f6
	ld (de),a			;b6f7
	rst 38h			;b6f8
	rst 38h			;b6f9
	rst 38h			;b6fa
	rst 38h			;b6fb
	rst 38h			;b6fc
	rst 38h			;b6fd
	ld d,c			;b6fe
	rst 38h			;b6ff
	ret p			;b700
	rst 38h			;b701
	rst 38h			;b702
	ret p			;b703
	rst 38h			;b704
	rst 38h			;b705
	add hl,de			;b706
	rst 38h			;b707
	rst 38h			;b708
	ld a,(de)			;b709
	rst 38h			;b70a
	rst 38h			;b70b
	rst 38h			;b70c
	rst 38h			;b70d
	dec d			;b70e
	rst 38h			;b70f
	rst 38h			;b710
	ret p			;b711
	rst 38h			;b712
	push af			;b713
	pop af			;b714
	or 0ffh		;b715
	push af			;b717
	di			;b718
	rst 38h			;b719
	rst 38h			;b71a
	rst 38h			;b71b
	rst 38h			;b71c
	rst 38h			;b71d
	ret p			;b71e
	rst 38h			;b71f
	dec h			;b720
	rst 38h			;b721
	call p,0f1f9h		;b722
	pop af			;b725
	jp p,0ffffh		;b726
	push af			;b729
	pop af			;b72a
	di			;b72b
	rst 38h			;b72c
	rst 38h			;b72d
	push af			;b72e
	di			;b72f
	rst 38h			;b730
	ld h,c			;b731
	rst 38h			;b732
	rst 38h			;b733
	rst 38h			;b734
	rrca			;b735
	rst 38h			;b736
	rst 38h			;b737
	ret p			;b738
	rst 38h			;b739
	rst 38h			;b73a
	rst 38h			;b73b
	rst 38h			;b73c
	call p,0f3f9h		;b73d
	ret p			;b740
	rst 38h			;b741
	ret p			;b742
	rst 38h			;b743
	rst 38h			;b744
	rst 38h			;b745
	rst 38h			;b746
	rst 38h			;b747
	rst 38h			;b748
	rst 38h			;b749
	rst 38h			;b74a
	ld l,h			;b74b
	rst 38h			;b74c
	rst 38h			;b74d
	rst 38h			;b74e
	dec c			;b74f
	rst 38h			;b750
	push af			;b751
	pop af			;b752
	di			;b753
	rst 38h			;b754
	ret m			;b755
	pop af			;b756
	pop af			;b757
	jp p,0ffffh		;b758
	rst 38h			;b75b
	rst 38h			;b75c
	ld h,h			;b75d
	rst 38h			;b75e
	ld d,b			;b75f
	inc h			;b760
	rst 38h			;b761
	ret m			;b762
	pop af			;b763
	pop af			;b764
	pop af			;b765
	pop af			;b766
	pop af			;b767
	di			;b768
	rst 38h			;b769
	rst 38h			;b76a
	ret m			;b76b
	pop af			;b76c
	pop af			;b76d
	pop af			;b76e
	or 0ffh		;b76f
	rst 38h			;b771
	rst 38h			;b772
	inc c			;b773
	rst 38h			;b774
	dec bc			;b775
	rst 38h			;b776
	rst 38h			;b777
	rst 38h			;b778
	rst 38h			;b779
	rst 38h			;b77a
	call p,0f2f1h		;b77b
	rst 38h			;b77e
	ret p			;b77f
	ret p			;b780
	rst 38h			;b781
	daa			;b782
	rst 38h			;b783
	rst 38h			;b784
	rst 38h			;b785
	rst 38h			;b786
	rst 38h			;b787
	ld e,c			;b788
	rst 38h			;b789
	rst 38h			;b78a
	dec de			;b78b
	rst 38h			;b78c
	rst 38h			;b78d
	rst 38h			;b78e
	push af			;b78f
	di			;b790
	rst 38h			;b791
	rst 38h			;b792
	ret p			;b793
	rst 38h			;b794
	ld a,(bc)			;b795
	rst 38h			;b796
	rst 38h			;b797
	call p,0f1f1h		;b798
	or 0ffh		;b79b
	rst 38h			;b79d
	rst 38h			;b79e
	ld c,a			;b79f
	ret m			;b7a0
	pop af			;b7a1
	or 0ffh		;b7a2
	rst 38h			;b7a4
	rst 38h			;b7a5
	rst 38h			;b7a6
	rst 38h			;b7a7
	ret m			;b7a8
	pop af			;b7a9
	rst 30h			;b7aa
	ld sp,hl			;b7ab
	di			;b7ac
	rst 38h			;b7ad
	rst 38h			;b7ae
	rst 38h			;b7af
	push af			;b7b0
lb7b1h:
	di			;b7b1
	rst 38h			;b7b2
	ret m			;b7b3
	pop af			;b7b4
	ld sp,hl			;b7b5
	pop af			;b7b6
	pop af			;b7b7
	or 0ffh		;b7b8
	rst 38h			;b7ba
	ret m			;b7bb
	pop af			;b7bc
	rst 30h			;b7bd
	pop af			;b7be
	jp p,0ff23h		;b7bf
	push af			;b7c2
	pop af			;b7c3
	rst 30h			;b7c4
	pop af			;b7c5
	rst 30h			;b7c6
	pop af			;b7c7
	or 0ffh		;b7c8
	ret p			;b7ca
	rst 38h			;b7cb
	push af			;b7cc
	pop af			;b7cd
	di			;b7ce
	rst 38h			;b7cf
	rst 38h			;b7d0
	push af			;b7d1
	pop af			;b7d2
	or 0ffh		;b7d3
	rst 38h			;b7d5
	rst 38h			;b7d6
	rst 38h			;b7d7
	djnz $+1		;b7d8
	call p,0fff2h		;b7da
	ret p			;b7dd
	rst 38h			;b7de
	rst 38h			;b7df
	ret p			;b7e0
	rst 38h			;b7e1
	rst 38h			;b7e2
	rst 38h			;b7e3
	ld e,b			;b7e4
	rst 38h			;b7e5
	ret p			;b7e6
	rst 38h			;b7e7
	ret p			;b7e8
	rst 38h			;b7e9
	inc e			;b7ea
	rst 38h			;b7eb
	rst 38h			;b7ec
	rst 38h			;b7ed
	ld h,l			;b7ee
	rst 38h			;b7ef
	rst 38h			;b7f0
	rst 38h			;b7f1
	rst 38h			;b7f2
	ex af,af'			;b7f3
	rst 38h			;b7f4
	rst 38h			;b7f5
	rst 38h			;b7f6
	call p,0f1f9h		;b7f7
	or 0ffh		;b7fa
	rst 38h			;b7fc
	ld de,0ffffh		;b7fd
	ld (0f4ffh),hl		;b800
	pop af			;b803
	or 0ffh		;b804
	ld d,a			;b806
	rst 38h			;b807
	ld d,(hl)			;b808
	rst 38h			;b809
	push af			;b80a
	di			;b80b
	rst 38h			;b80c
	rst 38h			;b80d
	ret m			;b80e
	pop af			;b80f
	di			;b810
	rst 38h			;b811
	rst 38h			;b812
	ret p			;b813
	rst 38h			;b814
	call p,0f2f1h		;b815
	rst 38h			;b818
	rst 38h			;b819
	ld h,e			;b81a
	rst 38h			;b81b
	call p,0f1f9h		;b81c
	di			;b81f
	ret p			;b820
	rst 38h			;b821
	ret p			;b822
	rst 38h			;b823
	push af			;b824
	pop af			;b825
	ld sp,hl			;b826
	pop af			;b827
	or 0ffh		;b828
	rst 38h			;b82a
	ld c,0ffh		;b82b
	call p,0fff2h		;b82d
	rlca			;b830
	rst 38h			;b831
	rst 38h			;b832
	dec b			;b833
	rst 38h			;b834
	add hl,bc			;b835
	rst 38h			;b836
	rst 38h			;b837
	rst 38h			;b838
	rst 38h			;b839
	ret p			;b83a
	rst 38h			;b83b
	ret p			;b83c
	rst 38h			;b83d
	rst 38h			;b83e
	ld h,a			;b83f
	ld hl,01dffh		;b840
	rst 38h			;b843
	rst 38h			;b844
	rst 38h			;b845
	rst 38h			;b846
	rst 38h			;b847
	push af			;b848
	pop af			;b849
	pop af			;b84a
	or 0ffh		;b84b
	ld (hl),e			;b84d
	rst 38h			;b84e
	rst 38h			;b84f
	ret m			;b850
	pop af			;b851
	pop af			;b852
	ld sp,hl			;b853
	rst 30h			;b854
	jp p,0ffffh		;b855
	rst 38h			;b858
	rst 38h			;b859
	ret p			;b85a
	rst 38h			;b85b
	ld b,l			;b85c
	rst 38h			;b85d
	call p,0f0f2h		;b85e
	rst 38h			;b861
	push af			;b862
	pop af			;b863
	pop af			;b864
	pop af			;b865
	di			;b866
	rst 38h			;b867
	rst 38h			;b868
	rst 38h			;b869
	rst 38h			;b86a
	ld b,0ffh		;b86b
	inc b			;b86d
	rst 38h			;b86e
	call p,0fff2h		;b86f
	rst 38h			;b872
	rst 38h			;b873
	ld c,h			;b874
	rst 38h			;b875
	rst 38h			;b876
	rst 38h			;b877
	call p,0f6f1h		;b878
	rst 38h			;b87b
	ret p			;b87c
	rst 38h			;b87d
	ld b,h			;b87e
	rst 38h			;b87f
	jr nz,$+1		;b880
	rst 38h			;b882
	rst 38h			;b883
	rst 38h			;b884
	rst 38h			;b885
	push af			;b886
	pop af			;b887
	pop af			;b888
	di			;b889
	rst 38h			;b88a
	push af			;b88b
	pop af			;b88c
	ld sp,hl			;b88d
	pop af			;b88e
	or 0ffh		;b88f
	rst 38h			;b891
	call p,0f9f1h		;b892
	pop af			;b895
	di			;b896
	rst 38h			;b897
	ld (hl),c			;b898
	rst 38h			;b899
	ld b,(hl)			;b89a
	rst 38h			;b89b
	ld b,e			;b89c
	rst 38h			;b89d
	push af			;b89e
	di			;b89f
	push af			;b8a0
	pop af			;b8a1
	pop af			;b8a2
	pop af			;b8a3
	di			;b8a4
	rst 38h			;b8a5
	rst 38h			;b8a6
	rst 38h			;b8a7
	rst 38h			;b8a8
	ld e,0ffh		;b8a9
	rst 38h			;b8ab
	rst 38h			;b8ac
	rst 38h			;b8ad
	rst 38h			;b8ae
	inc bc			;b8af
	rst 38h			;b8b0
	rst 38h			;b8b1
	ld c,d			;b8b2
	rst 38h			;b8b3
	rst 38h			;b8b4
	rst 38h			;b8b5
	ld c,e			;b8b6
	rst 38h			;b8b7
	ld b,a			;b8b8
	rst 38h			;b8b9
	ret p			;b8ba
	rst 38h			;b8bb
	ret p			;b8bc
	rst 38h			;b8bd
	rst 38h			;b8be
	ld c,(hl)			;b8bf
	rst 38h			;b8c0
	rst 38h			;b8c1
	rst 38h			;b8c2
	rst 38h			;b8c3
	push af			;b8c4
	pop af			;b8c5
	di			;b8c6
	rst 38h			;b8c7
	call p,0f1f9h		;b8c8
	pop af			;b8cb
	di			;b8cc
	rst 38h			;b8cd
	rst 38h			;b8ce
	ret p			;b8cf
	rst 38h			;b8d0
	rst 38h			;b8d1
	push af			;b8d2
	pop af			;b8d3
	di			;b8d4
	rst 38h			;b8d5
	ret m			;b8d6
	pop af			;b8d7
	ld sp,hl			;b8d8
	rst 30h			;b8d9
	ld sp,hl			;b8da
	pop af			;b8db
	ld sp,hl			;b8dc
	pop af			;b8dd
	pop af			;b8de
	or 0ffh		;b8df
	rst 38h			;b8e1
	rst 38h			;b8e2
	rst 38h			;b8e3
	rst 38h			;b8e4
	rst 38h			;b8e5
	rra			;b8e6
	rst 38h			;b8e7
	ld e,e			;b8e8
	rst 38h			;b8e9
	rst 38h			;b8ea
	rst 38h			;b8eb
	ld e,d			;b8ec
	rst 38h			;b8ed
	call p,0f3f9h		;b8ee
	rst 38h			;b8f1
	rst 38h			;b8f2
	rst 38h			;b8f3
	ld c,c			;b8f4
	rst 38h			;b8f5
	ld c,b			;b8f6
	rst 38h			;b8f7
	rst 38h			;b8f8
	ret p			;b8f9
	rst 38h			;b8fa
	rst 38h			;b8fb
	rst 38h			;b8fc
	rst 38h			;b8fd
	rst 38h			;b8fe
	ret p			;b8ff
	rst 38h			;b900
	rst 38h			;b901
	call p,0f1f1h		;b902
	pop af			;b905
	or 0ffh		;b906
	push af			;b908
	pop af			;b909
	pop af			;b90a
	pop af			;b90b
	or 0ffh		;b90c
	ld bc,002ffh		;b90e
	rst 38h			;b911
	call p,0f9f1h		;b912
	pop af			;b915
	jp p,0ffffh		;b916
	ret p			;b919
	rst 38h			;b91a
	call p,0f1f1h		;b91b
	rst 30h			;b91e
	jp p,0ffffh		;b91f
	ld l,d			;b922
	rst 38h			;b923
	rst 38h			;b924
	rst 38h			;b925
	ld e,l			;b926
	rst 38h			;b927
	rst 38h			;b928
	rst 38h			;b929
	rst 38h			;b92a
	rst 38h			;b92b
	ld e,h			;b92c
	rst 38h			;b92d
	push af			;b92e
	rst 30h			;b92f
	jp p,033ffh		;b930
	rst 38h			;b933
	rst 38h			;b934
	rst 38h			;b935
	rst 38h			;b936
	rst 38h			;b937
	rst 38h			;b938
	ld b,d			;b939
	rst 38h			;b93a
	ld b,c			;b93b
	rst 38h			;b93c
	rst 38h			;b93d
	ld b,b			;b93e
	rst 38h			;b93f
	call p,0f6f1h		;b940
	rst 38h			;b943
	rst 38h			;b944
	call p,0f3f9h		;b945
	rst 38h			;b948
	call p,0f1f1h		;b949
	or 0ffh		;b94c
	rst 38h			;b94e
	nop			;b94f
	rst 38h			;b950
	rst 38h			;b951
	push af			;b952
	pop af			;b953
	di			;b954
	rst 38h			;b955
	rst 38h			;b956
	call p,0f9f1h		;b957
	pop af			;b95a
	ld sp,hl			;b95b
	pop af			;b95c
	pop af			;b95d
	or 0ffh		;b95e
	ld l,0ffh		;b960
	ld (hl),d			;b962
	rst 38h			;b963
	rst 38h			;b964
	dec l			;b965
	rst 38h			;b966
	ret p			;b967
	rst 38h			;b968
	ret p			;b969
	rst 38h			;b96a
	rst 38h			;b96b
	ret p			;b96c
	rst 38h			;b96d
	rst 38h			;b96e
	ret p			;b96f
	rst 38h			;b970
	rst 38h			;b971
	rst 38h			;b972
	rst 38h			;b973
	cpl			;b974
	rst 38h			;b975
	rst 38h			;b976
	ld c,l			;b977
	rst 38h			;b978
	rst 38h			;b979
	rst 38h			;b97a
	rst 38h			;b97b
	rst 38h			;b97c
	rst 38h			;b97d
	ret p			;b97e
	rst 38h			;b97f
	rst 38h			;b980
	rst 38h			;b981
sub_b982h:
	ld a,(0e04dh)		;b982
	or a			;b985
	ret nz			;b986
	ld hl,0e040h		;b987
	dec (hl)			;b98a
	ret nz			;b98b
	ld a,(0e041h)		;b98c
	ld (hl),a			;b98f
	ld hl,(0e03dh)		;b990
lb993h:
	ld a,(hl)			;b993
	cp 0f0h		;b994
	jp z,lb9f2h		;b996
	push af			;b999
	cpl			;b99a
	and 0c0h		;b99b
	jr z,lb9a9h		;b99d
	pop af			;b99f
	inc hl			;b9a0
	ld (0e03dh),hl		;b9a1
	call sub_ba80h		;b9a4
	jr lb9d1h		;b9a7
lb9a9h:
	pop af			;b9a9
	bit 5,a		;b9aa
	jr z,lb9c7h		;b9ac
	bit 4,a		;b9ae
	jr z,lb9bch		;b9b0
	and 00fh		;b9b2
	ld (0e03ch),a		;b9b4
	ld (0e03bh),a		;b9b7
	jr lb9c4h		;b9ba
lb9bch:
	and 00fh		;b9bc
	ld (0e03ah),a		;b9be
	ld (0e039h),a		;b9c1
lb9c4h:
	inc hl			;b9c4
	jr lb993h		;b9c5
lb9c7h:
	and 01fh		;b9c7
	ld (0e040h),a		;b9c9
	ld (0e041h),a		;b9cc
	jr lb9c4h		;b9cf
lb9d1h:
	ld hl,0e039h		;b9d1
	dec (hl)			;b9d4
	ret nz			;b9d5
	ld a,(0e03ah)		;b9d6
	ld (hl),a			;b9d9
	ld hl,0e03bh		;b9da
	dec (hl)			;b9dd
	jr z,lb9edh		;b9de
	ld hl,(0e03dh)		;b9e0
	ld e,a			;b9e3
	ld d,000h		;b9e4
	or a			;b9e6
	sbc hl,de		;b9e7
	ld (0e03dh),hl		;b9e9
	ret			;b9ec
lb9edh:
	ld a,(0e03ch)		;b9ed
	ld (hl),a			;b9f0
	ret			;b9f1
lb9f2h:
	ld a,(0e00eh)		;b9f2
	add a,a			;b9f5
	ld l,a			;b9f6
	ld h,000h		;b9f7
	ld de,lbabah		;b9f9
	add hl,de			;b9fc
	ld a,(hl)			;b9fd
	inc hl			;b9fe
	ld h,(hl)			;b9ff
	ld l,a			;ba00
	ld (0e03dh),hl		;ba01
	ret			;ba04
lba05h:
	and (hl)			;ba05
	ld c,l			;ba06
	cp c			;ba07
	ld a,l			;ba08
sub_ba09h:
	ld a,(0e04dh)		;ba09
	or a			;ba0c
	ret nz			;ba0d
	ld a,001h		;ba0e
	ld (0e03ch),a		;ba10
	ld (0e03bh),a		;ba13
	ld (0e03ah),a		;ba16
	ld (0e039h),a		;ba19
	ld a,010h		;ba1c
	ld (0e040h),a		;ba1e
	ld (0e041h),a		;ba21
	ld a,(0e00bh)		;ba24
	ld l,a			;ba27
	ld h,000h		;ba28
lba2ah:
	add hl,hl			;ba2a
	ld de,lbbe7h		;ba2b
	add hl,de			;ba2e
	ld a,(hl)			;ba2f
	inc hl			;ba30
	ld h,(hl)			;ba31
	ld l,a			;ba32
	ld a,(hl)			;ba33
	inc hl			;ba34
	push hl			;ba35
	ld l,a			;ba36
	ld h,000h		;ba37
	add hl,hl			;ba39
	ld de,lba05h		;ba3a
	add hl,de			;ba3d
	ld a,(hl)			;ba3e
	inc hl			;ba3f
	ld h,(hl)			;ba40
	ld l,a			;ba41
	ld bc,lba47h		;ba42
	push bc			;ba45
	jp (hl)			;ba46
lba47h:
	pop hl			;ba47
	ld a,(hl)			;ba48
	inc hl			;ba49
	ld de,0e042h		;ba4a
	ld (0e051h),a		;ba4d
	ld b,a			;ba50
	xor a			;ba51
	ld (0e00dh),a		;ba52
lba55h:
	ld a,(hl)			;ba55
	ld (de),a			;ba56
	inc hl			;ba57
	inc de			;ba58
	exx			;ba59
	ld e,a			;ba5a
	ld d,000h		;ba5b
	ld hl,0e040h		;ba5d
	add hl,de			;ba60
	exx			;ba61
	ld a,(hl)			;ba62
	inc hl			;ba63
	exx			;ba64
	ld (hl),a			;ba65
	ld hl,0e00dh		;ba66
	add a,(hl)			;ba69
	ld (hl),a			;ba6a
	exx			;ba6b
	djnz lba55h		;ba6c
	ld a,(hl)			;ba6e
	ld (0e00eh),a		;ba6f
	inc hl			;ba72
	ld a,(hl)			;ba73
	call sub_aa5ch		;ba74
	ld hl,0e043h		;ba77
	call sub_50a7h		;ba7a
	jp lb9f2h		;ba7d
sub_ba80h:
	ld b,a			;ba80
	and 00fh		;ba81
	ret z			;ba83
	push bc			;ba84
	call sub_ba95h		;ba85
	pop bc			;ba88
	ld a,b			;ba89
	and 0f0h		;ba8a
	ret z			;ba8c
	srl a		;ba8d
	srl a		;ba8f
	srl a		;ba91
	srl a		;ba93
sub_ba95h:
	ex af,af'			;ba95
	ld a,(0e01bh)		;ba96
	cp 013h		;ba99
	ret nc			;ba9b
	call sub_4d96h		;ba9c
	exx			;ba9f
	ex af,af'			;baa0
	dec a			;baa1
	ld e,a			;baa2
	ld d,000h		;baa3
	ld hl,0e042h		;baa5
	add hl,de			;baa8
	ld e,(hl)			;baa9
	ld hl,0e040h		;baaa
	add hl,de			;baad
	ld a,(hl)			;baae
	or a			;baaf
	ret z			;bab0
	dec (hl)			;bab1
	ld a,e			;bab2
	exx			;bab3
	ld (hl),a			;bab4
	ld hl,0e01bh		;bab5
	inc (hl)			;bab8
	ret			;bab9
lbabah:
	jp c,0debah		;baba
	cp d			;babd
	ld b,e			;babe
	cp e			;babf
	ld c,b			;bac0
	cp e			;bac1
	ld d,a			;bac2
	cp e			;bac3
	ld e,l			;bac4
	cp e			;bac5
	ld h,d			;bac6
	cp e			;bac7
	add a,(hl)			;bac8
	cp e			;bac9
	sub l			;baca
	cp e			;bacb
	sbc a,l			;bacc
	cp e			;bacd
	ret nz			;bace
	cp e			;bacf
	jp 0c9bbh		;bad0
	cp e			;bad3
	rst 8			;bad4
	cp e			;bad5
	defb 0ddh,0bbh,0e4h	;illegal sequence		;bad6
	cp e			;bad9
	jp nz,00001h		;bada
	ret p			;badd
	pop hl			;bade
	push de			;badf
	ret			;bae0
	nop			;bae1
	nop			;bae2
	nop			;bae3
	nop			;bae4
	nop			;bae5
	nop			;bae6
	nop			;bae7
	nop			;bae8
	ld bc,000c8h		;bae9
	nop			;baec
	nop			;baed
	nop			;baee
	nop			;baef
	nop			;baf0
	nop			;baf1
	ld bc,000c7h		;baf2
	nop			;baf5
	nop			;baf6
	nop			;baf7
	nop			;baf8
	nop			;baf9
	ld bc,000c6h		;bafa
	nop			;bafd
	nop			;bafe
	nop			;baff
	nop			;bb00
	ld bc,000c5h		;bb01
	nop			;bb04
	nop			;bb05
	nop			;bb06
	ld bc,000c4h		;bb07
	nop			;bb0a
	nop			;bb0b
	ld bc,000c3h		;bb0c
	nop			;bb0f
	ld bc,000c2h		;bb10
	ld bc,001c1h		;bb13
	ld bc,0c201h		;bb16
	nop			;bb19
	ld bc,000c3h		;bb1a
	nop			;bb1d
	ld bc,000c4h		;bb1e
	nop			;bb21
	nop			;bb22
	ld bc,000c5h		;bb23
	nop			;bb26
	nop			;bb27
	nop			;bb28
	ld bc,000c6h		;bb29
	nop			;bb2c
	nop			;bb2d
	nop			;bb2e
	nop			;bb2f
	ld bc,000c7h		;bb30
	nop			;bb33
	nop			;bb34
	nop			;bb35
	nop			;bb36
	nop			;bb37
	ld bc,000c8h		;bb38
	nop			;bb3b
	nop			;bb3c
	nop			;bb3d
	nop			;bb3e
	nop			;bb3f
	nop			;bb40
	ld bc,0fff0h		;bb41
	jp nz,00201h		;bb44
	ret p			;bb47
	pop hl			;bb48
	pop bc			;bb49
	ld bc,00101h		;bb4a
	ld bc,00101h		;bb4d
	ld bc,00001h		;bb50
	nop			;bb53
	nop			;bb54
	nop			;bb55
	ret p			;bb56
	ret pe			;bb57
	ld bc,00201h		;bb58
	ld (bc),a			;bb5b
	ret p			;bb5c
	ld (de),a			;bb5d
	nop			;bb5e
	nop			;bb5f
	nop			;bb60
	ret p			;bb61
	jp po,0c2d8h		;bb62
	nop			;bb65
	nop			;bb66
	nop			;bb67
	ld bc,00100h		;bb68
	ld bc,00001h		;bb6b
	ld (bc),a			;bb6e
	nop			;bb6f
	nop			;bb70
	ld (bc),a			;bb71
	nop			;bb72
	ld (bc),a			;bb73
	ld (bc),a			;bb74
	ld bc,00200h		;bb75
	nop			;bb78
	ld bc,00200h		;bb79
	nop			;bb7c
	ld bc,00102h		;bb7d
	ld (bc),a			;bb80
	ld bc,00102h		;bb81
	ld (bc),a			;bb84
	ret p			;bb85
	ret pe			;bb86
	ret c			;bb87
	ld bc,00200h		;bb88
	nop			;bb8b
	inc bc			;bb8c
	nop			;bb8d
	ld (bc),a			;bb8e
	nop			;bb8f
	inc bc			;bb90
	nop			;bb91
	ld bc,0f000h		;bb92
	ret pe			;bb95
	ld bc,00302h		;bb96
	ret c			;bb99
	nop			;bb9a
	nop			;bb9b
	ret p			;bb9c
	pop hl			;bb9d
	ld bc,00100h		;bb9e
	nop			;bba1
	ld (bc),a			;bba2
	nop			;bba3
	ld bc,00200h		;bba4
	nop			;bba7
	ld bc,00300h		;bba8
	nop			;bbab
	inc bc			;bbac
	inc bc			;bbad
	nop			;bbae
	nop			;bbaf
	ld (bc),a			;bbb0
	call nc,001c6h		;bbb1
	nop			;bbb4
	ld (bc),a			;bbb5
	nop			;bbb6
	inc bc			;bbb7
	nop			;bbb8
	ret c			;bbb9
	pop bc			;bbba
	nop			;bbbb
	ld bc,00302h		;bbbc
	ret p			;bbbf
	pop hl			;bbc0
	ld bc,012f0h		;bbc1
	nop			;bbc4
	inc hl			;bbc5
	nop			;bbc6
	ld sp,0e1f0h		;bbc7
	ret c			;bbca
	ld bc,00302h		;bbcb
	ret p			;bbce
	call po,00001h		;bbcf
	nop			;bbd2
	nop			;bbd3
	ld (bc),a			;bbd4
	nop			;bbd5
	nop			;bbd6
	nop			;bbd7
	inc bc			;bbd8
	nop			;bbd9
	nop			;bbda
	nop			;bbdb
	ret p			;bbdc
	ret pe			;bbdd
	ld bc,00302h		;bbde
	inc b			;bbe1
	dec b			;bbe2
	ret p			;bbe3
	call po,0f001h		;bbe4
lbbe7h:
	rst 0			;bbe7
	cp h			;bbe8
	call 0d3bch		;bbe9
	cp h			;bbec
	exx			;bbed
	cp h			;bbee
	rst 18h			;bbef
	cp h			;bbf0
	push hl			;bbf1
	cp h			;bbf2
	ex de,hl			;bbf3
	cp h			;bbf4
	pop af			;bbf5
	cp h			;bbf6
	rst 30h			;bbf7
	cp h			;bbf8
	defb 0fdh,0bch,005h	;illegal sequence		;bbf9
	cp l			;bbfc
	dec c			;bbfd
	cp l			;bbfe
	dec d			;bbff
	cp l			;bc00
	dec e			;bc01
	cp l			;bc02
	dec h			;bc03
	cp l			;bc04
	cpl			;bc05
	cp l			;bc06
	add hl,sp			;bc07
	cp l			;bc08
	ccf			;bc09
	cp l			;bc0a
	ld b,l			;bc0b
	cp l			;bc0c
	ld c,l			;bc0d
	cp l			;bc0e
	ld e,e			;bc0f
	cp l			;bc10
	ld h,c			;bc11
	cp l			;bc12
	ld l,c			;bc13
	cp l			;bc14
	ld (hl),c			;bc15
	cp l			;bc16
	ld a,c			;bc17
	cp l			;bc18
	add a,c			;bc19
	cp l			;bc1a
	add a,a			;bc1b
	cp l			;bc1c
	adc a,l			;bc1d
	cp l			;bc1e
	sub l			;bc1f
	cp l			;bc20
	sbc a,e			;bc21
	cp l			;bc22
	and e			;bc23
	cp l			;bc24
	xor c			;bc25
	cp l			;bc26
	or c			;bc27
	cp l			;bc28
	or a			;bc29
	cp l			;bc2a
	cp l			;bc2b
	cp l			;bc2c
	push bc			;bc2d
	cp l			;bc2e
	rst 8			;bc2f
	cp l			;bc30
	push de			;bc31
	cp l			;bc32
	in a,(0bdh)		;bc33
	ex (sp),hl			;bc35
	cp l			;bc36
	jp (hl)			;bc37
	cp l			;bc38
	rst 30h			;bc39
	cp l			;bc3a
	defb 0fdh,0bdh,003h	;illegal sequence		;bc3b
	cp (hl)			;bc3e
	add hl,bc			;bc3f
	cp (hl)			;bc40
	rrca			;bc41
	cp (hl)			;bc42
	dec d			;bc43
	cp (hl)			;bc44
	dec e			;bc45
	cp (hl)			;bc46
	inc hl			;bc47
	cp (hl)			;bc48
	add hl,hl			;bc49
	cp (hl)			;bc4a
	ld sp,037beh		;bc4b
	cp (hl)			;bc4e
	dec a			;bc4f
	cp (hl)			;bc50
	ld b,e			;bc51
	cp (hl)			;bc52
	ld c,c			;bc53
	cp (hl)			;bc54
	ld c,a			;bc55
	cp (hl)			;bc56
	ld d,l			;bc57
	cp (hl)			;bc58
	ld h,e			;bc59
	cp (hl)			;bc5a
	ld l,c			;bc5b
	cp (hl)			;bc5c
	ld l,a			;bc5d
	cp (hl)			;bc5e
	ld (hl),l			;bc5f
	cp (hl)			;bc60
	ld a,l			;bc61
	cp (hl)			;bc62
	add a,e			;bc63
	cp (hl)			;bc64
	adc a,e			;bc65
	cp (hl)			;bc66
	sub c			;bc67
	cp (hl)			;bc68
	sbc a,c			;bc69
	cp (hl)			;bc6a
	and c			;bc6b
	cp (hl)			;bc6c
	xor c			;bc6d
	cp (hl)			;bc6e
	or c			;bc6f
	cp (hl)			;bc70
	or a			;bc71
	cp (hl)			;bc72
	cp l			;bc73
	cp (hl)			;bc74
	push bc			;bc75
	cp (hl)			;bc76
	res 7,(hl)		;bc77
	pop de			;bc79
	cp (hl)			;bc7a
	rst 10h			;bc7b
	cp (hl)			;bc7c
	cp (ix-01dh)		;bc7d
	cp (hl)			;bc80
	defb 0edh;next byte illegal after ed		;bc81
	cp (hl)			;bc82
	push af			;bc83
	cp (hl)			;bc84
	cp (iy+003h)		;bc85
	cp a			;bc88
	add hl,bc			;bc89
	cp a			;bc8a
	ld de,01bbfh		;bc8b
	cp a			;bc8e
	add hl,hl			;bc8f
	cp a			;bc90
	cpl			;bc91
	cp a			;bc92
	dec (hl)			;bc93
	cp a			;bc94
	dec sp			;bc95
	cp a			;bc96
	ld b,c			;bc97
	cp a			;bc98
	ld c,c			;bc99
	cp a			;bc9a
	ld d,c			;bc9b
	cp a			;bc9c
	ld e,c			;bc9d
	cp a			;bc9e
	ld e,a			;bc9f
	cp a			;bca0
	ld h,l			;bca1
	cp a			;bca2
	ld l,l			;bca3
	cp a			;bca4
	ld a,e			;bca5
	cp a			;bca6
	add a,c			;bca7
	cp a			;bca8
	add a,a			;bca9
	cp a			;bcaa
	adc a,l			;bcab
	cp a			;bcac
	sub e			;bcad
	cp a			;bcae
	sbc a,c			;bcaf
	cp a			;bcb0
	and e			;bcb1
	cp a			;bcb2
	xor e			;bcb3
	cp a			;bcb4
	or c			;bcb5
	cp a			;bcb6
	cp a			;bcb7
	cp a			;bcb8
	push bc			;bcb9
	cp a			;bcba
	call 0d3bfh		;bcbb
	cp a			;bcbe
	in a,(0bfh)		;bcbf
	ex (sp),hl			;bcc1
	cp a			;bcc2
	jp (hl)			;bcc3
	cp a			;bcc4
	pop af			;bcc5
	cp a			;bcc6
	nop			;bcc7
	ld bc,02816h		;bcc8
	nop			;bccb
	nop			;bccc
	nop			;bccd
	ld bc,03213h		;bcce
	nop			;bcd1
	ld bc,00100h		;bcd2
	inc d			;bcd5
	ld (00200h),a		;bcd6
	nop			;bcd9
	ld bc,0321ah		;bcda
	nop			;bcdd
	dec sp			;bcde
	nop			;bcdf
	ld bc,03216h		;bce0
	nop			;bce3
	dec (hl)			;bce4
	nop			;bce5
	ld bc,03210h		;bce6
	nop			;bce9
	scf			;bcea
	nop			;bceb
	ld bc,03218h		;bcec
	nop			;bcef
	dec bc			;bcf0
	nop			;bcf1
	ld bc,03219h		;bcf2
	nop			;bcf5
	ld a,(00101h)		;bcf6
	dec d			;bcf9
	ld (02600h),a		;bcfa
	nop			;bcfd
	ld (bc),a			;bcfe
	djnz lbd15h		;bcff
	add hl,de			;bd01
	inc d			;bd02
	ld (bc),a			;bd03
	dec e			;bd04
	nop			;bd05
	ld (bc),a			;bd06
	ld a,(de)			;bd07
	ld a,(bc)			;bd08
	add hl,de			;bd09
	ld e,002h		;bd0a
	dec de			;bd0c
	nop			;bd0d
	ld (bc),a			;bd0e
	inc de			;bd0f
	inc d			;bd10
	add hl,de			;bd11
	inc d			;bd12
	ld (bc),a			;bd13
	add hl,de			;bd14
lbd15h:
	nop			;bd15
	ld (bc),a			;bd16
	inc d			;bd17
	ld e,019h		;bd18
	ld a,(bc)			;bd1a
	ld (bc),a			;bd1b
	add hl,sp			;bd1c
	nop			;bd1d
	ld (bc),a			;bd1e
	add hl,de			;bd1f
	ld e,016h		;bd20
	ld e,002h		;bd22
	ld a,(de)			;bd24
	nop			;bd25
	inc bc			;bd26
	add hl,de			;bd27
	inc d			;bd28
	ld a,(de)			;bd29
	ld a,(bc)			;bd2a
	inc de			;bd2b
	inc d			;bd2c
	add hl,bc			;bd2d
	rla			;bd2e
	nop			;bd2f
	inc bc			;bd30
	inc d			;bd31
	inc d			;bd32
	inc de			;bd33
	ld a,(bc)			;bd34
	ld a,(de)			;bd35
	ld a,(bc)			;bd36
	add hl,bc			;bd37
	jr c,lbd3ah		;bd38
lbd3ah:
	ld bc,03217h		;bd3a
	nop			;bd3d
	djnz lbd40h		;bd3e
lbd40h:
	ld bc,03c19h		;bd40
	nop			;bd43
	inc hl			;bd44
	nop			;bd45
	ld (bc),a			;bd46
	add hl,de			;bd47
	ld e,014h		;bd48
	jr z,lbd4eh		;bd4a
	ld b,000h		;bd4c
lbd4eh:
	dec b			;bd4e
	inc de			;bd4f
	inc d			;bd50
	ld d,014h		;bd51
	rla			;bd53
	inc d			;bd54
	add hl,de			;bd55
	inc d			;bd56
	ld a,(de)			;bd57
	inc d			;bd58
	ld c,008h		;bd59
	nop			;bd5b
	ld bc,03c10h		;bd5c
	ld bc,0000ch		;bd5f
	ld (bc),a			;bd62
	djnz $+32		;bd63
	inc de			;bd65
	ld (00d02h),a		;bd66
	nop			;bd69
	ld (bc),a			;bd6a
	rla			;bd6b
	ld (03216h),a		;bd6c
	ld (bc),a			;bd6f
	rrca			;bd70
	nop			;bd71
	ld (bc),a			;bd72
	djnz lbda7h		;bd73
	inc d			;bd75
	inc d			;bd76
	ld (bc),a			;bd77
	jr lbd7bh		;bd78
	ld (bc),a			;bd7a
lbd7bh:
	dec d			;bd7b
	ld (03c19h),a		;bd7c
	ld (bc),a			;bd7f
	inc e			;bd80
	ld bc,01501h		;bd81
	jr nc,$+5		;bd84
	jr nz,lbd88h		;bd86
lbd88h:
	ld bc,0021ah		;bd88
	ld bc,00021h		;bd8b
	ld (bc),a			;bd8e
	djnz $+22		;bd8f
	inc de			;bd91
	inc d			;bd92
	inc b			;bd93
	ld (00100h),hl		;bd94
	inc de			;bd97
	ld h,h			;bd98
	ld bc,00028h		;bd99
	ld (bc),a			;bd9c
	rla			;bd9d
	ld h,h			;bd9e
	ld d,064h		;bd9f
	inc b			;bda1
	ld l,000h		;bda2
	ld bc,03c19h		;bda4
lbda7h:
	nop			;bda7
	cpl			;bda8
	nop			;bda9
	ld (bc),a			;bdaa
	ld d,032h		;bdab
	rla			;bdad
	ld (03002h),a		;bdae
	nop			;bdb1
	ld bc,l6414h		;bdb2
	nop			;bdb5
	inc bc			;bdb6
	nop			;bdb7
	ld bc,l4d13h		;bdb8
	nop			;bdbb
	inc b			;bdbc
	nop			;bdbd
	ld (bc),a			;bdbe
	add hl,de			;bdbf
	inc d			;bdc0
	ld a,(de)			;bdc1
	inc a			;bdc2
	ld (bc),a			;bdc3
	dec b			;bdc4
	nop			;bdc5
	inc bc			;bdc6
	djnz lbde7h		;bdc7
	ld d,01eh		;bdc9
	rla			;bdcb
	ld e,009h		;bdcc
	rlca			;bdce
	nop			;bdcf
	ld bc,05a10h		;bdd0
	nop			;bdd3
	add hl,bc			;bdd4
	ld bc,01501h		;bdd5
	inc a			;bdd8
	nop			;bdd9
	ld a,(bc)			;bdda
	nop			;bddb
	ld (bc),a			;bddc
	djnz lbdfdh		;bddd
	add hl,de			;bddf
	ld e,002h		;bde0
	ld c,000h		;bde2
	ld bc,01413h		;bde4
lbde7h:
	nop			;bde7
	ld de,00500h		;bde8
	djnz lbdfch		;bdeb
	rla			;bded
	ld a,(bc)			;bdee
	ld d,014h		;bdef
	ld a,(de)			;bdf1
	djnz lbe0dh		;bdf2
	ld a,(bc)			;bdf4
	ld c,012h		;bdf5
	nop			;bdf7
	ld bc,03110h		;bdf8
	nop			;bdfb
lbdfch:
	ccf			;bdfc
lbdfdh:
	nop			;bdfd
	ld bc,sub_4512h+1		;bdfe
	nop			;be01
	inc d			;be02
	nop			;be03
	ld bc,03c13h		;be04
	nop			;be07
	dec d			;be08
	nop			;be09
	ld bc,03c10h		;be0a
lbe0dh:
	nop			;be0d
	ld d,000h		;be0e
	ld bc,02810h		;be10
	nop			;be13
	ld e,000h		;be14
	ld (bc),a			;be16
	ld d,019h		;be17
	add hl,de			;be19
	add hl,de			;be1a
	ld (bc),a			;be1b
	rra			;be1c
	nop			;be1d
	ld bc,04613h		;be1e
	nop			;be21
	inc h			;be22
	nop			;be23
	ld bc,l6414h		;be24
	nop			;be27
	dec h			;be28
	nop			;be29
	ld (bc),a			;be2a
	djnz $+32		;be2b
	ld a,(de)			;be2d
	ld e,002h		;be2e
	daa			;be30
	nop			;be31
	ld bc,0321ah		;be32
	nop			;be35
	add hl,hl			;be36
	nop			;be37
	ld bc,08017h		;be38
	nop			;be3b
	ld hl,(00100h)		;be3c
	inc de			;be3f
	ld (02b00h),hl		;be40
	nop			;be43
	ld bc,03c10h		;be44
	nop			;be47
	inc l			;be48
	nop			;be49
	ld bc,00316h		;be4a
	nop			;be4d
	dec l			;be4e
	nop			;be4f
	ld bc,l5010h		;be50
	nop			;be53
	ld sp,00500h		;be54
	djnz lbe63h		;be57
	inc de			;be59
	ld a,(bc)			;be5a
	inc d			;be5b
	ld a,(bc)			;be5c
	ld d,00ah		;be5d
	rla			;be5f
	ld a,(bc)			;be60
	ld c,032h		;be61
lbe63h:
	ld bc,01501h		;be63
	ld c,c			;be66
	nop			;be67
	inc sp			;be68
	ld bc,01501h		;be69
	scf			;be6c
	nop			;be6d
	inc (hl)			;be6e
	nop			;be6f
	ld bc,03c13h		;be70
	nop			;be73
	ld (hl),001h		;be74
	ld (bc),a			;be76
	dec d			;be77
	ld e,019h		;be78
	ld e,002h		;be7a
	inc a			;be7c
	nop			;be7d
	ld bc,l5013h		;be7e
	nop			;be81
	ld b,a			;be82
	nop			;be83
	ld (bc),a			;be84
	djnz lbeafh		;be85
	inc de			;be87
	inc d			;be88
	ld (bc),a			;be89
	ld a,000h		;be8a
	ld bc,00110h		;be8c
	nop			;be8f
	inc de			;be90
	nop			;be91
	ld (bc),a			;be92
	djnz lbebdh		;be93
	inc de			;be95
	inc d			;be96
	ld (bc),a			;be97
	ld c,l			;be98
	nop			;be99
	ld (bc),a			;be9a
	jr lbee3h		;be9b
	inc de			;be9d
	ld a,(bc)			;be9e
	inc b			;be9f
	ld c,a			;bea0
	nop			;bea1
	ld (bc),a			;bea2
	djnz lbec3h		;bea3
	inc d			;bea5
	jr z,$+4		;bea6
	ld d,d			;bea8
	ld bc,01502h		;bea9
	inc a			;beac
	add hl,de			;bead
	inc de			;beae
lbeafh:
	ld (bc),a			;beaf
	ld c,c			;beb0
	nop			;beb1
	ld bc,06313h		;beb2
	nop			;beb5
	ld d,(hl)			;beb6
	nop			;beb7
	ld bc,03f10h		;beb8
	nop			;bebb
	ld d,a			;bebc
lbebdh:
	nop			;bebd
	ld (bc),a			;bebe
	ld a,(de)			;bebf
	ld (00a13h),a		;bec0
lbec3h:
	ld (bc),a			;bec3
	ld e,c			;bec4
	nop			;bec5
	ld bc,l6416h		;bec6
	nop			;bec9
	ld e,(hl)			;beca
	nop			;becb
	ld bc,03210h		;becc
	nop			;becf
	ld e,a			;bed0
	nop			;bed1
	ld bc,l4614h		;bed2
	nop			;bed5
	ld h,d			;bed6
	nop			;bed7
	ld bc,01e13h		;bed8
	nop			;bedb
	ld h,e			;bedc
	nop			;bedd
	ld bc,03218h		;bede
	nop			;bee1
	ld h,(hl)			;bee2
lbee3h:
	nop			;bee3
	inc bc			;bee4
	add hl,de			;bee5
	ld a,(bc)			;bee6
	inc d			;bee7
	ld a,(bc)			;bee8
	rla			;bee9
	ld a,(bc)			;beea
	inc c			;beeb
	ld l,d			;beec
	nop			;beed
	ld (bc),a			;beee
	djnz lbf0fh		;beef
	rla			;bef1
	ld e,002h		;bef2
	ld l,e			;bef4
	nop			;bef5
	ld (bc),a			;bef6
	rla			;bef7
	jr z,lbf10h		;bef8
	ld e,002h		;befa
	dec a			;befc
	nop			;befd
	ld bc,04213h		;befe
	nop			;bf01
	ld b,b			;bf02
	nop			;bf03
	ld bc,0011ah		;bf04
	nop			;bf07
	ld b,c			;bf08
	nop			;bf09
	ld (bc),a			;bf0a
	add hl,de			;bf0b
	ld e,014h		;bf0c
	inc d			;bf0e
lbf0fh:
	ld (bc),a			;bf0f
lbf10h:
	ld b,h			;bf10
	nop			;bf11
	inc bc			;bf12
	ld d,016h		;bf13
	rla			;bf15
	ld d,01ah		;bf16
	ld d,009h		;bf18
	ld b,(hl)			;bf1a
	nop			;bf1b
	dec b			;bf1c
	djnz lbf29h		;bf1d
	inc de			;bf1f
	ld a,(bc)			;bf20
	inc d			;bf21
	ld a,(bc)			;bf22
	add hl,de			;bf23
	ld a,(bc)			;bf24
	rla			;bf25
	ld a,(bc)			;bf26
	ld c,054h		;bf27
lbf29h:
	nop			;bf29
	ld bc,01e19h		;bf2a
	nop			;bf2d
	ld c,d			;bf2e
	nop			;bf2f
	ld bc,03f10h		;bf30
	nop			;bf33
	ld c,h			;bf34
	nop			;bf35
	ld bc,03213h		;bf36
	nop			;bf39
	ld c,(hl)			;bf3a
	nop			;bf3b
	ld bc,03018h		;bf3c
	nop			;bf3f
	ld d,b			;bf40
	nop			;bf41
	ld (bc),a			;bf42
	djnz lbf63h		;bf43
	inc d			;bf45
	add hl,de			;bf46
	ld (bc),a			;bf47
	ld d,c			;bf48
	nop			;bf49
	ld (bc),a			;bf4a
	ld d,03ch		;bf4b
	ld a,(de)			;bf4d
	ld e,002h		;bf4e
	ld d,e			;bf50
	nop			;bf51
	ld (bc),a			;bf52
	inc de			;bf53
	ld e,01ah		;bf54
	ld e,002h		;bf56
	ld d,l			;bf58
	nop			;bf59
	ld bc,l641ah		;bf5a
	nop			;bf5d
	ld e,b			;bf5e
	nop			;bf5f
	ld bc,00819h		;bf60
lbf63h:
	nop			;bf63
	ld e,d			;bf64
	nop			;bf65
	ld (bc),a			;bf66
	djnz lbf87h		;bf67
	ld a,(de)			;bf69
	ld e,002h		;bf6a
	ld e,l			;bf6c
	nop			;bf6d
	dec b			;bf6e
	inc de			;bf6f
	inc d			;bf70
	inc d			;bf71
	inc d			;bf72
	ld d,014h		;bf73
	add hl,de			;bf75
	inc d			;bf76
	ld a,(de)			;bf77
	ld a,(bc)			;bf78
	ld c,060h		;bf79
	ld bc,01501h		;bf7b
	ld h,h			;bf7e
	nop			;bf7f
	ld h,c			;bf80
	nop			;bf81
	ld bc,l6413h		;bf82
	nop			;bf85
	ld h,h			;bf86
lbf87h:
	ld bc,01501h		;bf87
	ccf			;bf8a
	nop			;bf8b
	ld h,l			;bf8c
	nop			;bf8d
	ld bc,00218h		;bf8e
	nop			;bf91
	ld h,a			;bf92
	nop			;bf93
	ld bc,02c13h		;bf94
	nop			;bf97
	ld l,b			;bf98
	nop			;bf99
	inc bc			;bf9a
	djnz lbfbbh		;bf9b
	rla			;bf9d
	dec c			;bf9e
	add hl,de			;bf9f
	dec h			;bfa0
	dec bc			;bfa1
	ld l,h			;bfa2
	nop			;bfa3
	ld (bc),a			;bfa4
	jr lbfbbh		;bfa5
	add hl,de			;bfa7
	inc d			;bfa8
	ld (bc),a			;bfa9
	ld l,l			;bfaa
	nop			;bfab
	ld bc,0c816h		;bfac
	nop			;bfaf
	ld l,(hl)			;bfb0
	nop			;bfb1
	dec b			;bfb2
	inc d			;bfb3
	inc d			;bfb4
	ld d,014h		;bfb5
	rla			;bfb7
	inc d			;bfb8
	add hl,de			;bfb9
	inc d			;bfba
lbfbbh:
	ld a,(de)			;bfbb
	jr z,lbfcch		;bfbc
	ld l,a			;bfbe
	nop			;bfbf
	ld bc,l5019h		;bfc0
	ld bc,00042h		;bfc3
	ld (bc),a			;bfc6
	ld a,(de)			;bfc7
	inc a			;bfc8
	add hl,de			;bfc9
	ld a,(bc)			;bfca
	ld (bc),a			;bfcb
lbfcch:
	ld b,e			;bfcc
	nop			;bfcd
	ld bc,03210h		;bfce
	nop			;bfd1
	ld b,l			;bfd2
	nop			;bfd3
	ld (bc),a			;bfd4
	ld a,(de)			;bfd5
	ld e,014h		;bfd6
	ld e,002h		;bfd8
	ld c,b			;bfda
	nop			;bfdb
	ld (bc),a			;bfdc
	ld a,(de)			;bfdd
	ld e,014h		;bfde
	ld e,002h		;bfe0
	ld c,e			;bfe2
	nop			;bfe3
	ld bc,03c13h		;bfe4
	nop			;bfe7
	ld e,e			;bfe8
	nop			;bfe9
	ld (bc),a			;bfea
	djnz $+52		;bfeb
	inc d			;bfed
	ld (l5c02h),a		;bfee
	nop			;bff1
	ld bc,00319h		;bff2
	nop			;bff5
	ld l,c			;bff6
	rst 38h			;bff7
	rst 38h			;bff8
	ld l,c			;bff9
	rst 38h			;bffa
	rst 38h			;bffb
	nop			;bffc
	nop			;bffd
	nop			;bffe
	nop			;bfff
