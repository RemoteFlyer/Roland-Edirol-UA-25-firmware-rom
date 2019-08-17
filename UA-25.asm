;
;  D52 V3.3.6 8052 Disassembly of payload.bin
;  08/15/19 23:05
;
$NOMOD51
$INCLUDE (80c52.mcu)
;
	org	0
;
ljmp	START
;
ie0vec:	ljmp	X0e94
;
X0006:	clr	tf2
	setb	ie.5
	ret	
;
tf0vec:	ljmp	X1747
;
X000e:	clr	tf0
	setb	et0
	ret	
;
ie1vec:	ljmp	X0022
;
X0016:	clr	et0
	clr	ie.5
	ret	
;
tf1vec:	ljmp	X0029
;
X001e:	setb	21h.5
	ret	
;
X0021:	ret	
;
X0022:	reti	
;
servec:	ljmp	X1d41
;
X0026:	rr	a
	ajmp	X0002
;
X0029:	reti	
;
X002a:	ret	
;
	ljmp	X078d
;
X002e:	mov	psw,#8
	mov	r7,sbuf
	clr	ri
	clr	a
	mov	61h,a
	mov	a,r7
	cjne	a,#80h,X003c
;	
X003c:	jnc	X0044
	mov	dpl,r5
	mov	dph,r4
	clr	a
	jmp	@a+dptr
;
X0044:	cjne	a,#0f0h,X0047
X0047:	jnc	X0051
	anl	a,#70h
	rr	a
	rr	a
	mov	dptr,#X0059
	jmp	@a+dptr
;
X0051:	anl	a,#0fh
	rl	a
	rl	a
	mov	dptr,#X0075
	jmp	@a+dptr
;
X0059:	ljmp	X00b5
;
	org	5dh
;
	ljmp	X00b9
;
	org	61h
;
	ljmp	X00bd
;
	org	65h
;
	ljmp	X00c1
;
	org	69h
;
	ljmp	X00d9
;
	org	6dh
;
	ljmp	X00dd
;
	org	71h
;
	ljmp	X00c5
;
	org	75h
;
X0075:	ljmp	X00f1
;
	org	79h
;
	ljmp	X0105
;
	org	7dh
;
	ljmp	X0119
;
X0080:	nop	
	ljmp	X0105
;
	org	85h
;
	ljmp	X0147
;
	org	89h
;
	ljmp	X0147
;
	org	8dh
;
	ljmp	X012d
;
	org	91h
;
	ljmp	X0157
;
	org	95h
;
	ljmp	X0181
;
	org	99h
;
	ljmp	X0181
;
	org	9dh
;
	ljmp	X0181
;
	org	0a1h
;
	ljmp	X0181
;
	org	0a5h
;
	ljmp	X0181
;
	org	0a9h
;
	ljmp	X0181
;
	org	0adh
;
	ljmp	X0188
;
	org	0b1h
;
	ljmp	X0181
;
	org	0b5h
;
X00b5:	mov	r6,#8
	sjmp	X00c7
;
X00b9:	mov	r6,#9
	sjmp	X00c7
;
X00bd:	mov	r6,#0ah
	sjmp	X00c7
;
X00c1:	mov	r6,#0bh
	sjmp	X00c7
;
X00c5:	mov	r6,#0eh
X00c7:	mov	a,5dh
	jz	X00cd
	acall	X01da
X00cd:	mov	59h,r6
	mov	5ah,r7
	mov	r5,#8bh
	mov	r4,#1
	mov	5dh,#0
	ret	
;
X00d9:	mov	r6,#0ch
	sjmp	X00df
;
X00dd:	mov	r6,#0dh
X00df:	mov	a,5dh
	jz	X00e5
	acall	X01da
X00e5:	mov	59h,r6
	mov	5ah,r7
	mov	r5,#9ah
	mov	r4,#1
	mov	5dh,#0
	ret	
;
X00f1:	mov	r6,#4
	mov	a,5dh
	jz	X00f9
	acall	X01da
X00f9:	mov	59h,r6
	mov	5ah,r7
	mov	r5,#0c5h
X00ff:	mov	r4,#1
X0101:	mov	5dh,#6
	ret	
;
X0105:	mov	r6,#2
X0107:	mov	a,5dh
	jz	X010d
	acall	X01da
X010d:	mov	59h,r6
	mov	5ah,r7
	mov	r5,#0b0h
	mov	r4,#1
	mov	5dh,#0
	ret	
;
X0119:	mov	r6,#3
	mov	a,5dh
	jz	X0121
	acall	X01da
X0121:	mov	59h,r6
	mov	5ah,r7
	mov	r5,#0a1h
	mov	r4,#1
	mov	5dh,#0
	ret	
;
X012d:	mov	r6,#5
	mov	a,5dh
	jz	X0135
	acall	X01da
X0135:	mov	59h,r6
	mov	5ah,r7
	mov	r5,#8ah
	mov	r4,#1
	clr	a
	mov	5bh,a
	mov	5ch,a
	mov	5dh,#0
	ajmp	X02c0
;
X0147:	mov	r7,#0
	mov	a,5dh
	jz	X014f
	acall	X01da
X014f:	mov	r5,#8ah
	mov	r4,#1
	mov	5dh,#0
	ret	
;
X0157:	mov	a,5dh
	cjne	a,#5,X0160
	mov	5ah,r7
	sjmp	X0176
;
X0160:	cjne	a,#6,X0167
	mov	5bh,r7
	sjmp	X0176
;
X0167:	cjne	a,#7,X016e
	mov	5ch,r7
	sjmp	X0176
;
X016e:	mov	r5,#8ah
	mov	r4,#1
	mov	5dh,#0
	ret	
;
X0176:	mov	59h,a
	mov	r5,#8ah
	mov	r4,#1
	mov	5dh,#0
	ajmp	X02c0
;
X0181:	mov	5eh,#0fh
	mov	5fh,r7
	ajmp	X038a
;
X0188:	setb	20h.0
	ret	
;
	mov	5bh,r7
	mov	r5,#92h
	mov	r4,#1
	ret	
;
	mov	5ch,r7
	mov	r5,#8bh
	mov	r4,#1
	ajmp	X02c0
;
	mov	5bh,r7
	mov	5ch,#0
	ajmp	X02c0
;
	mov	5bh,r7
	mov	r5,#0a8h
	mov	r4,#1
	ret	
;
	mov	5ch,r7
	mov	r5,#8ah
	mov	r4,#1
	ajmp	X02c0
;
	mov	5bh,r7
	mov	r5,#8ah
	mov	r4,#1
	mov	5ch,#0
	ajmp	X02c0
;
	mov	5ah,r7
	mov	r5,#0c5h
	mov	r4,#1
	mov	5dh,#6
	ret	
;
	mov	5bh,r7
	mov	r5,#0cfh
	mov	r4,#1
	mov	5dh,#7
	ret	
;
	mov	5ch,r7
	mov	r5,#0bbh
	mov	r4,#1
	mov	5dh,#5
	ajmp	X02c0
;
X01da:	mov	a,5dh
	cjne	a,#5,X01e3
	mov	5ah,r7
	sjmp	X01f2
;
X01e3:	cjne	a,#6,X01ea
	mov	5bh,r7
	sjmp	X01f2
;
X01ea:	xrl	a,#7
	jz	X01f0
	ajmp	X02bf
;
X01f0:	mov	5ch,r7
X01f2:	mov	a,5dh
	mov	59h,a
	jnb	20h.3,X01fb
	ajmp	X028a
;
X01fb:	mov	a,58h
	xrl	a,60h
	jz	X0203
	ajmp	X028a
;
X0203:	jnb	20h.1,X020b
	jnb	20h.2,X0249
	ajmp	X028a
;
X020b:	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,59h
	movx	@dptr,a
	inc	62h
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	a,5ah
	movx	@dptr,a
	inc	62h
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	a,5bh
	movx	@dptr,a
	inc	62h
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	a,5ch
	movx	@dptr,a
	inc	62h
	mov	a,62h
	xrl	a,#20h
	jz	X0242
	sjmp	X02bf
;
X0242:	setb	20h.1
	mov	dptr,#IEPDCNTX4
	sjmp	X0282
;
X0249:	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,59h
	movx	@dptr,a
	inc	62h
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	a,5ah
	movx	@dptr,a
	inc	62h
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	a,5bh
	movx	@dptr,a
	inc	62h
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	a,5ch
	movx	@dptr,a
	inc	62h
	mov	a,62h
	cjne	a,#20h,X02bf
	setb	20h.2
	mov	dptr,#IEPDCNTY4
X0282:	mov	a,#20h
	movx	@dptr,a
	clr	a
	mov	62h,a
	sjmp	X02bf
;
X028a:	mov	r3,60h
	mov	a,r3
	inc	a
	anl	a,#3fh
	cjne	a,58h,X0295
	sjmp	X02bf
;
X0295:	mov	60h,a
	mov	a,r3
	add	a,acc
	add	a,acc
	mov	r3,a
	add	a,#0
	mov	dpl,a
	mov	dph,#0feh
	mov	a,59h
	movx	@dptr,a
	mov	a,r3
	add	a,#1
	mov	dpl,a
	mov	a,5ah
	movx	@dptr,a
	mov	a,r3
	add	a,#2
	mov	dpl,a
	mov	a,5bh
	movx	@dptr,a
	mov	a,r3
	add	a,#3
	mov	dpl,a
	mov	a,5ch
	movx	@dptr,a
X02bf:	ret	
;
X02c0:	jnb	20h.3,X02c5
	ajmp	X0354
;
X02c5:	mov	a,58h
	xrl	a,60h
	jz	X02cd
	ajmp	X0354
;
X02cd:	jnb	20h.1,X02d5
	jnb	20h.2,X0313
	ajmp	X0354
;
X02d5:	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,59h
	movx	@dptr,a
	inc	62h
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	a,5ah
	movx	@dptr,a
	inc	62h
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	a,5bh
	movx	@dptr,a
	inc	62h
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	a,5ch
	movx	@dptr,a
	inc	62h
	mov	a,62h
	xrl	a,#20h
	jz	X030c
	sjmp	X0389
;
X030c:	setb	20h.1
	mov	dptr,#IEPDCNTX4
	sjmp	X034c
;
X0313:	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,59h
	movx	@dptr,a
	inc	62h
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	a,5ah
	movx	@dptr,a
	inc	62h
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	a,5bh
	movx	@dptr,a
	inc	62h
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	a,5ch
	movx	@dptr,a
	inc	62h
	mov	a,62h
	cjne	a,#20h,X0389
	setb	20h.2
	mov	dptr,#IEPDCNTY4
X034c:	mov	a,#20h
	movx	@dptr,a
	clr	a
	mov	62h,a
	sjmp	X0389
;
X0354:	mov	r3,60h
	mov	a,r3
	inc	a
	anl	a,#3fh
	cjne	a,58h,X035f
	sjmp	X0389
;
X035f:	mov	60h,a
	mov	a,r3
	add	a,acc
	add	a,acc
	mov	r3,a
	add	a,#0
	mov	dpl,a
	mov	dph,#0feh
	mov	a,59h
	movx	@dptr,a
	mov	a,r3
	add	a,#1
	mov	dpl,a
	mov	a,5ah
	movx	@dptr,a
	mov	a,r3
	add	a,#2
	mov	dpl,a
	mov	a,5bh
	movx	@dptr,a
	mov	a,r3
	add	a,#3
	mov	dpl,a
	mov	a,5ch
	movx	@dptr,a
X0389:	ret	
;
X038a:	jnb	20h.3,X038f
	ajmp	X041e
;
X038f:	mov	a,58h
	xrl	a,60h
	jz	X0397
	ajmp	X041e
;
X0397:	jnb	20h.1,X039f
	jnb	20h.2,X03dd
	ajmp	X041e
;
X039f:	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,5eh
	movx	@dptr,a
	inc	62h
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	a,5fh
	movx	@dptr,a
	inc	62h
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	a,#0
	movx	@dptr,a
	inc	62h
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	a,#0
	movx	@dptr,a
	inc	62h
	mov	a,62h
	xrl	a,#20h
	jz	X03d6
	sjmp	X0453
;
X03d6:	setb	20h.1
	mov	dptr,#IEPDCNTX4
	sjmp	X0416
;
X03dd:	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,5eh
	movx	@dptr,a
	inc	62h
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	a,5fh
	movx	@dptr,a
	inc	62h
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	a,#0
	movx	@dptr,a
	inc	62h
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	a,#0
	movx	@dptr,a
	inc	62h
	mov	a,62h
	cjne	a,#20h,X0453
	setb	20h.2
	mov	dptr,#IEPDCNTY4
X0416:	mov	a,#20h
	movx	@dptr,a
	clr	a
	mov	62h,a
	sjmp	X0453
;
X041e:	mov	r3,60h
	mov	a,r3
	inc	a
	anl	a,#3fh
	cjne	a,58h,X0429
	sjmp	X0453
;
X0429:	mov	60h,a
	mov	a,r3
	add	a,acc
	add	a,acc
	mov	r3,a
	add	a,#0
	mov	dpl,a
	mov	dph,#0feh
	mov	a,5eh
	movx	@dptr,a
	mov	a,r3
	add	a,#1
	mov	dpl,a
	mov	a,5fh
	movx	@dptr,a
	mov	a,r3
	add	a,#2
	mov	dpl,a
	mov	a,#0
	movx	@dptr,a
	mov	a,r3
	add	a,#3
	mov	dpl,a
	mov	a,#0
	movx	@dptr,a
X0453:	ret	
;
X0454:	acall	X046a
	clr	a
	mov	58h,a
	mov	60h,a
	mov	62h,a
	mov	61h,a
	clr	20h.3
	clr	20h.1
	clr	20h.2
	mov	a,sbuf
	clr	ri
	ret	
;
X046a:	push	psw
	mov	psw,#8
	mov	r5,#8ah
	mov	r4,#1
	clr	a
	mov	59h,a
	mov	5ah,a
	mov	5bh,a
	mov	5ch,a
	mov	5dh,a
	mov	5eh,a
	mov	5fh,a
	clr	20h.0
	pop	psw
	ret	
;
	org 487h	
;
CONFIG:
	db 12h, 01h, 10h, 01h, 0ffh, 00h, 0ffh, 08h
	db 82h, 05h ; VID_0582 - UA-25EX
	db 0E6h, 00h ; PID_00E6 - UA-25EX
	db 07h, 01h, 01h, 02h, 00h, 01h
X0499:
	db 12h, 01h, 10h, 01h, 00h, 00h, 00h, 08h
	db 82h, 05h ; VID_0582 - UA-25EX
	db 73h, 00h ; PID_0073 - UA-25EX
	db 07h, 01h, 01h, 02h, 00h, 01h
X04AB:
	db 09h, 02h, 9bh, 00h, 03h, 01h, 00h, 80h, 0f0h, 09h, 04h, 00h, 00h, 00h, 0FFh, 02h
	db 00h, 00h, 09h, 04h, 00h, 01h, 01h, 0FFh, 02h, 00h, 00h, 07h, 24h, 01h, 01h, 00h
	db 01h, 00h, 0Bh, 24h, 02h, 01h, 02h, 03h, 18h, 01h, 44h, 0ACh, 00h, 07h, 05h, 01h
	db 09h, 20h, 01h, 01h, 07h, 25h, 01h, 00h, 02h, 00h, 02h, 09h, 04h, 01h, 00h, 00h
	db 0FFh, 02h, 00h, 00h, 09h, 04h, 01h, 01h, 01h, 0FFh, 02h, 00h, 00h, 07h, 24h, 01h
	db 07h, 00h, 01h, 00h, 0Bh, 24h, 02h, 01h, 02h, 03h, 18h, 01h, 44h, 0ACh, 00h, 07h
	db 05h, 82h, 05h, 20h, 01h, 01h, 07h, 25h, 01h, 00h, 00h, 00h, 00h, 09h, 04h, 02h
	db 00h, 02h, 0FFh, 03h, 00h, 00h, 07h, 05h, 03h, 02h, 20h, 00h, 00h, 07h, 05h, 84h
	db 02h, 20h, 00h, 00h, 09h, 04h, 02h, 01h, 02h, 0FFh, 03h, 00h, 00h, 07h, 05h, 03h
	db 02h, 20h, 00h, 01h, 07h, 05h, 84h, 03h, 20h, 00h, 01h
X0546:
	db 09h, 02h, 9Bh, 00h, 03h, 01h, 00h, 80h, 0F0h, 09h, 04h, 00h, 00h, 00h, 0FFh, 02h
	db 00h, 00h, 09h, 04h, 00h, 01h, 01h, 0FFh, 02h, 00h, 00h, 07h, 24h, 01h, 01h, 00h
	db 01h, 00h, 0Bh, 24h, 02h, 01h, 02h, 03h, 18h, 01h, 80h, 0BBh, 00h, 07h, 05h, 01h
	db 09h, 40h, 01h, 01h, 07h, 25h, 01h, 00h, 02h, 00h, 02h, 09h, 04h, 01h, 00h, 00h
	db 0FFh, 02h, 00h, 00h, 09h, 04h, 01h, 01h, 01h, 0FFh, 02h, 00h, 00h, 07h, 24h, 01h
	db 07h, 00h, 01h, 00h, 0Bh, 24h, 02h, 01h, 02h, 03h, 18h, 01h, 80h, 0BBh, 00h, 07h
	db 05h, 82h, 05h, 40h, 01h, 01h, 07h, 25h, 01h, 00h, 00h, 00h, 00h, 09h, 04h, 02h
	db 00h, 02h, 0FFh, 03h, 00h, 00h, 07h, 05h, 03h, 02h, 20h, 00h, 00h, 07h, 05h, 84h
	db 02h, 20h, 00h, 00h, 09h, 04h, 02h, 01h, 02h, 0FFh, 03h, 00h, 00h, 07h, 05h, 03h
	db 02h, 20h, 00h, 01h, 07h, 05h, 84h, 03h, 20h, 00h, 01h
X05E1:
	db 09h, 02h, 69h, 00h, 02h, 01h, 00h, 80h, 0F0h, 09h, 04h, 00h, 00h, 00h, 0FFh, 02h
	db 00h, 00h, 09h, 04h, 00h, 01h, 01h, 0FFh, 02h, 00h, 00h, 07h, 24h, 01h, 01h, 00h
	db 01h, 00h, 0Bh, 24h, 02h, 01h, 02h, 03h, 18h, 01h, 00h, 77h
	db 01h, 07h, 05h, 01h, 09h, 60h, 02h, 01h, 07h, 25h, 01h, 00h, 02h, 00h, 02h, 09h, 04h, 01h, 00h, 02h, 0FFh
	db 03h, 00h, 00h, 07h, 05h, 03h, 02h, 20h, 00h, 00h, 07h, 05h, 84h, 02h, 20h, 00h, 00h, 09h, 04h, 01h, 01h, 02h, 0FFh
	db 03h, 00h, 00h, 07h, 05h, 03h, 02h, 20h, 00h, 01h, 07h, 05h, 84h, 03h, 20h, 00h, 01h
X064A:
	db 09h, 02h, 69h, 00h, 02h, 01h, 00h, 80h, 0F0h, 09h, 04h, 00h, 00h, 00h, 0FFh, 02h
	db 00h, 00h, 09h, 04h, 00h, 01h, 01h, 0FFh, 02h, 00h, 00h, 07h, 24h, 01h, 07h, 00h
	db 01h, 00h, 0Bh, 24h, 02h, 01h, 02h, 03h, 18h, 01h, 00h, 77h 
	db 01h, 07h, 05h, 82h, 05h, 60h, 02h, 01h, 07h, 25h, 01h, 00h, 00h, 00h, 00h, 09h, 04h, 01h, 00h, 02h, 0FFh
	db 03h, 00h, 00h, 07h, 05h, 03h, 02h, 20h, 00h, 00h, 07h, 05h, 84h, 02h, 20h, 00h, 00h, 09h, 04h, 01h, 01h, 02h, 0FFh
	db 03h, 00h, 00h, 07h, 05h, 03h, 02h, 20h, 00h, 01h, 07h, 05h, 84h, 03h, 20h, 00h, 01h
X06B3: 
	db 09h, 02h, 0AEh, 00h, 03h, 01h, 00h, 80h, 0F0h, 09h, 04h, 00h, 00h, 00h 
	db 01h, 01h, 00h, 00h, 0Ah, 24h, 01h, 00h, 01h, 34h, 00h, 02h, 01h, 02h
	db 0Ch, 24h, 02h, 01h, 01h, 01h, 00h, 02h, 03h, 00h, 00h, 00h, 09h, 24h, 03h, 03h, 04h, 03h, 00h, 01h, 00h
	db 0Ch, 24h, 02h, 04h, 01h, 06h, 00h, 02h, 03h, 00h, 00h
	db 00h, 09h, 24h, 03h, 07h, 01h, 01h, 00h, 04h
	db 00h, 09h, 04h, 01h, 00h, 00h, 01h, 02h, 00h
	db 00h, 09h, 04h, 01h, 01h, 01h, 01h, 02h, 00h
	db 00h, 07h, 24h, 01h, 01h
	db 00h, 01h, 00h, 0Bh, 24h, 02h, 01h, 02h, 02h, 10h, 01h, 44h, 0ACh, 00h, 09h, 05h, 01h, 09h, 0C0h, 00h, 01h, 00h, 00h, 07h, 25h, 01h, 00h
	db 02h, 00h, 02h, 09h, 04h, 02h, 00h, 00h, 01h, 02h, 00h, 00h, 09h, 04h, 02h, 01h, 01h, 01h, 02h, 00h, 00h, 07h, 24h, 01h, 07h
	db 00h, 01h, 00h, 0Bh, 24h, 02h, 01h, 02h, 02h, 10h, 01h, 44h, 0ACh, 00h, 09h, 05h, 82h, 05h, 0C0h, 00h, 01h, 00h, 00h, 07h, 25h, 01h, 00h
	db 00h, 00h, 00h
X0761:	DB 04h, 03h, 09h, 04h 
USBMAKE:	DB 0eh, 03h, "R",0,"o",0,"l",0,"a",0,"n",0,"d",0 ; X0765
USBMODEL:	DB 1ch, 03h, "E",0,"D",0,"I",0,"R",0,"O",0,"L",0," ",0,"U",0,"A",0,"-",0,"2",0,"5",0,"E",0,"X",0 ; X0773
X078d:	push	acc
	push	b
	push	dph
	push	dpl
	push	psw
	mov	psw,#10h
	clr	tf2
	lcall	X0c2a
	acall	X07ac
	pop	psw
	pop	dpl
	pop	dph
	pop	b
	pop	acc
	reti	
;
X07ac:	clr	ea
	mov	a,4ch
	jnz	X07b5
	setb	ea
	ret	
;
X07b5:	mov	a,4ah
	add	a,#0f0h
	mov	dpl,a
	clr	a
	addc	a,#0fch
	mov	dph,a
	movx	a,@dptr
	mov	44h,a
	inc	4ah
	djnz	4ch,X07d6
	clr	a
	mov	4ah,a
	mov	4ch,a
	mov	dptr,#OEPDCNTX3
	movx	@dptr,a
	clr	ie.5
	setb	ea
	ret	
;
X07d6:	mov	a,4ah
	add	a,#0f0h
	mov	dpl,a
	clr	a
	addc	a,#0fch
	mov	dph,a
	movx	a,@dptr
	mov	45h,a
	inc	4ah
	djnz	4ch,X07f7
	clr	a
	mov	4ah,a
	mov	4ch,a
	mov	dptr,#OEPDCNTX3
	movx	@dptr,a
	clr	ie.5
	setb	ea
	ret	
;
X07f7:	mov	a,4ah
	add	a,#0f0h
	mov	dpl,a
	clr	a
	addc	a,#0fch
	mov	dph,a
	movx	a,@dptr
	mov	46h,a
	inc	4ah
	djnz	4ch,X0818
	clr	a
	mov	4ah,a
	mov	4ch,a
	mov	dptr,#OEPDCNTX3
	movx	@dptr,a
	clr	ie.5
	setb	ea
	ret	
;
X0818:	mov	a,4ah
	add	a,#0f0h
	mov	dpl,a
	clr	a
	addc	a,#0fch
	mov	dph,a
	movx	a,@dptr
	mov	47h,a
	inc	4ah
	djnz	4ch,X0834
	clr	a
	mov	4ah,a
	mov	4ch,a
	mov	dptr,#OEPDCNTX3
	movx	@dptr,a
;
X0834:	setb	ea
	mov	a,44h
	cjne	a,#10h,X083b
X083b:	jc	X0840
	ljmp	X08da
;
X0840:	mov	dptr,#X0846
	mov	r0,a
	add	a,r0
	jmp	@a+dptr
;
X0846:	ajmp	X0866
;
	ajmp	X0866
;
	ajmp	X0867
;
	ajmp	X0878
;
	ajmp	X0889
;
	ajmp	X0890
;
	ajmp	X08a1
;
	ajmp	X0889
;
	ajmp	X08a9
;
	ajmp	X08a9
;
	ajmp	X08a9
;
	ajmp	X08a9
;
	ajmp	X08bd
;
	ajmp	X08bd
;
	ajmp	X08a9
;
	ajmp	X08d0
;
X0866:	ret	
;
X0867:	mov	42h,#0
	mov	a,45h
	cjne	a,#0f4h,X0870
	ret	
;
X0870:	cjne	a,#0f5h,X0874
	ret	
;
X0874:	mov	r0,#45h
	ajmp	X091a
;
X0878:	mov	42h,#0
	mov	a,45h
	cjne	a,#0f4h,X0881
	ret	
;
X0881:	cjne	a,#0f5h,X0885
	ret	
;
X0885:	mov	r0,#45h
	ajmp	X097b
;
X0889:	mov	42h,#0
	mov	r0,#45h
	ajmp	X097b
;
X0890:	mov	42h,#0
	mov	a,45h
	cjne	a,#0f4h,X0899
	ret	
;
X0899:	cjne	a,#0f5h,X089d
	ret	
;
X089d:	mov	r0,#45h
	ajmp	X08db
;
X08a1:	mov	42h,#0
	mov	r0,#45h
	ljmp	X091a
;
X08a9:	mov	a,42h
	cjne	a,45h,X08b3
	mov	r0,#46h
	ljmp	X091a
;
X08b3:	mov	42h,45h
	mov	4bh,#0
	mov	r0,#45h
	ajmp	X097b
;
X08bd:	mov	a,42h
	cjne	a,45h,X08c6
	mov	r0,#46h
	sjmp	X08db
;
X08c6:	mov	42h,45h
	mov	4bh,#0
	mov	r0,#45h
	sjmp	X091a
;
X08d0:	mov	a,45h
	cjne	a,#0feh,X08d6
	ret	
;
X08d6:	mov	r0,#45h
	sjmp	X08db
;
X08da:	ret	
;
X08db:	clr	ea
	mov	a,48h
	cjne	a,43h,X08ed
	jb	21h.3,X08ed
	mov	sbuf,@r0
	clr	ti
	setb	21h.3
	sjmp	X0917
;
X08ed:	mov	a,#80h
	add	a,48h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,@r0
	movx	@dptr,a
	inc	48h
	anl	48h,#7fh
	mov	a,48h
	clr	c
	subb	a,43h
	jc	X090c
	add	a,#4
	subb	a,#80h
	jc	X0917
	sjmp	X0910
;
X090c:	add	a,#4
	jnc	X0917
X0910:	setb	21h.4
	clr	ie.5
	setb	ea
	ret	
;
X0917:	setb	ea
	ret	
;
X091a:	clr	ea
	mov	a,48h
	cjne	a,43h,X093d
	jb	21h.3,X093d
	mov	sbuf,@r0
	clr	ti
	setb	21h.3
	inc	r0
	mov	a,#80h
	add	a,48h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,@r0
	movx	@dptr,a
	inc	48h
	anl	48h,#7fh
	sjmp	X0978
;
X093d:	mov	a,#80h
	add	a,48h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,@r0
	movx	@dptr,a
	inc	48h
	anl	48h,#7fh
	inc	r0
	mov	a,#80h
	add	a,48h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,@r0
	movx	@dptr,a
	inc	48h
	anl	48h,#7fh
	mov	a,48h
	clr	c
	subb	a,43h
	jc	X096d
	add	a,#4
	subb	a,#80h
	jc	X0978
	sjmp	X0971
;
X096d:	add	a,#4
	jnc	X0978
X0971:	setb	21h.4
	clr	ie.5
	setb	ea
	ret	
;
X0978:	setb	ea
	ret	
;
X097b:	clr	ea
	mov	a,48h
	cjne	a,43h,X09af
	jb	21h.3,X09af
	mov	sbuf,@r0
	clr	ti
	setb	21h.3
	inc	r0
	mov	a,#80h
	add	a,48h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,@r0
	movx	@dptr,a
	inc	48h
	anl	48h,#7fh
	inc	r0
	mov	a,#80h
	add	a,48h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,@r0
	movx	@dptr,a
	inc	48h
	anl	48h,#7fh
	sjmp	X09fb
;
X09af:	mov	a,#80h
	add	a,48h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,@r0
	movx	@dptr,a
	inc	48h
	anl	48h,#7fh
	inc	r0
	mov	a,#80h
	add	a,48h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,@r0
	movx	@dptr,a
	inc	48h
	anl	48h,#7fh
	inc	r0
	mov	a,#80h
	add	a,48h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,@r0
	movx	@dptr,a
	inc	48h
	anl	48h,#7fh
	mov	a,48h
	clr	c
	subb	a,43h
	jc	X09f0
	add	a,#4
	subb	a,#80h
	jc	X09fb
	sjmp	X09f4
;
X09f0:	add	a,#4
	jnc	X09fb
X09f4:	setb	21h.4
	clr	ie.5
	setb	ea
	ret	
;
X09fb:	setb	ea
	ret	
;
X09fe:	clr	ea
	mov	dptr,#OEPDCNTX3
	movx	a,@dptr
	jnb	acc.7,X0a15
	anl	a,#7fh
	mov	r7,a
	mov	4ch,a
	clr	a
	mov	4ah,a
	mov	a,4ch
	jnz	X0a15
	mov	a,r7
	movx	@dptr,a
X0a15:	setb	ea
	jb	21h.4,X0a24
	push	psw
	mov	psw,#10h
	lcall	X07ac
	pop	psw
X0a24:	ret	
;
X0a25:	mov	p1,#59h
	mov	p3,#0dfh
	clr	22h.4
	clr	20h.5
	clr	a
	mov	rb3r5,a
	lcall	X1c5d
	mov	40h,r7
	mov	a,r7
	mov	dptr,#X1f46
	movc	a,@a+dptr
	mov	rb3r1,a
	orl	rb3r1,#4
	lcall	X1d61
	mov	40h,r7
	mov	a,rb3r1
	jnb	acc.3,X0a7b
	mov	6ch,#0ffh
	anl	a,#0c0h
	jz	X0a70
	mov	69h,#1
	mov	a,40h
	jnb	acc.2,X0a65
	anl	rb3r1,#7fh
	clr	a
	mov	6bh,a
	mov	6ah,#0ffh
	sjmp	X0a87
;
X0a65:	anl	rb3r1,#0bfh
	mov	6bh,#0ffh
	clr	a
	mov	6ah,a
	sjmp	X0a87
;
X0a70:	clr	a
	mov	6bh,a
	mov	6ah,#1
	mov	69h,#2
	sjmp	X0a87
;
X0a7b:	clr	a
	mov	6ch,a
	mov	6bh,#1
	mov	6ah,#2
	mov	69h,#3
X0a87:	lcall	X14ec
	lcall	X1efe
	mov	dptr,#CPTCTL
	mov	a,#1
	movx	@dptr,a
	lcall	X17b9
	lcall	X188c
	lcall	X1c00
	lcall	X0f85
	setb	21h.2
	lcall	X13ea
X0aa4:	jnb	22h.4,X0aa4
	lcall	X1eda
	lcall	X1e8e
	mov	a,rb3r1
	jnb	acc.3,X0ad5
	lcall	X1e9e
	lcall	X0016
	lcall	X1eae
	lcall	X1f4e
	setb	ps
	lcall	X0454
	lcall	X1e19
X0ac6:	jb	21h.5,X0ac6
	mov	dptr,#Xfd71
	movx	a,@dptr
	jz	X0ac6
	lcall	X0006
	lcall	X1f11
X0ad5:	lcall	X000e
	clr	22h.0
	clr	a
	mov	6dh,a
	setb	20h.6
	mov	rb3r2,a
	mov	dptr,#PWMFRQ
	movx	@dptr,a
	mov	dptr,#PWMPWL
	mov	a,#0ffh
	movx	@dptr,a
	mov	dptr,#PWMPWH
	movx	@dptr,a
X0aef:	jnb	21h.5,X0b0a
	setb	20h.5
	setb	int1
	clr	p1.1
	clr	p1.2
	setb	p1.0
	setb	t0
	clr	t1
	mov	a,pcon
	anl	a,#0feh
	orl	a,#1
	mov	pcon,a
	sjmp	X0aef
;
X0b0a:	mov	dptr,#Xfd71
	movx	a,@dptr
	jz	X0aef
	jnb	20h.4,X0b4d
	clr	20h.4
	clr	p1.0
	lcall	X1ecc
	setb	p1.2
	lcall	X1243
	setb	p1.1
	lcall	X1da0
	lcall	X1ecc
	lcall	X1ecc
	lcall	X1d61
	mov	40h,r7
	mov	a,40h
	jnb	acc.0,X0b37
	jnb	acc.1,X0b39
X0b37:	clr	t0
X0b39:	lcall	X1ecc
	lcall	X1ecc
	clr	int1
	clr	a
	mov	rb3r2,a
	mov	rb3r4,a
	mov	rb3r0,a
	clr	20h.7
	mov	rb3r3,#32h
X0b4d:	jb	p1.0,X0aef
	jb	20h.7,X0b7e
	setb	20h.7
	mov	r7,#6
	lcall	X1c2f
	mov	rb3r5,r7
	mov	dptr,#ACGCTL
	movx	a,@dptr
	jb	acc.4,X0b6b
	mov	a,rb3r5
	jnb	acc.5,X0b6b
	lcall	X199e
X0b6b:	mov	a,40h
	jb	acc.0,X0b75
	mov	a,rb3r5
	jnb	acc.4,X0b79
X0b75:	clr	21h.2
	sjmp	X0b7b
;
X0b79:	setb	21h.2
X0b7b:	lcall	X16d4
X0b7e:	mov	a,#0ah
	setb	c
	subb	a,rb3r0
	jnc	X0ba3
	mov	a,rb3r4
	jnz	X0ba3
	mov	rb3r0,a
	mov	a,40h
	jnb	acc.0,X0ba1
	mov	c,20h.6
	mov	t0,c
	lcall	X1c8a
	mov	a,rb3r1
	jnb	acc.3,X0ba3
	lcall	X1e2d
	sjmp	X0ba3
;
X0ba1:	clr	t0
X0ba3:	mov	a,#32h
	setb	c
	subb	a,rb3r3
	jc	X0bad
	ljmp	X0aef
;
X0bad:	clr	a
	mov	rb3r3,a
	lcall	X1d61
	mov	40h,r7
	mov	a,40h
	jnb	acc.0,X0bc1
	mov	dptr,#PWMFRQ
	clr	a
	movx	@dptr,a
	sjmp	X0bd7
;
X0bc1:	mov	a,rb3r5
	mov	dptr,#PWMFRQ
	jnb	acc.4,X0bce
	movx	a,@dptr
	xrl	a,#80h
	sjmp	X0bd0
;
X0bce:	mov	a,#80h
X0bd0:	movx	@dptr,a
	mov	dptr,#PWMPWH
	mov	a,#0ffh
	movx	@dptr,a
X0bd7:	mov	a,rb3r4
	jz	X0bed
	djnz	rb3r4,X0bed
	mov	dptr,#DMATSL1
	mov	a,#11h
	movx	@dptr,a
	mov	a,40h
	jnb	acc.0,X0bed
	mov	c,20h.6
	mov	t0,c
X0bed:	mov	a,40h
	anl	a,#2
	mov	r7,a
	xrl	a,rb3r2
	jnz	X0bf9
	ljmp	X0aef
;
X0bf9:	mov	a,rb3r4
	jz	X0c00
	ljmp	X0aef
;
X0c00:	mov	a,40h
	jnb	acc.0,X0c1a
	clr	t0
	mov	dptr,#DMATSL1
	mov	a,#22h
	movx	@dptr,a
	mov	a,40h
	jb	acc.1,X0c17
	mov	rb3r4,#2
	sjmp	X0c1a
;
X0c17:	mov	rb3r4,#8
X0c1a:	mov	a,40h
	jb	acc.1,X0c23
	clr	t1
	sjmp	X0c25
;
X0c23:	setb	t1
X0c25:	mov	rb3r2,r7
	ljmp	X0aef
;
X0c2a:	clr	ie.5
	setb	20h.3
	jnb	20h.1,X0c43
	jnb	20h.2,X0c40
	clr	20h.3
	clr	ea
	jb	21h.4,X0c3d
	setb	ie.5
X0c3d:	setb	ea
	ret	
;
X0c40:	ljmp	X0cee
;
X0c43:	clr	ea
	mov	a,58h
	cjne	a,60h,X0c4c
	sjmp	X0cc5
;
X0c4c:	mov	a,58h
	add	a,acc
	add	a,acc
	mov	r5,a
	add	a,#0
	mov	dpl,a
	mov	dph,#0feh
	movx	a,@dptr
	mov	b,a
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,b
	movx	@dptr,a
	inc	62h
	mov	a,r5
	add	a,#1
	mov	dpl,a
	mov	dph,#0feh
	movx	a,@dptr
	mov	b,a
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,b
	movx	@dptr,a
	inc	62h
	mov	a,r5
	add	a,#2
	mov	dpl,a
	mov	dph,#0feh
	movx	a,@dptr
	mov	b,a
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,b
	movx	@dptr,a
	inc	62h
	mov	a,r5
	add	a,#3
	mov	dpl,a
	mov	dph,#0feh
	movx	a,@dptr
	mov	b,a
	mov	a,#10h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,b
	movx	@dptr,a
	inc	62h
	inc	58h
	anl	58h,#3fh
	setb	ea
	mov	a,62h
	xrl	a,#20h
	jz	X0cd7
	ajmp	X0c43
;
X0cc5:	setb	ea
	mov	a,62h
	jnz	X0cd7
	clr	20h.3
	clr	ea
	jb	21h.4,X0cd4
	setb	ie.5
X0cd4:	setb	ea
	ret	
;
X0cd7:	mov	dptr,#IEPDCNTX4
	mov	a,62h
	movx	@dptr,a
	setb	20h.1
	clr	a
	mov	62h,a
	clr	20h.3
	clr	ea
	jb	21h.4,X0ceb
	setb	ie.5
X0ceb:	setb	ea
	ret	
;
X0cee:	clr	ea
	mov	a,58h
	cjne	a,60h,X0cf7
	sjmp	X0d70
;
X0cf7:	mov	a,58h
	add	a,acc
	add	a,acc
	mov	r5,a
	add	a,#0
	mov	dpl,a
	mov	dph,#0feh
	movx	a,@dptr
	mov	b,a
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,b
	movx	@dptr,a
	inc	62h
	mov	a,r5
	add	a,#1
	mov	dpl,a
	mov	dph,#0feh
	movx	a,@dptr
	mov	b,a
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,b
	movx	@dptr,a
	inc	62h
	mov	a,r5
	add	a,#2
	mov	dpl,a
	mov	dph,#0feh
	movx	a,@dptr
	mov	b,a
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,b
	movx	@dptr,a
	inc	62h
	mov	a,r5
	add	a,#3
	mov	dpl,a
	mov	dph,#0feh
	movx	a,@dptr
	mov	b,a
	mov	a,#30h
	add	a,62h
	mov	dpl,a
	mov	dph,#0fdh
	mov	a,b
	movx	@dptr,a
	inc	62h
	inc	58h
	anl	58h,#3fh
	setb	ea
	mov	a,62h
	xrl	a,#20h
	jz	X0d82
	ajmp	X0cee
;
X0d70:	setb	ea
	mov	a,62h
	jnz	X0d82
	clr	20h.3
	clr	ea
	jb	21h.4,X0d7f
	setb	ie.5
X0d7f:	setb	ea
	ret	
;
X0d82:	mov	dptr,#IEPDCNTY4
	mov	a,62h
	movx	@dptr,a
	setb	20h.2
	clr	a
	mov	62h,a
	clr	20h.3
	clr	ea
	jb	21h.4,X0d96
	setb	ie.5
X0d96:	setb	ea
	ret	
;
X0d99:	mov	dptr,#OEPDCNTX1
	movx	a,@dptr
	jz	X0da5
	mov	dptr,#OEPDCNTY1
	movx	a,@dptr
	jnz	X0dad
X0da5:	mov	dptr,#DMACTL0
	clr	a
	movx	@dptr,a
	mov	a,#81h
	movx	@dptr,a
X0dad:	mov	dptr,#ACGCTL
	movx	a,@dptr
	jb	acc.4,X0db7
	ljmp	X0e93
;
X0db7:	inc	25h
	mov	2ch,2ah
	mov	2dh,2bh
	mov	dptr,#ACGCAPL
	movx	a,@dptr
	mov	2bh,a
	mov	dptr,#ACGCAPH
	movx	a,@dptr
	mov	2ah,a
	mov	a,2bh
	add	a,acc
	mov	2bh,a
	mov	a,2ah
	rlc	a
	mov	2ah,a
	jnb	22h.3,X0de2
	clr	22h.3
	mov	2ch,a
	mov	2dh,2bh
	sjmp	X0e2e
;
X0de2:	clr	c
	mov	a,2bh
	subb	a,2dh
	mov	r7,a
	mov	a,2ah
	subb	a,2ch
	mov	r6,a
	clr	a
	mov	r5,a
X0def:	setb	c
	mov	a,r7
	subb	a,31h
	mov	a,r6
	subb	a,30h
	jnc	X0e01
	clr	c
	mov	a,r7
	subb	a,2fh
	mov	a,r6
	subb	a,2eh
	jnc	X0e1c
X0e01:	clr	c
	mov	a,r7
	subb	a,33h
	mov	r7,a
	mov	a,r6
	subb	a,32h
	mov	r6,a
	inc	25h
	inc	r5
	mov	a,r5
	setb	c
	subb	a,#3
	jc	X0def
	setb	22h.3
	mov	r6,32h
	mov	r7,33h
	clr	a
	mov	25h,a
X0e1c:	mov	a,24h
	add	a,33h
	xch	a,r5
	mov	a,23h
	addc	a,32h
	xch	a,r5
	clr	c
	subb	a,r7
	mov	24h,a
	mov	a,r5
	subb	a,r6
	mov	23h,a
X0e2e:	mov	a,25h
	clr	c
	subb	a,#0ah
	jc	X0e93
	clr	a
	mov	25h,a
	mov	a,rb3r1
	jnb	acc.4,X0e48
	mov	a,#2
	add	a,24h
	mov	24h,a
	clr	a
	addc	a,23h
	mov	23h,a
X0e48:	clr	c
	mov	a,24h
	subb	a,29h
	mov	r5,a
	mov	a,23h
	subb	a,28h
	mov	r4,a
	mov	a,23h
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r5
	add	a,r7
	mov	r7,a
	mov	a,r4
	addc	a,r6
	mov	r6,a
	mov	a,r7
	add	a,acc
	mov	r7,a
	mov	a,r6
	rlc	a
	mov	r6,a
	clr	c
	mov	a,27h
	subb	a,r7
	mov	27h,a
	mov	a,26h
	subb	a,r6
	mov	26h,a
	mov	a,27h
	mov	r6,26h
	mov	r0,#2
X0e78:	clr	c
	rlc	a
	xch	a,r6
	rlc	a
	xch	a,r6
	djnz	r0,X0e78
	mov	a,r6
	mov	dptr,#ACGFRQ1
	movx	@dptr,a
	mov	r7,27h
	mov	a,r7
	add	a,acc
	add	a,acc
	inc	dptr
	movx	@dptr,a
	mov	28h,23h
	mov	29h,24h
X0e93:	ret	
;
X0e94:	push	acc
	push	b
	push	dph
	push	dpl
	push	psw
	mov	psw,#0
	push	rb0r0
	push	rb0r1
	push	rb0r2
	push	rb0r3
	push	rb0r4
	push	rb0r5
	push	rb0r6
	push	rb0r7
	mov	dptr,#VECINT
	movx	a,@dptr
	mov	r7,a
	clr	ex0
	lcall	X14c6
	inc	r6
	movx	a,@dptr
	nop	
	inc	r6
	cpl	a
	rr	a
	inc	r6
	mov	a,r2
	inc	r0
	inc	r6
	mov	r6,a
	inc	r4
	inc	r7
	inc	r0
	lcall	X0f59
	rrc	a
	inc	r7
	anl	a,r1
	dec	a
	inc	r7
	add	a,r0
	dec	rb1r7
	dec	r0
	dec	@r0
	inc	r7
	inc	r5
	dec	@r1
	inc	r7
	orl	a,r7
	dec	r7
	nop	
	nop
;
;	org	0edeh
;
	inc	r7
	xrl	p1,#0ffh
	cpl	acc.4
	movx	@dptr,a
	lcall	X15e3
	sjmp	X0f68
;
	mov	dptr,#VECINT
	clr	a
	movx	@dptr,a
	lcall	X1569
	sjmp	X0f68
;
	mov	dptr,#VECINT
	clr	a
	movx	@dptr,a
	lcall	X09fe
	sjmp	X0f68
;
	mov	dptr,#VECINT
	clr	a
	movx	@dptr,a
	lcall	X1e7c
	sjmp	X0f68
;
	lcall	X105a
	sjmp	X0f63
;
	mov	dptr,#USBFADR
	clr	a
	movx	@dptr,a
	mov	dptr,#VECINT
	movx	@dptr,a
	sjmp	X0f68
;
	lcall	X001e
	lcall	X0016
	mov	a,rb3r1
	jnb	acc.3,X0f26
	lcall	X1f4e
X0f26:	sjmp	X0f63
;
	lcall	X1ef3
	mov	a,rb3r1
	jnb	acc.3,X0f45
	mov	dptr,#Xfd71
	movx	a,@dptr
	jz	X0f45
	lcall	X0454
	lcall	X1e19
	lcall	X1e9e
	lcall	X0006
	lcall	X1f11
X0f45:	lcall	X1e8e
	lcall	X000e
	setb	20h.4
	sjmp	X0f63
;
	mov	dptr,#VECINT
	clr	a
	movx	@dptr,a
	lcall	X0021
	sjmp	X0f68
;
X0f59:	mov	dptr,#VECINT
	clr	a
	movx	@dptr,a
	lcall	X0d99
	sjmp	X0f68
;
X0f63:	mov	dptr,#VECINT
	clr	a
	movx	@dptr,a
X0f68:	setb	ex0
	pop	rb0r7
	pop	rb0r6
	pop	rb0r5
	pop	rb0r4
	pop	rb0r3
	pop	rb0r2
	pop	rb0r1
	pop	rb0r0
	pop	psw
	pop	dpl
	pop	dph
	pop	b
	pop	acc
	reti	
;
X0f85:	mov	dptr,#IEPCNF2
	clr	a
	movx	@dptr,a
	mov	dptr,#IEPCNF3
	movx	@dptr,a
	mov	dptr,#IEPCNF5
	movx	@dptr,a
	mov	dptr,#IEPCNF6
	movx	@dptr,a
	mov	dptr,#OEPCNF1
	movx	@dptr,a
	mov	dptr,#OEPCNF2
	movx	@dptr,a
	mov	dptr,#OEPCNF3
	movx	@dptr,a
	mov	dptr,#OEPCNF5
	movx	@dptr,a
	mov	dptr,#OEPCNF6
	movx	@dptr,a
	mov	a,rb3r1
	jnb	acc.3,X0fea
	mov	dptr,#OEPBBAX3
	mov	a,#9eh
	movx	@dptr,a
	inc	dptr
	mov	a,#4
	movx	@dptr,a
	mov	dptr,#OEPCNF3
	mov	a,#84h
	movx	@dptr,a
	mov	dptr,#OEPDCNTX3
	clr	a
	movx	@dptr,a
	mov	dptr,#IEPBBAX4
	mov	a,#0a2h
	movx	@dptr,a
	mov	dptr,#IEPBBAY4
	mov	a,#0a6h
	movx	@dptr,a
	mov	dptr,#IEPBSIZ4
	mov	a,#4
	movx	@dptr,a
	mov	dptr,#IEPCNF4
	mov	a,#94h
	movx	@dptr,a
	mov	dptr,#IEPDCNTX4
	mov	a,#80h
	movx	@dptr,a
	mov	dptr,#IEPDCNTY4
	movx	@dptr,a
	setb	20h.1
	setb	20h.2
X0fea:	mov	a,rb3r1
	mov	dptr,#OEPCNF1
	jnb	acc.1,X0ff6
	mov	a,#0c5h
	sjmp	X0ff8
;
X0ff6:	mov	a,#0c3h
X0ff8:	movx	@dptr,a
	mov	dptr,#IEPCNF2
	movx	@dptr,a
	mov	a,rb3r1
	anl	a,#0f0h
X1001:	add	a,#0e0h
	jz	X1011
	add	a,#0e0h
	jz	X1032
	add	a,#0c0h
	jz	X1045
	add	a,#70h
	jnz	X1059
X1011:	mov	dptr,#OEPBBAX1
	mov	a,#2
	movx	@dptr,a
	inc	dptr
	mov	a,#27h
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	a,#29h
	lcall	X1e55
	mov	dptr,#IEPBBAX2
	mov	a,#50h
	movx	@dptr,a
	mov	a,#27h
	lcall	X1e5f
	mov	a,#77h
	sjmp	X1052
;
X1032:	mov	dptr,#OEPBBAX1
	mov	a,#2
	movx	@dptr,a
	inc	dptr
	mov	a,#4eh
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	a,#50h
	lcall	X1e55
	ret	
;
X1045:	mov	dptr,#IEPBBAX2
	mov	a,#2
	movx	@dptr,a
	mov	a,#4eh
	lcall	X1e5f
	mov	a,#50h
X1052:	movx	@dptr,a
	mov	dptr,#IEPDCNTY2
	mov	a,#80h
	movx	@dptr,a
X1059:	ret	
;
X105a:	lcall	X1bb7
	mov	dptr,#IEPCNF0
	movx	a,@dptr
	orl	a,#20h
	movx	@dptr,a
	mov	dptr,#OEPCNF0
	movx	a,@dptr
	orl	a,#20h
	movx	@dptr,a
	mov	dptr,#OEPDCNTX0
	clr	a
	movx	@dptr,a
	lcall	X1bc6
	clr	21h.6
	clr	a
	mov	56h,a
	mov	dptr,#SetupDataPacket1
	movx	a,@dptr
	mov	dptr,#Xfd50
	movx	@dptr,a
	mov	dptr,#SetupDataPacket2
	movx	a,@dptr
	mov	dptr,#Xfd51
	movx	@dptr,a
	mov	dptr,#SetupDataPacket3
	movx	a,@dptr
	mov	dptr,#Xfd53
	movx	@dptr,a
	mov	dptr,#SetupDataPacket4
	movx	a,@dptr
	mov	dptr,#Xfd52
	movx	@dptr,a
	mov	dptr,#SetupDataPacket5
	movx	a,@dptr
	mov	dptr,#Xfd55
	movx	@dptr,a
	mov	dptr,#SetupDataPacket6
	movx	a,@dptr
	mov	dptr,#Xfd54
	movx	@dptr,a
	mov	dptr,#SetupDataPacket7
	movx	a,@dptr
	mov	dptr,#Xfd57
	movx	@dptr,a
	mov	dptr,#SetupDataPacket8
	movx	a,@dptr
	mov	dptr,#Xfd56
	movx	@dptr,a
	mov	a,51h
	xrl	a,#7
	jz	X10c3
	mov	a,51h
	cjne	a,#3,X10c6
X10c3:	mov	50h,#1
X10c6:	mov	a,51h
	xrl	a,#6
	jz	X10d1
	mov	a,51h
	cjne	a,#4,X10d4
X10d1:	mov	55h,#1
X10d4:	mov	dptr,#Xfd50
	movx	a,@dptr
	jnb	acc.7,X10ed
	mov	51h,#5
	mov	57h,#1
	lcall	X1363
	mov	a,51h
	xrl	a,#3
	jnz	X1113
	ljmp	X19f7
;
X10ed:	mov	dptr,#Xfd56
	movx	a,@dptr
	jnz	X10f5
	inc	dptr
	movx	a,@dptr
X10f5:	jnz	X1100
	mov	51h,#4
	mov	57h,#2
	ljmp	X1363
;
X1100:	mov	51h,#2
	mov	57h,#2
	mov	dptr,#Xfd56
	movx	a,@dptr
	mov	4eh,a
	inc	dptr
	movx	a,@dptr
	mov	4fh,a
	clr	a
	mov	56h,a
X1113:	ret	
;
X1114:	mov	dptr,#Xfd50
	movx	a,@dptr
	add	a,#0feh
	jz	X113a
	add	a,#2
	jz	X1123
	ljmp	X11a7
;
X1123:	mov	dptr,#Xfd52
	movx	a,@dptr
	jnz	X112d
	inc	dptr
	movx	a,@dptr
	xrl	a,#1
X112d:	jnz	X11a3
	clr	21h.0
	mov	c,21h.0
	mov	21h.1,c
	lcall	X1ebd
	sjmp	X119f
;
X113a:	mov	dptr,#Xfd55
	movx	a,@dptr
	mov	r7,a
	lcall	X1dbf
	mov	a,r7
	jnz	X1147
	sjmp	X11a3
;
X1147:	mov	dptr,#Xfd53
	movx	a,@dptr
	jnz	X11a3
	mov	dptr,#Xfd55
	movx	a,@dptr
	dec	a
	jz	X116d
	add	a,#0feh
	jz	X1185
	add	a,#81h
	jz	X1179
	add	a,#0feh
	jz	X1191
	add	a,#84h
	jnz	X119f
	mov	dptr,#Xfd73
	movx	a,@dptr
	anl	a,#0feh
	movx	@dptr,a
	sjmp	X119f
;
X116d:	mov	dptr,#Xfd75
	movx	a,@dptr
	anl	a,#0feh
	movx	@dptr,a
	mov	dptr,#OEPCNF1
	sjmp	X119b
;
X1179:	mov	dptr,#Xfd77
	movx	a,@dptr
	anl	a,#0feh
	movx	@dptr,a
	mov	dptr,#IEPCNF2
	sjmp	X119b
;
X1185:	mov	dptr,#Xfd79
	movx	a,@dptr
	anl	a,#0feh
	movx	@dptr,a
	mov	dptr,#OEPCNF3
	sjmp	X119b
;
X1191:	mov	dptr,#Xfd7a
	movx	a,@dptr
	anl	a,#0feh
	movx	@dptr,a
	mov	dptr,#IEPCNF4
X119b:	movx	a,@dptr
	anl	a,#0f7h
	movx	@dptr,a
X119f:	clr	a
	mov	r7,a
	sjmp	X11a9
;
X11a3:	mov	r7,#1
	sjmp	X11a9
;
X11a7:	mov	r7,#1
X11a9:	lcall	X1a4a
	ret	
;
X11ad:	mov	dptr,#Xfd50
	movx	a,@dptr
	add	a,#0feh
	jz	X11d0
	add	a,#2
	jz	X11bc
	ljmp	X123d
;
X11bc:	mov	dptr,#Xfd53
	movx	a,@dptr
	cjne	a,#1,X11ce
	setb	21h.0
	mov	c,21h.0
	mov	21h.1,c
	lcall	X1ebd
	sjmp	X1235
;
X11ce:	sjmp	X1239
;
X11d0:	mov	dptr,#Xfd55
	movx	a,@dptr
	mov	r7,a
	lcall	X1dbf
	mov	a,r7
	jnz	X11dd
	sjmp	X1239
;
X11dd:	mov	dptr,#Xfd53
	movx	a,@dptr
	jnz	X1239
	mov	dptr,#Xfd55
	movx	a,@dptr
	dec	a
	jz	X1203
	add	a,#0feh
	jz	X121b
	add	a,#81h
	jz	X120f
	add	a,#0feh
	jz	X1227
	add	a,#84h
	jnz	X1235
	mov	dptr,#Xfd73
	movx	a,@dptr
	orl	a,#1
	movx	@dptr,a
	sjmp	X1235
;
X1203:	mov	dptr,#Xfd75
	movx	a,@dptr
	orl	a,#1
	movx	@dptr,a
	mov	dptr,#OEPCNF1
	sjmp	X1231
;
X120f:	mov	dptr,#Xfd77
	movx	a,@dptr
	orl	a,#1
	movx	@dptr,a
	mov	dptr,#IEPCNF2
	sjmp	X1231
;
X121b:	mov	dptr,#Xfd79
	movx	a,@dptr
	orl	a,#1
	movx	@dptr,a
	mov	dptr,#OEPCNF3
	sjmp	X1231
;
X1227:	mov	dptr,#Xfd7a
	movx	a,@dptr
	orl	a,#1
	movx	@dptr,a
	mov	dptr,#IEPCNF4
X1231:	movx	a,@dptr
	orl	a,#8
	movx	@dptr,a
X1235:	clr	a
	mov	r7,a
	sjmp	X123f
;
X1239:	mov	r7,#1
	sjmp	X123f
;
X123d:	mov	r7,#1
X123f:	lcall	X1a4a
	ret	
;
X1243:	mov	dptr,#ACGCTL
	movx	a,@dptr
	jnb	acc.4,X124f
	mov	41h,#73h
	sjmp	X1252
;
X124f:	mov	41h,#43h
X1252:	mov	r5,41h
	clr	a
	mov	r7,a
	lcall	X1def
	mov	a,rb3r1
	jnb	acc.4,X1263
	mov	41h,#60h
	sjmp	X1270
;
X1263:	mov	a,rb3r1
	jnb	acc.5,X126d
	mov	41h,#64h
	sjmp	X1270
;
X126d:	mov	41h,#66h
X1270:	mov	r5,41h
	mov	r7,#1
	lcall	X1def
	mov	r5,#80h
	mov	r7,#2
	lcall	X1def
	mov	dptr,#ACGCTL
	movx	a,@dptr
	jb	acc.4,X128a
	mov	41h,#40h
	sjmp	X128d
;
X128a:	mov	41h,#48h
X128d:	
	mov	r5,41h
	mov	r7,#3
	lcall	X1def
	mov	r5,#4
	mov	r7,#0dh
	lcall	X1def
	mov	r5,#92h
	mov	r7,#0eh
	lcall	X1def
	mov	r5,#10h
	mov	r7,#0fh
	lcall	X1def
	mov	a,rb3r1
	jnb	acc.4,X12b3
	clr	a
	mov	41h,a
	sjmp	X12c0
;
X12b3:	mov	a,rb3r1
	jnb	acc.5,X12bd
	mov	41h,#2
	sjmp	X12c0
;
X12bd:	mov	41h,#0ah
X12c0:	mov	r5,41h
	mov	r7,#10h
	lcall	X1def
	mov	a,rb3r1
	jnb	acc.3,X12d0
	mov	r5,#0bh
	sjmp	X12d2
;
X12d0:	mov	r5,#2
X12d2:	mov	r7,#11h
	lcall	X1def
	ret	
;
X12d8:	mov	dptr,#Xfd50
	movx	a,@dptr
	anl	a,#1fh
	dec	a
	jz	X12f3
	dec	a
	jz	X12fb
	add	a,#2
	jnz	X135d
	mov	dptr,#Xfd70
	movx	a,@dptr
	mov	dptr,#Xfd58
	movx	@dptr,a
	clr	a
	sjmp	X12f8
;
X12f3:	clr	a
	mov	dptr,#Xfd58
	movx	@dptr,a
X12f8:	inc	dptr
	sjmp	X1350
;
X12fb:	mov	dptr,#Xfd55
	movx	a,@dptr
	mov	r7,a
	lcall	X1dbf
	mov	a,r7
	jnz	X1308
	sjmp	X135d
;
X1308:	mov	dptr,#Xfd55
	movx	a,@dptr
	dec	a
	jz	X1324
	add	a,#0feh
	jz	X132e
	add	a,#81h
	jz	X1329
	add	a,#0feh
	jz	X1333
	add	a,#84h
	jnz	X133b
	mov	dptr,#Xfd73
	sjmp	X1336
;
X1324:	mov	dptr,#Xfd75
	sjmp	X1336
;
X1329:	mov	dptr,#Xfd77
	sjmp	X1336
;
X132e:	mov	dptr,#Xfd79
	sjmp	X1336
;
X1333:	mov	dptr,#Xfd7a
X1336:	movx	a,@dptr
	mov	dptr,#Xfd58
	movx	@dptr,a
X133b:	mov	dptr,#Xfd58
	movx	a,@dptr
	jnb	acc.0,X1347
	mov	a,#1
	movx	@dptr,a
	sjmp	X134c
;
X1347:	clr	a
	mov	dptr,#Xfd58
	movx	@dptr,a
X134c:	clr	a
	mov	dptr,#Xfd59
X1350:	lcall	X1f3e
	mov	r5,#2
	mov	r4,a
	lcall	X1d81
	clr	a
	mov	r7,a
	sjmp	X135f
;
X135d:	mov	r7,#1
X135f:	lcall	X1a4a
	ret	
;
X1363:	clr	a
	mov	35h,a
	mov	dptr,#Xfd50
	movx	a,@dptr
	anl	a,#60h
	add	a,#0e0h
	jz	X1385
	add	a,#0e0h
	jz	X137e
	add	a,#40h
	jnz	X13e1
	lcall	X1828
	mov	35h,r7
	ret	
;
X137e:	lcall	X1cd7
	mov	35h,r7
	sjmp	X13e4
;
X1385:	mov	dptr,#Xfd50
	movx	a,@dptr
	anl	a,#1fh
	add	a,#0feh
	jz	X139d
	inc	a
	jnz	X13bb
	mov	dptr,#Xfd55
	movx	a,@dptr
	cjne	a,6ch,X139b
	sjmp	X13b1
;
X139b:	sjmp	X13b6
;
X139d:	mov	dptr,#Xfd55
	movx	a,@dptr
	add	a,#0fdh
	jz	X13b1
	add	a,#81h
	jz	X13b1
	add	a,#0feh
	jz	X13b1
	add	a,#83h
	jnz	X13b6
X13b1:	mov	34h,#1
	sjmp	X13be
;
X13b6:	clr	a
	mov	34h,a
	sjmp	X13be
;
X13bb:	mov	35h,#1
X13be:	mov	a,35h
	xrl	a,#1
	jz	X13e4
	mov	35h,#1
	mov	a,35h
	jnz	X13e4
	mov	dptr,#Xfd50
	movx	a,@dptr
	jnb	acc.7,X13e4
	lcall	X1f3f
	mov	dptr,#Xfd57
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0
	lcall	X1d81
	sjmp	X13e4
;
X13e1:	mov	35h,#1
X13e4:	mov	r7,35h
	lcall	X1a4a
	ret	
;
X13ea:	jnb	22h.4,X13f0
	ljmp	X146d
;
X13f0:	jnb	21h.2,X146b
	mov	dptr,#GLOBCTL
	mov	a,#0c4h
	movx	@dptr,a
	mov	dptr,#CPTCNF1
	mov	a,#0dh
	movx	@dptr,a
	mov	dptr,#CPTCNF3
	mov	a,#3ch
	movx	@dptr,a
	mov	dptr,#CPTCNF4
	mov	a,#0bh
	movx	@dptr,a
	mov	dptr,#DMATSL0
	mov	a,#11h
	movx	@dptr,a
	mov	dptr,#DMATSL1
	movx	@dptr,a
	mov	dptr,#DMACTL2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	a,rb3r1
	mov	dptr,#CPTCNF2
	jnb	acc.1,X1436
	mov	a,#0e5h
	movx	@dptr,a
	mov	dptr,#DMATSH0
	mov	a,#80h
	sjmp	X143e
;
X1436:	mov	a,#0cdh
	movx	@dptr,a
	mov	dptr,#DMATSH0
	mov	a,#40h
X143e:	movx	@dptr,a
	mov	dptr,#DMATSH1
	movx	@dptr,a
	mov	a,rb3r1
	anl	a,#0c0h
	add	a,#80h
	jz	X1457
	add	a,#40h
	jnz	X1459
	mov	dptr,#DMACTL0
	mov	a,#81h
	movx	@dptr,a
	sjmp	X1465
;
X1457:	sjmp	X145f
;
X1459:	mov	dptr,#DMACTL0
	mov	a,#81h
	movx	@dptr,a
X145f:	mov	dptr,#DMACTL1
	mov	a,#8ah
	movx	@dptr,a
X1465:	mov	dptr,#GLOBCTL
	mov	a,#0c5h
	movx	@dptr,a
X146b:	setb	22h.4
X146d:	ret	
;
X146e:	cjne	r3,#1,X1477
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	ret	
;
X1477:	jnc	X147b
	mov	a,@r1
	ret	
;
X147b:	cjne	r3,#0feh,X1480
	movx	a,@r1
	ret	
;
X1480:	mov	dpl,r1
	mov	dph,r2
	clr	a
	movc	a,@a+dptr
	ret	
;
X1487:	cjne	r3,#1,X1496
	mov	a,dpl
	add	a,r1
	mov	dpl,a
	mov	a,dph
	addc	a,r2
	mov	dph,a
	movx	a,@dptr
	ret	
;
X1496:	jnc	X149e
	mov	a,r1
	add	a,dpl
	mov	r0,a
	mov	a,@r0
	ret	
;
X149e:	cjne	r3,#0feh,X14a7
	mov	a,r1
	add	a,dpl
	mov	r0,a
	movx	a,@r0
	ret	
;
X14a7:	mov	a,dpl
	add	a,r1
	mov	dpl,a
	mov	a,dph
	addc	a,r2
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	ret	
;
X14b4:	cjne	r3,#1,X14bd
	mov	dpl,r1
	mov	dph,r2
	movx	@dptr,a
	ret	
;
X14bd:	jnc	X14c1
	mov	@r1,a
	ret	
;
X14c1:	cjne	r3,#0feh,X14c5
	movx	@r1,a
X14c5:	ret	
;
X14c6:	pop	dph
	pop	dpl
	mov	r0,a
X14cb:	clr	a
	movc	a,@a+dptr
	jnz	X14e1
	mov	a,#1
	movc	a,@a+dptr
	jnz	X14e1
	inc	dptr
	inc	dptr
X14d6:	movc	a,@a+dptr
	mov	r0,a
	mov	a,#1
	movc	a,@a+dptr
	mov	dpl,a
	mov	dph,r0
	clr	a
	jmp	@a+dptr
;
X14e1:	mov	a,#2
	movc	a,@a+dptr
	xrl	a,r0
	jz	X14d6
	inc	dptr
	inc	dptr
	inc	dptr
	sjmp	X14cb
;
X14ec:	setb	22h.3
	clr	a
	mov	25h,a
	mov	2ah,a
	mov	2bh,a
	mov	2ch,a
	mov	2dh,a
	mov	23h,a
	mov	24h,a
	mov	28h,a
	mov	29h,a
	mov	a,rb3r1
	anl	a,#0f0h
	add	a,#0e0h
	jz	X1539
	add	a,#10h
	jnz	X1540
	mov	dptr,#ACGDCTL
	mov	a,#10h
	movx	@dptr,a
	mov	dptr,#ACGFRQ2
	mov	a,#6ah
	movx	@dptr,a
	inc	dptr
	mov	a,#4ah
	movx	@dptr,a
	inc	dptr
	mov	a,#0e2h
	movx	@dptr,a
	mov	26h,#4ah
	mov	27h,a
	mov	30h,#69h
	mov	31h,#0d6h
	mov	2eh,#46h
	mov	2fh,#90h
	mov	32h,#58h
	mov	33h,#33h
	ret	
;
X1539:	mov	dptr,#ACGDCTL
	mov	a,#10h
	sjmp	X1544
;
X1540:	mov	dptr,#ACGDCTL
	clr	a
X1544:	movx	@dptr,a
	mov	dptr,#ACGFRQ2
	mov	a,#61h
	movx	@dptr,a
	inc	dptr
	mov	a,#0a8h
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	26h,#0a8h
	mov	27h,a
	mov	30h,#73h
	mov	31h,#33h
	mov	2eh,#4ch
	mov	2fh,#0cdh
	mov	32h,#60h
	mov	33h,a
	ret	
;
X1569:	mov	a,55h
	jz	X1576
	clr	a
	mov	55h,a
	mov	a,51h
	xrl	a,#3
	jnz	X15e2
X1576:	mov	a,51h
	xrl	a,#1
	jz	X15e2
	mov	dptr,#IEPCNF0
	movx	a,@dptr
	jb	acc.3,X15e2
	mov	a,57h
	xrl	a,#1
	jnz	X15ae
	mov	a,51h
	xrl	a,#3
	jnz	X15aa
	lcall	X19f7
	mov	a,r7
	xrl	a,#1
	jnz	X15d7
	mov	51h,#7
	mov	dptr,#IEPCNF0
	movx	a,@dptr
	orl	a,#8
	lcall	X1bbd
	mov	dptr,#OEPDCNTX0
	clr	a
	movx	@dptr,a
	sjmp	X15d7
;
X15aa:	setb	21h.6
	sjmp	X15d7
;
X15ae:	mov	a,57h
	xrl	a,#2
	jnz	X15d5
	mov	a,51h
	cjne	a,#6,X15bb
	sjmp	X15c9
;
X15bb:	mov	a,51h
	xrl	a,#8
	jnz	X15d1
	mov	dptr,#Xfd53
	movx	a,@dptr
	mov	dptr,#USBFADR
	movx	@dptr,a
X15c9:	lcall	X1bb0
	lcall	X1b9f
	sjmp	X15d7
;
X15d1:	setb	21h.6
	sjmp	X15d7
;
X15d5:	setb	21h.6
X15d7:	jnb	21h.6,X15e2
	lcall	X1bb0
	clr	21h.6
	lcall	X1b99
X15e2:	ret	
;
X15e3:	mov	a,50h
	jz	X15f0
	clr	a
	mov	50h,a
	mov	a,51h
	xrl	a,#2
	jnz	X165c
X15f0:	mov	a,51h
	xrl	a,#1
	jz	X165c
	mov	dptr,#OEPCNF0
	movx	a,@dptr
	mov	r7,a
	jb	acc.3,X165c
	mov	a,57h
	xrl	a,#1
	jnz	X1626
	mov	a,51h
	xrl	a,#7
	jz	X160f
	mov	a,51h
	cjne	a,#3,X1622
X160f:	lcall	X1bb0
	mov	dptr,#IEPCNF0
	movx	a,@dptr
	orl	a,#8
	movx	@dptr,a
	mov	dptr,#OEPCNF0
	mov	a,r7
	orl	a,#8
	movx	@dptr,a
	sjmp	X164c
;
X1622:	setb	21h.6
	sjmp	X164c
;
X1626:	mov	a,57h
	xrl	a,#2
	jnz	X164a
	mov	a,51h
	cjne	a,#2,X1646
	lcall	X18ea
	mov	a,r7
	jnz	X163b
	setb	21h.6
	sjmp	X164c
;
X163b:	cjne	r7,#1,X164c
	mov	51h,#4
	lcall	X1363
	sjmp	X164c
;
X1646:	setb	21h.6
	sjmp	X164c
;
X164a:	setb	21h.6
X164c:	jnb	21h.6,X165c
	lcall	X1bae
	lcall	X1bc6
	mov	dptr,#OEPDCNTX0
	clr	a
	lcall	X1b9e
X165c:	ret	
;
X165d:	clr	a
	mov	36h,a
	mov	37h,a
	mov	dptr,#Xfd52
	movx	a,@dptr
	mov	r7,a
	mov	3bh,a
	inc	dptr
	movx	a,@dptr
	mov	3ch,a
	mov	a,r7
	add	a,#0feh
	jz	X168d
	dec	a
	jz	X16cb
	add	a,#2
	jnz	X16ce
	mov	36h,#0
	mov	37h,#12h
	mov	r3,66h
	mov	r2,67h
	mov	r1,68h
	mov	38h,r3
	mov	39h,r2
	mov	3ah,r1
	sjmp	X16c0
;
X168d:	mov	r3,63h
	mov	r2,64h
	mov	r1,65h
	mov	dptr,#ie0vec
	lcall	X1487
	mov	r6,a
	mov	dptr,#X0002
	lcall	X1487
	mov	r4,#0
	add	a,#0
	mov	37h,a
	mov	a,r4
	addc	a,r6
	mov	36h,a
	mov	38h,r3
	mov	39h,r2
	mov	3ah,r1
	mov	r6,rb0r2
	mov	r7,rb0r1
	mov	a,r7
	orl	a,r6
	jnz	X16ba
	sjmp	X16ce
;
X16ba:	mov	r3,38h
	mov	r2,39h
	mov	r1,3ah
X16c0:	mov	r5,37h
	mov	r4,36h
	lcall	X1d81
	clr	a
	mov	r7,a
	sjmp	X16d0
;
X16cb:	ljmp	X1b1c
;
X16ce:	mov	r7,#1
X16d0:	lcall	X1a4a
	ret	
;
X16d4:	jnb	21h.2,X1703
	mov	dptr,#ACGCTL
	movx	a,@dptr
	jnb	acc.4,X1739
	setb	int1
	clr	p1.1
	anl	a,#0fbh
	movx	@dptr,a
	movx	a,@dptr
	anl	a,#0efh
	movx	@dptr,a
	movx	a,@dptr
	orl	a,#4
	movx	@dptr,a
	mov	dptr,#GLOBCTL
	movx	a,@dptr
	orl	a,#1
	movx	@dptr,a
	mov	r5,#43h
	clr	a
	mov	r7,a
	lcall	X1def
	mov	r5,#40h
	lcall	X173a
	ljmp	X199e
;
X1703:	mov	dptr,#ACGCTL
	movx	a,@dptr
	mov	r7,a
	jb	acc.4,X1739
	setb	int1
	clr	p1.1
	anl	a,#0fbh
	movx	@dptr,a
	lcall	X14ec
	mov	dptr,#ACGCTL
	movx	a,@dptr
	orl	a,#10h
	movx	@dptr,a
	movx	a,@dptr
	orl	a,#4
	movx	@dptr,a
	mov	dptr,#DMATSL1
	mov	a,#11h
	movx	@dptr,a
	mov	dptr,#GLOBCTL
	movx	a,@dptr
	orl	a,#1
	movx	@dptr,a
	mov	r5,#73h
	clr	a
	mov	r7,a
	lcall	X1def
	mov	r5,#48h
	lcall	X173a
X1739:	ret	
;
X173a:	mov	r7,#3
	lcall	X1def
	setb	p1.1
	lcall	X1da0
	clr	int1
	ret	
;
X1747:	push	acc
	push	b
	push	dph
	push	dpl
	push	psw
	clr	tr0
	mov	tl0,#0dfh
	mov	th0,#0b1h
	setb	tr0
	mov	a,rb3r1
	jnb	acc.3,X1764
	acall	X1775
	acall	X17a2
X1764:	clr	20h.7
	inc	rb3r0
	inc	rb3r3
	pop	psw
	pop	dpl
	pop	dph
	pop	b
	pop	acc
	reti	
;
X1775:	mov	a,49h
	cjne	a,#1bh,X178b
	clr	ea
	jb	21h.3,X1787
	mov	sbuf,#0feh
	clr	a
	mov	49h,a
	setb	21h.3
X1787:	setb	ea
	sjmp	X178d
;
X178b:	inc	49h
X178d:	mov	a,42h
	jz	X17a1
	inc	4bh
	mov	a,4bh
	cjne	a,#51h,X17a1
	clr	ea
	clr	a
	mov	4bh,a
	mov	42h,a
	setb	ea
X17a1:	ret	
;
X17a2:	jnb	20h.0,X17b8
	clr	ea
	inc	61h
	mov	a,61h
	cjne	a,#21h,X17b6
	lcall	X046a
	clr	a
	mov	61h,a
	clr	20h.0
X17b6:	setb	ea
X17b8:	ret	
;
X17b9:	mov	dptr,#GLOBCTL
	mov	a,#84h
	movx	@dptr,a
	mov	dptr,#IEPCNF0
	movx	@dptr,a
	inc	dptr
	mov	a,#1
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,#80h
	movx	@dptr,a
	mov	dptr,#OEPCNF0
	mov	a,#84h
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	inc	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	mov	dptr,#IEPCNF1
	movx	@dptr,a
	mov	dptr,#IEPCNF2
	movx	@dptr,a
	mov	dptr,#IEPCNF3
	movx	@dptr,a
	mov	dptr,#IEPCNF4
	movx	@dptr,a
	mov	dptr,#IEPCNF5
	movx	@dptr,a
	mov	dptr,#IEPCNF6
	movx	@dptr,a
	mov	dptr,#IEPCNF7
	movx	@dptr,a
	mov	dptr,#OEPCNF1
	movx	@dptr,a
	mov	dptr,#OEPCNF2
	movx	@dptr,a
	mov	dptr,#OEPCNF3
	movx	@dptr,a
	mov	dptr,#OEPCNF4
	movx	@dptr,a
	mov	dptr,#OEPCNF5
	movx	@dptr,a
	mov	dptr,#OEPCNF6
	movx	@dptr,a
	mov	dptr,#OEPCNF7
	movx	@dptr,a
	mov	dptr,#USBFADR
	movx	@dptr,a
	mov	dptr,#USBIMSK
	mov	a,#0f5h
	movx	@dptr,a
	lcall	X1bb0
	clr	21h.6
	mov	55h,a
	mov	50h,a
	ret	
;
X1828:	mov	dptr,#Xfd50
	movx	a,@dptr
	jnb	acc.7,X1853
	inc	dptr
	movx	a,@dptr
	jz	X1844
	add	a,#0fah
	jz	X1849
	add	a,#0fch
	jz	X184e
	add	a,#2
	jnz	X1884
	lcall	X1dd9
	sjmp	X1889
;
X1844:	lcall	X12d8
	sjmp	X1889
;
X1849:	lcall	X165d
	sjmp	X1889
;
X184e:	lcall	X1a9a
	sjmp	X1889
;
X1853:	mov	dptr,#Xfd51
	movx	a,@dptr
	add	a,#0fdh
	jz	X1870
	add	a,#0feh
	jz	X1875
	add	a,#0fch
	jz	X187a
	add	a,#0feh
	jz	X187f
	add	a,#0ah
	jnz	X1884
	lcall	X1114
	sjmp	X1889
;
X1870:	lcall	X11ad
	sjmp	X1889
;
X1875:	lcall	X1e04
	sjmp	X1889
;
X187a:	lcall	X1e69
	sjmp	X1889
;
X187f:	lcall	X1d20
	sjmp	X1889
;
X1884:	mov	r7,#1
	lcall	X1a4a
X1889:	mov	r7,#0
	ret	
;
X188c:	
	mov	a,rb3r1
	jnb	acc.3,X18d7
	anl	a,#0f0h
	add	a,#0e0h
	jz	X18ae
	add	a,#0e0h
	jz	X18b9
	add	a,#0c0h
	jz	X18c4
	add	a,#70h
	jnz	X18cd
;
	mov	63h,#0ffh
	mov	64h,#HIGH (X04AB) ;04h
	mov	65h,#LOW (X04AB) ;0abh
	sjmp	X18cd
;
X18ae:	mov	63h,#0ffh
	mov	64h,#HIGH (X0546) ; 05h
	mov	65h,#LOW (X0546) ; 46h
	sjmp	X18cd
;
X18b9:	mov	63h,#0ffh
	mov	64h,#HIGH (X05E1) ; 05h
	mov	65h,#LOW (X05E1) ; 0e1h
	sjmp	X18cd
;
X18c4:	mov	63h,#0ffh
	mov	64h,#HIGH (X064A) ; 06h
	mov	65h,#LOW (X064A) ; 4ah
;
X18cd:	
	mov	66h,#0ffh
	mov	67h,#HIGH (CONFIG) ; 04h
	mov	68h,#LOW (CONFIG) ; 87h
	ret	
;
X18d7:	
	mov	63h,#0ffh
	mov	64h,#HIGH (X06B3) ;06h
	mov	65h,#LOW (X06B3) ; 0b3h 
;
	mov	66h,#0ffh
	mov	67h,#HIGH (X0499) ; 04h
	mov	68h,#LOW (X0499) ; 99h
	ret	
;
X18ea:	mov	dptr,#OEPDCNTX0
	movx	a,@dptr
	anl	a,#7fh
	mov	r7,a
	clr	c
	subb	a,#8
	jnc	X1901
	mov	a,4fh
	xrl	a,r7
	jz	X1901
	mov	a,r7
	mov	4eh,#0
	mov	4fh,a
X1901:	clr	a
	mov	r7,a
X1903:	mov	a,4fh
	orl	a,4eh
	jz	X192f
	clr	a
	add	a,r7
	mov	dpl,a
	clr	a
	addc	a,#0f8h
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	a,#58h
	add	a,56h
	mov	dpl,a
	clr	a
	addc	a,#0fdh
	mov	dph,a
	mov	a,r6
	movx	@dptr,a
	inc	56h
	mov	a,4fh
	dec	4fh
	jnz	X192b
	dec	4eh
X192b:	inc	r7
	cjne	r7,#8,X1903
X192f:	mov	dptr,#OEPDCNTX0
	clr	a
	movx	@dptr,a
	mov	dptr,#IEPDCNTX0
	movx	@dptr,a
	mov	a,4fh
	orl	a,4eh
	jnz	X1941
	mov	r7,#1
	ret	
;
X1941:	mov	r7,#2
	ret	
;
X1944:	mov	37h,r3
	mov	38h,r2
	mov	39h,r1
	mov	3ah,r5
	mov	r3,#0
	mov	r2,#0
	mov	r1,#0
	mov	37h,r3
	mov	38h,r2
	mov	39h,r1
	mov	dptr,#Xfd71
	mov	a,3ah
	movx	@dptr,a
	clr	a
	mov	3fh,a
	mov	r5,a
	lcall	X1991
	mov	r5,#1
	lcall	X1991
	mov	r5,#2
	lcall	X1adc
	mov	r3,37h
	mov	r2,38h
	mov	r1,39h
	clr	a
	mov	3fh,a
	mov	r5,#3
	lcall	X1adc
	mov	a,3ah
	jnz	X1990
	mov	dptr,#Xfd75
	inc	a
	movx	@dptr,a
	mov	dptr,#Xfd77
	movx	@dptr,a
	mov	dptr,#Xfd79
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
X1990:	ret	
;
X1991:	lcall	X1adc
	mov	r3,37h
	mov	r2,38h
	mov	r1,39h
	clr	a
	mov	3fh,a
	ret	
;
X199e:	mov	r7,#8
	lcall	X1c2f
	mov	rb3r6,r7
	mov	r7,#9
	lcall	X1c2f
	mov	rb3r7,r7
	mov	a,rb3r6
	anl	a,#5
	jnz	X19f0
	mov	a,rb3r7
	jnz	X19b8
	sjmp	X19f0
;
X19b8:	mov	a,rb3r7
	anl	a,#1fh
	mov	r7,a
	cjne	r7,#6,X19c2
	sjmp	X19f0
;
X19c2:	mov	a,rb3r7
	anl	a,#7
	mov	r7,a
	xrl	a,#1
	jz	X19d8
	mov	a,r7
	xrl	a,#4
	jz	X19d8
	mov	a,rb3r7
	anl	a,#0fh
	mov	r7,a
	cjne	r7,#0eh,X19e2
X19d8:	mov	a,rb3r7
	mov	dptr,#DMATSL1
	jnb	acc.7,X19f3
	sjmp	X19ea
;
X19e2:	mov	a,rb3r7
	mov	dptr,#DMATSL1
	jb	acc.7,X19ee
X19ea:	mov	a,#22h
	movx	@dptr,a
	ret	
;
X19ee:	sjmp	X19f3
;
X19f0:	mov	dptr,#DMATSL1
X19f3:	mov	a,#11h
	movx	@dptr,a
	ret	
;
X19f7:	mov	a,4fh
	orl	a,4eh
	jnz	X1a07
	mov	a,4dh
	clr	c
	subb	a,#8
	jnc	X1a07
	mov	r7,#1
	ret	
;
X1a07:	clr	a
	mov	4dh,a
X1a0a:	mov	a,4fh
	orl	a,4eh
	jz	X1a41
	mov	r3,52h
	mov	r2,53h
	mov	r1,54h
	lcall	X146e
	mov	r7,a
	mov	a,#8
	add	a,4dh
	mov	dpl,a
	clr	a
	addc	a,#0f8h
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
	mov	a,#1
	add	a,54h
	mov	54h,a
	clr	a
	addc	a,53h
	mov	53h,a
	mov	a,4fh
	dec	4fh
	jnz	X1a3a
	dec	4eh
X1a3a:	inc	4dh
	mov	a,4dh
	cjne	a,#8,X1a0a
X1a41:	lcall	X1bc6
	mov	a,4dh
	movx	@dptr,a
	mov	r7,#0
	ret	
;
X1a4a:	mov	a,57h
	xrl	a,#1
	jnz	X1a69
	mov	a,51h
	xrl	a,#5
	jnz	X1a65
	mov	a,r7
	jnz	X1a61
	mov	51h,#3
	lcall	X1bb7
	sjmp	X1a8c
;
X1a61:	setb	21h.6
	sjmp	X1a8c
;
X1a65:	setb	21h.6
	sjmp	X1a8c
;
X1a69:	mov	a,57h
	xrl	a,#2
	jnz	X1a8a
	mov	a,51h
	cjne	a,#4,X1a86
	mov	a,r7
	jnz	X1a82
	mov	51h,#6
	mov	dptr,#IEPDCNTX0
	lcall	X1ba5
	sjmp	X1a8c
;
X1a82:	setb	21h.6
	sjmp	X1a8c
;
X1a86:	setb	21h.6
	sjmp	X1a8c
;
X1a8a:	setb	21h.6
X1a8c:	jnb	21h.6,X1a99
	lcall	X1bae
	mov	dptr,#OEPDCNTX0
	movx	@dptr,a
	lcall	X1b99
X1a99:	ret	
;
X1a9a:	mov	dptr,#Xfd55
	movx	a,@dptr
	mov	r7,a
	cjne	a,6ch,X1aa7
	mov	dptr,#Xfd72
	sjmp	X1abb
;
X1aa7:	mov	a,r7
	cjne	a,6bh,X1ab0
	mov	dptr,#Xfd74
	sjmp	X1abb
;
X1ab0:	mov	dptr,#Xfd55
	movx	a,@dptr
	mov	r7,a
	cjne	a,6ah,X1abe
	mov	dptr,#Xfd76
X1abb:	movx	a,@dptr
	sjmp	X1ac9
;
X1abe:	mov	a,r7
	cjne	a,69h,X1ac8
	mov	dptr,#Xfd78
	movx	a,@dptr
	sjmp	X1ac9
;
X1ac8:	clr	a
X1ac9:	mov	dptr,#Xfd58
	movx	@dptr,a
	lcall	X1f3f
	mov	r5,#1
	mov	r4,#0
	lcall	X1d81
	clr	a
	mov	r7,a
	ljmp	X1a4a
;
X1adc:	mov	a,r5
	cjne	a,6bh,X1af2
	mov	dptr,#Xfd74
	mov	a,3fh
	movx	@dptr,a
	jnz	X1aed
	lcall	X1f1a
	sjmp	X1b06
;
X1aed:	lcall	X1f23
	sjmp	X1b06
;
X1af2:	mov	a,r5
	cjne	a,6ah,X1b09
	mov	dptr,#Xfd76
	mov	a,3fh
	movx	@dptr,a
	jnz	X1b03
	lcall	X1f2c
	sjmp	X1b06
;
X1b03:	lcall	X1f35
X1b06:	mov	a,r7
	sjmp	X1b18
;
X1b09:	mov	a,r5
	cjne	a,69h,X1b16
	mov	dptr,#Xfd78
	mov	a,3fh
	movx	@dptr,a
	clr	a
	sjmp	X1b18
;
X1b16:	mov	a,#1
X1b18:	lcall	X14b4
	ret	
;
X1b1c:	mov	dptr,#Xfd53
	movx	a,@dptr
	dec	a
	jz	X1b35
	dec	a
	jz	X1b40
	add	a,#2
	jnz	X1b55
	mov	r3,#0ffh
	mov	r2,#HIGH (X0761) ; #7
	mov	r1,#LOW (X0761) ; #61h
	mov	dptr,#X0761
	sjmp	X1b49
;
X1b35:	mov	r3,#0ffh	; USBMAKE
	mov	r2,#HIGH (USBMAKE) ; #7
	mov	r1,#LOW (USBMAKE) ; #65h
	mov	dptr,#USBMAKE
	sjmp	X1b49
;
X1b40:	mov	r3,#0ffh	; USBMODEL
	mov	r2,#HIGH (USBMODEL) ; #7
	mov	r1,#LOW (USBMODEL) ; #73h
	mov	dptr,#USBMODEL
X1b49:	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0
	lcall	X1d81
	clr	a
	mov	r7,a
	sjmp	X1b57
;
X1b55:	mov	r7,#1
X1b57:	lcall	X1a4a
	ret	
;
X1b5b:	clr	ea
	mov	a,43h
	xrl	a,48h
	jz	X1b92
	mov	a,#80h
	add	a,43h
	mov	dpl,a
	mov	dph,#0fdh
	movx	a,@dptr
	mov	sbuf,a
	clr	ti
	inc	43h
	anl	43h,#7fh
	jnb	21h.4,X1b96
	mov	a,48h
	clr	c
	subb	a,43h
	jc	X1b88
	add	a,#4
	subb	a,#80h
	jnc	X1b96
	sjmp	X1b8c
;
X1b88:	add	a,#4
	jc	X1b96
X1b8c:	clr	21h.4
	setb	ie.5
	sjmp	X1b96
;
X1b92:	clr	ti
	clr	21h.3
X1b96:	setb	ea
	ret	
;
X1b99:	mov	dptr,#IEPDCNTX0
	mov	a,#80h
X1b9e:	movx	@dptr,a
X1b9f:	mov	dptr,#IEPCNF0
	movx	a,@dptr
	orl	a,#8
X1ba5:	movx	@dptr,a
	mov	dptr,#OEPCNF0
	movx	a,@dptr
	orl	a,#8
	movx	@dptr,a
	ret	
;
X1bae:	clr	21h.6
X1bb0:	mov	51h,#1
	clr	a
	mov	57h,a
	ret	
;
X1bb7:	mov	dptr,#IEPCNF0
	movx	a,@dptr
	anl	a,#0f7h
X1bbd:	movx	@dptr,a
	mov	dptr,#OEPCNF0
	movx	a,@dptr
	anl	a,#0f7h
	movx	@dptr,a
	ret	
;
X1bc6:	mov	dptr,#IEPDCNTX0
	mov	a,#80h
	movx	@dptr,a
	ret	
;
X1bcd:	mov	r5,rb0r7
	mov	r4,rb0r6
	setb	p1.5
	clr	p1.4
	mov	r7,#0
	mov	r6,#80h
X1bd9:	mov	a,r7
	orl	a,r6
	jz	X1bfd
	clr	p1.5
	mov	a,r6
	anl	a,r4
	mov	r2,a
	mov	a,r7
	anl	a,r5
	mov	r3,a
	orl	a,r2
	jz	X1bec
	setb	p1.7
	sjmp	X1bee
;
X1bec:	clr	p1.7
X1bee:	setb	p1.5
	mov	a,r3
	orl	a,r2
	setb	p1.5
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	mov	a,r7
	rrc	a
	mov	r7,a
	sjmp	X1bd9
;
X1bfd:	setb	p1.4
	ret	
;
X1c00:	clr	a
	mov	dptr,#Xfd70
	movx	@dptr,a
	mov	a,rb3r1
	jb	acc.2,X1c0e
	movx	a,@dptr
	orl	a,#1
	movx	@dptr,a
X1c0e:	clr	a
	mov	dptr,#Xfd71
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	inc	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	clr	22h.1
	clr	22h.2
	ret	
;
X1c2f:	clr	a
	mov	r6,a
	mov	dptr,#I2CCTL
	lcall	X1e41
	anl	a,#54h
	movx	@dptr,a
	mov	dptr,#I2CADR
	mov	a,#21h
	movx	@dptr,a
	mov	dptr,#I2CCTL
	movx	a,@dptr
	orl	a,#2
	movx	@dptr,a
	inc	dptr
	mov	a,#0ffh
	movx	@dptr,a
	lcall	X1cfd
	mov	dptr,#I2CDATI
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#I2CCTL
	movx	a,@dptr
	anl	a,#54h
	movx	@dptr,a
	mov	r7,rb0r6
	ret	
;
X1c5d:	clr	a
	mov	r7,a
	clr	p1.5
	setb	p1.3
	clr	p1.3
	setb	p1.3
	mov	r6,#3
X1c69:	mov	r5,rb0r6
	dec	r6
	mov	a,r5
	jz	X1c75
	setb	p1.5
	clr	p1.5
	sjmp	X1c69
;
X1c75:	mov	r6,#4
X1c77:	mov	a,r6
	jz	X1c89
	setb	p1.5
	jnb	p1.6,X1c81
	orl	rb0r7,a
X1c81:	clr	p1.5
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	sjmp	X1c77
;
X1c89:	ret	
;
X1c8a:	clr	p1.5
	setb	p1.3
	clr	p1.3
	jb	p1.6,X1ca9
	mov	c,p1.6
	cpl	c
	jnb	21h.7,X1c9a
	cpl	c
X1c9a:	jnc	X1ca9
	jnb	t0,X1ca3
	clr	t0
	sjmp	X1ca5
;
X1ca3:	setb	t0
X1ca5:	mov	c,t0
	mov	20h.6,c
X1ca9:	setb	p1.3
	mov	c,p1.6
	cpl	c
	mov	21h.7,c
	ret	
;
X1cb1:	mov	36h,r6
	mov	37h,r7
	mov	a,37h
	setb	c
	subb	a,#2
	jnc	X1cd6
	mov	a,36h
	jnb	acc.7,X1ccb
	mov	a,37h
	mov	dptr,#X0026
	movc	a,@a+dptr
	orl	6dh,a
	sjmp	X1cd4
;
X1ccb:	mov	a,37h
	mov	dptr,#X0026
	movc	a,@a+dptr
	cpl	a
	anl	6dh,a
X1cd4:	setb	22h.0
X1cd6:	ret	
;
X1cd7:	mov	dptr,#Xfd50
	movx	a,@dptr
	jb	acc.7,X1cfc
	mov	dptr,#Xfd51
	movx	a,@dptr
	dec	a
	jz	X1cec
	dec	a
	jz	X1cef
	add	a,#2
	jnz	X1cfc
X1cec:	mov	r7,#0
	ret	
;
X1cef:	mov	dptr,#Xfd52
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	lcall	X1cb1
	mov	r7,#0
X1cfc:	ret	
;
X1cfd:	
	mov	r7,#88h
	mov	r6,#13h
X1d01:	mov	dptr,#I2CCTL
	movx	a,@dptr
	mov	r5,a
	jb	acc.3,X1d15
	mov	a,r7
	dec	r7
	jnz	X1d0e
	dec	r6
X1d0e:	dec	a
	orl	a,r6
	jnz	X1d01
	mov	a,r5
	sjmp	X1d1c
;
X1d15:	mov	dptr,#I2CCTL
	movx	a,@dptr
	jnb	acc.5,X1d1f
X1d1c:	anl	a,#54h
	movx	@dptr,a
X1d1f:	ret	
;
X1d20:	mov	r3,#0
	mov	r2,#0
	mov	r1,#36h
	mov	dptr,#Xfd55
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#Xfd53
	movx	a,@dptr
	mov	3fh,a
	lcall	X1adc
	mov	a,36h
	jnz	X1d3b
	mov	r7,a
	sjmp	X1d3d
;
X1d3b:	mov	r7,#1
X1d3d:	lcall	X1a4a
	ret	
;
X1d41:	push	acc
	push	b
	push	dph
	push	dpl
	push	psw
	jnb	ri,X1d51
	lcall	X002e
X1d51:	jnb	ti,X1d56
	acall	X1b5b
X1d56:	pop	psw
	pop	dpl
	pop	dph
	pop	b
	pop	acc
	reti	
;
X1d61:	clr	a
	mov	r7,a
	clr	p1.5
	setb	p1.3
	nop	
	clr	p1.3
	setb	p1.3
	mov	r6,#4
X1d6e:	mov	a,r6
	jz	X1d80
	setb	p1.5
	jnb	p1.6,X1d78
	orl	rb0r7,a
X1d78:	clr	p1.5
	mov	a,r6
	clr	c
	rrc	a
	mov	r6,a
	sjmp	X1d6e
;
X1d80:	ret	
;
X1d81:	mov	dptr,#Xfd56
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	subb	a,r5
	mov	a,r6
	subb	a,r4
	jc	X1d95
	mov	4eh,r4
	mov	4fh,r5
	sjmp	X1d99
;
X1d95:	mov	4eh,r6
	mov	4fh,r7
X1d99:	mov	52h,r3
	mov	53h,r2
	mov	54h,r1
	ret	
;
X1da0:	
	mov	r7,#8
	mov	r6,#60h
	lcall	X1bcd
	mov	a,rb3r1
	anl	a,#0c0h
	jz	X1db1
	mov	r7,#0ah
	sjmp	X1db3
;
X1db1:	mov	r7,#2
X1db3:	mov	r6,#61h
	lcall	X1bcd
	mov	r7,#0bh
	mov	r6,#60h
	ljmp	X1bcd
;
X1dbf:	mov	a,r7
	dec	a
	jz	X1dd3
	add	a,#0feh
	jz	X1dd3
	add	a,#81h
	jz	X1dd3
	add	a,#0feh
	jz	X1dd3
	add	a,#84h
	jnz	X1dd6
X1dd3:	mov	r7,#1
	ret	
;
X1dd6:	mov	r7,#0
	ret	
;
X1dd9:	mov	dptr,#Xfd71
	movx	a,@dptr
	mov	dptr,#Xfd58
	lcall	X1f3e
	mov	r5,#1
	mov	r4,#0
	lcall	X1d81
	clr	a
	mov	r7,a
	ljmp	X1a4a
;
X1def:	mov	r4,rb0r5
	mov	dptr,#I2CCTL
	clr	a
	lcall	X1e41
	orl	a,#1
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	lcall	X1e4c
	anl	a,#54h
	movx	@dptr,a
	ret	
;
X1e04:	mov	dptr,#Xfd53
	movx	a,@dptr
	cjne	a,#0ffh,X1e10
	mov	r7,#1
	ljmp	X1a4a
;
X1e10:	mov	dptr,#IEPDCNTX0
	clr	a
	movx	@dptr,a
	mov	51h,#8
	ret	
;
X1e19:	clr	a
	mov	43h,a
	mov	48h,a
	clr	21h.4
	mov	42h,a
	mov	4ch,a
	mov	4ah,a
	clr	21h.3
	mov	49h,a
	mov	4bh,a
	ret	
;
X1e2d:	jnb	22h.0,X1e40
	mov	a,6dh
	jz	X1e38
	setb	t0
	sjmp	X1e3a
;
X1e38:	clr	t0
X1e3a:	mov	c,t0
	mov	20h.6,c
	clr	22h.0
X1e40:	ret	
;
X1e41:	movx	@dptr,a
	mov	dptr,#I2CADR
	mov	a,#20h
	movx	@dptr,a
	mov	dptr,#I2CDATO
	mov	a,r7
X1e4c:	movx	@dptr,a
	lcall	X1cfd
	mov	dptr,#I2CCTL
	movx	a,@dptr
	ret	
;
X1e55:	mov	dptr,#OEPBBAY1
	movx	@dptr,a
	mov	dptr,#OEPDCNTY1
	clr	a
	movx	@dptr,a
	ret	
;
X1e5f:	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,#80h
	movx	@dptr,a
	mov	dptr,#IEPBBAY2
	ret	
;
X1e69:	mov	r3,#0
	mov	r2,#0
	mov	r1,#36h
	mov	dptr,#Xfd53
	movx	a,@dptr
	mov	r5,a
	lcall	X1944
	clr	a
	mov	r7,a
	ljmp	X1a4a
;
X1e7c:	clr	ea
	mov	dptr,#IEPCNF4
	movx	a,@dptr
	jb	acc.5,X1e89
	clr	20h.1
	sjmp	X1e8b
;
X1e89:	clr	20h.2
X1e8b:	setb	ea
	ret	
;
X1e8e:	mov	a,tmod
	anl	a,#0f0h
	orl	a,#1
	mov	tmod,a
	clr	a
	mov	tl0,a
	mov	th0,a
	setb	tr0
	ret	
;
X1e9e:	mov	rcap2l,#0bfh
	mov	rcap2h,#0feh
	mov	tl2,#0bfh
	mov	th2,#0feh
	mov	t2con,#4
	ret	
;
X1eae:	mov	scon,#50h
	anl	pcon,#7fh
	orl	tmod,#20h
	mov	th1,#0feh
	setb	tr1
	ret	
;
X1ebd:	mov	dptr,#Xfd70
	movx	a,@dptr
	jnb	21h.1,X1ec8
	orl	a,#2
	movx	@dptr,a
	ret	
;
X1ec8:	anl	a,#0fdh
	movx	@dptr,a
	ret	
;
X1ecc:	mov	a,#0ffh
	mov	r7,a
	mov	r6,a
X1ed0:	mov	a,r7
	dec	r7
	jnz	X1ed5
	dec	r6
X1ed5:	dec	a
	orl	a,r6
	jnz	X1ed0
	ret	
;
X1eda:	setb	ex0
	clr	it0
	setb	ea
	mov	dptr,#USBCTL
	mov	a,#0c0h
	movx	@dptr,a
	ret	
;
START:	mov	r0,#7fh
	clr	a
CLEAR:	mov	@r0,a
	djnz	r0,CLEAR	; Clear RAM
	mov	sp,#6dh
	ljmp	X0a25
;
X1ef3:	clr	21h.5
	jnb	20h.5,X1efb
	lcall	X002a
X1efb:	clr	20h.5
	ret	
;
X1efe:	mov	dptr,#ACGCTL
	mov	a,#70h
	movx	@dptr,a
	mov	a,#74h
	movx	@dptr,a
	ret	
;
X1f08:	mov	sbuf,#0feh
	clr	a
	mov	49h,a
	setb	21h.3
	ret	
;
X1f11:	clr	ti
	clr	ri
	setb	es
	ljmp	X1f08
;
X1f1a:	mov	dptr,#Xfd75
	mov	a,#4
	movx	@dptr,a
	mov	r7,#0
	ret	
;
X1f23:	mov	dptr,#Xfd75
	mov	a,#2
	movx	@dptr,a
	mov	r7,#0
	ret	
;
X1f2c:	mov	dptr,#Xfd77
	mov	a,#4
	movx	@dptr,a
	mov	r7,#0
	ret	
;
X1f35:	mov	dptr,#Xfd77
	mov	a,#2
	movx	@dptr,a
	mov	r7,#0
	ret	
;
X1f3e:	movx	@dptr,a
X1f3f:	mov	r3,#1
	mov	r2,#0fdh
	mov	r1,#58h
	ret	
;
X1f46:	dec	r2
	jbc	23h.2,X1f5a
	add	a,r2
	jbc	tr2,X1f5e
X1f4e:	clr	es
	ret	
	
	db 0ffh
;
;	Register/Memory Equates
;
rb0r0	equ	0
rb0r1	equ	1
rb0r2	equ	2
rb0r3	equ	3
rb0r4	equ	4
rb0r5	equ	5
rb0r6	equ	6
rb0r7	equ	7
rb1r7	equ	0fh
rb3r0	equ	18h
rb3r1	equ	19h
rb3r2	equ	1ah
rb3r3	equ	1bh
rb3r4	equ	1ch
rb3r5	equ	1dh
rb3r6	equ	1eh
rb3r7	equ	1fh
;
;	Label equates
;
;  These are labels in the control file that reference
;  the middle of a multibyte instruction or reference
;  an address outside the initialized space
;
ACGCAPH	equ	0ffe3h
ACGCAPL	equ	0ffe4h
ACGCTL	equ	0ffe1h
ACGDCTL	equ	0ffe2h
ACGFRQ1	equ	0ffe6h
ACGFRQ2	equ	0ffe5h
CPTCNF1	equ	0ffe0h
CPTCNF2	equ	0ffdfh
CPTCNF3	equ	0ffdeh
CPTCNF4	equ	0ffddh
CPTCTL	equ	0ffdch
DMACTL0	equ	0ffe8h
DMACTL1	equ	0ffeeh
DMACTL2	equ	0fff4h
DMATSH0	equ	0ffe9h
DMATSH1	equ	0ffefh
DMATSL0	equ	0ffeah
DMATSL1	equ	0fff0h
GLOBCTL	equ	0ffb1h
I2CADR	equ	0ffc3h
I2CCTL	equ	0ffc0h
I2CDATI	equ	0ffc2h
I2CDATO	equ	0ffc1h
IEPBBAX2	equ	0ff59h
IEPBBAX4	equ	0ff49h
IEPBBAY2	equ	0ff5dh
IEPBBAY4	equ	0ff4dh
IEPBSIZ4	equ	0ff4ah
IEPCNF0	equ	0ff68h
IEPCNF1	equ	0ff60h
IEPCNF2	equ	0ff58h
IEPCNF3	equ	0ff50h
IEPCNF4	equ	0ff48h
IEPCNF5	equ	0ff40h
IEPCNF6	equ	0ff38h
IEPCNF7	equ	0ff30h
IEPDCNTX0	equ	0ff6bh
IEPDCNTX4	equ	0ff4bh
IEPDCNTY2	equ	0ff5fh
IEPDCNTY4	equ	0ff4fh
OEPBBAX1	equ	0ffa1h
OEPBBAX3	equ	0ff91h
OEPBBAY1	equ	0ffa5h
OEPCNF0	equ	0ffa8h
OEPCNF1	equ	0ffa0h
OEPCNF2	equ	0ff98h
OEPCNF3	equ	0ff90h
OEPCNF4	equ	0ff88h
OEPCNF5	equ	0ff80h
OEPCNF6	equ	0ff78h
OEPCNF7	equ	0ff70h
OEPDCNTX0	equ	0ffabh
OEPDCNTX1	equ	0ffa3h
OEPDCNTX3	equ	0ff93h
OEPDCNTY1	equ	0ffa7h
PWMFRQ	equ	0ffbfh
PWMPWH	equ	0ffbdh
PWMPWL	equ	0ffbeh
USBCTL	equ	0fffch
USBFADR	equ	0ffffh
USBIMSK	equ	0fffdh
VECINT	equ	0ffb2h
;
;	Miscellaneous equates
;
;  These are addresses referenced in the code but
;  which are in the middle of a multibyte instruction
;  or are addresses outside the initialized space
;
; X0001	equ	1
X0002	equ	2
; X0007	equ	7
; X0034	equ	34h
; X0100	equ	100h
;X0102	equ	102h
;X0110	equ	110h
;X0200	equ	200h
;X0300	equ	300h
;X053f	equ	53fh
;X057a	equ	57ah
;X05da	equ	5dah
;X0643	equ	643h
;X06ac	equ	6ach
;X07d9	equ	7d9h
X1f5a	equ	1f5ah
X1f5e	equ	1f5eh
;X2000	equ	2000h
;X6900	equ	6900h
;X9b00	equ	9b00h
;Xae00	equ	0ae00h
Xfd50	equ	0fd50h
Xfd51	equ	0fd51h
Xfd52	equ	0fd52h
Xfd53	equ	0fd53h
Xfd54	equ	0fd54h
Xfd55	equ	0fd55h
Xfd56	equ	0fd56h
Xfd57	equ	0fd57h
Xfd58	equ	0fd58h
Xfd59	equ	0fd59h
Xfd70	equ	0fd70h
Xfd71	equ	0fd71h
Xfd72	equ	0fd72h
Xfd73	equ	0fd73h
Xfd74	equ	0fd74h
Xfd75	equ	0fd75h
Xfd76	equ	0fd76h
Xfd77	equ	0fd77h
Xfd78	equ	0fd78h
Xfd79	equ	0fd79h
Xfd7a	equ	0fd7ah
;Xff03	equ	0ff03h
;
SetupDataPacket1	equ	0ff28h	;Xff28
SetupDataPacket2	equ	0ff29h	;Xff29
SetupDataPacket3	equ	0ff2ah	;Xff2a
SetupDataPacket4	equ	0ff2bh	;Xff2b
SetupDataPacket5	equ	0ff2ch	;Xff2c
SetupDataPacket6	equ	0ff2dh	;Xff2d
SetupDataPacket7	equ	0ff2eh	;Xff2e
SetupDataPacket8	equ	0ff2fh	;Xff2f
;
; FF2Fh wLength – Number of bytes to transfer in the data stage.
; FF2Eh wLength – Number of bytes to transfer in the data stage.
; FF2Dh wIndex – Index or offset value.
; FF2Ch wIndex – Index or offset value.
; FF2Bh wValue – Value of a parameter specific to the request.
; FF2Ah wValue – Value of a parameter specific to the request.
; FF29h bRequest – Specifies the particular request.
; FF28h bmRequestType – Identifies the characteristics of the request.
;
	end
;

