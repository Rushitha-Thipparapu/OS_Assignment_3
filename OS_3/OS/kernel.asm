
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	@ 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	@ 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	@ 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	@ 10040 <jump_stack+0x18>
   10020:	eb0000f9 	bl	1040c <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	@ 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	00010570 	.word	0x00010570
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f3020 	ldr	r3, [pc, #32]	@ 1007c <_uart_putc+0x38>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e1a00000 	nop			@ (mov r0, r0)
   10070:	e28bd000 	add	sp, fp, #0
   10074:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10078:	e12fff1e 	bx	lr
   1007c:	101f1000 	.word	0x101f1000

00010080 <_puts>:
   10080:	e92d4800 	push	{fp, lr}
   10084:	e28db004 	add	fp, sp, #4
   10088:	e24dd008 	sub	sp, sp, #8
   1008c:	e50b0008 	str	r0, [fp, #-8]
   10090:	ea000006 	b	100b0 <_puts+0x30>
   10094:	e51b3008 	ldr	r3, [fp, #-8]
   10098:	e5d33000 	ldrb	r3, [r3]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	ebffffe7 	bl	10044 <_uart_putc>
   100a4:	e51b3008 	ldr	r3, [fp, #-8]
   100a8:	e2833001 	add	r3, r3, #1
   100ac:	e50b3008 	str	r3, [fp, #-8]
   100b0:	e51b3008 	ldr	r3, [fp, #-8]
   100b4:	e5d33000 	ldrb	r3, [r3]
   100b8:	e3530000 	cmp	r3, #0
   100bc:	1afffff4 	bne	10094 <_puts+0x14>
   100c0:	e1a00000 	nop			@ (mov r0, r0)
   100c4:	e1a00000 	nop			@ (mov r0, r0)
   100c8:	e24bd004 	sub	sp, fp, #4
   100cc:	e8bd8800 	pop	{fp, pc}

000100d0 <_putint>:
   100d0:	e92d4800 	push	{fp, lr}
   100d4:	e28db004 	add	fp, sp, #4
   100d8:	e24dd018 	sub	sp, sp, #24
   100dc:	e50b0010 	str	r0, [fp, #-16]
   100e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   100e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   100e8:	e59f307c 	ldr	r3, [pc, #124]	@ 1016c <_putint+0x9c>
   100ec:	e50b300c 	str	r3, [fp, #-12]
   100f0:	e51b3010 	ldr	r3, [fp, #-16]
   100f4:	e3530000 	cmp	r3, #0
   100f8:	0a000001 	beq	10104 <_putint+0x34>
   100fc:	e51b0010 	ldr	r0, [fp, #-16]
   10100:	ebffffde 	bl	10080 <_puts>
   10104:	e3a0301c 	mov	r3, #28
   10108:	e50b3008 	str	r3, [fp, #-8]
   1010c:	ea00000b 	b	10140 <_putint+0x70>
   10110:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
   10114:	e51b3008 	ldr	r3, [fp, #-8]
   10118:	e1a03332 	lsr	r3, r2, r3
   1011c:	e203300f 	and	r3, r3, #15
   10120:	e51b200c 	ldr	r2, [fp, #-12]
   10124:	e0823003 	add	r3, r2, r3
   10128:	e5d33000 	ldrb	r3, [r3]
   1012c:	e1a00003 	mov	r0, r3
   10130:	ebffffc3 	bl	10044 <_uart_putc>
   10134:	e51b3008 	ldr	r3, [fp, #-8]
   10138:	e2433004 	sub	r3, r3, #4
   1013c:	e50b3008 	str	r3, [fp, #-8]
   10140:	e51b3008 	ldr	r3, [fp, #-8]
   10144:	e3530000 	cmp	r3, #0
   10148:	aafffff0 	bge	10110 <_putint+0x40>
   1014c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   10150:	e3530000 	cmp	r3, #0
   10154:	0a000001 	beq	10160 <_putint+0x90>
   10158:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
   1015c:	ebffffc7 	bl	10080 <_puts>
   10160:	e1a00000 	nop			@ (mov r0, r0)
   10164:	e24bd004 	sub	sp, fp, #4
   10168:	e8bd8800 	pop	{fp, pc}
   1016c:	000104f8 	.word	0x000104f8

00010170 <get_pde>:
   10170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10174:	e28db000 	add	fp, sp, #0
   10178:	e24dd00c 	sub	sp, sp, #12
   1017c:	e50b0008 	str	r0, [fp, #-8]
   10180:	e51b3008 	ldr	r3, [fp, #-8]
   10184:	e1a03a23 	lsr	r3, r3, #20
   10188:	e50b3008 	str	r3, [fp, #-8]
   1018c:	e59f3020 	ldr	r3, [pc, #32]	@ 101b4 <get_pde+0x44>
   10190:	e5932000 	ldr	r2, [r3]
   10194:	e51b3008 	ldr	r3, [fp, #-8]
   10198:	e1a03103 	lsl	r3, r3, #2
   1019c:	e0823003 	add	r3, r2, r3
   101a0:	e5933000 	ldr	r3, [r3]
   101a4:	e1a00003 	mov	r0, r3
   101a8:	e28bd000 	add	sp, fp, #0
   101ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   101b0:	e12fff1e 	bx	lr
   101b4:	00010568 	.word	0x00010568

000101b8 <set_bootpgtbl>:
   101b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   101bc:	e28db000 	add	fp, sp, #0
   101c0:	e24dd01c 	sub	sp, sp, #28
   101c4:	e50b0010 	str	r0, [fp, #-16]
   101c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   101cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   101d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
   101d4:	e51b3010 	ldr	r3, [fp, #-16]
   101d8:	e1a03a23 	lsr	r3, r3, #20
   101dc:	e50b3010 	str	r3, [fp, #-16]
   101e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   101e4:	e1a03a23 	lsr	r3, r3, #20
   101e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   101ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   101f0:	e1a03a23 	lsr	r3, r3, #20
   101f4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
   101f8:	e3a03000 	mov	r3, #0
   101fc:	e50b300c 	str	r3, [fp, #-12]
   10200:	ea000029 	b	102ac <set_bootpgtbl+0xf4>
   10204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10208:	e1a03a03 	lsl	r3, r3, #20
   1020c:	e50b3008 	str	r3, [fp, #-8]
   10210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   10214:	e3530000 	cmp	r3, #0
   10218:	1a000004 	bne	10230 <set_bootpgtbl+0x78>
   1021c:	e51b3008 	ldr	r3, [fp, #-8]
   10220:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10224:	e383300e 	orr	r3, r3, #14
   10228:	e50b3008 	str	r3, [fp, #-8]
   1022c:	ea000003 	b	10240 <set_bootpgtbl+0x88>
   10230:	e51b3008 	ldr	r3, [fp, #-8]
   10234:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10238:	e3833002 	orr	r3, r3, #2
   1023c:	e50b3008 	str	r3, [fp, #-8]
   10240:	e51b3010 	ldr	r3, [fp, #-16]
   10244:	e35300ff 	cmp	r3, #255	@ 0xff
   10248:	8a000007 	bhi	1026c <set_bootpgtbl+0xb4>
   1024c:	e59f307c 	ldr	r3, [pc, #124]	@ 102d0 <set_bootpgtbl+0x118>
   10250:	e5932000 	ldr	r2, [r3]
   10254:	e51b3010 	ldr	r3, [fp, #-16]
   10258:	e1a03103 	lsl	r3, r3, #2
   1025c:	e0823003 	add	r3, r2, r3
   10260:	e51b2008 	ldr	r2, [fp, #-8]
   10264:	e5832000 	str	r2, [r3]
   10268:	ea000006 	b	10288 <set_bootpgtbl+0xd0>
   1026c:	e59f3060 	ldr	r3, [pc, #96]	@ 102d4 <set_bootpgtbl+0x11c>
   10270:	e5932000 	ldr	r2, [r3]
   10274:	e51b3010 	ldr	r3, [fp, #-16]
   10278:	e1a03103 	lsl	r3, r3, #2
   1027c:	e0823003 	add	r3, r2, r3
   10280:	e51b2008 	ldr	r2, [fp, #-8]
   10284:	e5832000 	str	r2, [r3]
   10288:	e51b3010 	ldr	r3, [fp, #-16]
   1028c:	e2833001 	add	r3, r3, #1
   10290:	e50b3010 	str	r3, [fp, #-16]
   10294:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10298:	e2833001 	add	r3, r3, #1
   1029c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   102a0:	e51b300c 	ldr	r3, [fp, #-12]
   102a4:	e2833001 	add	r3, r3, #1
   102a8:	e50b300c 	str	r3, [fp, #-12]
   102ac:	e51b300c 	ldr	r3, [fp, #-12]
   102b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
   102b4:	e1520003 	cmp	r2, r3
   102b8:	8affffd1 	bhi	10204 <set_bootpgtbl+0x4c>
   102bc:	e1a00000 	nop			@ (mov r0, r0)
   102c0:	e1a00000 	nop			@ (mov r0, r0)
   102c4:	e28bd000 	add	sp, fp, #0
   102c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   102cc:	e12fff1e 	bx	lr
   102d0:	0001056c 	.word	0x0001056c
   102d4:	00010568 	.word	0x00010568

000102d8 <_flush_all>:
   102d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   102dc:	e28db000 	add	fp, sp, #0
   102e0:	e24dd00c 	sub	sp, sp, #12
   102e4:	e3a03000 	mov	r3, #0
   102e8:	e50b3008 	str	r3, [fp, #-8]
   102ec:	e51b3008 	ldr	r3, [fp, #-8]
   102f0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102f4:	e1a00000 	nop			@ (mov r0, r0)
   102f8:	e28bd000 	add	sp, fp, #0
   102fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10300:	e12fff1e 	bx	lr

00010304 <load_pgtlb>:
   10304:	e92d4800 	push	{fp, lr}
   10308:	e28db004 	add	fp, sp, #4
   1030c:	e24dd018 	sub	sp, sp, #24
   10310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
   10314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
   10318:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   1031c:	e50b3008 	str	r3, [fp, #-8]
   10320:	e51b3008 	ldr	r3, [fp, #-8]
   10324:	e1a03823 	lsr	r3, r3, #16
   10328:	e6ef3073 	uxtb	r3, r3
   1032c:	e203300f 	and	r3, r3, #15
   10330:	e54b3009 	strb	r3, [fp, #-9]
   10334:	e55b3009 	ldrb	r3, [fp, #-9]
   10338:	e3530007 	cmp	r3, #7
   1033c:	0a000004 	beq	10354 <load_pgtlb+0x50>
   10340:	e55b3009 	ldrb	r3, [fp, #-9]
   10344:	e353000f 	cmp	r3, #15
   10348:	0a000001 	beq	10354 <load_pgtlb+0x50>
   1034c:	e59f0074 	ldr	r0, [pc, #116]	@ 103c8 <load_pgtlb+0xc4>
   10350:	ebffff4a 	bl	10080 <_puts>
   10354:	e59f3070 	ldr	r3, [pc, #112]	@ 103cc <load_pgtlb+0xc8>
   10358:	e50b3010 	str	r3, [fp, #-16]
   1035c:	e51b3010 	ldr	r3, [fp, #-16]
   10360:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   10364:	e3a03004 	mov	r3, #4
   10368:	e50b3010 	str	r3, [fp, #-16]
   1036c:	e51b3010 	ldr	r3, [fp, #-16]
   10370:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   10374:	e59f3054 	ldr	r3, [pc, #84]	@ 103d0 <load_pgtlb+0xcc>
   10378:	e5933000 	ldr	r3, [r3]
   1037c:	e50b3010 	str	r3, [fp, #-16]
   10380:	e51b3010 	ldr	r3, [fp, #-16]
   10384:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   10388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   1038c:	e50b3010 	str	r3, [fp, #-16]
   10390:	e51b3010 	ldr	r3, [fp, #-16]
   10394:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   10398:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   1039c:	e50b3010 	str	r3, [fp, #-16]
   103a0:	e51b2010 	ldr	r2, [fp, #-16]
   103a4:	e59f3028 	ldr	r3, [pc, #40]	@ 103d4 <load_pgtlb+0xd0>
   103a8:	e1823003 	orr	r3, r2, r3
   103ac:	e50b3010 	str	r3, [fp, #-16]
   103b0:	e51b3010 	ldr	r3, [fp, #-16]
   103b4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   103b8:	ebffffc6 	bl	102d8 <_flush_all>
   103bc:	e1a00000 	nop			@ (mov r0, r0)
   103c0:	e24bd004 	sub	sp, fp, #4
   103c4:	e8bd8800 	pop	{fp, pc}
   103c8:	0001050c 	.word	0x0001050c
   103cc:	55555555 	.word	0x55555555
   103d0:	00010568 	.word	0x00010568
   103d4:	0080300d 	.word	0x0080300d

000103d8 <clear_bss>:
   103d8:	e92d4800 	push	{fp, lr}
   103dc:	e28db004 	add	fp, sp, #4
   103e0:	e59f201c 	ldr	r2, [pc, #28]	@ 10404 <clear_bss+0x2c>
   103e4:	e59f301c 	ldr	r3, [pc, #28]	@ 10408 <clear_bss+0x30>
   103e8:	e0423003 	sub	r3, r2, r3
   103ec:	e1a02003 	mov	r2, r3
   103f0:	e3a01000 	mov	r1, #0
   103f4:	e59f000c 	ldr	r0, [pc, #12]	@ 10408 <clear_bss+0x30>
   103f8:	eb000038 	bl	104e0 <__memset_veneer>
   103fc:	e1a00000 	nop			@ (mov r0, r0)
   10400:	e8bd8800 	pop	{fp, pc}
   10404:	800b0000 	.word	0x800b0000
   10408:	800aa0cc 	.word	0x800aa0cc

0001040c <start>:
   1040c:	e92d4800 	push	{fp, lr}
   10410:	e28db004 	add	fp, sp, #4
   10414:	e24dd008 	sub	sp, sp, #8
   10418:	e59f00a4 	ldr	r0, [pc, #164]	@ 104c4 <start+0xb8>
   1041c:	ebffff17 	bl	10080 <_puts>
   10420:	e3a03000 	mov	r3, #0
   10424:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10428:	e3a01000 	mov	r1, #0
   1042c:	e3a00000 	mov	r0, #0
   10430:	ebffff60 	bl	101b8 <set_bootpgtbl>
   10434:	e3a03000 	mov	r3, #0
   10438:	e3a02601 	mov	r2, #1048576	@ 0x100000
   1043c:	e3a01000 	mov	r1, #0
   10440:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
   10444:	ebffff5b 	bl	101b8 <set_bootpgtbl>
   10448:	e59f3078 	ldr	r3, [pc, #120]	@ 104c8 <start+0xbc>
   1044c:	e50b3008 	str	r3, [fp, #-8]
   10450:	e59f2074 	ldr	r2, [pc, #116]	@ 104cc <start+0xc0>
   10454:	e51b3008 	ldr	r3, [fp, #-8]
   10458:	e1530002 	cmp	r3, r2
   1045c:	8a000001 	bhi	10468 <start+0x5c>
   10460:	e59f0068 	ldr	r0, [pc, #104]	@ 104d0 <start+0xc4>
   10464:	eb00001f 	bl	104e8 <__cprintf_veneer>
   10468:	e3a03000 	mov	r3, #0
   1046c:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10470:	e3a01000 	mov	r1, #0
   10474:	e59f0058 	ldr	r0, [pc, #88]	@ 104d4 <start+0xc8>
   10478:	ebffff4e 	bl	101b8 <set_bootpgtbl>
   1047c:	e3a03001 	mov	r3, #1
   10480:	e3a02302 	mov	r2, #134217728	@ 0x8000000
   10484:	e3a01201 	mov	r1, #268435456	@ 0x10000000
   10488:	e3a00209 	mov	r0, #-1879048192	@ 0x90000000
   1048c:	ebffff49 	bl	101b8 <set_bootpgtbl>
   10490:	e59f3040 	ldr	r3, [pc, #64]	@ 104d8 <start+0xcc>
   10494:	e5933000 	ldr	r3, [r3]
   10498:	e59f203c 	ldr	r2, [pc, #60]	@ 104dc <start+0xd0>
   1049c:	e5922000 	ldr	r2, [r2]
   104a0:	e1a01002 	mov	r1, r2
   104a4:	e1a00003 	mov	r0, r3
   104a8:	ebffff95 	bl	10304 <load_pgtlb>
   104ac:	ebfffedd 	bl	10028 <jump_stack>
   104b0:	ebffffc8 	bl	103d8 <clear_bss>
   104b4:	eb00000d 	bl	104f0 <__kmain_veneer>
   104b8:	e1a00000 	nop			@ (mov r0, r0)
   104bc:	e24bd004 	sub	sp, fp, #4
   104c0:	e8bd8800 	pop	{fp, pc}
   104c4:	00010524 	.word	0x00010524
   104c8:	800f0000 	.word	0x800f0000
   104cc:	800b0000 	.word	0x800b0000
   104d0:	00010540 	.word	0x00010540
   104d4:	ffff0000 	.word	0xffff0000
   104d8:	00010568 	.word	0x00010568
   104dc:	0001056c 	.word	0x0001056c

000104e0 <__memset_veneer>:
   104e0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104e4 <__memset_veneer+0x4>
   104e4:	80020000 	.word	0x80020000

000104e8 <__cprintf_veneer>:
   104e8:	e51ff004 	ldr	pc, [pc, #-4]	@ 104ec <__cprintf_veneer+0x4>
   104ec:	80021894 	.word	0x80021894

000104f0 <__kmain_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__kmain_veneer+0x4>
   104f4:	8002462c 	.word	0x8002462c
   104f8:	33323130 	.word	0x33323130
   104fc:	37363534 	.word	0x37363534
   10500:	42413938 	.word	0x42413938
   10504:	46454443 	.word	0x46454443
   10508:	00000000 	.word	0x00000000
   1050c:	6465656e 	.word	0x6465656e
   10510:	52414120 	.word	0x52414120
   10514:	3676204d 	.word	0x3676204d
   10518:	20726f20 	.word	0x20726f20
   1051c:	68676968 	.word	0x68676968
   10520:	000a7265 	.word	0x000a7265
   10524:	72617473 	.word	0x72617473
   10528:	676e6974 	.word	0x676e6974
   1052c:	36767820 	.word	0x36767820
   10530:	726f6620 	.word	0x726f6620
   10534:	4d524120 	.word	0x4d524120
   10538:	0a2e2e2e 	.word	0x0a2e2e2e
   1053c:	00000000 	.word	0x00000000
   10540:	6f727265 	.word	0x6f727265
   10544:	76203a72 	.word	0x76203a72
   10548:	6f746365 	.word	0x6f746365
   1054c:	61742072 	.word	0x61742072
   10550:	20656c62 	.word	0x20656c62
   10554:	7265766f 	.word	0x7265766f
   10558:	7370616c 	.word	0x7370616c
   1055c:	72656b20 	.word	0x72656b20
   10560:	0a6c656e 	.word	0x0a6c656e
   10564:	00000000 	.word	0x00000000

00010568 <kernel_pgtbl>:
   10568:	00014000                                .@..

0001056c <user_pgtbl>:
   1056c:	00018000                                ....

00010570 <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <memset>:
80020000:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020004:	e28db000 	add	fp, sp, #0
80020008:	e24dd024 	sub	sp, sp, #36	@ 0x24
8002000c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80020010:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80020014:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80020018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002001c:	e50b3008 	str	r3, [fp, #-8]
80020020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020024:	e54b300d 	strb	r3, [fp, #-13]
80020028:	e55b200d 	ldrb	r2, [fp, #-13]
8002002c:	e1a03002 	mov	r3, r2
80020030:	e1a03403 	lsl	r3, r3, #8
80020034:	e0833002 	add	r3, r3, r2
80020038:	e1a03803 	lsl	r3, r3, #16
8002003c:	e1a02003 	mov	r2, r3
80020040:	e55b300d 	ldrb	r3, [fp, #-13]
80020044:	e1a03403 	lsl	r3, r3, #8
80020048:	e1822003 	orr	r2, r2, r3
8002004c:	e55b300d 	ldrb	r3, [fp, #-13]
80020050:	e1823003 	orr	r3, r2, r3
80020054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020058:	ea000008 	b	80020080 <memset+0x80>
8002005c:	e51b3008 	ldr	r3, [fp, #-8]
80020060:	e55b200d 	ldrb	r2, [fp, #-13]
80020064:	e5c32000 	strb	r2, [r3]
80020068:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002006c:	e2433001 	sub	r3, r3, #1
80020070:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80020074:	e51b3008 	ldr	r3, [fp, #-8]
80020078:	e2833001 	add	r3, r3, #1
8002007c:	e50b3008 	str	r3, [fp, #-8]
80020080:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020084:	e3530000 	cmp	r3, #0
80020088:	da000003 	ble	8002009c <memset+0x9c>
8002008c:	e51b3008 	ldr	r3, [fp, #-8]
80020090:	e2033003 	and	r3, r3, #3
80020094:	e3530000 	cmp	r3, #0
80020098:	1affffef 	bne	8002005c <memset+0x5c>
8002009c:	e51b3008 	ldr	r3, [fp, #-8]
800200a0:	e50b300c 	str	r3, [fp, #-12]
800200a4:	ea000008 	b	800200cc <memset+0xcc>
800200a8:	e51b300c 	ldr	r3, [fp, #-12]
800200ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800200b0:	e5832000 	str	r2, [r3]
800200b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200b8:	e2433004 	sub	r3, r3, #4
800200bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200c0:	e51b300c 	ldr	r3, [fp, #-12]
800200c4:	e2833004 	add	r3, r3, #4
800200c8:	e50b300c 	str	r3, [fp, #-12]
800200cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200d0:	e3530003 	cmp	r3, #3
800200d4:	cafffff3 	bgt	800200a8 <memset+0xa8>
800200d8:	e51b300c 	ldr	r3, [fp, #-12]
800200dc:	e50b3008 	str	r3, [fp, #-8]
800200e0:	ea000008 	b	80020108 <memset+0x108>
800200e4:	e51b3008 	ldr	r3, [fp, #-8]
800200e8:	e55b200d 	ldrb	r2, [fp, #-13]
800200ec:	e5c32000 	strb	r2, [r3]
800200f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200f4:	e2433001 	sub	r3, r3, #1
800200f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200fc:	e51b3008 	ldr	r3, [fp, #-8]
80020100:	e2833001 	add	r3, r3, #1
80020104:	e50b3008 	str	r3, [fp, #-8]
80020108:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002010c:	e3530000 	cmp	r3, #0
80020110:	cafffff3 	bgt	800200e4 <memset+0xe4>
80020114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020118:	e1a00003 	mov	r0, r3
8002011c:	e28bd000 	add	sp, fp, #0
80020120:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020124:	e12fff1e 	bx	lr

80020128 <memcmp>:
80020128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002012c:	e28db000 	add	fp, sp, #0
80020130:	e24dd01c 	sub	sp, sp, #28
80020134:	e50b0010 	str	r0, [fp, #-16]
80020138:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002013c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020140:	e51b3010 	ldr	r3, [fp, #-16]
80020144:	e50b3008 	str	r3, [fp, #-8]
80020148:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002014c:	e50b300c 	str	r3, [fp, #-12]
80020150:	ea000012 	b	800201a0 <memcmp+0x78>
80020154:	e51b3008 	ldr	r3, [fp, #-8]
80020158:	e5d32000 	ldrb	r2, [r3]
8002015c:	e51b300c 	ldr	r3, [fp, #-12]
80020160:	e5d33000 	ldrb	r3, [r3]
80020164:	e1520003 	cmp	r2, r3
80020168:	0a000006 	beq	80020188 <memcmp+0x60>
8002016c:	e51b3008 	ldr	r3, [fp, #-8]
80020170:	e5d33000 	ldrb	r3, [r3]
80020174:	e1a02003 	mov	r2, r3
80020178:	e51b300c 	ldr	r3, [fp, #-12]
8002017c:	e5d33000 	ldrb	r3, [r3]
80020180:	e0423003 	sub	r3, r2, r3
80020184:	ea00000b 	b	800201b8 <memcmp+0x90>
80020188:	e51b3008 	ldr	r3, [fp, #-8]
8002018c:	e2833001 	add	r3, r3, #1
80020190:	e50b3008 	str	r3, [fp, #-8]
80020194:	e51b300c 	ldr	r3, [fp, #-12]
80020198:	e2833001 	add	r3, r3, #1
8002019c:	e50b300c 	str	r3, [fp, #-12]
800201a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800201a4:	e2432001 	sub	r2, r3, #1
800201a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201ac:	e3530000 	cmp	r3, #0
800201b0:	1affffe7 	bne	80020154 <memcmp+0x2c>
800201b4:	e3a03000 	mov	r3, #0
800201b8:	e1a00003 	mov	r0, r3
800201bc:	e28bd000 	add	sp, fp, #0
800201c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800201c4:	e12fff1e 	bx	lr

800201c8 <memmove>:
800201c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800201cc:	e28db000 	add	fp, sp, #0
800201d0:	e24dd01c 	sub	sp, sp, #28
800201d4:	e50b0010 	str	r0, [fp, #-16]
800201d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800201dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800201e4:	e50b3008 	str	r3, [fp, #-8]
800201e8:	e51b3010 	ldr	r3, [fp, #-16]
800201ec:	e50b300c 	str	r3, [fp, #-12]
800201f0:	e51b2008 	ldr	r2, [fp, #-8]
800201f4:	e51b300c 	ldr	r3, [fp, #-12]
800201f8:	e1520003 	cmp	r2, r3
800201fc:	2a000026 	bcs	8002029c <memmove+0xd4>
80020200:	e51b2008 	ldr	r2, [fp, #-8]
80020204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020208:	e0823003 	add	r3, r2, r3
8002020c:	e51b200c 	ldr	r2, [fp, #-12]
80020210:	e1520003 	cmp	r2, r3
80020214:	2a000020 	bcs	8002029c <memmove+0xd4>
80020218:	e51b2008 	ldr	r2, [fp, #-8]
8002021c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020220:	e0823003 	add	r3, r2, r3
80020224:	e50b3008 	str	r3, [fp, #-8]
80020228:	e51b200c 	ldr	r2, [fp, #-12]
8002022c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020230:	e0823003 	add	r3, r2, r3
80020234:	e50b300c 	str	r3, [fp, #-12]
80020238:	ea000009 	b	80020264 <memmove+0x9c>
8002023c:	e51b3008 	ldr	r3, [fp, #-8]
80020240:	e2433001 	sub	r3, r3, #1
80020244:	e50b3008 	str	r3, [fp, #-8]
80020248:	e51b300c 	ldr	r3, [fp, #-12]
8002024c:	e2433001 	sub	r3, r3, #1
80020250:	e50b300c 	str	r3, [fp, #-12]
80020254:	e51b3008 	ldr	r3, [fp, #-8]
80020258:	e5d32000 	ldrb	r2, [r3]
8002025c:	e51b300c 	ldr	r3, [fp, #-12]
80020260:	e5c32000 	strb	r2, [r3]
80020264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020268:	e2432001 	sub	r2, r3, #1
8002026c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020270:	e3530000 	cmp	r3, #0
80020274:	1afffff0 	bne	8002023c <memmove+0x74>
80020278:	ea00000c 	b	800202b0 <memmove+0xe8>
8002027c:	e51b2008 	ldr	r2, [fp, #-8]
80020280:	e2823001 	add	r3, r2, #1
80020284:	e50b3008 	str	r3, [fp, #-8]
80020288:	e51b300c 	ldr	r3, [fp, #-12]
8002028c:	e2831001 	add	r1, r3, #1
80020290:	e50b100c 	str	r1, [fp, #-12]
80020294:	e5d22000 	ldrb	r2, [r2]
80020298:	e5c32000 	strb	r2, [r3]
8002029c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800202a0:	e2432001 	sub	r2, r3, #1
800202a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800202a8:	e3530000 	cmp	r3, #0
800202ac:	1afffff2 	bne	8002027c <memmove+0xb4>
800202b0:	e51b3010 	ldr	r3, [fp, #-16]
800202b4:	e1a00003 	mov	r0, r3
800202b8:	e28bd000 	add	sp, fp, #0
800202bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800202c0:	e12fff1e 	bx	lr

800202c4 <memcpy>:
800202c4:	e92d4800 	push	{fp, lr}
800202c8:	e28db004 	add	fp, sp, #4
800202cc:	e24dd010 	sub	sp, sp, #16
800202d0:	e50b0008 	str	r0, [fp, #-8]
800202d4:	e50b100c 	str	r1, [fp, #-12]
800202d8:	e50b2010 	str	r2, [fp, #-16]
800202dc:	e51b2010 	ldr	r2, [fp, #-16]
800202e0:	e51b100c 	ldr	r1, [fp, #-12]
800202e4:	e51b0008 	ldr	r0, [fp, #-8]
800202e8:	ebffffb6 	bl	800201c8 <memmove>
800202ec:	e1a03000 	mov	r3, r0
800202f0:	e1a00003 	mov	r0, r3
800202f4:	e24bd004 	sub	sp, fp, #4
800202f8:	e8bd8800 	pop	{fp, pc}

800202fc <strncmp>:
800202fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020300:	e28db000 	add	fp, sp, #0
80020304:	e24dd014 	sub	sp, sp, #20
80020308:	e50b0008 	str	r0, [fp, #-8]
8002030c:	e50b100c 	str	r1, [fp, #-12]
80020310:	e50b2010 	str	r2, [fp, #-16]
80020314:	ea000008 	b	8002033c <strncmp+0x40>
80020318:	e51b3010 	ldr	r3, [fp, #-16]
8002031c:	e2433001 	sub	r3, r3, #1
80020320:	e50b3010 	str	r3, [fp, #-16]
80020324:	e51b3008 	ldr	r3, [fp, #-8]
80020328:	e2833001 	add	r3, r3, #1
8002032c:	e50b3008 	str	r3, [fp, #-8]
80020330:	e51b300c 	ldr	r3, [fp, #-12]
80020334:	e2833001 	add	r3, r3, #1
80020338:	e50b300c 	str	r3, [fp, #-12]
8002033c:	e51b3010 	ldr	r3, [fp, #-16]
80020340:	e3530000 	cmp	r3, #0
80020344:	0a000009 	beq	80020370 <strncmp+0x74>
80020348:	e51b3008 	ldr	r3, [fp, #-8]
8002034c:	e5d33000 	ldrb	r3, [r3]
80020350:	e3530000 	cmp	r3, #0
80020354:	0a000005 	beq	80020370 <strncmp+0x74>
80020358:	e51b3008 	ldr	r3, [fp, #-8]
8002035c:	e5d32000 	ldrb	r2, [r3]
80020360:	e51b300c 	ldr	r3, [fp, #-12]
80020364:	e5d33000 	ldrb	r3, [r3]
80020368:	e1520003 	cmp	r2, r3
8002036c:	0affffe9 	beq	80020318 <strncmp+0x1c>
80020370:	e51b3010 	ldr	r3, [fp, #-16]
80020374:	e3530000 	cmp	r3, #0
80020378:	1a000001 	bne	80020384 <strncmp+0x88>
8002037c:	e3a03000 	mov	r3, #0
80020380:	ea000005 	b	8002039c <strncmp+0xa0>
80020384:	e51b3008 	ldr	r3, [fp, #-8]
80020388:	e5d33000 	ldrb	r3, [r3]
8002038c:	e1a02003 	mov	r2, r3
80020390:	e51b300c 	ldr	r3, [fp, #-12]
80020394:	e5d33000 	ldrb	r3, [r3]
80020398:	e0423003 	sub	r3, r2, r3
8002039c:	e1a00003 	mov	r0, r3
800203a0:	e28bd000 	add	sp, fp, #0
800203a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800203a8:	e12fff1e 	bx	lr

800203ac <strncpy>:
800203ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800203b0:	e28db000 	add	fp, sp, #0
800203b4:	e24dd01c 	sub	sp, sp, #28
800203b8:	e50b0010 	str	r0, [fp, #-16]
800203bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800203c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203c4:	e51b3010 	ldr	r3, [fp, #-16]
800203c8:	e50b3008 	str	r3, [fp, #-8]
800203cc:	e1a00000 	nop			@ (mov r0, r0)
800203d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800203d4:	e2432001 	sub	r2, r3, #1
800203d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203dc:	e3530000 	cmp	r3, #0
800203e0:	da000010 	ble	80020428 <strncpy+0x7c>
800203e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800203e8:	e2823001 	add	r3, r2, #1
800203ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800203f0:	e51b3010 	ldr	r3, [fp, #-16]
800203f4:	e2831001 	add	r1, r3, #1
800203f8:	e50b1010 	str	r1, [fp, #-16]
800203fc:	e5d22000 	ldrb	r2, [r2]
80020400:	e5c32000 	strb	r2, [r3]
80020404:	e5d33000 	ldrb	r3, [r3]
80020408:	e3530000 	cmp	r3, #0
8002040c:	1affffef 	bne	800203d0 <strncpy+0x24>
80020410:	ea000004 	b	80020428 <strncpy+0x7c>
80020414:	e51b3010 	ldr	r3, [fp, #-16]
80020418:	e2832001 	add	r2, r3, #1
8002041c:	e50b2010 	str	r2, [fp, #-16]
80020420:	e3a02000 	mov	r2, #0
80020424:	e5c32000 	strb	r2, [r3]
80020428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002042c:	e2432001 	sub	r2, r3, #1
80020430:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020434:	e3530000 	cmp	r3, #0
80020438:	cafffff5 	bgt	80020414 <strncpy+0x68>
8002043c:	e51b3008 	ldr	r3, [fp, #-8]
80020440:	e1a00003 	mov	r0, r3
80020444:	e28bd000 	add	sp, fp, #0
80020448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002044c:	e12fff1e 	bx	lr

80020450 <safestrcpy>:
80020450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020454:	e28db000 	add	fp, sp, #0
80020458:	e24dd01c 	sub	sp, sp, #28
8002045c:	e50b0010 	str	r0, [fp, #-16]
80020460:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020464:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020468:	e51b3010 	ldr	r3, [fp, #-16]
8002046c:	e50b3008 	str	r3, [fp, #-8]
80020470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020474:	e3530000 	cmp	r3, #0
80020478:	ca000001 	bgt	80020484 <safestrcpy+0x34>
8002047c:	e51b3008 	ldr	r3, [fp, #-8]
80020480:	ea000015 	b	800204dc <safestrcpy+0x8c>
80020484:	e1a00000 	nop			@ (mov r0, r0)
80020488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002048c:	e2433001 	sub	r3, r3, #1
80020490:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020498:	e3530000 	cmp	r3, #0
8002049c:	da00000a 	ble	800204cc <safestrcpy+0x7c>
800204a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800204a4:	e2823001 	add	r3, r2, #1
800204a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800204ac:	e51b3010 	ldr	r3, [fp, #-16]
800204b0:	e2831001 	add	r1, r3, #1
800204b4:	e50b1010 	str	r1, [fp, #-16]
800204b8:	e5d22000 	ldrb	r2, [r2]
800204bc:	e5c32000 	strb	r2, [r3]
800204c0:	e5d33000 	ldrb	r3, [r3]
800204c4:	e3530000 	cmp	r3, #0
800204c8:	1affffee 	bne	80020488 <safestrcpy+0x38>
800204cc:	e51b3010 	ldr	r3, [fp, #-16]
800204d0:	e3a02000 	mov	r2, #0
800204d4:	e5c32000 	strb	r2, [r3]
800204d8:	e51b3008 	ldr	r3, [fp, #-8]
800204dc:	e1a00003 	mov	r0, r3
800204e0:	e28bd000 	add	sp, fp, #0
800204e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800204e8:	e12fff1e 	bx	lr

800204ec <strlen>:
800204ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800204f0:	e28db000 	add	fp, sp, #0
800204f4:	e24dd014 	sub	sp, sp, #20
800204f8:	e50b0010 	str	r0, [fp, #-16]
800204fc:	e3a03000 	mov	r3, #0
80020500:	e50b3008 	str	r3, [fp, #-8]
80020504:	ea000002 	b	80020514 <strlen+0x28>
80020508:	e51b3008 	ldr	r3, [fp, #-8]
8002050c:	e2833001 	add	r3, r3, #1
80020510:	e50b3008 	str	r3, [fp, #-8]
80020514:	e51b3008 	ldr	r3, [fp, #-8]
80020518:	e51b2010 	ldr	r2, [fp, #-16]
8002051c:	e0823003 	add	r3, r2, r3
80020520:	e5d33000 	ldrb	r3, [r3]
80020524:	e3530000 	cmp	r3, #0
80020528:	1afffff6 	bne	80020508 <strlen+0x1c>
8002052c:	e51b3008 	ldr	r3, [fp, #-8]
80020530:	e1a00003 	mov	r0, r3
80020534:	e28bd000 	add	sp, fp, #0
80020538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002053c:	e12fff1e 	bx	lr

80020540 <cli>:
80020540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020544:	e28db000 	add	fp, sp, #0
80020548:	e24dd00c 	sub	sp, sp, #12
8002054c:	e10f3000 	mrs	r3, CPSR
80020550:	e50b3008 	str	r3, [fp, #-8]
80020554:	e51b3008 	ldr	r3, [fp, #-8]
80020558:	e3833080 	orr	r3, r3, #128	@ 0x80
8002055c:	e50b3008 	str	r3, [fp, #-8]
80020560:	e51b3008 	ldr	r3, [fp, #-8]
80020564:	e12ff003 	msr	CPSR_fsxc, r3
80020568:	e1a00000 	nop			@ (mov r0, r0)
8002056c:	e28bd000 	add	sp, fp, #0
80020570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020574:	e12fff1e 	bx	lr

80020578 <sti>:
80020578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002057c:	e28db000 	add	fp, sp, #0
80020580:	e24dd00c 	sub	sp, sp, #12
80020584:	e10f3000 	mrs	r3, CPSR
80020588:	e50b3008 	str	r3, [fp, #-8]
8002058c:	e51b3008 	ldr	r3, [fp, #-8]
80020590:	e3c33080 	bic	r3, r3, #128	@ 0x80
80020594:	e50b3008 	str	r3, [fp, #-8]
80020598:	e51b3008 	ldr	r3, [fp, #-8]
8002059c:	e12ff003 	msr	CPSR_fsxc, r3
800205a0:	e1a00000 	nop			@ (mov r0, r0)
800205a4:	e28bd000 	add	sp, fp, #0
800205a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ac:	e12fff1e 	bx	lr

800205b0 <spsr_usr>:
800205b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205b4:	e28db000 	add	fp, sp, #0
800205b8:	e24dd00c 	sub	sp, sp, #12
800205bc:	e10f3000 	mrs	r3, CPSR
800205c0:	e50b3008 	str	r3, [fp, #-8]
800205c4:	e51b3008 	ldr	r3, [fp, #-8]
800205c8:	e3c3301f 	bic	r3, r3, #31
800205cc:	e50b3008 	str	r3, [fp, #-8]
800205d0:	e51b3008 	ldr	r3, [fp, #-8]
800205d4:	e3833010 	orr	r3, r3, #16
800205d8:	e50b3008 	str	r3, [fp, #-8]
800205dc:	e51b3008 	ldr	r3, [fp, #-8]
800205e0:	e1a00003 	mov	r0, r3
800205e4:	e28bd000 	add	sp, fp, #0
800205e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ec:	e12fff1e 	bx	lr

800205f0 <int_enabled>:
800205f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205f4:	e28db000 	add	fp, sp, #0
800205f8:	e24dd00c 	sub	sp, sp, #12
800205fc:	e10f3000 	mrs	r3, CPSR
80020600:	e50b3008 	str	r3, [fp, #-8]
80020604:	e51b3008 	ldr	r3, [fp, #-8]
80020608:	e2033080 	and	r3, r3, #128	@ 0x80
8002060c:	e3530000 	cmp	r3, #0
80020610:	03a03001 	moveq	r3, #1
80020614:	13a03000 	movne	r3, #0
80020618:	e6ef3073 	uxtb	r3, r3
8002061c:	e1a00003 	mov	r0, r3
80020620:	e28bd000 	add	sp, fp, #0
80020624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020628:	e12fff1e 	bx	lr

8002062c <pushcli>:
8002062c:	e92d4800 	push	{fp, lr}
80020630:	e28db004 	add	fp, sp, #4
80020634:	e24dd008 	sub	sp, sp, #8
80020638:	ebffffec 	bl	800205f0 <int_enabled>
8002063c:	e50b0008 	str	r0, [fp, #-8]
80020640:	ebffffbe 	bl	80020540 <cli>
80020644:	e59f3030 	ldr	r3, [pc, #48]	@ 8002067c <pushcli+0x50>
80020648:	e5932000 	ldr	r2, [r3]
8002064c:	e592300c 	ldr	r3, [r2, #12]
80020650:	e2831001 	add	r1, r3, #1
80020654:	e582100c 	str	r1, [r2, #12]
80020658:	e3530000 	cmp	r3, #0
8002065c:	1a000003 	bne	80020670 <pushcli+0x44>
80020660:	e59f3014 	ldr	r3, [pc, #20]	@ 8002067c <pushcli+0x50>
80020664:	e5933000 	ldr	r3, [r3]
80020668:	e51b2008 	ldr	r2, [fp, #-8]
8002066c:	e5832010 	str	r2, [r3, #16]
80020670:	e1a00000 	nop			@ (mov r0, r0)
80020674:	e24bd004 	sub	sp, fp, #4
80020678:	e8bd8800 	pop	{fp, pc}
8002067c:	800ad604 	.word	0x800ad604

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000514 	bl	80021af4 <panic>
800206a0:	e59f3078 	ldr	r3, [pc, #120]	@ 80020720 <popcli+0xa0>
800206a4:	e5933000 	ldr	r3, [r3]
800206a8:	e593200c 	ldr	r2, [r3, #12]
800206ac:	e2422001 	sub	r2, r2, #1
800206b0:	e583200c 	str	r2, [r3, #12]
800206b4:	e593300c 	ldr	r3, [r3, #12]
800206b8:	e3530000 	cmp	r3, #0
800206bc:	aa000009 	bge	800206e8 <popcli+0x68>
800206c0:	e59f3058 	ldr	r3, [pc, #88]	@ 80020720 <popcli+0xa0>
800206c4:	e5931000 	ldr	r1, [r3]
800206c8:	e59f3050 	ldr	r3, [pc, #80]	@ 80020720 <popcli+0xa0>
800206cc:	e5933000 	ldr	r3, [r3]
800206d0:	e593300c 	ldr	r3, [r3, #12]
800206d4:	e1a02003 	mov	r2, r3
800206d8:	e59f0044 	ldr	r0, [pc, #68]	@ 80020724 <popcli+0xa4>
800206dc:	eb00046c 	bl	80021894 <cprintf>
800206e0:	e59f0040 	ldr	r0, [pc, #64]	@ 80020728 <popcli+0xa8>
800206e4:	eb000502 	bl	80021af4 <panic>
800206e8:	e59f3030 	ldr	r3, [pc, #48]	@ 80020720 <popcli+0xa0>
800206ec:	e5933000 	ldr	r3, [r3]
800206f0:	e593300c 	ldr	r3, [r3, #12]
800206f4:	e3530000 	cmp	r3, #0
800206f8:	1a000005 	bne	80020714 <popcli+0x94>
800206fc:	e59f301c 	ldr	r3, [pc, #28]	@ 80020720 <popcli+0xa0>
80020700:	e5933000 	ldr	r3, [r3]
80020704:	e5933010 	ldr	r3, [r3, #16]
80020708:	e3530000 	cmp	r3, #0
8002070c:	0a000000 	beq	80020714 <popcli+0x94>
80020710:	ebffff98 	bl	80020578 <sti>
80020714:	e1a00000 	nop			@ (mov r0, r0)
80020718:	e8bd8800 	pop	{fp, pc}
8002071c:	8002939c 	.word	0x8002939c
80020720:	800ad604 	.word	0x800ad604
80020724:	800293b4 	.word	0x800293b4
80020728:	800293c8 	.word	0x800293c8

8002072c <getcallerpcs>:
8002072c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020730:	e28db000 	add	fp, sp, #0
80020734:	e24dd014 	sub	sp, sp, #20
80020738:	e50b0010 	str	r0, [fp, #-16]
8002073c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020740:	e51b3010 	ldr	r3, [fp, #-16]
80020744:	e50b3008 	str	r3, [fp, #-8]
80020748:	e3a03000 	mov	r3, #0
8002074c:	e50b300c 	str	r3, [fp, #-12]
80020750:	ea000018 	b	800207b8 <getcallerpcs+0x8c>
80020754:	e51b3008 	ldr	r3, [fp, #-8]
80020758:	e3530000 	cmp	r3, #0
8002075c:	0a000022 	beq	800207ec <getcallerpcs+0xc0>
80020760:	e51b3008 	ldr	r3, [fp, #-8]
80020764:	e3730106 	cmn	r3, #-2147483647	@ 0x80000001
80020768:	9a00001f 	bls	800207ec <getcallerpcs+0xc0>
8002076c:	e51b3008 	ldr	r3, [fp, #-8]
80020770:	e3730001 	cmn	r3, #1
80020774:	0a00001c 	beq	800207ec <getcallerpcs+0xc0>
80020778:	e51b3008 	ldr	r3, [fp, #-8]
8002077c:	e2433004 	sub	r3, r3, #4
80020780:	e50b3008 	str	r3, [fp, #-8]
80020784:	e51b300c 	ldr	r3, [fp, #-12]
80020788:	e1a03103 	lsl	r3, r3, #2
8002078c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020790:	e0823003 	add	r3, r2, r3
80020794:	e51b2008 	ldr	r2, [fp, #-8]
80020798:	e5922004 	ldr	r2, [r2, #4]
8002079c:	e5832000 	str	r2, [r3]
800207a0:	e51b3008 	ldr	r3, [fp, #-8]
800207a4:	e5933000 	ldr	r3, [r3]
800207a8:	e50b3008 	str	r3, [fp, #-8]
800207ac:	e51b300c 	ldr	r3, [fp, #-12]
800207b0:	e2833001 	add	r3, r3, #1
800207b4:	e50b300c 	str	r3, [fp, #-12]
800207b8:	e51b300c 	ldr	r3, [fp, #-12]
800207bc:	e353000e 	cmp	r3, #14
800207c0:	daffffe3 	ble	80020754 <getcallerpcs+0x28>
800207c4:	ea000008 	b	800207ec <getcallerpcs+0xc0>
800207c8:	e51b300c 	ldr	r3, [fp, #-12]
800207cc:	e1a03103 	lsl	r3, r3, #2
800207d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800207d4:	e0823003 	add	r3, r2, r3
800207d8:	e3a02000 	mov	r2, #0
800207dc:	e5832000 	str	r2, [r3]
800207e0:	e51b300c 	ldr	r3, [fp, #-12]
800207e4:	e2833001 	add	r3, r3, #1
800207e8:	e50b300c 	str	r3, [fp, #-12]
800207ec:	e51b300c 	ldr	r3, [fp, #-12]
800207f0:	e353000e 	cmp	r3, #14
800207f4:	dafffff3 	ble	800207c8 <getcallerpcs+0x9c>
800207f8:	e1a00000 	nop			@ (mov r0, r0)
800207fc:	e1a00000 	nop			@ (mov r0, r0)
80020800:	e28bd000 	add	sp, fp, #0
80020804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020808:	e12fff1e 	bx	lr

8002080c <show_callstk>:
8002080c:	e92d4800 	push	{fp, lr}
80020810:	e28db004 	add	fp, sp, #4
80020814:	e24dd048 	sub	sp, sp, #72	@ 0x48
80020818:	e50b0048 	str	r0, [fp, #-72]	@ 0xffffffb8
8002081c:	e51b1048 	ldr	r1, [fp, #-72]	@ 0xffffffb8
80020820:	e59f0074 	ldr	r0, [pc, #116]	@ 8002089c <show_callstk+0x90>
80020824:	eb00041a 	bl	80021894 <cprintf>
80020828:	eb000026 	bl	800208c8 <get_fp>
8002082c:	e1a02000 	mov	r2, r0
80020830:	e24b3044 	sub	r3, fp, #68	@ 0x44
80020834:	e1a01003 	mov	r1, r3
80020838:	e1a00002 	mov	r0, r2
8002083c:	ebffffba 	bl	8002072c <getcallerpcs>
80020840:	e3a0300e 	mov	r3, #14
80020844:	e50b3008 	str	r3, [fp, #-8]
80020848:	ea00000c 	b	80020880 <show_callstk+0x74>
8002084c:	e51b3008 	ldr	r3, [fp, #-8]
80020850:	e2831001 	add	r1, r3, #1
80020854:	e51b3008 	ldr	r3, [fp, #-8]
80020858:	e1a03103 	lsl	r3, r3, #2
8002085c:	e2433004 	sub	r3, r3, #4
80020860:	e083300b 	add	r3, r3, fp
80020864:	e5133040 	ldr	r3, [r3, #-64]	@ 0xffffffc0
80020868:	e1a02003 	mov	r2, r3
8002086c:	e59f002c 	ldr	r0, [pc, #44]	@ 800208a0 <show_callstk+0x94>
80020870:	eb000407 	bl	80021894 <cprintf>
80020874:	e51b3008 	ldr	r3, [fp, #-8]
80020878:	e2433001 	sub	r3, r3, #1
8002087c:	e50b3008 	str	r3, [fp, #-8]
80020880:	e51b3008 	ldr	r3, [fp, #-8]
80020884:	e3530000 	cmp	r3, #0
80020888:	aaffffef 	bge	8002084c <show_callstk+0x40>
8002088c:	e1a00000 	nop			@ (mov r0, r0)
80020890:	e1a00000 	nop			@ (mov r0, r0)
80020894:	e24bd004 	sub	sp, fp, #4
80020898:	e8bd8800 	pop	{fp, pc}
8002089c:	800293dc 	.word	0x800293dc
800208a0:	800293e0 	.word	0x800293e0

800208a4 <set_stk>:
800208a4:	e10f2000 	mrs	r2, CPSR
800208a8:	e3c2201f 	bic	r2, r2, #31
800208ac:	e1822000 	orr	r2, r2, r0
800208b0:	e12ff002 	msr	CPSR_fsxc, r2
800208b4:	e1a0d001 	mov	sp, r1
800208b8:	e3c2201f 	bic	r2, r2, #31
800208bc:	e3822013 	orr	r2, r2, #19
800208c0:	e12ff002 	msr	CPSR_fsxc, r2
800208c4:	e12fff1e 	bx	lr

800208c8 <get_fp>:
800208c8:	e1a0000b 	mov	r0, fp
800208cc:	e12fff1e 	bx	lr

800208d0 <binit>:
800208d0:	e92d4800 	push	{fp, lr}
800208d4:	e28db004 	add	fp, sp, #4
800208d8:	e24dd008 	sub	sp, sp, #8
800208dc:	e59f10b8 	ldr	r1, [pc, #184]	@ 8002099c <binit+0xcc>
800208e0:	e59f00b8 	ldr	r0, [pc, #184]	@ 800209a0 <binit+0xd0>
800208e4:	eb0014b2 	bl	80025bb4 <initlock>
800208e8:	e59f30b0 	ldr	r3, [pc, #176]	@ 800209a0 <binit+0xd0>
800208ec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800208f0:	e1a02003 	mov	r2, r3
800208f4:	e59f30a8 	ldr	r3, [pc, #168]	@ 800209a4 <binit+0xd4>
800208f8:	e5823530 	str	r3, [r2, #1328]	@ 0x530
800208fc:	e59f309c 	ldr	r3, [pc, #156]	@ 800209a0 <binit+0xd0>
80020900:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020904:	e1a02003 	mov	r2, r3
80020908:	e59f3094 	ldr	r3, [pc, #148]	@ 800209a4 <binit+0xd4>
8002090c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020910:	e59f3090 	ldr	r3, [pc, #144]	@ 800209a8 <binit+0xd8>
80020914:	e50b3008 	str	r3, [fp, #-8]
80020918:	ea000017 	b	8002097c <binit+0xac>
8002091c:	e59f307c 	ldr	r3, [pc, #124]	@ 800209a0 <binit+0xd0>
80020920:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020924:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020928:	e51b3008 	ldr	r3, [fp, #-8]
8002092c:	e5832010 	str	r2, [r3, #16]
80020930:	e51b3008 	ldr	r3, [fp, #-8]
80020934:	e59f2068 	ldr	r2, [pc, #104]	@ 800209a4 <binit+0xd4>
80020938:	e583200c 	str	r2, [r3, #12]
8002093c:	e51b3008 	ldr	r3, [fp, #-8]
80020940:	e3e02000 	mvn	r2, #0
80020944:	e5832004 	str	r2, [r3, #4]
80020948:	e59f3050 	ldr	r3, [pc, #80]	@ 800209a0 <binit+0xd0>
8002094c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020950:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020954:	e51b2008 	ldr	r2, [fp, #-8]
80020958:	e583200c 	str	r2, [r3, #12]
8002095c:	e59f303c 	ldr	r3, [pc, #60]	@ 800209a0 <binit+0xd0>
80020960:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020964:	e1a02003 	mov	r2, r3
80020968:	e51b3008 	ldr	r3, [fp, #-8]
8002096c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e2833f86 	add	r3, r3, #536	@ 0x218
80020978:	e50b3008 	str	r3, [fp, #-8]
8002097c:	e59f2020 	ldr	r2, [pc, #32]	@ 800209a4 <binit+0xd4>
80020980:	e51b3008 	ldr	r3, [fp, #-8]
80020984:	e1530002 	cmp	r3, r2
80020988:	3affffe3 	bcc	8002091c <binit+0x4c>
8002098c:	e1a00000 	nop			@ (mov r0, r0)
80020990:	e1a00000 	nop			@ (mov r0, r0)
80020994:	e24bd004 	sub	sp, fp, #4
80020998:	e8bd8800 	pop	{fp, pc}
8002099c:	800293ec 	.word	0x800293ec
800209a0:	800aa0cc 	.word	0x800aa0cc
800209a4:	800ab5f0 	.word	0x800ab5f0
800209a8:	800aa100 	.word	0x800aa100

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb00148c 	bl	80025bfc <acquire>
800209c8:	e59f3138 	ldr	r3, [pc, #312]	@ 80020b08 <bget+0x15c>
800209cc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800209d0:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
800209d4:	e50b3008 	str	r3, [fp, #-8]
800209d8:	ea00001e 	b	80020a58 <bget+0xac>
800209dc:	e51b3008 	ldr	r3, [fp, #-8]
800209e0:	e5933004 	ldr	r3, [r3, #4]
800209e4:	e51b2010 	ldr	r2, [fp, #-16]
800209e8:	e1520003 	cmp	r2, r3
800209ec:	1a000016 	bne	80020a4c <bget+0xa0>
800209f0:	e51b3008 	ldr	r3, [fp, #-8]
800209f4:	e5933008 	ldr	r3, [r3, #8]
800209f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800209fc:	e1520003 	cmp	r2, r3
80020a00:	1a000011 	bne	80020a4c <bget+0xa0>
80020a04:	e51b3008 	ldr	r3, [fp, #-8]
80020a08:	e5933000 	ldr	r3, [r3]
80020a0c:	e2033001 	and	r3, r3, #1
80020a10:	e3530000 	cmp	r3, #0
80020a14:	1a000008 	bne	80020a3c <bget+0x90>
80020a18:	e51b3008 	ldr	r3, [fp, #-8]
80020a1c:	e5933000 	ldr	r3, [r3]
80020a20:	e3832001 	orr	r2, r3, #1
80020a24:	e51b3008 	ldr	r3, [fp, #-8]
80020a28:	e5832000 	str	r2, [r3]
80020a2c:	e59f00d4 	ldr	r0, [pc, #212]	@ 80020b08 <bget+0x15c>
80020a30:	eb00147c 	bl	80025c28 <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb001392 	bl	80025894 <sleep>
80020a48:	eaffffde 	b	800209c8 <bget+0x1c>
80020a4c:	e51b3008 	ldr	r3, [fp, #-8]
80020a50:	e5933010 	ldr	r3, [r3, #16]
80020a54:	e50b3008 	str	r3, [fp, #-8]
80020a58:	e51b3008 	ldr	r3, [fp, #-8]
80020a5c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80020b0c <bget+0x160>
80020a60:	e1530002 	cmp	r3, r2
80020a64:	1affffdc 	bne	800209dc <bget+0x30>
80020a68:	e59f3098 	ldr	r3, [pc, #152]	@ 80020b08 <bget+0x15c>
80020a6c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a70:	e5933530 	ldr	r3, [r3, #1328]	@ 0x530
80020a74:	e50b3008 	str	r3, [fp, #-8]
80020a78:	ea000019 	b	80020ae4 <bget+0x138>
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e5933000 	ldr	r3, [r3]
80020a84:	e2033001 	and	r3, r3, #1
80020a88:	e3530000 	cmp	r3, #0
80020a8c:	1a000011 	bne	80020ad8 <bget+0x12c>
80020a90:	e51b3008 	ldr	r3, [fp, #-8]
80020a94:	e5933000 	ldr	r3, [r3]
80020a98:	e2033004 	and	r3, r3, #4
80020a9c:	e3530000 	cmp	r3, #0
80020aa0:	1a00000c 	bne	80020ad8 <bget+0x12c>
80020aa4:	e51b3008 	ldr	r3, [fp, #-8]
80020aa8:	e51b2010 	ldr	r2, [fp, #-16]
80020aac:	e5832004 	str	r2, [r3, #4]
80020ab0:	e51b3008 	ldr	r3, [fp, #-8]
80020ab4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ab8:	e5832008 	str	r2, [r3, #8]
80020abc:	e51b3008 	ldr	r3, [fp, #-8]
80020ac0:	e3a02001 	mov	r2, #1
80020ac4:	e5832000 	str	r2, [r3]
80020ac8:	e59f0038 	ldr	r0, [pc, #56]	@ 80020b08 <bget+0x15c>
80020acc:	eb001455 	bl	80025c28 <release>
80020ad0:	e51b3008 	ldr	r3, [fp, #-8]
80020ad4:	ea000008 	b	80020afc <bget+0x150>
80020ad8:	e51b3008 	ldr	r3, [fp, #-8]
80020adc:	e593300c 	ldr	r3, [r3, #12]
80020ae0:	e50b3008 	str	r3, [fp, #-8]
80020ae4:	e51b3008 	ldr	r3, [fp, #-8]
80020ae8:	e59f201c 	ldr	r2, [pc, #28]	@ 80020b0c <bget+0x160>
80020aec:	e1530002 	cmp	r3, r2
80020af0:	1affffe1 	bne	80020a7c <bget+0xd0>
80020af4:	e59f0014 	ldr	r0, [pc, #20]	@ 80020b10 <bget+0x164>
80020af8:	eb0003fd 	bl	80021af4 <panic>
80020afc:	e1a00003 	mov	r0, r3
80020b00:	e24bd004 	sub	sp, fp, #4
80020b04:	e8bd8800 	pop	{fp, pc}
80020b08:	800aa0cc 	.word	0x800aa0cc
80020b0c:	800ab5f0 	.word	0x800ab5f0
80020b10:	800293f4 	.word	0x800293f4

80020b14 <bread>:
80020b14:	e92d4800 	push	{fp, lr}
80020b18:	e28db004 	add	fp, sp, #4
80020b1c:	e24dd010 	sub	sp, sp, #16
80020b20:	e50b0010 	str	r0, [fp, #-16]
80020b24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020b28:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80020b2c:	e51b0010 	ldr	r0, [fp, #-16]
80020b30:	ebffff9d 	bl	800209ac <bget>
80020b34:	e50b0008 	str	r0, [fp, #-8]
80020b38:	e51b3008 	ldr	r3, [fp, #-8]
80020b3c:	e5933000 	ldr	r3, [r3]
80020b40:	e2033002 	and	r3, r3, #2
80020b44:	e3530000 	cmp	r3, #0
80020b48:	1a000001 	bne	80020b54 <bread+0x40>
80020b4c:	e51b0008 	ldr	r0, [fp, #-8]
80020b50:	eb000f02 	bl	80024760 <iderw>
80020b54:	e51b3008 	ldr	r3, [fp, #-8]
80020b58:	e1a00003 	mov	r0, r3
80020b5c:	e24bd004 	sub	sp, fp, #4
80020b60:	e8bd8800 	pop	{fp, pc}

80020b64 <bwrite>:
80020b64:	e92d4800 	push	{fp, lr}
80020b68:	e28db004 	add	fp, sp, #4
80020b6c:	e24dd008 	sub	sp, sp, #8
80020b70:	e50b0008 	str	r0, [fp, #-8]
80020b74:	e51b3008 	ldr	r3, [fp, #-8]
80020b78:	e5933000 	ldr	r3, [r3]
80020b7c:	e2033001 	and	r3, r3, #1
80020b80:	e3530000 	cmp	r3, #0
80020b84:	1a000001 	bne	80020b90 <bwrite+0x2c>
80020b88:	e59f0028 	ldr	r0, [pc, #40]	@ 80020bb8 <bwrite+0x54>
80020b8c:	eb0003d8 	bl	80021af4 <panic>
80020b90:	e51b3008 	ldr	r3, [fp, #-8]
80020b94:	e5933000 	ldr	r3, [r3]
80020b98:	e3832004 	orr	r2, r3, #4
80020b9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ba0:	e5832000 	str	r2, [r3]
80020ba4:	e51b0008 	ldr	r0, [fp, #-8]
80020ba8:	eb000eec 	bl	80024760 <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	80029408 	.word	0x80029408

80020bbc <brelse>:
80020bbc:	e92d4800 	push	{fp, lr}
80020bc0:	e28db004 	add	fp, sp, #4
80020bc4:	e24dd008 	sub	sp, sp, #8
80020bc8:	e50b0008 	str	r0, [fp, #-8]
80020bcc:	e51b3008 	ldr	r3, [fp, #-8]
80020bd0:	e5933000 	ldr	r3, [r3]
80020bd4:	e2033001 	and	r3, r3, #1
80020bd8:	e3530000 	cmp	r3, #0
80020bdc:	1a000001 	bne	80020be8 <brelse+0x2c>
80020be0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80020c90 <brelse+0xd4>
80020be4:	eb0003c2 	bl	80021af4 <panic>
80020be8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020c94 <brelse+0xd8>
80020bec:	eb001402 	bl	80025bfc <acquire>
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e5933010 	ldr	r3, [r3, #16]
80020bf8:	e51b2008 	ldr	r2, [fp, #-8]
80020bfc:	e592200c 	ldr	r2, [r2, #12]
80020c00:	e583200c 	str	r2, [r3, #12]
80020c04:	e51b3008 	ldr	r3, [fp, #-8]
80020c08:	e593300c 	ldr	r3, [r3, #12]
80020c0c:	e51b2008 	ldr	r2, [fp, #-8]
80020c10:	e5922010 	ldr	r2, [r2, #16]
80020c14:	e5832010 	str	r2, [r3, #16]
80020c18:	e59f3074 	ldr	r3, [pc, #116]	@ 80020c94 <brelse+0xd8>
80020c1c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c20:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020c24:	e51b3008 	ldr	r3, [fp, #-8]
80020c28:	e5832010 	str	r2, [r3, #16]
80020c2c:	e51b3008 	ldr	r3, [fp, #-8]
80020c30:	e59f2060 	ldr	r2, [pc, #96]	@ 80020c98 <brelse+0xdc>
80020c34:	e583200c 	str	r2, [r3, #12]
80020c38:	e59f3054 	ldr	r3, [pc, #84]	@ 80020c94 <brelse+0xd8>
80020c3c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c40:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020c44:	e51b2008 	ldr	r2, [fp, #-8]
80020c48:	e583200c 	str	r2, [r3, #12]
80020c4c:	e59f3040 	ldr	r3, [pc, #64]	@ 80020c94 <brelse+0xd8>
80020c50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c54:	e1a02003 	mov	r2, r3
80020c58:	e51b3008 	ldr	r3, [fp, #-8]
80020c5c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020c60:	e51b3008 	ldr	r3, [fp, #-8]
80020c64:	e5933000 	ldr	r3, [r3]
80020c68:	e3c32001 	bic	r2, r3, #1
80020c6c:	e51b3008 	ldr	r3, [fp, #-8]
80020c70:	e5832000 	str	r2, [r3]
80020c74:	e51b0008 	ldr	r0, [fp, #-8]
80020c78:	eb00135a 	bl	800259e8 <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb0013e8 	bl	80025c28 <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	80029410 	.word	0x80029410
80020c94:	800aa0cc 	.word	0x800aa0cc
80020c98:	800ab5f0 	.word	0x800ab5f0

80020c9c <get_mark>:
80020c9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020ca0:	e28db000 	add	fp, sp, #0
80020ca4:	e24dd00c 	sub	sp, sp, #12
80020ca8:	e50b0008 	str	r0, [fp, #-8]
80020cac:	e50b100c 	str	r1, [fp, #-12]
80020cb0:	e51b3008 	ldr	r3, [fp, #-8]
80020cb4:	e2433006 	sub	r3, r3, #6
80020cb8:	e59f2034 	ldr	r2, [pc, #52]	@ 80020cf4 <get_mark+0x58>
80020cbc:	e2833008 	add	r3, r3, #8
80020cc0:	e1a03183 	lsl	r3, r3, #3
80020cc4:	e0823003 	add	r3, r2, r3
80020cc8:	e5932004 	ldr	r2, [r3, #4]
80020ccc:	e51b300c 	ldr	r3, [fp, #-12]
80020cd0:	e0823003 	add	r3, r2, r3
80020cd4:	e1a02183 	lsl	r2, r3, #3
80020cd8:	e59f3014 	ldr	r3, [pc, #20]	@ 80020cf4 <get_mark+0x58>
80020cdc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020ce0:	e0823003 	add	r3, r2, r3
80020ce4:	e1a00003 	mov	r0, r3
80020ce8:	e28bd000 	add	sp, fp, #0
80020cec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020cf0:	e12fff1e 	bx	lr
80020cf4:	800ab808 	.word	0x800ab808

80020cf8 <blkid2mem>:
80020cf8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020cfc:	e28db000 	add	fp, sp, #0
80020d00:	e24dd00c 	sub	sp, sp, #12
80020d04:	e50b0008 	str	r0, [fp, #-8]
80020d08:	e50b100c 	str	r1, [fp, #-12]
80020d0c:	e59f3020 	ldr	r3, [pc, #32]	@ 80020d34 <blkid2mem+0x3c>
80020d10:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d14:	e51b100c 	ldr	r1, [fp, #-12]
80020d18:	e51b2008 	ldr	r2, [fp, #-8]
80020d1c:	e1a02211 	lsl	r2, r1, r2
80020d20:	e0833002 	add	r3, r3, r2
80020d24:	e1a00003 	mov	r0, r3
80020d28:	e28bd000 	add	sp, fp, #0
80020d2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d30:	e12fff1e 	bx	lr
80020d34:	800ab808 	.word	0x800ab808

80020d38 <mem2blkid>:
80020d38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d3c:	e28db000 	add	fp, sp, #0
80020d40:	e24dd00c 	sub	sp, sp, #12
80020d44:	e50b0008 	str	r0, [fp, #-8]
80020d48:	e50b100c 	str	r1, [fp, #-12]
80020d4c:	e51b200c 	ldr	r2, [fp, #-12]
80020d50:	e59f301c 	ldr	r3, [pc, #28]	@ 80020d74 <mem2blkid+0x3c>
80020d54:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d58:	e0422003 	sub	r2, r2, r3
80020d5c:	e51b3008 	ldr	r3, [fp, #-8]
80020d60:	e1a03332 	lsr	r3, r2, r3
80020d64:	e1a00003 	mov	r0, r3
80020d68:	e28bd000 	add	sp, fp, #0
80020d6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d70:	e12fff1e 	bx	lr
80020d74:	800ab808 	.word	0x800ab808

80020d78 <available>:
80020d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d7c:	e28db000 	add	fp, sp, #0
80020d80:	e24dd00c 	sub	sp, sp, #12
80020d84:	e50b0008 	str	r0, [fp, #-8]
80020d88:	e50b100c 	str	r1, [fp, #-12]
80020d8c:	e51b300c 	ldr	r3, [fp, #-12]
80020d90:	e203301f 	and	r3, r3, #31
80020d94:	e3a02001 	mov	r2, #1
80020d98:	e1a03312 	lsl	r3, r2, r3
80020d9c:	e1a02003 	mov	r2, r3
80020da0:	e51b3008 	ldr	r3, [fp, #-8]
80020da4:	e0033002 	and	r3, r3, r2
80020da8:	e1a00003 	mov	r0, r3
80020dac:	e28bd000 	add	sp, fp, #0
80020db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020db4:	e12fff1e 	bx	lr

80020db8 <kmem_init>:
80020db8:	e92d4800 	push	{fp, lr}
80020dbc:	e28db004 	add	fp, sp, #4
80020dc0:	e59f100c 	ldr	r1, [pc, #12]	@ 80020dd4 <kmem_init+0x1c>
80020dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80020dd8 <kmem_init+0x20>
80020dc8:	eb001379 	bl	80025bb4 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	80029418 	.word	0x80029418
80020dd8:	800ab808 	.word	0x800ab808

80020ddc <kmem_init2>:
80020ddc:	e92d4800 	push	{fp, lr}
80020de0:	e28db004 	add	fp, sp, #4
80020de4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80020de8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80020dec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80020df0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80020df4:	e59f217c 	ldr	r2, [pc, #380]	@ 80020f78 <kmem_init2+0x19c>
80020df8:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020dfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80020e00:	e59f2170 	ldr	r2, [pc, #368]	@ 80020f78 <kmem_init2+0x19c>
80020e04:	e582303c 	str	r3, [r2, #60]	@ 0x3c
80020e08:	e59f3168 	ldr	r3, [pc, #360]	@ 80020f78 <kmem_init2+0x19c>
80020e0c:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020e10:	e59f3160 	ldr	r3, [pc, #352]	@ 80020f78 <kmem_init2+0x19c>
80020e14:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020e18:	e0423003 	sub	r3, r2, r3
80020e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020e20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020e24:	e1a038a3 	lsr	r3, r3, #17
80020e28:	e2833001 	add	r3, r3, #1
80020e2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020e30:	e3a03000 	mov	r3, #0
80020e34:	e50b3010 	str	r3, [fp, #-16]
80020e38:	e3a03006 	mov	r3, #6
80020e3c:	e50b3008 	str	r3, [fp, #-8]
80020e40:	ea00002a 	b	80020ef0 <kmem_init2+0x114>
80020e44:	e51b3008 	ldr	r3, [fp, #-8]
80020e48:	e1a03183 	lsl	r3, r3, #3
80020e4c:	e59f2128 	ldr	r2, [pc, #296]	@ 80020f7c <kmem_init2+0x1a0>
80020e50:	e0833002 	add	r3, r3, r2
80020e54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80020e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e5c:	e51b2010 	ldr	r2, [fp, #-16]
80020e60:	e5832004 	str	r2, [r3, #4]
80020e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e68:	e59f2110 	ldr	r2, [pc, #272]	@ 80020f80 <kmem_init2+0x1a4>
80020e6c:	e5832000 	str	r2, [r3]
80020e70:	e3a03000 	mov	r3, #0
80020e74:	e50b300c 	str	r3, [fp, #-12]
80020e78:	ea00000e 	b	80020eb8 <kmem_init2+0xdc>
80020e7c:	e51b3008 	ldr	r3, [fp, #-8]
80020e80:	e2833006 	add	r3, r3, #6
80020e84:	e51b100c 	ldr	r1, [fp, #-12]
80020e88:	e1a00003 	mov	r0, r3
80020e8c:	ebffff82 	bl	80020c9c <get_mark>
80020e90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020e94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020e98:	e3e02000 	mvn	r2, #0
80020e9c:	e5832000 	str	r2, [r3]
80020ea0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020ea4:	e3a02000 	mov	r2, #0
80020ea8:	e5832004 	str	r2, [r3, #4]
80020eac:	e51b300c 	ldr	r3, [fp, #-12]
80020eb0:	e2833001 	add	r3, r3, #1
80020eb4:	e50b300c 	str	r3, [fp, #-12]
80020eb8:	e51b300c 	ldr	r3, [fp, #-12]
80020ebc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ec0:	e1520003 	cmp	r2, r3
80020ec4:	8affffec 	bhi	80020e7c <kmem_init2+0xa0>
80020ec8:	e51b2010 	ldr	r2, [fp, #-16]
80020ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020ed0:	e0823003 	add	r3, r2, r3
80020ed4:	e50b3010 	str	r3, [fp, #-16]
80020ed8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020edc:	e1a03083 	lsl	r3, r3, #1
80020ee0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020ee4:	e51b3008 	ldr	r3, [fp, #-8]
80020ee8:	e2433001 	sub	r3, r3, #1
80020eec:	e50b3008 	str	r3, [fp, #-8]
80020ef0:	e51b3008 	ldr	r3, [fp, #-8]
80020ef4:	e3530000 	cmp	r3, #0
80020ef8:	aaffffd1 	bge	80020e44 <kmem_init2+0x68>
80020efc:	e59f3074 	ldr	r3, [pc, #116]	@ 80020f78 <kmem_init2+0x19c>
80020f00:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80020f04:	e51b3010 	ldr	r3, [fp, #-16]
80020f08:	e1a03183 	lsl	r3, r3, #3
80020f0c:	e0823003 	add	r3, r2, r3
80020f10:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80020f14:	e283300f 	add	r3, r3, #15
80020f18:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80020f1c:	e3c3300f 	bic	r3, r3, #15
80020f20:	e59f2050 	ldr	r2, [pc, #80]	@ 80020f78 <kmem_init2+0x19c>
80020f24:	e5823038 	str	r3, [r2, #56]	@ 0x38
80020f28:	e59f3048 	ldr	r3, [pc, #72]	@ 80020f78 <kmem_init2+0x19c>
80020f2c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020f30:	e50b3008 	str	r3, [fp, #-8]
80020f34:	ea000006 	b	80020f54 <kmem_init2+0x178>
80020f38:	e51b3008 	ldr	r3, [fp, #-8]
80020f3c:	e3a0100c 	mov	r1, #12
80020f40:	e1a00003 	mov	r0, r3
80020f44:	eb00018d 	bl	80021580 <kfree>
80020f48:	e51b3008 	ldr	r3, [fp, #-8]
80020f4c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020f50:	e50b3008 	str	r3, [fp, #-8]
80020f54:	e59f301c 	ldr	r3, [pc, #28]	@ 80020f78 <kmem_init2+0x19c>
80020f58:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020f5c:	e51b3008 	ldr	r3, [fp, #-8]
80020f60:	e1520003 	cmp	r2, r3
80020f64:	8afffff3 	bhi	80020f38 <kmem_init2+0x15c>
80020f68:	e1a00000 	nop			@ (mov r0, r0)
80020f6c:	e1a00000 	nop			@ (mov r0, r0)
80020f70:	e24bd004 	sub	sp, fp, #4
80020f74:	e8bd8800 	pop	{fp, pc}
80020f78:	800ab808 	.word	0x800ab808
80020f7c:	800ab848 	.word	0x800ab848
80020f80:	0000ffff 	.word	0x0000ffff

80020f84 <unmark_blk>:
80020f84:	e92d4800 	push	{fp, lr}
80020f88:	e28db004 	add	fp, sp, #4
80020f8c:	e24dd020 	sub	sp, sp, #32
80020f90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020f94:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80020f98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020f9c:	e2433006 	sub	r3, r3, #6
80020fa0:	e2833008 	add	r3, r3, #8
80020fa4:	e1a03183 	lsl	r3, r3, #3
80020fa8:	e59f2168 	ldr	r2, [pc, #360]	@ 80021118 <unmark_blk+0x194>
80020fac:	e0833002 	add	r3, r3, r2
80020fb0:	e50b3008 	str	r3, [fp, #-8]
80020fb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80020fb8:	e1a032c3 	asr	r3, r3, #5
80020fbc:	e1a01003 	mov	r1, r3
80020fc0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80020fc4:	ebffff34 	bl	80020c9c <get_mark>
80020fc8:	e50b000c 	str	r0, [fp, #-12]
80020fcc:	e51b300c 	ldr	r3, [fp, #-12]
80020fd0:	e5933004 	ldr	r3, [r3, #4]
80020fd4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80020fd8:	e1a00003 	mov	r0, r3
80020fdc:	ebffff65 	bl	80020d78 <available>
80020fe0:	e1a03000 	mov	r3, r0
80020fe4:	e3530000 	cmp	r3, #0
80020fe8:	1a000001 	bne	80020ff4 <unmark_blk+0x70>
80020fec:	e59f0128 	ldr	r0, [pc, #296]	@ 8002111c <unmark_blk+0x198>
80020ff0:	eb0002bf 	bl	80021af4 <panic>
80020ff4:	e51b300c 	ldr	r3, [fp, #-12]
80020ff8:	e5933004 	ldr	r3, [r3, #4]
80020ffc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021000:	e202201f 	and	r2, r2, #31
80021004:	e3a01001 	mov	r1, #1
80021008:	e1a02211 	lsl	r2, r1, r2
8002100c:	e1e02002 	mvn	r2, r2
80021010:	e0022003 	and	r2, r2, r3
80021014:	e51b300c 	ldr	r3, [fp, #-12]
80021018:	e5832004 	str	r2, [r3, #4]
8002101c:	e51b300c 	ldr	r3, [fp, #-12]
80021020:	e5933004 	ldr	r3, [r3, #4]
80021024:	e3530000 	cmp	r3, #0
80021028:	1a000037 	bne	8002110c <unmark_blk+0x188>
8002102c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021030:	e1a032c3 	asr	r3, r3, #5
80021034:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021038:	e51b300c 	ldr	r3, [fp, #-12]
8002103c:	e5933000 	ldr	r3, [r3]
80021040:	e1a03823 	lsr	r3, r3, #16
80021044:	e50b3010 	str	r3, [fp, #-16]
80021048:	e51b300c 	ldr	r3, [fp, #-12]
8002104c:	e5933000 	ldr	r3, [r3]
80021050:	e6ff3073 	uxth	r3, r3
80021054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021058:	e51b3010 	ldr	r3, [fp, #-16]
8002105c:	e59f20bc 	ldr	r2, [pc, #188]	@ 80021120 <unmark_blk+0x19c>
80021060:	e1530002 	cmp	r3, r2
80021064:	0a00000d 	beq	800210a0 <unmark_blk+0x11c>
80021068:	e51b1010 	ldr	r1, [fp, #-16]
8002106c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021070:	ebffff09 	bl	80020c9c <get_mark>
80021074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002107c:	e5933000 	ldr	r3, [r3]
80021080:	e1a03823 	lsr	r3, r3, #16
80021084:	e1a03803 	lsl	r3, r3, #16
80021088:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002108c:	e6ff2072 	uxth	r2, r2
80021090:	e1832002 	orr	r2, r3, r2
80021094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021098:	e5832000 	str	r2, [r3]
8002109c:	ea000007 	b	800210c0 <unmark_blk+0x13c>
800210a0:	e51b3008 	ldr	r3, [fp, #-8]
800210a4:	e5932000 	ldr	r2, [r3]
800210a8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800210ac:	e1520003 	cmp	r2, r3
800210b0:	1a000002 	bne	800210c0 <unmark_blk+0x13c>
800210b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800210b8:	e51b3008 	ldr	r3, [fp, #-8]
800210bc:	e5832000 	str	r2, [r3]
800210c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800210c4:	e59f2054 	ldr	r2, [pc, #84]	@ 80021120 <unmark_blk+0x19c>
800210c8:	e1530002 	cmp	r3, r2
800210cc:	0a00000b 	beq	80021100 <unmark_blk+0x17c>
800210d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800210d4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800210d8:	ebfffeef 	bl	80020c9c <get_mark>
800210dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800210e0:	e51b3010 	ldr	r3, [fp, #-16]
800210e4:	e1a02803 	lsl	r2, r3, #16
800210e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210ec:	e5933000 	ldr	r3, [r3]
800210f0:	e6ff3073 	uxth	r3, r3
800210f4:	e1822003 	orr	r2, r2, r3
800210f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210fc:	e5832000 	str	r2, [r3]
80021100:	e51b300c 	ldr	r3, [fp, #-12]
80021104:	e3e02000 	mvn	r2, #0
80021108:	e5832000 	str	r2, [r3]
8002110c:	e1a00000 	nop			@ (mov r0, r0)
80021110:	e24bd004 	sub	sp, fp, #4
80021114:	e8bd8800 	pop	{fp, pc}
80021118:	800ab808 	.word	0x800ab808
8002111c:	80029420 	.word	0x80029420
80021120:	0000ffff 	.word	0x0000ffff

80021124 <mark_blk>:
80021124:	e92d4800 	push	{fp, lr}
80021128:	e28db004 	add	fp, sp, #4
8002112c:	e24dd018 	sub	sp, sp, #24
80021130:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021134:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002113c:	e2433006 	sub	r3, r3, #6
80021140:	e2833008 	add	r3, r3, #8
80021144:	e1a03183 	lsl	r3, r3, #3
80021148:	e59f2118 	ldr	r2, [pc, #280]	@ 80021268 <mark_blk+0x144>
8002114c:	e0833002 	add	r3, r3, r2
80021150:	e50b3008 	str	r3, [fp, #-8]
80021154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021158:	e1a032c3 	asr	r3, r3, #5
8002115c:	e1a01003 	mov	r1, r3
80021160:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021164:	ebfffecc 	bl	80020c9c <get_mark>
80021168:	e50b000c 	str	r0, [fp, #-12]
8002116c:	e51b300c 	ldr	r3, [fp, #-12]
80021170:	e5933004 	ldr	r3, [r3, #4]
80021174:	e3530000 	cmp	r3, #0
80021178:	03a03001 	moveq	r3, #1
8002117c:	13a03000 	movne	r3, #0
80021180:	e6ef3073 	uxtb	r3, r3
80021184:	e50b3010 	str	r3, [fp, #-16]
80021188:	e51b300c 	ldr	r3, [fp, #-12]
8002118c:	e5933004 	ldr	r3, [r3, #4]
80021190:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80021194:	e1a00003 	mov	r0, r3
80021198:	ebfffef6 	bl	80020d78 <available>
8002119c:	e1a03000 	mov	r3, r0
800211a0:	e3530000 	cmp	r3, #0
800211a4:	0a000001 	beq	800211b0 <mark_blk+0x8c>
800211a8:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002126c <mark_blk+0x148>
800211ac:	eb000250 	bl	80021af4 <panic>
800211b0:	e51b300c 	ldr	r3, [fp, #-12]
800211b4:	e5933004 	ldr	r3, [r3, #4]
800211b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800211bc:	e202201f 	and	r2, r2, #31
800211c0:	e3a01001 	mov	r1, #1
800211c4:	e1a02211 	lsl	r2, r1, r2
800211c8:	e1832002 	orr	r2, r3, r2
800211cc:	e51b300c 	ldr	r3, [fp, #-12]
800211d0:	e5832004 	str	r2, [r3, #4]
800211d4:	e51b3010 	ldr	r3, [fp, #-16]
800211d8:	e3530000 	cmp	r3, #0
800211dc:	0a00001e 	beq	8002125c <mark_blk+0x138>
800211e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800211e4:	e1a032c3 	asr	r3, r3, #5
800211e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800211ec:	e51b3008 	ldr	r3, [fp, #-8]
800211f0:	e5933000 	ldr	r3, [r3]
800211f4:	e1e03803 	mvn	r3, r3, lsl #16
800211f8:	e1e03823 	mvn	r3, r3, lsr #16
800211fc:	e51b200c 	ldr	r2, [fp, #-12]
80021200:	e5823000 	str	r3, [r2]
80021204:	e51b3008 	ldr	r3, [fp, #-8]
80021208:	e5933000 	ldr	r3, [r3]
8002120c:	e59f205c 	ldr	r2, [pc, #92]	@ 80021270 <mark_blk+0x14c>
80021210:	e1530002 	cmp	r3, r2
80021214:	0a00000d 	beq	80021250 <mark_blk+0x12c>
80021218:	e51b3008 	ldr	r3, [fp, #-8]
8002121c:	e5933000 	ldr	r3, [r3]
80021220:	e1a01003 	mov	r1, r3
80021224:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021228:	ebfffe9b 	bl	80020c9c <get_mark>
8002122c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021234:	e1a02803 	lsl	r2, r3, #16
80021238:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002123c:	e5933000 	ldr	r3, [r3]
80021240:	e6ff3073 	uxth	r3, r3
80021244:	e1822003 	orr	r2, r2, r3
80021248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002124c:	e5832000 	str	r2, [r3]
80021250:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80021254:	e51b3008 	ldr	r3, [fp, #-8]
80021258:	e5832000 	str	r2, [r3]
8002125c:	e1a00000 	nop			@ (mov r0, r0)
80021260:	e24bd004 	sub	sp, fp, #4
80021264:	e8bd8800 	pop	{fp, pc}
80021268:	800ab808 	.word	0x800ab808
8002126c:	80029430 	.word	0x80029430
80021270:	0000ffff 	.word	0x0000ffff

80021274 <get_blk>:
80021274:	e92d4800 	push	{fp, lr}
80021278:	e28db004 	add	fp, sp, #4
8002127c:	e24dd018 	sub	sp, sp, #24
80021280:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021288:	e2433006 	sub	r3, r3, #6
8002128c:	e2833008 	add	r3, r3, #8
80021290:	e1a03183 	lsl	r3, r3, #3
80021294:	e59f20c0 	ldr	r2, [pc, #192]	@ 8002135c <get_blk+0xe8>
80021298:	e0833002 	add	r3, r3, r2
8002129c:	e50b300c 	str	r3, [fp, #-12]
800212a0:	e51b300c 	ldr	r3, [fp, #-12]
800212a4:	e5933000 	ldr	r3, [r3]
800212a8:	e1a01003 	mov	r1, r3
800212ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800212b0:	ebfffe79 	bl	80020c9c <get_mark>
800212b4:	e50b0010 	str	r0, [fp, #-16]
800212b8:	e51b3010 	ldr	r3, [fp, #-16]
800212bc:	e5933004 	ldr	r3, [r3, #4]
800212c0:	e3530000 	cmp	r3, #0
800212c4:	1a000001 	bne	800212d0 <get_blk+0x5c>
800212c8:	e59f0090 	ldr	r0, [pc, #144]	@ 80021360 <get_blk+0xec>
800212cc:	eb000208 	bl	80021af4 <panic>
800212d0:	e3a03000 	mov	r3, #0
800212d4:	e50b3008 	str	r3, [fp, #-8]
800212d8:	ea000018 	b	80021340 <get_blk+0xcc>
800212dc:	e51b3010 	ldr	r3, [fp, #-16]
800212e0:	e5933004 	ldr	r3, [r3, #4]
800212e4:	e3a01001 	mov	r1, #1
800212e8:	e51b2008 	ldr	r2, [fp, #-8]
800212ec:	e1a02211 	lsl	r2, r1, r2
800212f0:	e0033002 	and	r3, r3, r2
800212f4:	e3530000 	cmp	r3, #0
800212f8:	0a00000d 	beq	80021334 <get_blk+0xc0>
800212fc:	e51b300c 	ldr	r3, [fp, #-12]
80021300:	e5933000 	ldr	r3, [r3]
80021304:	e1a02283 	lsl	r2, r3, #5
80021308:	e51b3008 	ldr	r3, [fp, #-8]
8002130c:	e0823003 	add	r3, r2, r3
80021310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021314:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021318:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002131c:	ebffff18 	bl	80020f84 <unmark_blk>
80021320:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021324:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021328:	ebfffe72 	bl	80020cf8 <blkid2mem>
8002132c:	e1a03000 	mov	r3, r0
80021330:	ea000006 	b	80021350 <get_blk+0xdc>
80021334:	e51b3008 	ldr	r3, [fp, #-8]
80021338:	e2833001 	add	r3, r3, #1
8002133c:	e50b3008 	str	r3, [fp, #-8]
80021340:	e51b3008 	ldr	r3, [fp, #-8]
80021344:	e353001f 	cmp	r3, #31
80021348:	daffffe3 	ble	800212dc <get_blk+0x68>
8002134c:	e3a03000 	mov	r3, #0
80021350:	e1a00003 	mov	r0, r3
80021354:	e24bd004 	sub	sp, fp, #4
80021358:	e8bd8800 	pop	{fp, pc}
8002135c:	800ab808 	.word	0x800ab808
80021360:	80029440 	.word	0x80029440

80021364 <_kmalloc>:
80021364:	e92d4800 	push	{fp, lr}
80021368:	e28db004 	add	fp, sp, #4
8002136c:	e24dd010 	sub	sp, sp, #16
80021370:	e50b0010 	str	r0, [fp, #-16]
80021374:	e51b3010 	ldr	r3, [fp, #-16]
80021378:	e2433006 	sub	r3, r3, #6
8002137c:	e2833008 	add	r3, r3, #8
80021380:	e1a03183 	lsl	r3, r3, #3
80021384:	e59f2090 	ldr	r2, [pc, #144]	@ 8002141c <_kmalloc+0xb8>
80021388:	e0833002 	add	r3, r3, r2
8002138c:	e50b300c 	str	r3, [fp, #-12]
80021390:	e3a03000 	mov	r3, #0
80021394:	e50b3008 	str	r3, [fp, #-8]
80021398:	e51b300c 	ldr	r3, [fp, #-12]
8002139c:	e5933000 	ldr	r3, [r3]
800213a0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021420 <_kmalloc+0xbc>
800213a4:	e1530002 	cmp	r3, r2
800213a8:	0a000003 	beq	800213bc <_kmalloc+0x58>
800213ac:	e51b0010 	ldr	r0, [fp, #-16]
800213b0:	ebffffaf 	bl	80021274 <get_blk>
800213b4:	e50b0008 	str	r0, [fp, #-8]
800213b8:	ea000013 	b	8002140c <_kmalloc+0xa8>
800213bc:	e51b3010 	ldr	r3, [fp, #-16]
800213c0:	e353000b 	cmp	r3, #11
800213c4:	ca000010 	bgt	8002140c <_kmalloc+0xa8>
800213c8:	e51b3010 	ldr	r3, [fp, #-16]
800213cc:	e2833001 	add	r3, r3, #1
800213d0:	e1a00003 	mov	r0, r3
800213d4:	ebffffe2 	bl	80021364 <_kmalloc>
800213d8:	e50b0008 	str	r0, [fp, #-8]
800213dc:	e51b3008 	ldr	r3, [fp, #-8]
800213e0:	e3530000 	cmp	r3, #0
800213e4:	0a000008 	beq	8002140c <_kmalloc+0xa8>
800213e8:	e3a02001 	mov	r2, #1
800213ec:	e51b3010 	ldr	r3, [fp, #-16]
800213f0:	e1a03312 	lsl	r3, r2, r3
800213f4:	e1a02003 	mov	r2, r3
800213f8:	e51b3008 	ldr	r3, [fp, #-8]
800213fc:	e0833002 	add	r3, r3, r2
80021400:	e51b1010 	ldr	r1, [fp, #-16]
80021404:	e1a00003 	mov	r0, r3
80021408:	eb00001e 	bl	80021488 <_kfree>
8002140c:	e51b3008 	ldr	r3, [fp, #-8]
80021410:	e1a00003 	mov	r0, r3
80021414:	e24bd004 	sub	sp, fp, #4
80021418:	e8bd8800 	pop	{fp, pc}
8002141c:	800ab808 	.word	0x800ab808
80021420:	0000ffff 	.word	0x0000ffff

80021424 <kmalloc>:
80021424:	e92d4800 	push	{fp, lr}
80021428:	e28db004 	add	fp, sp, #4
8002142c:	e24dd010 	sub	sp, sp, #16
80021430:	e50b0010 	str	r0, [fp, #-16]
80021434:	e51b3010 	ldr	r3, [fp, #-16]
80021438:	e353000c 	cmp	r3, #12
8002143c:	ca000002 	bgt	8002144c <kmalloc+0x28>
80021440:	e51b3010 	ldr	r3, [fp, #-16]
80021444:	e3530005 	cmp	r3, #5
80021448:	ca000001 	bgt	80021454 <kmalloc+0x30>
8002144c:	e59f002c 	ldr	r0, [pc, #44]	@ 80021480 <kmalloc+0x5c>
80021450:	eb0001a7 	bl	80021af4 <panic>
80021454:	e59f0028 	ldr	r0, [pc, #40]	@ 80021484 <kmalloc+0x60>
80021458:	eb0011e7 	bl	80025bfc <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb0011ed 	bl	80025c28 <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	80029458 	.word	0x80029458
80021484:	800ab808 	.word	0x800ab808

80021488 <_kfree>:
80021488:	e92d4800 	push	{fp, lr}
8002148c:	e28db004 	add	fp, sp, #4
80021490:	e24dd018 	sub	sp, sp, #24
80021494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021498:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002149c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800214a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214a4:	ebfffe23 	bl	80020d38 <mem2blkid>
800214a8:	e50b0008 	str	r0, [fp, #-8]
800214ac:	e51b3008 	ldr	r3, [fp, #-8]
800214b0:	e1a032c3 	asr	r3, r3, #5
800214b4:	e1a01003 	mov	r1, r3
800214b8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214bc:	ebfffdf6 	bl	80020c9c <get_mark>
800214c0:	e50b000c 	str	r0, [fp, #-12]
800214c4:	e51b300c 	ldr	r3, [fp, #-12]
800214c8:	e5933004 	ldr	r3, [r3, #4]
800214cc:	e51b1008 	ldr	r1, [fp, #-8]
800214d0:	e1a00003 	mov	r0, r3
800214d4:	ebfffe27 	bl	80020d78 <available>
800214d8:	e1a03000 	mov	r3, r0
800214dc:	e3530000 	cmp	r3, #0
800214e0:	0a000001 	beq	800214ec <_kfree+0x64>
800214e4:	e59f0090 	ldr	r0, [pc, #144]	@ 8002157c <_kfree+0xf4>
800214e8:	eb000181 	bl	80021af4 <panic>
800214ec:	e51b3008 	ldr	r3, [fp, #-8]
800214f0:	e2233001 	eor	r3, r3, #1
800214f4:	e50b3010 	str	r3, [fp, #-16]
800214f8:	e51b300c 	ldr	r3, [fp, #-12]
800214fc:	e5933004 	ldr	r3, [r3, #4]
80021500:	e51b1010 	ldr	r1, [fp, #-16]
80021504:	e1a00003 	mov	r0, r3
80021508:	ebfffe1a 	bl	80020d78 <available>
8002150c:	e1a03000 	mov	r3, r0
80021510:	e3530000 	cmp	r3, #0
80021514:	0a000002 	beq	80021524 <_kfree+0x9c>
80021518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002151c:	e353000c 	cmp	r3, #12
80021520:	1a000003 	bne	80021534 <_kfree+0xac>
80021524:	e51b1008 	ldr	r1, [fp, #-8]
80021528:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002152c:	ebfffefc 	bl	80021124 <mark_blk>
80021530:	ea00000e 	b	80021570 <_kfree+0xe8>
80021534:	e51b1010 	ldr	r1, [fp, #-16]
80021538:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002153c:	ebfffe90 	bl	80020f84 <unmark_blk>
80021540:	e51b3008 	ldr	r3, [fp, #-8]
80021544:	e3c33001 	bic	r3, r3, #1
80021548:	e1a01003 	mov	r1, r3
8002154c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80021550:	ebfffde8 	bl	80020cf8 <blkid2mem>
80021554:	e1a02000 	mov	r2, r0
80021558:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002155c:	e2833001 	add	r3, r3, #1
80021560:	e1a01003 	mov	r1, r3
80021564:	e1a00002 	mov	r0, r2
80021568:	ebffffc6 	bl	80021488 <_kfree>
8002156c:	e1a00000 	nop			@ (mov r0, r0)
80021570:	e1a00000 	nop			@ (mov r0, r0)
80021574:	e24bd004 	sub	sp, fp, #4
80021578:	e8bd8800 	pop	{fp, pc}
8002157c:	80029478 	.word	0x80029478

80021580 <kfree>:
80021580:	e92d4800 	push	{fp, lr}
80021584:	e28db004 	add	fp, sp, #4
80021588:	e24dd008 	sub	sp, sp, #8
8002158c:	e50b0008 	str	r0, [fp, #-8]
80021590:	e50b100c 	str	r1, [fp, #-12]
80021594:	e51b300c 	ldr	r3, [fp, #-12]
80021598:	e353000c 	cmp	r3, #12
8002159c:	ca00000b 	bgt	800215d0 <kfree+0x50>
800215a0:	e51b300c 	ldr	r3, [fp, #-12]
800215a4:	e3530005 	cmp	r3, #5
800215a8:	da000008 	ble	800215d0 <kfree+0x50>
800215ac:	e3a02001 	mov	r2, #1
800215b0:	e51b300c 	ldr	r3, [fp, #-12]
800215b4:	e1a03312 	lsl	r3, r2, r3
800215b8:	e2433001 	sub	r3, r3, #1
800215bc:	e1a02003 	mov	r2, r3
800215c0:	e51b3008 	ldr	r3, [fp, #-8]
800215c4:	e0033002 	and	r3, r3, r2
800215c8:	e3530000 	cmp	r3, #0
800215cc:	0a000001 	beq	800215d8 <kfree+0x58>
800215d0:	e59f0028 	ldr	r0, [pc, #40]	@ 80021600 <kfree+0x80>
800215d4:	eb000146 	bl	80021af4 <panic>
800215d8:	e59f0024 	ldr	r0, [pc, #36]	@ 80021604 <kfree+0x84>
800215dc:	eb001186 	bl	80025bfc <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb00118c 	bl	80025c28 <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	8002948c 	.word	0x8002948c
80021604:	800ab808 	.word	0x800ab808

80021608 <free_page>:
80021608:	e92d4800 	push	{fp, lr}
8002160c:	e28db004 	add	fp, sp, #4
80021610:	e24dd008 	sub	sp, sp, #8
80021614:	e50b0008 	str	r0, [fp, #-8]
80021618:	e3a0100c 	mov	r1, #12
8002161c:	e51b0008 	ldr	r0, [fp, #-8]
80021620:	ebffffd6 	bl	80021580 <kfree>
80021624:	e1a00000 	nop			@ (mov r0, r0)
80021628:	e24bd004 	sub	sp, fp, #4
8002162c:	e8bd8800 	pop	{fp, pc}

80021630 <alloc_page>:
80021630:	e92d4800 	push	{fp, lr}
80021634:	e28db004 	add	fp, sp, #4
80021638:	e3a0000c 	mov	r0, #12
8002163c:	ebffff78 	bl	80021424 <kmalloc>
80021640:	e1a03000 	mov	r3, r0
80021644:	e1a00003 	mov	r0, r3
80021648:	e8bd8800 	pop	{fp, pc}

8002164c <get_order>:
8002164c:	e92d4800 	push	{fp, lr}
80021650:	e28db004 	add	fp, sp, #4
80021654:	e24dd010 	sub	sp, sp, #16
80021658:	e50b0010 	str	r0, [fp, #-16]
8002165c:	e51b3010 	ldr	r3, [fp, #-16]
80021660:	e2433001 	sub	r3, r3, #1
80021664:	e50b3010 	str	r3, [fp, #-16]
80021668:	e51b3010 	ldr	r3, [fp, #-16]
8002166c:	e1a030a3 	lsr	r3, r3, #1
80021670:	e51b2010 	ldr	r2, [fp, #-16]
80021674:	e1823003 	orr	r3, r2, r3
80021678:	e50b3010 	str	r3, [fp, #-16]
8002167c:	e51b3010 	ldr	r3, [fp, #-16]
80021680:	e1a03123 	lsr	r3, r3, #2
80021684:	e51b2010 	ldr	r2, [fp, #-16]
80021688:	e1823003 	orr	r3, r2, r3
8002168c:	e50b3010 	str	r3, [fp, #-16]
80021690:	e51b3010 	ldr	r3, [fp, #-16]
80021694:	e1a03223 	lsr	r3, r3, #4
80021698:	e51b2010 	ldr	r2, [fp, #-16]
8002169c:	e1823003 	orr	r3, r2, r3
800216a0:	e50b3010 	str	r3, [fp, #-16]
800216a4:	e51b3010 	ldr	r3, [fp, #-16]
800216a8:	e1a03423 	lsr	r3, r3, #8
800216ac:	e51b2010 	ldr	r2, [fp, #-16]
800216b0:	e1823003 	orr	r3, r2, r3
800216b4:	e50b3010 	str	r3, [fp, #-16]
800216b8:	e51b3010 	ldr	r3, [fp, #-16]
800216bc:	e1a03823 	lsr	r3, r3, #16
800216c0:	e51b2010 	ldr	r2, [fp, #-16]
800216c4:	e1823003 	orr	r3, r2, r3
800216c8:	e50b3010 	str	r3, [fp, #-16]
800216cc:	e51b3010 	ldr	r3, [fp, #-16]
800216d0:	e2833001 	add	r3, r3, #1
800216d4:	e50b3010 	str	r3, [fp, #-16]
800216d8:	e3a03000 	mov	r3, #0
800216dc:	e50b3008 	str	r3, [fp, #-8]
800216e0:	ea00000a 	b	80021710 <get_order+0xc4>
800216e4:	e3a02001 	mov	r2, #1
800216e8:	e51b3008 	ldr	r3, [fp, #-8]
800216ec:	e1a03312 	lsl	r3, r2, r3
800216f0:	e1a02003 	mov	r2, r3
800216f4:	e51b3010 	ldr	r3, [fp, #-16]
800216f8:	e0033002 	and	r3, r3, r2
800216fc:	e3530000 	cmp	r3, #0
80021700:	1a000006 	bne	80021720 <get_order+0xd4>
80021704:	e51b3008 	ldr	r3, [fp, #-8]
80021708:	e2833001 	add	r3, r3, #1
8002170c:	e50b3008 	str	r3, [fp, #-8]
80021710:	e51b3008 	ldr	r3, [fp, #-8]
80021714:	e353001f 	cmp	r3, #31
80021718:	9afffff1 	bls	800216e4 <get_order+0x98>
8002171c:	ea000000 	b	80021724 <get_order+0xd8>
80021720:	e1a00000 	nop			@ (mov r0, r0)
80021724:	e51b3008 	ldr	r3, [fp, #-8]
80021728:	e3530005 	cmp	r3, #5
8002172c:	8a000002 	bhi	8002173c <get_order+0xf0>
80021730:	e3a03006 	mov	r3, #6
80021734:	e50b3008 	str	r3, [fp, #-8]
80021738:	ea000004 	b	80021750 <get_order+0x104>
8002173c:	e51b3008 	ldr	r3, [fp, #-8]
80021740:	e353000c 	cmp	r3, #12
80021744:	9a000001 	bls	80021750 <get_order+0x104>
80021748:	e59f0010 	ldr	r0, [pc, #16]	@ 80021760 <get_order+0x114>
8002174c:	eb0000e8 	bl	80021af4 <panic>
80021750:	e51b3008 	ldr	r3, [fp, #-8]
80021754:	e1a00003 	mov	r0, r3
80021758:	e24bd004 	sub	sp, fp, #4
8002175c:	e8bd8800 	pop	{fp, pc}
80021760:	800294bc 	.word	0x800294bc

80021764 <printint>:
80021764:	e92d4800 	push	{fp, lr}
80021768:	e28db004 	add	fp, sp, #4
8002176c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80021770:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80021774:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80021778:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002177c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021780:	e3530000 	cmp	r3, #0
80021784:	0a00000a 	beq	800217b4 <printint+0x50>
80021788:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002178c:	e1a03fa3 	lsr	r3, r3, #31
80021790:	e6ef3073 	uxtb	r3, r3
80021794:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80021798:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002179c:	e3530000 	cmp	r3, #0
800217a0:	0a000003 	beq	800217b4 <printint+0x50>
800217a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217a8:	e2633000 	rsb	r3, r3, #0
800217ac:	e50b300c 	str	r3, [fp, #-12]
800217b0:	ea000001 	b	800217bc <printint+0x58>
800217b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217b8:	e50b300c 	str	r3, [fp, #-12]
800217bc:	e3a03000 	mov	r3, #0
800217c0:	e50b3008 	str	r3, [fp, #-8]
800217c4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800217c8:	e51b300c 	ldr	r3, [fp, #-12]
800217cc:	e1a01002 	mov	r1, r2
800217d0:	e1a00003 	mov	r0, r3
800217d4:	eb001e95 	bl	80029230 <__aeabi_uidivmod>
800217d8:	e1a03001 	mov	r3, r1
800217dc:	e1a01003 	mov	r1, r3
800217e0:	e51b3008 	ldr	r3, [fp, #-8]
800217e4:	e2832001 	add	r2, r3, #1
800217e8:	e50b2008 	str	r2, [fp, #-8]
800217ec:	e59f209c 	ldr	r2, [pc, #156]	@ 80021890 <printint+0x12c>
800217f0:	e7d22001 	ldrb	r2, [r2, r1]
800217f4:	e2433004 	sub	r3, r3, #4
800217f8:	e083300b 	add	r3, r3, fp
800217fc:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021800:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021804:	e1a01003 	mov	r1, r3
80021808:	e51b000c 	ldr	r0, [fp, #-12]
8002180c:	eb001e4a 	bl	8002913c <__udivsi3>
80021810:	e1a03000 	mov	r3, r0
80021814:	e50b300c 	str	r3, [fp, #-12]
80021818:	e51b300c 	ldr	r3, [fp, #-12]
8002181c:	e3530000 	cmp	r3, #0
80021820:	1affffe7 	bne	800217c4 <printint+0x60>
80021824:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021828:	e3530000 	cmp	r3, #0
8002182c:	0a00000d 	beq	80021868 <printint+0x104>
80021830:	e51b3008 	ldr	r3, [fp, #-8]
80021834:	e2832001 	add	r2, r3, #1
80021838:	e50b2008 	str	r2, [fp, #-8]
8002183c:	e2433004 	sub	r3, r3, #4
80021840:	e083300b 	add	r3, r3, fp
80021844:	e3a0202d 	mov	r2, #45	@ 0x2d
80021848:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
8002184c:	ea000005 	b	80021868 <printint+0x104>
80021850:	e24b201c 	sub	r2, fp, #28
80021854:	e51b3008 	ldr	r3, [fp, #-8]
80021858:	e0823003 	add	r3, r2, r3
8002185c:	e5d33000 	ldrb	r3, [r3]
80021860:	e1a00003 	mov	r0, r3
80021864:	eb0000bb 	bl	80021b58 <consputc>
80021868:	e51b3008 	ldr	r3, [fp, #-8]
8002186c:	e2433001 	sub	r3, r3, #1
80021870:	e50b3008 	str	r3, [fp, #-8]
80021874:	e51b3008 	ldr	r3, [fp, #-8]
80021878:	e3530000 	cmp	r3, #0
8002187c:	aafffff3 	bge	80021850 <printint+0xec>
80021880:	e1a00000 	nop			@ (mov r0, r0)
80021884:	e1a00000 	nop			@ (mov r0, r0)
80021888:	e24bd004 	sub	sp, fp, #4
8002188c:	e8bd8800 	pop	{fp, pc}
80021890:	8002a000 	.word	0x8002a000

80021894 <cprintf>:
80021894:	e92d000f 	push	{r0, r1, r2, r3}
80021898:	e92d4800 	push	{fp, lr}
8002189c:	e28db004 	add	fp, sp, #4
800218a0:	e24dd018 	sub	sp, sp, #24
800218a4:	e59f323c 	ldr	r3, [pc, #572]	@ 80021ae8 <cprintf+0x254>
800218a8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800218ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800218b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800218b4:	e3530000 	cmp	r3, #0
800218b8:	0a000001 	beq	800218c4 <cprintf+0x30>
800218bc:	e59f0224 	ldr	r0, [pc, #548]	@ 80021ae8 <cprintf+0x254>
800218c0:	eb0010cd 	bl	80025bfc <acquire>
800218c4:	e59b3004 	ldr	r3, [fp, #4]
800218c8:	e3530000 	cmp	r3, #0
800218cc:	1a000001 	bne	800218d8 <cprintf+0x44>
800218d0:	e59f0214 	ldr	r0, [pc, #532]	@ 80021aec <cprintf+0x258>
800218d4:	eb000086 	bl	80021af4 <panic>
800218d8:	e28b3008 	add	r3, fp, #8
800218dc:	e50b300c 	str	r3, [fp, #-12]
800218e0:	e3a03000 	mov	r3, #0
800218e4:	e50b3008 	str	r3, [fp, #-8]
800218e8:	ea00006a 	b	80021a98 <cprintf+0x204>
800218ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800218f0:	e3530025 	cmp	r3, #37	@ 0x25
800218f4:	0a000002 	beq	80021904 <cprintf+0x70>
800218f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800218fc:	eb000095 	bl	80021b58 <consputc>
80021900:	ea000061 	b	80021a8c <cprintf+0x1f8>
80021904:	e59b2004 	ldr	r2, [fp, #4]
80021908:	e51b3008 	ldr	r3, [fp, #-8]
8002190c:	e2833001 	add	r3, r3, #1
80021910:	e50b3008 	str	r3, [fp, #-8]
80021914:	e51b3008 	ldr	r3, [fp, #-8]
80021918:	e0823003 	add	r3, r2, r3
8002191c:	e5d33000 	ldrb	r3, [r3]
80021920:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021924:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021928:	e3530000 	cmp	r3, #0
8002192c:	0a000062 	beq	80021abc <cprintf+0x228>
80021930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021934:	e3530025 	cmp	r3, #37	@ 0x25
80021938:	0a00004b 	beq	80021a6c <cprintf+0x1d8>
8002193c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021940:	e3530025 	cmp	r3, #37	@ 0x25
80021944:	ba00004b 	blt	80021a78 <cprintf+0x1e4>
80021948:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002194c:	e3530078 	cmp	r3, #120	@ 0x78
80021950:	ca000048 	bgt	80021a78 <cprintf+0x1e4>
80021954:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021958:	e3530064 	cmp	r3, #100	@ 0x64
8002195c:	ba000045 	blt	80021a78 <cprintf+0x1e4>
80021960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021964:	e2433064 	sub	r3, r3, #100	@ 0x64
80021968:	e3530014 	cmp	r3, #20
8002196c:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
80021970:	ea000040 	b	80021a78 <cprintf+0x1e4>
80021974:	800219c8 	.word	0x800219c8
80021978:	80021a78 	.word	0x80021a78
8002197c:	80021a78 	.word	0x80021a78
80021980:	80021a78 	.word	0x80021a78
80021984:	80021a78 	.word	0x80021a78
80021988:	80021a78 	.word	0x80021a78
8002198c:	80021a78 	.word	0x80021a78
80021990:	80021a78 	.word	0x80021a78
80021994:	80021a78 	.word	0x80021a78
80021998:	80021a78 	.word	0x80021a78
8002199c:	80021a78 	.word	0x80021a78
800219a0:	80021a78 	.word	0x80021a78
800219a4:	800219ec 	.word	0x800219ec
800219a8:	80021a78 	.word	0x80021a78
800219ac:	80021a78 	.word	0x80021a78
800219b0:	80021a10 	.word	0x80021a10
800219b4:	80021a78 	.word	0x80021a78
800219b8:	80021a78 	.word	0x80021a78
800219bc:	80021a78 	.word	0x80021a78
800219c0:	80021a78 	.word	0x80021a78
800219c4:	800219ec 	.word	0x800219ec
800219c8:	e51b300c 	ldr	r3, [fp, #-12]
800219cc:	e2832004 	add	r2, r3, #4
800219d0:	e50b200c 	str	r2, [fp, #-12]
800219d4:	e5933000 	ldr	r3, [r3]
800219d8:	e3a02001 	mov	r2, #1
800219dc:	e3a0100a 	mov	r1, #10
800219e0:	e1a00003 	mov	r0, r3
800219e4:	ebffff5e 	bl	80021764 <printint>
800219e8:	ea000027 	b	80021a8c <cprintf+0x1f8>
800219ec:	e51b300c 	ldr	r3, [fp, #-12]
800219f0:	e2832004 	add	r2, r3, #4
800219f4:	e50b200c 	str	r2, [fp, #-12]
800219f8:	e5933000 	ldr	r3, [r3]
800219fc:	e3a02000 	mov	r2, #0
80021a00:	e3a01010 	mov	r1, #16
80021a04:	e1a00003 	mov	r0, r3
80021a08:	ebffff55 	bl	80021764 <printint>
80021a0c:	ea00001e 	b	80021a8c <cprintf+0x1f8>
80021a10:	e51b300c 	ldr	r3, [fp, #-12]
80021a14:	e2832004 	add	r2, r3, #4
80021a18:	e50b200c 	str	r2, [fp, #-12]
80021a1c:	e5933000 	ldr	r3, [r3]
80021a20:	e50b3010 	str	r3, [fp, #-16]
80021a24:	e51b3010 	ldr	r3, [fp, #-16]
80021a28:	e3530000 	cmp	r3, #0
80021a2c:	1a000009 	bne	80021a58 <cprintf+0x1c4>
80021a30:	e59f30b8 	ldr	r3, [pc, #184]	@ 80021af0 <cprintf+0x25c>
80021a34:	e50b3010 	str	r3, [fp, #-16]
80021a38:	ea000006 	b	80021a58 <cprintf+0x1c4>
80021a3c:	e51b3010 	ldr	r3, [fp, #-16]
80021a40:	e5d33000 	ldrb	r3, [r3]
80021a44:	e1a00003 	mov	r0, r3
80021a48:	eb000042 	bl	80021b58 <consputc>
80021a4c:	e51b3010 	ldr	r3, [fp, #-16]
80021a50:	e2833001 	add	r3, r3, #1
80021a54:	e50b3010 	str	r3, [fp, #-16]
80021a58:	e51b3010 	ldr	r3, [fp, #-16]
80021a5c:	e5d33000 	ldrb	r3, [r3]
80021a60:	e3530000 	cmp	r3, #0
80021a64:	1afffff4 	bne	80021a3c <cprintf+0x1a8>
80021a68:	ea000007 	b	80021a8c <cprintf+0x1f8>
80021a6c:	e3a00025 	mov	r0, #37	@ 0x25
80021a70:	eb000038 	bl	80021b58 <consputc>
80021a74:	ea000004 	b	80021a8c <cprintf+0x1f8>
80021a78:	e3a00025 	mov	r0, #37	@ 0x25
80021a7c:	eb000035 	bl	80021b58 <consputc>
80021a80:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a84:	eb000033 	bl	80021b58 <consputc>
80021a88:	e1a00000 	nop			@ (mov r0, r0)
80021a8c:	e51b3008 	ldr	r3, [fp, #-8]
80021a90:	e2833001 	add	r3, r3, #1
80021a94:	e50b3008 	str	r3, [fp, #-8]
80021a98:	e59b2004 	ldr	r2, [fp, #4]
80021a9c:	e51b3008 	ldr	r3, [fp, #-8]
80021aa0:	e0823003 	add	r3, r2, r3
80021aa4:	e5d33000 	ldrb	r3, [r3]
80021aa8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021aac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ab0:	e3530000 	cmp	r3, #0
80021ab4:	1affff8c 	bne	800218ec <cprintf+0x58>
80021ab8:	ea000000 	b	80021ac0 <cprintf+0x22c>
80021abc:	e1a00000 	nop			@ (mov r0, r0)
80021ac0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021ac4:	e3530000 	cmp	r3, #0
80021ac8:	0a000001 	beq	80021ad4 <cprintf+0x240>
80021acc:	e59f0014 	ldr	r0, [pc, #20]	@ 80021ae8 <cprintf+0x254>
80021ad0:	eb001054 	bl	80025c28 <release>
80021ad4:	e1a00000 	nop			@ (mov r0, r0)
80021ad8:	e24bd004 	sub	sp, fp, #4
80021adc:	e8bd4800 	pop	{fp, lr}
80021ae0:	e28dd010 	add	sp, sp, #16
80021ae4:	e12fff1e 	bx	lr
80021ae8:	800ab884 	.word	0x800ab884
80021aec:	800294cc 	.word	0x800294cc
80021af0:	800294d8 	.word	0x800294d8

80021af4 <panic>:
80021af4:	e92d4800 	push	{fp, lr}
80021af8:	e28db004 	add	fp, sp, #4
80021afc:	e24dd008 	sub	sp, sp, #8
80021b00:	e50b0008 	str	r0, [fp, #-8]
80021b04:	ebfffa8d 	bl	80020540 <cli>
80021b08:	e59f3038 	ldr	r3, [pc, #56]	@ 80021b48 <panic+0x54>
80021b0c:	e3a02000 	mov	r2, #0
80021b10:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021b14:	e59f3030 	ldr	r3, [pc, #48]	@ 80021b4c <panic+0x58>
80021b18:	e5933000 	ldr	r3, [r3]
80021b1c:	e5d33000 	ldrb	r3, [r3]
80021b20:	e1a01003 	mov	r1, r3
80021b24:	e59f0024 	ldr	r0, [pc, #36]	@ 80021b50 <panic+0x5c>
80021b28:	ebffff59 	bl	80021894 <cprintf>
80021b2c:	e51b0008 	ldr	r0, [fp, #-8]
80021b30:	ebfffb35 	bl	8002080c <show_callstk>
80021b34:	e59f3018 	ldr	r3, [pc, #24]	@ 80021b54 <panic+0x60>
80021b38:	e3a02001 	mov	r2, #1
80021b3c:	e5832000 	str	r2, [r3]
80021b40:	e1a00000 	nop			@ (mov r0, r0)
80021b44:	eafffffd 	b	80021b40 <panic+0x4c>
80021b48:	800ab884 	.word	0x800ab884
80021b4c:	800ad604 	.word	0x800ad604
80021b50:	800294e0 	.word	0x800294e0
80021b54:	800ab880 	.word	0x800ab880

80021b58 <consputc>:
80021b58:	e92d4800 	push	{fp, lr}
80021b5c:	e28db004 	add	fp, sp, #4
80021b60:	e24dd008 	sub	sp, sp, #8
80021b64:	e50b0008 	str	r0, [fp, #-8]
80021b68:	e59f3050 	ldr	r3, [pc, #80]	@ 80021bc0 <consputc+0x68>
80021b6c:	e5933000 	ldr	r3, [r3]
80021b70:	e3530000 	cmp	r3, #0
80021b74:	0a000002 	beq	80021b84 <consputc+0x2c>
80021b78:	ebfffa70 	bl	80020540 <cli>
80021b7c:	e1a00000 	nop			@ (mov r0, r0)
80021b80:	eafffffd 	b	80021b7c <consputc+0x24>
80021b84:	e51b3008 	ldr	r3, [fp, #-8]
80021b88:	e3530c01 	cmp	r3, #256	@ 0x100
80021b8c:	1a000006 	bne	80021bac <consputc+0x54>
80021b90:	e3a00008 	mov	r0, #8
80021b94:	eb001d27 	bl	80029038 <uartputc>
80021b98:	e3a00020 	mov	r0, #32
80021b9c:	eb001d25 	bl	80029038 <uartputc>
80021ba0:	e3a00008 	mov	r0, #8
80021ba4:	eb001d23 	bl	80029038 <uartputc>
80021ba8:	ea000001 	b	80021bb4 <consputc+0x5c>
80021bac:	e51b0008 	ldr	r0, [fp, #-8]
80021bb0:	eb001d20 	bl	80029038 <uartputc>
80021bb4:	e1a00000 	nop			@ (mov r0, r0)
80021bb8:	e24bd004 	sub	sp, fp, #4
80021bbc:	e8bd8800 	pop	{fp, pc}
80021bc0:	800ab880 	.word	0x800ab880

80021bc4 <consoleintr>:
80021bc4:	e92d4800 	push	{fp, lr}
80021bc8:	e28db004 	add	fp, sp, #4
80021bcc:	e24dd010 	sub	sp, sp, #16
80021bd0:	e50b0010 	str	r0, [fp, #-16]
80021bd4:	e59f01fc 	ldr	r0, [pc, #508]	@ 80021dd8 <consoleintr+0x214>
80021bd8:	eb001007 	bl	80025bfc <acquire>
80021bdc:	ea000072 	b	80021dac <consoleintr+0x1e8>
80021be0:	e51b3008 	ldr	r3, [fp, #-8]
80021be4:	e353007f 	cmp	r3, #127	@ 0x7f
80021be8:	0a000028 	beq	80021c90 <consoleintr+0xcc>
80021bec:	e51b3008 	ldr	r3, [fp, #-8]
80021bf0:	e353007f 	cmp	r3, #127	@ 0x7f
80021bf4:	ca000033 	bgt	80021cc8 <consoleintr+0x104>
80021bf8:	e51b3008 	ldr	r3, [fp, #-8]
80021bfc:	e3530015 	cmp	r3, #21
80021c00:	0a000011 	beq	80021c4c <consoleintr+0x88>
80021c04:	e51b3008 	ldr	r3, [fp, #-8]
80021c08:	e3530015 	cmp	r3, #21
80021c0c:	ca00002d 	bgt	80021cc8 <consoleintr+0x104>
80021c10:	e51b3008 	ldr	r3, [fp, #-8]
80021c14:	e3530008 	cmp	r3, #8
80021c18:	0a00001c 	beq	80021c90 <consoleintr+0xcc>
80021c1c:	e51b3008 	ldr	r3, [fp, #-8]
80021c20:	e3530010 	cmp	r3, #16
80021c24:	1a000027 	bne	80021cc8 <consoleintr+0x104>
80021c28:	eb000fa8 	bl	80025ad0 <procdump>
80021c2c:	ea00005e 	b	80021dac <consoleintr+0x1e8>
80021c30:	e59f31a0 	ldr	r3, [pc, #416]	@ 80021dd8 <consoleintr+0x214>
80021c34:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c38:	e2433001 	sub	r3, r3, #1
80021c3c:	e59f2194 	ldr	r2, [pc, #404]	@ 80021dd8 <consoleintr+0x214>
80021c40:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021c44:	e3a00c01 	mov	r0, #256	@ 0x100
80021c48:	ebffffc2 	bl	80021b58 <consputc>
80021c4c:	e59f3184 	ldr	r3, [pc, #388]	@ 80021dd8 <consoleintr+0x214>
80021c50:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c54:	e59f317c 	ldr	r3, [pc, #380]	@ 80021dd8 <consoleintr+0x214>
80021c58:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021c5c:	e1520003 	cmp	r2, r3
80021c60:	0a00004c 	beq	80021d98 <consoleintr+0x1d4>
80021c64:	e59f316c 	ldr	r3, [pc, #364]	@ 80021dd8 <consoleintr+0x214>
80021c68:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c6c:	e2433001 	sub	r3, r3, #1
80021c70:	e1a03b83 	lsl	r3, r3, #23
80021c74:	e1a03ba3 	lsr	r3, r3, #23
80021c78:	e59f2158 	ldr	r2, [pc, #344]	@ 80021dd8 <consoleintr+0x214>
80021c7c:	e0823003 	add	r3, r2, r3
80021c80:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021c84:	e353000a 	cmp	r3, #10
80021c88:	1affffe8 	bne	80021c30 <consoleintr+0x6c>
80021c8c:	ea000041 	b	80021d98 <consoleintr+0x1d4>
80021c90:	e59f3140 	ldr	r3, [pc, #320]	@ 80021dd8 <consoleintr+0x214>
80021c94:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c98:	e59f3138 	ldr	r3, [pc, #312]	@ 80021dd8 <consoleintr+0x214>
80021c9c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021ca0:	e1520003 	cmp	r2, r3
80021ca4:	0a00003d 	beq	80021da0 <consoleintr+0x1dc>
80021ca8:	e59f3128 	ldr	r3, [pc, #296]	@ 80021dd8 <consoleintr+0x214>
80021cac:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021cb0:	e2433001 	sub	r3, r3, #1
80021cb4:	e59f211c 	ldr	r2, [pc, #284]	@ 80021dd8 <consoleintr+0x214>
80021cb8:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021cbc:	e3a00c01 	mov	r0, #256	@ 0x100
80021cc0:	ebffffa4 	bl	80021b58 <consputc>
80021cc4:	ea000035 	b	80021da0 <consoleintr+0x1dc>
80021cc8:	e51b3008 	ldr	r3, [fp, #-8]
80021ccc:	e3530000 	cmp	r3, #0
80021cd0:	0a000034 	beq	80021da8 <consoleintr+0x1e4>
80021cd4:	e59f30fc 	ldr	r3, [pc, #252]	@ 80021dd8 <consoleintr+0x214>
80021cd8:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021cdc:	e59f30f4 	ldr	r3, [pc, #244]	@ 80021dd8 <consoleintr+0x214>
80021ce0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021ce4:	e0423003 	sub	r3, r2, r3
80021ce8:	e3530c02 	cmp	r3, #512	@ 0x200
80021cec:	2a00002d 	bcs	80021da8 <consoleintr+0x1e4>
80021cf0:	e51b3008 	ldr	r3, [fp, #-8]
80021cf4:	e353000d 	cmp	r3, #13
80021cf8:	0a000001 	beq	80021d04 <consoleintr+0x140>
80021cfc:	e51b3008 	ldr	r3, [fp, #-8]
80021d00:	ea000000 	b	80021d08 <consoleintr+0x144>
80021d04:	e3a0300a 	mov	r3, #10
80021d08:	e50b3008 	str	r3, [fp, #-8]
80021d0c:	e59f30c4 	ldr	r3, [pc, #196]	@ 80021dd8 <consoleintr+0x214>
80021d10:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d14:	e2832001 	add	r2, r3, #1
80021d18:	e59f10b8 	ldr	r1, [pc, #184]	@ 80021dd8 <consoleintr+0x214>
80021d1c:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021d20:	e1a03b83 	lsl	r3, r3, #23
80021d24:	e1a03ba3 	lsr	r3, r3, #23
80021d28:	e51b2008 	ldr	r2, [fp, #-8]
80021d2c:	e6ef1072 	uxtb	r1, r2
80021d30:	e59f20a0 	ldr	r2, [pc, #160]	@ 80021dd8 <consoleintr+0x214>
80021d34:	e0823003 	add	r3, r2, r3
80021d38:	e1a02001 	mov	r2, r1
80021d3c:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021d40:	e51b0008 	ldr	r0, [fp, #-8]
80021d44:	ebffff83 	bl	80021b58 <consputc>
80021d48:	e51b3008 	ldr	r3, [fp, #-8]
80021d4c:	e353000a 	cmp	r3, #10
80021d50:	0a000009 	beq	80021d7c <consoleintr+0x1b8>
80021d54:	e51b3008 	ldr	r3, [fp, #-8]
80021d58:	e3530004 	cmp	r3, #4
80021d5c:	0a000006 	beq	80021d7c <consoleintr+0x1b8>
80021d60:	e59f3070 	ldr	r3, [pc, #112]	@ 80021dd8 <consoleintr+0x214>
80021d64:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021d68:	e59f3068 	ldr	r3, [pc, #104]	@ 80021dd8 <consoleintr+0x214>
80021d6c:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021d70:	e2833c02 	add	r3, r3, #512	@ 0x200
80021d74:	e1520003 	cmp	r2, r3
80021d78:	1a00000a 	bne	80021da8 <consoleintr+0x1e4>
80021d7c:	e59f3054 	ldr	r3, [pc, #84]	@ 80021dd8 <consoleintr+0x214>
80021d80:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d84:	e59f204c 	ldr	r2, [pc, #76]	@ 80021dd8 <consoleintr+0x214>
80021d88:	e5823238 	str	r3, [r2, #568]	@ 0x238
80021d8c:	e59f0048 	ldr	r0, [pc, #72]	@ 80021ddc <consoleintr+0x218>
80021d90:	eb000f14 	bl	800259e8 <wakeup>
80021d94:	ea000003 	b	80021da8 <consoleintr+0x1e4>
80021d98:	e1a00000 	nop			@ (mov r0, r0)
80021d9c:	ea000002 	b	80021dac <consoleintr+0x1e8>
80021da0:	e1a00000 	nop			@ (mov r0, r0)
80021da4:	ea000000 	b	80021dac <consoleintr+0x1e8>
80021da8:	e1a00000 	nop			@ (mov r0, r0)
80021dac:	e51b3010 	ldr	r3, [fp, #-16]
80021db0:	e12fff33 	blx	r3
80021db4:	e50b0008 	str	r0, [fp, #-8]
80021db8:	e51b3008 	ldr	r3, [fp, #-8]
80021dbc:	e3530000 	cmp	r3, #0
80021dc0:	aaffff86 	bge	80021be0 <consoleintr+0x1c>
80021dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80021dd8 <consoleintr+0x214>
80021dc8:	eb000f96 	bl	80025c28 <release>
80021dcc:	e1a00000 	nop			@ (mov r0, r0)
80021dd0:	e24bd004 	sub	sp, fp, #4
80021dd4:	e8bd8800 	pop	{fp, pc}
80021dd8:	800ab8bc 	.word	0x800ab8bc
80021ddc:	800abaf0 	.word	0x800abaf0

80021de0 <consoleread>:
80021de0:	e92d4800 	push	{fp, lr}
80021de4:	e28db004 	add	fp, sp, #4
80021de8:	e24dd018 	sub	sp, sp, #24
80021dec:	e50b0010 	str	r0, [fp, #-16]
80021df0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021df4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021df8:	e51b0010 	ldr	r0, [fp, #-16]
80021dfc:	eb000534 	bl	800232d4 <iunlock>
80021e00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021e04:	e50b3008 	str	r3, [fp, #-8]
80021e08:	e59f0128 	ldr	r0, [pc, #296]	@ 80021f38 <consoleread+0x158>
80021e0c:	eb000f7a 	bl	80025bfc <acquire>
80021e10:	ea000037 	b	80021ef4 <consoleread+0x114>
80021e14:	e59f3120 	ldr	r3, [pc, #288]	@ 80021f3c <consoleread+0x15c>
80021e18:	e5933000 	ldr	r3, [r3]
80021e1c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80021e20:	e3530000 	cmp	r3, #0
80021e24:	0a000005 	beq	80021e40 <consoleread+0x60>
80021e28:	e59f0108 	ldr	r0, [pc, #264]	@ 80021f38 <consoleread+0x158>
80021e2c:	eb000f7d 	bl	80025c28 <release>
80021e30:	e51b0010 	ldr	r0, [fp, #-16]
80021e34:	eb0004c2 	bl	80023144 <ilock>
80021e38:	e3e03000 	mvn	r3, #0
80021e3c:	ea00003a 	b	80021f2c <consoleread+0x14c>
80021e40:	e59f10f0 	ldr	r1, [pc, #240]	@ 80021f38 <consoleread+0x158>
80021e44:	e59f00f4 	ldr	r0, [pc, #244]	@ 80021f40 <consoleread+0x160>
80021e48:	eb000e91 	bl	80025894 <sleep>
80021e4c:	e59f30e4 	ldr	r3, [pc, #228]	@ 80021f38 <consoleread+0x158>
80021e50:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80021e54:	e59f30dc 	ldr	r3, [pc, #220]	@ 80021f38 <consoleread+0x158>
80021e58:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021e5c:	e1520003 	cmp	r2, r3
80021e60:	0affffeb 	beq	80021e14 <consoleread+0x34>
80021e64:	e59f30cc 	ldr	r3, [pc, #204]	@ 80021f38 <consoleread+0x158>
80021e68:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021e6c:	e2832001 	add	r2, r3, #1
80021e70:	e59f10c0 	ldr	r1, [pc, #192]	@ 80021f38 <consoleread+0x158>
80021e74:	e5812234 	str	r2, [r1, #564]	@ 0x234
80021e78:	e1a03b83 	lsl	r3, r3, #23
80021e7c:	e1a03ba3 	lsr	r3, r3, #23
80021e80:	e59f20b0 	ldr	r2, [pc, #176]	@ 80021f38 <consoleread+0x158>
80021e84:	e0823003 	add	r3, r2, r3
80021e88:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021e8c:	e50b300c 	str	r3, [fp, #-12]
80021e90:	e51b300c 	ldr	r3, [fp, #-12]
80021e94:	e3530004 	cmp	r3, #4
80021e98:	1a000009 	bne	80021ec4 <consoleread+0xe4>
80021e9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ea0:	e51b2008 	ldr	r2, [fp, #-8]
80021ea4:	e1520003 	cmp	r2, r3
80021ea8:	9a000015 	bls	80021f04 <consoleread+0x124>
80021eac:	e59f3084 	ldr	r3, [pc, #132]	@ 80021f38 <consoleread+0x158>
80021eb0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021eb4:	e2433001 	sub	r3, r3, #1
80021eb8:	e59f2078 	ldr	r2, [pc, #120]	@ 80021f38 <consoleread+0x158>
80021ebc:	e5823234 	str	r3, [r2, #564]	@ 0x234
80021ec0:	ea00000f 	b	80021f04 <consoleread+0x124>
80021ec4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021ec8:	e2832001 	add	r2, r3, #1
80021ecc:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
80021ed0:	e51b200c 	ldr	r2, [fp, #-12]
80021ed4:	e6ef2072 	uxtb	r2, r2
80021ed8:	e5c32000 	strb	r2, [r3]
80021edc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ee0:	e2433001 	sub	r3, r3, #1
80021ee4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021ee8:	e51b300c 	ldr	r3, [fp, #-12]
80021eec:	e353000a 	cmp	r3, #10
80021ef0:	0a000005 	beq	80021f0c <consoleread+0x12c>
80021ef4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ef8:	e3530000 	cmp	r3, #0
80021efc:	caffffd2 	bgt	80021e4c <consoleread+0x6c>
80021f00:	ea000002 	b	80021f10 <consoleread+0x130>
80021f04:	e1a00000 	nop			@ (mov r0, r0)
80021f08:	ea000000 	b	80021f10 <consoleread+0x130>
80021f0c:	e1a00000 	nop			@ (mov r0, r0)
80021f10:	e59f0020 	ldr	r0, [pc, #32]	@ 80021f38 <consoleread+0x158>
80021f14:	eb000f43 	bl	80025c28 <release>
80021f18:	e51b0010 	ldr	r0, [fp, #-16]
80021f1c:	eb000488 	bl	80023144 <ilock>
80021f20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f24:	e51b2008 	ldr	r2, [fp, #-8]
80021f28:	e0423003 	sub	r3, r2, r3
80021f2c:	e1a00003 	mov	r0, r3
80021f30:	e24bd004 	sub	sp, fp, #4
80021f34:	e8bd8800 	pop	{fp, pc}
80021f38:	800ab8bc 	.word	0x800ab8bc
80021f3c:	800af548 	.word	0x800af548
80021f40:	800abaf0 	.word	0x800abaf0

80021f44 <consolewrite>:
80021f44:	e92d4800 	push	{fp, lr}
80021f48:	e28db004 	add	fp, sp, #4
80021f4c:	e24dd018 	sub	sp, sp, #24
80021f50:	e50b0010 	str	r0, [fp, #-16]
80021f54:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021f58:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021f5c:	e51b0010 	ldr	r0, [fp, #-16]
80021f60:	eb0004db 	bl	800232d4 <iunlock>
80021f64:	e59f0060 	ldr	r0, [pc, #96]	@ 80021fcc <consolewrite+0x88>
80021f68:	eb000f23 	bl	80025bfc <acquire>
80021f6c:	e3a03000 	mov	r3, #0
80021f70:	e50b3008 	str	r3, [fp, #-8]
80021f74:	ea000008 	b	80021f9c <consolewrite+0x58>
80021f78:	e51b3008 	ldr	r3, [fp, #-8]
80021f7c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80021f80:	e0823003 	add	r3, r2, r3
80021f84:	e5d33000 	ldrb	r3, [r3]
80021f88:	e1a00003 	mov	r0, r3
80021f8c:	ebfffef1 	bl	80021b58 <consputc>
80021f90:	e51b3008 	ldr	r3, [fp, #-8]
80021f94:	e2833001 	add	r3, r3, #1
80021f98:	e50b3008 	str	r3, [fp, #-8]
80021f9c:	e51b2008 	ldr	r2, [fp, #-8]
80021fa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021fa4:	e1520003 	cmp	r2, r3
80021fa8:	bafffff2 	blt	80021f78 <consolewrite+0x34>
80021fac:	e59f0018 	ldr	r0, [pc, #24]	@ 80021fcc <consolewrite+0x88>
80021fb0:	eb000f1c 	bl	80025c28 <release>
80021fb4:	e51b0010 	ldr	r0, [fp, #-16]
80021fb8:	eb000461 	bl	80023144 <ilock>
80021fbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021fc0:	e1a00003 	mov	r0, r3
80021fc4:	e24bd004 	sub	sp, fp, #4
80021fc8:	e8bd8800 	pop	{fp, pc}
80021fcc:	800ab884 	.word	0x800ab884

80021fd0 <consoleinit>:
80021fd0:	e92d4800 	push	{fp, lr}
80021fd4:	e28db004 	add	fp, sp, #4
80021fd8:	e59f103c 	ldr	r1, [pc, #60]	@ 8002201c <consoleinit+0x4c>
80021fdc:	e59f003c 	ldr	r0, [pc, #60]	@ 80022020 <consoleinit+0x50>
80021fe0:	eb000ef3 	bl	80025bb4 <initlock>
80021fe4:	e59f1038 	ldr	r1, [pc, #56]	@ 80022024 <consoleinit+0x54>
80021fe8:	e59f0038 	ldr	r0, [pc, #56]	@ 80022028 <consoleinit+0x58>
80021fec:	eb000ef0 	bl	80025bb4 <initlock>
80021ff0:	e59f3034 	ldr	r3, [pc, #52]	@ 8002202c <consoleinit+0x5c>
80021ff4:	e59f2034 	ldr	r2, [pc, #52]	@ 80022030 <consoleinit+0x60>
80021ff8:	e583200c 	str	r2, [r3, #12]
80021ffc:	e59f3028 	ldr	r3, [pc, #40]	@ 8002202c <consoleinit+0x5c>
80022000:	e59f202c 	ldr	r2, [pc, #44]	@ 80022034 <consoleinit+0x64>
80022004:	e5832008 	str	r2, [r3, #8]
80022008:	e59f3010 	ldr	r3, [pc, #16]	@ 80022020 <consoleinit+0x50>
8002200c:	e3a02001 	mov	r2, #1
80022010:	e5832034 	str	r2, [r3, #52]	@ 0x34
80022014:	e1a00000 	nop			@ (mov r0, r0)
80022018:	e8bd8800 	pop	{fp, pc}
8002201c:	800294f0 	.word	0x800294f0
80022020:	800ab884 	.word	0x800ab884
80022024:	800294f8 	.word	0x800294f8
80022028:	800ab8bc 	.word	0x800ab8bc
8002202c:	800abafc 	.word	0x800abafc
80022030:	80021f44 	.word	0x80021f44
80022034:	80021de0 	.word	0x80021de0

80022038 <exec>:
80022038:	e92d4810 	push	{r4, fp, lr}
8002203c:	e28db008 	add	fp, sp, #8
80022040:	e24ddf49 	sub	sp, sp, #292	@ 0x124
80022044:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
80022048:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
8002204c:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
80022050:	eb00080e 	bl	80024090 <namei>
80022054:	e50b0010 	str	r0, [fp, #-16]
80022058:	e51b3010 	ldr	r3, [fp, #-16]
8002205c:	e3530000 	cmp	r3, #0
80022060:	1a000001 	bne	8002206c <exec+0x34>
80022064:	e3e03000 	mvn	r3, #0
80022068:	ea000120 	b	800224f0 <exec+0x4b8>
8002206c:	e51b0010 	ldr	r0, [fp, #-16]
80022070:	eb000433 	bl	80023144 <ilock>
80022074:	e24b1068 	sub	r1, fp, #104	@ 0x68
80022078:	e3a03034 	mov	r3, #52	@ 0x34
8002207c:	e3a02000 	mov	r2, #0
80022080:	e51b0010 	ldr	r0, [fp, #-16]
80022084:	eb0005da 	bl	800237f4 <readi>
80022088:	e1a03000 	mov	r3, r0
8002208c:	e3530033 	cmp	r3, #51	@ 0x33
80022090:	9a0000f6 	bls	80022470 <exec+0x438>
80022094:	e51b3068 	ldr	r3, [fp, #-104]	@ 0xffffff98
80022098:	e59f245c 	ldr	r2, [pc, #1116]	@ 800224fc <exec+0x4c4>
8002209c:	e1530002 	cmp	r3, r2
800220a0:	1a0000f4 	bne	80022478 <exec+0x440>
800220a4:	e3a03000 	mov	r3, #0
800220a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800220ac:	eb0016e9 	bl	80027c58 <kpt_alloc>
800220b0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800220b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800220b8:	e3530000 	cmp	r3, #0
800220bc:	0a0000ef 	beq	80022480 <exec+0x448>
800220c0:	e3a03000 	mov	r3, #0
800220c4:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800220c8:	e3a03000 	mov	r3, #0
800220cc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800220d0:	e51b304c 	ldr	r3, [fp, #-76]	@ 0xffffffb4
800220d4:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800220d8:	ea00002e 	b	80022198 <exec+0x160>
800220dc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800220e0:	e24b1088 	sub	r1, fp, #136	@ 0x88
800220e4:	e3a03020 	mov	r3, #32
800220e8:	e51b0010 	ldr	r0, [fp, #-16]
800220ec:	eb0005c0 	bl	800237f4 <readi>
800220f0:	e1a03000 	mov	r3, r0
800220f4:	e3530020 	cmp	r3, #32
800220f8:	1a0000e2 	bne	80022488 <exec+0x450>
800220fc:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
80022100:	e3530001 	cmp	r3, #1
80022104:	1a00001c 	bne	8002217c <exec+0x144>
80022108:	e51b2074 	ldr	r2, [fp, #-116]	@ 0xffffff8c
8002210c:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022110:	e1520003 	cmp	r2, r3
80022114:	3a0000dd 	bcc	80022490 <exec+0x458>
80022118:	e51b2080 	ldr	r2, [fp, #-128]	@ 0xffffff80
8002211c:	e51b3074 	ldr	r3, [fp, #-116]	@ 0xffffff8c
80022120:	e0823003 	add	r3, r2, r3
80022124:	e1a02003 	mov	r2, r3
80022128:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
8002212c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022130:	eb0017f4 	bl	80028108 <allocuvm>
80022134:	e1a03000 	mov	r3, r0
80022138:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002213c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022140:	e3530000 	cmp	r3, #0
80022144:	0a0000d3 	beq	80022498 <exec+0x460>
80022148:	e51b3080 	ldr	r3, [fp, #-128]	@ 0xffffff80
8002214c:	e1a01003 	mov	r1, r3
80022150:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
80022154:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022158:	e58d3000 	str	r3, [sp]
8002215c:	e1a03002 	mov	r3, r2
80022160:	e51b2010 	ldr	r2, [fp, #-16]
80022164:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022168:	eb00179a 	bl	80027fd8 <loaduvm>
8002216c:	e1a03000 	mov	r3, r0
80022170:	e3530000 	cmp	r3, #0
80022174:	ba0000c9 	blt	800224a0 <exec+0x468>
80022178:	ea000000 	b	80022180 <exec+0x148>
8002217c:	e1a00000 	nop			@ (mov r0, r0)
80022180:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022184:	e2833001 	add	r3, r3, #1
80022188:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002218c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022190:	e2833020 	add	r3, r3, #32
80022194:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022198:	e15b33bc 	ldrh	r3, [fp, #-60]	@ 0xffffffc4
8002219c:	e1a02003 	mov	r2, r3
800221a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800221a4:	e1530002 	cmp	r3, r2
800221a8:	baffffcb 	blt	800220dc <exec+0xa4>
800221ac:	e51b0010 	ldr	r0, [fp, #-16]
800221b0:	eb0004a4 	bl	80023448 <iunlockput>
800221b4:	e3a03000 	mov	r3, #0
800221b8:	e50b3010 	str	r3, [fp, #-16]
800221bc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800221c0:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800221c4:	e283300f 	add	r3, r3, #15
800221c8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800221cc:	e3c3300f 	bic	r3, r3, #15
800221d0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800221d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800221d8:	e2833a02 	add	r3, r3, #8192	@ 0x2000
800221dc:	e1a02003 	mov	r2, r3
800221e0:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
800221e4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800221e8:	eb0017c6 	bl	80028108 <allocuvm>
800221ec:	e1a03000 	mov	r3, r0
800221f0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800221f4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800221f8:	e3530000 	cmp	r3, #0
800221fc:	0a0000a9 	beq	800224a8 <exec+0x470>
80022200:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022204:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
80022208:	e1a01003 	mov	r1, r3
8002220c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022210:	eb00192b 	bl	800286c4 <clearpteu>
80022214:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022218:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
8002221c:	e3a03000 	mov	r3, #0
80022220:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80022224:	ea00002e 	b	800222e4 <exec+0x2ac>
80022228:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002222c:	e353001f 	cmp	r3, #31
80022230:	8a00009e 	bhi	800224b0 <exec+0x478>
80022234:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022238:	e1a03103 	lsl	r3, r3, #2
8002223c:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022240:	e0823003 	add	r3, r2, r3
80022244:	e5933000 	ldr	r3, [r3]
80022248:	e1a00003 	mov	r0, r3
8002224c:	ebfff8a6 	bl	800204ec <strlen>
80022250:	e1a03000 	mov	r3, r0
80022254:	e1a02003 	mov	r2, r3
80022258:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
8002225c:	e0433002 	sub	r3, r3, r2
80022260:	e2433001 	sub	r3, r3, #1
80022264:	e3c33003 	bic	r3, r3, #3
80022268:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
8002226c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022270:	e1a03103 	lsl	r3, r3, #2
80022274:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022278:	e0823003 	add	r3, r2, r3
8002227c:	e5934000 	ldr	r4, [r3]
80022280:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022284:	e1a03103 	lsl	r3, r3, #2
80022288:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
8002228c:	e0823003 	add	r3, r2, r3
80022290:	e5933000 	ldr	r3, [r3]
80022294:	e1a00003 	mov	r0, r3
80022298:	ebfff893 	bl	800204ec <strlen>
8002229c:	e1a03000 	mov	r3, r0
800222a0:	e2833001 	add	r3, r3, #1
800222a4:	e1a02004 	mov	r2, r4
800222a8:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
800222ac:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800222b0:	eb0019a8 	bl	80028958 <copyout>
800222b4:	e1a03000 	mov	r3, r0
800222b8:	e3530000 	cmp	r3, #0
800222bc:	ba00007d 	blt	800224b8 <exec+0x480>
800222c0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222c4:	e1a03103 	lsl	r3, r3, #2
800222c8:	e243300c 	sub	r3, r3, #12
800222cc:	e083300b 	add	r3, r3, fp
800222d0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800222d4:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
800222d8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222dc:	e2833001 	add	r3, r3, #1
800222e0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800222e4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222e8:	e1a03103 	lsl	r3, r3, #2
800222ec:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800222f0:	e0823003 	add	r3, r2, r3
800222f4:	e5933000 	ldr	r3, [r3]
800222f8:	e3530000 	cmp	r3, #0
800222fc:	1affffc9 	bne	80022228 <exec+0x1f0>
80022300:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022304:	e1a03103 	lsl	r3, r3, #2
80022308:	e243300c 	sub	r3, r3, #12
8002230c:	e083300b 	add	r3, r3, fp
80022310:	e3a02000 	mov	r2, #0
80022314:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022318:	e59f31e0 	ldr	r3, [pc, #480]	@ 80022500 <exec+0x4c8>
8002231c:	e5933000 	ldr	r3, [r3]
80022320:	e5933018 	ldr	r3, [r3, #24]
80022324:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80022328:	e5832010 	str	r2, [r3, #16]
8002232c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022330:	e2833001 	add	r3, r3, #1
80022334:	e1a02103 	lsl	r2, r3, #2
80022338:	e59f31c0 	ldr	r3, [pc, #448]	@ 80022500 <exec+0x4c8>
8002233c:	e5933000 	ldr	r3, [r3]
80022340:	e5933018 	ldr	r3, [r3, #24]
80022344:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022348:	e0412002 	sub	r2, r1, r2
8002234c:	e5832014 	str	r2, [r3, #20]
80022350:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022354:	e2833001 	add	r3, r3, #1
80022358:	e1a03103 	lsl	r3, r3, #2
8002235c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022360:	e0423003 	sub	r3, r2, r3
80022364:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022368:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002236c:	e2833001 	add	r3, r3, #1
80022370:	e1a03103 	lsl	r3, r3, #2
80022374:	e24b2f46 	sub	r2, fp, #280	@ 0x118
80022378:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
8002237c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022380:	eb001974 	bl	80028958 <copyout>
80022384:	e1a03000 	mov	r3, r0
80022388:	e3530000 	cmp	r3, #0
8002238c:	ba00004b 	blt	800224c0 <exec+0x488>
80022390:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
80022394:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022398:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002239c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800223a0:	ea000009 	b	800223cc <exec+0x394>
800223a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223a8:	e5d33000 	ldrb	r3, [r3]
800223ac:	e353002f 	cmp	r3, #47	@ 0x2f
800223b0:	1a000002 	bne	800223c0 <exec+0x388>
800223b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223b8:	e2833001 	add	r3, r3, #1
800223bc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800223c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223c4:	e2833001 	add	r3, r3, #1
800223c8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800223cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800223d0:	e5d33000 	ldrb	r3, [r3]
800223d4:	e3530000 	cmp	r3, #0
800223d8:	1afffff1 	bne	800223a4 <exec+0x36c>
800223dc:	e59f311c 	ldr	r3, [pc, #284]	@ 80022500 <exec+0x4c8>
800223e0:	e5933000 	ldr	r3, [r3]
800223e4:	e283306c 	add	r3, r3, #108	@ 0x6c
800223e8:	e3a02010 	mov	r2, #16
800223ec:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800223f0:	e1a00003 	mov	r0, r3
800223f4:	ebfff815 	bl	80020450 <safestrcpy>
800223f8:	e59f3100 	ldr	r3, [pc, #256]	@ 80022500 <exec+0x4c8>
800223fc:	e5933000 	ldr	r3, [r3]
80022400:	e5933004 	ldr	r3, [r3, #4]
80022404:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
80022408:	e59f30f0 	ldr	r3, [pc, #240]	@ 80022500 <exec+0x4c8>
8002240c:	e5933000 	ldr	r3, [r3]
80022410:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022414:	e5832004 	str	r2, [r3, #4]
80022418:	e59f30e0 	ldr	r3, [pc, #224]	@ 80022500 <exec+0x4c8>
8002241c:	e5933000 	ldr	r3, [r3]
80022420:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80022424:	e5832000 	str	r2, [r3]
80022428:	e59f30d0 	ldr	r3, [pc, #208]	@ 80022500 <exec+0x4c8>
8002242c:	e5933000 	ldr	r3, [r3]
80022430:	e5933018 	ldr	r3, [r3, #24]
80022434:	e51b2050 	ldr	r2, [fp, #-80]	@ 0xffffffb0
80022438:	e5832044 	str	r2, [r3, #68]	@ 0x44
8002243c:	e59f30bc 	ldr	r3, [pc, #188]	@ 80022500 <exec+0x4c8>
80022440:	e5933000 	ldr	r3, [r3]
80022444:	e5933018 	ldr	r3, [r3, #24]
80022448:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
8002244c:	e5832000 	str	r2, [r3]
80022450:	e59f30a8 	ldr	r3, [pc, #168]	@ 80022500 <exec+0x4c8>
80022454:	e5933000 	ldr	r3, [r3]
80022458:	e1a00003 	mov	r0, r3
8002245c:	eb0016a4 	bl	80027ef4 <switchuvm>
80022460:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
80022464:	eb001866 	bl	80028604 <freevm>
80022468:	e3a03000 	mov	r3, #0
8002246c:	ea00001f 	b	800224f0 <exec+0x4b8>
80022470:	e1a00000 	nop			@ (mov r0, r0)
80022474:	ea000012 	b	800224c4 <exec+0x48c>
80022478:	e1a00000 	nop			@ (mov r0, r0)
8002247c:	ea000010 	b	800224c4 <exec+0x48c>
80022480:	e1a00000 	nop			@ (mov r0, r0)
80022484:	ea00000e 	b	800224c4 <exec+0x48c>
80022488:	e1a00000 	nop			@ (mov r0, r0)
8002248c:	ea00000c 	b	800224c4 <exec+0x48c>
80022490:	e1a00000 	nop			@ (mov r0, r0)
80022494:	ea00000a 	b	800224c4 <exec+0x48c>
80022498:	e1a00000 	nop			@ (mov r0, r0)
8002249c:	ea000008 	b	800224c4 <exec+0x48c>
800224a0:	e1a00000 	nop			@ (mov r0, r0)
800224a4:	ea000006 	b	800224c4 <exec+0x48c>
800224a8:	e1a00000 	nop			@ (mov r0, r0)
800224ac:	ea000004 	b	800224c4 <exec+0x48c>
800224b0:	e1a00000 	nop			@ (mov r0, r0)
800224b4:	ea000002 	b	800224c4 <exec+0x48c>
800224b8:	e1a00000 	nop			@ (mov r0, r0)
800224bc:	ea000000 	b	800224c4 <exec+0x48c>
800224c0:	e1a00000 	nop			@ (mov r0, r0)
800224c4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800224c8:	e3530000 	cmp	r3, #0
800224cc:	0a000001 	beq	800224d8 <exec+0x4a0>
800224d0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800224d4:	eb00184a 	bl	80028604 <freevm>
800224d8:	e51b3010 	ldr	r3, [fp, #-16]
800224dc:	e3530000 	cmp	r3, #0
800224e0:	0a000001 	beq	800224ec <exec+0x4b4>
800224e4:	e51b0010 	ldr	r0, [fp, #-16]
800224e8:	eb0003d6 	bl	80023448 <iunlockput>
800224ec:	e3e03000 	mvn	r3, #0
800224f0:	e1a00003 	mov	r0, r3
800224f4:	e24bd008 	sub	sp, fp, #8
800224f8:	e8bd8810 	pop	{r4, fp, pc}
800224fc:	464c457f 	.word	0x464c457f
80022500:	800af548 	.word	0x800af548

80022504 <fileinit>:
80022504:	e92d4800 	push	{fp, lr}
80022508:	e28db004 	add	fp, sp, #4
8002250c:	e59f100c 	ldr	r1, [pc, #12]	@ 80022520 <fileinit+0x1c>
80022510:	e59f000c 	ldr	r0, [pc, #12]	@ 80022524 <fileinit+0x20>
80022514:	eb000da6 	bl	80025bb4 <initlock>
80022518:	e1a00000 	nop			@ (mov r0, r0)
8002251c:	e8bd8800 	pop	{fp, pc}
80022520:	80029500 	.word	0x80029500
80022524:	800abb4c 	.word	0x800abb4c

80022528 <filealloc>:
80022528:	e92d4800 	push	{fp, lr}
8002252c:	e28db004 	add	fp, sp, #4
80022530:	e24dd008 	sub	sp, sp, #8
80022534:	e59f006c 	ldr	r0, [pc, #108]	@ 800225a8 <filealloc+0x80>
80022538:	eb000daf 	bl	80025bfc <acquire>
8002253c:	e59f3068 	ldr	r3, [pc, #104]	@ 800225ac <filealloc+0x84>
80022540:	e50b3008 	str	r3, [fp, #-8]
80022544:	ea00000d 	b	80022580 <filealloc+0x58>
80022548:	e51b3008 	ldr	r3, [fp, #-8]
8002254c:	e5933004 	ldr	r3, [r3, #4]
80022550:	e3530000 	cmp	r3, #0
80022554:	1a000006 	bne	80022574 <filealloc+0x4c>
80022558:	e51b3008 	ldr	r3, [fp, #-8]
8002255c:	e3a02001 	mov	r2, #1
80022560:	e5832004 	str	r2, [r3, #4]
80022564:	e59f003c 	ldr	r0, [pc, #60]	@ 800225a8 <filealloc+0x80>
80022568:	eb000dae 	bl	80025c28 <release>
8002256c:	e51b3008 	ldr	r3, [fp, #-8]
80022570:	ea000009 	b	8002259c <filealloc+0x74>
80022574:	e51b3008 	ldr	r3, [fp, #-8]
80022578:	e2833018 	add	r3, r3, #24
8002257c:	e50b3008 	str	r3, [fp, #-8]
80022580:	e59f2028 	ldr	r2, [pc, #40]	@ 800225b0 <filealloc+0x88>
80022584:	e51b3008 	ldr	r3, [fp, #-8]
80022588:	e1530002 	cmp	r3, r2
8002258c:	3affffed 	bcc	80022548 <filealloc+0x20>
80022590:	e59f0010 	ldr	r0, [pc, #16]	@ 800225a8 <filealloc+0x80>
80022594:	eb000da3 	bl	80025c28 <release>
80022598:	e3a03000 	mov	r3, #0
8002259c:	e1a00003 	mov	r0, r3
800225a0:	e24bd004 	sub	sp, fp, #4
800225a4:	e8bd8800 	pop	{fp, pc}
800225a8:	800abb4c 	.word	0x800abb4c
800225ac:	800abb80 	.word	0x800abb80
800225b0:	800ac4e0 	.word	0x800ac4e0

800225b4 <filedup>:
800225b4:	e92d4800 	push	{fp, lr}
800225b8:	e28db004 	add	fp, sp, #4
800225bc:	e24dd008 	sub	sp, sp, #8
800225c0:	e50b0008 	str	r0, [fp, #-8]
800225c4:	e59f0044 	ldr	r0, [pc, #68]	@ 80022610 <filedup+0x5c>
800225c8:	eb000d8b 	bl	80025bfc <acquire>
800225cc:	e51b3008 	ldr	r3, [fp, #-8]
800225d0:	e5933004 	ldr	r3, [r3, #4]
800225d4:	e3530000 	cmp	r3, #0
800225d8:	ca000001 	bgt	800225e4 <filedup+0x30>
800225dc:	e59f0030 	ldr	r0, [pc, #48]	@ 80022614 <filedup+0x60>
800225e0:	ebfffd43 	bl	80021af4 <panic>
800225e4:	e51b3008 	ldr	r3, [fp, #-8]
800225e8:	e5933004 	ldr	r3, [r3, #4]
800225ec:	e2832001 	add	r2, r3, #1
800225f0:	e51b3008 	ldr	r3, [fp, #-8]
800225f4:	e5832004 	str	r2, [r3, #4]
800225f8:	e59f0010 	ldr	r0, [pc, #16]	@ 80022610 <filedup+0x5c>
800225fc:	eb000d89 	bl	80025c28 <release>
80022600:	e51b3008 	ldr	r3, [fp, #-8]
80022604:	e1a00003 	mov	r0, r3
80022608:	e24bd004 	sub	sp, fp, #4
8002260c:	e8bd8800 	pop	{fp, pc}
80022610:	800abb4c 	.word	0x800abb4c
80022614:	80029508 	.word	0x80029508

80022618 <fileclose>:
80022618:	e92d4800 	push	{fp, lr}
8002261c:	e28db004 	add	fp, sp, #4
80022620:	e24dd020 	sub	sp, sp, #32
80022624:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80022628:	e59f00d0 	ldr	r0, [pc, #208]	@ 80022700 <fileclose+0xe8>
8002262c:	eb000d72 	bl	80025bfc <acquire>
80022630:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022634:	e5933004 	ldr	r3, [r3, #4]
80022638:	e3530000 	cmp	r3, #0
8002263c:	ca000001 	bgt	80022648 <fileclose+0x30>
80022640:	e59f00bc 	ldr	r0, [pc, #188]	@ 80022704 <fileclose+0xec>
80022644:	ebfffd2a 	bl	80021af4 <panic>
80022648:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002264c:	e5933004 	ldr	r3, [r3, #4]
80022650:	e2432001 	sub	r2, r3, #1
80022654:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022658:	e5832004 	str	r2, [r3, #4]
8002265c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022660:	e5933004 	ldr	r3, [r3, #4]
80022664:	e3530000 	cmp	r3, #0
80022668:	da000002 	ble	80022678 <fileclose+0x60>
8002266c:	e59f008c 	ldr	r0, [pc, #140]	@ 80022700 <fileclose+0xe8>
80022670:	eb000d6c 	bl	80025c28 <release>
80022674:	ea00001f 	b	800226f8 <fileclose+0xe0>
80022678:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002267c:	e24bc01c 	sub	ip, fp, #28
80022680:	e1a0e003 	mov	lr, r3
80022684:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
80022688:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
8002268c:	e89e0003 	ldm	lr, {r0, r1}
80022690:	e88c0003 	stm	ip, {r0, r1}
80022694:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022698:	e3a02000 	mov	r2, #0
8002269c:	e5832004 	str	r2, [r3, #4]
800226a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800226a4:	e3a02000 	mov	r2, #0
800226a8:	e5c32000 	strb	r2, [r3]
800226ac:	e59f004c 	ldr	r0, [pc, #76]	@ 80022700 <fileclose+0xe8>
800226b0:	eb000d5c 	bl	80025c28 <release>
800226b4:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800226b8:	e3530001 	cmp	r3, #1
800226bc:	1a000005 	bne	800226d8 <fileclose+0xc0>
800226c0:	e51b3010 	ldr	r3, [fp, #-16]
800226c4:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
800226c8:	e1a01002 	mov	r1, r2
800226cc:	e1a00003 	mov	r0, r3
800226d0:	eb0008e8 	bl	80024a78 <pipeclose>
800226d4:	ea000007 	b	800226f8 <fileclose+0xe0>
800226d8:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800226dc:	e3530002 	cmp	r3, #2
800226e0:	1a000004 	bne	800226f8 <fileclose+0xe0>
800226e4:	eb000742 	bl	800243f4 <begin_trans>
800226e8:	e51b300c 	ldr	r3, [fp, #-12]
800226ec:	e1a00003 	mov	r0, r3
800226f0:	eb000319 	bl	8002335c <iput>
800226f4:	eb000752 	bl	80024444 <commit_trans>
800226f8:	e24bd004 	sub	sp, fp, #4
800226fc:	e8bd8800 	pop	{fp, pc}
80022700:	800abb4c 	.word	0x800abb4c
80022704:	80029510 	.word	0x80029510

80022708 <filestat>:
80022708:	e92d4800 	push	{fp, lr}
8002270c:	e28db004 	add	fp, sp, #4
80022710:	e24dd008 	sub	sp, sp, #8
80022714:	e50b0008 	str	r0, [fp, #-8]
80022718:	e50b100c 	str	r1, [fp, #-12]
8002271c:	e51b3008 	ldr	r3, [fp, #-8]
80022720:	e5d33000 	ldrb	r3, [r3]
80022724:	e3530002 	cmp	r3, #2
80022728:	1a00000e 	bne	80022768 <filestat+0x60>
8002272c:	e51b3008 	ldr	r3, [fp, #-8]
80022730:	e5933010 	ldr	r3, [r3, #16]
80022734:	e1a00003 	mov	r0, r3
80022738:	eb000281 	bl	80023144 <ilock>
8002273c:	e51b3008 	ldr	r3, [fp, #-8]
80022740:	e5933010 	ldr	r3, [r3, #16]
80022744:	e51b100c 	ldr	r1, [fp, #-12]
80022748:	e1a00003 	mov	r0, r3
8002274c:	eb00040a 	bl	8002377c <stati>
80022750:	e51b3008 	ldr	r3, [fp, #-8]
80022754:	e5933010 	ldr	r3, [r3, #16]
80022758:	e1a00003 	mov	r0, r3
8002275c:	eb0002dc 	bl	800232d4 <iunlock>
80022760:	e3a03000 	mov	r3, #0
80022764:	ea000000 	b	8002276c <filestat+0x64>
80022768:	e3e03000 	mvn	r3, #0
8002276c:	e1a00003 	mov	r0, r3
80022770:	e24bd004 	sub	sp, fp, #4
80022774:	e8bd8800 	pop	{fp, pc}

80022778 <fileread>:
80022778:	e92d4800 	push	{fp, lr}
8002277c:	e28db004 	add	fp, sp, #4
80022780:	e24dd018 	sub	sp, sp, #24
80022784:	e50b0010 	str	r0, [fp, #-16]
80022788:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002278c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022790:	e51b3010 	ldr	r3, [fp, #-16]
80022794:	e5d33008 	ldrb	r3, [r3, #8]
80022798:	e3530000 	cmp	r3, #0
8002279c:	1a000001 	bne	800227a8 <fileread+0x30>
800227a0:	e3e03000 	mvn	r3, #0
800227a4:	ea00002c 	b	8002285c <fileread+0xe4>
800227a8:	e51b3010 	ldr	r3, [fp, #-16]
800227ac:	e5d33000 	ldrb	r3, [r3]
800227b0:	e3530001 	cmp	r3, #1
800227b4:	1a000007 	bne	800227d8 <fileread+0x60>
800227b8:	e51b3010 	ldr	r3, [fp, #-16]
800227bc:	e593300c 	ldr	r3, [r3, #12]
800227c0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800227c4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800227c8:	e1a00003 	mov	r0, r3
800227cc:	eb000923 	bl	80024c60 <piperead>
800227d0:	e1a03000 	mov	r3, r0
800227d4:	ea000020 	b	8002285c <fileread+0xe4>
800227d8:	e51b3010 	ldr	r3, [fp, #-16]
800227dc:	e5d33000 	ldrb	r3, [r3]
800227e0:	e3530002 	cmp	r3, #2
800227e4:	1a00001a 	bne	80022854 <fileread+0xdc>
800227e8:	e51b3010 	ldr	r3, [fp, #-16]
800227ec:	e5933010 	ldr	r3, [r3, #16]
800227f0:	e1a00003 	mov	r0, r3
800227f4:	eb000252 	bl	80023144 <ilock>
800227f8:	e51b3010 	ldr	r3, [fp, #-16]
800227fc:	e5930010 	ldr	r0, [r3, #16]
80022800:	e51b3010 	ldr	r3, [fp, #-16]
80022804:	e5932014 	ldr	r2, [r3, #20]
80022808:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002280c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022810:	eb0003f7 	bl	800237f4 <readi>
80022814:	e50b0008 	str	r0, [fp, #-8]
80022818:	e51b3008 	ldr	r3, [fp, #-8]
8002281c:	e3530000 	cmp	r3, #0
80022820:	da000005 	ble	8002283c <fileread+0xc4>
80022824:	e51b3010 	ldr	r3, [fp, #-16]
80022828:	e5932014 	ldr	r2, [r3, #20]
8002282c:	e51b3008 	ldr	r3, [fp, #-8]
80022830:	e0822003 	add	r2, r2, r3
80022834:	e51b3010 	ldr	r3, [fp, #-16]
80022838:	e5832014 	str	r2, [r3, #20]
8002283c:	e51b3010 	ldr	r3, [fp, #-16]
80022840:	e5933010 	ldr	r3, [r3, #16]
80022844:	e1a00003 	mov	r0, r3
80022848:	eb0002a1 	bl	800232d4 <iunlock>
8002284c:	e51b3008 	ldr	r3, [fp, #-8]
80022850:	ea000001 	b	8002285c <fileread+0xe4>
80022854:	e59f000c 	ldr	r0, [pc, #12]	@ 80022868 <fileread+0xf0>
80022858:	ebfffca5 	bl	80021af4 <panic>
8002285c:	e1a00003 	mov	r0, r3
80022860:	e24bd004 	sub	sp, fp, #4
80022864:	e8bd8800 	pop	{fp, pc}
80022868:	8002951c 	.word	0x8002951c

8002286c <filewrite>:
8002286c:	e92d4800 	push	{fp, lr}
80022870:	e28db004 	add	fp, sp, #4
80022874:	e24dd020 	sub	sp, sp, #32
80022878:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002287c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80022880:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80022884:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022888:	e5d33009 	ldrb	r3, [r3, #9]
8002288c:	e3530000 	cmp	r3, #0
80022890:	1a000001 	bne	8002289c <filewrite+0x30>
80022894:	e3e03000 	mvn	r3, #0
80022898:	ea000058 	b	80022a00 <filewrite+0x194>
8002289c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228a0:	e5d33000 	ldrb	r3, [r3]
800228a4:	e3530001 	cmp	r3, #1
800228a8:	1a000007 	bne	800228cc <filewrite+0x60>
800228ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228b0:	e593300c 	ldr	r3, [r3, #12]
800228b4:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800228b8:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800228bc:	e1a00003 	mov	r0, r3
800228c0:	eb00089f 	bl	80024b44 <pipewrite>
800228c4:	e1a03000 	mov	r3, r0
800228c8:	ea00004c 	b	80022a00 <filewrite+0x194>
800228cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228d0:	e5d33000 	ldrb	r3, [r3]
800228d4:	e3530002 	cmp	r3, #2
800228d8:	1a000046 	bne	800229f8 <filewrite+0x18c>
800228dc:	e3a03c06 	mov	r3, #1536	@ 0x600
800228e0:	e50b3010 	str	r3, [fp, #-16]
800228e4:	e3a03000 	mov	r3, #0
800228e8:	e50b3008 	str	r3, [fp, #-8]
800228ec:	ea000033 	b	800229c0 <filewrite+0x154>
800228f0:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800228f4:	e51b3008 	ldr	r3, [fp, #-8]
800228f8:	e0423003 	sub	r3, r2, r3
800228fc:	e50b300c 	str	r3, [fp, #-12]
80022900:	e51b200c 	ldr	r2, [fp, #-12]
80022904:	e51b3010 	ldr	r3, [fp, #-16]
80022908:	e1520003 	cmp	r2, r3
8002290c:	da000001 	ble	80022918 <filewrite+0xac>
80022910:	e51b3010 	ldr	r3, [fp, #-16]
80022914:	e50b300c 	str	r3, [fp, #-12]
80022918:	eb0006b5 	bl	800243f4 <begin_trans>
8002291c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022920:	e5933010 	ldr	r3, [r3, #16]
80022924:	e1a00003 	mov	r0, r3
80022928:	eb000205 	bl	80023144 <ilock>
8002292c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022930:	e5930010 	ldr	r0, [r3, #16]
80022934:	e51b3008 	ldr	r3, [fp, #-8]
80022938:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002293c:	e0821003 	add	r1, r2, r3
80022940:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022944:	e5932014 	ldr	r2, [r3, #20]
80022948:	e51b300c 	ldr	r3, [fp, #-12]
8002294c:	eb000423 	bl	800239e0 <writei>
80022950:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022954:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022958:	e3530000 	cmp	r3, #0
8002295c:	da000005 	ble	80022978 <filewrite+0x10c>
80022960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022964:	e5932014 	ldr	r2, [r3, #20]
80022968:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002296c:	e0822003 	add	r2, r2, r3
80022970:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022974:	e5832014 	str	r2, [r3, #20]
80022978:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002297c:	e5933010 	ldr	r3, [r3, #16]
80022980:	e1a00003 	mov	r0, r3
80022984:	eb000252 	bl	800232d4 <iunlock>
80022988:	eb0006ad 	bl	80024444 <commit_trans>
8002298c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022990:	e3530000 	cmp	r3, #0
80022994:	ba00000e 	blt	800229d4 <filewrite+0x168>
80022998:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002299c:	e51b300c 	ldr	r3, [fp, #-12]
800229a0:	e1520003 	cmp	r2, r3
800229a4:	0a000001 	beq	800229b0 <filewrite+0x144>
800229a8:	e59f005c 	ldr	r0, [pc, #92]	@ 80022a0c <filewrite+0x1a0>
800229ac:	ebfffc50 	bl	80021af4 <panic>
800229b0:	e51b2008 	ldr	r2, [fp, #-8]
800229b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800229b8:	e0823003 	add	r3, r2, r3
800229bc:	e50b3008 	str	r3, [fp, #-8]
800229c0:	e51b2008 	ldr	r2, [fp, #-8]
800229c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229c8:	e1520003 	cmp	r2, r3
800229cc:	baffffc7 	blt	800228f0 <filewrite+0x84>
800229d0:	ea000000 	b	800229d8 <filewrite+0x16c>
800229d4:	e1a00000 	nop			@ (mov r0, r0)
800229d8:	e51b2008 	ldr	r2, [fp, #-8]
800229dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229e0:	e1520003 	cmp	r2, r3
800229e4:	1a000001 	bne	800229f0 <filewrite+0x184>
800229e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229ec:	ea000003 	b	80022a00 <filewrite+0x194>
800229f0:	e3e03000 	mvn	r3, #0
800229f4:	ea000001 	b	80022a00 <filewrite+0x194>
800229f8:	e59f0010 	ldr	r0, [pc, #16]	@ 80022a10 <filewrite+0x1a4>
800229fc:	ebfffc3c 	bl	80021af4 <panic>
80022a00:	e1a00003 	mov	r0, r3
80022a04:	e24bd004 	sub	sp, fp, #4
80022a08:	e8bd8800 	pop	{fp, pc}
80022a0c:	80029528 	.word	0x80029528
80022a10:	80029538 	.word	0x80029538

80022a14 <readsb>:
80022a14:	e92d4800 	push	{fp, lr}
80022a18:	e28db004 	add	fp, sp, #4
80022a1c:	e24dd010 	sub	sp, sp, #16
80022a20:	e50b0010 	str	r0, [fp, #-16]
80022a24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022a28:	e51b3010 	ldr	r3, [fp, #-16]
80022a2c:	e3a01001 	mov	r1, #1
80022a30:	e1a00003 	mov	r0, r3
80022a34:	ebfff836 	bl	80020b14 <bread>
80022a38:	e50b0008 	str	r0, [fp, #-8]
80022a3c:	e51b3008 	ldr	r3, [fp, #-8]
80022a40:	e2833018 	add	r3, r3, #24
80022a44:	e3a02010 	mov	r2, #16
80022a48:	e1a01003 	mov	r1, r3
80022a4c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022a50:	ebfff5dc 	bl	800201c8 <memmove>
80022a54:	e51b0008 	ldr	r0, [fp, #-8]
80022a58:	ebfff857 	bl	80020bbc <brelse>
80022a5c:	e1a00000 	nop			@ (mov r0, r0)
80022a60:	e24bd004 	sub	sp, fp, #4
80022a64:	e8bd8800 	pop	{fp, pc}

80022a68 <bzero>:
80022a68:	e92d4800 	push	{fp, lr}
80022a6c:	e28db004 	add	fp, sp, #4
80022a70:	e24dd010 	sub	sp, sp, #16
80022a74:	e50b0010 	str	r0, [fp, #-16]
80022a78:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022a7c:	e51b3010 	ldr	r3, [fp, #-16]
80022a80:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022a84:	e1a01002 	mov	r1, r2
80022a88:	e1a00003 	mov	r0, r3
80022a8c:	ebfff820 	bl	80020b14 <bread>
80022a90:	e50b0008 	str	r0, [fp, #-8]
80022a94:	e51b3008 	ldr	r3, [fp, #-8]
80022a98:	e2833018 	add	r3, r3, #24
80022a9c:	e3a02c02 	mov	r2, #512	@ 0x200
80022aa0:	e3a01000 	mov	r1, #0
80022aa4:	e1a00003 	mov	r0, r3
80022aa8:	ebfff554 	bl	80020000 <memset>
80022aac:	e51b0008 	ldr	r0, [fp, #-8]
80022ab0:	eb00067b 	bl	800244a4 <log_write>
80022ab4:	e51b0008 	ldr	r0, [fp, #-8]
80022ab8:	ebfff83f 	bl	80020bbc <brelse>
80022abc:	e1a00000 	nop			@ (mov r0, r0)
80022ac0:	e24bd004 	sub	sp, fp, #4
80022ac4:	e8bd8800 	pop	{fp, pc}

80022ac8 <balloc>:
80022ac8:	e92d4800 	push	{fp, lr}
80022acc:	e28db004 	add	fp, sp, #4
80022ad0:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022ad4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022ad8:	e3a03000 	mov	r3, #0
80022adc:	e50b3010 	str	r3, [fp, #-16]
80022ae0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022ae4:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022ae8:	e1a01002 	mov	r1, r2
80022aec:	e1a00003 	mov	r0, r3
80022af0:	ebffffc7 	bl	80022a14 <readsb>
80022af4:	e3a03000 	mov	r3, #0
80022af8:	e50b3008 	str	r3, [fp, #-8]
80022afc:	ea000059 	b	80022c68 <balloc+0x1a0>
80022b00:	e51b3008 	ldr	r3, [fp, #-8]
80022b04:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022b08:	e282200f 	add	r2, r2, #15
80022b0c:	e3530000 	cmp	r3, #0
80022b10:	b1a03002 	movlt	r3, r2
80022b14:	a1a03003 	movge	r3, r3
80022b18:	e1a03643 	asr	r3, r3, #12
80022b1c:	e1a02003 	mov	r2, r3
80022b20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022b24:	e1a031a3 	lsr	r3, r3, #3
80022b28:	e0823003 	add	r3, r2, r3
80022b2c:	e2833003 	add	r3, r3, #3
80022b30:	e1a01003 	mov	r1, r3
80022b34:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022b38:	ebfff7f5 	bl	80020b14 <bread>
80022b3c:	e50b0010 	str	r0, [fp, #-16]
80022b40:	e3a03000 	mov	r3, #0
80022b44:	e50b300c 	str	r3, [fp, #-12]
80022b48:	ea000037 	b	80022c2c <balloc+0x164>
80022b4c:	e51b300c 	ldr	r3, [fp, #-12]
80022b50:	e2033007 	and	r3, r3, #7
80022b54:	e3a02001 	mov	r2, #1
80022b58:	e1a03312 	lsl	r3, r2, r3
80022b5c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022b60:	e51b300c 	ldr	r3, [fp, #-12]
80022b64:	e2832007 	add	r2, r3, #7
80022b68:	e3530000 	cmp	r3, #0
80022b6c:	b1a03002 	movlt	r3, r2
80022b70:	a1a03003 	movge	r3, r3
80022b74:	e1a031c3 	asr	r3, r3, #3
80022b78:	e1a02003 	mov	r2, r3
80022b7c:	e51b3010 	ldr	r3, [fp, #-16]
80022b80:	e0833002 	add	r3, r3, r2
80022b84:	e5d33018 	ldrb	r3, [r3, #24]
80022b88:	e1a02003 	mov	r2, r3
80022b8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022b90:	e0033002 	and	r3, r3, r2
80022b94:	e3530000 	cmp	r3, #0
80022b98:	1a000020 	bne	80022c20 <balloc+0x158>
80022b9c:	e51b300c 	ldr	r3, [fp, #-12]
80022ba0:	e2832007 	add	r2, r3, #7
80022ba4:	e3530000 	cmp	r3, #0
80022ba8:	b1a03002 	movlt	r3, r2
80022bac:	a1a03003 	movge	r3, r3
80022bb0:	e1a031c3 	asr	r3, r3, #3
80022bb4:	e51b2010 	ldr	r2, [fp, #-16]
80022bb8:	e0822003 	add	r2, r2, r3
80022bbc:	e5d22018 	ldrb	r2, [r2, #24]
80022bc0:	e6af1072 	sxtb	r1, r2
80022bc4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022bc8:	e6af2072 	sxtb	r2, r2
80022bcc:	e1812002 	orr	r2, r1, r2
80022bd0:	e6af2072 	sxtb	r2, r2
80022bd4:	e6ef1072 	uxtb	r1, r2
80022bd8:	e51b2010 	ldr	r2, [fp, #-16]
80022bdc:	e0823003 	add	r3, r2, r3
80022be0:	e1a02001 	mov	r2, r1
80022be4:	e5c32018 	strb	r2, [r3, #24]
80022be8:	e51b0010 	ldr	r0, [fp, #-16]
80022bec:	eb00062c 	bl	800244a4 <log_write>
80022bf0:	e51b0010 	ldr	r0, [fp, #-16]
80022bf4:	ebfff7f0 	bl	80020bbc <brelse>
80022bf8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022bfc:	e51b2008 	ldr	r2, [fp, #-8]
80022c00:	e51b300c 	ldr	r3, [fp, #-12]
80022c04:	e0823003 	add	r3, r2, r3
80022c08:	e1a01003 	mov	r1, r3
80022c0c:	ebffff95 	bl	80022a68 <bzero>
80022c10:	e51b2008 	ldr	r2, [fp, #-8]
80022c14:	e51b300c 	ldr	r3, [fp, #-12]
80022c18:	e0823003 	add	r3, r2, r3
80022c1c:	ea000017 	b	80022c80 <balloc+0x1b8>
80022c20:	e51b300c 	ldr	r3, [fp, #-12]
80022c24:	e2833001 	add	r3, r3, #1
80022c28:	e50b300c 	str	r3, [fp, #-12]
80022c2c:	e51b300c 	ldr	r3, [fp, #-12]
80022c30:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022c34:	aa000006 	bge	80022c54 <balloc+0x18c>
80022c38:	e51b2008 	ldr	r2, [fp, #-8]
80022c3c:	e51b300c 	ldr	r3, [fp, #-12]
80022c40:	e0823003 	add	r3, r2, r3
80022c44:	e1a02003 	mov	r2, r3
80022c48:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022c4c:	e1520003 	cmp	r2, r3
80022c50:	3affffbd 	bcc	80022b4c <balloc+0x84>
80022c54:	e51b0010 	ldr	r0, [fp, #-16]
80022c58:	ebfff7d7 	bl	80020bbc <brelse>
80022c5c:	e51b3008 	ldr	r3, [fp, #-8]
80022c60:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022c64:	e50b3008 	str	r3, [fp, #-8]
80022c68:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022c6c:	e51b3008 	ldr	r3, [fp, #-8]
80022c70:	e1520003 	cmp	r2, r3
80022c74:	8affffa1 	bhi	80022b00 <balloc+0x38>
80022c78:	e59f000c 	ldr	r0, [pc, #12]	@ 80022c8c <balloc+0x1c4>
80022c7c:	ebfffb9c 	bl	80021af4 <panic>
80022c80:	e1a00003 	mov	r0, r3
80022c84:	e24bd004 	sub	sp, fp, #4
80022c88:	e8bd8800 	pop	{fp, pc}
80022c8c:	80029544 	.word	0x80029544

80022c90 <bfree>:
80022c90:	e92d4800 	push	{fp, lr}
80022c94:	e28db004 	add	fp, sp, #4
80022c98:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022c9c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022ca0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80022ca4:	e24b3020 	sub	r3, fp, #32
80022ca8:	e1a01003 	mov	r1, r3
80022cac:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022cb0:	ebffff57 	bl	80022a14 <readsb>
80022cb4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022cb8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022cbc:	e1a02623 	lsr	r2, r3, #12
80022cc0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022cc4:	e1a031a3 	lsr	r3, r3, #3
80022cc8:	e0823003 	add	r3, r2, r3
80022ccc:	e2833003 	add	r3, r3, #3
80022cd0:	e1a01003 	mov	r1, r3
80022cd4:	ebfff78e 	bl	80020b14 <bread>
80022cd8:	e50b0008 	str	r0, [fp, #-8]
80022cdc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022ce0:	e1a03a03 	lsl	r3, r3, #20
80022ce4:	e1a03a23 	lsr	r3, r3, #20
80022ce8:	e50b300c 	str	r3, [fp, #-12]
80022cec:	e51b300c 	ldr	r3, [fp, #-12]
80022cf0:	e2033007 	and	r3, r3, #7
80022cf4:	e3a02001 	mov	r2, #1
80022cf8:	e1a03312 	lsl	r3, r2, r3
80022cfc:	e50b3010 	str	r3, [fp, #-16]
80022d00:	e51b300c 	ldr	r3, [fp, #-12]
80022d04:	e2832007 	add	r2, r3, #7
80022d08:	e3530000 	cmp	r3, #0
80022d0c:	b1a03002 	movlt	r3, r2
80022d10:	a1a03003 	movge	r3, r3
80022d14:	e1a031c3 	asr	r3, r3, #3
80022d18:	e1a02003 	mov	r2, r3
80022d1c:	e51b3008 	ldr	r3, [fp, #-8]
80022d20:	e0833002 	add	r3, r3, r2
80022d24:	e5d33018 	ldrb	r3, [r3, #24]
80022d28:	e1a02003 	mov	r2, r3
80022d2c:	e51b3010 	ldr	r3, [fp, #-16]
80022d30:	e0033002 	and	r3, r3, r2
80022d34:	e3530000 	cmp	r3, #0
80022d38:	1a000001 	bne	80022d44 <bfree+0xb4>
80022d3c:	e59f0070 	ldr	r0, [pc, #112]	@ 80022db4 <bfree+0x124>
80022d40:	ebfffb6b 	bl	80021af4 <panic>
80022d44:	e51b300c 	ldr	r3, [fp, #-12]
80022d48:	e2832007 	add	r2, r3, #7
80022d4c:	e3530000 	cmp	r3, #0
80022d50:	b1a03002 	movlt	r3, r2
80022d54:	a1a03003 	movge	r3, r3
80022d58:	e1a031c3 	asr	r3, r3, #3
80022d5c:	e51b2008 	ldr	r2, [fp, #-8]
80022d60:	e0822003 	add	r2, r2, r3
80022d64:	e5d22018 	ldrb	r2, [r2, #24]
80022d68:	e6af1072 	sxtb	r1, r2
80022d6c:	e51b2010 	ldr	r2, [fp, #-16]
80022d70:	e6af2072 	sxtb	r2, r2
80022d74:	e1e02002 	mvn	r2, r2
80022d78:	e6af2072 	sxtb	r2, r2
80022d7c:	e0022001 	and	r2, r2, r1
80022d80:	e6af2072 	sxtb	r2, r2
80022d84:	e6ef1072 	uxtb	r1, r2
80022d88:	e51b2008 	ldr	r2, [fp, #-8]
80022d8c:	e0823003 	add	r3, r2, r3
80022d90:	e1a02001 	mov	r2, r1
80022d94:	e5c32018 	strb	r2, [r3, #24]
80022d98:	e51b0008 	ldr	r0, [fp, #-8]
80022d9c:	eb0005c0 	bl	800244a4 <log_write>
80022da0:	e51b0008 	ldr	r0, [fp, #-8]
80022da4:	ebfff784 	bl	80020bbc <brelse>
80022da8:	e1a00000 	nop			@ (mov r0, r0)
80022dac:	e24bd004 	sub	sp, fp, #4
80022db0:	e8bd8800 	pop	{fp, pc}
80022db4:	8002955c 	.word	0x8002955c

80022db8 <iinit>:
80022db8:	e92d4800 	push	{fp, lr}
80022dbc:	e28db004 	add	fp, sp, #4
80022dc0:	e59f100c 	ldr	r1, [pc, #12]	@ 80022dd4 <iinit+0x1c>
80022dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80022dd8 <iinit+0x20>
80022dc8:	eb000b79 	bl	80025bb4 <initlock>
80022dcc:	e1a00000 	nop			@ (mov r0, r0)
80022dd0:	e8bd8800 	pop	{fp, pc}
80022dd4:	80029570 	.word	0x80029570
80022dd8:	800ac4e0 	.word	0x800ac4e0

80022ddc <ialloc>:
80022ddc:	e92d4800 	push	{fp, lr}
80022de0:	e28db004 	add	fp, sp, #4
80022de4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022de8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022dec:	e1a03001 	mov	r3, r1
80022df0:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80022df4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022df8:	e24b2020 	sub	r2, fp, #32
80022dfc:	e1a01002 	mov	r1, r2
80022e00:	e1a00003 	mov	r0, r3
80022e04:	ebffff02 	bl	80022a14 <readsb>
80022e08:	e3a03001 	mov	r3, #1
80022e0c:	e50b3008 	str	r3, [fp, #-8]
80022e10:	ea000027 	b	80022eb4 <ialloc+0xd8>
80022e14:	e51b3008 	ldr	r3, [fp, #-8]
80022e18:	e1a031a3 	lsr	r3, r3, #3
80022e1c:	e2833002 	add	r3, r3, #2
80022e20:	e1a01003 	mov	r1, r3
80022e24:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022e28:	ebfff739 	bl	80020b14 <bread>
80022e2c:	e50b000c 	str	r0, [fp, #-12]
80022e30:	e51b300c 	ldr	r3, [fp, #-12]
80022e34:	e2832018 	add	r2, r3, #24
80022e38:	e51b3008 	ldr	r3, [fp, #-8]
80022e3c:	e2033007 	and	r3, r3, #7
80022e40:	e1a03303 	lsl	r3, r3, #6
80022e44:	e0823003 	add	r3, r2, r3
80022e48:	e50b3010 	str	r3, [fp, #-16]
80022e4c:	e51b3010 	ldr	r3, [fp, #-16]
80022e50:	e1d330f0 	ldrsh	r3, [r3]
80022e54:	e3530000 	cmp	r3, #0
80022e58:	1a000010 	bne	80022ea0 <ialloc+0xc4>
80022e5c:	e3a02040 	mov	r2, #64	@ 0x40
80022e60:	e3a01000 	mov	r1, #0
80022e64:	e51b0010 	ldr	r0, [fp, #-16]
80022e68:	ebfff464 	bl	80020000 <memset>
80022e6c:	e51b3010 	ldr	r3, [fp, #-16]
80022e70:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
80022e74:	e1c320b0 	strh	r2, [r3]
80022e78:	e51b000c 	ldr	r0, [fp, #-12]
80022e7c:	eb000588 	bl	800244a4 <log_write>
80022e80:	e51b000c 	ldr	r0, [fp, #-12]
80022e84:	ebfff74c 	bl	80020bbc <brelse>
80022e88:	e51b3008 	ldr	r3, [fp, #-8]
80022e8c:	e1a01003 	mov	r1, r3
80022e90:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022e94:	eb000048 	bl	80022fbc <iget>
80022e98:	e1a03000 	mov	r3, r0
80022e9c:	ea00000a 	b	80022ecc <ialloc+0xf0>
80022ea0:	e51b000c 	ldr	r0, [fp, #-12]
80022ea4:	ebfff744 	bl	80020bbc <brelse>
80022ea8:	e51b3008 	ldr	r3, [fp, #-8]
80022eac:	e2833001 	add	r3, r3, #1
80022eb0:	e50b3008 	str	r3, [fp, #-8]
80022eb4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022eb8:	e51b3008 	ldr	r3, [fp, #-8]
80022ebc:	e1520003 	cmp	r2, r3
80022ec0:	8affffd3 	bhi	80022e14 <ialloc+0x38>
80022ec4:	e59f000c 	ldr	r0, [pc, #12]	@ 80022ed8 <ialloc+0xfc>
80022ec8:	ebfffb09 	bl	80021af4 <panic>
80022ecc:	e1a00003 	mov	r0, r3
80022ed0:	e24bd004 	sub	sp, fp, #4
80022ed4:	e8bd8800 	pop	{fp, pc}
80022ed8:	80029578 	.word	0x80029578

80022edc <iupdate>:
80022edc:	e92d4800 	push	{fp, lr}
80022ee0:	e28db004 	add	fp, sp, #4
80022ee4:	e24dd010 	sub	sp, sp, #16
80022ee8:	e50b0010 	str	r0, [fp, #-16]
80022eec:	e51b3010 	ldr	r3, [fp, #-16]
80022ef0:	e5932000 	ldr	r2, [r3]
80022ef4:	e51b3010 	ldr	r3, [fp, #-16]
80022ef8:	e5933004 	ldr	r3, [r3, #4]
80022efc:	e1a031a3 	lsr	r3, r3, #3
80022f00:	e2833002 	add	r3, r3, #2
80022f04:	e1a01003 	mov	r1, r3
80022f08:	e1a00002 	mov	r0, r2
80022f0c:	ebfff700 	bl	80020b14 <bread>
80022f10:	e50b0008 	str	r0, [fp, #-8]
80022f14:	e51b3008 	ldr	r3, [fp, #-8]
80022f18:	e2832018 	add	r2, r3, #24
80022f1c:	e51b3010 	ldr	r3, [fp, #-16]
80022f20:	e5933004 	ldr	r3, [r3, #4]
80022f24:	e2033007 	and	r3, r3, #7
80022f28:	e1a03303 	lsl	r3, r3, #6
80022f2c:	e0823003 	add	r3, r2, r3
80022f30:	e50b300c 	str	r3, [fp, #-12]
80022f34:	e51b3010 	ldr	r3, [fp, #-16]
80022f38:	e1d321f0 	ldrsh	r2, [r3, #16]
80022f3c:	e51b300c 	ldr	r3, [fp, #-12]
80022f40:	e1c320b0 	strh	r2, [r3]
80022f44:	e51b3010 	ldr	r3, [fp, #-16]
80022f48:	e1d321f2 	ldrsh	r2, [r3, #18]
80022f4c:	e51b300c 	ldr	r3, [fp, #-12]
80022f50:	e1c320b2 	strh	r2, [r3, #2]
80022f54:	e51b3010 	ldr	r3, [fp, #-16]
80022f58:	e1d321f4 	ldrsh	r2, [r3, #20]
80022f5c:	e51b300c 	ldr	r3, [fp, #-12]
80022f60:	e1c320b4 	strh	r2, [r3, #4]
80022f64:	e51b3010 	ldr	r3, [fp, #-16]
80022f68:	e1d321f6 	ldrsh	r2, [r3, #22]
80022f6c:	e51b300c 	ldr	r3, [fp, #-12]
80022f70:	e1c320b6 	strh	r2, [r3, #6]
80022f74:	e51b3010 	ldr	r3, [fp, #-16]
80022f78:	e5932018 	ldr	r2, [r3, #24]
80022f7c:	e51b300c 	ldr	r3, [fp, #-12]
80022f80:	e5832008 	str	r2, [r3, #8]
80022f84:	e51b300c 	ldr	r3, [fp, #-12]
80022f88:	e283000c 	add	r0, r3, #12
80022f8c:	e51b3010 	ldr	r3, [fp, #-16]
80022f90:	e283301c 	add	r3, r3, #28
80022f94:	e3a02034 	mov	r2, #52	@ 0x34
80022f98:	e1a01003 	mov	r1, r3
80022f9c:	ebfff489 	bl	800201c8 <memmove>
80022fa0:	e51b0008 	ldr	r0, [fp, #-8]
80022fa4:	eb00053e 	bl	800244a4 <log_write>
80022fa8:	e51b0008 	ldr	r0, [fp, #-8]
80022fac:	ebfff702 	bl	80020bbc <brelse>
80022fb0:	e1a00000 	nop			@ (mov r0, r0)
80022fb4:	e24bd004 	sub	sp, fp, #4
80022fb8:	e8bd8800 	pop	{fp, pc}

80022fbc <iget>:
80022fbc:	e92d4800 	push	{fp, lr}
80022fc0:	e28db004 	add	fp, sp, #4
80022fc4:	e24dd010 	sub	sp, sp, #16
80022fc8:	e50b0010 	str	r0, [fp, #-16]
80022fcc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022fd0:	e59f0114 	ldr	r0, [pc, #276]	@ 800230ec <iget+0x130>
80022fd4:	eb000b08 	bl	80025bfc <acquire>
80022fd8:	e3a03000 	mov	r3, #0
80022fdc:	e50b300c 	str	r3, [fp, #-12]
80022fe0:	e59f3108 	ldr	r3, [pc, #264]	@ 800230f0 <iget+0x134>
80022fe4:	e50b3008 	str	r3, [fp, #-8]
80022fe8:	ea000022 	b	80023078 <iget+0xbc>
80022fec:	e51b3008 	ldr	r3, [fp, #-8]
80022ff0:	e5933008 	ldr	r3, [r3, #8]
80022ff4:	e3530000 	cmp	r3, #0
80022ff8:	da000012 	ble	80023048 <iget+0x8c>
80022ffc:	e51b3008 	ldr	r3, [fp, #-8]
80023000:	e5933000 	ldr	r3, [r3]
80023004:	e51b2010 	ldr	r2, [fp, #-16]
80023008:	e1520003 	cmp	r2, r3
8002300c:	1a00000d 	bne	80023048 <iget+0x8c>
80023010:	e51b3008 	ldr	r3, [fp, #-8]
80023014:	e5933004 	ldr	r3, [r3, #4]
80023018:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002301c:	e1520003 	cmp	r2, r3
80023020:	1a000008 	bne	80023048 <iget+0x8c>
80023024:	e51b3008 	ldr	r3, [fp, #-8]
80023028:	e5933008 	ldr	r3, [r3, #8]
8002302c:	e2832001 	add	r2, r3, #1
80023030:	e51b3008 	ldr	r3, [fp, #-8]
80023034:	e5832008 	str	r2, [r3, #8]
80023038:	e59f00ac 	ldr	r0, [pc, #172]	@ 800230ec <iget+0x130>
8002303c:	eb000af9 	bl	80025c28 <release>
80023040:	e51b3008 	ldr	r3, [fp, #-8]
80023044:	ea000025 	b	800230e0 <iget+0x124>
80023048:	e51b300c 	ldr	r3, [fp, #-12]
8002304c:	e3530000 	cmp	r3, #0
80023050:	1a000005 	bne	8002306c <iget+0xb0>
80023054:	e51b3008 	ldr	r3, [fp, #-8]
80023058:	e5933008 	ldr	r3, [r3, #8]
8002305c:	e3530000 	cmp	r3, #0
80023060:	1a000001 	bne	8002306c <iget+0xb0>
80023064:	e51b3008 	ldr	r3, [fp, #-8]
80023068:	e50b300c 	str	r3, [fp, #-12]
8002306c:	e51b3008 	ldr	r3, [fp, #-8]
80023070:	e2833050 	add	r3, r3, #80	@ 0x50
80023074:	e50b3008 	str	r3, [fp, #-8]
80023078:	e51b3008 	ldr	r3, [fp, #-8]
8002307c:	e59f2070 	ldr	r2, [pc, #112]	@ 800230f4 <iget+0x138>
80023080:	e1530002 	cmp	r3, r2
80023084:	3affffd8 	bcc	80022fec <iget+0x30>
80023088:	e51b300c 	ldr	r3, [fp, #-12]
8002308c:	e3530000 	cmp	r3, #0
80023090:	1a000001 	bne	8002309c <iget+0xe0>
80023094:	e59f005c 	ldr	r0, [pc, #92]	@ 800230f8 <iget+0x13c>
80023098:	ebfffa95 	bl	80021af4 <panic>
8002309c:	e51b300c 	ldr	r3, [fp, #-12]
800230a0:	e50b3008 	str	r3, [fp, #-8]
800230a4:	e51b3008 	ldr	r3, [fp, #-8]
800230a8:	e51b2010 	ldr	r2, [fp, #-16]
800230ac:	e5832000 	str	r2, [r3]
800230b0:	e51b3008 	ldr	r3, [fp, #-8]
800230b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800230b8:	e5832004 	str	r2, [r3, #4]
800230bc:	e51b3008 	ldr	r3, [fp, #-8]
800230c0:	e3a02001 	mov	r2, #1
800230c4:	e5832008 	str	r2, [r3, #8]
800230c8:	e51b3008 	ldr	r3, [fp, #-8]
800230cc:	e3a02000 	mov	r2, #0
800230d0:	e583200c 	str	r2, [r3, #12]
800230d4:	e59f0010 	ldr	r0, [pc, #16]	@ 800230ec <iget+0x130>
800230d8:	eb000ad2 	bl	80025c28 <release>
800230dc:	e51b3008 	ldr	r3, [fp, #-8]
800230e0:	e1a00003 	mov	r0, r3
800230e4:	e24bd004 	sub	sp, fp, #4
800230e8:	e8bd8800 	pop	{fp, pc}
800230ec:	800ac4e0 	.word	0x800ac4e0
800230f0:	800ac514 	.word	0x800ac514
800230f4:	800ad4b4 	.word	0x800ad4b4
800230f8:	8002958c 	.word	0x8002958c

800230fc <idup>:
800230fc:	e92d4800 	push	{fp, lr}
80023100:	e28db004 	add	fp, sp, #4
80023104:	e24dd008 	sub	sp, sp, #8
80023108:	e50b0008 	str	r0, [fp, #-8]
8002310c:	e59f002c 	ldr	r0, [pc, #44]	@ 80023140 <idup+0x44>
80023110:	eb000ab9 	bl	80025bfc <acquire>
80023114:	e51b3008 	ldr	r3, [fp, #-8]
80023118:	e5933008 	ldr	r3, [r3, #8]
8002311c:	e2832001 	add	r2, r3, #1
80023120:	e51b3008 	ldr	r3, [fp, #-8]
80023124:	e5832008 	str	r2, [r3, #8]
80023128:	e59f0010 	ldr	r0, [pc, #16]	@ 80023140 <idup+0x44>
8002312c:	eb000abd 	bl	80025c28 <release>
80023130:	e51b3008 	ldr	r3, [fp, #-8]
80023134:	e1a00003 	mov	r0, r3
80023138:	e24bd004 	sub	sp, fp, #4
8002313c:	e8bd8800 	pop	{fp, pc}
80023140:	800ac4e0 	.word	0x800ac4e0

80023144 <ilock>:
80023144:	e92d4800 	push	{fp, lr}
80023148:	e28db004 	add	fp, sp, #4
8002314c:	e24dd010 	sub	sp, sp, #16
80023150:	e50b0010 	str	r0, [fp, #-16]
80023154:	e51b3010 	ldr	r3, [fp, #-16]
80023158:	e3530000 	cmp	r3, #0
8002315c:	0a000003 	beq	80023170 <ilock+0x2c>
80023160:	e51b3010 	ldr	r3, [fp, #-16]
80023164:	e5933008 	ldr	r3, [r3, #8]
80023168:	e3530000 	cmp	r3, #0
8002316c:	ca000001 	bgt	80023178 <ilock+0x34>
80023170:	e59f0150 	ldr	r0, [pc, #336]	@ 800232c8 <ilock+0x184>
80023174:	ebfffa5e 	bl	80021af4 <panic>
80023178:	e59f014c 	ldr	r0, [pc, #332]	@ 800232cc <ilock+0x188>
8002317c:	eb000a9e 	bl	80025bfc <acquire>
80023180:	ea000002 	b	80023190 <ilock+0x4c>
80023184:	e59f1140 	ldr	r1, [pc, #320]	@ 800232cc <ilock+0x188>
80023188:	e51b0010 	ldr	r0, [fp, #-16]
8002318c:	eb0009c0 	bl	80025894 <sleep>
80023190:	e51b3010 	ldr	r3, [fp, #-16]
80023194:	e593300c 	ldr	r3, [r3, #12]
80023198:	e2033001 	and	r3, r3, #1
8002319c:	e3530000 	cmp	r3, #0
800231a0:	1afffff7 	bne	80023184 <ilock+0x40>
800231a4:	e51b3010 	ldr	r3, [fp, #-16]
800231a8:	e593300c 	ldr	r3, [r3, #12]
800231ac:	e3832001 	orr	r2, r3, #1
800231b0:	e51b3010 	ldr	r3, [fp, #-16]
800231b4:	e583200c 	str	r2, [r3, #12]
800231b8:	e59f010c 	ldr	r0, [pc, #268]	@ 800232cc <ilock+0x188>
800231bc:	eb000a99 	bl	80025c28 <release>
800231c0:	e51b3010 	ldr	r3, [fp, #-16]
800231c4:	e593300c 	ldr	r3, [r3, #12]
800231c8:	e2033002 	and	r3, r3, #2
800231cc:	e3530000 	cmp	r3, #0
800231d0:	1a000039 	bne	800232bc <ilock+0x178>
800231d4:	e51b3010 	ldr	r3, [fp, #-16]
800231d8:	e5932000 	ldr	r2, [r3]
800231dc:	e51b3010 	ldr	r3, [fp, #-16]
800231e0:	e5933004 	ldr	r3, [r3, #4]
800231e4:	e1a031a3 	lsr	r3, r3, #3
800231e8:	e2833002 	add	r3, r3, #2
800231ec:	e1a01003 	mov	r1, r3
800231f0:	e1a00002 	mov	r0, r2
800231f4:	ebfff646 	bl	80020b14 <bread>
800231f8:	e50b0008 	str	r0, [fp, #-8]
800231fc:	e51b3008 	ldr	r3, [fp, #-8]
80023200:	e2832018 	add	r2, r3, #24
80023204:	e51b3010 	ldr	r3, [fp, #-16]
80023208:	e5933004 	ldr	r3, [r3, #4]
8002320c:	e2033007 	and	r3, r3, #7
80023210:	e1a03303 	lsl	r3, r3, #6
80023214:	e0823003 	add	r3, r2, r3
80023218:	e50b300c 	str	r3, [fp, #-12]
8002321c:	e51b300c 	ldr	r3, [fp, #-12]
80023220:	e1d320f0 	ldrsh	r2, [r3]
80023224:	e51b3010 	ldr	r3, [fp, #-16]
80023228:	e1c321b0 	strh	r2, [r3, #16]
8002322c:	e51b300c 	ldr	r3, [fp, #-12]
80023230:	e1d320f2 	ldrsh	r2, [r3, #2]
80023234:	e51b3010 	ldr	r3, [fp, #-16]
80023238:	e1c321b2 	strh	r2, [r3, #18]
8002323c:	e51b300c 	ldr	r3, [fp, #-12]
80023240:	e1d320f4 	ldrsh	r2, [r3, #4]
80023244:	e51b3010 	ldr	r3, [fp, #-16]
80023248:	e1c321b4 	strh	r2, [r3, #20]
8002324c:	e51b300c 	ldr	r3, [fp, #-12]
80023250:	e1d320f6 	ldrsh	r2, [r3, #6]
80023254:	e51b3010 	ldr	r3, [fp, #-16]
80023258:	e1c321b6 	strh	r2, [r3, #22]
8002325c:	e51b300c 	ldr	r3, [fp, #-12]
80023260:	e5932008 	ldr	r2, [r3, #8]
80023264:	e51b3010 	ldr	r3, [fp, #-16]
80023268:	e5832018 	str	r2, [r3, #24]
8002326c:	e51b3010 	ldr	r3, [fp, #-16]
80023270:	e283001c 	add	r0, r3, #28
80023274:	e51b300c 	ldr	r3, [fp, #-12]
80023278:	e283300c 	add	r3, r3, #12
8002327c:	e3a02034 	mov	r2, #52	@ 0x34
80023280:	e1a01003 	mov	r1, r3
80023284:	ebfff3cf 	bl	800201c8 <memmove>
80023288:	e51b0008 	ldr	r0, [fp, #-8]
8002328c:	ebfff64a 	bl	80020bbc <brelse>
80023290:	e51b3010 	ldr	r3, [fp, #-16]
80023294:	e593300c 	ldr	r3, [r3, #12]
80023298:	e3832002 	orr	r2, r3, #2
8002329c:	e51b3010 	ldr	r3, [fp, #-16]
800232a0:	e583200c 	str	r2, [r3, #12]
800232a4:	e51b3010 	ldr	r3, [fp, #-16]
800232a8:	e1d331f0 	ldrsh	r3, [r3, #16]
800232ac:	e3530000 	cmp	r3, #0
800232b0:	1a000001 	bne	800232bc <ilock+0x178>
800232b4:	e59f0014 	ldr	r0, [pc, #20]	@ 800232d0 <ilock+0x18c>
800232b8:	ebfffa0d 	bl	80021af4 <panic>
800232bc:	e1a00000 	nop			@ (mov r0, r0)
800232c0:	e24bd004 	sub	sp, fp, #4
800232c4:	e8bd8800 	pop	{fp, pc}
800232c8:	8002959c 	.word	0x8002959c
800232cc:	800ac4e0 	.word	0x800ac4e0
800232d0:	800295a4 	.word	0x800295a4

800232d4 <iunlock>:
800232d4:	e92d4800 	push	{fp, lr}
800232d8:	e28db004 	add	fp, sp, #4
800232dc:	e24dd008 	sub	sp, sp, #8
800232e0:	e50b0008 	str	r0, [fp, #-8]
800232e4:	e51b3008 	ldr	r3, [fp, #-8]
800232e8:	e3530000 	cmp	r3, #0
800232ec:	0a000008 	beq	80023314 <iunlock+0x40>
800232f0:	e51b3008 	ldr	r3, [fp, #-8]
800232f4:	e593300c 	ldr	r3, [r3, #12]
800232f8:	e2033001 	and	r3, r3, #1
800232fc:	e3530000 	cmp	r3, #0
80023300:	0a000003 	beq	80023314 <iunlock+0x40>
80023304:	e51b3008 	ldr	r3, [fp, #-8]
80023308:	e5933008 	ldr	r3, [r3, #8]
8002330c:	e3530000 	cmp	r3, #0
80023310:	ca000001 	bgt	8002331c <iunlock+0x48>
80023314:	e59f0038 	ldr	r0, [pc, #56]	@ 80023354 <iunlock+0x80>
80023318:	ebfff9f5 	bl	80021af4 <panic>
8002331c:	e59f0034 	ldr	r0, [pc, #52]	@ 80023358 <iunlock+0x84>
80023320:	eb000a35 	bl	80025bfc <acquire>
80023324:	e51b3008 	ldr	r3, [fp, #-8]
80023328:	e593300c 	ldr	r3, [r3, #12]
8002332c:	e3c32001 	bic	r2, r3, #1
80023330:	e51b3008 	ldr	r3, [fp, #-8]
80023334:	e583200c 	str	r2, [r3, #12]
80023338:	e51b0008 	ldr	r0, [fp, #-8]
8002333c:	eb0009a9 	bl	800259e8 <wakeup>
80023340:	e59f0010 	ldr	r0, [pc, #16]	@ 80023358 <iunlock+0x84>
80023344:	eb000a37 	bl	80025c28 <release>
80023348:	e1a00000 	nop			@ (mov r0, r0)
8002334c:	e24bd004 	sub	sp, fp, #4
80023350:	e8bd8800 	pop	{fp, pc}
80023354:	800295b4 	.word	0x800295b4
80023358:	800ac4e0 	.word	0x800ac4e0

8002335c <iput>:
8002335c:	e92d4800 	push	{fp, lr}
80023360:	e28db004 	add	fp, sp, #4
80023364:	e24dd008 	sub	sp, sp, #8
80023368:	e50b0008 	str	r0, [fp, #-8]
8002336c:	e59f00cc 	ldr	r0, [pc, #204]	@ 80023440 <iput+0xe4>
80023370:	eb000a21 	bl	80025bfc <acquire>
80023374:	e51b3008 	ldr	r3, [fp, #-8]
80023378:	e5933008 	ldr	r3, [r3, #8]
8002337c:	e3530001 	cmp	r3, #1
80023380:	1a000024 	bne	80023418 <iput+0xbc>
80023384:	e51b3008 	ldr	r3, [fp, #-8]
80023388:	e593300c 	ldr	r3, [r3, #12]
8002338c:	e2033002 	and	r3, r3, #2
80023390:	e3530000 	cmp	r3, #0
80023394:	0a00001f 	beq	80023418 <iput+0xbc>
80023398:	e51b3008 	ldr	r3, [fp, #-8]
8002339c:	e1d331f6 	ldrsh	r3, [r3, #22]
800233a0:	e3530000 	cmp	r3, #0
800233a4:	1a00001b 	bne	80023418 <iput+0xbc>
800233a8:	e51b3008 	ldr	r3, [fp, #-8]
800233ac:	e593300c 	ldr	r3, [r3, #12]
800233b0:	e2033001 	and	r3, r3, #1
800233b4:	e3530000 	cmp	r3, #0
800233b8:	0a000001 	beq	800233c4 <iput+0x68>
800233bc:	e59f0080 	ldr	r0, [pc, #128]	@ 80023444 <iput+0xe8>
800233c0:	ebfff9cb 	bl	80021af4 <panic>
800233c4:	e51b3008 	ldr	r3, [fp, #-8]
800233c8:	e593300c 	ldr	r3, [r3, #12]
800233cc:	e3832001 	orr	r2, r3, #1
800233d0:	e51b3008 	ldr	r3, [fp, #-8]
800233d4:	e583200c 	str	r2, [r3, #12]
800233d8:	e59f0060 	ldr	r0, [pc, #96]	@ 80023440 <iput+0xe4>
800233dc:	eb000a11 	bl	80025c28 <release>
800233e0:	e51b0008 	ldr	r0, [fp, #-8]
800233e4:	eb00007f 	bl	800235e8 <itrunc>
800233e8:	e51b3008 	ldr	r3, [fp, #-8]
800233ec:	e3a02000 	mov	r2, #0
800233f0:	e1c321b0 	strh	r2, [r3, #16]
800233f4:	e51b0008 	ldr	r0, [fp, #-8]
800233f8:	ebfffeb7 	bl	80022edc <iupdate>
800233fc:	e59f003c 	ldr	r0, [pc, #60]	@ 80023440 <iput+0xe4>
80023400:	eb0009fd 	bl	80025bfc <acquire>
80023404:	e51b3008 	ldr	r3, [fp, #-8]
80023408:	e3a02000 	mov	r2, #0
8002340c:	e583200c 	str	r2, [r3, #12]
80023410:	e51b0008 	ldr	r0, [fp, #-8]
80023414:	eb000973 	bl	800259e8 <wakeup>
80023418:	e51b3008 	ldr	r3, [fp, #-8]
8002341c:	e5933008 	ldr	r3, [r3, #8]
80023420:	e2432001 	sub	r2, r3, #1
80023424:	e51b3008 	ldr	r3, [fp, #-8]
80023428:	e5832008 	str	r2, [r3, #8]
8002342c:	e59f000c 	ldr	r0, [pc, #12]	@ 80023440 <iput+0xe4>
80023430:	eb0009fc 	bl	80025c28 <release>
80023434:	e1a00000 	nop			@ (mov r0, r0)
80023438:	e24bd004 	sub	sp, fp, #4
8002343c:	e8bd8800 	pop	{fp, pc}
80023440:	800ac4e0 	.word	0x800ac4e0
80023444:	800295bc 	.word	0x800295bc

80023448 <iunlockput>:
80023448:	e92d4800 	push	{fp, lr}
8002344c:	e28db004 	add	fp, sp, #4
80023450:	e24dd008 	sub	sp, sp, #8
80023454:	e50b0008 	str	r0, [fp, #-8]
80023458:	e51b0008 	ldr	r0, [fp, #-8]
8002345c:	ebffff9c 	bl	800232d4 <iunlock>
80023460:	e51b0008 	ldr	r0, [fp, #-8]
80023464:	ebffffbc 	bl	8002335c <iput>
80023468:	e1a00000 	nop			@ (mov r0, r0)
8002346c:	e24bd004 	sub	sp, fp, #4
80023470:	e8bd8800 	pop	{fp, pc}

80023474 <bmap>:
80023474:	e92d4800 	push	{fp, lr}
80023478:	e28db004 	add	fp, sp, #4
8002347c:	e24dd018 	sub	sp, sp, #24
80023480:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80023484:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80023488:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002348c:	e353000b 	cmp	r3, #11
80023490:	8a000017 	bhi	800234f4 <bmap+0x80>
80023494:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023498:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002349c:	e2833006 	add	r3, r3, #6
800234a0:	e1a03103 	lsl	r3, r3, #2
800234a4:	e0823003 	add	r3, r2, r3
800234a8:	e5933004 	ldr	r3, [r3, #4]
800234ac:	e50b3008 	str	r3, [fp, #-8]
800234b0:	e51b3008 	ldr	r3, [fp, #-8]
800234b4:	e3530000 	cmp	r3, #0
800234b8:	1a00000b 	bne	800234ec <bmap+0x78>
800234bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800234c0:	e5933000 	ldr	r3, [r3]
800234c4:	e1a00003 	mov	r0, r3
800234c8:	ebfffd7e 	bl	80022ac8 <balloc>
800234cc:	e50b0008 	str	r0, [fp, #-8]
800234d0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800234d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800234d8:	e2833006 	add	r3, r3, #6
800234dc:	e1a03103 	lsl	r3, r3, #2
800234e0:	e0823003 	add	r3, r2, r3
800234e4:	e51b2008 	ldr	r2, [fp, #-8]
800234e8:	e5832004 	str	r2, [r3, #4]
800234ec:	e51b3008 	ldr	r3, [fp, #-8]
800234f0:	ea000038 	b	800235d8 <bmap+0x164>
800234f4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800234f8:	e243300c 	sub	r3, r3, #12
800234fc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80023500:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023504:	e353007f 	cmp	r3, #127	@ 0x7f
80023508:	8a000030 	bhi	800235d0 <bmap+0x15c>
8002350c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023510:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023514:	e50b3008 	str	r3, [fp, #-8]
80023518:	e51b3008 	ldr	r3, [fp, #-8]
8002351c:	e3530000 	cmp	r3, #0
80023520:	1a000007 	bne	80023544 <bmap+0xd0>
80023524:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023528:	e5933000 	ldr	r3, [r3]
8002352c:	e1a00003 	mov	r0, r3
80023530:	ebfffd64 	bl	80022ac8 <balloc>
80023534:	e50b0008 	str	r0, [fp, #-8]
80023538:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002353c:	e51b2008 	ldr	r2, [fp, #-8]
80023540:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023544:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023548:	e5933000 	ldr	r3, [r3]
8002354c:	e51b1008 	ldr	r1, [fp, #-8]
80023550:	e1a00003 	mov	r0, r3
80023554:	ebfff56e 	bl	80020b14 <bread>
80023558:	e50b000c 	str	r0, [fp, #-12]
8002355c:	e51b300c 	ldr	r3, [fp, #-12]
80023560:	e2833018 	add	r3, r3, #24
80023564:	e50b3010 	str	r3, [fp, #-16]
80023568:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002356c:	e1a03103 	lsl	r3, r3, #2
80023570:	e51b2010 	ldr	r2, [fp, #-16]
80023574:	e0823003 	add	r3, r2, r3
80023578:	e5933000 	ldr	r3, [r3]
8002357c:	e50b3008 	str	r3, [fp, #-8]
80023580:	e51b3008 	ldr	r3, [fp, #-8]
80023584:	e3530000 	cmp	r3, #0
80023588:	1a00000c 	bne	800235c0 <bmap+0x14c>
8002358c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023590:	e5933000 	ldr	r3, [r3]
80023594:	e1a00003 	mov	r0, r3
80023598:	ebfffd4a 	bl	80022ac8 <balloc>
8002359c:	e50b0008 	str	r0, [fp, #-8]
800235a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800235a4:	e1a03103 	lsl	r3, r3, #2
800235a8:	e51b2010 	ldr	r2, [fp, #-16]
800235ac:	e0823003 	add	r3, r2, r3
800235b0:	e51b2008 	ldr	r2, [fp, #-8]
800235b4:	e5832000 	str	r2, [r3]
800235b8:	e51b000c 	ldr	r0, [fp, #-12]
800235bc:	eb0003b8 	bl	800244a4 <log_write>
800235c0:	e51b000c 	ldr	r0, [fp, #-12]
800235c4:	ebfff57c 	bl	80020bbc <brelse>
800235c8:	e51b3008 	ldr	r3, [fp, #-8]
800235cc:	ea000001 	b	800235d8 <bmap+0x164>
800235d0:	e59f000c 	ldr	r0, [pc, #12]	@ 800235e4 <bmap+0x170>
800235d4:	ebfff946 	bl	80021af4 <panic>
800235d8:	e1a00003 	mov	r0, r3
800235dc:	e24bd004 	sub	sp, fp, #4
800235e0:	e8bd8800 	pop	{fp, pc}
800235e4:	800295c8 	.word	0x800295c8

800235e8 <itrunc>:
800235e8:	e92d4800 	push	{fp, lr}
800235ec:	e28db004 	add	fp, sp, #4
800235f0:	e24dd018 	sub	sp, sp, #24
800235f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800235f8:	e3a03000 	mov	r3, #0
800235fc:	e50b3008 	str	r3, [fp, #-8]
80023600:	ea00001c 	b	80023678 <itrunc+0x90>
80023604:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023608:	e51b3008 	ldr	r3, [fp, #-8]
8002360c:	e2833006 	add	r3, r3, #6
80023610:	e1a03103 	lsl	r3, r3, #2
80023614:	e0823003 	add	r3, r2, r3
80023618:	e5933004 	ldr	r3, [r3, #4]
8002361c:	e3530000 	cmp	r3, #0
80023620:	0a000011 	beq	8002366c <itrunc+0x84>
80023624:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023628:	e5933000 	ldr	r3, [r3]
8002362c:	e1a00003 	mov	r0, r3
80023630:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023634:	e51b3008 	ldr	r3, [fp, #-8]
80023638:	e2833006 	add	r3, r3, #6
8002363c:	e1a03103 	lsl	r3, r3, #2
80023640:	e0823003 	add	r3, r2, r3
80023644:	e5933004 	ldr	r3, [r3, #4]
80023648:	e1a01003 	mov	r1, r3
8002364c:	ebfffd8f 	bl	80022c90 <bfree>
80023650:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023654:	e51b3008 	ldr	r3, [fp, #-8]
80023658:	e2833006 	add	r3, r3, #6
8002365c:	e1a03103 	lsl	r3, r3, #2
80023660:	e0823003 	add	r3, r2, r3
80023664:	e3a02000 	mov	r2, #0
80023668:	e5832004 	str	r2, [r3, #4]
8002366c:	e51b3008 	ldr	r3, [fp, #-8]
80023670:	e2833001 	add	r3, r3, #1
80023674:	e50b3008 	str	r3, [fp, #-8]
80023678:	e51b3008 	ldr	r3, [fp, #-8]
8002367c:	e353000b 	cmp	r3, #11
80023680:	daffffdf 	ble	80023604 <itrunc+0x1c>
80023684:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023688:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002368c:	e3530000 	cmp	r3, #0
80023690:	0a000031 	beq	8002375c <itrunc+0x174>
80023694:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023698:	e5932000 	ldr	r2, [r3]
8002369c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236a0:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800236a4:	e1a01003 	mov	r1, r3
800236a8:	e1a00002 	mov	r0, r2
800236ac:	ebfff518 	bl	80020b14 <bread>
800236b0:	e50b0010 	str	r0, [fp, #-16]
800236b4:	e51b3010 	ldr	r3, [fp, #-16]
800236b8:	e2833018 	add	r3, r3, #24
800236bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800236c0:	e3a03000 	mov	r3, #0
800236c4:	e50b300c 	str	r3, [fp, #-12]
800236c8:	ea000013 	b	8002371c <itrunc+0x134>
800236cc:	e51b300c 	ldr	r3, [fp, #-12]
800236d0:	e1a03103 	lsl	r3, r3, #2
800236d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800236d8:	e0823003 	add	r3, r2, r3
800236dc:	e5933000 	ldr	r3, [r3]
800236e0:	e3530000 	cmp	r3, #0
800236e4:	0a000009 	beq	80023710 <itrunc+0x128>
800236e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236ec:	e5933000 	ldr	r3, [r3]
800236f0:	e1a00003 	mov	r0, r3
800236f4:	e51b300c 	ldr	r3, [fp, #-12]
800236f8:	e1a03103 	lsl	r3, r3, #2
800236fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023700:	e0823003 	add	r3, r2, r3
80023704:	e5933000 	ldr	r3, [r3]
80023708:	e1a01003 	mov	r1, r3
8002370c:	ebfffd5f 	bl	80022c90 <bfree>
80023710:	e51b300c 	ldr	r3, [fp, #-12]
80023714:	e2833001 	add	r3, r3, #1
80023718:	e50b300c 	str	r3, [fp, #-12]
8002371c:	e51b300c 	ldr	r3, [fp, #-12]
80023720:	e353007f 	cmp	r3, #127	@ 0x7f
80023724:	9affffe8 	bls	800236cc <itrunc+0xe4>
80023728:	e51b0010 	ldr	r0, [fp, #-16]
8002372c:	ebfff522 	bl	80020bbc <brelse>
80023730:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023734:	e5933000 	ldr	r3, [r3]
80023738:	e1a02003 	mov	r2, r3
8002373c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023740:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023744:	e1a01003 	mov	r1, r3
80023748:	e1a00002 	mov	r0, r2
8002374c:	ebfffd4f 	bl	80022c90 <bfree>
80023750:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023754:	e3a02000 	mov	r2, #0
80023758:	e583204c 	str	r2, [r3, #76]	@ 0x4c
8002375c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023760:	e3a02000 	mov	r2, #0
80023764:	e5832018 	str	r2, [r3, #24]
80023768:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002376c:	ebfffdda 	bl	80022edc <iupdate>
80023770:	e1a00000 	nop			@ (mov r0, r0)
80023774:	e24bd004 	sub	sp, fp, #4
80023778:	e8bd8800 	pop	{fp, pc}

8002377c <stati>:
8002377c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023780:	e28db000 	add	fp, sp, #0
80023784:	e24dd00c 	sub	sp, sp, #12
80023788:	e50b0008 	str	r0, [fp, #-8]
8002378c:	e50b100c 	str	r1, [fp, #-12]
80023790:	e51b3008 	ldr	r3, [fp, #-8]
80023794:	e5933000 	ldr	r3, [r3]
80023798:	e1a02003 	mov	r2, r3
8002379c:	e51b300c 	ldr	r3, [fp, #-12]
800237a0:	e5832004 	str	r2, [r3, #4]
800237a4:	e51b3008 	ldr	r3, [fp, #-8]
800237a8:	e5932004 	ldr	r2, [r3, #4]
800237ac:	e51b300c 	ldr	r3, [fp, #-12]
800237b0:	e5832008 	str	r2, [r3, #8]
800237b4:	e51b3008 	ldr	r3, [fp, #-8]
800237b8:	e1d321f0 	ldrsh	r2, [r3, #16]
800237bc:	e51b300c 	ldr	r3, [fp, #-12]
800237c0:	e1c320b0 	strh	r2, [r3]
800237c4:	e51b3008 	ldr	r3, [fp, #-8]
800237c8:	e1d321f6 	ldrsh	r2, [r3, #22]
800237cc:	e51b300c 	ldr	r3, [fp, #-12]
800237d0:	e1c320bc 	strh	r2, [r3, #12]
800237d4:	e51b3008 	ldr	r3, [fp, #-8]
800237d8:	e5932018 	ldr	r2, [r3, #24]
800237dc:	e51b300c 	ldr	r3, [fp, #-12]
800237e0:	e5832010 	str	r2, [r3, #16]
800237e4:	e1a00000 	nop			@ (mov r0, r0)
800237e8:	e28bd000 	add	sp, fp, #0
800237ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800237f0:	e12fff1e 	bx	lr

800237f4 <readi>:
800237f4:	e92d4810 	push	{r4, fp, lr}
800237f8:	e28db008 	add	fp, sp, #8
800237fc:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023800:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023804:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023808:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002380c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023810:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023814:	e1d331f0 	ldrsh	r3, [r3, #16]
80023818:	e3530003 	cmp	r3, #3
8002381c:	1a00001b 	bne	80023890 <readi+0x9c>
80023820:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023824:	e1d331f2 	ldrsh	r3, [r3, #18]
80023828:	e3530000 	cmp	r3, #0
8002382c:	ba00000a 	blt	8002385c <readi+0x68>
80023830:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023834:	e1d331f2 	ldrsh	r3, [r3, #18]
80023838:	e3530009 	cmp	r3, #9
8002383c:	ca000006 	bgt	8002385c <readi+0x68>
80023840:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023844:	e1d331f2 	ldrsh	r3, [r3, #18]
80023848:	e1a02003 	mov	r2, r3
8002384c:	e59f3188 	ldr	r3, [pc, #392]	@ 800239dc <readi+0x1e8>
80023850:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023854:	e3530000 	cmp	r3, #0
80023858:	1a000001 	bne	80023864 <readi+0x70>
8002385c:	e3e03000 	mvn	r3, #0
80023860:	ea00005a 	b	800239d0 <readi+0x1dc>
80023864:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023868:	e1d331f2 	ldrsh	r3, [r3, #18]
8002386c:	e1a02003 	mov	r2, r3
80023870:	e59f3164 	ldr	r3, [pc, #356]	@ 800239dc <readi+0x1e8>
80023874:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023878:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
8002387c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023880:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023884:	e12fff33 	blx	r3
80023888:	e1a03000 	mov	r3, r0
8002388c:	ea00004f 	b	800239d0 <readi+0x1dc>
80023890:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023894:	e5933018 	ldr	r3, [r3, #24]
80023898:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
8002389c:	e1520003 	cmp	r2, r3
800238a0:	8a000005 	bhi	800238bc <readi+0xc8>
800238a4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238a8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800238ac:	e0823003 	add	r3, r2, r3
800238b0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238b4:	e1520003 	cmp	r2, r3
800238b8:	9a000001 	bls	800238c4 <readi+0xd0>
800238bc:	e3e03000 	mvn	r3, #0
800238c0:	ea000042 	b	800239d0 <readi+0x1dc>
800238c4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800238c8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800238cc:	e0822003 	add	r2, r2, r3
800238d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238d4:	e5933018 	ldr	r3, [r3, #24]
800238d8:	e1520003 	cmp	r2, r3
800238dc:	9a000004 	bls	800238f4 <readi+0x100>
800238e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238e4:	e5932018 	ldr	r2, [r3, #24]
800238e8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800238ec:	e0423003 	sub	r3, r2, r3
800238f0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800238f4:	e3a03000 	mov	r3, #0
800238f8:	e50b3010 	str	r3, [fp, #-16]
800238fc:	ea00002e 	b	800239bc <readi+0x1c8>
80023900:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023904:	e5934000 	ldr	r4, [r3]
80023908:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002390c:	e1a034a3 	lsr	r3, r3, #9
80023910:	e1a01003 	mov	r1, r3
80023914:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023918:	ebfffed5 	bl	80023474 <bmap>
8002391c:	e1a03000 	mov	r3, r0
80023920:	e1a01003 	mov	r1, r3
80023924:	e1a00004 	mov	r0, r4
80023928:	ebfff479 	bl	80020b14 <bread>
8002392c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023930:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023934:	e1a03b83 	lsl	r3, r3, #23
80023938:	e1a03ba3 	lsr	r3, r3, #23
8002393c:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023940:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023944:	e51b3010 	ldr	r3, [fp, #-16]
80023948:	e0413003 	sub	r3, r1, r3
8002394c:	e1520003 	cmp	r2, r3
80023950:	31a03002 	movcc	r3, r2
80023954:	21a03003 	movcs	r3, r3
80023958:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
8002395c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023960:	e2832018 	add	r2, r3, #24
80023964:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023968:	e1a03b83 	lsl	r3, r3, #23
8002396c:	e1a03ba3 	lsr	r3, r3, #23
80023970:	e0823003 	add	r3, r2, r3
80023974:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023978:	e1a01003 	mov	r1, r3
8002397c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023980:	ebfff210 	bl	800201c8 <memmove>
80023984:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023988:	ebfff48b 	bl	80020bbc <brelse>
8002398c:	e51b2010 	ldr	r2, [fp, #-16]
80023990:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023994:	e0823003 	add	r3, r2, r3
80023998:	e50b3010 	str	r3, [fp, #-16]
8002399c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800239a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800239a4:	e0823003 	add	r3, r2, r3
800239a8:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800239ac:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800239b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800239b4:	e0823003 	add	r3, r2, r3
800239b8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800239bc:	e51b2010 	ldr	r2, [fp, #-16]
800239c0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800239c4:	e1520003 	cmp	r2, r3
800239c8:	3affffcc 	bcc	80023900 <readi+0x10c>
800239cc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800239d0:	e1a00003 	mov	r0, r3
800239d4:	e24bd008 	sub	sp, fp, #8
800239d8:	e8bd8810 	pop	{r4, fp, pc}
800239dc:	800abafc 	.word	0x800abafc

800239e0 <writei>:
800239e0:	e92d4810 	push	{r4, fp, lr}
800239e4:	e28db008 	add	fp, sp, #8
800239e8:	e24dd024 	sub	sp, sp, #36	@ 0x24
800239ec:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800239f0:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
800239f4:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
800239f8:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800239fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a00:	e1d331f0 	ldrsh	r3, [r3, #16]
80023a04:	e3530003 	cmp	r3, #3
80023a08:	1a00001d 	bne	80023a84 <writei+0xa4>
80023a0c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a10:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a14:	e3530000 	cmp	r3, #0
80023a18:	ba00000b 	blt	80023a4c <writei+0x6c>
80023a1c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a20:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a24:	e3530009 	cmp	r3, #9
80023a28:	ca000007 	bgt	80023a4c <writei+0x6c>
80023a2c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a30:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a34:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023bf8 <writei+0x218>
80023a38:	e1a03183 	lsl	r3, r3, #3
80023a3c:	e0823003 	add	r3, r2, r3
80023a40:	e5933004 	ldr	r3, [r3, #4]
80023a44:	e3530000 	cmp	r3, #0
80023a48:	1a000001 	bne	80023a54 <writei+0x74>
80023a4c:	e3e03000 	mvn	r3, #0
80023a50:	ea000065 	b	80023bec <writei+0x20c>
80023a54:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a58:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a5c:	e59f2194 	ldr	r2, [pc, #404]	@ 80023bf8 <writei+0x218>
80023a60:	e1a03183 	lsl	r3, r3, #3
80023a64:	e0823003 	add	r3, r2, r3
80023a68:	e5933004 	ldr	r3, [r3, #4]
80023a6c:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023a70:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023a74:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023a78:	e12fff33 	blx	r3
80023a7c:	e1a03000 	mov	r3, r0
80023a80:	ea000059 	b	80023bec <writei+0x20c>
80023a84:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a88:	e5933018 	ldr	r3, [r3, #24]
80023a8c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a90:	e1520003 	cmp	r2, r3
80023a94:	8a000005 	bhi	80023ab0 <writei+0xd0>
80023a98:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023aa0:	e0823003 	add	r3, r2, r3
80023aa4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023aa8:	e1520003 	cmp	r2, r3
80023aac:	9a000001 	bls	80023ab8 <writei+0xd8>
80023ab0:	e3e03000 	mvn	r3, #0
80023ab4:	ea00004c 	b	80023bec <writei+0x20c>
80023ab8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023abc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ac0:	e0823003 	add	r3, r2, r3
80023ac4:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023ac8:	9a000001 	bls	80023ad4 <writei+0xf4>
80023acc:	e3e03000 	mvn	r3, #0
80023ad0:	ea000045 	b	80023bec <writei+0x20c>
80023ad4:	e3a03000 	mov	r3, #0
80023ad8:	e50b3010 	str	r3, [fp, #-16]
80023adc:	ea000030 	b	80023ba4 <writei+0x1c4>
80023ae0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ae4:	e5934000 	ldr	r4, [r3]
80023ae8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023aec:	e1a034a3 	lsr	r3, r3, #9
80023af0:	e1a01003 	mov	r1, r3
80023af4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023af8:	ebfffe5d 	bl	80023474 <bmap>
80023afc:	e1a03000 	mov	r3, r0
80023b00:	e1a01003 	mov	r1, r3
80023b04:	e1a00004 	mov	r0, r4
80023b08:	ebfff401 	bl	80020b14 <bread>
80023b0c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023b10:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b14:	e1a03b83 	lsl	r3, r3, #23
80023b18:	e1a03ba3 	lsr	r3, r3, #23
80023b1c:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023b20:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023b24:	e51b3010 	ldr	r3, [fp, #-16]
80023b28:	e0413003 	sub	r3, r1, r3
80023b2c:	e1520003 	cmp	r2, r3
80023b30:	31a03002 	movcc	r3, r2
80023b34:	21a03003 	movcs	r3, r3
80023b38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023b3c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023b40:	e2832018 	add	r2, r3, #24
80023b44:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b48:	e1a03b83 	lsl	r3, r3, #23
80023b4c:	e1a03ba3 	lsr	r3, r3, #23
80023b50:	e0823003 	add	r3, r2, r3
80023b54:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023b58:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023b5c:	e1a00003 	mov	r0, r3
80023b60:	ebfff198 	bl	800201c8 <memmove>
80023b64:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023b68:	eb00024d 	bl	800244a4 <log_write>
80023b6c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023b70:	ebfff411 	bl	80020bbc <brelse>
80023b74:	e51b2010 	ldr	r2, [fp, #-16]
80023b78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b7c:	e0823003 	add	r3, r2, r3
80023b80:	e50b3010 	str	r3, [fp, #-16]
80023b84:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b8c:	e0823003 	add	r3, r2, r3
80023b90:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023b94:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023b98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b9c:	e0823003 	add	r3, r2, r3
80023ba0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023ba4:	e51b2010 	ldr	r2, [fp, #-16]
80023ba8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bac:	e1520003 	cmp	r2, r3
80023bb0:	3affffca 	bcc	80023ae0 <writei+0x100>
80023bb4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bb8:	e3530000 	cmp	r3, #0
80023bbc:	0a000009 	beq	80023be8 <writei+0x208>
80023bc0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bc4:	e5933018 	ldr	r3, [r3, #24]
80023bc8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023bcc:	e1520003 	cmp	r2, r3
80023bd0:	9a000004 	bls	80023be8 <writei+0x208>
80023bd4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bd8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023bdc:	e5832018 	str	r2, [r3, #24]
80023be0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023be4:	ebfffcbc 	bl	80022edc <iupdate>
80023be8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bec:	e1a00003 	mov	r0, r3
80023bf0:	e24bd008 	sub	sp, fp, #8
80023bf4:	e8bd8810 	pop	{r4, fp, pc}
80023bf8:	800abafc 	.word	0x800abafc

80023bfc <namecmp>:
80023bfc:	e92d4800 	push	{fp, lr}
80023c00:	e28db004 	add	fp, sp, #4
80023c04:	e24dd008 	sub	sp, sp, #8
80023c08:	e50b0008 	str	r0, [fp, #-8]
80023c0c:	e50b100c 	str	r1, [fp, #-12]
80023c10:	e3a0200e 	mov	r2, #14
80023c14:	e51b100c 	ldr	r1, [fp, #-12]
80023c18:	e51b0008 	ldr	r0, [fp, #-8]
80023c1c:	ebfff1b6 	bl	800202fc <strncmp>
80023c20:	e1a03000 	mov	r3, r0
80023c24:	e1a00003 	mov	r0, r3
80023c28:	e24bd004 	sub	sp, fp, #4
80023c2c:	e8bd8800 	pop	{fp, pc}

80023c30 <dirlookup>:
80023c30:	e92d4800 	push	{fp, lr}
80023c34:	e28db004 	add	fp, sp, #4
80023c38:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023c3c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023c40:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023c44:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023c48:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c4c:	e1d331f0 	ldrsh	r3, [r3, #16]
80023c50:	e3530001 	cmp	r3, #1
80023c54:	0a000001 	beq	80023c60 <dirlookup+0x30>
80023c58:	e59f00d0 	ldr	r0, [pc, #208]	@ 80023d30 <dirlookup+0x100>
80023c5c:	ebfff7a4 	bl	80021af4 <panic>
80023c60:	e3a03000 	mov	r3, #0
80023c64:	e50b3008 	str	r3, [fp, #-8]
80023c68:	ea000027 	b	80023d0c <dirlookup+0xdc>
80023c6c:	e24b101c 	sub	r1, fp, #28
80023c70:	e3a03010 	mov	r3, #16
80023c74:	e51b2008 	ldr	r2, [fp, #-8]
80023c78:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c7c:	ebfffedc 	bl	800237f4 <readi>
80023c80:	e1a03000 	mov	r3, r0
80023c84:	e3530010 	cmp	r3, #16
80023c88:	0a000001 	beq	80023c94 <dirlookup+0x64>
80023c8c:	e59f00a0 	ldr	r0, [pc, #160]	@ 80023d34 <dirlookup+0x104>
80023c90:	ebfff797 	bl	80021af4 <panic>
80023c94:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023c98:	e3530000 	cmp	r3, #0
80023c9c:	0a000016 	beq	80023cfc <dirlookup+0xcc>
80023ca0:	e24b301c 	sub	r3, fp, #28
80023ca4:	e2833002 	add	r3, r3, #2
80023ca8:	e1a01003 	mov	r1, r3
80023cac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023cb0:	ebffffd1 	bl	80023bfc <namecmp>
80023cb4:	e1a03000 	mov	r3, r0
80023cb8:	e3530000 	cmp	r3, #0
80023cbc:	1a00000f 	bne	80023d00 <dirlookup+0xd0>
80023cc0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023cc4:	e3530000 	cmp	r3, #0
80023cc8:	0a000002 	beq	80023cd8 <dirlookup+0xa8>
80023ccc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023cd0:	e51b2008 	ldr	r2, [fp, #-8]
80023cd4:	e5832000 	str	r2, [r3]
80023cd8:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023cdc:	e50b300c 	str	r3, [fp, #-12]
80023ce0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ce4:	e5933000 	ldr	r3, [r3]
80023ce8:	e51b100c 	ldr	r1, [fp, #-12]
80023cec:	e1a00003 	mov	r0, r3
80023cf0:	ebfffcb1 	bl	80022fbc <iget>
80023cf4:	e1a03000 	mov	r3, r0
80023cf8:	ea000009 	b	80023d24 <dirlookup+0xf4>
80023cfc:	e1a00000 	nop			@ (mov r0, r0)
80023d00:	e51b3008 	ldr	r3, [fp, #-8]
80023d04:	e2833010 	add	r3, r3, #16
80023d08:	e50b3008 	str	r3, [fp, #-8]
80023d0c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d10:	e5933018 	ldr	r3, [r3, #24]
80023d14:	e51b2008 	ldr	r2, [fp, #-8]
80023d18:	e1520003 	cmp	r2, r3
80023d1c:	3affffd2 	bcc	80023c6c <dirlookup+0x3c>
80023d20:	e3a03000 	mov	r3, #0
80023d24:	e1a00003 	mov	r0, r3
80023d28:	e24bd004 	sub	sp, fp, #4
80023d2c:	e8bd8800 	pop	{fp, pc}
80023d30:	800295dc 	.word	0x800295dc
80023d34:	800295f0 	.word	0x800295f0

80023d38 <dirlink>:
80023d38:	e92d4800 	push	{fp, lr}
80023d3c:	e28db004 	add	fp, sp, #4
80023d40:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023d44:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023d48:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023d4c:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023d50:	e3a02000 	mov	r2, #0
80023d54:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023d58:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d5c:	ebffffb3 	bl	80023c30 <dirlookup>
80023d60:	e50b000c 	str	r0, [fp, #-12]
80023d64:	e51b300c 	ldr	r3, [fp, #-12]
80023d68:	e3530000 	cmp	r3, #0
80023d6c:	0a000003 	beq	80023d80 <dirlink+0x48>
80023d70:	e51b000c 	ldr	r0, [fp, #-12]
80023d74:	ebfffd78 	bl	8002335c <iput>
80023d78:	e3e03000 	mvn	r3, #0
80023d7c:	ea00002d 	b	80023e38 <dirlink+0x100>
80023d80:	e3a03000 	mov	r3, #0
80023d84:	e50b3008 	str	r3, [fp, #-8]
80023d88:	ea00000f 	b	80023dcc <dirlink+0x94>
80023d8c:	e51b2008 	ldr	r2, [fp, #-8]
80023d90:	e24b101c 	sub	r1, fp, #28
80023d94:	e3a03010 	mov	r3, #16
80023d98:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d9c:	ebfffe94 	bl	800237f4 <readi>
80023da0:	e1a03000 	mov	r3, r0
80023da4:	e3530010 	cmp	r3, #16
80023da8:	0a000001 	beq	80023db4 <dirlink+0x7c>
80023dac:	e59f0090 	ldr	r0, [pc, #144]	@ 80023e44 <dirlink+0x10c>
80023db0:	ebfff74f 	bl	80021af4 <panic>
80023db4:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023db8:	e3530000 	cmp	r3, #0
80023dbc:	0a000008 	beq	80023de4 <dirlink+0xac>
80023dc0:	e51b3008 	ldr	r3, [fp, #-8]
80023dc4:	e2833010 	add	r3, r3, #16
80023dc8:	e50b3008 	str	r3, [fp, #-8]
80023dcc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023dd0:	e5932018 	ldr	r2, [r3, #24]
80023dd4:	e51b3008 	ldr	r3, [fp, #-8]
80023dd8:	e1520003 	cmp	r2, r3
80023ddc:	8affffea 	bhi	80023d8c <dirlink+0x54>
80023de0:	ea000000 	b	80023de8 <dirlink+0xb0>
80023de4:	e1a00000 	nop			@ (mov r0, r0)
80023de8:	e24b301c 	sub	r3, fp, #28
80023dec:	e2833002 	add	r3, r3, #2
80023df0:	e3a0200e 	mov	r2, #14
80023df4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023df8:	e1a00003 	mov	r0, r3
80023dfc:	ebfff16a 	bl	800203ac <strncpy>
80023e00:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023e04:	e6ff3073 	uxth	r3, r3
80023e08:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80023e0c:	e51b2008 	ldr	r2, [fp, #-8]
80023e10:	e24b101c 	sub	r1, fp, #28
80023e14:	e3a03010 	mov	r3, #16
80023e18:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023e1c:	ebfffeef 	bl	800239e0 <writei>
80023e20:	e1a03000 	mov	r3, r0
80023e24:	e3530010 	cmp	r3, #16
80023e28:	0a000001 	beq	80023e34 <dirlink+0xfc>
80023e2c:	e59f0014 	ldr	r0, [pc, #20]	@ 80023e48 <dirlink+0x110>
80023e30:	ebfff72f 	bl	80021af4 <panic>
80023e34:	e3a03000 	mov	r3, #0
80023e38:	e1a00003 	mov	r0, r3
80023e3c:	e24bd004 	sub	sp, fp, #4
80023e40:	e8bd8800 	pop	{fp, pc}
80023e44:	800295f0 	.word	0x800295f0
80023e48:	80029600 	.word	0x80029600

80023e4c <skipelem>:
80023e4c:	e92d4800 	push	{fp, lr}
80023e50:	e28db004 	add	fp, sp, #4
80023e54:	e24dd010 	sub	sp, sp, #16
80023e58:	e50b0010 	str	r0, [fp, #-16]
80023e5c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023e60:	ea000002 	b	80023e70 <skipelem+0x24>
80023e64:	e51b3010 	ldr	r3, [fp, #-16]
80023e68:	e2833001 	add	r3, r3, #1
80023e6c:	e50b3010 	str	r3, [fp, #-16]
80023e70:	e51b3010 	ldr	r3, [fp, #-16]
80023e74:	e5d33000 	ldrb	r3, [r3]
80023e78:	e353002f 	cmp	r3, #47	@ 0x2f
80023e7c:	0afffff8 	beq	80023e64 <skipelem+0x18>
80023e80:	e51b3010 	ldr	r3, [fp, #-16]
80023e84:	e5d33000 	ldrb	r3, [r3]
80023e88:	e3530000 	cmp	r3, #0
80023e8c:	1a000001 	bne	80023e98 <skipelem+0x4c>
80023e90:	e3a03000 	mov	r3, #0
80023e94:	ea00002c 	b	80023f4c <skipelem+0x100>
80023e98:	e51b3010 	ldr	r3, [fp, #-16]
80023e9c:	e50b3008 	str	r3, [fp, #-8]
80023ea0:	ea000002 	b	80023eb0 <skipelem+0x64>
80023ea4:	e51b3010 	ldr	r3, [fp, #-16]
80023ea8:	e2833001 	add	r3, r3, #1
80023eac:	e50b3010 	str	r3, [fp, #-16]
80023eb0:	e51b3010 	ldr	r3, [fp, #-16]
80023eb4:	e5d33000 	ldrb	r3, [r3]
80023eb8:	e353002f 	cmp	r3, #47	@ 0x2f
80023ebc:	0a000003 	beq	80023ed0 <skipelem+0x84>
80023ec0:	e51b3010 	ldr	r3, [fp, #-16]
80023ec4:	e5d33000 	ldrb	r3, [r3]
80023ec8:	e3530000 	cmp	r3, #0
80023ecc:	1afffff4 	bne	80023ea4 <skipelem+0x58>
80023ed0:	e51b2010 	ldr	r2, [fp, #-16]
80023ed4:	e51b3008 	ldr	r3, [fp, #-8]
80023ed8:	e0423003 	sub	r3, r2, r3
80023edc:	e50b300c 	str	r3, [fp, #-12]
80023ee0:	e51b300c 	ldr	r3, [fp, #-12]
80023ee4:	e353000d 	cmp	r3, #13
80023ee8:	da000004 	ble	80023f00 <skipelem+0xb4>
80023eec:	e3a0200e 	mov	r2, #14
80023ef0:	e51b1008 	ldr	r1, [fp, #-8]
80023ef4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023ef8:	ebfff0b2 	bl	800201c8 <memmove>
80023efc:	ea00000d 	b	80023f38 <skipelem+0xec>
80023f00:	e51b300c 	ldr	r3, [fp, #-12]
80023f04:	e1a02003 	mov	r2, r3
80023f08:	e51b1008 	ldr	r1, [fp, #-8]
80023f0c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023f10:	ebfff0ac 	bl	800201c8 <memmove>
80023f14:	e51b300c 	ldr	r3, [fp, #-12]
80023f18:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023f1c:	e0823003 	add	r3, r2, r3
80023f20:	e3a02000 	mov	r2, #0
80023f24:	e5c32000 	strb	r2, [r3]
80023f28:	ea000002 	b	80023f38 <skipelem+0xec>
80023f2c:	e51b3010 	ldr	r3, [fp, #-16]
80023f30:	e2833001 	add	r3, r3, #1
80023f34:	e50b3010 	str	r3, [fp, #-16]
80023f38:	e51b3010 	ldr	r3, [fp, #-16]
80023f3c:	e5d33000 	ldrb	r3, [r3]
80023f40:	e353002f 	cmp	r3, #47	@ 0x2f
80023f44:	0afffff8 	beq	80023f2c <skipelem+0xe0>
80023f48:	e51b3010 	ldr	r3, [fp, #-16]
80023f4c:	e1a00003 	mov	r0, r3
80023f50:	e24bd004 	sub	sp, fp, #4
80023f54:	e8bd8800 	pop	{fp, pc}

80023f58 <namex>:
80023f58:	e92d4800 	push	{fp, lr}
80023f5c:	e28db004 	add	fp, sp, #4
80023f60:	e24dd018 	sub	sp, sp, #24
80023f64:	e50b0010 	str	r0, [fp, #-16]
80023f68:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023f6c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80023f70:	e51b3010 	ldr	r3, [fp, #-16]
80023f74:	e5d33000 	ldrb	r3, [r3]
80023f78:	e353002f 	cmp	r3, #47	@ 0x2f
80023f7c:	1a000004 	bne	80023f94 <namex+0x3c>
80023f80:	e3a01001 	mov	r1, #1
80023f84:	e3a00001 	mov	r0, #1
80023f88:	ebfffc0b 	bl	80022fbc <iget>
80023f8c:	e50b0008 	str	r0, [fp, #-8]
80023f90:	ea00002b 	b	80024044 <namex+0xec>
80023f94:	e59f30f0 	ldr	r3, [pc, #240]	@ 8002408c <namex+0x134>
80023f98:	e5933000 	ldr	r3, [r3]
80023f9c:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80023fa0:	e1a00003 	mov	r0, r3
80023fa4:	ebfffc54 	bl	800230fc <idup>
80023fa8:	e50b0008 	str	r0, [fp, #-8]
80023fac:	ea000024 	b	80024044 <namex+0xec>
80023fb0:	e51b0008 	ldr	r0, [fp, #-8]
80023fb4:	ebfffc62 	bl	80023144 <ilock>
80023fb8:	e51b3008 	ldr	r3, [fp, #-8]
80023fbc:	e1d331f0 	ldrsh	r3, [r3, #16]
80023fc0:	e3530001 	cmp	r3, #1
80023fc4:	0a000003 	beq	80023fd8 <namex+0x80>
80023fc8:	e51b0008 	ldr	r0, [fp, #-8]
80023fcc:	ebfffd1d 	bl	80023448 <iunlockput>
80023fd0:	e3a03000 	mov	r3, #0
80023fd4:	ea000029 	b	80024080 <namex+0x128>
80023fd8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023fdc:	e3530000 	cmp	r3, #0
80023fe0:	0a000007 	beq	80024004 <namex+0xac>
80023fe4:	e51b3010 	ldr	r3, [fp, #-16]
80023fe8:	e5d33000 	ldrb	r3, [r3]
80023fec:	e3530000 	cmp	r3, #0
80023ff0:	1a000003 	bne	80024004 <namex+0xac>
80023ff4:	e51b0008 	ldr	r0, [fp, #-8]
80023ff8:	ebfffcb5 	bl	800232d4 <iunlock>
80023ffc:	e51b3008 	ldr	r3, [fp, #-8]
80024000:	ea00001e 	b	80024080 <namex+0x128>
80024004:	e3a02000 	mov	r2, #0
80024008:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
8002400c:	e51b0008 	ldr	r0, [fp, #-8]
80024010:	ebffff06 	bl	80023c30 <dirlookup>
80024014:	e50b000c 	str	r0, [fp, #-12]
80024018:	e51b300c 	ldr	r3, [fp, #-12]
8002401c:	e3530000 	cmp	r3, #0
80024020:	1a000003 	bne	80024034 <namex+0xdc>
80024024:	e51b0008 	ldr	r0, [fp, #-8]
80024028:	ebfffd06 	bl	80023448 <iunlockput>
8002402c:	e3a03000 	mov	r3, #0
80024030:	ea000012 	b	80024080 <namex+0x128>
80024034:	e51b0008 	ldr	r0, [fp, #-8]
80024038:	ebfffd02 	bl	80023448 <iunlockput>
8002403c:	e51b300c 	ldr	r3, [fp, #-12]
80024040:	e50b3008 	str	r3, [fp, #-8]
80024044:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024048:	e51b0010 	ldr	r0, [fp, #-16]
8002404c:	ebffff7e 	bl	80023e4c <skipelem>
80024050:	e50b0010 	str	r0, [fp, #-16]
80024054:	e51b3010 	ldr	r3, [fp, #-16]
80024058:	e3530000 	cmp	r3, #0
8002405c:	1affffd3 	bne	80023fb0 <namex+0x58>
80024060:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024064:	e3530000 	cmp	r3, #0
80024068:	0a000003 	beq	8002407c <namex+0x124>
8002406c:	e51b0008 	ldr	r0, [fp, #-8]
80024070:	ebfffcb9 	bl	8002335c <iput>
80024074:	e3a03000 	mov	r3, #0
80024078:	ea000000 	b	80024080 <namex+0x128>
8002407c:	e51b3008 	ldr	r3, [fp, #-8]
80024080:	e1a00003 	mov	r0, r3
80024084:	e24bd004 	sub	sp, fp, #4
80024088:	e8bd8800 	pop	{fp, pc}
8002408c:	800af548 	.word	0x800af548

80024090 <namei>:
80024090:	e92d4800 	push	{fp, lr}
80024094:	e28db004 	add	fp, sp, #4
80024098:	e24dd018 	sub	sp, sp, #24
8002409c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800240a0:	e24b3014 	sub	r3, fp, #20
800240a4:	e1a02003 	mov	r2, r3
800240a8:	e3a01000 	mov	r1, #0
800240ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800240b0:	ebffffa8 	bl	80023f58 <namex>
800240b4:	e1a03000 	mov	r3, r0
800240b8:	e1a00003 	mov	r0, r3
800240bc:	e24bd004 	sub	sp, fp, #4
800240c0:	e8bd8800 	pop	{fp, pc}

800240c4 <nameiparent>:
800240c4:	e92d4800 	push	{fp, lr}
800240c8:	e28db004 	add	fp, sp, #4
800240cc:	e24dd008 	sub	sp, sp, #8
800240d0:	e50b0008 	str	r0, [fp, #-8]
800240d4:	e50b100c 	str	r1, [fp, #-12]
800240d8:	e51b200c 	ldr	r2, [fp, #-12]
800240dc:	e3a01001 	mov	r1, #1
800240e0:	e51b0008 	ldr	r0, [fp, #-8]
800240e4:	ebffff9b 	bl	80023f58 <namex>
800240e8:	e1a03000 	mov	r3, r0
800240ec:	e1a00003 	mov	r0, r3
800240f0:	e24bd004 	sub	sp, fp, #4
800240f4:	e8bd8800 	pop	{fp, pc}

800240f8 <initlog>:
800240f8:	e92d4800 	push	{fp, lr}
800240fc:	e28db004 	add	fp, sp, #4
80024100:	e24dd010 	sub	sp, sp, #16
80024104:	e59f1058 	ldr	r1, [pc, #88]	@ 80024164 <initlog+0x6c>
80024108:	e59f0058 	ldr	r0, [pc, #88]	@ 80024168 <initlog+0x70>
8002410c:	eb0006a8 	bl	80025bb4 <initlock>
80024110:	e24b3014 	sub	r3, fp, #20
80024114:	e1a01003 	mov	r1, r3
80024118:	e3a00001 	mov	r0, #1
8002411c:	ebfffa3c 	bl	80022a14 <readsb>
80024120:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024124:	e51b3008 	ldr	r3, [fp, #-8]
80024128:	e0423003 	sub	r3, r2, r3
8002412c:	e1a02003 	mov	r2, r3
80024130:	e59f3030 	ldr	r3, [pc, #48]	@ 80024168 <initlog+0x70>
80024134:	e5832034 	str	r2, [r3, #52]	@ 0x34
80024138:	e51b3008 	ldr	r3, [fp, #-8]
8002413c:	e1a02003 	mov	r2, r3
80024140:	e59f3020 	ldr	r3, [pc, #32]	@ 80024168 <initlog+0x70>
80024144:	e5832038 	str	r2, [r3, #56]	@ 0x38
80024148:	e59f3018 	ldr	r3, [pc, #24]	@ 80024168 <initlog+0x70>
8002414c:	e3a02001 	mov	r2, #1
80024150:	e5832040 	str	r2, [r3, #64]	@ 0x40
80024154:	eb00009b 	bl	800243c8 <recover_from_log>
80024158:	e1a00000 	nop			@ (mov r0, r0)
8002415c:	e24bd004 	sub	sp, fp, #4
80024160:	e8bd8800 	pop	{fp, pc}
80024164:	80029608 	.word	0x80029608
80024168:	800ad4b4 	.word	0x800ad4b4

8002416c <install_trans>:
8002416c:	e92d4800 	push	{fp, lr}
80024170:	e28db004 	add	fp, sp, #4
80024174:	e24dd010 	sub	sp, sp, #16
80024178:	e3a03000 	mov	r3, #0
8002417c:	e50b3008 	str	r3, [fp, #-8]
80024180:	ea000026 	b	80024220 <install_trans+0xb4>
80024184:	e59f30b8 	ldr	r3, [pc, #184]	@ 80024244 <install_trans+0xd8>
80024188:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
8002418c:	e1a00003 	mov	r0, r3
80024190:	e59f30ac 	ldr	r3, [pc, #172]	@ 80024244 <install_trans+0xd8>
80024194:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024198:	e51b3008 	ldr	r3, [fp, #-8]
8002419c:	e0823003 	add	r3, r2, r3
800241a0:	e2833001 	add	r3, r3, #1
800241a4:	e1a01003 	mov	r1, r3
800241a8:	ebfff259 	bl	80020b14 <bread>
800241ac:	e50b000c 	str	r0, [fp, #-12]
800241b0:	e59f308c 	ldr	r3, [pc, #140]	@ 80024244 <install_trans+0xd8>
800241b4:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800241b8:	e1a00003 	mov	r0, r3
800241bc:	e59f2080 	ldr	r2, [pc, #128]	@ 80024244 <install_trans+0xd8>
800241c0:	e51b3008 	ldr	r3, [fp, #-8]
800241c4:	e2833010 	add	r3, r3, #16
800241c8:	e1a03103 	lsl	r3, r3, #2
800241cc:	e0823003 	add	r3, r2, r3
800241d0:	e5933008 	ldr	r3, [r3, #8]
800241d4:	e1a01003 	mov	r1, r3
800241d8:	ebfff24d 	bl	80020b14 <bread>
800241dc:	e50b0010 	str	r0, [fp, #-16]
800241e0:	e51b3010 	ldr	r3, [fp, #-16]
800241e4:	e2830018 	add	r0, r3, #24
800241e8:	e51b300c 	ldr	r3, [fp, #-12]
800241ec:	e2833018 	add	r3, r3, #24
800241f0:	e3a02c02 	mov	r2, #512	@ 0x200
800241f4:	e1a01003 	mov	r1, r3
800241f8:	ebffeff2 	bl	800201c8 <memmove>
800241fc:	e51b0010 	ldr	r0, [fp, #-16]
80024200:	ebfff257 	bl	80020b64 <bwrite>
80024204:	e51b000c 	ldr	r0, [fp, #-12]
80024208:	ebfff26b 	bl	80020bbc <brelse>
8002420c:	e51b0010 	ldr	r0, [fp, #-16]
80024210:	ebfff269 	bl	80020bbc <brelse>
80024214:	e51b3008 	ldr	r3, [fp, #-8]
80024218:	e2833001 	add	r3, r3, #1
8002421c:	e50b3008 	str	r3, [fp, #-8]
80024220:	e59f301c 	ldr	r3, [pc, #28]	@ 80024244 <install_trans+0xd8>
80024224:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024228:	e51b2008 	ldr	r2, [fp, #-8]
8002422c:	e1520003 	cmp	r2, r3
80024230:	baffffd3 	blt	80024184 <install_trans+0x18>
80024234:	e1a00000 	nop			@ (mov r0, r0)
80024238:	e1a00000 	nop			@ (mov r0, r0)
8002423c:	e24bd004 	sub	sp, fp, #4
80024240:	e8bd8800 	pop	{fp, pc}
80024244:	800ad4b4 	.word	0x800ad4b4

80024248 <read_head>:
80024248:	e92d4800 	push	{fp, lr}
8002424c:	e28db004 	add	fp, sp, #4
80024250:	e24dd010 	sub	sp, sp, #16
80024254:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024300 <read_head+0xb8>
80024258:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
8002425c:	e1a02003 	mov	r2, r3
80024260:	e59f3098 	ldr	r3, [pc, #152]	@ 80024300 <read_head+0xb8>
80024264:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024268:	e1a01003 	mov	r1, r3
8002426c:	e1a00002 	mov	r0, r2
80024270:	ebfff227 	bl	80020b14 <bread>
80024274:	e50b000c 	str	r0, [fp, #-12]
80024278:	e51b300c 	ldr	r3, [fp, #-12]
8002427c:	e2833018 	add	r3, r3, #24
80024280:	e50b3010 	str	r3, [fp, #-16]
80024284:	e51b3010 	ldr	r3, [fp, #-16]
80024288:	e5933000 	ldr	r3, [r3]
8002428c:	e59f206c 	ldr	r2, [pc, #108]	@ 80024300 <read_head+0xb8>
80024290:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024294:	e3a03000 	mov	r3, #0
80024298:	e50b3008 	str	r3, [fp, #-8]
8002429c:	ea00000d 	b	800242d8 <read_head+0x90>
800242a0:	e51b2010 	ldr	r2, [fp, #-16]
800242a4:	e51b3008 	ldr	r3, [fp, #-8]
800242a8:	e1a03103 	lsl	r3, r3, #2
800242ac:	e0823003 	add	r3, r2, r3
800242b0:	e5932004 	ldr	r2, [r3, #4]
800242b4:	e59f1044 	ldr	r1, [pc, #68]	@ 80024300 <read_head+0xb8>
800242b8:	e51b3008 	ldr	r3, [fp, #-8]
800242bc:	e2833010 	add	r3, r3, #16
800242c0:	e1a03103 	lsl	r3, r3, #2
800242c4:	e0813003 	add	r3, r1, r3
800242c8:	e5832008 	str	r2, [r3, #8]
800242cc:	e51b3008 	ldr	r3, [fp, #-8]
800242d0:	e2833001 	add	r3, r3, #1
800242d4:	e50b3008 	str	r3, [fp, #-8]
800242d8:	e59f3020 	ldr	r3, [pc, #32]	@ 80024300 <read_head+0xb8>
800242dc:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800242e0:	e51b2008 	ldr	r2, [fp, #-8]
800242e4:	e1520003 	cmp	r2, r3
800242e8:	baffffec 	blt	800242a0 <read_head+0x58>
800242ec:	e51b000c 	ldr	r0, [fp, #-12]
800242f0:	ebfff231 	bl	80020bbc <brelse>
800242f4:	e1a00000 	nop			@ (mov r0, r0)
800242f8:	e24bd004 	sub	sp, fp, #4
800242fc:	e8bd8800 	pop	{fp, pc}
80024300:	800ad4b4 	.word	0x800ad4b4

80024304 <write_head>:
80024304:	e92d4800 	push	{fp, lr}
80024308:	e28db004 	add	fp, sp, #4
8002430c:	e24dd010 	sub	sp, sp, #16
80024310:	e59f30ac 	ldr	r3, [pc, #172]	@ 800243c4 <write_head+0xc0>
80024314:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024318:	e1a02003 	mov	r2, r3
8002431c:	e59f30a0 	ldr	r3, [pc, #160]	@ 800243c4 <write_head+0xc0>
80024320:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024324:	e1a01003 	mov	r1, r3
80024328:	e1a00002 	mov	r0, r2
8002432c:	ebfff1f8 	bl	80020b14 <bread>
80024330:	e50b000c 	str	r0, [fp, #-12]
80024334:	e51b300c 	ldr	r3, [fp, #-12]
80024338:	e2833018 	add	r3, r3, #24
8002433c:	e50b3010 	str	r3, [fp, #-16]
80024340:	e59f307c 	ldr	r3, [pc, #124]	@ 800243c4 <write_head+0xc0>
80024344:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024348:	e51b3010 	ldr	r3, [fp, #-16]
8002434c:	e5832000 	str	r2, [r3]
80024350:	e3a03000 	mov	r3, #0
80024354:	e50b3008 	str	r3, [fp, #-8]
80024358:	ea00000d 	b	80024394 <write_head+0x90>
8002435c:	e59f2060 	ldr	r2, [pc, #96]	@ 800243c4 <write_head+0xc0>
80024360:	e51b3008 	ldr	r3, [fp, #-8]
80024364:	e2833010 	add	r3, r3, #16
80024368:	e1a03103 	lsl	r3, r3, #2
8002436c:	e0823003 	add	r3, r2, r3
80024370:	e5932008 	ldr	r2, [r3, #8]
80024374:	e51b1010 	ldr	r1, [fp, #-16]
80024378:	e51b3008 	ldr	r3, [fp, #-8]
8002437c:	e1a03103 	lsl	r3, r3, #2
80024380:	e0813003 	add	r3, r1, r3
80024384:	e5832004 	str	r2, [r3, #4]
80024388:	e51b3008 	ldr	r3, [fp, #-8]
8002438c:	e2833001 	add	r3, r3, #1
80024390:	e50b3008 	str	r3, [fp, #-8]
80024394:	e59f3028 	ldr	r3, [pc, #40]	@ 800243c4 <write_head+0xc0>
80024398:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002439c:	e51b2008 	ldr	r2, [fp, #-8]
800243a0:	e1520003 	cmp	r2, r3
800243a4:	baffffec 	blt	8002435c <write_head+0x58>
800243a8:	e51b000c 	ldr	r0, [fp, #-12]
800243ac:	ebfff1ec 	bl	80020b64 <bwrite>
800243b0:	e51b000c 	ldr	r0, [fp, #-12]
800243b4:	ebfff200 	bl	80020bbc <brelse>
800243b8:	e1a00000 	nop			@ (mov r0, r0)
800243bc:	e24bd004 	sub	sp, fp, #4
800243c0:	e8bd8800 	pop	{fp, pc}
800243c4:	800ad4b4 	.word	0x800ad4b4

800243c8 <recover_from_log>:
800243c8:	e92d4800 	push	{fp, lr}
800243cc:	e28db004 	add	fp, sp, #4
800243d0:	ebffff9c 	bl	80024248 <read_head>
800243d4:	ebffff64 	bl	8002416c <install_trans>
800243d8:	e59f3010 	ldr	r3, [pc, #16]	@ 800243f0 <recover_from_log+0x28>
800243dc:	e3a02000 	mov	r2, #0
800243e0:	e5832044 	str	r2, [r3, #68]	@ 0x44
800243e4:	ebffffc6 	bl	80024304 <write_head>
800243e8:	e1a00000 	nop			@ (mov r0, r0)
800243ec:	e8bd8800 	pop	{fp, pc}
800243f0:	800ad4b4 	.word	0x800ad4b4

800243f4 <begin_trans>:
800243f4:	e92d4800 	push	{fp, lr}
800243f8:	e28db004 	add	fp, sp, #4
800243fc:	e59f003c 	ldr	r0, [pc, #60]	@ 80024440 <begin_trans+0x4c>
80024400:	eb0005fd 	bl	80025bfc <acquire>
80024404:	ea000002 	b	80024414 <begin_trans+0x20>
80024408:	e59f1030 	ldr	r1, [pc, #48]	@ 80024440 <begin_trans+0x4c>
8002440c:	e59f002c 	ldr	r0, [pc, #44]	@ 80024440 <begin_trans+0x4c>
80024410:	eb00051f 	bl	80025894 <sleep>
80024414:	e59f3024 	ldr	r3, [pc, #36]	@ 80024440 <begin_trans+0x4c>
80024418:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
8002441c:	e3530000 	cmp	r3, #0
80024420:	1afffff8 	bne	80024408 <begin_trans+0x14>
80024424:	e59f3014 	ldr	r3, [pc, #20]	@ 80024440 <begin_trans+0x4c>
80024428:	e3a02001 	mov	r2, #1
8002442c:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024430:	e59f0008 	ldr	r0, [pc, #8]	@ 80024440 <begin_trans+0x4c>
80024434:	eb0005fb 	bl	80025c28 <release>
80024438:	e1a00000 	nop			@ (mov r0, r0)
8002443c:	e8bd8800 	pop	{fp, pc}
80024440:	800ad4b4 	.word	0x800ad4b4

80024444 <commit_trans>:
80024444:	e92d4800 	push	{fp, lr}
80024448:	e28db004 	add	fp, sp, #4
8002444c:	e59f304c 	ldr	r3, [pc, #76]	@ 800244a0 <commit_trans+0x5c>
80024450:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024454:	e3530000 	cmp	r3, #0
80024458:	da000005 	ble	80024474 <commit_trans+0x30>
8002445c:	ebffffa8 	bl	80024304 <write_head>
80024460:	ebffff41 	bl	8002416c <install_trans>
80024464:	e59f3034 	ldr	r3, [pc, #52]	@ 800244a0 <commit_trans+0x5c>
80024468:	e3a02000 	mov	r2, #0
8002446c:	e5832044 	str	r2, [r3, #68]	@ 0x44
80024470:	ebffffa3 	bl	80024304 <write_head>
80024474:	e59f0024 	ldr	r0, [pc, #36]	@ 800244a0 <commit_trans+0x5c>
80024478:	eb0005df 	bl	80025bfc <acquire>
8002447c:	e59f301c 	ldr	r3, [pc, #28]	@ 800244a0 <commit_trans+0x5c>
80024480:	e3a02000 	mov	r2, #0
80024484:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024488:	e59f0010 	ldr	r0, [pc, #16]	@ 800244a0 <commit_trans+0x5c>
8002448c:	eb000555 	bl	800259e8 <wakeup>
80024490:	e59f0008 	ldr	r0, [pc, #8]	@ 800244a0 <commit_trans+0x5c>
80024494:	eb0005e3 	bl	80025c28 <release>
80024498:	e1a00000 	nop			@ (mov r0, r0)
8002449c:	e8bd8800 	pop	{fp, pc}
800244a0:	800ad4b4 	.word	0x800ad4b4

800244a4 <log_write>:
800244a4:	e92d4800 	push	{fp, lr}
800244a8:	e28db004 	add	fp, sp, #4
800244ac:	e24dd010 	sub	sp, sp, #16
800244b0:	e50b0010 	str	r0, [fp, #-16]
800244b4:	e59f3164 	ldr	r3, [pc, #356]	@ 80024620 <log_write+0x17c>
800244b8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800244bc:	e3530009 	cmp	r3, #9
800244c0:	ca000006 	bgt	800244e0 <log_write+0x3c>
800244c4:	e59f3154 	ldr	r3, [pc, #340]	@ 80024620 <log_write+0x17c>
800244c8:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
800244cc:	e59f314c 	ldr	r3, [pc, #332]	@ 80024620 <log_write+0x17c>
800244d0:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
800244d4:	e2433001 	sub	r3, r3, #1
800244d8:	e1520003 	cmp	r2, r3
800244dc:	ba000001 	blt	800244e8 <log_write+0x44>
800244e0:	e59f013c 	ldr	r0, [pc, #316]	@ 80024624 <log_write+0x180>
800244e4:	ebfff582 	bl	80021af4 <panic>
800244e8:	e59f3130 	ldr	r3, [pc, #304]	@ 80024620 <log_write+0x17c>
800244ec:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800244f0:	e3530000 	cmp	r3, #0
800244f4:	1a000001 	bne	80024500 <log_write+0x5c>
800244f8:	e59f0128 	ldr	r0, [pc, #296]	@ 80024628 <log_write+0x184>
800244fc:	ebfff57c 	bl	80021af4 <panic>
80024500:	e3a03000 	mov	r3, #0
80024504:	e50b3008 	str	r3, [fp, #-8]
80024508:	ea00000d 	b	80024544 <log_write+0xa0>
8002450c:	e59f210c 	ldr	r2, [pc, #268]	@ 80024620 <log_write+0x17c>
80024510:	e51b3008 	ldr	r3, [fp, #-8]
80024514:	e2833010 	add	r3, r3, #16
80024518:	e1a03103 	lsl	r3, r3, #2
8002451c:	e0823003 	add	r3, r2, r3
80024520:	e5933008 	ldr	r3, [r3, #8]
80024524:	e1a02003 	mov	r2, r3
80024528:	e51b3010 	ldr	r3, [fp, #-16]
8002452c:	e5933008 	ldr	r3, [r3, #8]
80024530:	e1520003 	cmp	r2, r3
80024534:	0a000008 	beq	8002455c <log_write+0xb8>
80024538:	e51b3008 	ldr	r3, [fp, #-8]
8002453c:	e2833001 	add	r3, r3, #1
80024540:	e50b3008 	str	r3, [fp, #-8]
80024544:	e59f30d4 	ldr	r3, [pc, #212]	@ 80024620 <log_write+0x17c>
80024548:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002454c:	e51b2008 	ldr	r2, [fp, #-8]
80024550:	e1520003 	cmp	r2, r3
80024554:	baffffec 	blt	8002450c <log_write+0x68>
80024558:	ea000000 	b	80024560 <log_write+0xbc>
8002455c:	e1a00000 	nop			@ (mov r0, r0)
80024560:	e51b3010 	ldr	r3, [fp, #-16]
80024564:	e5933008 	ldr	r3, [r3, #8]
80024568:	e1a01003 	mov	r1, r3
8002456c:	e59f20ac 	ldr	r2, [pc, #172]	@ 80024620 <log_write+0x17c>
80024570:	e51b3008 	ldr	r3, [fp, #-8]
80024574:	e2833010 	add	r3, r3, #16
80024578:	e1a03103 	lsl	r3, r3, #2
8002457c:	e0823003 	add	r3, r2, r3
80024580:	e5831008 	str	r1, [r3, #8]
80024584:	e51b3010 	ldr	r3, [fp, #-16]
80024588:	e5930004 	ldr	r0, [r3, #4]
8002458c:	e59f308c 	ldr	r3, [pc, #140]	@ 80024620 <log_write+0x17c>
80024590:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024594:	e51b3008 	ldr	r3, [fp, #-8]
80024598:	e0823003 	add	r3, r2, r3
8002459c:	e2833001 	add	r3, r3, #1
800245a0:	e1a01003 	mov	r1, r3
800245a4:	ebfff15a 	bl	80020b14 <bread>
800245a8:	e50b000c 	str	r0, [fp, #-12]
800245ac:	e51b300c 	ldr	r3, [fp, #-12]
800245b0:	e2830018 	add	r0, r3, #24
800245b4:	e51b3010 	ldr	r3, [fp, #-16]
800245b8:	e2833018 	add	r3, r3, #24
800245bc:	e3a02c02 	mov	r2, #512	@ 0x200
800245c0:	e1a01003 	mov	r1, r3
800245c4:	ebffeeff 	bl	800201c8 <memmove>
800245c8:	e51b000c 	ldr	r0, [fp, #-12]
800245cc:	ebfff164 	bl	80020b64 <bwrite>
800245d0:	e51b000c 	ldr	r0, [fp, #-12]
800245d4:	ebfff178 	bl	80020bbc <brelse>
800245d8:	e59f3040 	ldr	r3, [pc, #64]	@ 80024620 <log_write+0x17c>
800245dc:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800245e0:	e51b2008 	ldr	r2, [fp, #-8]
800245e4:	e1520003 	cmp	r2, r3
800245e8:	1a000004 	bne	80024600 <log_write+0x15c>
800245ec:	e59f302c 	ldr	r3, [pc, #44]	@ 80024620 <log_write+0x17c>
800245f0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800245f4:	e2833001 	add	r3, r3, #1
800245f8:	e59f2020 	ldr	r2, [pc, #32]	@ 80024620 <log_write+0x17c>
800245fc:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024600:	e51b3010 	ldr	r3, [fp, #-16]
80024604:	e5933000 	ldr	r3, [r3]
80024608:	e3832004 	orr	r2, r3, #4
8002460c:	e51b3010 	ldr	r3, [fp, #-16]
80024610:	e5832000 	str	r2, [r3]
80024614:	e1a00000 	nop			@ (mov r0, r0)
80024618:	e24bd004 	sub	sp, fp, #4
8002461c:	e8bd8800 	pop	{fp, pc}
80024620:	800ad4b4 	.word	0x800ad4b4
80024624:	8002960c 	.word	0x8002960c
80024628:	80029624 	.word	0x80029624

8002462c <kmain>:
8002462c:	e92d4800 	push	{fp, lr}
80024630:	e28db004 	add	fp, sp, #4
80024634:	e24dd008 	sub	sp, sp, #8
80024638:	e59f30a4 	ldr	r3, [pc, #164]	@ 800246e4 <kmain+0xb8>
8002463c:	e59f20a4 	ldr	r2, [pc, #164]	@ 800246e8 <kmain+0xbc>
80024640:	e5832000 	str	r2, [r3]
80024644:	e59f00a0 	ldr	r0, [pc, #160]	@ 800246ec <kmain+0xc0>
80024648:	eb00123b 	bl	80028f3c <uart_init>
8002464c:	e59f309c 	ldr	r3, [pc, #156]	@ 800246f0 <kmain+0xc4>
80024650:	e50b3008 	str	r3, [fp, #-8]
80024654:	eb000d37 	bl	80027b38 <init_vmm>
80024658:	e59f3094 	ldr	r3, [pc, #148]	@ 800246f4 <kmain+0xc8>
8002465c:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
80024660:	e2833003 	add	r3, r3, #3
80024664:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80024668:	e3c33003 	bic	r3, r3, #3
8002466c:	e51b1008 	ldr	r1, [fp, #-8]
80024670:	e1a00003 	mov	r0, r3
80024674:	eb000d63 	bl	80027c08 <kpt_freerange>
80024678:	e51b3008 	ldr	r3, [fp, #-8]
8002467c:	e2833b01 	add	r3, r3, #1024	@ 0x400
80024680:	e59f1070 	ldr	r1, [pc, #112]	@ 800246f8 <kmain+0xcc>
80024684:	e1a00003 	mov	r0, r3
80024688:	eb000d5e 	bl	80027c08 <kpt_freerange>
8002468c:	e3a01302 	mov	r1, #134217728	@ 0x8000000
80024690:	e3a00601 	mov	r0, #1048576	@ 0x100000
80024694:	eb0010ed 	bl	80028a50 <paging_init>
80024698:	ebfff1c6 	bl	80020db8 <kmem_init>
8002469c:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
800246a0:	e59f0050 	ldr	r0, [pc, #80]	@ 800246f8 <kmain+0xcc>
800246a4:	ebfff1cc 	bl	80020ddc <kmem_init2>
800246a8:	eb000c26 	bl	80027748 <trap_init>
800246ac:	e59f0048 	ldr	r0, [pc, #72]	@ 800246fc <kmain+0xd0>
800246b0:	eb00113d 	bl	80028bac <pic_init>
800246b4:	eb001251 	bl	80029000 <uart_enable_rx>
800246b8:	ebfff644 	bl	80021fd0 <consoleinit>
800246bc:	eb0001b7 	bl	80024da0 <pinit>
800246c0:	ebfff082 	bl	800208d0 <binit>
800246c4:	ebfff78e 	bl	80022504 <fileinit>
800246c8:	ebfff9ba 	bl	80022db8 <iinit>
800246cc:	eb00000b 	bl	80024700 <ideinit>
800246d0:	e3a0000a 	mov	r0, #10
800246d4:	eb0011c7 	bl	80028df8 <timer_init>
800246d8:	ebffefa6 	bl	80020578 <sti>
800246dc:	eb000221 	bl	80024f68 <userinit>
800246e0:	eb0003e1 	bl	8002566c <scheduler>
800246e4:	800ad604 	.word	0x800ad604
800246e8:	800ad524 	.word	0x800ad524
800246ec:	901f1000 	.word	0x901f1000
800246f0:	800f0000 	.word	0x800f0000
800246f4:	800b0000 	.word	0x800b0000
800246f8:	80100000 	.word	0x80100000
800246fc:	90140000 	.word	0x90140000

80024700 <ideinit>:
80024700:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024704:	e28db000 	add	fp, sp, #0
80024708:	e59f3028 	ldr	r3, [pc, #40]	@ 80024738 <ideinit+0x38>
8002470c:	e59f2028 	ldr	r2, [pc, #40]	@ 8002473c <ideinit+0x3c>
80024710:	e5832000 	str	r2, [r3]
80024714:	e59f3024 	ldr	r3, [pc, #36]	@ 80024740 <ideinit+0x40>
80024718:	e1a034a3 	lsr	r3, r3, #9
8002471c:	e1a02003 	mov	r2, r3
80024720:	e59f301c 	ldr	r3, [pc, #28]	@ 80024744 <ideinit+0x44>
80024724:	e5832000 	str	r2, [r3]
80024728:	e1a00000 	nop			@ (mov r0, r0)
8002472c:	e28bd000 	add	sp, fp, #0
80024730:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024734:	e12fff1e 	bx	lr
80024738:	800ad60c 	.word	0x800ad60c
8002473c:	8002a0cc 	.word	0x8002a0cc
80024740:	00080000 	.word	0x00080000
80024744:	800ad608 	.word	0x800ad608

80024748 <ideintr>:
80024748:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002474c:	e28db000 	add	fp, sp, #0
80024750:	e1a00000 	nop			@ (mov r0, r0)
80024754:	e28bd000 	add	sp, fp, #0
80024758:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002475c:	e12fff1e 	bx	lr

80024760 <iderw>:
80024760:	e92d4800 	push	{fp, lr}
80024764:	e28db004 	add	fp, sp, #4
80024768:	e24dd010 	sub	sp, sp, #16
8002476c:	e50b0010 	str	r0, [fp, #-16]
80024770:	e51b3010 	ldr	r3, [fp, #-16]
80024774:	e5933000 	ldr	r3, [r3]
80024778:	e2033001 	and	r3, r3, #1
8002477c:	e3530000 	cmp	r3, #0
80024780:	1a000001 	bne	8002478c <iderw+0x2c>
80024784:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024878 <iderw+0x118>
80024788:	ebfff4d9 	bl	80021af4 <panic>
8002478c:	e51b3010 	ldr	r3, [fp, #-16]
80024790:	e5933000 	ldr	r3, [r3]
80024794:	e2033006 	and	r3, r3, #6
80024798:	e3530002 	cmp	r3, #2
8002479c:	1a000001 	bne	800247a8 <iderw+0x48>
800247a0:	e59f00d4 	ldr	r0, [pc, #212]	@ 8002487c <iderw+0x11c>
800247a4:	ebfff4d2 	bl	80021af4 <panic>
800247a8:	e51b3010 	ldr	r3, [fp, #-16]
800247ac:	e5933004 	ldr	r3, [r3, #4]
800247b0:	e3530001 	cmp	r3, #1
800247b4:	0a000001 	beq	800247c0 <iderw+0x60>
800247b8:	e59f00c0 	ldr	r0, [pc, #192]	@ 80024880 <iderw+0x120>
800247bc:	ebfff4cc 	bl	80021af4 <panic>
800247c0:	e51b3010 	ldr	r3, [fp, #-16]
800247c4:	e5933008 	ldr	r3, [r3, #8]
800247c8:	e59f20b4 	ldr	r2, [pc, #180]	@ 80024884 <iderw+0x124>
800247cc:	e5922000 	ldr	r2, [r2]
800247d0:	e1530002 	cmp	r3, r2
800247d4:	3a000001 	bcc	800247e0 <iderw+0x80>
800247d8:	e59f00a8 	ldr	r0, [pc, #168]	@ 80024888 <iderw+0x128>
800247dc:	ebfff4c4 	bl	80021af4 <panic>
800247e0:	e59f30a4 	ldr	r3, [pc, #164]	@ 8002488c <iderw+0x12c>
800247e4:	e5932000 	ldr	r2, [r3]
800247e8:	e51b3010 	ldr	r3, [fp, #-16]
800247ec:	e5933008 	ldr	r3, [r3, #8]
800247f0:	e1a03483 	lsl	r3, r3, #9
800247f4:	e0823003 	add	r3, r2, r3
800247f8:	e50b3008 	str	r3, [fp, #-8]
800247fc:	e51b3010 	ldr	r3, [fp, #-16]
80024800:	e5933000 	ldr	r3, [r3]
80024804:	e2033004 	and	r3, r3, #4
80024808:	e3530000 	cmp	r3, #0
8002480c:	0a00000b 	beq	80024840 <iderw+0xe0>
80024810:	e51b3010 	ldr	r3, [fp, #-16]
80024814:	e5933000 	ldr	r3, [r3]
80024818:	e3c32004 	bic	r2, r3, #4
8002481c:	e51b3010 	ldr	r3, [fp, #-16]
80024820:	e5832000 	str	r2, [r3]
80024824:	e51b3010 	ldr	r3, [fp, #-16]
80024828:	e2833018 	add	r3, r3, #24
8002482c:	e3a02c02 	mov	r2, #512	@ 0x200
80024830:	e1a01003 	mov	r1, r3
80024834:	e51b0008 	ldr	r0, [fp, #-8]
80024838:	ebffee62 	bl	800201c8 <memmove>
8002483c:	ea000005 	b	80024858 <iderw+0xf8>
80024840:	e51b3010 	ldr	r3, [fp, #-16]
80024844:	e2833018 	add	r3, r3, #24
80024848:	e3a02c02 	mov	r2, #512	@ 0x200
8002484c:	e51b1008 	ldr	r1, [fp, #-8]
80024850:	e1a00003 	mov	r0, r3
80024854:	ebffee5b 	bl	800201c8 <memmove>
80024858:	e51b3010 	ldr	r3, [fp, #-16]
8002485c:	e5933000 	ldr	r3, [r3]
80024860:	e3832002 	orr	r2, r3, #2
80024864:	e51b3010 	ldr	r3, [fp, #-16]
80024868:	e5832000 	str	r2, [r3]
8002486c:	e1a00000 	nop			@ (mov r0, r0)
80024870:	e24bd004 	sub	sp, fp, #4
80024874:	e8bd8800 	pop	{fp, pc}
80024878:	8002963c 	.word	0x8002963c
8002487c:	80029650 	.word	0x80029650
80024880:	80029668 	.word	0x80029668
80024884:	800ad608 	.word	0x800ad608
80024888:	80029688 	.word	0x80029688
8002488c:	800ad60c 	.word	0x800ad60c

80024890 <pipealloc>:
80024890:	e92d4800 	push	{fp, lr}
80024894:	e28db004 	add	fp, sp, #4
80024898:	e24dd010 	sub	sp, sp, #16
8002489c:	e50b0010 	str	r0, [fp, #-16]
800248a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800248a4:	e3a03000 	mov	r3, #0
800248a8:	e50b3008 	str	r3, [fp, #-8]
800248ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800248b0:	e3a02000 	mov	r2, #0
800248b4:	e5832000 	str	r2, [r3]
800248b8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800248bc:	e5932000 	ldr	r2, [r3]
800248c0:	e51b3010 	ldr	r3, [fp, #-16]
800248c4:	e5832000 	str	r2, [r3]
800248c8:	ebfff716 	bl	80022528 <filealloc>
800248cc:	e1a02000 	mov	r2, r0
800248d0:	e51b3010 	ldr	r3, [fp, #-16]
800248d4:	e5832000 	str	r2, [r3]
800248d8:	e51b3010 	ldr	r3, [fp, #-16]
800248dc:	e5933000 	ldr	r3, [r3]
800248e0:	e3530000 	cmp	r3, #0
800248e4:	0a000042 	beq	800249f4 <pipealloc+0x164>
800248e8:	ebfff70e 	bl	80022528 <filealloc>
800248ec:	e1a02000 	mov	r2, r0
800248f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800248f4:	e5832000 	str	r2, [r3]
800248f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800248fc:	e5933000 	ldr	r3, [r3]
80024900:	e3530000 	cmp	r3, #0
80024904:	0a00003a 	beq	800249f4 <pipealloc+0x164>
80024908:	e3a00f91 	mov	r0, #580	@ 0x244
8002490c:	ebfff34e 	bl	8002164c <get_order>
80024910:	e1a03000 	mov	r3, r0
80024914:	e1a00003 	mov	r0, r3
80024918:	ebfff2c1 	bl	80021424 <kmalloc>
8002491c:	e50b0008 	str	r0, [fp, #-8]
80024920:	e51b3008 	ldr	r3, [fp, #-8]
80024924:	e3530000 	cmp	r3, #0
80024928:	0a000033 	beq	800249fc <pipealloc+0x16c>
8002492c:	e51b3008 	ldr	r3, [fp, #-8]
80024930:	e3a02001 	mov	r2, #1
80024934:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024938:	e51b3008 	ldr	r3, [fp, #-8]
8002493c:	e3a02001 	mov	r2, #1
80024940:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024944:	e51b3008 	ldr	r3, [fp, #-8]
80024948:	e3a02000 	mov	r2, #0
8002494c:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024950:	e51b3008 	ldr	r3, [fp, #-8]
80024954:	e3a02000 	mov	r2, #0
80024958:	e5832234 	str	r2, [r3, #564]	@ 0x234
8002495c:	e51b3008 	ldr	r3, [fp, #-8]
80024960:	e59f110c 	ldr	r1, [pc, #268]	@ 80024a74 <pipealloc+0x1e4>
80024964:	e1a00003 	mov	r0, r3
80024968:	eb000491 	bl	80025bb4 <initlock>
8002496c:	e51b3010 	ldr	r3, [fp, #-16]
80024970:	e5933000 	ldr	r3, [r3]
80024974:	e3a02001 	mov	r2, #1
80024978:	e5c32000 	strb	r2, [r3]
8002497c:	e51b3010 	ldr	r3, [fp, #-16]
80024980:	e5933000 	ldr	r3, [r3]
80024984:	e3a02001 	mov	r2, #1
80024988:	e5c32008 	strb	r2, [r3, #8]
8002498c:	e51b3010 	ldr	r3, [fp, #-16]
80024990:	e5933000 	ldr	r3, [r3]
80024994:	e3a02000 	mov	r2, #0
80024998:	e5c32009 	strb	r2, [r3, #9]
8002499c:	e51b3010 	ldr	r3, [fp, #-16]
800249a0:	e5933000 	ldr	r3, [r3]
800249a4:	e51b2008 	ldr	r2, [fp, #-8]
800249a8:	e583200c 	str	r2, [r3, #12]
800249ac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249b0:	e5933000 	ldr	r3, [r3]
800249b4:	e3a02001 	mov	r2, #1
800249b8:	e5c32000 	strb	r2, [r3]
800249bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249c0:	e5933000 	ldr	r3, [r3]
800249c4:	e3a02000 	mov	r2, #0
800249c8:	e5c32008 	strb	r2, [r3, #8]
800249cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249d0:	e5933000 	ldr	r3, [r3]
800249d4:	e3a02001 	mov	r2, #1
800249d8:	e5c32009 	strb	r2, [r3, #9]
800249dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800249e0:	e5933000 	ldr	r3, [r3]
800249e4:	e51b2008 	ldr	r2, [fp, #-8]
800249e8:	e583200c 	str	r2, [r3, #12]
800249ec:	e3a03000 	mov	r3, #0
800249f0:	ea00001c 	b	80024a68 <pipealloc+0x1d8>
800249f4:	e1a00000 	nop			@ (mov r0, r0)
800249f8:	ea000000 	b	80024a00 <pipealloc+0x170>
800249fc:	e1a00000 	nop			@ (mov r0, r0)
80024a00:	e51b3008 	ldr	r3, [fp, #-8]
80024a04:	e3530000 	cmp	r3, #0
80024a08:	0a000005 	beq	80024a24 <pipealloc+0x194>
80024a0c:	e3a00f91 	mov	r0, #580	@ 0x244
80024a10:	ebfff30d 	bl	8002164c <get_order>
80024a14:	e1a03000 	mov	r3, r0
80024a18:	e1a01003 	mov	r1, r3
80024a1c:	e51b0008 	ldr	r0, [fp, #-8]
80024a20:	ebfff2d6 	bl	80021580 <kfree>
80024a24:	e51b3010 	ldr	r3, [fp, #-16]
80024a28:	e5933000 	ldr	r3, [r3]
80024a2c:	e3530000 	cmp	r3, #0
80024a30:	0a000003 	beq	80024a44 <pipealloc+0x1b4>
80024a34:	e51b3010 	ldr	r3, [fp, #-16]
80024a38:	e5933000 	ldr	r3, [r3]
80024a3c:	e1a00003 	mov	r0, r3
80024a40:	ebfff6f4 	bl	80022618 <fileclose>
80024a44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a48:	e5933000 	ldr	r3, [r3]
80024a4c:	e3530000 	cmp	r3, #0
80024a50:	0a000003 	beq	80024a64 <pipealloc+0x1d4>
80024a54:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a58:	e5933000 	ldr	r3, [r3]
80024a5c:	e1a00003 	mov	r0, r3
80024a60:	ebfff6ec 	bl	80022618 <fileclose>
80024a64:	e3e03000 	mvn	r3, #0
80024a68:	e1a00003 	mov	r0, r3
80024a6c:	e24bd004 	sub	sp, fp, #4
80024a70:	e8bd8800 	pop	{fp, pc}
80024a74:	800296a4 	.word	0x800296a4

80024a78 <pipeclose>:
80024a78:	e92d4800 	push	{fp, lr}
80024a7c:	e28db004 	add	fp, sp, #4
80024a80:	e24dd008 	sub	sp, sp, #8
80024a84:	e50b0008 	str	r0, [fp, #-8]
80024a88:	e50b100c 	str	r1, [fp, #-12]
80024a8c:	e51b3008 	ldr	r3, [fp, #-8]
80024a90:	e1a00003 	mov	r0, r3
80024a94:	eb000458 	bl	80025bfc <acquire>
80024a98:	e51b300c 	ldr	r3, [fp, #-12]
80024a9c:	e3530000 	cmp	r3, #0
80024aa0:	0a000007 	beq	80024ac4 <pipeclose+0x4c>
80024aa4:	e51b3008 	ldr	r3, [fp, #-8]
80024aa8:	e3a02000 	mov	r2, #0
80024aac:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024ab0:	e51b3008 	ldr	r3, [fp, #-8]
80024ab4:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024ab8:	e1a00003 	mov	r0, r3
80024abc:	eb0003c9 	bl	800259e8 <wakeup>
80024ac0:	ea000006 	b	80024ae0 <pipeclose+0x68>
80024ac4:	e51b3008 	ldr	r3, [fp, #-8]
80024ac8:	e3a02000 	mov	r2, #0
80024acc:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024ad0:	e51b3008 	ldr	r3, [fp, #-8]
80024ad4:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024ad8:	e1a00003 	mov	r0, r3
80024adc:	eb0003c1 	bl	800259e8 <wakeup>
80024ae0:	e51b3008 	ldr	r3, [fp, #-8]
80024ae4:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024ae8:	e3530000 	cmp	r3, #0
80024aec:	1a00000d 	bne	80024b28 <pipeclose+0xb0>
80024af0:	e51b3008 	ldr	r3, [fp, #-8]
80024af4:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024af8:	e3530000 	cmp	r3, #0
80024afc:	1a000009 	bne	80024b28 <pipeclose+0xb0>
80024b00:	e51b3008 	ldr	r3, [fp, #-8]
80024b04:	e1a00003 	mov	r0, r3
80024b08:	eb000446 	bl	80025c28 <release>
80024b0c:	e3a00f91 	mov	r0, #580	@ 0x244
80024b10:	ebfff2cd 	bl	8002164c <get_order>
80024b14:	e1a03000 	mov	r3, r0
80024b18:	e1a01003 	mov	r1, r3
80024b1c:	e51b0008 	ldr	r0, [fp, #-8]
80024b20:	ebfff296 	bl	80021580 <kfree>
80024b24:	ea000003 	b	80024b38 <pipeclose+0xc0>
80024b28:	e51b3008 	ldr	r3, [fp, #-8]
80024b2c:	e1a00003 	mov	r0, r3
80024b30:	eb00043c 	bl	80025c28 <release>
80024b34:	e1a00000 	nop			@ (mov r0, r0)
80024b38:	e1a00000 	nop			@ (mov r0, r0)
80024b3c:	e24bd004 	sub	sp, fp, #4
80024b40:	e8bd8800 	pop	{fp, pc}

80024b44 <pipewrite>:
80024b44:	e92d4800 	push	{fp, lr}
80024b48:	e28db004 	add	fp, sp, #4
80024b4c:	e24dd018 	sub	sp, sp, #24
80024b50:	e50b0010 	str	r0, [fp, #-16]
80024b54:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024b58:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024b5c:	e51b3010 	ldr	r3, [fp, #-16]
80024b60:	e1a00003 	mov	r0, r3
80024b64:	eb000424 	bl	80025bfc <acquire>
80024b68:	e3a03000 	mov	r3, #0
80024b6c:	e50b3008 	str	r3, [fp, #-8]
80024b70:	ea00002b 	b	80024c24 <pipewrite+0xe0>
80024b74:	e51b3010 	ldr	r3, [fp, #-16]
80024b78:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024b7c:	e3530000 	cmp	r3, #0
80024b80:	1a000004 	bne	80024b98 <pipewrite+0x54>
80024b84:	e51b3010 	ldr	r3, [fp, #-16]
80024b88:	e1a00003 	mov	r0, r3
80024b8c:	eb000425 	bl	80025c28 <release>
80024b90:	e3e03000 	mvn	r3, #0
80024b94:	ea00002e 	b	80024c54 <pipewrite+0x110>
80024b98:	e51b3010 	ldr	r3, [fp, #-16]
80024b9c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024ba0:	e1a00003 	mov	r0, r3
80024ba4:	eb00038f 	bl	800259e8 <wakeup>
80024ba8:	e51b3010 	ldr	r3, [fp, #-16]
80024bac:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024bb0:	e51b2010 	ldr	r2, [fp, #-16]
80024bb4:	e1a01002 	mov	r1, r2
80024bb8:	e1a00003 	mov	r0, r3
80024bbc:	eb000334 	bl	80025894 <sleep>
80024bc0:	e51b3010 	ldr	r3, [fp, #-16]
80024bc4:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024bc8:	e51b3010 	ldr	r3, [fp, #-16]
80024bcc:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024bd0:	e2833c02 	add	r3, r3, #512	@ 0x200
80024bd4:	e1520003 	cmp	r2, r3
80024bd8:	0affffe5 	beq	80024b74 <pipewrite+0x30>
80024bdc:	e51b3008 	ldr	r3, [fp, #-8]
80024be0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024be4:	e0822003 	add	r2, r2, r3
80024be8:	e51b3010 	ldr	r3, [fp, #-16]
80024bec:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024bf0:	e2830001 	add	r0, r3, #1
80024bf4:	e51b1010 	ldr	r1, [fp, #-16]
80024bf8:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024bfc:	e1a03b83 	lsl	r3, r3, #23
80024c00:	e1a03ba3 	lsr	r3, r3, #23
80024c04:	e5d21000 	ldrb	r1, [r2]
80024c08:	e51b2010 	ldr	r2, [fp, #-16]
80024c0c:	e0823003 	add	r3, r2, r3
80024c10:	e1a02001 	mov	r2, r1
80024c14:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024c18:	e51b3008 	ldr	r3, [fp, #-8]
80024c1c:	e2833001 	add	r3, r3, #1
80024c20:	e50b3008 	str	r3, [fp, #-8]
80024c24:	e51b2008 	ldr	r2, [fp, #-8]
80024c28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024c2c:	e1520003 	cmp	r2, r3
80024c30:	baffffe2 	blt	80024bc0 <pipewrite+0x7c>
80024c34:	e51b3010 	ldr	r3, [fp, #-16]
80024c38:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024c3c:	e1a00003 	mov	r0, r3
80024c40:	eb000368 	bl	800259e8 <wakeup>
80024c44:	e51b3010 	ldr	r3, [fp, #-16]
80024c48:	e1a00003 	mov	r0, r3
80024c4c:	eb0003f5 	bl	80025c28 <release>
80024c50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024c54:	e1a00003 	mov	r0, r3
80024c58:	e24bd004 	sub	sp, fp, #4
80024c5c:	e8bd8800 	pop	{fp, pc}

80024c60 <piperead>:
80024c60:	e92d4800 	push	{fp, lr}
80024c64:	e28db004 	add	fp, sp, #4
80024c68:	e24dd018 	sub	sp, sp, #24
80024c6c:	e50b0010 	str	r0, [fp, #-16]
80024c70:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024c74:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024c78:	e51b3010 	ldr	r3, [fp, #-16]
80024c7c:	e1a00003 	mov	r0, r3
80024c80:	eb0003dd 	bl	80025bfc <acquire>
80024c84:	ea00000f 	b	80024cc8 <piperead+0x68>
80024c88:	e59f310c 	ldr	r3, [pc, #268]	@ 80024d9c <piperead+0x13c>
80024c8c:	e5933000 	ldr	r3, [r3]
80024c90:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80024c94:	e3530000 	cmp	r3, #0
80024c98:	0a000004 	beq	80024cb0 <piperead+0x50>
80024c9c:	e51b3010 	ldr	r3, [fp, #-16]
80024ca0:	e1a00003 	mov	r0, r3
80024ca4:	eb0003df 	bl	80025c28 <release>
80024ca8:	e3e03000 	mvn	r3, #0
80024cac:	ea000037 	b	80024d90 <piperead+0x130>
80024cb0:	e51b3010 	ldr	r3, [fp, #-16]
80024cb4:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024cb8:	e51b2010 	ldr	r2, [fp, #-16]
80024cbc:	e1a01002 	mov	r1, r2
80024cc0:	e1a00003 	mov	r0, r3
80024cc4:	eb0002f2 	bl	80025894 <sleep>
80024cc8:	e51b3010 	ldr	r3, [fp, #-16]
80024ccc:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024cd0:	e51b3010 	ldr	r3, [fp, #-16]
80024cd4:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024cd8:	e1520003 	cmp	r2, r3
80024cdc:	1a000003 	bne	80024cf0 <piperead+0x90>
80024ce0:	e51b3010 	ldr	r3, [fp, #-16]
80024ce4:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024ce8:	e3530000 	cmp	r3, #0
80024cec:	1affffe5 	bne	80024c88 <piperead+0x28>
80024cf0:	e3a03000 	mov	r3, #0
80024cf4:	e50b3008 	str	r3, [fp, #-8]
80024cf8:	ea000016 	b	80024d58 <piperead+0xf8>
80024cfc:	e51b3010 	ldr	r3, [fp, #-16]
80024d00:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024d04:	e51b3010 	ldr	r3, [fp, #-16]
80024d08:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024d0c:	e1520003 	cmp	r2, r3
80024d10:	0a000015 	beq	80024d6c <piperead+0x10c>
80024d14:	e51b3010 	ldr	r3, [fp, #-16]
80024d18:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024d1c:	e2831001 	add	r1, r3, #1
80024d20:	e51b2010 	ldr	r2, [fp, #-16]
80024d24:	e5821234 	str	r1, [r2, #564]	@ 0x234
80024d28:	e1a03b83 	lsl	r3, r3, #23
80024d2c:	e1a03ba3 	lsr	r3, r3, #23
80024d30:	e51b2008 	ldr	r2, [fp, #-8]
80024d34:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80024d38:	e0812002 	add	r2, r1, r2
80024d3c:	e51b1010 	ldr	r1, [fp, #-16]
80024d40:	e0813003 	add	r3, r1, r3
80024d44:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80024d48:	e5c23000 	strb	r3, [r2]
80024d4c:	e51b3008 	ldr	r3, [fp, #-8]
80024d50:	e2833001 	add	r3, r3, #1
80024d54:	e50b3008 	str	r3, [fp, #-8]
80024d58:	e51b2008 	ldr	r2, [fp, #-8]
80024d5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024d60:	e1520003 	cmp	r2, r3
80024d64:	baffffe4 	blt	80024cfc <piperead+0x9c>
80024d68:	ea000000 	b	80024d70 <piperead+0x110>
80024d6c:	e1a00000 	nop			@ (mov r0, r0)
80024d70:	e51b3010 	ldr	r3, [fp, #-16]
80024d74:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024d78:	e1a00003 	mov	r0, r3
80024d7c:	eb000319 	bl	800259e8 <wakeup>
80024d80:	e51b3010 	ldr	r3, [fp, #-16]
80024d84:	e1a00003 	mov	r0, r3
80024d88:	eb0003a6 	bl	80025c28 <release>
80024d8c:	e51b3008 	ldr	r3, [fp, #-8]
80024d90:	e1a00003 	mov	r0, r3
80024d94:	e24bd004 	sub	sp, fp, #4
80024d98:	e8bd8800 	pop	{fp, pc}
80024d9c:	800af548 	.word	0x800af548

80024da0 <pinit>:
80024da0:	e92d4800 	push	{fp, lr}
80024da4:	e28db004 	add	fp, sp, #4
80024da8:	e59f100c 	ldr	r1, [pc, #12]	@ 80024dbc <pinit+0x1c>
80024dac:	e59f000c 	ldr	r0, [pc, #12]	@ 80024dc0 <pinit+0x20>
80024db0:	eb00037f 	bl	80025bb4 <initlock>
80024db4:	e1a00000 	nop			@ (mov r0, r0)
80024db8:	e8bd8800 	pop	{fp, pc}
80024dbc:	800296ac 	.word	0x800296ac
80024dc0:	800ad610 	.word	0x800ad610

80024dc4 <allocproc>:
80024dc4:	e92d4800 	push	{fp, lr}
80024dc8:	e28db004 	add	fp, sp, #4
80024dcc:	e24dd008 	sub	sp, sp, #8
80024dd0:	e59f0164 	ldr	r0, [pc, #356]	@ 80024f3c <allocproc+0x178>
80024dd4:	eb000388 	bl	80025bfc <acquire>
80024dd8:	e59f3160 	ldr	r3, [pc, #352]	@ 80024f40 <allocproc+0x17c>
80024ddc:	e50b3008 	str	r3, [fp, #-8]
80024de0:	ea000006 	b	80024e00 <allocproc+0x3c>
80024de4:	e51b3008 	ldr	r3, [fp, #-8]
80024de8:	e5d3300c 	ldrb	r3, [r3, #12]
80024dec:	e3530000 	cmp	r3, #0
80024df0:	0a00000a 	beq	80024e20 <allocproc+0x5c>
80024df4:	e51b3008 	ldr	r3, [fp, #-8]
80024df8:	e283307c 	add	r3, r3, #124	@ 0x7c
80024dfc:	e50b3008 	str	r3, [fp, #-8]
80024e00:	e51b3008 	ldr	r3, [fp, #-8]
80024e04:	e59f2138 	ldr	r2, [pc, #312]	@ 80024f44 <allocproc+0x180>
80024e08:	e1530002 	cmp	r3, r2
80024e0c:	3afffff4 	bcc	80024de4 <allocproc+0x20>
80024e10:	e59f0124 	ldr	r0, [pc, #292]	@ 80024f3c <allocproc+0x178>
80024e14:	eb000383 	bl	80025c28 <release>
80024e18:	e3a03000 	mov	r3, #0
80024e1c:	ea000043 	b	80024f30 <allocproc+0x16c>
80024e20:	e1a00000 	nop			@ (mov r0, r0)
80024e24:	e51b3008 	ldr	r3, [fp, #-8]
80024e28:	e3a02001 	mov	r2, #1
80024e2c:	e5c3200c 	strb	r2, [r3, #12]
80024e30:	e59f3110 	ldr	r3, [pc, #272]	@ 80024f48 <allocproc+0x184>
80024e34:	e5933000 	ldr	r3, [r3]
80024e38:	e2832001 	add	r2, r3, #1
80024e3c:	e59f1104 	ldr	r1, [pc, #260]	@ 80024f48 <allocproc+0x184>
80024e40:	e5812000 	str	r2, [r1]
80024e44:	e51b2008 	ldr	r2, [fp, #-8]
80024e48:	e5823010 	str	r3, [r2, #16]
80024e4c:	e59f00e8 	ldr	r0, [pc, #232]	@ 80024f3c <allocproc+0x178>
80024e50:	eb000374 	bl	80025c28 <release>
80024e54:	ebfff1f5 	bl	80021630 <alloc_page>
80024e58:	e1a02000 	mov	r2, r0
80024e5c:	e51b3008 	ldr	r3, [fp, #-8]
80024e60:	e5832008 	str	r2, [r3, #8]
80024e64:	e51b3008 	ldr	r3, [fp, #-8]
80024e68:	e5933008 	ldr	r3, [r3, #8]
80024e6c:	e3530000 	cmp	r3, #0
80024e70:	1a000004 	bne	80024e88 <allocproc+0xc4>
80024e74:	e51b3008 	ldr	r3, [fp, #-8]
80024e78:	e3a02000 	mov	r2, #0
80024e7c:	e5c3200c 	strb	r2, [r3, #12]
80024e80:	e3a03000 	mov	r3, #0
80024e84:	ea000029 	b	80024f30 <allocproc+0x16c>
80024e88:	e51b3008 	ldr	r3, [fp, #-8]
80024e8c:	e5933008 	ldr	r3, [r3, #8]
80024e90:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80024e94:	e50b300c 	str	r3, [fp, #-12]
80024e98:	e51b300c 	ldr	r3, [fp, #-12]
80024e9c:	e2433048 	sub	r3, r3, #72	@ 0x48
80024ea0:	e50b300c 	str	r3, [fp, #-12]
80024ea4:	e51b3008 	ldr	r3, [fp, #-8]
80024ea8:	e51b200c 	ldr	r2, [fp, #-12]
80024eac:	e5832018 	str	r2, [r3, #24]
80024eb0:	e51b300c 	ldr	r3, [fp, #-12]
80024eb4:	e2433004 	sub	r3, r3, #4
80024eb8:	e50b300c 	str	r3, [fp, #-12]
80024ebc:	e59f2088 	ldr	r2, [pc, #136]	@ 80024f4c <allocproc+0x188>
80024ec0:	e51b300c 	ldr	r3, [fp, #-12]
80024ec4:	e5832000 	str	r2, [r3]
80024ec8:	e51b300c 	ldr	r3, [fp, #-12]
80024ecc:	e2433004 	sub	r3, r3, #4
80024ed0:	e50b300c 	str	r3, [fp, #-12]
80024ed4:	e51b3008 	ldr	r3, [fp, #-8]
80024ed8:	e5933008 	ldr	r3, [r3, #8]
80024edc:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80024ee0:	e51b300c 	ldr	r3, [fp, #-12]
80024ee4:	e5832000 	str	r2, [r3]
80024ee8:	e51b300c 	ldr	r3, [fp, #-12]
80024eec:	e2433028 	sub	r3, r3, #40	@ 0x28
80024ef0:	e50b300c 	str	r3, [fp, #-12]
80024ef4:	e51b3008 	ldr	r3, [fp, #-8]
80024ef8:	e51b200c 	ldr	r2, [fp, #-12]
80024efc:	e583201c 	str	r2, [r3, #28]
80024f00:	e51b3008 	ldr	r3, [fp, #-8]
80024f04:	e593301c 	ldr	r3, [r3, #28]
80024f08:	e3a02028 	mov	r2, #40	@ 0x28
80024f0c:	e3a01000 	mov	r1, #0
80024f10:	e1a00003 	mov	r0, r3
80024f14:	ebffec39 	bl	80020000 <memset>
80024f18:	e59f2030 	ldr	r2, [pc, #48]	@ 80024f50 <allocproc+0x18c>
80024f1c:	e51b3008 	ldr	r3, [fp, #-8]
80024f20:	e593301c 	ldr	r3, [r3, #28]
80024f24:	e2822004 	add	r2, r2, #4
80024f28:	e5832024 	str	r2, [r3, #36]	@ 0x24
80024f2c:	e51b3008 	ldr	r3, [fp, #-8]
80024f30:	e1a00003 	mov	r0, r3
80024f34:	e24bd004 	sub	sp, fp, #4
80024f38:	e8bd8800 	pop	{fp, pc}
80024f3c:	800ad610 	.word	0x800ad610
80024f40:	800ad644 	.word	0x800ad644
80024f44:	800af544 	.word	0x800af544
80024f48:	8002a014 	.word	0x8002a014
80024f4c:	8002732c 	.word	0x8002732c
80024f50:	80025854 	.word	0x80025854

80024f54 <error_init>:
80024f54:	e92d4800 	push	{fp, lr}
80024f58:	e28db004 	add	fp, sp, #4
80024f5c:	e59f0000 	ldr	r0, [pc]	@ 80024f64 <error_init+0x10>
80024f60:	ebfff2e3 	bl	80021af4 <panic>
80024f64:	800296b4 	.word	0x800296b4

80024f68 <userinit>:
80024f68:	e92d4810 	push	{r4, fp, lr}
80024f6c:	e28db008 	add	fp, sp, #8
80024f70:	e24dd00c 	sub	sp, sp, #12
80024f74:	ebffff92 	bl	80024dc4 <allocproc>
80024f78:	e50b0010 	str	r0, [fp, #-16]
80024f7c:	e59f2100 	ldr	r2, [pc, #256]	@ 80025084 <userinit+0x11c>
80024f80:	e51b3010 	ldr	r3, [fp, #-16]
80024f84:	e5823000 	str	r3, [r2]
80024f88:	eb000b32 	bl	80027c58 <kpt_alloc>
80024f8c:	e1a02000 	mov	r2, r0
80024f90:	e51b3010 	ldr	r3, [fp, #-16]
80024f94:	e5832004 	str	r2, [r3, #4]
80024f98:	e51b3010 	ldr	r3, [fp, #-16]
80024f9c:	e5933004 	ldr	r3, [r3, #4]
80024fa0:	e3530000 	cmp	r3, #0
80024fa4:	1a000001 	bne	80024fb0 <userinit+0x48>
80024fa8:	e59f00d8 	ldr	r0, [pc, #216]	@ 80025088 <userinit+0x120>
80024fac:	ebfff2d0 	bl	80021af4 <panic>
80024fb0:	e51b3010 	ldr	r3, [fp, #-16]
80024fb4:	e5933004 	ldr	r3, [r3, #4]
80024fb8:	e59f20cc 	ldr	r2, [pc, #204]	@ 8002508c <userinit+0x124>
80024fbc:	e59f10cc 	ldr	r1, [pc, #204]	@ 80025090 <userinit+0x128>
80024fc0:	e1a00003 	mov	r0, r3
80024fc4:	eb000be1 	bl	80027f50 <inituvm>
80024fc8:	e51b3010 	ldr	r3, [fp, #-16]
80024fcc:	e3a02a01 	mov	r2, #4096	@ 0x1000
80024fd0:	e5832000 	str	r2, [r3]
80024fd4:	e51b3010 	ldr	r3, [fp, #-16]
80024fd8:	e5933018 	ldr	r3, [r3, #24]
80024fdc:	e3a02048 	mov	r2, #72	@ 0x48
80024fe0:	e3a01000 	mov	r1, #0
80024fe4:	e1a00003 	mov	r0, r3
80024fe8:	ebffec04 	bl	80020000 <memset>
80024fec:	e51b3010 	ldr	r3, [fp, #-16]
80024ff0:	e5933018 	ldr	r3, [r3, #24]
80024ff4:	e59f2098 	ldr	r2, [pc, #152]	@ 80025094 <userinit+0x12c>
80024ff8:	e5832008 	str	r2, [r3, #8]
80024ffc:	e51b3010 	ldr	r3, [fp, #-16]
80025000:	e5934018 	ldr	r4, [r3, #24]
80025004:	ebffed69 	bl	800205b0 <spsr_usr>
80025008:	e1a03000 	mov	r3, r0
8002500c:	e584300c 	str	r3, [r4, #12]
80025010:	e51b3010 	ldr	r3, [fp, #-16]
80025014:	e5933018 	ldr	r3, [r3, #24]
80025018:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002501c:	e5832000 	str	r2, [r3]
80025020:	e51b3010 	ldr	r3, [fp, #-16]
80025024:	e5933018 	ldr	r3, [r3, #24]
80025028:	e3a02000 	mov	r2, #0
8002502c:	e5832004 	str	r2, [r3, #4]
80025030:	e51b3010 	ldr	r3, [fp, #-16]
80025034:	e5933018 	ldr	r3, [r3, #24]
80025038:	e3a02000 	mov	r2, #0
8002503c:	e5832044 	str	r2, [r3, #68]	@ 0x44
80025040:	e51b3010 	ldr	r3, [fp, #-16]
80025044:	e283306c 	add	r3, r3, #108	@ 0x6c
80025048:	e3a02010 	mov	r2, #16
8002504c:	e59f1044 	ldr	r1, [pc, #68]	@ 80025098 <userinit+0x130>
80025050:	e1a00003 	mov	r0, r3
80025054:	ebffecfd 	bl	80020450 <safestrcpy>
80025058:	e59f003c 	ldr	r0, [pc, #60]	@ 8002509c <userinit+0x134>
8002505c:	ebfffc0b 	bl	80024090 <namei>
80025060:	e1a02000 	mov	r2, r0
80025064:	e51b3010 	ldr	r3, [fp, #-16]
80025068:	e5832068 	str	r2, [r3, #104]	@ 0x68
8002506c:	e51b3010 	ldr	r3, [fp, #-16]
80025070:	e3a02003 	mov	r2, #3
80025074:	e5c3200c 	strb	r2, [r3, #12]
80025078:	e1a00000 	nop			@ (mov r0, r0)
8002507c:	e24bd008 	sub	sp, fp, #8
80025080:	e8bd8810 	pop	{r4, fp, pc}
80025084:	800af544 	.word	0x800af544
80025088:	800296d4 	.word	0x800296d4
8002508c:	00000034 	.word	0x00000034
80025090:	8002a098 	.word	0x8002a098
80025094:	80024f54 	.word	0x80024f54
80025098:	800296f0 	.word	0x800296f0
8002509c:	800296fc 	.word	0x800296fc

800250a0 <growproc>:
800250a0:	e92d4800 	push	{fp, lr}
800250a4:	e28db004 	add	fp, sp, #4
800250a8:	e24dd010 	sub	sp, sp, #16
800250ac:	e50b0010 	str	r0, [fp, #-16]
800250b0:	e59f30f4 	ldr	r3, [pc, #244]	@ 800251ac <growproc+0x10c>
800250b4:	e5933000 	ldr	r3, [r3]
800250b8:	e5933000 	ldr	r3, [r3]
800250bc:	e50b3008 	str	r3, [fp, #-8]
800250c0:	e51b3010 	ldr	r3, [fp, #-16]
800250c4:	e51b2008 	ldr	r2, [fp, #-8]
800250c8:	e0823003 	add	r3, r2, r3
800250cc:	e50b300c 	str	r3, [fp, #-12]
800250d0:	e51b3010 	ldr	r3, [fp, #-16]
800250d4:	e3530000 	cmp	r3, #0
800250d8:	da00000d 	ble	80025114 <growproc+0x74>
800250dc:	e59f30c8 	ldr	r3, [pc, #200]	@ 800251ac <growproc+0x10c>
800250e0:	e5933000 	ldr	r3, [r3]
800250e4:	e5933004 	ldr	r3, [r3, #4]
800250e8:	e51b200c 	ldr	r2, [fp, #-12]
800250ec:	e51b1008 	ldr	r1, [fp, #-8]
800250f0:	e1a00003 	mov	r0, r3
800250f4:	eb000c42 	bl	80028204 <allocuvm_lazy>
800250f8:	e1a03000 	mov	r3, r0
800250fc:	e50b3008 	str	r3, [fp, #-8]
80025100:	e51b3008 	ldr	r3, [fp, #-8]
80025104:	e3530000 	cmp	r3, #0
80025108:	1a000012 	bne	80025158 <growproc+0xb8>
8002510c:	e3e03000 	mvn	r3, #0
80025110:	ea000022 	b	800251a0 <growproc+0x100>
80025114:	e51b3010 	ldr	r3, [fp, #-16]
80025118:	e3530000 	cmp	r3, #0
8002511c:	aa00000d 	bge	80025158 <growproc+0xb8>
80025120:	e59f3084 	ldr	r3, [pc, #132]	@ 800251ac <growproc+0x10c>
80025124:	e5933000 	ldr	r3, [r3]
80025128:	e5933004 	ldr	r3, [r3, #4]
8002512c:	e51b200c 	ldr	r2, [fp, #-12]
80025130:	e51b1008 	ldr	r1, [fp, #-8]
80025134:	e1a00003 	mov	r0, r3
80025138:	eb000ceb 	bl	800284ec <deallocuvm>
8002513c:	e1a03000 	mov	r3, r0
80025140:	e50b3008 	str	r3, [fp, #-8]
80025144:	e51b3008 	ldr	r3, [fp, #-8]
80025148:	e3530000 	cmp	r3, #0
8002514c:	1a000001 	bne	80025158 <growproc+0xb8>
80025150:	e3e03000 	mvn	r3, #0
80025154:	ea000011 	b	800251a0 <growproc+0x100>
80025158:	e59f304c 	ldr	r3, [pc, #76]	@ 800251ac <growproc+0x10c>
8002515c:	e5933000 	ldr	r3, [r3]
80025160:	e51b2008 	ldr	r2, [fp, #-8]
80025164:	e5832000 	str	r2, [r3]
80025168:	e59f303c 	ldr	r3, [pc, #60]	@ 800251ac <growproc+0x10c>
8002516c:	e5933000 	ldr	r3, [r3]
80025170:	e1a00003 	mov	r0, r3
80025174:	eb000b5e 	bl	80027ef4 <switchuvm>
80025178:	e59f302c 	ldr	r3, [pc, #44]	@ 800251ac <growproc+0x10c>
8002517c:	e5933000 	ldr	r3, [r3]
80025180:	e5931010 	ldr	r1, [r3, #16]
80025184:	e59f3020 	ldr	r3, [pc, #32]	@ 800251ac <growproc+0x10c>
80025188:	e5933000 	ldr	r3, [r3]
8002518c:	e5933000 	ldr	r3, [r3]
80025190:	e1a02003 	mov	r2, r3
80025194:	e59f0014 	ldr	r0, [pc, #20]	@ 800251b0 <growproc+0x110>
80025198:	ebfff1bd 	bl	80021894 <cprintf>
8002519c:	e3a03000 	mov	r3, #0
800251a0:	e1a00003 	mov	r0, r3
800251a4:	e24bd004 	sub	sp, fp, #4
800251a8:	e8bd8800 	pop	{fp, pc}
800251ac:	800af548 	.word	0x800af548
800251b0:	80029700 	.word	0x80029700

800251b4 <fork>:
800251b4:	e92d4800 	push	{fp, lr}
800251b8:	e28db004 	add	fp, sp, #4
800251bc:	e24dd010 	sub	sp, sp, #16
800251c0:	ebfffeff 	bl	80024dc4 <allocproc>
800251c4:	e50b000c 	str	r0, [fp, #-12]
800251c8:	e51b300c 	ldr	r3, [fp, #-12]
800251cc:	e3530000 	cmp	r3, #0
800251d0:	1a000001 	bne	800251dc <fork+0x28>
800251d4:	e3e03000 	mvn	r3, #0
800251d8:	ea000065 	b	80025374 <fork+0x1c0>
800251dc:	e59f319c 	ldr	r3, [pc, #412]	@ 80025380 <fork+0x1cc>
800251e0:	e5933000 	ldr	r3, [r3]
800251e4:	e5932004 	ldr	r2, [r3, #4]
800251e8:	e59f3190 	ldr	r3, [pc, #400]	@ 80025380 <fork+0x1cc>
800251ec:	e5933000 	ldr	r3, [r3]
800251f0:	e5933000 	ldr	r3, [r3]
800251f4:	e1a01003 	mov	r1, r3
800251f8:	e1a00002 	mov	r0, r2
800251fc:	eb000d49 	bl	80028728 <copyuvm>
80025200:	e1a02000 	mov	r2, r0
80025204:	e51b300c 	ldr	r3, [fp, #-12]
80025208:	e5832004 	str	r2, [r3, #4]
8002520c:	e51b300c 	ldr	r3, [fp, #-12]
80025210:	e5933004 	ldr	r3, [r3, #4]
80025214:	e3530000 	cmp	r3, #0
80025218:	1a00000b 	bne	8002524c <fork+0x98>
8002521c:	e51b300c 	ldr	r3, [fp, #-12]
80025220:	e5933008 	ldr	r3, [r3, #8]
80025224:	e1a00003 	mov	r0, r3
80025228:	ebfff0f6 	bl	80021608 <free_page>
8002522c:	e51b300c 	ldr	r3, [fp, #-12]
80025230:	e3a02000 	mov	r2, #0
80025234:	e5832008 	str	r2, [r3, #8]
80025238:	e51b300c 	ldr	r3, [fp, #-12]
8002523c:	e3a02000 	mov	r2, #0
80025240:	e5c3200c 	strb	r2, [r3, #12]
80025244:	e3e03000 	mvn	r3, #0
80025248:	ea000049 	b	80025374 <fork+0x1c0>
8002524c:	e59f312c 	ldr	r3, [pc, #300]	@ 80025380 <fork+0x1cc>
80025250:	e5933000 	ldr	r3, [r3]
80025254:	e5932000 	ldr	r2, [r3]
80025258:	e51b300c 	ldr	r3, [fp, #-12]
8002525c:	e5832000 	str	r2, [r3]
80025260:	e59f3118 	ldr	r3, [pc, #280]	@ 80025380 <fork+0x1cc>
80025264:	e5932000 	ldr	r2, [r3]
80025268:	e51b300c 	ldr	r3, [fp, #-12]
8002526c:	e5832014 	str	r2, [r3, #20]
80025270:	e59f3108 	ldr	r3, [pc, #264]	@ 80025380 <fork+0x1cc>
80025274:	e5933000 	ldr	r3, [r3]
80025278:	e5932018 	ldr	r2, [r3, #24]
8002527c:	e51b300c 	ldr	r3, [fp, #-12]
80025280:	e5933018 	ldr	r3, [r3, #24]
80025284:	e1a00003 	mov	r0, r3
80025288:	e1a01002 	mov	r1, r2
8002528c:	e3a03048 	mov	r3, #72	@ 0x48
80025290:	e1a02003 	mov	r2, r3
80025294:	ebffec0a 	bl	800202c4 <memcpy>
80025298:	e51b300c 	ldr	r3, [fp, #-12]
8002529c:	e5933018 	ldr	r3, [r3, #24]
800252a0:	e3a02000 	mov	r2, #0
800252a4:	e5832010 	str	r2, [r3, #16]
800252a8:	e3a03000 	mov	r3, #0
800252ac:	e50b3008 	str	r3, [fp, #-8]
800252b0:	ea000015 	b	8002530c <fork+0x158>
800252b4:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025380 <fork+0x1cc>
800252b8:	e5933000 	ldr	r3, [r3]
800252bc:	e51b2008 	ldr	r2, [fp, #-8]
800252c0:	e282200a 	add	r2, r2, #10
800252c4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800252c8:	e3530000 	cmp	r3, #0
800252cc:	0a00000b 	beq	80025300 <fork+0x14c>
800252d0:	e59f30a8 	ldr	r3, [pc, #168]	@ 80025380 <fork+0x1cc>
800252d4:	e5933000 	ldr	r3, [r3]
800252d8:	e51b2008 	ldr	r2, [fp, #-8]
800252dc:	e282200a 	add	r2, r2, #10
800252e0:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800252e4:	e1a00003 	mov	r0, r3
800252e8:	ebfff4b1 	bl	800225b4 <filedup>
800252ec:	e1a01000 	mov	r1, r0
800252f0:	e51b300c 	ldr	r3, [fp, #-12]
800252f4:	e51b2008 	ldr	r2, [fp, #-8]
800252f8:	e282200a 	add	r2, r2, #10
800252fc:	e7831102 	str	r1, [r3, r2, lsl #2]
80025300:	e51b3008 	ldr	r3, [fp, #-8]
80025304:	e2833001 	add	r3, r3, #1
80025308:	e50b3008 	str	r3, [fp, #-8]
8002530c:	e51b3008 	ldr	r3, [fp, #-8]
80025310:	e353000f 	cmp	r3, #15
80025314:	daffffe6 	ble	800252b4 <fork+0x100>
80025318:	e59f3060 	ldr	r3, [pc, #96]	@ 80025380 <fork+0x1cc>
8002531c:	e5933000 	ldr	r3, [r3]
80025320:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025324:	e1a00003 	mov	r0, r3
80025328:	ebfff773 	bl	800230fc <idup>
8002532c:	e1a02000 	mov	r2, r0
80025330:	e51b300c 	ldr	r3, [fp, #-12]
80025334:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025338:	e51b300c 	ldr	r3, [fp, #-12]
8002533c:	e5933010 	ldr	r3, [r3, #16]
80025340:	e50b3010 	str	r3, [fp, #-16]
80025344:	e51b300c 	ldr	r3, [fp, #-12]
80025348:	e3a02003 	mov	r2, #3
8002534c:	e5c3200c 	strb	r2, [r3, #12]
80025350:	e51b300c 	ldr	r3, [fp, #-12]
80025354:	e283006c 	add	r0, r3, #108	@ 0x6c
80025358:	e59f3020 	ldr	r3, [pc, #32]	@ 80025380 <fork+0x1cc>
8002535c:	e5933000 	ldr	r3, [r3]
80025360:	e283306c 	add	r3, r3, #108	@ 0x6c
80025364:	e3a02010 	mov	r2, #16
80025368:	e1a01003 	mov	r1, r3
8002536c:	ebffec37 	bl	80020450 <safestrcpy>
80025370:	e51b3010 	ldr	r3, [fp, #-16]
80025374:	e1a00003 	mov	r0, r3
80025378:	e24bd004 	sub	sp, fp, #4
8002537c:	e8bd8800 	pop	{fp, pc}
80025380:	800af548 	.word	0x800af548

80025384 <exit>:
80025384:	e92d4800 	push	{fp, lr}
80025388:	e28db004 	add	fp, sp, #4
8002538c:	e24dd008 	sub	sp, sp, #8
80025390:	e59f3158 	ldr	r3, [pc, #344]	@ 800254f0 <exit+0x16c>
80025394:	e5932000 	ldr	r2, [r3]
80025398:	e59f3154 	ldr	r3, [pc, #340]	@ 800254f4 <exit+0x170>
8002539c:	e5933000 	ldr	r3, [r3]
800253a0:	e1520003 	cmp	r2, r3
800253a4:	1a000001 	bne	800253b0 <exit+0x2c>
800253a8:	e59f0148 	ldr	r0, [pc, #328]	@ 800254f8 <exit+0x174>
800253ac:	ebfff1d0 	bl	80021af4 <panic>
800253b0:	e3a03000 	mov	r3, #0
800253b4:	e50b300c 	str	r3, [fp, #-12]
800253b8:	ea000016 	b	80025418 <exit+0x94>
800253bc:	e59f312c 	ldr	r3, [pc, #300]	@ 800254f0 <exit+0x16c>
800253c0:	e5933000 	ldr	r3, [r3]
800253c4:	e51b200c 	ldr	r2, [fp, #-12]
800253c8:	e282200a 	add	r2, r2, #10
800253cc:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800253d0:	e3530000 	cmp	r3, #0
800253d4:	0a00000c 	beq	8002540c <exit+0x88>
800253d8:	e59f3110 	ldr	r3, [pc, #272]	@ 800254f0 <exit+0x16c>
800253dc:	e5933000 	ldr	r3, [r3]
800253e0:	e51b200c 	ldr	r2, [fp, #-12]
800253e4:	e282200a 	add	r2, r2, #10
800253e8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800253ec:	e1a00003 	mov	r0, r3
800253f0:	ebfff488 	bl	80022618 <fileclose>
800253f4:	e59f30f4 	ldr	r3, [pc, #244]	@ 800254f0 <exit+0x16c>
800253f8:	e5933000 	ldr	r3, [r3]
800253fc:	e51b200c 	ldr	r2, [fp, #-12]
80025400:	e282200a 	add	r2, r2, #10
80025404:	e3a01000 	mov	r1, #0
80025408:	e7831102 	str	r1, [r3, r2, lsl #2]
8002540c:	e51b300c 	ldr	r3, [fp, #-12]
80025410:	e2833001 	add	r3, r3, #1
80025414:	e50b300c 	str	r3, [fp, #-12]
80025418:	e51b300c 	ldr	r3, [fp, #-12]
8002541c:	e353000f 	cmp	r3, #15
80025420:	daffffe5 	ble	800253bc <exit+0x38>
80025424:	e59f30c4 	ldr	r3, [pc, #196]	@ 800254f0 <exit+0x16c>
80025428:	e5933000 	ldr	r3, [r3]
8002542c:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025430:	e1a00003 	mov	r0, r3
80025434:	ebfff7c8 	bl	8002335c <iput>
80025438:	e59f30b0 	ldr	r3, [pc, #176]	@ 800254f0 <exit+0x16c>
8002543c:	e5933000 	ldr	r3, [r3]
80025440:	e3a02000 	mov	r2, #0
80025444:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025448:	e59f00ac 	ldr	r0, [pc, #172]	@ 800254fc <exit+0x178>
8002544c:	eb0001ea 	bl	80025bfc <acquire>
80025450:	e59f3098 	ldr	r3, [pc, #152]	@ 800254f0 <exit+0x16c>
80025454:	e5933000 	ldr	r3, [r3]
80025458:	e5933014 	ldr	r3, [r3, #20]
8002545c:	e1a00003 	mov	r0, r3
80025460:	eb00013f 	bl	80025964 <wakeup1>
80025464:	e59f3094 	ldr	r3, [pc, #148]	@ 80025500 <exit+0x17c>
80025468:	e50b3008 	str	r3, [fp, #-8]
8002546c:	ea000014 	b	800254c4 <exit+0x140>
80025470:	e51b3008 	ldr	r3, [fp, #-8]
80025474:	e5932014 	ldr	r2, [r3, #20]
80025478:	e59f3070 	ldr	r3, [pc, #112]	@ 800254f0 <exit+0x16c>
8002547c:	e5933000 	ldr	r3, [r3]
80025480:	e1520003 	cmp	r2, r3
80025484:	1a00000b 	bne	800254b8 <exit+0x134>
80025488:	e59f3064 	ldr	r3, [pc, #100]	@ 800254f4 <exit+0x170>
8002548c:	e5932000 	ldr	r2, [r3]
80025490:	e51b3008 	ldr	r3, [fp, #-8]
80025494:	e5832014 	str	r2, [r3, #20]
80025498:	e51b3008 	ldr	r3, [fp, #-8]
8002549c:	e5d3300c 	ldrb	r3, [r3, #12]
800254a0:	e3530005 	cmp	r3, #5
800254a4:	1a000003 	bne	800254b8 <exit+0x134>
800254a8:	e59f3044 	ldr	r3, [pc, #68]	@ 800254f4 <exit+0x170>
800254ac:	e5933000 	ldr	r3, [r3]
800254b0:	e1a00003 	mov	r0, r3
800254b4:	eb00012a 	bl	80025964 <wakeup1>
800254b8:	e51b3008 	ldr	r3, [fp, #-8]
800254bc:	e283307c 	add	r3, r3, #124	@ 0x7c
800254c0:	e50b3008 	str	r3, [fp, #-8]
800254c4:	e51b3008 	ldr	r3, [fp, #-8]
800254c8:	e59f2034 	ldr	r2, [pc, #52]	@ 80025504 <exit+0x180>
800254cc:	e1530002 	cmp	r3, r2
800254d0:	3affffe6 	bcc	80025470 <exit+0xec>
800254d4:	e59f3014 	ldr	r3, [pc, #20]	@ 800254f0 <exit+0x16c>
800254d8:	e5933000 	ldr	r3, [r3]
800254dc:	e3a02005 	mov	r2, #5
800254e0:	e5c3200c 	strb	r2, [r3, #12]
800254e4:	eb000092 	bl	80025734 <sched>
800254e8:	e59f0018 	ldr	r0, [pc, #24]	@ 80025508 <exit+0x184>
800254ec:	ebfff180 	bl	80021af4 <panic>
800254f0:	800af548 	.word	0x800af548
800254f4:	800af544 	.word	0x800af544
800254f8:	80029720 	.word	0x80029720
800254fc:	800ad610 	.word	0x800ad610
80025500:	800ad644 	.word	0x800ad644
80025504:	800af544 	.word	0x800af544
80025508:	80029730 	.word	0x80029730

8002550c <wait>:
8002550c:	e92d4800 	push	{fp, lr}
80025510:	e28db004 	add	fp, sp, #4
80025514:	e24dd010 	sub	sp, sp, #16
80025518:	e59f013c 	ldr	r0, [pc, #316]	@ 8002565c <wait+0x150>
8002551c:	eb0001b6 	bl	80025bfc <acquire>
80025520:	e3a03000 	mov	r3, #0
80025524:	e50b300c 	str	r3, [fp, #-12]
80025528:	e59f3130 	ldr	r3, [pc, #304]	@ 80025660 <wait+0x154>
8002552c:	e50b3008 	str	r3, [fp, #-8]
80025530:	ea000030 	b	800255f8 <wait+0xec>
80025534:	e51b3008 	ldr	r3, [fp, #-8]
80025538:	e5932014 	ldr	r2, [r3, #20]
8002553c:	e59f3120 	ldr	r3, [pc, #288]	@ 80025664 <wait+0x158>
80025540:	e5933000 	ldr	r3, [r3]
80025544:	e1520003 	cmp	r2, r3
80025548:	1a000026 	bne	800255e8 <wait+0xdc>
8002554c:	e3a03001 	mov	r3, #1
80025550:	e50b300c 	str	r3, [fp, #-12]
80025554:	e51b3008 	ldr	r3, [fp, #-8]
80025558:	e5d3300c 	ldrb	r3, [r3, #12]
8002555c:	e3530005 	cmp	r3, #5
80025560:	1a000021 	bne	800255ec <wait+0xe0>
80025564:	e51b3008 	ldr	r3, [fp, #-8]
80025568:	e5933010 	ldr	r3, [r3, #16]
8002556c:	e50b3010 	str	r3, [fp, #-16]
80025570:	e51b3008 	ldr	r3, [fp, #-8]
80025574:	e5933008 	ldr	r3, [r3, #8]
80025578:	e1a00003 	mov	r0, r3
8002557c:	ebfff021 	bl	80021608 <free_page>
80025580:	e51b3008 	ldr	r3, [fp, #-8]
80025584:	e3a02000 	mov	r2, #0
80025588:	e5832008 	str	r2, [r3, #8]
8002558c:	e51b3008 	ldr	r3, [fp, #-8]
80025590:	e5933004 	ldr	r3, [r3, #4]
80025594:	e1a00003 	mov	r0, r3
80025598:	eb000c19 	bl	80028604 <freevm>
8002559c:	e51b3008 	ldr	r3, [fp, #-8]
800255a0:	e3a02000 	mov	r2, #0
800255a4:	e5c3200c 	strb	r2, [r3, #12]
800255a8:	e51b3008 	ldr	r3, [fp, #-8]
800255ac:	e3a02000 	mov	r2, #0
800255b0:	e5832010 	str	r2, [r3, #16]
800255b4:	e51b3008 	ldr	r3, [fp, #-8]
800255b8:	e3a02000 	mov	r2, #0
800255bc:	e5832014 	str	r2, [r3, #20]
800255c0:	e51b3008 	ldr	r3, [fp, #-8]
800255c4:	e3a02000 	mov	r2, #0
800255c8:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
800255cc:	e51b3008 	ldr	r3, [fp, #-8]
800255d0:	e3a02000 	mov	r2, #0
800255d4:	e5832024 	str	r2, [r3, #36]	@ 0x24
800255d8:	e59f007c 	ldr	r0, [pc, #124]	@ 8002565c <wait+0x150>
800255dc:	eb000191 	bl	80025c28 <release>
800255e0:	e51b3010 	ldr	r3, [fp, #-16]
800255e4:	ea000019 	b	80025650 <wait+0x144>
800255e8:	e1a00000 	nop			@ (mov r0, r0)
800255ec:	e51b3008 	ldr	r3, [fp, #-8]
800255f0:	e283307c 	add	r3, r3, #124	@ 0x7c
800255f4:	e50b3008 	str	r3, [fp, #-8]
800255f8:	e51b3008 	ldr	r3, [fp, #-8]
800255fc:	e59f2064 	ldr	r2, [pc, #100]	@ 80025668 <wait+0x15c>
80025600:	e1530002 	cmp	r3, r2
80025604:	3affffca 	bcc	80025534 <wait+0x28>
80025608:	e51b300c 	ldr	r3, [fp, #-12]
8002560c:	e3530000 	cmp	r3, #0
80025610:	0a000004 	beq	80025628 <wait+0x11c>
80025614:	e59f3048 	ldr	r3, [pc, #72]	@ 80025664 <wait+0x158>
80025618:	e5933000 	ldr	r3, [r3]
8002561c:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80025620:	e3530000 	cmp	r3, #0
80025624:	0a000003 	beq	80025638 <wait+0x12c>
80025628:	e59f002c 	ldr	r0, [pc, #44]	@ 8002565c <wait+0x150>
8002562c:	eb00017d 	bl	80025c28 <release>
80025630:	e3e03000 	mvn	r3, #0
80025634:	ea000005 	b	80025650 <wait+0x144>
80025638:	e59f3024 	ldr	r3, [pc, #36]	@ 80025664 <wait+0x158>
8002563c:	e5933000 	ldr	r3, [r3]
80025640:	e59f1014 	ldr	r1, [pc, #20]	@ 8002565c <wait+0x150>
80025644:	e1a00003 	mov	r0, r3
80025648:	eb000091 	bl	80025894 <sleep>
8002564c:	eaffffb3 	b	80025520 <wait+0x14>
80025650:	e1a00003 	mov	r0, r3
80025654:	e24bd004 	sub	sp, fp, #4
80025658:	e8bd8800 	pop	{fp, pc}
8002565c:	800ad610 	.word	0x800ad610
80025660:	800ad644 	.word	0x800ad644
80025664:	800af548 	.word	0x800af548
80025668:	800af544 	.word	0x800af544

8002566c <scheduler>:
8002566c:	e92d4800 	push	{fp, lr}
80025670:	e28db004 	add	fp, sp, #4
80025674:	e24dd008 	sub	sp, sp, #8
80025678:	ebffebbe 	bl	80020578 <sti>
8002567c:	e59f009c 	ldr	r0, [pc, #156]	@ 80025720 <scheduler+0xb4>
80025680:	eb00015d 	bl	80025bfc <acquire>
80025684:	e59f3098 	ldr	r3, [pc, #152]	@ 80025724 <scheduler+0xb8>
80025688:	e50b3008 	str	r3, [fp, #-8]
8002568c:	ea00001c 	b	80025704 <scheduler+0x98>
80025690:	e51b3008 	ldr	r3, [fp, #-8]
80025694:	e5d3300c 	ldrb	r3, [r3, #12]
80025698:	e3530003 	cmp	r3, #3
8002569c:	1a000014 	bne	800256f4 <scheduler+0x88>
800256a0:	e59f2080 	ldr	r2, [pc, #128]	@ 80025728 <scheduler+0xbc>
800256a4:	e51b3008 	ldr	r3, [fp, #-8]
800256a8:	e5823000 	str	r3, [r2]
800256ac:	e51b0008 	ldr	r0, [fp, #-8]
800256b0:	eb000a0f 	bl	80027ef4 <switchuvm>
800256b4:	e51b3008 	ldr	r3, [fp, #-8]
800256b8:	e3a02004 	mov	r2, #4
800256bc:	e5c3200c 	strb	r2, [r3, #12]
800256c0:	e59f3064 	ldr	r3, [pc, #100]	@ 8002572c <scheduler+0xc0>
800256c4:	e5933000 	ldr	r3, [r3]
800256c8:	e2832004 	add	r2, r3, #4
800256cc:	e59f3054 	ldr	r3, [pc, #84]	@ 80025728 <scheduler+0xbc>
800256d0:	e5933000 	ldr	r3, [r3]
800256d4:	e593301c 	ldr	r3, [r3, #28]
800256d8:	e1a01003 	mov	r1, r3
800256dc:	e1a00002 	mov	r0, r2
800256e0:	eb000165 	bl	80025c7c <swtch>
800256e4:	e59f303c 	ldr	r3, [pc, #60]	@ 80025728 <scheduler+0xbc>
800256e8:	e3a02000 	mov	r2, #0
800256ec:	e5832000 	str	r2, [r3]
800256f0:	ea000000 	b	800256f8 <scheduler+0x8c>
800256f4:	e1a00000 	nop			@ (mov r0, r0)
800256f8:	e51b3008 	ldr	r3, [fp, #-8]
800256fc:	e283307c 	add	r3, r3, #124	@ 0x7c
80025700:	e50b3008 	str	r3, [fp, #-8]
80025704:	e51b3008 	ldr	r3, [fp, #-8]
80025708:	e59f2020 	ldr	r2, [pc, #32]	@ 80025730 <scheduler+0xc4>
8002570c:	e1530002 	cmp	r3, r2
80025710:	3affffde 	bcc	80025690 <scheduler+0x24>
80025714:	e59f0004 	ldr	r0, [pc, #4]	@ 80025720 <scheduler+0xb4>
80025718:	eb000142 	bl	80025c28 <release>
8002571c:	eaffffd5 	b	80025678 <scheduler+0xc>
80025720:	800ad610 	.word	0x800ad610
80025724:	800ad644 	.word	0x800ad644
80025728:	800af548 	.word	0x800af548
8002572c:	800ad604 	.word	0x800ad604
80025730:	800af544 	.word	0x800af544

80025734 <sched>:
80025734:	e92d4800 	push	{fp, lr}
80025738:	e28db004 	add	fp, sp, #4
8002573c:	e24dd008 	sub	sp, sp, #8
80025740:	e59f00b4 	ldr	r0, [pc, #180]	@ 800257fc <sched+0xc8>
80025744:	eb000142 	bl	80025c54 <holding>
80025748:	e1a03000 	mov	r3, r0
8002574c:	e3530000 	cmp	r3, #0
80025750:	1a000001 	bne	8002575c <sched+0x28>
80025754:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025800 <sched+0xcc>
80025758:	ebfff0e5 	bl	80021af4 <panic>
8002575c:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025804 <sched+0xd0>
80025760:	e5933000 	ldr	r3, [r3]
80025764:	e593300c 	ldr	r3, [r3, #12]
80025768:	e3530001 	cmp	r3, #1
8002576c:	0a000001 	beq	80025778 <sched+0x44>
80025770:	e59f0090 	ldr	r0, [pc, #144]	@ 80025808 <sched+0xd4>
80025774:	ebfff0de 	bl	80021af4 <panic>
80025778:	e59f308c 	ldr	r3, [pc, #140]	@ 8002580c <sched+0xd8>
8002577c:	e5933000 	ldr	r3, [r3]
80025780:	e5d3300c 	ldrb	r3, [r3, #12]
80025784:	e3530004 	cmp	r3, #4
80025788:	1a000001 	bne	80025794 <sched+0x60>
8002578c:	e59f007c 	ldr	r0, [pc, #124]	@ 80025810 <sched+0xdc>
80025790:	ebfff0d7 	bl	80021af4 <panic>
80025794:	ebffeb95 	bl	800205f0 <int_enabled>
80025798:	e1a03000 	mov	r3, r0
8002579c:	e3530000 	cmp	r3, #0
800257a0:	0a000001 	beq	800257ac <sched+0x78>
800257a4:	e59f0068 	ldr	r0, [pc, #104]	@ 80025814 <sched+0xe0>
800257a8:	ebfff0d1 	bl	80021af4 <panic>
800257ac:	e59f3050 	ldr	r3, [pc, #80]	@ 80025804 <sched+0xd0>
800257b0:	e5933000 	ldr	r3, [r3]
800257b4:	e5933010 	ldr	r3, [r3, #16]
800257b8:	e50b3008 	str	r3, [fp, #-8]
800257bc:	e59f3048 	ldr	r3, [pc, #72]	@ 8002580c <sched+0xd8>
800257c0:	e5933000 	ldr	r3, [r3]
800257c4:	e283201c 	add	r2, r3, #28
800257c8:	e59f3034 	ldr	r3, [pc, #52]	@ 80025804 <sched+0xd0>
800257cc:	e5933000 	ldr	r3, [r3]
800257d0:	e5933004 	ldr	r3, [r3, #4]
800257d4:	e1a01003 	mov	r1, r3
800257d8:	e1a00002 	mov	r0, r2
800257dc:	eb000126 	bl	80025c7c <swtch>
800257e0:	e59f301c 	ldr	r3, [pc, #28]	@ 80025804 <sched+0xd0>
800257e4:	e5933000 	ldr	r3, [r3]
800257e8:	e51b2008 	ldr	r2, [fp, #-8]
800257ec:	e5832010 	str	r2, [r3, #16]
800257f0:	e1a00000 	nop			@ (mov r0, r0)
800257f4:	e24bd004 	sub	sp, fp, #4
800257f8:	e8bd8800 	pop	{fp, pc}
800257fc:	800ad610 	.word	0x800ad610
80025800:	8002973c 	.word	0x8002973c
80025804:	800ad604 	.word	0x800ad604
80025808:	80029750 	.word	0x80029750
8002580c:	800af548 	.word	0x800af548
80025810:	8002975c 	.word	0x8002975c
80025814:	8002976c 	.word	0x8002976c

80025818 <yield>:
80025818:	e92d4800 	push	{fp, lr}
8002581c:	e28db004 	add	fp, sp, #4
80025820:	e59f0024 	ldr	r0, [pc, #36]	@ 8002584c <yield+0x34>
80025824:	eb0000f4 	bl	80025bfc <acquire>
80025828:	e59f3020 	ldr	r3, [pc, #32]	@ 80025850 <yield+0x38>
8002582c:	e5933000 	ldr	r3, [r3]
80025830:	e3a02003 	mov	r2, #3
80025834:	e5c3200c 	strb	r2, [r3, #12]
80025838:	ebffffbd 	bl	80025734 <sched>
8002583c:	e59f0008 	ldr	r0, [pc, #8]	@ 8002584c <yield+0x34>
80025840:	eb0000f8 	bl	80025c28 <release>
80025844:	e1a00000 	nop			@ (mov r0, r0)
80025848:	e8bd8800 	pop	{fp, pc}
8002584c:	800ad610 	.word	0x800ad610
80025850:	800af548 	.word	0x800af548

80025854 <forkret>:
80025854:	e92d4800 	push	{fp, lr}
80025858:	e28db004 	add	fp, sp, #4
8002585c:	e59f0028 	ldr	r0, [pc, #40]	@ 8002588c <forkret+0x38>
80025860:	eb0000f0 	bl	80025c28 <release>
80025864:	e59f3024 	ldr	r3, [pc, #36]	@ 80025890 <forkret+0x3c>
80025868:	e5933000 	ldr	r3, [r3]
8002586c:	e3530000 	cmp	r3, #0
80025870:	0a000003 	beq	80025884 <forkret+0x30>
80025874:	e59f3014 	ldr	r3, [pc, #20]	@ 80025890 <forkret+0x3c>
80025878:	e3a02000 	mov	r2, #0
8002587c:	e5832000 	str	r2, [r3]
80025880:	ebfffa1c 	bl	800240f8 <initlog>
80025884:	e1a00000 	nop			@ (mov r0, r0)
80025888:	e8bd8800 	pop	{fp, pc}
8002588c:	800ad610 	.word	0x800ad610
80025890:	8002a018 	.word	0x8002a018

80025894 <sleep>:
80025894:	e92d4800 	push	{fp, lr}
80025898:	e28db004 	add	fp, sp, #4
8002589c:	e24dd008 	sub	sp, sp, #8
800258a0:	e50b0008 	str	r0, [fp, #-8]
800258a4:	e50b100c 	str	r1, [fp, #-12]
800258a8:	e59f30a4 	ldr	r3, [pc, #164]	@ 80025954 <sleep+0xc0>
800258ac:	e5933000 	ldr	r3, [r3]
800258b0:	e3530000 	cmp	r3, #0
800258b4:	1a000001 	bne	800258c0 <sleep+0x2c>
800258b8:	e59f0098 	ldr	r0, [pc, #152]	@ 80025958 <sleep+0xc4>
800258bc:	ebfff08c 	bl	80021af4 <panic>
800258c0:	e51b300c 	ldr	r3, [fp, #-12]
800258c4:	e3530000 	cmp	r3, #0
800258c8:	1a000001 	bne	800258d4 <sleep+0x40>
800258cc:	e59f0088 	ldr	r0, [pc, #136]	@ 8002595c <sleep+0xc8>
800258d0:	ebfff087 	bl	80021af4 <panic>
800258d4:	e51b300c 	ldr	r3, [fp, #-12]
800258d8:	e59f2080 	ldr	r2, [pc, #128]	@ 80025960 <sleep+0xcc>
800258dc:	e1530002 	cmp	r3, r2
800258e0:	0a000003 	beq	800258f4 <sleep+0x60>
800258e4:	e59f0074 	ldr	r0, [pc, #116]	@ 80025960 <sleep+0xcc>
800258e8:	eb0000c3 	bl	80025bfc <acquire>
800258ec:	e51b000c 	ldr	r0, [fp, #-12]
800258f0:	eb0000cc 	bl	80025c28 <release>
800258f4:	e59f3058 	ldr	r3, [pc, #88]	@ 80025954 <sleep+0xc0>
800258f8:	e5933000 	ldr	r3, [r3]
800258fc:	e51b2008 	ldr	r2, [fp, #-8]
80025900:	e5832020 	str	r2, [r3, #32]
80025904:	e59f3048 	ldr	r3, [pc, #72]	@ 80025954 <sleep+0xc0>
80025908:	e5933000 	ldr	r3, [r3]
8002590c:	e3a02002 	mov	r2, #2
80025910:	e5c3200c 	strb	r2, [r3, #12]
80025914:	ebffff86 	bl	80025734 <sched>
80025918:	e59f3034 	ldr	r3, [pc, #52]	@ 80025954 <sleep+0xc0>
8002591c:	e5933000 	ldr	r3, [r3]
80025920:	e3a02000 	mov	r2, #0
80025924:	e5832020 	str	r2, [r3, #32]
80025928:	e51b300c 	ldr	r3, [fp, #-12]
8002592c:	e59f202c 	ldr	r2, [pc, #44]	@ 80025960 <sleep+0xcc>
80025930:	e1530002 	cmp	r3, r2
80025934:	0a000003 	beq	80025948 <sleep+0xb4>
80025938:	e59f0020 	ldr	r0, [pc, #32]	@ 80025960 <sleep+0xcc>
8002593c:	eb0000b9 	bl	80025c28 <release>
80025940:	e51b000c 	ldr	r0, [fp, #-12]
80025944:	eb0000ac 	bl	80025bfc <acquire>
80025948:	e1a00000 	nop			@ (mov r0, r0)
8002594c:	e24bd004 	sub	sp, fp, #4
80025950:	e8bd8800 	pop	{fp, pc}
80025954:	800af548 	.word	0x800af548
80025958:	80029780 	.word	0x80029780
8002595c:	80029788 	.word	0x80029788
80025960:	800ad610 	.word	0x800ad610

80025964 <wakeup1>:
80025964:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025968:	e28db000 	add	fp, sp, #0
8002596c:	e24dd014 	sub	sp, sp, #20
80025970:	e50b0010 	str	r0, [fp, #-16]
80025974:	e59f3064 	ldr	r3, [pc, #100]	@ 800259e0 <wakeup1+0x7c>
80025978:	e50b3008 	str	r3, [fp, #-8]
8002597c:	ea00000e 	b	800259bc <wakeup1+0x58>
80025980:	e51b3008 	ldr	r3, [fp, #-8]
80025984:	e5d3300c 	ldrb	r3, [r3, #12]
80025988:	e3530002 	cmp	r3, #2
8002598c:	1a000007 	bne	800259b0 <wakeup1+0x4c>
80025990:	e51b3008 	ldr	r3, [fp, #-8]
80025994:	e5933020 	ldr	r3, [r3, #32]
80025998:	e51b2010 	ldr	r2, [fp, #-16]
8002599c:	e1520003 	cmp	r2, r3
800259a0:	1a000002 	bne	800259b0 <wakeup1+0x4c>
800259a4:	e51b3008 	ldr	r3, [fp, #-8]
800259a8:	e3a02003 	mov	r2, #3
800259ac:	e5c3200c 	strb	r2, [r3, #12]
800259b0:	e51b3008 	ldr	r3, [fp, #-8]
800259b4:	e283307c 	add	r3, r3, #124	@ 0x7c
800259b8:	e50b3008 	str	r3, [fp, #-8]
800259bc:	e51b3008 	ldr	r3, [fp, #-8]
800259c0:	e59f201c 	ldr	r2, [pc, #28]	@ 800259e4 <wakeup1+0x80>
800259c4:	e1530002 	cmp	r3, r2
800259c8:	3affffec 	bcc	80025980 <wakeup1+0x1c>
800259cc:	e1a00000 	nop			@ (mov r0, r0)
800259d0:	e1a00000 	nop			@ (mov r0, r0)
800259d4:	e28bd000 	add	sp, fp, #0
800259d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800259dc:	e12fff1e 	bx	lr
800259e0:	800ad644 	.word	0x800ad644
800259e4:	800af544 	.word	0x800af544

800259e8 <wakeup>:
800259e8:	e92d4800 	push	{fp, lr}
800259ec:	e28db004 	add	fp, sp, #4
800259f0:	e24dd008 	sub	sp, sp, #8
800259f4:	e50b0008 	str	r0, [fp, #-8]
800259f8:	e59f001c 	ldr	r0, [pc, #28]	@ 80025a1c <wakeup+0x34>
800259fc:	eb00007e 	bl	80025bfc <acquire>
80025a00:	e51b0008 	ldr	r0, [fp, #-8]
80025a04:	ebffffd6 	bl	80025964 <wakeup1>
80025a08:	e59f000c 	ldr	r0, [pc, #12]	@ 80025a1c <wakeup+0x34>
80025a0c:	eb000085 	bl	80025c28 <release>
80025a10:	e1a00000 	nop			@ (mov r0, r0)
80025a14:	e24bd004 	sub	sp, fp, #4
80025a18:	e8bd8800 	pop	{fp, pc}
80025a1c:	800ad610 	.word	0x800ad610

80025a20 <kill>:
80025a20:	e92d4800 	push	{fp, lr}
80025a24:	e28db004 	add	fp, sp, #4
80025a28:	e24dd010 	sub	sp, sp, #16
80025a2c:	e50b0010 	str	r0, [fp, #-16]
80025a30:	e59f008c 	ldr	r0, [pc, #140]	@ 80025ac4 <kill+0xa4>
80025a34:	eb000070 	bl	80025bfc <acquire>
80025a38:	e59f3088 	ldr	r3, [pc, #136]	@ 80025ac8 <kill+0xa8>
80025a3c:	e50b3008 	str	r3, [fp, #-8]
80025a40:	ea000015 	b	80025a9c <kill+0x7c>
80025a44:	e51b3008 	ldr	r3, [fp, #-8]
80025a48:	e5933010 	ldr	r3, [r3, #16]
80025a4c:	e51b2010 	ldr	r2, [fp, #-16]
80025a50:	e1520003 	cmp	r2, r3
80025a54:	1a00000d 	bne	80025a90 <kill+0x70>
80025a58:	e51b3008 	ldr	r3, [fp, #-8]
80025a5c:	e3a02001 	mov	r2, #1
80025a60:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025a64:	e51b3008 	ldr	r3, [fp, #-8]
80025a68:	e5d3300c 	ldrb	r3, [r3, #12]
80025a6c:	e3530002 	cmp	r3, #2
80025a70:	1a000002 	bne	80025a80 <kill+0x60>
80025a74:	e51b3008 	ldr	r3, [fp, #-8]
80025a78:	e3a02003 	mov	r2, #3
80025a7c:	e5c3200c 	strb	r2, [r3, #12]
80025a80:	e59f003c 	ldr	r0, [pc, #60]	@ 80025ac4 <kill+0xa4>
80025a84:	eb000067 	bl	80025c28 <release>
80025a88:	e3a03000 	mov	r3, #0
80025a8c:	ea000009 	b	80025ab8 <kill+0x98>
80025a90:	e51b3008 	ldr	r3, [fp, #-8]
80025a94:	e283307c 	add	r3, r3, #124	@ 0x7c
80025a98:	e50b3008 	str	r3, [fp, #-8]
80025a9c:	e51b3008 	ldr	r3, [fp, #-8]
80025aa0:	e59f2024 	ldr	r2, [pc, #36]	@ 80025acc <kill+0xac>
80025aa4:	e1530002 	cmp	r3, r2
80025aa8:	3affffe5 	bcc	80025a44 <kill+0x24>
80025aac:	e59f0010 	ldr	r0, [pc, #16]	@ 80025ac4 <kill+0xa4>
80025ab0:	eb00005c 	bl	80025c28 <release>
80025ab4:	e3e03000 	mvn	r3, #0
80025ab8:	e1a00003 	mov	r0, r3
80025abc:	e24bd004 	sub	sp, fp, #4
80025ac0:	e8bd8800 	pop	{fp, pc}
80025ac4:	800ad610 	.word	0x800ad610
80025ac8:	800ad644 	.word	0x800ad644
80025acc:	800af544 	.word	0x800af544

80025ad0 <procdump>:
80025ad0:	e92d4800 	push	{fp, lr}
80025ad4:	e28db004 	add	fp, sp, #4
80025ad8:	e24dd008 	sub	sp, sp, #8
80025adc:	e59f30b8 	ldr	r3, [pc, #184]	@ 80025b9c <procdump+0xcc>
80025ae0:	e50b3008 	str	r3, [fp, #-8]
80025ae4:	ea000023 	b	80025b78 <procdump+0xa8>
80025ae8:	e51b3008 	ldr	r3, [fp, #-8]
80025aec:	e5d3300c 	ldrb	r3, [r3, #12]
80025af0:	e3530000 	cmp	r3, #0
80025af4:	0a00001b 	beq	80025b68 <procdump+0x98>
80025af8:	e51b3008 	ldr	r3, [fp, #-8]
80025afc:	e5d3300c 	ldrb	r3, [r3, #12]
80025b00:	e3530005 	cmp	r3, #5
80025b04:	8a00000d 	bhi	80025b40 <procdump+0x70>
80025b08:	e51b3008 	ldr	r3, [fp, #-8]
80025b0c:	e5d3300c 	ldrb	r3, [r3, #12]
80025b10:	e1a02003 	mov	r2, r3
80025b14:	e59f3084 	ldr	r3, [pc, #132]	@ 80025ba0 <procdump+0xd0>
80025b18:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025b1c:	e3530000 	cmp	r3, #0
80025b20:	0a000006 	beq	80025b40 <procdump+0x70>
80025b24:	e51b3008 	ldr	r3, [fp, #-8]
80025b28:	e5d3300c 	ldrb	r3, [r3, #12]
80025b2c:	e1a02003 	mov	r2, r3
80025b30:	e59f3068 	ldr	r3, [pc, #104]	@ 80025ba0 <procdump+0xd0>
80025b34:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025b38:	e50b300c 	str	r3, [fp, #-12]
80025b3c:	ea000001 	b	80025b48 <procdump+0x78>
80025b40:	e59f305c 	ldr	r3, [pc, #92]	@ 80025ba4 <procdump+0xd4>
80025b44:	e50b300c 	str	r3, [fp, #-12]
80025b48:	e51b3008 	ldr	r3, [fp, #-8]
80025b4c:	e5931010 	ldr	r1, [r3, #16]
80025b50:	e51b3008 	ldr	r3, [fp, #-8]
80025b54:	e283306c 	add	r3, r3, #108	@ 0x6c
80025b58:	e51b200c 	ldr	r2, [fp, #-12]
80025b5c:	e59f0044 	ldr	r0, [pc, #68]	@ 80025ba8 <procdump+0xd8>
80025b60:	ebffef4b 	bl	80021894 <cprintf>
80025b64:	ea000000 	b	80025b6c <procdump+0x9c>
80025b68:	e1a00000 	nop			@ (mov r0, r0)
80025b6c:	e51b3008 	ldr	r3, [fp, #-8]
80025b70:	e283307c 	add	r3, r3, #124	@ 0x7c
80025b74:	e50b3008 	str	r3, [fp, #-8]
80025b78:	e51b3008 	ldr	r3, [fp, #-8]
80025b7c:	e59f2028 	ldr	r2, [pc, #40]	@ 80025bac <procdump+0xdc>
80025b80:	e1530002 	cmp	r3, r2
80025b84:	3affffd7 	bcc	80025ae8 <procdump+0x18>
80025b88:	e59f0020 	ldr	r0, [pc, #32]	@ 80025bb0 <procdump+0xe0>
80025b8c:	ebffeb1e 	bl	8002080c <show_callstk>
80025b90:	e1a00000 	nop			@ (mov r0, r0)
80025b94:	e24bd004 	sub	sp, fp, #4
80025b98:	e8bd8800 	pop	{fp, pc}
80025b9c:	800ad644 	.word	0x800ad644
80025ba0:	8002a01c 	.word	0x8002a01c
80025ba4:	8002979c 	.word	0x8002979c
80025ba8:	800297a0 	.word	0x800297a0
80025bac:	800af544 	.word	0x800af544
80025bb0:	800297ac 	.word	0x800297ac

80025bb4 <initlock>:
80025bb4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025bb8:	e28db000 	add	fp, sp, #0
80025bbc:	e24dd00c 	sub	sp, sp, #12
80025bc0:	e50b0008 	str	r0, [fp, #-8]
80025bc4:	e50b100c 	str	r1, [fp, #-12]
80025bc8:	e51b3008 	ldr	r3, [fp, #-8]
80025bcc:	e51b200c 	ldr	r2, [fp, #-12]
80025bd0:	e5832004 	str	r2, [r3, #4]
80025bd4:	e51b3008 	ldr	r3, [fp, #-8]
80025bd8:	e3a02000 	mov	r2, #0
80025bdc:	e5832000 	str	r2, [r3]
80025be0:	e51b3008 	ldr	r3, [fp, #-8]
80025be4:	e3a02000 	mov	r2, #0
80025be8:	e5832008 	str	r2, [r3, #8]
80025bec:	e1a00000 	nop			@ (mov r0, r0)
80025bf0:	e28bd000 	add	sp, fp, #0
80025bf4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025bf8:	e12fff1e 	bx	lr

80025bfc <acquire>:
80025bfc:	e92d4800 	push	{fp, lr}
80025c00:	e28db004 	add	fp, sp, #4
80025c04:	e24dd008 	sub	sp, sp, #8
80025c08:	e50b0008 	str	r0, [fp, #-8]
80025c0c:	ebffea86 	bl	8002062c <pushcli>
80025c10:	e51b3008 	ldr	r3, [fp, #-8]
80025c14:	e3a02001 	mov	r2, #1
80025c18:	e5832000 	str	r2, [r3]
80025c1c:	e1a00000 	nop			@ (mov r0, r0)
80025c20:	e24bd004 	sub	sp, fp, #4
80025c24:	e8bd8800 	pop	{fp, pc}

80025c28 <release>:
80025c28:	e92d4800 	push	{fp, lr}
80025c2c:	e28db004 	add	fp, sp, #4
80025c30:	e24dd008 	sub	sp, sp, #8
80025c34:	e50b0008 	str	r0, [fp, #-8]
80025c38:	e51b3008 	ldr	r3, [fp, #-8]
80025c3c:	e3a02000 	mov	r2, #0
80025c40:	e5832000 	str	r2, [r3]
80025c44:	ebffea8d 	bl	80020680 <popcli>
80025c48:	e1a00000 	nop			@ (mov r0, r0)
80025c4c:	e24bd004 	sub	sp, fp, #4
80025c50:	e8bd8800 	pop	{fp, pc}

80025c54 <holding>:
80025c54:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025c58:	e28db000 	add	fp, sp, #0
80025c5c:	e24dd00c 	sub	sp, sp, #12
80025c60:	e50b0008 	str	r0, [fp, #-8]
80025c64:	e51b3008 	ldr	r3, [fp, #-8]
80025c68:	e5933000 	ldr	r3, [r3]
80025c6c:	e1a00003 	mov	r0, r3
80025c70:	e28bd000 	add	sp, fp, #0
80025c74:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025c78:	e12fff1e 	bx	lr

80025c7c <swtch>:
80025c7c:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025c80:	e580d000 	str	sp, [r0]
80025c84:	e1a0d001 	mov	sp, r1
80025c88:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025c8c:	e12fff1e 	bx	lr

80025c90 <fetchint>:
80025c90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025c94:	e28db000 	add	fp, sp, #0
80025c98:	e24dd00c 	sub	sp, sp, #12
80025c9c:	e50b0008 	str	r0, [fp, #-8]
80025ca0:	e50b100c 	str	r1, [fp, #-12]
80025ca4:	e59f3058 	ldr	r3, [pc, #88]	@ 80025d04 <fetchint+0x74>
80025ca8:	e5933000 	ldr	r3, [r3]
80025cac:	e5933000 	ldr	r3, [r3]
80025cb0:	e51b2008 	ldr	r2, [fp, #-8]
80025cb4:	e1520003 	cmp	r2, r3
80025cb8:	2a000006 	bcs	80025cd8 <fetchint+0x48>
80025cbc:	e51b3008 	ldr	r3, [fp, #-8]
80025cc0:	e2832004 	add	r2, r3, #4
80025cc4:	e59f3038 	ldr	r3, [pc, #56]	@ 80025d04 <fetchint+0x74>
80025cc8:	e5933000 	ldr	r3, [r3]
80025ccc:	e5933000 	ldr	r3, [r3]
80025cd0:	e1520003 	cmp	r2, r3
80025cd4:	9a000001 	bls	80025ce0 <fetchint+0x50>
80025cd8:	e3e03000 	mvn	r3, #0
80025cdc:	ea000004 	b	80025cf4 <fetchint+0x64>
80025ce0:	e51b3008 	ldr	r3, [fp, #-8]
80025ce4:	e5932000 	ldr	r2, [r3]
80025ce8:	e51b300c 	ldr	r3, [fp, #-12]
80025cec:	e5832000 	str	r2, [r3]
80025cf0:	e3a03000 	mov	r3, #0
80025cf4:	e1a00003 	mov	r0, r3
80025cf8:	e28bd000 	add	sp, fp, #0
80025cfc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025d00:	e12fff1e 	bx	lr
80025d04:	800af548 	.word	0x800af548

80025d08 <fetchstr>:
80025d08:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025d0c:	e28db000 	add	fp, sp, #0
80025d10:	e24dd014 	sub	sp, sp, #20
80025d14:	e50b0010 	str	r0, [fp, #-16]
80025d18:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025d1c:	e59f3098 	ldr	r3, [pc, #152]	@ 80025dbc <fetchstr+0xb4>
80025d20:	e5933000 	ldr	r3, [r3]
80025d24:	e5933000 	ldr	r3, [r3]
80025d28:	e51b2010 	ldr	r2, [fp, #-16]
80025d2c:	e1520003 	cmp	r2, r3
80025d30:	3a000001 	bcc	80025d3c <fetchstr+0x34>
80025d34:	e3e03000 	mvn	r3, #0
80025d38:	ea00001b 	b	80025dac <fetchstr+0xa4>
80025d3c:	e51b2010 	ldr	r2, [fp, #-16]
80025d40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025d44:	e5832000 	str	r2, [r3]
80025d48:	e59f306c 	ldr	r3, [pc, #108]	@ 80025dbc <fetchstr+0xb4>
80025d4c:	e5933000 	ldr	r3, [r3]
80025d50:	e5933000 	ldr	r3, [r3]
80025d54:	e50b300c 	str	r3, [fp, #-12]
80025d58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025d5c:	e5933000 	ldr	r3, [r3]
80025d60:	e50b3008 	str	r3, [fp, #-8]
80025d64:	ea00000b 	b	80025d98 <fetchstr+0x90>
80025d68:	e51b3008 	ldr	r3, [fp, #-8]
80025d6c:	e5d33000 	ldrb	r3, [r3]
80025d70:	e3530000 	cmp	r3, #0
80025d74:	1a000004 	bne	80025d8c <fetchstr+0x84>
80025d78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025d7c:	e5933000 	ldr	r3, [r3]
80025d80:	e51b2008 	ldr	r2, [fp, #-8]
80025d84:	e0423003 	sub	r3, r2, r3
80025d88:	ea000007 	b	80025dac <fetchstr+0xa4>
80025d8c:	e51b3008 	ldr	r3, [fp, #-8]
80025d90:	e2833001 	add	r3, r3, #1
80025d94:	e50b3008 	str	r3, [fp, #-8]
80025d98:	e51b2008 	ldr	r2, [fp, #-8]
80025d9c:	e51b300c 	ldr	r3, [fp, #-12]
80025da0:	e1520003 	cmp	r2, r3
80025da4:	3affffef 	bcc	80025d68 <fetchstr+0x60>
80025da8:	e3e03000 	mvn	r3, #0
80025dac:	e1a00003 	mov	r0, r3
80025db0:	e28bd000 	add	sp, fp, #0
80025db4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025db8:	e12fff1e 	bx	lr
80025dbc:	800af548 	.word	0x800af548

80025dc0 <argint>:
80025dc0:	e92d4800 	push	{fp, lr}
80025dc4:	e28db004 	add	fp, sp, #4
80025dc8:	e24dd008 	sub	sp, sp, #8
80025dcc:	e50b0008 	str	r0, [fp, #-8]
80025dd0:	e50b100c 	str	r1, [fp, #-12]
80025dd4:	e51b3008 	ldr	r3, [fp, #-8]
80025dd8:	e3530003 	cmp	r3, #3
80025ddc:	da000001 	ble	80025de8 <argint+0x28>
80025de0:	e59f003c 	ldr	r0, [pc, #60]	@ 80025e24 <argint+0x64>
80025de4:	ebffef42 	bl	80021af4 <panic>
80025de8:	e59f3038 	ldr	r3, [pc, #56]	@ 80025e28 <argint+0x68>
80025dec:	e5933000 	ldr	r3, [r3]
80025df0:	e5933018 	ldr	r3, [r3, #24]
80025df4:	e2832014 	add	r2, r3, #20
80025df8:	e51b3008 	ldr	r3, [fp, #-8]
80025dfc:	e1a03103 	lsl	r3, r3, #2
80025e00:	e0823003 	add	r3, r2, r3
80025e04:	e5933000 	ldr	r3, [r3]
80025e08:	e1a02003 	mov	r2, r3
80025e0c:	e51b300c 	ldr	r3, [fp, #-12]
80025e10:	e5832000 	str	r2, [r3]
80025e14:	e3a03000 	mov	r3, #0
80025e18:	e1a00003 	mov	r0, r3
80025e1c:	e24bd004 	sub	sp, fp, #4
80025e20:	e8bd8800 	pop	{fp, pc}
80025e24:	800297e8 	.word	0x800297e8
80025e28:	800af548 	.word	0x800af548

80025e2c <argptr>:
80025e2c:	e92d4800 	push	{fp, lr}
80025e30:	e28db004 	add	fp, sp, #4
80025e34:	e24dd018 	sub	sp, sp, #24
80025e38:	e50b0010 	str	r0, [fp, #-16]
80025e3c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025e40:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80025e44:	e24b3008 	sub	r3, fp, #8
80025e48:	e1a01003 	mov	r1, r3
80025e4c:	e51b0010 	ldr	r0, [fp, #-16]
80025e50:	ebffffda 	bl	80025dc0 <argint>
80025e54:	e1a03000 	mov	r3, r0
80025e58:	e3530000 	cmp	r3, #0
80025e5c:	aa000001 	bge	80025e68 <argptr+0x3c>
80025e60:	e3e03000 	mvn	r3, #0
80025e64:	ea000015 	b	80025ec0 <argptr+0x94>
80025e68:	e59f305c 	ldr	r3, [pc, #92]	@ 80025ecc <argptr+0xa0>
80025e6c:	e5933000 	ldr	r3, [r3]
80025e70:	e5933000 	ldr	r3, [r3]
80025e74:	e51b2008 	ldr	r2, [fp, #-8]
80025e78:	e1530002 	cmp	r3, r2
80025e7c:	9a000008 	bls	80025ea4 <argptr+0x78>
80025e80:	e51b3008 	ldr	r3, [fp, #-8]
80025e84:	e1a02003 	mov	r2, r3
80025e88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025e8c:	e0822003 	add	r2, r2, r3
80025e90:	e59f3034 	ldr	r3, [pc, #52]	@ 80025ecc <argptr+0xa0>
80025e94:	e5933000 	ldr	r3, [r3]
80025e98:	e5933000 	ldr	r3, [r3]
80025e9c:	e1520003 	cmp	r2, r3
80025ea0:	9a000001 	bls	80025eac <argptr+0x80>
80025ea4:	e3e03000 	mvn	r3, #0
80025ea8:	ea000004 	b	80025ec0 <argptr+0x94>
80025eac:	e51b3008 	ldr	r3, [fp, #-8]
80025eb0:	e1a02003 	mov	r2, r3
80025eb4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025eb8:	e5832000 	str	r2, [r3]
80025ebc:	e3a03000 	mov	r3, #0
80025ec0:	e1a00003 	mov	r0, r3
80025ec4:	e24bd004 	sub	sp, fp, #4
80025ec8:	e8bd8800 	pop	{fp, pc}
80025ecc:	800af548 	.word	0x800af548

80025ed0 <argstr>:
80025ed0:	e92d4800 	push	{fp, lr}
80025ed4:	e28db004 	add	fp, sp, #4
80025ed8:	e24dd010 	sub	sp, sp, #16
80025edc:	e50b0010 	str	r0, [fp, #-16]
80025ee0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025ee4:	e24b3008 	sub	r3, fp, #8
80025ee8:	e1a01003 	mov	r1, r3
80025eec:	e51b0010 	ldr	r0, [fp, #-16]
80025ef0:	ebffffb2 	bl	80025dc0 <argint>
80025ef4:	e1a03000 	mov	r3, r0
80025ef8:	e3530000 	cmp	r3, #0
80025efc:	aa000001 	bge	80025f08 <argstr+0x38>
80025f00:	e3e03000 	mvn	r3, #0
80025f04:	ea000004 	b	80025f1c <argstr+0x4c>
80025f08:	e51b3008 	ldr	r3, [fp, #-8]
80025f0c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80025f10:	e1a00003 	mov	r0, r3
80025f14:	ebffff7b 	bl	80025d08 <fetchstr>
80025f18:	e1a03000 	mov	r3, r0
80025f1c:	e1a00003 	mov	r0, r3
80025f20:	e24bd004 	sub	sp, fp, #4
80025f24:	e8bd8800 	pop	{fp, pc}

80025f28 <syscall>:
80025f28:	e92d4800 	push	{fp, lr}
80025f2c:	e28db004 	add	fp, sp, #4
80025f30:	e24dd008 	sub	sp, sp, #8
80025f34:	e59f30b8 	ldr	r3, [pc, #184]	@ 80025ff4 <syscall+0xcc>
80025f38:	e5933000 	ldr	r3, [r3]
80025f3c:	e5933018 	ldr	r3, [r3, #24]
80025f40:	e5933010 	ldr	r3, [r3, #16]
80025f44:	e50b3008 	str	r3, [fp, #-8]
80025f48:	e51b3008 	ldr	r3, [fp, #-8]
80025f4c:	e3530000 	cmp	r3, #0
80025f50:	da000015 	ble	80025fac <syscall+0x84>
80025f54:	e51b3008 	ldr	r3, [fp, #-8]
80025f58:	e3530019 	cmp	r3, #25
80025f5c:	8a000012 	bhi	80025fac <syscall+0x84>
80025f60:	e59f2090 	ldr	r2, [pc, #144]	@ 80025ff8 <syscall+0xd0>
80025f64:	e51b3008 	ldr	r3, [fp, #-8]
80025f68:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80025f6c:	e3530000 	cmp	r3, #0
80025f70:	0a00000d 	beq	80025fac <syscall+0x84>
80025f74:	e59f207c 	ldr	r2, [pc, #124]	@ 80025ff8 <syscall+0xd0>
80025f78:	e51b3008 	ldr	r3, [fp, #-8]
80025f7c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80025f80:	e12fff33 	blx	r3
80025f84:	e50b000c 	str	r0, [fp, #-12]
80025f88:	e51b3008 	ldr	r3, [fp, #-8]
80025f8c:	e3530007 	cmp	r3, #7
80025f90:	0a000014 	beq	80025fe8 <syscall+0xc0>
80025f94:	e59f3058 	ldr	r3, [pc, #88]	@ 80025ff4 <syscall+0xcc>
80025f98:	e5933000 	ldr	r3, [r3]
80025f9c:	e5933018 	ldr	r3, [r3, #24]
80025fa0:	e51b200c 	ldr	r2, [fp, #-12]
80025fa4:	e5832010 	str	r2, [r3, #16]
80025fa8:	ea00000e 	b	80025fe8 <syscall+0xc0>
80025fac:	e59f3040 	ldr	r3, [pc, #64]	@ 80025ff4 <syscall+0xcc>
80025fb0:	e5933000 	ldr	r3, [r3]
80025fb4:	e5931010 	ldr	r1, [r3, #16]
80025fb8:	e59f3034 	ldr	r3, [pc, #52]	@ 80025ff4 <syscall+0xcc>
80025fbc:	e5933000 	ldr	r3, [r3]
80025fc0:	e283206c 	add	r2, r3, #108	@ 0x6c
80025fc4:	e51b3008 	ldr	r3, [fp, #-8]
80025fc8:	e59f002c 	ldr	r0, [pc, #44]	@ 80025ffc <syscall+0xd4>
80025fcc:	ebffee30 	bl	80021894 <cprintf>
80025fd0:	e59f301c 	ldr	r3, [pc, #28]	@ 80025ff4 <syscall+0xcc>
80025fd4:	e5933000 	ldr	r3, [r3]
80025fd8:	e5933018 	ldr	r3, [r3, #24]
80025fdc:	e3e02000 	mvn	r2, #0
80025fe0:	e5832010 	str	r2, [r3, #16]
80025fe4:	e1a00000 	nop			@ (mov r0, r0)
80025fe8:	e1a00000 	nop			@ (mov r0, r0)
80025fec:	e24bd004 	sub	sp, fp, #4
80025ff0:	e8bd8800 	pop	{fp, pc}
80025ff4:	800af548 	.word	0x800af548
80025ff8:	8002a034 	.word	0x8002a034
80025ffc:	8002980c 	.word	0x8002980c

80026000 <argfd>:
80026000:	e92d4800 	push	{fp, lr}
80026004:	e28db004 	add	fp, sp, #4
80026008:	e24dd018 	sub	sp, sp, #24
8002600c:	e50b0010 	str	r0, [fp, #-16]
80026010:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026014:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026018:	e24b300c 	sub	r3, fp, #12
8002601c:	e1a01003 	mov	r1, r3
80026020:	e51b0010 	ldr	r0, [fp, #-16]
80026024:	ebffff65 	bl	80025dc0 <argint>
80026028:	e1a03000 	mov	r3, r0
8002602c:	e3530000 	cmp	r3, #0
80026030:	aa000001 	bge	8002603c <argfd+0x3c>
80026034:	e3e03000 	mvn	r3, #0
80026038:	ea00001d 	b	800260b4 <argfd+0xb4>
8002603c:	e51b300c 	ldr	r3, [fp, #-12]
80026040:	e3530000 	cmp	r3, #0
80026044:	ba00000b 	blt	80026078 <argfd+0x78>
80026048:	e51b300c 	ldr	r3, [fp, #-12]
8002604c:	e353000f 	cmp	r3, #15
80026050:	ca000008 	bgt	80026078 <argfd+0x78>
80026054:	e59f3064 	ldr	r3, [pc, #100]	@ 800260c0 <argfd+0xc0>
80026058:	e5933000 	ldr	r3, [r3]
8002605c:	e51b200c 	ldr	r2, [fp, #-12]
80026060:	e282200a 	add	r2, r2, #10
80026064:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80026068:	e50b3008 	str	r3, [fp, #-8]
8002606c:	e51b3008 	ldr	r3, [fp, #-8]
80026070:	e3530000 	cmp	r3, #0
80026074:	1a000001 	bne	80026080 <argfd+0x80>
80026078:	e3e03000 	mvn	r3, #0
8002607c:	ea00000c 	b	800260b4 <argfd+0xb4>
80026080:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026084:	e3530000 	cmp	r3, #0
80026088:	0a000002 	beq	80026098 <argfd+0x98>
8002608c:	e51b200c 	ldr	r2, [fp, #-12]
80026090:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026094:	e5832000 	str	r2, [r3]
80026098:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002609c:	e3530000 	cmp	r3, #0
800260a0:	0a000002 	beq	800260b0 <argfd+0xb0>
800260a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800260a8:	e51b2008 	ldr	r2, [fp, #-8]
800260ac:	e5832000 	str	r2, [r3]
800260b0:	e3a03000 	mov	r3, #0
800260b4:	e1a00003 	mov	r0, r3
800260b8:	e24bd004 	sub	sp, fp, #4
800260bc:	e8bd8800 	pop	{fp, pc}
800260c0:	800af548 	.word	0x800af548

800260c4 <fdalloc>:
800260c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800260c8:	e28db000 	add	fp, sp, #0
800260cc:	e24dd014 	sub	sp, sp, #20
800260d0:	e50b0010 	str	r0, [fp, #-16]
800260d4:	e3a03000 	mov	r3, #0
800260d8:	e50b3008 	str	r3, [fp, #-8]
800260dc:	ea000011 	b	80026128 <fdalloc+0x64>
800260e0:	e59f3060 	ldr	r3, [pc, #96]	@ 80026148 <fdalloc+0x84>
800260e4:	e5933000 	ldr	r3, [r3]
800260e8:	e51b2008 	ldr	r2, [fp, #-8]
800260ec:	e282200a 	add	r2, r2, #10
800260f0:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800260f4:	e3530000 	cmp	r3, #0
800260f8:	1a000007 	bne	8002611c <fdalloc+0x58>
800260fc:	e59f3044 	ldr	r3, [pc, #68]	@ 80026148 <fdalloc+0x84>
80026100:	e5933000 	ldr	r3, [r3]
80026104:	e51b2008 	ldr	r2, [fp, #-8]
80026108:	e282200a 	add	r2, r2, #10
8002610c:	e51b1010 	ldr	r1, [fp, #-16]
80026110:	e7831102 	str	r1, [r3, r2, lsl #2]
80026114:	e51b3008 	ldr	r3, [fp, #-8]
80026118:	ea000006 	b	80026138 <fdalloc+0x74>
8002611c:	e51b3008 	ldr	r3, [fp, #-8]
80026120:	e2833001 	add	r3, r3, #1
80026124:	e50b3008 	str	r3, [fp, #-8]
80026128:	e51b3008 	ldr	r3, [fp, #-8]
8002612c:	e353000f 	cmp	r3, #15
80026130:	daffffea 	ble	800260e0 <fdalloc+0x1c>
80026134:	e3e03000 	mvn	r3, #0
80026138:	e1a00003 	mov	r0, r3
8002613c:	e28bd000 	add	sp, fp, #0
80026140:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026144:	e12fff1e 	bx	lr
80026148:	800af548 	.word	0x800af548

8002614c <sys_dup>:
8002614c:	e92d4800 	push	{fp, lr}
80026150:	e28db004 	add	fp, sp, #4
80026154:	e24dd008 	sub	sp, sp, #8
80026158:	e24b300c 	sub	r3, fp, #12
8002615c:	e1a02003 	mov	r2, r3
80026160:	e3a01000 	mov	r1, #0
80026164:	e3a00000 	mov	r0, #0
80026168:	ebffffa4 	bl	80026000 <argfd>
8002616c:	e1a03000 	mov	r3, r0
80026170:	e3530000 	cmp	r3, #0
80026174:	aa000001 	bge	80026180 <sys_dup+0x34>
80026178:	e3e03000 	mvn	r3, #0
8002617c:	ea00000c 	b	800261b4 <sys_dup+0x68>
80026180:	e51b300c 	ldr	r3, [fp, #-12]
80026184:	e1a00003 	mov	r0, r3
80026188:	ebffffcd 	bl	800260c4 <fdalloc>
8002618c:	e50b0008 	str	r0, [fp, #-8]
80026190:	e51b3008 	ldr	r3, [fp, #-8]
80026194:	e3530000 	cmp	r3, #0
80026198:	aa000001 	bge	800261a4 <sys_dup+0x58>
8002619c:	e3e03000 	mvn	r3, #0
800261a0:	ea000003 	b	800261b4 <sys_dup+0x68>
800261a4:	e51b300c 	ldr	r3, [fp, #-12]
800261a8:	e1a00003 	mov	r0, r3
800261ac:	ebfff100 	bl	800225b4 <filedup>
800261b0:	e51b3008 	ldr	r3, [fp, #-8]
800261b4:	e1a00003 	mov	r0, r3
800261b8:	e24bd004 	sub	sp, fp, #4
800261bc:	e8bd8800 	pop	{fp, pc}

800261c0 <sys_read>:
800261c0:	e92d4800 	push	{fp, lr}
800261c4:	e28db004 	add	fp, sp, #4
800261c8:	e24dd010 	sub	sp, sp, #16
800261cc:	e24b3008 	sub	r3, fp, #8
800261d0:	e1a02003 	mov	r2, r3
800261d4:	e3a01000 	mov	r1, #0
800261d8:	e3a00000 	mov	r0, #0
800261dc:	ebffff87 	bl	80026000 <argfd>
800261e0:	e1a03000 	mov	r3, r0
800261e4:	e3530000 	cmp	r3, #0
800261e8:	ba00000e 	blt	80026228 <sys_read+0x68>
800261ec:	e24b300c 	sub	r3, fp, #12
800261f0:	e1a01003 	mov	r1, r3
800261f4:	e3a00002 	mov	r0, #2
800261f8:	ebfffef0 	bl	80025dc0 <argint>
800261fc:	e1a03000 	mov	r3, r0
80026200:	e3530000 	cmp	r3, #0
80026204:	ba000007 	blt	80026228 <sys_read+0x68>
80026208:	e51b200c 	ldr	r2, [fp, #-12]
8002620c:	e24b3010 	sub	r3, fp, #16
80026210:	e1a01003 	mov	r1, r3
80026214:	e3a00001 	mov	r0, #1
80026218:	ebffff03 	bl	80025e2c <argptr>
8002621c:	e1a03000 	mov	r3, r0
80026220:	e3530000 	cmp	r3, #0
80026224:	aa000001 	bge	80026230 <sys_read+0x70>
80026228:	e3e03000 	mvn	r3, #0
8002622c:	ea000005 	b	80026248 <sys_read+0x88>
80026230:	e51b3008 	ldr	r3, [fp, #-8]
80026234:	e51b1010 	ldr	r1, [fp, #-16]
80026238:	e51b200c 	ldr	r2, [fp, #-12]
8002623c:	e1a00003 	mov	r0, r3
80026240:	ebfff14c 	bl	80022778 <fileread>
80026244:	e1a03000 	mov	r3, r0
80026248:	e1a00003 	mov	r0, r3
8002624c:	e24bd004 	sub	sp, fp, #4
80026250:	e8bd8800 	pop	{fp, pc}

80026254 <sys_write>:
80026254:	e92d4800 	push	{fp, lr}
80026258:	e28db004 	add	fp, sp, #4
8002625c:	e24dd010 	sub	sp, sp, #16
80026260:	e24b3008 	sub	r3, fp, #8
80026264:	e1a02003 	mov	r2, r3
80026268:	e3a01000 	mov	r1, #0
8002626c:	e3a00000 	mov	r0, #0
80026270:	ebffff62 	bl	80026000 <argfd>
80026274:	e1a03000 	mov	r3, r0
80026278:	e3530000 	cmp	r3, #0
8002627c:	ba00000e 	blt	800262bc <sys_write+0x68>
80026280:	e24b300c 	sub	r3, fp, #12
80026284:	e1a01003 	mov	r1, r3
80026288:	e3a00002 	mov	r0, #2
8002628c:	ebfffecb 	bl	80025dc0 <argint>
80026290:	e1a03000 	mov	r3, r0
80026294:	e3530000 	cmp	r3, #0
80026298:	ba000007 	blt	800262bc <sys_write+0x68>
8002629c:	e51b200c 	ldr	r2, [fp, #-12]
800262a0:	e24b3010 	sub	r3, fp, #16
800262a4:	e1a01003 	mov	r1, r3
800262a8:	e3a00001 	mov	r0, #1
800262ac:	ebfffede 	bl	80025e2c <argptr>
800262b0:	e1a03000 	mov	r3, r0
800262b4:	e3530000 	cmp	r3, #0
800262b8:	aa000001 	bge	800262c4 <sys_write+0x70>
800262bc:	e3e03000 	mvn	r3, #0
800262c0:	ea000005 	b	800262dc <sys_write+0x88>
800262c4:	e51b3008 	ldr	r3, [fp, #-8]
800262c8:	e51b1010 	ldr	r1, [fp, #-16]
800262cc:	e51b200c 	ldr	r2, [fp, #-12]
800262d0:	e1a00003 	mov	r0, r3
800262d4:	ebfff164 	bl	8002286c <filewrite>
800262d8:	e1a03000 	mov	r3, r0
800262dc:	e1a00003 	mov	r0, r3
800262e0:	e24bd004 	sub	sp, fp, #4
800262e4:	e8bd8800 	pop	{fp, pc}

800262e8 <sys_close>:
800262e8:	e92d4800 	push	{fp, lr}
800262ec:	e28db004 	add	fp, sp, #4
800262f0:	e24dd008 	sub	sp, sp, #8
800262f4:	e24b200c 	sub	r2, fp, #12
800262f8:	e24b3008 	sub	r3, fp, #8
800262fc:	e1a01003 	mov	r1, r3
80026300:	e3a00000 	mov	r0, #0
80026304:	ebffff3d 	bl	80026000 <argfd>
80026308:	e1a03000 	mov	r3, r0
8002630c:	e3530000 	cmp	r3, #0
80026310:	aa000001 	bge	8002631c <sys_close+0x34>
80026314:	e3e03000 	mvn	r3, #0
80026318:	ea000009 	b	80026344 <sys_close+0x5c>
8002631c:	e59f302c 	ldr	r3, [pc, #44]	@ 80026350 <sys_close+0x68>
80026320:	e5933000 	ldr	r3, [r3]
80026324:	e51b2008 	ldr	r2, [fp, #-8]
80026328:	e282200a 	add	r2, r2, #10
8002632c:	e3a01000 	mov	r1, #0
80026330:	e7831102 	str	r1, [r3, r2, lsl #2]
80026334:	e51b300c 	ldr	r3, [fp, #-12]
80026338:	e1a00003 	mov	r0, r3
8002633c:	ebfff0b5 	bl	80022618 <fileclose>
80026340:	e3a03000 	mov	r3, #0
80026344:	e1a00003 	mov	r0, r3
80026348:	e24bd004 	sub	sp, fp, #4
8002634c:	e8bd8800 	pop	{fp, pc}
80026350:	800af548 	.word	0x800af548

80026354 <sys_fstat>:
80026354:	e92d4800 	push	{fp, lr}
80026358:	e28db004 	add	fp, sp, #4
8002635c:	e24dd008 	sub	sp, sp, #8
80026360:	e24b3008 	sub	r3, fp, #8
80026364:	e1a02003 	mov	r2, r3
80026368:	e3a01000 	mov	r1, #0
8002636c:	e3a00000 	mov	r0, #0
80026370:	ebffff22 	bl	80026000 <argfd>
80026374:	e1a03000 	mov	r3, r0
80026378:	e3530000 	cmp	r3, #0
8002637c:	ba000007 	blt	800263a0 <sys_fstat+0x4c>
80026380:	e24b300c 	sub	r3, fp, #12
80026384:	e3a02014 	mov	r2, #20
80026388:	e1a01003 	mov	r1, r3
8002638c:	e3a00001 	mov	r0, #1
80026390:	ebfffea5 	bl	80025e2c <argptr>
80026394:	e1a03000 	mov	r3, r0
80026398:	e3530000 	cmp	r3, #0
8002639c:	aa000001 	bge	800263a8 <sys_fstat+0x54>
800263a0:	e3e03000 	mvn	r3, #0
800263a4:	ea000005 	b	800263c0 <sys_fstat+0x6c>
800263a8:	e51b3008 	ldr	r3, [fp, #-8]
800263ac:	e51b200c 	ldr	r2, [fp, #-12]
800263b0:	e1a01002 	mov	r1, r2
800263b4:	e1a00003 	mov	r0, r3
800263b8:	ebfff0d2 	bl	80022708 <filestat>
800263bc:	e1a03000 	mov	r3, r0
800263c0:	e1a00003 	mov	r0, r3
800263c4:	e24bd004 	sub	sp, fp, #4
800263c8:	e8bd8800 	pop	{fp, pc}

800263cc <sys_link>:
800263cc:	e92d4800 	push	{fp, lr}
800263d0:	e28db004 	add	fp, sp, #4
800263d4:	e24dd020 	sub	sp, sp, #32
800263d8:	e24b3024 	sub	r3, fp, #36	@ 0x24
800263dc:	e1a01003 	mov	r1, r3
800263e0:	e3a00000 	mov	r0, #0
800263e4:	ebfffeb9 	bl	80025ed0 <argstr>
800263e8:	e1a03000 	mov	r3, r0
800263ec:	e3530000 	cmp	r3, #0
800263f0:	ba000006 	blt	80026410 <sys_link+0x44>
800263f4:	e24b3020 	sub	r3, fp, #32
800263f8:	e1a01003 	mov	r1, r3
800263fc:	e3a00001 	mov	r0, #1
80026400:	ebfffeb2 	bl	80025ed0 <argstr>
80026404:	e1a03000 	mov	r3, r0
80026408:	e3530000 	cmp	r3, #0
8002640c:	aa000001 	bge	80026418 <sys_link+0x4c>
80026410:	e3e03000 	mvn	r3, #0
80026414:	ea000055 	b	80026570 <sys_link+0x1a4>
80026418:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002641c:	e1a00003 	mov	r0, r3
80026420:	ebfff71a 	bl	80024090 <namei>
80026424:	e50b0008 	str	r0, [fp, #-8]
80026428:	e51b3008 	ldr	r3, [fp, #-8]
8002642c:	e3530000 	cmp	r3, #0
80026430:	1a000001 	bne	8002643c <sys_link+0x70>
80026434:	e3e03000 	mvn	r3, #0
80026438:	ea00004c 	b	80026570 <sys_link+0x1a4>
8002643c:	ebfff7ec 	bl	800243f4 <begin_trans>
80026440:	e51b0008 	ldr	r0, [fp, #-8]
80026444:	ebfff33e 	bl	80023144 <ilock>
80026448:	e51b3008 	ldr	r3, [fp, #-8]
8002644c:	e1d331f0 	ldrsh	r3, [r3, #16]
80026450:	e3530001 	cmp	r3, #1
80026454:	1a000004 	bne	8002646c <sys_link+0xa0>
80026458:	e51b0008 	ldr	r0, [fp, #-8]
8002645c:	ebfff3f9 	bl	80023448 <iunlockput>
80026460:	ebfff7f7 	bl	80024444 <commit_trans>
80026464:	e3e03000 	mvn	r3, #0
80026468:	ea000040 	b	80026570 <sys_link+0x1a4>
8002646c:	e51b3008 	ldr	r3, [fp, #-8]
80026470:	e1d331f6 	ldrsh	r3, [r3, #22]
80026474:	e6ff3073 	uxth	r3, r3
80026478:	e2833001 	add	r3, r3, #1
8002647c:	e6ff3073 	uxth	r3, r3
80026480:	e6bf2073 	sxth	r2, r3
80026484:	e51b3008 	ldr	r3, [fp, #-8]
80026488:	e1c321b6 	strh	r2, [r3, #22]
8002648c:	e51b0008 	ldr	r0, [fp, #-8]
80026490:	ebfff291 	bl	80022edc <iupdate>
80026494:	e51b0008 	ldr	r0, [fp, #-8]
80026498:	ebfff38d 	bl	800232d4 <iunlock>
8002649c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800264a0:	e24b201c 	sub	r2, fp, #28
800264a4:	e1a01002 	mov	r1, r2
800264a8:	e1a00003 	mov	r0, r3
800264ac:	ebfff704 	bl	800240c4 <nameiparent>
800264b0:	e50b000c 	str	r0, [fp, #-12]
800264b4:	e51b300c 	ldr	r3, [fp, #-12]
800264b8:	e3530000 	cmp	r3, #0
800264bc:	0a00001a 	beq	8002652c <sys_link+0x160>
800264c0:	e51b000c 	ldr	r0, [fp, #-12]
800264c4:	ebfff31e 	bl	80023144 <ilock>
800264c8:	e51b300c 	ldr	r3, [fp, #-12]
800264cc:	e5932000 	ldr	r2, [r3]
800264d0:	e51b3008 	ldr	r3, [fp, #-8]
800264d4:	e5933000 	ldr	r3, [r3]
800264d8:	e1520003 	cmp	r2, r3
800264dc:	1a000008 	bne	80026504 <sys_link+0x138>
800264e0:	e51b3008 	ldr	r3, [fp, #-8]
800264e4:	e5932004 	ldr	r2, [r3, #4]
800264e8:	e24b301c 	sub	r3, fp, #28
800264ec:	e1a01003 	mov	r1, r3
800264f0:	e51b000c 	ldr	r0, [fp, #-12]
800264f4:	ebfff60f 	bl	80023d38 <dirlink>
800264f8:	e1a03000 	mov	r3, r0
800264fc:	e3530000 	cmp	r3, #0
80026500:	aa000002 	bge	80026510 <sys_link+0x144>
80026504:	e51b000c 	ldr	r0, [fp, #-12]
80026508:	ebfff3ce 	bl	80023448 <iunlockput>
8002650c:	ea000007 	b	80026530 <sys_link+0x164>
80026510:	e51b000c 	ldr	r0, [fp, #-12]
80026514:	ebfff3cb 	bl	80023448 <iunlockput>
80026518:	e51b0008 	ldr	r0, [fp, #-8]
8002651c:	ebfff38e 	bl	8002335c <iput>
80026520:	ebfff7c7 	bl	80024444 <commit_trans>
80026524:	e3a03000 	mov	r3, #0
80026528:	ea000010 	b	80026570 <sys_link+0x1a4>
8002652c:	e1a00000 	nop			@ (mov r0, r0)
80026530:	e51b0008 	ldr	r0, [fp, #-8]
80026534:	ebfff302 	bl	80023144 <ilock>
80026538:	e51b3008 	ldr	r3, [fp, #-8]
8002653c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026540:	e6ff3073 	uxth	r3, r3
80026544:	e2433001 	sub	r3, r3, #1
80026548:	e6ff3073 	uxth	r3, r3
8002654c:	e6bf2073 	sxth	r2, r3
80026550:	e51b3008 	ldr	r3, [fp, #-8]
80026554:	e1c321b6 	strh	r2, [r3, #22]
80026558:	e51b0008 	ldr	r0, [fp, #-8]
8002655c:	ebfff25e 	bl	80022edc <iupdate>
80026560:	e51b0008 	ldr	r0, [fp, #-8]
80026564:	ebfff3b7 	bl	80023448 <iunlockput>
80026568:	ebfff7b5 	bl	80024444 <commit_trans>
8002656c:	e3e03000 	mvn	r3, #0
80026570:	e1a00003 	mov	r0, r3
80026574:	e24bd004 	sub	sp, fp, #4
80026578:	e8bd8800 	pop	{fp, pc}

8002657c <isdirempty>:
8002657c:	e92d4800 	push	{fp, lr}
80026580:	e28db004 	add	fp, sp, #4
80026584:	e24dd020 	sub	sp, sp, #32
80026588:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
8002658c:	e3a03020 	mov	r3, #32
80026590:	e50b3008 	str	r3, [fp, #-8]
80026594:	ea000011 	b	800265e0 <isdirempty+0x64>
80026598:	e51b2008 	ldr	r2, [fp, #-8]
8002659c:	e24b1018 	sub	r1, fp, #24
800265a0:	e3a03010 	mov	r3, #16
800265a4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800265a8:	ebfff491 	bl	800237f4 <readi>
800265ac:	e1a03000 	mov	r3, r0
800265b0:	e3530010 	cmp	r3, #16
800265b4:	0a000001 	beq	800265c0 <isdirempty+0x44>
800265b8:	e59f0044 	ldr	r0, [pc, #68]	@ 80026604 <isdirempty+0x88>
800265bc:	ebffed4c 	bl	80021af4 <panic>
800265c0:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
800265c4:	e3530000 	cmp	r3, #0
800265c8:	0a000001 	beq	800265d4 <isdirempty+0x58>
800265cc:	e3a03000 	mov	r3, #0
800265d0:	ea000008 	b	800265f8 <isdirempty+0x7c>
800265d4:	e51b3008 	ldr	r3, [fp, #-8]
800265d8:	e2833010 	add	r3, r3, #16
800265dc:	e50b3008 	str	r3, [fp, #-8]
800265e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800265e4:	e5932018 	ldr	r2, [r3, #24]
800265e8:	e51b3008 	ldr	r3, [fp, #-8]
800265ec:	e1520003 	cmp	r2, r3
800265f0:	8affffe8 	bhi	80026598 <isdirempty+0x1c>
800265f4:	e3a03001 	mov	r3, #1
800265f8:	e1a00003 	mov	r0, r3
800265fc:	e24bd004 	sub	sp, fp, #4
80026600:	e8bd8800 	pop	{fp, pc}
80026604:	80029828 	.word	0x80029828

80026608 <sys_unlink>:
80026608:	e92d4800 	push	{fp, lr}
8002660c:	e28db004 	add	fp, sp, #4
80026610:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026614:	e24b3030 	sub	r3, fp, #48	@ 0x30
80026618:	e1a01003 	mov	r1, r3
8002661c:	e3a00000 	mov	r0, #0
80026620:	ebfffe2a 	bl	80025ed0 <argstr>
80026624:	e1a03000 	mov	r3, r0
80026628:	e3530000 	cmp	r3, #0
8002662c:	aa000001 	bge	80026638 <sys_unlink+0x30>
80026630:	e3e03000 	mvn	r3, #0
80026634:	ea00006d 	b	800267f0 <sys_unlink+0x1e8>
80026638:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
8002663c:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80026640:	e1a01002 	mov	r1, r2
80026644:	e1a00003 	mov	r0, r3
80026648:	ebfff69d 	bl	800240c4 <nameiparent>
8002664c:	e50b0008 	str	r0, [fp, #-8]
80026650:	e51b3008 	ldr	r3, [fp, #-8]
80026654:	e3530000 	cmp	r3, #0
80026658:	1a000001 	bne	80026664 <sys_unlink+0x5c>
8002665c:	e3e03000 	mvn	r3, #0
80026660:	ea000062 	b	800267f0 <sys_unlink+0x1e8>
80026664:	ebfff762 	bl	800243f4 <begin_trans>
80026668:	e51b0008 	ldr	r0, [fp, #-8]
8002666c:	ebfff2b4 	bl	80023144 <ilock>
80026670:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026674:	e59f1180 	ldr	r1, [pc, #384]	@ 800267fc <sys_unlink+0x1f4>
80026678:	e1a00003 	mov	r0, r3
8002667c:	ebfff55e 	bl	80023bfc <namecmp>
80026680:	e1a03000 	mov	r3, r0
80026684:	e3530000 	cmp	r3, #0
80026688:	0a000051 	beq	800267d4 <sys_unlink+0x1cc>
8002668c:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026690:	e59f1168 	ldr	r1, [pc, #360]	@ 80026800 <sys_unlink+0x1f8>
80026694:	e1a00003 	mov	r0, r3
80026698:	ebfff557 	bl	80023bfc <namecmp>
8002669c:	e1a03000 	mov	r3, r0
800266a0:	e3530000 	cmp	r3, #0
800266a4:	0a00004a 	beq	800267d4 <sys_unlink+0x1cc>
800266a8:	e24b2034 	sub	r2, fp, #52	@ 0x34
800266ac:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800266b0:	e1a01003 	mov	r1, r3
800266b4:	e51b0008 	ldr	r0, [fp, #-8]
800266b8:	ebfff55c 	bl	80023c30 <dirlookup>
800266bc:	e50b000c 	str	r0, [fp, #-12]
800266c0:	e51b300c 	ldr	r3, [fp, #-12]
800266c4:	e3530000 	cmp	r3, #0
800266c8:	0a000043 	beq	800267dc <sys_unlink+0x1d4>
800266cc:	e51b000c 	ldr	r0, [fp, #-12]
800266d0:	ebfff29b 	bl	80023144 <ilock>
800266d4:	e51b300c 	ldr	r3, [fp, #-12]
800266d8:	e1d331f6 	ldrsh	r3, [r3, #22]
800266dc:	e3530000 	cmp	r3, #0
800266e0:	ca000001 	bgt	800266ec <sys_unlink+0xe4>
800266e4:	e59f0118 	ldr	r0, [pc, #280]	@ 80026804 <sys_unlink+0x1fc>
800266e8:	ebffed01 	bl	80021af4 <panic>
800266ec:	e51b300c 	ldr	r3, [fp, #-12]
800266f0:	e1d331f0 	ldrsh	r3, [r3, #16]
800266f4:	e3530001 	cmp	r3, #1
800266f8:	1a000007 	bne	8002671c <sys_unlink+0x114>
800266fc:	e51b000c 	ldr	r0, [fp, #-12]
80026700:	ebffff9d 	bl	8002657c <isdirempty>
80026704:	e1a03000 	mov	r3, r0
80026708:	e3530000 	cmp	r3, #0
8002670c:	1a000002 	bne	8002671c <sys_unlink+0x114>
80026710:	e51b000c 	ldr	r0, [fp, #-12]
80026714:	ebfff34b 	bl	80023448 <iunlockput>
80026718:	ea000030 	b	800267e0 <sys_unlink+0x1d8>
8002671c:	e24b301c 	sub	r3, fp, #28
80026720:	e3a02010 	mov	r2, #16
80026724:	e3a01000 	mov	r1, #0
80026728:	e1a00003 	mov	r0, r3
8002672c:	ebffe633 	bl	80020000 <memset>
80026730:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
80026734:	e24b101c 	sub	r1, fp, #28
80026738:	e3a03010 	mov	r3, #16
8002673c:	e51b0008 	ldr	r0, [fp, #-8]
80026740:	ebfff4a6 	bl	800239e0 <writei>
80026744:	e1a03000 	mov	r3, r0
80026748:	e3530010 	cmp	r3, #16
8002674c:	0a000001 	beq	80026758 <sys_unlink+0x150>
80026750:	e59f00b0 	ldr	r0, [pc, #176]	@ 80026808 <sys_unlink+0x200>
80026754:	ebffece6 	bl	80021af4 <panic>
80026758:	e51b300c 	ldr	r3, [fp, #-12]
8002675c:	e1d331f0 	ldrsh	r3, [r3, #16]
80026760:	e3530001 	cmp	r3, #1
80026764:	1a000009 	bne	80026790 <sys_unlink+0x188>
80026768:	e51b3008 	ldr	r3, [fp, #-8]
8002676c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026770:	e6ff3073 	uxth	r3, r3
80026774:	e2433001 	sub	r3, r3, #1
80026778:	e6ff3073 	uxth	r3, r3
8002677c:	e6bf2073 	sxth	r2, r3
80026780:	e51b3008 	ldr	r3, [fp, #-8]
80026784:	e1c321b6 	strh	r2, [r3, #22]
80026788:	e51b0008 	ldr	r0, [fp, #-8]
8002678c:	ebfff1d2 	bl	80022edc <iupdate>
80026790:	e51b0008 	ldr	r0, [fp, #-8]
80026794:	ebfff32b 	bl	80023448 <iunlockput>
80026798:	e51b300c 	ldr	r3, [fp, #-12]
8002679c:	e1d331f6 	ldrsh	r3, [r3, #22]
800267a0:	e6ff3073 	uxth	r3, r3
800267a4:	e2433001 	sub	r3, r3, #1
800267a8:	e6ff3073 	uxth	r3, r3
800267ac:	e6bf2073 	sxth	r2, r3
800267b0:	e51b300c 	ldr	r3, [fp, #-12]
800267b4:	e1c321b6 	strh	r2, [r3, #22]
800267b8:	e51b000c 	ldr	r0, [fp, #-12]
800267bc:	ebfff1c6 	bl	80022edc <iupdate>
800267c0:	e51b000c 	ldr	r0, [fp, #-12]
800267c4:	ebfff31f 	bl	80023448 <iunlockput>
800267c8:	ebfff71d 	bl	80024444 <commit_trans>
800267cc:	e3a03000 	mov	r3, #0
800267d0:	ea000006 	b	800267f0 <sys_unlink+0x1e8>
800267d4:	e1a00000 	nop			@ (mov r0, r0)
800267d8:	ea000000 	b	800267e0 <sys_unlink+0x1d8>
800267dc:	e1a00000 	nop			@ (mov r0, r0)
800267e0:	e51b0008 	ldr	r0, [fp, #-8]
800267e4:	ebfff317 	bl	80023448 <iunlockput>
800267e8:	ebfff715 	bl	80024444 <commit_trans>
800267ec:	e3e03000 	mvn	r3, #0
800267f0:	e1a00003 	mov	r0, r3
800267f4:	e24bd004 	sub	sp, fp, #4
800267f8:	e8bd8800 	pop	{fp, pc}
800267fc:	8002983c 	.word	0x8002983c
80026800:	80029840 	.word	0x80029840
80026804:	80029844 	.word	0x80029844
80026808:	80029858 	.word	0x80029858

8002680c <create>:
8002680c:	e92d4800 	push	{fp, lr}
80026810:	e28db004 	add	fp, sp, #4
80026814:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026818:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
8002681c:	e1a00001 	mov	r0, r1
80026820:	e1a01002 	mov	r1, r2
80026824:	e1a02003 	mov	r2, r3
80026828:	e1a03000 	mov	r3, r0
8002682c:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80026830:	e1a03001 	mov	r3, r1
80026834:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
80026838:	e1a03002 	mov	r3, r2
8002683c:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80026840:	e24b3020 	sub	r3, fp, #32
80026844:	e1a01003 	mov	r1, r3
80026848:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
8002684c:	ebfff61c 	bl	800240c4 <nameiparent>
80026850:	e50b0008 	str	r0, [fp, #-8]
80026854:	e51b3008 	ldr	r3, [fp, #-8]
80026858:	e3530000 	cmp	r3, #0
8002685c:	1a000001 	bne	80026868 <create+0x5c>
80026860:	e3a03000 	mov	r3, #0
80026864:	ea000063 	b	800269f8 <create+0x1ec>
80026868:	e51b0008 	ldr	r0, [fp, #-8]
8002686c:	ebfff234 	bl	80023144 <ilock>
80026870:	e24b2010 	sub	r2, fp, #16
80026874:	e24b3020 	sub	r3, fp, #32
80026878:	e1a01003 	mov	r1, r3
8002687c:	e51b0008 	ldr	r0, [fp, #-8]
80026880:	ebfff4ea 	bl	80023c30 <dirlookup>
80026884:	e50b000c 	str	r0, [fp, #-12]
80026888:	e51b300c 	ldr	r3, [fp, #-12]
8002688c:	e3530000 	cmp	r3, #0
80026890:	0a000010 	beq	800268d8 <create+0xcc>
80026894:	e51b0008 	ldr	r0, [fp, #-8]
80026898:	ebfff2ea 	bl	80023448 <iunlockput>
8002689c:	e51b000c 	ldr	r0, [fp, #-12]
800268a0:	ebfff227 	bl	80023144 <ilock>
800268a4:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
800268a8:	e3530002 	cmp	r3, #2
800268ac:	1a000005 	bne	800268c8 <create+0xbc>
800268b0:	e51b300c 	ldr	r3, [fp, #-12]
800268b4:	e1d331f0 	ldrsh	r3, [r3, #16]
800268b8:	e3530002 	cmp	r3, #2
800268bc:	1a000001 	bne	800268c8 <create+0xbc>
800268c0:	e51b300c 	ldr	r3, [fp, #-12]
800268c4:	ea00004b 	b	800269f8 <create+0x1ec>
800268c8:	e51b000c 	ldr	r0, [fp, #-12]
800268cc:	ebfff2dd 	bl	80023448 <iunlockput>
800268d0:	e3a03000 	mov	r3, #0
800268d4:	ea000047 	b	800269f8 <create+0x1ec>
800268d8:	e51b3008 	ldr	r3, [fp, #-8]
800268dc:	e5933000 	ldr	r3, [r3]
800268e0:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
800268e4:	e1a01002 	mov	r1, r2
800268e8:	e1a00003 	mov	r0, r3
800268ec:	ebfff13a 	bl	80022ddc <ialloc>
800268f0:	e50b000c 	str	r0, [fp, #-12]
800268f4:	e51b300c 	ldr	r3, [fp, #-12]
800268f8:	e3530000 	cmp	r3, #0
800268fc:	1a000001 	bne	80026908 <create+0xfc>
80026900:	e59f00fc 	ldr	r0, [pc, #252]	@ 80026a04 <create+0x1f8>
80026904:	ebffec7a 	bl	80021af4 <panic>
80026908:	e51b000c 	ldr	r0, [fp, #-12]
8002690c:	ebfff20c 	bl	80023144 <ilock>
80026910:	e51b300c 	ldr	r3, [fp, #-12]
80026914:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
80026918:	e1c321b2 	strh	r2, [r3, #18]
8002691c:	e51b300c 	ldr	r3, [fp, #-12]
80026920:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
80026924:	e1c321b4 	strh	r2, [r3, #20]
80026928:	e51b300c 	ldr	r3, [fp, #-12]
8002692c:	e3a02001 	mov	r2, #1
80026930:	e1c321b6 	strh	r2, [r3, #22]
80026934:	e51b000c 	ldr	r0, [fp, #-12]
80026938:	ebfff167 	bl	80022edc <iupdate>
8002693c:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026940:	e3530001 	cmp	r3, #1
80026944:	1a00001d 	bne	800269c0 <create+0x1b4>
80026948:	e51b3008 	ldr	r3, [fp, #-8]
8002694c:	e1d331f6 	ldrsh	r3, [r3, #22]
80026950:	e6ff3073 	uxth	r3, r3
80026954:	e2833001 	add	r3, r3, #1
80026958:	e6ff3073 	uxth	r3, r3
8002695c:	e6bf2073 	sxth	r2, r3
80026960:	e51b3008 	ldr	r3, [fp, #-8]
80026964:	e1c321b6 	strh	r2, [r3, #22]
80026968:	e51b0008 	ldr	r0, [fp, #-8]
8002696c:	ebfff15a 	bl	80022edc <iupdate>
80026970:	e51b300c 	ldr	r3, [fp, #-12]
80026974:	e5933004 	ldr	r3, [r3, #4]
80026978:	e1a02003 	mov	r2, r3
8002697c:	e59f1084 	ldr	r1, [pc, #132]	@ 80026a08 <create+0x1fc>
80026980:	e51b000c 	ldr	r0, [fp, #-12]
80026984:	ebfff4eb 	bl	80023d38 <dirlink>
80026988:	e1a03000 	mov	r3, r0
8002698c:	e3530000 	cmp	r3, #0
80026990:	ba000008 	blt	800269b8 <create+0x1ac>
80026994:	e51b3008 	ldr	r3, [fp, #-8]
80026998:	e5933004 	ldr	r3, [r3, #4]
8002699c:	e1a02003 	mov	r2, r3
800269a0:	e59f1064 	ldr	r1, [pc, #100]	@ 80026a0c <create+0x200>
800269a4:	e51b000c 	ldr	r0, [fp, #-12]
800269a8:	ebfff4e2 	bl	80023d38 <dirlink>
800269ac:	e1a03000 	mov	r3, r0
800269b0:	e3530000 	cmp	r3, #0
800269b4:	aa000001 	bge	800269c0 <create+0x1b4>
800269b8:	e59f0050 	ldr	r0, [pc, #80]	@ 80026a10 <create+0x204>
800269bc:	ebffec4c 	bl	80021af4 <panic>
800269c0:	e51b300c 	ldr	r3, [fp, #-12]
800269c4:	e5932004 	ldr	r2, [r3, #4]
800269c8:	e24b3020 	sub	r3, fp, #32
800269cc:	e1a01003 	mov	r1, r3
800269d0:	e51b0008 	ldr	r0, [fp, #-8]
800269d4:	ebfff4d7 	bl	80023d38 <dirlink>
800269d8:	e1a03000 	mov	r3, r0
800269dc:	e3530000 	cmp	r3, #0
800269e0:	aa000001 	bge	800269ec <create+0x1e0>
800269e4:	e59f0028 	ldr	r0, [pc, #40]	@ 80026a14 <create+0x208>
800269e8:	ebffec41 	bl	80021af4 <panic>
800269ec:	e51b0008 	ldr	r0, [fp, #-8]
800269f0:	ebfff294 	bl	80023448 <iunlockput>
800269f4:	e51b300c 	ldr	r3, [fp, #-12]
800269f8:	e1a00003 	mov	r0, r3
800269fc:	e24bd004 	sub	sp, fp, #4
80026a00:	e8bd8800 	pop	{fp, pc}
80026a04:	80029868 	.word	0x80029868
80026a08:	8002983c 	.word	0x8002983c
80026a0c:	80029840 	.word	0x80029840
80026a10:	80029878 	.word	0x80029878
80026a14:	80029884 	.word	0x80029884

80026a18 <sys_open>:
80026a18:	e92d4800 	push	{fp, lr}
80026a1c:	e28db004 	add	fp, sp, #4
80026a20:	e24dd018 	sub	sp, sp, #24
80026a24:	e24b3014 	sub	r3, fp, #20
80026a28:	e1a01003 	mov	r1, r3
80026a2c:	e3a00000 	mov	r0, #0
80026a30:	ebfffd26 	bl	80025ed0 <argstr>
80026a34:	e1a03000 	mov	r3, r0
80026a38:	e3530000 	cmp	r3, #0
80026a3c:	ba000006 	blt	80026a5c <sys_open+0x44>
80026a40:	e24b3018 	sub	r3, fp, #24
80026a44:	e1a01003 	mov	r1, r3
80026a48:	e3a00001 	mov	r0, #1
80026a4c:	ebfffcdb 	bl	80025dc0 <argint>
80026a50:	e1a03000 	mov	r3, r0
80026a54:	e3530000 	cmp	r3, #0
80026a58:	aa000001 	bge	80026a64 <sys_open+0x4c>
80026a5c:	e3e03000 	mvn	r3, #0
80026a60:	ea00005d 	b	80026bdc <sys_open+0x1c4>
80026a64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026a68:	e2033c02 	and	r3, r3, #512	@ 0x200
80026a6c:	e3530000 	cmp	r3, #0
80026a70:	0a00000c 	beq	80026aa8 <sys_open+0x90>
80026a74:	ebfff65e 	bl	800243f4 <begin_trans>
80026a78:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80026a7c:	e3a03000 	mov	r3, #0
80026a80:	e3a02000 	mov	r2, #0
80026a84:	e3a01002 	mov	r1, #2
80026a88:	ebffff5f 	bl	8002680c <create>
80026a8c:	e50b0008 	str	r0, [fp, #-8]
80026a90:	ebfff66b 	bl	80024444 <commit_trans>
80026a94:	e51b3008 	ldr	r3, [fp, #-8]
80026a98:	e3530000 	cmp	r3, #0
80026a9c:	1a000017 	bne	80026b00 <sys_open+0xe8>
80026aa0:	e3e03000 	mvn	r3, #0
80026aa4:	ea00004c 	b	80026bdc <sys_open+0x1c4>
80026aa8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026aac:	e1a00003 	mov	r0, r3
80026ab0:	ebfff576 	bl	80024090 <namei>
80026ab4:	e50b0008 	str	r0, [fp, #-8]
80026ab8:	e51b3008 	ldr	r3, [fp, #-8]
80026abc:	e3530000 	cmp	r3, #0
80026ac0:	1a000001 	bne	80026acc <sys_open+0xb4>
80026ac4:	e3e03000 	mvn	r3, #0
80026ac8:	ea000043 	b	80026bdc <sys_open+0x1c4>
80026acc:	e51b0008 	ldr	r0, [fp, #-8]
80026ad0:	ebfff19b 	bl	80023144 <ilock>
80026ad4:	e51b3008 	ldr	r3, [fp, #-8]
80026ad8:	e1d331f0 	ldrsh	r3, [r3, #16]
80026adc:	e3530001 	cmp	r3, #1
80026ae0:	1a000006 	bne	80026b00 <sys_open+0xe8>
80026ae4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026ae8:	e3530000 	cmp	r3, #0
80026aec:	0a000003 	beq	80026b00 <sys_open+0xe8>
80026af0:	e51b0008 	ldr	r0, [fp, #-8]
80026af4:	ebfff253 	bl	80023448 <iunlockput>
80026af8:	e3e03000 	mvn	r3, #0
80026afc:	ea000036 	b	80026bdc <sys_open+0x1c4>
80026b00:	ebffee88 	bl	80022528 <filealloc>
80026b04:	e50b000c 	str	r0, [fp, #-12]
80026b08:	e51b300c 	ldr	r3, [fp, #-12]
80026b0c:	e3530000 	cmp	r3, #0
80026b10:	0a000005 	beq	80026b2c <sys_open+0x114>
80026b14:	e51b000c 	ldr	r0, [fp, #-12]
80026b18:	ebfffd69 	bl	800260c4 <fdalloc>
80026b1c:	e50b0010 	str	r0, [fp, #-16]
80026b20:	e51b3010 	ldr	r3, [fp, #-16]
80026b24:	e3530000 	cmp	r3, #0
80026b28:	aa000008 	bge	80026b50 <sys_open+0x138>
80026b2c:	e51b300c 	ldr	r3, [fp, #-12]
80026b30:	e3530000 	cmp	r3, #0
80026b34:	0a000001 	beq	80026b40 <sys_open+0x128>
80026b38:	e51b000c 	ldr	r0, [fp, #-12]
80026b3c:	ebffeeb5 	bl	80022618 <fileclose>
80026b40:	e51b0008 	ldr	r0, [fp, #-8]
80026b44:	ebfff23f 	bl	80023448 <iunlockput>
80026b48:	e3e03000 	mvn	r3, #0
80026b4c:	ea000022 	b	80026bdc <sys_open+0x1c4>
80026b50:	e51b0008 	ldr	r0, [fp, #-8]
80026b54:	ebfff1de 	bl	800232d4 <iunlock>
80026b58:	e51b300c 	ldr	r3, [fp, #-12]
80026b5c:	e3a02002 	mov	r2, #2
80026b60:	e5c32000 	strb	r2, [r3]
80026b64:	e51b300c 	ldr	r3, [fp, #-12]
80026b68:	e51b2008 	ldr	r2, [fp, #-8]
80026b6c:	e5832010 	str	r2, [r3, #16]
80026b70:	e51b300c 	ldr	r3, [fp, #-12]
80026b74:	e3a02000 	mov	r2, #0
80026b78:	e5832014 	str	r2, [r3, #20]
80026b7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026b80:	e2033001 	and	r3, r3, #1
80026b84:	e3530000 	cmp	r3, #0
80026b88:	03a03001 	moveq	r3, #1
80026b8c:	13a03000 	movne	r3, #0
80026b90:	e6ef3073 	uxtb	r3, r3
80026b94:	e1a02003 	mov	r2, r3
80026b98:	e51b300c 	ldr	r3, [fp, #-12]
80026b9c:	e5c32008 	strb	r2, [r3, #8]
80026ba0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026ba4:	e2033001 	and	r3, r3, #1
80026ba8:	e3530000 	cmp	r3, #0
80026bac:	1a000003 	bne	80026bc0 <sys_open+0x1a8>
80026bb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026bb4:	e2033002 	and	r3, r3, #2
80026bb8:	e3530000 	cmp	r3, #0
80026bbc:	0a000001 	beq	80026bc8 <sys_open+0x1b0>
80026bc0:	e3a03001 	mov	r3, #1
80026bc4:	ea000000 	b	80026bcc <sys_open+0x1b4>
80026bc8:	e3a03000 	mov	r3, #0
80026bcc:	e6ef2073 	uxtb	r2, r3
80026bd0:	e51b300c 	ldr	r3, [fp, #-12]
80026bd4:	e5c32009 	strb	r2, [r3, #9]
80026bd8:	e51b3010 	ldr	r3, [fp, #-16]
80026bdc:	e1a00003 	mov	r0, r3
80026be0:	e24bd004 	sub	sp, fp, #4
80026be4:	e8bd8800 	pop	{fp, pc}

80026be8 <sys_mkdir>:
80026be8:	e92d4800 	push	{fp, lr}
80026bec:	e28db004 	add	fp, sp, #4
80026bf0:	e24dd008 	sub	sp, sp, #8
80026bf4:	ebfff5fe 	bl	800243f4 <begin_trans>
80026bf8:	e24b300c 	sub	r3, fp, #12
80026bfc:	e1a01003 	mov	r1, r3
80026c00:	e3a00000 	mov	r0, #0
80026c04:	ebfffcb1 	bl	80025ed0 <argstr>
80026c08:	e1a03000 	mov	r3, r0
80026c0c:	e3530000 	cmp	r3, #0
80026c10:	ba000008 	blt	80026c38 <sys_mkdir+0x50>
80026c14:	e51b000c 	ldr	r0, [fp, #-12]
80026c18:	e3a03000 	mov	r3, #0
80026c1c:	e3a02000 	mov	r2, #0
80026c20:	e3a01001 	mov	r1, #1
80026c24:	ebfffef8 	bl	8002680c <create>
80026c28:	e50b0008 	str	r0, [fp, #-8]
80026c2c:	e51b3008 	ldr	r3, [fp, #-8]
80026c30:	e3530000 	cmp	r3, #0
80026c34:	1a000002 	bne	80026c44 <sys_mkdir+0x5c>
80026c38:	ebfff601 	bl	80024444 <commit_trans>
80026c3c:	e3e03000 	mvn	r3, #0
80026c40:	ea000003 	b	80026c54 <sys_mkdir+0x6c>
80026c44:	e51b0008 	ldr	r0, [fp, #-8]
80026c48:	ebfff1fe 	bl	80023448 <iunlockput>
80026c4c:	ebfff5fc 	bl	80024444 <commit_trans>
80026c50:	e3a03000 	mov	r3, #0
80026c54:	e1a00003 	mov	r0, r3
80026c58:	e24bd004 	sub	sp, fp, #4
80026c5c:	e8bd8800 	pop	{fp, pc}

80026c60 <sys_mknod>:
80026c60:	e92d4800 	push	{fp, lr}
80026c64:	e28db004 	add	fp, sp, #4
80026c68:	e24dd018 	sub	sp, sp, #24
80026c6c:	ebfff5e0 	bl	800243f4 <begin_trans>
80026c70:	e24b3010 	sub	r3, fp, #16
80026c74:	e1a01003 	mov	r1, r3
80026c78:	e3a00000 	mov	r0, #0
80026c7c:	ebfffc93 	bl	80025ed0 <argstr>
80026c80:	e50b0008 	str	r0, [fp, #-8]
80026c84:	e51b3008 	ldr	r3, [fp, #-8]
80026c88:	e3530000 	cmp	r3, #0
80026c8c:	ba000018 	blt	80026cf4 <sys_mknod+0x94>
80026c90:	e24b3014 	sub	r3, fp, #20
80026c94:	e1a01003 	mov	r1, r3
80026c98:	e3a00001 	mov	r0, #1
80026c9c:	ebfffc47 	bl	80025dc0 <argint>
80026ca0:	e1a03000 	mov	r3, r0
80026ca4:	e3530000 	cmp	r3, #0
80026ca8:	ba000011 	blt	80026cf4 <sys_mknod+0x94>
80026cac:	e24b3018 	sub	r3, fp, #24
80026cb0:	e1a01003 	mov	r1, r3
80026cb4:	e3a00002 	mov	r0, #2
80026cb8:	ebfffc40 	bl	80025dc0 <argint>
80026cbc:	e1a03000 	mov	r3, r0
80026cc0:	e3530000 	cmp	r3, #0
80026cc4:	ba00000a 	blt	80026cf4 <sys_mknod+0x94>
80026cc8:	e51b0010 	ldr	r0, [fp, #-16]
80026ccc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026cd0:	e6bf2073 	sxth	r2, r3
80026cd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026cd8:	e6bf3073 	sxth	r3, r3
80026cdc:	e3a01003 	mov	r1, #3
80026ce0:	ebfffec9 	bl	8002680c <create>
80026ce4:	e50b000c 	str	r0, [fp, #-12]
80026ce8:	e51b300c 	ldr	r3, [fp, #-12]
80026cec:	e3530000 	cmp	r3, #0
80026cf0:	1a000002 	bne	80026d00 <sys_mknod+0xa0>
80026cf4:	ebfff5d2 	bl	80024444 <commit_trans>
80026cf8:	e3e03000 	mvn	r3, #0
80026cfc:	ea000003 	b	80026d10 <sys_mknod+0xb0>
80026d00:	e51b000c 	ldr	r0, [fp, #-12]
80026d04:	ebfff1cf 	bl	80023448 <iunlockput>
80026d08:	ebfff5cd 	bl	80024444 <commit_trans>
80026d0c:	e3a03000 	mov	r3, #0
80026d10:	e1a00003 	mov	r0, r3
80026d14:	e24bd004 	sub	sp, fp, #4
80026d18:	e8bd8800 	pop	{fp, pc}

80026d1c <sys_chdir>:
80026d1c:	e92d4800 	push	{fp, lr}
80026d20:	e28db004 	add	fp, sp, #4
80026d24:	e24dd008 	sub	sp, sp, #8
80026d28:	e24b300c 	sub	r3, fp, #12
80026d2c:	e1a01003 	mov	r1, r3
80026d30:	e3a00000 	mov	r0, #0
80026d34:	ebfffc65 	bl	80025ed0 <argstr>
80026d38:	e1a03000 	mov	r3, r0
80026d3c:	e3530000 	cmp	r3, #0
80026d40:	ba000006 	blt	80026d60 <sys_chdir+0x44>
80026d44:	e51b300c 	ldr	r3, [fp, #-12]
80026d48:	e1a00003 	mov	r0, r3
80026d4c:	ebfff4cf 	bl	80024090 <namei>
80026d50:	e50b0008 	str	r0, [fp, #-8]
80026d54:	e51b3008 	ldr	r3, [fp, #-8]
80026d58:	e3530000 	cmp	r3, #0
80026d5c:	1a000001 	bne	80026d68 <sys_chdir+0x4c>
80026d60:	e3e03000 	mvn	r3, #0
80026d64:	ea000015 	b	80026dc0 <sys_chdir+0xa4>
80026d68:	e51b0008 	ldr	r0, [fp, #-8]
80026d6c:	ebfff0f4 	bl	80023144 <ilock>
80026d70:	e51b3008 	ldr	r3, [fp, #-8]
80026d74:	e1d331f0 	ldrsh	r3, [r3, #16]
80026d78:	e3530001 	cmp	r3, #1
80026d7c:	0a000003 	beq	80026d90 <sys_chdir+0x74>
80026d80:	e51b0008 	ldr	r0, [fp, #-8]
80026d84:	ebfff1af 	bl	80023448 <iunlockput>
80026d88:	e3e03000 	mvn	r3, #0
80026d8c:	ea00000b 	b	80026dc0 <sys_chdir+0xa4>
80026d90:	e51b0008 	ldr	r0, [fp, #-8]
80026d94:	ebfff14e 	bl	800232d4 <iunlock>
80026d98:	e59f302c 	ldr	r3, [pc, #44]	@ 80026dcc <sys_chdir+0xb0>
80026d9c:	e5933000 	ldr	r3, [r3]
80026da0:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80026da4:	e1a00003 	mov	r0, r3
80026da8:	ebfff16b 	bl	8002335c <iput>
80026dac:	e59f3018 	ldr	r3, [pc, #24]	@ 80026dcc <sys_chdir+0xb0>
80026db0:	e5933000 	ldr	r3, [r3]
80026db4:	e51b2008 	ldr	r2, [fp, #-8]
80026db8:	e5832068 	str	r2, [r3, #104]	@ 0x68
80026dbc:	e3a03000 	mov	r3, #0
80026dc0:	e1a00003 	mov	r0, r3
80026dc4:	e24bd004 	sub	sp, fp, #4
80026dc8:	e8bd8800 	pop	{fp, pc}
80026dcc:	800af548 	.word	0x800af548

80026dd0 <sys_exec>:
80026dd0:	e92d4800 	push	{fp, lr}
80026dd4:	e28db004 	add	fp, sp, #4
80026dd8:	e24dd090 	sub	sp, sp, #144	@ 0x90
80026ddc:	e24b300c 	sub	r3, fp, #12
80026de0:	e1a01003 	mov	r1, r3
80026de4:	e3a00000 	mov	r0, #0
80026de8:	ebfffc38 	bl	80025ed0 <argstr>
80026dec:	e1a03000 	mov	r3, r0
80026df0:	e3530000 	cmp	r3, #0
80026df4:	ba000006 	blt	80026e14 <sys_exec+0x44>
80026df8:	e24b3090 	sub	r3, fp, #144	@ 0x90
80026dfc:	e1a01003 	mov	r1, r3
80026e00:	e3a00001 	mov	r0, #1
80026e04:	ebfffbed 	bl	80025dc0 <argint>
80026e08:	e1a03000 	mov	r3, r0
80026e0c:	e3530000 	cmp	r3, #0
80026e10:	aa000001 	bge	80026e1c <sys_exec+0x4c>
80026e14:	e3e03000 	mvn	r3, #0
80026e18:	ea00003a 	b	80026f08 <sys_exec+0x138>
80026e1c:	e24b308c 	sub	r3, fp, #140	@ 0x8c
80026e20:	e3a02080 	mov	r2, #128	@ 0x80
80026e24:	e3a01000 	mov	r1, #0
80026e28:	e1a00003 	mov	r0, r3
80026e2c:	ebffe473 	bl	80020000 <memset>
80026e30:	e3a03000 	mov	r3, #0
80026e34:	e50b3008 	str	r3, [fp, #-8]
80026e38:	e51b3008 	ldr	r3, [fp, #-8]
80026e3c:	e353001f 	cmp	r3, #31
80026e40:	9a000001 	bls	80026e4c <sys_exec+0x7c>
80026e44:	e3e03000 	mvn	r3, #0
80026e48:	ea00002e 	b	80026f08 <sys_exec+0x138>
80026e4c:	e51b3008 	ldr	r3, [fp, #-8]
80026e50:	e1a03103 	lsl	r3, r3, #2
80026e54:	e1a02003 	mov	r2, r3
80026e58:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
80026e5c:	e0823003 	add	r3, r2, r3
80026e60:	e24b2094 	sub	r2, fp, #148	@ 0x94
80026e64:	e1a01002 	mov	r1, r2
80026e68:	e1a00003 	mov	r0, r3
80026e6c:	ebfffb87 	bl	80025c90 <fetchint>
80026e70:	e1a03000 	mov	r3, r0
80026e74:	e3530000 	cmp	r3, #0
80026e78:	aa000001 	bge	80026e84 <sys_exec+0xb4>
80026e7c:	e3e03000 	mvn	r3, #0
80026e80:	ea000020 	b	80026f08 <sys_exec+0x138>
80026e84:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
80026e88:	e3530000 	cmp	r3, #0
80026e8c:	1a00000d 	bne	80026ec8 <sys_exec+0xf8>
80026e90:	e51b3008 	ldr	r3, [fp, #-8]
80026e94:	e1a03103 	lsl	r3, r3, #2
80026e98:	e2433004 	sub	r3, r3, #4
80026e9c:	e083300b 	add	r3, r3, fp
80026ea0:	e3a02000 	mov	r2, #0
80026ea4:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
80026ea8:	e1a00000 	nop			@ (mov r0, r0)
80026eac:	e51b300c 	ldr	r3, [fp, #-12]
80026eb0:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80026eb4:	e1a01002 	mov	r1, r2
80026eb8:	e1a00003 	mov	r0, r3
80026ebc:	ebffec5d 	bl	80022038 <exec>
80026ec0:	e1a03000 	mov	r3, r0
80026ec4:	ea00000f 	b	80026f08 <sys_exec+0x138>
80026ec8:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
80026ecc:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80026ed0:	e51b3008 	ldr	r3, [fp, #-8]
80026ed4:	e1a03103 	lsl	r3, r3, #2
80026ed8:	e0823003 	add	r3, r2, r3
80026edc:	e1a01003 	mov	r1, r3
80026ee0:	ebfffb88 	bl	80025d08 <fetchstr>
80026ee4:	e1a03000 	mov	r3, r0
80026ee8:	e3530000 	cmp	r3, #0
80026eec:	aa000001 	bge	80026ef8 <sys_exec+0x128>
80026ef0:	e3e03000 	mvn	r3, #0
80026ef4:	ea000003 	b	80026f08 <sys_exec+0x138>
80026ef8:	e51b3008 	ldr	r3, [fp, #-8]
80026efc:	e2833001 	add	r3, r3, #1
80026f00:	e50b3008 	str	r3, [fp, #-8]
80026f04:	eaffffcb 	b	80026e38 <sys_exec+0x68>
80026f08:	e1a00003 	mov	r0, r3
80026f0c:	e24bd004 	sub	sp, fp, #4
80026f10:	e8bd8800 	pop	{fp, pc}

80026f14 <sys_pipe>:
80026f14:	e92d4800 	push	{fp, lr}
80026f18:	e28db004 	add	fp, sp, #4
80026f1c:	e24dd018 	sub	sp, sp, #24
80026f20:	e24b3010 	sub	r3, fp, #16
80026f24:	e3a02008 	mov	r2, #8
80026f28:	e1a01003 	mov	r1, r3
80026f2c:	e3a00000 	mov	r0, #0
80026f30:	ebfffbbd 	bl	80025e2c <argptr>
80026f34:	e1a03000 	mov	r3, r0
80026f38:	e3530000 	cmp	r3, #0
80026f3c:	aa000001 	bge	80026f48 <sys_pipe+0x34>
80026f40:	e3e03000 	mvn	r3, #0
80026f44:	ea000032 	b	80027014 <sys_pipe+0x100>
80026f48:	e24b2018 	sub	r2, fp, #24
80026f4c:	e24b3014 	sub	r3, fp, #20
80026f50:	e1a01002 	mov	r1, r2
80026f54:	e1a00003 	mov	r0, r3
80026f58:	ebfff64c 	bl	80024890 <pipealloc>
80026f5c:	e1a03000 	mov	r3, r0
80026f60:	e3530000 	cmp	r3, #0
80026f64:	aa000001 	bge	80026f70 <sys_pipe+0x5c>
80026f68:	e3e03000 	mvn	r3, #0
80026f6c:	ea000028 	b	80027014 <sys_pipe+0x100>
80026f70:	e3e03000 	mvn	r3, #0
80026f74:	e50b3008 	str	r3, [fp, #-8]
80026f78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026f7c:	e1a00003 	mov	r0, r3
80026f80:	ebfffc4f 	bl	800260c4 <fdalloc>
80026f84:	e50b0008 	str	r0, [fp, #-8]
80026f88:	e51b3008 	ldr	r3, [fp, #-8]
80026f8c:	e3530000 	cmp	r3, #0
80026f90:	ba000006 	blt	80026fb0 <sys_pipe+0x9c>
80026f94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026f98:	e1a00003 	mov	r0, r3
80026f9c:	ebfffc48 	bl	800260c4 <fdalloc>
80026fa0:	e50b000c 	str	r0, [fp, #-12]
80026fa4:	e51b300c 	ldr	r3, [fp, #-12]
80026fa8:	e3530000 	cmp	r3, #0
80026fac:	aa000010 	bge	80026ff4 <sys_pipe+0xe0>
80026fb0:	e51b3008 	ldr	r3, [fp, #-8]
80026fb4:	e3530000 	cmp	r3, #0
80026fb8:	ba000005 	blt	80026fd4 <sys_pipe+0xc0>
80026fbc:	e59f305c 	ldr	r3, [pc, #92]	@ 80027020 <sys_pipe+0x10c>
80026fc0:	e5933000 	ldr	r3, [r3]
80026fc4:	e51b2008 	ldr	r2, [fp, #-8]
80026fc8:	e282200a 	add	r2, r2, #10
80026fcc:	e3a01000 	mov	r1, #0
80026fd0:	e7831102 	str	r1, [r3, r2, lsl #2]
80026fd4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026fd8:	e1a00003 	mov	r0, r3
80026fdc:	ebffed8d 	bl	80022618 <fileclose>
80026fe0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026fe4:	e1a00003 	mov	r0, r3
80026fe8:	ebffed8a 	bl	80022618 <fileclose>
80026fec:	e3e03000 	mvn	r3, #0
80026ff0:	ea000007 	b	80027014 <sys_pipe+0x100>
80026ff4:	e51b3010 	ldr	r3, [fp, #-16]
80026ff8:	e51b2008 	ldr	r2, [fp, #-8]
80026ffc:	e5832000 	str	r2, [r3]
80027000:	e51b3010 	ldr	r3, [fp, #-16]
80027004:	e2833004 	add	r3, r3, #4
80027008:	e51b200c 	ldr	r2, [fp, #-12]
8002700c:	e5832000 	str	r2, [r3]
80027010:	e3a03000 	mov	r3, #0
80027014:	e1a00003 	mov	r0, r3
80027018:	e24bd004 	sub	sp, fp, #4
8002701c:	e8bd8800 	pop	{fp, pc}
80027020:	800af548 	.word	0x800af548

80027024 <sys_fork>:
80027024:	e92d4800 	push	{fp, lr}
80027028:	e28db004 	add	fp, sp, #4
8002702c:	ebfff860 	bl	800251b4 <fork>
80027030:	e1a03000 	mov	r3, r0
80027034:	e1a00003 	mov	r0, r3
80027038:	e8bd8800 	pop	{fp, pc}

8002703c <sys_exit>:
8002703c:	e92d4800 	push	{fp, lr}
80027040:	e28db004 	add	fp, sp, #4
80027044:	ebfff8ce 	bl	80025384 <exit>
80027048:	e3a03000 	mov	r3, #0
8002704c:	e1a00003 	mov	r0, r3
80027050:	e8bd8800 	pop	{fp, pc}

80027054 <sys_wait>:
80027054:	e92d4800 	push	{fp, lr}
80027058:	e28db004 	add	fp, sp, #4
8002705c:	ebfff92a 	bl	8002550c <wait>
80027060:	e1a03000 	mov	r3, r0
80027064:	e1a00003 	mov	r0, r3
80027068:	e8bd8800 	pop	{fp, pc}

8002706c <sys_kill>:
8002706c:	e92d4800 	push	{fp, lr}
80027070:	e28db004 	add	fp, sp, #4
80027074:	e24dd008 	sub	sp, sp, #8
80027078:	e24b3008 	sub	r3, fp, #8
8002707c:	e1a01003 	mov	r1, r3
80027080:	e3a00000 	mov	r0, #0
80027084:	ebfffb4d 	bl	80025dc0 <argint>
80027088:	e1a03000 	mov	r3, r0
8002708c:	e3530000 	cmp	r3, #0
80027090:	aa000001 	bge	8002709c <sys_kill+0x30>
80027094:	e3e03000 	mvn	r3, #0
80027098:	ea000003 	b	800270ac <sys_kill+0x40>
8002709c:	e51b3008 	ldr	r3, [fp, #-8]
800270a0:	e1a00003 	mov	r0, r3
800270a4:	ebfffa5d 	bl	80025a20 <kill>
800270a8:	e1a03000 	mov	r3, r0
800270ac:	e1a00003 	mov	r0, r3
800270b0:	e24bd004 	sub	sp, fp, #4
800270b4:	e8bd8800 	pop	{fp, pc}

800270b8 <sys_getpid>:
800270b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800270bc:	e28db000 	add	fp, sp, #0
800270c0:	e59f3014 	ldr	r3, [pc, #20]	@ 800270dc <sys_getpid+0x24>
800270c4:	e5933000 	ldr	r3, [r3]
800270c8:	e5933010 	ldr	r3, [r3, #16]
800270cc:	e1a00003 	mov	r0, r3
800270d0:	e28bd000 	add	sp, fp, #0
800270d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800270d8:	e12fff1e 	bx	lr
800270dc:	800af548 	.word	0x800af548

800270e0 <sys_sbrk>:
800270e0:	e92d4800 	push	{fp, lr}
800270e4:	e28db004 	add	fp, sp, #4
800270e8:	e24dd008 	sub	sp, sp, #8
800270ec:	e24b300c 	sub	r3, fp, #12
800270f0:	e1a01003 	mov	r1, r3
800270f4:	e3a00000 	mov	r0, #0
800270f8:	ebfffb30 	bl	80025dc0 <argint>
800270fc:	e1a03000 	mov	r3, r0
80027100:	e3530000 	cmp	r3, #0
80027104:	aa000001 	bge	80027110 <sys_sbrk+0x30>
80027108:	e3e03000 	mvn	r3, #0
8002710c:	ea00000c 	b	80027144 <sys_sbrk+0x64>
80027110:	e59f3038 	ldr	r3, [pc, #56]	@ 80027150 <sys_sbrk+0x70>
80027114:	e5933000 	ldr	r3, [r3]
80027118:	e5933000 	ldr	r3, [r3]
8002711c:	e50b3008 	str	r3, [fp, #-8]
80027120:	e51b300c 	ldr	r3, [fp, #-12]
80027124:	e1a00003 	mov	r0, r3
80027128:	ebfff7dc 	bl	800250a0 <growproc>
8002712c:	e1a03000 	mov	r3, r0
80027130:	e3530000 	cmp	r3, #0
80027134:	aa000001 	bge	80027140 <sys_sbrk+0x60>
80027138:	e3e03000 	mvn	r3, #0
8002713c:	ea000000 	b	80027144 <sys_sbrk+0x64>
80027140:	e51b3008 	ldr	r3, [fp, #-8]
80027144:	e1a00003 	mov	r0, r3
80027148:	e24bd004 	sub	sp, fp, #4
8002714c:	e8bd8800 	pop	{fp, pc}
80027150:	800af548 	.word	0x800af548

80027154 <sys_sleep>:
80027154:	e92d4800 	push	{fp, lr}
80027158:	e28db004 	add	fp, sp, #4
8002715c:	e24dd008 	sub	sp, sp, #8
80027160:	e24b300c 	sub	r3, fp, #12
80027164:	e1a01003 	mov	r1, r3
80027168:	e3a00000 	mov	r0, #0
8002716c:	ebfffb13 	bl	80025dc0 <argint>
80027170:	e1a03000 	mov	r3, r0
80027174:	e3530000 	cmp	r3, #0
80027178:	aa000001 	bge	80027184 <sys_sleep+0x30>
8002717c:	e3e03000 	mvn	r3, #0
80027180:	ea00001b 	b	800271f4 <sys_sleep+0xa0>
80027184:	e59f0074 	ldr	r0, [pc, #116]	@ 80027200 <sys_sleep+0xac>
80027188:	ebfffa9b 	bl	80025bfc <acquire>
8002718c:	e59f3070 	ldr	r3, [pc, #112]	@ 80027204 <sys_sleep+0xb0>
80027190:	e5933000 	ldr	r3, [r3]
80027194:	e50b3008 	str	r3, [fp, #-8]
80027198:	ea00000b 	b	800271cc <sys_sleep+0x78>
8002719c:	e59f3064 	ldr	r3, [pc, #100]	@ 80027208 <sys_sleep+0xb4>
800271a0:	e5933000 	ldr	r3, [r3]
800271a4:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800271a8:	e3530000 	cmp	r3, #0
800271ac:	0a000003 	beq	800271c0 <sys_sleep+0x6c>
800271b0:	e59f0048 	ldr	r0, [pc, #72]	@ 80027200 <sys_sleep+0xac>
800271b4:	ebfffa9b 	bl	80025c28 <release>
800271b8:	e3e03000 	mvn	r3, #0
800271bc:	ea00000c 	b	800271f4 <sys_sleep+0xa0>
800271c0:	e59f1038 	ldr	r1, [pc, #56]	@ 80027200 <sys_sleep+0xac>
800271c4:	e59f0038 	ldr	r0, [pc, #56]	@ 80027204 <sys_sleep+0xb0>
800271c8:	ebfff9b1 	bl	80025894 <sleep>
800271cc:	e59f3030 	ldr	r3, [pc, #48]	@ 80027204 <sys_sleep+0xb0>
800271d0:	e5932000 	ldr	r2, [r3]
800271d4:	e51b3008 	ldr	r3, [fp, #-8]
800271d8:	e0423003 	sub	r3, r2, r3
800271dc:	e51b200c 	ldr	r2, [fp, #-12]
800271e0:	e1530002 	cmp	r3, r2
800271e4:	3affffec 	bcc	8002719c <sys_sleep+0x48>
800271e8:	e59f0010 	ldr	r0, [pc, #16]	@ 80027200 <sys_sleep+0xac>
800271ec:	ebfffa8d 	bl	80025c28 <release>
800271f0:	e3a03000 	mov	r3, #0
800271f4:	e1a00003 	mov	r0, r3
800271f8:	e24bd004 	sub	sp, fp, #4
800271fc:	e8bd8800 	pop	{fp, pc}
80027200:	800af60c 	.word	0x800af60c
80027204:	800af640 	.word	0x800af640
80027208:	800af548 	.word	0x800af548

8002720c <sys_uptime>:
8002720c:	e92d4800 	push	{fp, lr}
80027210:	e28db004 	add	fp, sp, #4
80027214:	e24dd008 	sub	sp, sp, #8
80027218:	e59f0024 	ldr	r0, [pc, #36]	@ 80027244 <sys_uptime+0x38>
8002721c:	ebfffa76 	bl	80025bfc <acquire>
80027220:	e59f3020 	ldr	r3, [pc, #32]	@ 80027248 <sys_uptime+0x3c>
80027224:	e5933000 	ldr	r3, [r3]
80027228:	e50b3008 	str	r3, [fp, #-8]
8002722c:	e59f0010 	ldr	r0, [pc, #16]	@ 80027244 <sys_uptime+0x38>
80027230:	ebfffa7c 	bl	80025c28 <release>
80027234:	e51b3008 	ldr	r3, [fp, #-8]
80027238:	e1a00003 	mov	r0, r3
8002723c:	e24bd004 	sub	sp, fp, #4
80027240:	e8bd8800 	pop	{fp, pc}
80027244:	800af60c 	.word	0x800af60c
80027248:	800af640 	.word	0x800af640

8002724c <sys_pgpte>:
8002724c:	e92d4800 	push	{fp, lr}
80027250:	e28db004 	add	fp, sp, #4
80027254:	e24dd010 	sub	sp, sp, #16
80027258:	e59f3068 	ldr	r3, [pc, #104]	@ 800272c8 <sys_pgpte+0x7c>
8002725c:	e5933000 	ldr	r3, [r3]
80027260:	e5933004 	ldr	r3, [r3, #4]
80027264:	e50b3008 	str	r3, [fp, #-8]
80027268:	e24b3010 	sub	r3, fp, #16
8002726c:	e1a01003 	mov	r1, r3
80027270:	e3a00000 	mov	r0, #0
80027274:	ebfffad1 	bl	80025dc0 <argint>
80027278:	e1a03000 	mov	r3, r0
8002727c:	e3530000 	cmp	r3, #0
80027280:	aa000001 	bge	8002728c <sys_pgpte+0x40>
80027284:	e3e03000 	mvn	r3, #0
80027288:	ea00000b 	b	800272bc <sys_pgpte+0x70>
8002728c:	e51b3010 	ldr	r3, [fp, #-16]
80027290:	e1a01003 	mov	r1, r3
80027294:	e51b0008 	ldr	r0, [fp, #-8]
80027298:	eb00062a 	bl	80028b48 <getpte>
8002729c:	e50b000c 	str	r0, [fp, #-12]
800272a0:	e51b300c 	ldr	r3, [fp, #-12]
800272a4:	e3530000 	cmp	r3, #0
800272a8:	1a000001 	bne	800272b4 <sys_pgpte+0x68>
800272ac:	e3a03000 	mov	r3, #0
800272b0:	ea000001 	b	800272bc <sys_pgpte+0x70>
800272b4:	e51b300c 	ldr	r3, [fp, #-12]
800272b8:	e5933000 	ldr	r3, [r3]
800272bc:	e1a00003 	mov	r0, r3
800272c0:	e24bd004 	sub	sp, fp, #4
800272c4:	e8bd8800 	pop	{fp, pc}
800272c8:	800af548 	.word	0x800af548

800272cc <sys_ugetpid>:
800272cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800272d0:	e28db000 	add	fp, sp, #0
800272d4:	e59f3014 	ldr	r3, [pc, #20]	@ 800272f0 <sys_ugetpid+0x24>
800272d8:	e5933000 	ldr	r3, [r3]
800272dc:	e5933010 	ldr	r3, [r3, #16]
800272e0:	e1a00003 	mov	r0, r3
800272e4:	e28bd000 	add	sp, fp, #0
800272e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800272ec:	e12fff1e 	bx	lr
800272f0:	800af548 	.word	0x800af548

800272f4 <sys_kpt>:
800272f4:	e92d4800 	push	{fp, lr}
800272f8:	e28db004 	add	fp, sp, #4
800272fc:	eb0005e8 	bl	80028aa4 <kvminfo>
80027300:	e3a03000 	mov	r3, #0
80027304:	e1a00003 	mov	r0, r3
80027308:	e8bd8800 	pop	{fp, pc}

8002730c <trap_swi>:
8002730c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027310:	e14f2000 	mrs	r2, SPSR
80027314:	e92d0004 	stmfd	sp!, {r2}
80027318:	e92d4000 	stmfd	sp!, {lr}
8002731c:	e94d6000 	stmdb	sp, {sp, lr}^
80027320:	e24dd008 	sub	sp, sp, #8
80027324:	e1a0000d 	mov	r0, sp
80027328:	eb000054 	bl	80027480 <swi_handler>

8002732c <trapret>:
8002732c:	e8dd6000 	ldm	sp, {sp, lr}^
80027330:	e28dd008 	add	sp, sp, #8
80027334:	e8bd4000 	ldmfd	sp!, {lr}
80027338:	e8bd0004 	ldmfd	sp!, {r2}
8002733c:	e16ff002 	msr	SPSR_fsxc, r2
80027340:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

80027344 <trap_irq>:
80027344:	e24ee004 	sub	lr, lr, #4
80027348:	e92d4007 	push	{r0, r1, r2, lr}
8002734c:	e14f1000 	mrs	r1, SPSR
80027350:	e1a0000d 	mov	r0, sp
80027354:	e28dd010 	add	sp, sp, #16
80027358:	e10f2000 	mrs	r2, CPSR
8002735c:	e3c2201f 	bic	r2, r2, #31
80027360:	e3822013 	orr	r2, r2, #19
80027364:	e12ff002 	msr	CPSR_fsxc, r2
80027368:	e590200c 	ldr	r2, [r0, #12]
8002736c:	e92d0004 	stmfd	sp!, {r2}
80027370:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80027374:	e8900038 	ldm	r0, {r3, r4, r5}
80027378:	e92d0038 	push	{r3, r4, r5}
8002737c:	e92d0002 	stmfd	sp!, {r1}
80027380:	e92d4000 	stmfd	sp!, {lr}
80027384:	e94d6000 	stmdb	sp, {sp, lr}^
80027388:	e24dd008 	sub	sp, sp, #8
8002738c:	e1a0000d 	mov	r0, sp
80027390:	eb000047 	bl	800274b4 <irq_handler>
80027394:	eaffffe4 	b	8002732c <trapret>

80027398 <trap_reset>:
80027398:	e3a0e000 	mov	lr, #0
8002739c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800273a0:	e14f2000 	mrs	r2, SPSR
800273a4:	e92d0004 	stmfd	sp!, {r2}
800273a8:	e92d4000 	stmfd	sp!, {lr}
800273ac:	e94d6000 	stmdb	sp, {sp, lr}^
800273b0:	e24dd008 	sub	sp, sp, #8
800273b4:	e1a0000d 	mov	r0, sp
800273b8:	eb00004f 	bl	800274fc <reset_handler>
800273bc:	eafffffe 	b	800273bc <trap_reset+0x24>

800273c0 <trap_und>:
800273c0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800273c4:	e14f2000 	mrs	r2, SPSR
800273c8:	e92d0004 	stmfd	sp!, {r2}
800273cc:	e92d4000 	stmfd	sp!, {lr}
800273d0:	e94d6000 	stmdb	sp, {sp, lr}^
800273d4:	e24dd008 	sub	sp, sp, #8
800273d8:	e1a0000d 	mov	r0, sp
800273dc:	eb000054 	bl	80027534 <und_handler>
800273e0:	eafffffe 	b	800273e0 <trap_und+0x20>

800273e4 <trap_iabort>:
800273e4:	e24ee004 	sub	lr, lr, #4
800273e8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800273ec:	e14f2000 	mrs	r2, SPSR
800273f0:	e92d0004 	stmfd	sp!, {r2}
800273f4:	e92d4000 	stmfd	sp!, {lr}
800273f8:	e94d6000 	stmdb	sp, {sp, lr}^
800273fc:	e24dd008 	sub	sp, sp, #8
80027400:	e1a0000d 	mov	r0, sp
80027404:	eb0000a0 	bl	8002768c <iabort_handler>
80027408:	eafffffe 	b	80027408 <trap_iabort+0x24>

8002740c <trap_dabort>:
8002740c:	e24ee008 	sub	lr, lr, #8
80027410:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027414:	e14f2000 	mrs	r2, SPSR
80027418:	e92d0004 	stmfd	sp!, {r2}
8002741c:	e92d4000 	stmfd	sp!, {lr}
80027420:	e94d6000 	stmdb	sp, {sp, lr}^
80027424:	e24dd008 	sub	sp, sp, #8
80027428:	e1a0000d 	mov	r0, sp
8002742c:	eb00004e 	bl	8002756c <dabort_handler>
80027430:	eaffffbd 	b	8002732c <trapret>

80027434 <trap_na>:
80027434:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027438:	e14f2000 	mrs	r2, SPSR
8002743c:	e92d0004 	stmfd	sp!, {r2}
80027440:	e92d4000 	stmfd	sp!, {lr}
80027444:	e94d6000 	stmdb	sp, {sp, lr}^
80027448:	e24dd008 	sub	sp, sp, #8
8002744c:	e1a0000d 	mov	r0, sp
80027450:	eb0000a0 	bl	800276d8 <na_handler>
80027454:	eafffffe 	b	80027454 <trap_na+0x20>

80027458 <trap_fiq>:
80027458:	e24ee004 	sub	lr, lr, #4
8002745c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027460:	e14f2000 	mrs	r2, SPSR
80027464:	e92d0004 	stmfd	sp!, {r2}
80027468:	e92d4000 	stmfd	sp!, {lr}
8002746c:	e94d6000 	stmdb	sp, {sp, lr}^
80027470:	e24dd008 	sub	sp, sp, #8
80027474:	e1a0000d 	mov	r0, sp
80027478:	eb0000a4 	bl	80027710 <fiq_handler>
8002747c:	eafffffe 	b	8002747c <trap_fiq+0x24>

80027480 <swi_handler>:
80027480:	e92d4800 	push	{fp, lr}
80027484:	e28db004 	add	fp, sp, #4
80027488:	e24dd008 	sub	sp, sp, #8
8002748c:	e50b0008 	str	r0, [fp, #-8]
80027490:	e59f3018 	ldr	r3, [pc, #24]	@ 800274b0 <swi_handler+0x30>
80027494:	e5933000 	ldr	r3, [r3]
80027498:	e51b2008 	ldr	r2, [fp, #-8]
8002749c:	e5832018 	str	r2, [r3, #24]
800274a0:	ebfffaa0 	bl	80025f28 <syscall>
800274a4:	e1a00000 	nop			@ (mov r0, r0)
800274a8:	e24bd004 	sub	sp, fp, #4
800274ac:	e8bd8800 	pop	{fp, pc}
800274b0:	800af548 	.word	0x800af548

800274b4 <irq_handler>:
800274b4:	e92d4800 	push	{fp, lr}
800274b8:	e28db004 	add	fp, sp, #4
800274bc:	e24dd008 	sub	sp, sp, #8
800274c0:	e50b0008 	str	r0, [fp, #-8]
800274c4:	e59f302c 	ldr	r3, [pc, #44]	@ 800274f8 <irq_handler+0x44>
800274c8:	e5933000 	ldr	r3, [r3]
800274cc:	e3530000 	cmp	r3, #0
800274d0:	0a000003 	beq	800274e4 <irq_handler+0x30>
800274d4:	e59f301c 	ldr	r3, [pc, #28]	@ 800274f8 <irq_handler+0x44>
800274d8:	e5933000 	ldr	r3, [r3]
800274dc:	e51b2008 	ldr	r2, [fp, #-8]
800274e0:	e5832018 	str	r2, [r3, #24]
800274e4:	e51b0008 	ldr	r0, [fp, #-8]
800274e8:	eb00060c 	bl	80028d20 <pic_dispatch>
800274ec:	e1a00000 	nop			@ (mov r0, r0)
800274f0:	e24bd004 	sub	sp, fp, #4
800274f4:	e8bd8800 	pop	{fp, pc}
800274f8:	800af548 	.word	0x800af548

800274fc <reset_handler>:
800274fc:	e92d4800 	push	{fp, lr}
80027500:	e28db004 	add	fp, sp, #4
80027504:	e24dd008 	sub	sp, sp, #8
80027508:	e50b0008 	str	r0, [fp, #-8]
8002750c:	ebffe40b 	bl	80020540 <cli>
80027510:	e51b3008 	ldr	r3, [fp, #-8]
80027514:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027518:	e1a01003 	mov	r1, r3
8002751c:	e59f000c 	ldr	r0, [pc, #12]	@ 80027530 <reset_handler+0x34>
80027520:	ebffe8db 	bl	80021894 <cprintf>
80027524:	e1a00000 	nop			@ (mov r0, r0)
80027528:	e24bd004 	sub	sp, fp, #4
8002752c:	e8bd8800 	pop	{fp, pc}
80027530:	80029894 	.word	0x80029894

80027534 <und_handler>:
80027534:	e92d4800 	push	{fp, lr}
80027538:	e28db004 	add	fp, sp, #4
8002753c:	e24dd008 	sub	sp, sp, #8
80027540:	e50b0008 	str	r0, [fp, #-8]
80027544:	ebffe3fd 	bl	80020540 <cli>
80027548:	e51b3008 	ldr	r3, [fp, #-8]
8002754c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027550:	e1a01003 	mov	r1, r3
80027554:	e59f000c 	ldr	r0, [pc, #12]	@ 80027568 <und_handler+0x34>
80027558:	ebffe8cd 	bl	80021894 <cprintf>
8002755c:	e1a00000 	nop			@ (mov r0, r0)
80027560:	e24bd004 	sub	sp, fp, #4
80027564:	e8bd8800 	pop	{fp, pc}
80027568:	800298a8 	.word	0x800298a8

8002756c <dabort_handler>:
8002756c:	e92d4800 	push	{fp, lr}
80027570:	e28db004 	add	fp, sp, #4
80027574:	e24dd018 	sub	sp, sp, #24
80027578:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002757c:	ebffe3ef 	bl	80020540 <cli>
80027580:	e59f30f4 	ldr	r3, [pc, #244]	@ 8002767c <dabort_handler+0x110>
80027584:	e5933000 	ldr	r3, [r3]
80027588:	e3530000 	cmp	r3, #0
8002758c:	0a000003 	beq	800275a0 <dabort_handler+0x34>
80027590:	e59f30e4 	ldr	r3, [pc, #228]	@ 8002767c <dabort_handler+0x110>
80027594:	e5933000 	ldr	r3, [r3]
80027598:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002759c:	e5832018 	str	r2, [r3, #24]
800275a0:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
800275a4:	e50b3008 	str	r3, [fp, #-8]
800275a8:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
800275ac:	e50b300c 	str	r3, [fp, #-12]
800275b0:	e51b300c 	ldr	r3, [fp, #-12]
800275b4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800275b8:	e3c3300f 	bic	r3, r3, #15
800275bc:	e50b3010 	str	r3, [fp, #-16]
800275c0:	e59f30b4 	ldr	r3, [pc, #180]	@ 8002767c <dabort_handler+0x110>
800275c4:	e5933000 	ldr	r3, [r3]
800275c8:	e3530000 	cmp	r3, #0
800275cc:	0a000014 	beq	80027624 <dabort_handler+0xb8>
800275d0:	e59f30a4 	ldr	r3, [pc, #164]	@ 8002767c <dabort_handler+0x110>
800275d4:	e5933000 	ldr	r3, [r3]
800275d8:	e5933000 	ldr	r3, [r3]
800275dc:	e51b2010 	ldr	r2, [fp, #-16]
800275e0:	e1520003 	cmp	r2, r3
800275e4:	2a00000e 	bcs	80027624 <dabort_handler+0xb8>
800275e8:	e51b0010 	ldr	r0, [fp, #-16]
800275ec:	eb000341 	bl	800282f8 <allocpage_on_fault>
800275f0:	e1a03000 	mov	r3, r0
800275f4:	e3530000 	cmp	r3, #0
800275f8:	1a000009 	bne	80027624 <dabort_handler+0xb8>
800275fc:	e59f3078 	ldr	r3, [pc, #120]	@ 8002767c <dabort_handler+0x110>
80027600:	e5933000 	ldr	r3, [r3]
80027604:	e5932010 	ldr	r2, [r3, #16]
80027608:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002760c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027610:	e51b1010 	ldr	r1, [fp, #-16]
80027614:	e59f0064 	ldr	r0, [pc, #100]	@ 80027680 <dabort_handler+0x114>
80027618:	ebffe89d 	bl	80021894 <cprintf>
8002761c:	ebffe3d5 	bl	80020578 <sti>
80027620:	ea000013 	b	80027674 <dabort_handler+0x108>
80027624:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027628:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
8002762c:	e51b3008 	ldr	r3, [fp, #-8]
80027630:	e51b200c 	ldr	r2, [fp, #-12]
80027634:	e59f0048 	ldr	r0, [pc, #72]	@ 80027684 <dabort_handler+0x118>
80027638:	ebffe895 	bl	80021894 <cprintf>
8002763c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80027640:	eb0000c1 	bl	8002794c <dump_trapframe>
80027644:	e59f3030 	ldr	r3, [pc, #48]	@ 8002767c <dabort_handler+0x110>
80027648:	e5933000 	ldr	r3, [r3]
8002764c:	e3530000 	cmp	r3, #0
80027650:	0a000005 	beq	8002766c <dabort_handler+0x100>
80027654:	e59f3020 	ldr	r3, [pc, #32]	@ 8002767c <dabort_handler+0x110>
80027658:	e5933000 	ldr	r3, [r3]
8002765c:	e3a02001 	mov	r2, #1
80027660:	e5832024 	str	r2, [r3, #36]	@ 0x24
80027664:	ebffe3c3 	bl	80020578 <sti>
80027668:	ea000001 	b	80027674 <dabort_handler+0x108>
8002766c:	e59f0014 	ldr	r0, [pc, #20]	@ 80027688 <dabort_handler+0x11c>
80027670:	ebffe91f 	bl	80021af4 <panic>
80027674:	e24bd004 	sub	sp, fp, #4
80027678:	e8bd8800 	pop	{fp, pc}
8002767c:	800af548 	.word	0x800af548
80027680:	800298b8 	.word	0x800298b8
80027684:	80029900 	.word	0x80029900
80027688:	8002993c 	.word	0x8002993c

8002768c <iabort_handler>:
8002768c:	e92d4800 	push	{fp, lr}
80027690:	e28db004 	add	fp, sp, #4
80027694:	e24dd010 	sub	sp, sp, #16
80027698:	e50b0010 	str	r0, [fp, #-16]
8002769c:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
800276a0:	e50b3008 	str	r3, [fp, #-8]
800276a4:	ebffe3a5 	bl	80020540 <cli>
800276a8:	e51b3010 	ldr	r3, [fp, #-16]
800276ac:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800276b0:	e51b2008 	ldr	r2, [fp, #-8]
800276b4:	e1a01003 	mov	r1, r3
800276b8:	e59f0014 	ldr	r0, [pc, #20]	@ 800276d4 <iabort_handler+0x48>
800276bc:	ebffe874 	bl	80021894 <cprintf>
800276c0:	e51b0010 	ldr	r0, [fp, #-16]
800276c4:	eb0000a0 	bl	8002794c <dump_trapframe>
800276c8:	e1a00000 	nop			@ (mov r0, r0)
800276cc:	e24bd004 	sub	sp, fp, #4
800276d0:	e8bd8800 	pop	{fp, pc}
800276d4:	80029950 	.word	0x80029950

800276d8 <na_handler>:
800276d8:	e92d4800 	push	{fp, lr}
800276dc:	e28db004 	add	fp, sp, #4
800276e0:	e24dd008 	sub	sp, sp, #8
800276e4:	e50b0008 	str	r0, [fp, #-8]
800276e8:	ebffe394 	bl	80020540 <cli>
800276ec:	e51b3008 	ldr	r3, [fp, #-8]
800276f0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800276f4:	e1a01003 	mov	r1, r3
800276f8:	e59f000c 	ldr	r0, [pc, #12]	@ 8002770c <na_handler+0x34>
800276fc:	ebffe864 	bl	80021894 <cprintf>
80027700:	e1a00000 	nop			@ (mov r0, r0)
80027704:	e24bd004 	sub	sp, fp, #4
80027708:	e8bd8800 	pop	{fp, pc}
8002770c:	80029978 	.word	0x80029978

80027710 <fiq_handler>:
80027710:	e92d4800 	push	{fp, lr}
80027714:	e28db004 	add	fp, sp, #4
80027718:	e24dd008 	sub	sp, sp, #8
8002771c:	e50b0008 	str	r0, [fp, #-8]
80027720:	ebffe386 	bl	80020540 <cli>
80027724:	e51b3008 	ldr	r3, [fp, #-8]
80027728:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002772c:	e1a01003 	mov	r1, r3
80027730:	e59f000c 	ldr	r0, [pc, #12]	@ 80027744 <fiq_handler+0x34>
80027734:	ebffe856 	bl	80021894 <cprintf>
80027738:	e1a00000 	nop			@ (mov r0, r0)
8002773c:	e24bd004 	sub	sp, fp, #4
80027740:	e8bd8800 	pop	{fp, pc}
80027744:	80029988 	.word	0x80029988

80027748 <trap_init>:
80027748:	e92d4800 	push	{fp, lr}
8002774c:	e28db004 	add	fp, sp, #4
80027750:	e24dd020 	sub	sp, sp, #32
80027754:	e59f31c0 	ldr	r3, [pc, #448]	@ 8002791c <trap_init+0x1d4>
80027758:	e24bc020 	sub	ip, fp, #32
8002775c:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80027760:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80027764:	e59f31b4 	ldr	r3, [pc, #436]	@ 80027920 <trap_init+0x1d8>
80027768:	e50b300c 	str	r3, [fp, #-12]
8002776c:	e59f31b0 	ldr	r3, [pc, #432]	@ 80027924 <trap_init+0x1dc>
80027770:	e5933000 	ldr	r3, [r3]
80027774:	e3832018 	orr	r2, r3, #24
80027778:	e51b300c 	ldr	r3, [fp, #-12]
8002777c:	e5832000 	str	r2, [r3]
80027780:	e59f319c 	ldr	r3, [pc, #412]	@ 80027924 <trap_init+0x1dc>
80027784:	e5932000 	ldr	r2, [r3]
80027788:	e51b300c 	ldr	r3, [fp, #-12]
8002778c:	e2833004 	add	r3, r3, #4
80027790:	e3822018 	orr	r2, r2, #24
80027794:	e5832000 	str	r2, [r3]
80027798:	e59f3184 	ldr	r3, [pc, #388]	@ 80027924 <trap_init+0x1dc>
8002779c:	e5932000 	ldr	r2, [r3]
800277a0:	e51b300c 	ldr	r3, [fp, #-12]
800277a4:	e2833008 	add	r3, r3, #8
800277a8:	e3822018 	orr	r2, r2, #24
800277ac:	e5832000 	str	r2, [r3]
800277b0:	e59f316c 	ldr	r3, [pc, #364]	@ 80027924 <trap_init+0x1dc>
800277b4:	e5932000 	ldr	r2, [r3]
800277b8:	e51b300c 	ldr	r3, [fp, #-12]
800277bc:	e283300c 	add	r3, r3, #12
800277c0:	e3822018 	orr	r2, r2, #24
800277c4:	e5832000 	str	r2, [r3]
800277c8:	e59f3154 	ldr	r3, [pc, #340]	@ 80027924 <trap_init+0x1dc>
800277cc:	e5932000 	ldr	r2, [r3]
800277d0:	e51b300c 	ldr	r3, [fp, #-12]
800277d4:	e2833010 	add	r3, r3, #16
800277d8:	e3822018 	orr	r2, r2, #24
800277dc:	e5832000 	str	r2, [r3]
800277e0:	e59f313c 	ldr	r3, [pc, #316]	@ 80027924 <trap_init+0x1dc>
800277e4:	e5932000 	ldr	r2, [r3]
800277e8:	e51b300c 	ldr	r3, [fp, #-12]
800277ec:	e2833014 	add	r3, r3, #20
800277f0:	e3822018 	orr	r2, r2, #24
800277f4:	e5832000 	str	r2, [r3]
800277f8:	e59f3124 	ldr	r3, [pc, #292]	@ 80027924 <trap_init+0x1dc>
800277fc:	e5932000 	ldr	r2, [r3]
80027800:	e51b300c 	ldr	r3, [fp, #-12]
80027804:	e2833018 	add	r3, r3, #24
80027808:	e3822018 	orr	r2, r2, #24
8002780c:	e5832000 	str	r2, [r3]
80027810:	e59f310c 	ldr	r3, [pc, #268]	@ 80027924 <trap_init+0x1dc>
80027814:	e5932000 	ldr	r2, [r3]
80027818:	e51b300c 	ldr	r3, [fp, #-12]
8002781c:	e283301c 	add	r3, r3, #28
80027820:	e3822018 	orr	r2, r2, #24
80027824:	e5832000 	str	r2, [r3]
80027828:	e51b300c 	ldr	r3, [fp, #-12]
8002782c:	e2833020 	add	r3, r3, #32
80027830:	e59f20f0 	ldr	r2, [pc, #240]	@ 80027928 <trap_init+0x1e0>
80027834:	e5832000 	str	r2, [r3]
80027838:	e51b300c 	ldr	r3, [fp, #-12]
8002783c:	e2833024 	add	r3, r3, #36	@ 0x24
80027840:	e59f20e4 	ldr	r2, [pc, #228]	@ 8002792c <trap_init+0x1e4>
80027844:	e5832000 	str	r2, [r3]
80027848:	e51b300c 	ldr	r3, [fp, #-12]
8002784c:	e2833028 	add	r3, r3, #40	@ 0x28
80027850:	e59f20d8 	ldr	r2, [pc, #216]	@ 80027930 <trap_init+0x1e8>
80027854:	e5832000 	str	r2, [r3]
80027858:	e51b300c 	ldr	r3, [fp, #-12]
8002785c:	e283302c 	add	r3, r3, #44	@ 0x2c
80027860:	e59f20cc 	ldr	r2, [pc, #204]	@ 80027934 <trap_init+0x1ec>
80027864:	e5832000 	str	r2, [r3]
80027868:	e51b300c 	ldr	r3, [fp, #-12]
8002786c:	e2833030 	add	r3, r3, #48	@ 0x30
80027870:	e59f20c0 	ldr	r2, [pc, #192]	@ 80027938 <trap_init+0x1f0>
80027874:	e5832000 	str	r2, [r3]
80027878:	e51b300c 	ldr	r3, [fp, #-12]
8002787c:	e2833034 	add	r3, r3, #52	@ 0x34
80027880:	e59f20b4 	ldr	r2, [pc, #180]	@ 8002793c <trap_init+0x1f4>
80027884:	e5832000 	str	r2, [r3]
80027888:	e51b300c 	ldr	r3, [fp, #-12]
8002788c:	e2833038 	add	r3, r3, #56	@ 0x38
80027890:	e59f20a8 	ldr	r2, [pc, #168]	@ 80027940 <trap_init+0x1f8>
80027894:	e5832000 	str	r2, [r3]
80027898:	e51b300c 	ldr	r3, [fp, #-12]
8002789c:	e283303c 	add	r3, r3, #60	@ 0x3c
800278a0:	e59f209c 	ldr	r2, [pc, #156]	@ 80027944 <trap_init+0x1fc>
800278a4:	e5832000 	str	r2, [r3]
800278a8:	e3a03000 	mov	r3, #0
800278ac:	e50b3008 	str	r3, [fp, #-8]
800278b0:	ea000012 	b	80027900 <trap_init+0x1b8>
800278b4:	ebffe75d 	bl	80021630 <alloc_page>
800278b8:	e50b0010 	str	r0, [fp, #-16]
800278bc:	e51b3010 	ldr	r3, [fp, #-16]
800278c0:	e3530000 	cmp	r3, #0
800278c4:	1a000001 	bne	800278d0 <trap_init+0x188>
800278c8:	e59f0078 	ldr	r0, [pc, #120]	@ 80027948 <trap_init+0x200>
800278cc:	ebffe888 	bl	80021af4 <panic>
800278d0:	e51b3008 	ldr	r3, [fp, #-8]
800278d4:	e1a03103 	lsl	r3, r3, #2
800278d8:	e2433004 	sub	r3, r3, #4
800278dc:	e083300b 	add	r3, r3, fp
800278e0:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
800278e4:	e51b2010 	ldr	r2, [fp, #-16]
800278e8:	e1a01002 	mov	r1, r2
800278ec:	e1a00003 	mov	r0, r3
800278f0:	ebffe3eb 	bl	800208a4 <set_stk>
800278f4:	e51b3008 	ldr	r3, [fp, #-8]
800278f8:	e2833001 	add	r3, r3, #1
800278fc:	e50b3008 	str	r3, [fp, #-8]
80027900:	e51b3008 	ldr	r3, [fp, #-8]
80027904:	e3530003 	cmp	r3, #3
80027908:	9affffe9 	bls	800278b4 <trap_init+0x16c>
8002790c:	e1a00000 	nop			@ (mov r0, r0)
80027910:	e1a00000 	nop			@ (mov r0, r0)
80027914:	e24bd004 	sub	sp, fp, #4
80027918:	e8bd8800 	pop	{fp, pc}
8002791c:	800299c0 	.word	0x800299c0
80027920:	ffff0000 	.word	0xffff0000
80027924:	80029ad0 	.word	0x80029ad0
80027928:	80027398 	.word	0x80027398
8002792c:	800273c0 	.word	0x800273c0
80027930:	8002730c 	.word	0x8002730c
80027934:	800273e4 	.word	0x800273e4
80027938:	8002740c 	.word	0x8002740c
8002793c:	80027434 	.word	0x80027434
80027940:	80027344 	.word	0x80027344
80027944:	80027458 	.word	0x80027458
80027948:	80029998 	.word	0x80029998

8002794c <dump_trapframe>:
8002794c:	e92d4800 	push	{fp, lr}
80027950:	e28db004 	add	fp, sp, #4
80027954:	e24dd008 	sub	sp, sp, #8
80027958:	e50b0008 	str	r0, [fp, #-8]
8002795c:	e51b3008 	ldr	r3, [fp, #-8]
80027960:	e5933008 	ldr	r3, [r3, #8]
80027964:	e1a01003 	mov	r1, r3
80027968:	e59f0138 	ldr	r0, [pc, #312]	@ 80027aa8 <dump_trapframe+0x15c>
8002796c:	ebffe7c8 	bl	80021894 <cprintf>
80027970:	e51b3008 	ldr	r3, [fp, #-8]
80027974:	e593300c 	ldr	r3, [r3, #12]
80027978:	e1a01003 	mov	r1, r3
8002797c:	e59f0128 	ldr	r0, [pc, #296]	@ 80027aac <dump_trapframe+0x160>
80027980:	ebffe7c3 	bl	80021894 <cprintf>
80027984:	e51b3008 	ldr	r3, [fp, #-8]
80027988:	e5933010 	ldr	r3, [r3, #16]
8002798c:	e1a01003 	mov	r1, r3
80027990:	e59f0118 	ldr	r0, [pc, #280]	@ 80027ab0 <dump_trapframe+0x164>
80027994:	ebffe7be 	bl	80021894 <cprintf>
80027998:	e51b3008 	ldr	r3, [fp, #-8]
8002799c:	e5933014 	ldr	r3, [r3, #20]
800279a0:	e1a01003 	mov	r1, r3
800279a4:	e59f0108 	ldr	r0, [pc, #264]	@ 80027ab4 <dump_trapframe+0x168>
800279a8:	ebffe7b9 	bl	80021894 <cprintf>
800279ac:	e51b3008 	ldr	r3, [fp, #-8]
800279b0:	e5933018 	ldr	r3, [r3, #24]
800279b4:	e1a01003 	mov	r1, r3
800279b8:	e59f00f8 	ldr	r0, [pc, #248]	@ 80027ab8 <dump_trapframe+0x16c>
800279bc:	ebffe7b4 	bl	80021894 <cprintf>
800279c0:	e51b3008 	ldr	r3, [fp, #-8]
800279c4:	e593301c 	ldr	r3, [r3, #28]
800279c8:	e1a01003 	mov	r1, r3
800279cc:	e59f00e8 	ldr	r0, [pc, #232]	@ 80027abc <dump_trapframe+0x170>
800279d0:	ebffe7af 	bl	80021894 <cprintf>
800279d4:	e51b3008 	ldr	r3, [fp, #-8]
800279d8:	e5933020 	ldr	r3, [r3, #32]
800279dc:	e1a01003 	mov	r1, r3
800279e0:	e59f00d8 	ldr	r0, [pc, #216]	@ 80027ac0 <dump_trapframe+0x174>
800279e4:	ebffe7aa 	bl	80021894 <cprintf>
800279e8:	e51b3008 	ldr	r3, [fp, #-8]
800279ec:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
800279f0:	e1a01003 	mov	r1, r3
800279f4:	e59f00c8 	ldr	r0, [pc, #200]	@ 80027ac4 <dump_trapframe+0x178>
800279f8:	ebffe7a5 	bl	80021894 <cprintf>
800279fc:	e51b3008 	ldr	r3, [fp, #-8]
80027a00:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80027a04:	e1a01003 	mov	r1, r3
80027a08:	e59f00b8 	ldr	r0, [pc, #184]	@ 80027ac8 <dump_trapframe+0x17c>
80027a0c:	ebffe7a0 	bl	80021894 <cprintf>
80027a10:	e51b3008 	ldr	r3, [fp, #-8]
80027a14:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
80027a18:	e1a01003 	mov	r1, r3
80027a1c:	e59f00a8 	ldr	r0, [pc, #168]	@ 80027acc <dump_trapframe+0x180>
80027a20:	ebffe79b 	bl	80021894 <cprintf>
80027a24:	e51b3008 	ldr	r3, [fp, #-8]
80027a28:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80027a2c:	e1a01003 	mov	r1, r3
80027a30:	e59f0098 	ldr	r0, [pc, #152]	@ 80027ad0 <dump_trapframe+0x184>
80027a34:	ebffe796 	bl	80021894 <cprintf>
80027a38:	e51b3008 	ldr	r3, [fp, #-8]
80027a3c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80027a40:	e1a01003 	mov	r1, r3
80027a44:	e59f0088 	ldr	r0, [pc, #136]	@ 80027ad4 <dump_trapframe+0x188>
80027a48:	ebffe791 	bl	80021894 <cprintf>
80027a4c:	e51b3008 	ldr	r3, [fp, #-8]
80027a50:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80027a54:	e1a01003 	mov	r1, r3
80027a58:	e59f0078 	ldr	r0, [pc, #120]	@ 80027ad8 <dump_trapframe+0x18c>
80027a5c:	ebffe78c 	bl	80021894 <cprintf>
80027a60:	e51b3008 	ldr	r3, [fp, #-8]
80027a64:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80027a68:	e1a01003 	mov	r1, r3
80027a6c:	e59f0068 	ldr	r0, [pc, #104]	@ 80027adc <dump_trapframe+0x190>
80027a70:	ebffe787 	bl	80021894 <cprintf>
80027a74:	e51b3008 	ldr	r3, [fp, #-8]
80027a78:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80027a7c:	e1a01003 	mov	r1, r3
80027a80:	e59f0058 	ldr	r0, [pc, #88]	@ 80027ae0 <dump_trapframe+0x194>
80027a84:	ebffe782 	bl	80021894 <cprintf>
80027a88:	e51b3008 	ldr	r3, [fp, #-8]
80027a8c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027a90:	e1a01003 	mov	r1, r3
80027a94:	e59f0048 	ldr	r0, [pc, #72]	@ 80027ae4 <dump_trapframe+0x198>
80027a98:	ebffe77d 	bl	80021894 <cprintf>
80027a9c:	e1a00000 	nop			@ (mov r0, r0)
80027aa0:	e24bd004 	sub	sp, fp, #4
80027aa4:	e8bd8800 	pop	{fp, pc}
80027aa8:	800299d0 	.word	0x800299d0
80027aac:	800299e0 	.word	0x800299e0
80027ab0:	800299f0 	.word	0x800299f0
80027ab4:	80029a00 	.word	0x80029a00
80027ab8:	80029a10 	.word	0x80029a10
80027abc:	80029a20 	.word	0x80029a20
80027ac0:	80029a30 	.word	0x80029a30
80027ac4:	80029a40 	.word	0x80029a40
80027ac8:	80029a50 	.word	0x80029a50
80027acc:	80029a60 	.word	0x80029a60
80027ad0:	80029a70 	.word	0x80029a70
80027ad4:	80029a80 	.word	0x80029a80
80027ad8:	80029a90 	.word	0x80029a90
80027adc:	80029aa0 	.word	0x80029aa0
80027ae0:	80029ab0 	.word	0x80029ab0
80027ae4:	80029ac0 	.word	0x80029ac0

80027ae8 <v2p>:
80027ae8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027aec:	e28db000 	add	fp, sp, #0
80027af0:	e24dd00c 	sub	sp, sp, #12
80027af4:	e50b0008 	str	r0, [fp, #-8]
80027af8:	e51b3008 	ldr	r3, [fp, #-8]
80027afc:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027b00:	e1a00003 	mov	r0, r3
80027b04:	e28bd000 	add	sp, fp, #0
80027b08:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027b0c:	e12fff1e 	bx	lr

80027b10 <p2v>:
80027b10:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027b14:	e28db000 	add	fp, sp, #0
80027b18:	e24dd00c 	sub	sp, sp, #12
80027b1c:	e50b0008 	str	r0, [fp, #-8]
80027b20:	e51b3008 	ldr	r3, [fp, #-8]
80027b24:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027b28:	e1a00003 	mov	r0, r3
80027b2c:	e28bd000 	add	sp, fp, #0
80027b30:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027b34:	e12fff1e 	bx	lr

80027b38 <init_vmm>:
80027b38:	e92d4800 	push	{fp, lr}
80027b3c:	e28db004 	add	fp, sp, #4
80027b40:	e59f1018 	ldr	r1, [pc, #24]	@ 80027b60 <init_vmm+0x28>
80027b44:	e59f0018 	ldr	r0, [pc, #24]	@ 80027b64 <init_vmm+0x2c>
80027b48:	ebfff819 	bl	80025bb4 <initlock>
80027b4c:	e59f3010 	ldr	r3, [pc, #16]	@ 80027b64 <init_vmm+0x2c>
80027b50:	e3a02000 	mov	r2, #0
80027b54:	e5832034 	str	r2, [r3, #52]	@ 0x34
80027b58:	e1a00000 	nop			@ (mov r0, r0)
80027b5c:	e8bd8800 	pop	{fp, pc}
80027b60:	80029ad4 	.word	0x80029ad4
80027b64:	800af550 	.word	0x800af550

80027b68 <_kpt_free>:
80027b68:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027b6c:	e28db000 	add	fp, sp, #0
80027b70:	e24dd014 	sub	sp, sp, #20
80027b74:	e50b0010 	str	r0, [fp, #-16]
80027b78:	e51b3010 	ldr	r3, [fp, #-16]
80027b7c:	e50b3008 	str	r3, [fp, #-8]
80027b80:	e59f3024 	ldr	r3, [pc, #36]	@ 80027bac <_kpt_free+0x44>
80027b84:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80027b88:	e51b3008 	ldr	r3, [fp, #-8]
80027b8c:	e5832000 	str	r2, [r3]
80027b90:	e59f2014 	ldr	r2, [pc, #20]	@ 80027bac <_kpt_free+0x44>
80027b94:	e51b3008 	ldr	r3, [fp, #-8]
80027b98:	e5823034 	str	r3, [r2, #52]	@ 0x34
80027b9c:	e1a00000 	nop			@ (mov r0, r0)
80027ba0:	e28bd000 	add	sp, fp, #0
80027ba4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027ba8:	e12fff1e 	bx	lr
80027bac:	800af550 	.word	0x800af550

80027bb0 <kpt_free>:
80027bb0:	e92d4800 	push	{fp, lr}
80027bb4:	e28db004 	add	fp, sp, #4
80027bb8:	e24dd008 	sub	sp, sp, #8
80027bbc:	e50b0008 	str	r0, [fp, #-8]
80027bc0:	e51b3008 	ldr	r3, [fp, #-8]
80027bc4:	e59f2034 	ldr	r2, [pc, #52]	@ 80027c00 <kpt_free+0x50>
80027bc8:	e1530002 	cmp	r3, r2
80027bcc:	9a000003 	bls	80027be0 <kpt_free+0x30>
80027bd0:	e3a0100a 	mov	r1, #10
80027bd4:	e51b0008 	ldr	r0, [fp, #-8]
80027bd8:	ebffe668 	bl	80021580 <kfree>
80027bdc:	ea000005 	b	80027bf8 <kpt_free+0x48>
80027be0:	e59f001c 	ldr	r0, [pc, #28]	@ 80027c04 <kpt_free+0x54>
80027be4:	ebfff804 	bl	80025bfc <acquire>
80027be8:	e51b0008 	ldr	r0, [fp, #-8]
80027bec:	ebffffdd 	bl	80027b68 <_kpt_free>
80027bf0:	e59f000c 	ldr	r0, [pc, #12]	@ 80027c04 <kpt_free+0x54>
80027bf4:	ebfff80b 	bl	80025c28 <release>
80027bf8:	e24bd004 	sub	sp, fp, #4
80027bfc:	e8bd8800 	pop	{fp, pc}
80027c00:	800fffff 	.word	0x800fffff
80027c04:	800af550 	.word	0x800af550

80027c08 <kpt_freerange>:
80027c08:	e92d4800 	push	{fp, lr}
80027c0c:	e28db004 	add	fp, sp, #4
80027c10:	e24dd008 	sub	sp, sp, #8
80027c14:	e50b0008 	str	r0, [fp, #-8]
80027c18:	e50b100c 	str	r1, [fp, #-12]
80027c1c:	ea000005 	b	80027c38 <kpt_freerange+0x30>
80027c20:	e51b3008 	ldr	r3, [fp, #-8]
80027c24:	e1a00003 	mov	r0, r3
80027c28:	ebffffce 	bl	80027b68 <_kpt_free>
80027c2c:	e51b3008 	ldr	r3, [fp, #-8]
80027c30:	e2833b01 	add	r3, r3, #1024	@ 0x400
80027c34:	e50b3008 	str	r3, [fp, #-8]
80027c38:	e51b2008 	ldr	r2, [fp, #-8]
80027c3c:	e51b300c 	ldr	r3, [fp, #-12]
80027c40:	e1520003 	cmp	r2, r3
80027c44:	3afffff5 	bcc	80027c20 <kpt_freerange+0x18>
80027c48:	e1a00000 	nop			@ (mov r0, r0)
80027c4c:	e1a00000 	nop			@ (mov r0, r0)
80027c50:	e24bd004 	sub	sp, fp, #4
80027c54:	e8bd8800 	pop	{fp, pc}

80027c58 <kpt_alloc>:
80027c58:	e92d4800 	push	{fp, lr}
80027c5c:	e28db004 	add	fp, sp, #4
80027c60:	e24dd008 	sub	sp, sp, #8
80027c64:	e59f007c 	ldr	r0, [pc, #124]	@ 80027ce8 <kpt_alloc+0x90>
80027c68:	ebfff7e3 	bl	80025bfc <acquire>
80027c6c:	e59f3074 	ldr	r3, [pc, #116]	@ 80027ce8 <kpt_alloc+0x90>
80027c70:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80027c74:	e50b3008 	str	r3, [fp, #-8]
80027c78:	e51b3008 	ldr	r3, [fp, #-8]
80027c7c:	e3530000 	cmp	r3, #0
80027c80:	0a000003 	beq	80027c94 <kpt_alloc+0x3c>
80027c84:	e51b3008 	ldr	r3, [fp, #-8]
80027c88:	e5933000 	ldr	r3, [r3]
80027c8c:	e59f2054 	ldr	r2, [pc, #84]	@ 80027ce8 <kpt_alloc+0x90>
80027c90:	e5823034 	str	r3, [r2, #52]	@ 0x34
80027c94:	e59f004c 	ldr	r0, [pc, #76]	@ 80027ce8 <kpt_alloc+0x90>
80027c98:	ebfff7e2 	bl	80025c28 <release>
80027c9c:	e51b3008 	ldr	r3, [fp, #-8]
80027ca0:	e3530000 	cmp	r3, #0
80027ca4:	1a000007 	bne	80027cc8 <kpt_alloc+0x70>
80027ca8:	e3a0000a 	mov	r0, #10
80027cac:	ebffe5dc 	bl	80021424 <kmalloc>
80027cb0:	e50b0008 	str	r0, [fp, #-8]
80027cb4:	e51b3008 	ldr	r3, [fp, #-8]
80027cb8:	e3530000 	cmp	r3, #0
80027cbc:	1a000001 	bne	80027cc8 <kpt_alloc+0x70>
80027cc0:	e59f0024 	ldr	r0, [pc, #36]	@ 80027cec <kpt_alloc+0x94>
80027cc4:	ebffe78a 	bl	80021af4 <panic>
80027cc8:	e3a02b01 	mov	r2, #1024	@ 0x400
80027ccc:	e3a01000 	mov	r1, #0
80027cd0:	e51b0008 	ldr	r0, [fp, #-8]
80027cd4:	ebffe0c9 	bl	80020000 <memset>
80027cd8:	e51b3008 	ldr	r3, [fp, #-8]
80027cdc:	e1a00003 	mov	r0, r3
80027ce0:	e24bd004 	sub	sp, fp, #4
80027ce4:	e8bd8800 	pop	{fp, pc}
80027ce8:	800af550 	.word	0x800af550
80027cec:	80029ad8 	.word	0x80029ad8

80027cf0 <walkpgdir>:
80027cf0:	e92d4800 	push	{fp, lr}
80027cf4:	e28db004 	add	fp, sp, #4
80027cf8:	e24dd018 	sub	sp, sp, #24
80027cfc:	e50b0010 	str	r0, [fp, #-16]
80027d00:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80027d04:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80027d08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027d0c:	e1a03a23 	lsr	r3, r3, #20
80027d10:	e1a03103 	lsl	r3, r3, #2
80027d14:	e51b2010 	ldr	r2, [fp, #-16]
80027d18:	e0823003 	add	r3, r2, r3
80027d1c:	e50b300c 	str	r3, [fp, #-12]
80027d20:	e51b300c 	ldr	r3, [fp, #-12]
80027d24:	e5933000 	ldr	r3, [r3]
80027d28:	e2033003 	and	r3, r3, #3
80027d2c:	e3530000 	cmp	r3, #0
80027d30:	0a000007 	beq	80027d54 <walkpgdir+0x64>
80027d34:	e51b300c 	ldr	r3, [fp, #-12]
80027d38:	e5933000 	ldr	r3, [r3]
80027d3c:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80027d40:	e3c33003 	bic	r3, r3, #3
80027d44:	e1a00003 	mov	r0, r3
80027d48:	ebffff70 	bl	80027b10 <p2v>
80027d4c:	e50b0008 	str	r0, [fp, #-8]
80027d50:	ea000013 	b	80027da4 <walkpgdir+0xb4>
80027d54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027d58:	e3530000 	cmp	r3, #0
80027d5c:	0a000004 	beq	80027d74 <walkpgdir+0x84>
80027d60:	ebffffbc 	bl	80027c58 <kpt_alloc>
80027d64:	e50b0008 	str	r0, [fp, #-8]
80027d68:	e51b3008 	ldr	r3, [fp, #-8]
80027d6c:	e3530000 	cmp	r3, #0
80027d70:	1a000001 	bne	80027d7c <walkpgdir+0x8c>
80027d74:	e3a03000 	mov	r3, #0
80027d78:	ea00000f 	b	80027dbc <walkpgdir+0xcc>
80027d7c:	e3a02b01 	mov	r2, #1024	@ 0x400
80027d80:	e3a01000 	mov	r1, #0
80027d84:	e51b0008 	ldr	r0, [fp, #-8]
80027d88:	ebffe09c 	bl	80020000 <memset>
80027d8c:	e51b0008 	ldr	r0, [fp, #-8]
80027d90:	ebffff54 	bl	80027ae8 <v2p>
80027d94:	e1a03000 	mov	r3, r0
80027d98:	e3832001 	orr	r2, r3, #1
80027d9c:	e51b300c 	ldr	r3, [fp, #-12]
80027da0:	e5832000 	str	r2, [r3]
80027da4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027da8:	e1a03623 	lsr	r3, r3, #12
80027dac:	e6ef3073 	uxtb	r3, r3
80027db0:	e1a03103 	lsl	r3, r3, #2
80027db4:	e51b2008 	ldr	r2, [fp, #-8]
80027db8:	e0823003 	add	r3, r2, r3
80027dbc:	e1a00003 	mov	r0, r3
80027dc0:	e24bd004 	sub	sp, fp, #4
80027dc4:	e8bd8800 	pop	{fp, pc}

80027dc8 <mappages>:
80027dc8:	e92d4800 	push	{fp, lr}
80027dcc:	e28db004 	add	fp, sp, #4
80027dd0:	e24dd020 	sub	sp, sp, #32
80027dd4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80027dd8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80027ddc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80027de0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80027de4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027de8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80027dec:	e3c3300f 	bic	r3, r3, #15
80027df0:	e50b3008 	str	r3, [fp, #-8]
80027df4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80027df8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80027dfc:	e0823003 	add	r3, r2, r3
80027e00:	e2433001 	sub	r3, r3, #1
80027e04:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80027e08:	e3c3300f 	bic	r3, r3, #15
80027e0c:	e50b300c 	str	r3, [fp, #-12]
80027e10:	e3a02001 	mov	r2, #1
80027e14:	e51b1008 	ldr	r1, [fp, #-8]
80027e18:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80027e1c:	ebffffb3 	bl	80027cf0 <walkpgdir>
80027e20:	e50b0010 	str	r0, [fp, #-16]
80027e24:	e51b3010 	ldr	r3, [fp, #-16]
80027e28:	e3530000 	cmp	r3, #0
80027e2c:	1a000001 	bne	80027e38 <mappages+0x70>
80027e30:	e3e03000 	mvn	r3, #0
80027e34:	ea00001b 	b	80027ea8 <mappages+0xe0>
80027e38:	e51b3010 	ldr	r3, [fp, #-16]
80027e3c:	e5933000 	ldr	r3, [r3]
80027e40:	e2033003 	and	r3, r3, #3
80027e44:	e3530000 	cmp	r3, #0
80027e48:	0a000001 	beq	80027e54 <mappages+0x8c>
80027e4c:	e59f0060 	ldr	r0, [pc, #96]	@ 80027eb4 <mappages+0xec>
80027e50:	ebffe727 	bl	80021af4 <panic>
80027e54:	e59b3004 	ldr	r3, [fp, #4]
80027e58:	e1a03203 	lsl	r3, r3, #4
80027e5c:	e2032030 	and	r2, r3, #48	@ 0x30
80027e60:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027e64:	e1823003 	orr	r3, r2, r3
80027e68:	e383200e 	orr	r2, r3, #14
80027e6c:	e51b3010 	ldr	r3, [fp, #-16]
80027e70:	e5832000 	str	r2, [r3]
80027e74:	e51b2008 	ldr	r2, [fp, #-8]
80027e78:	e51b300c 	ldr	r3, [fp, #-12]
80027e7c:	e1520003 	cmp	r2, r3
80027e80:	0a000006 	beq	80027ea0 <mappages+0xd8>
80027e84:	e51b3008 	ldr	r3, [fp, #-8]
80027e88:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80027e8c:	e50b3008 	str	r3, [fp, #-8]
80027e90:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80027e94:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80027e98:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80027e9c:	eaffffdb 	b	80027e10 <mappages+0x48>
80027ea0:	e1a00000 	nop			@ (mov r0, r0)
80027ea4:	e3a03000 	mov	r3, #0
80027ea8:	e1a00003 	mov	r0, r3
80027eac:	e24bd004 	sub	sp, fp, #4
80027eb0:	e8bd8800 	pop	{fp, pc}
80027eb4:	80029ae8 	.word	0x80029ae8

80027eb8 <flush_tlb>:
80027eb8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027ebc:	e28db000 	add	fp, sp, #0
80027ec0:	e24dd00c 	sub	sp, sp, #12
80027ec4:	e3a03000 	mov	r3, #0
80027ec8:	e50b3008 	str	r3, [fp, #-8]
80027ecc:	e51b3008 	ldr	r3, [fp, #-8]
80027ed0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
80027ed4:	e51b3008 	ldr	r3, [fp, #-8]
80027ed8:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
80027edc:	e51b3008 	ldr	r3, [fp, #-8]
80027ee0:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
80027ee4:	e1a00000 	nop			@ (mov r0, r0)
80027ee8:	e28bd000 	add	sp, fp, #0
80027eec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027ef0:	e12fff1e 	bx	lr

80027ef4 <switchuvm>:
80027ef4:	e92d4800 	push	{fp, lr}
80027ef8:	e28db004 	add	fp, sp, #4
80027efc:	e24dd010 	sub	sp, sp, #16
80027f00:	e50b0010 	str	r0, [fp, #-16]
80027f04:	ebffe1c8 	bl	8002062c <pushcli>
80027f08:	e51b3010 	ldr	r3, [fp, #-16]
80027f0c:	e5933004 	ldr	r3, [r3, #4]
80027f10:	e3530000 	cmp	r3, #0
80027f14:	1a000001 	bne	80027f20 <switchuvm+0x2c>
80027f18:	e59f002c 	ldr	r0, [pc, #44]	@ 80027f4c <switchuvm+0x58>
80027f1c:	ebffe6f4 	bl	80021af4 <panic>
80027f20:	e51b3010 	ldr	r3, [fp, #-16]
80027f24:	e5933004 	ldr	r3, [r3, #4]
80027f28:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027f2c:	e50b3008 	str	r3, [fp, #-8]
80027f30:	e51b3008 	ldr	r3, [fp, #-8]
80027f34:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80027f38:	ebffffde 	bl	80027eb8 <flush_tlb>
80027f3c:	ebffe1cf 	bl	80020680 <popcli>
80027f40:	e1a00000 	nop			@ (mov r0, r0)
80027f44:	e24bd004 	sub	sp, fp, #4
80027f48:	e8bd8800 	pop	{fp, pc}
80027f4c:	80029af0 	.word	0x80029af0

80027f50 <inituvm>:
80027f50:	e92d4800 	push	{fp, lr}
80027f54:	e28db004 	add	fp, sp, #4
80027f58:	e24dd020 	sub	sp, sp, #32
80027f5c:	e50b0010 	str	r0, [fp, #-16]
80027f60:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80027f64:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80027f68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027f6c:	e3530a01 	cmp	r3, #4096	@ 0x1000
80027f70:	3a000001 	bcc	80027f7c <inituvm+0x2c>
80027f74:	e59f0058 	ldr	r0, [pc, #88]	@ 80027fd4 <inituvm+0x84>
80027f78:	ebffe6dd 	bl	80021af4 <panic>
80027f7c:	ebffe5ab 	bl	80021630 <alloc_page>
80027f80:	e50b0008 	str	r0, [fp, #-8]
80027f84:	e3a02a01 	mov	r2, #4096	@ 0x1000
80027f88:	e3a01000 	mov	r1, #0
80027f8c:	e51b0008 	ldr	r0, [fp, #-8]
80027f90:	ebffe01a 	bl	80020000 <memset>
80027f94:	e51b0008 	ldr	r0, [fp, #-8]
80027f98:	ebfffed2 	bl	80027ae8 <v2p>
80027f9c:	e1a03000 	mov	r3, r0
80027fa0:	e3a02003 	mov	r2, #3
80027fa4:	e58d2000 	str	r2, [sp]
80027fa8:	e3a02a01 	mov	r2, #4096	@ 0x1000
80027fac:	e3a01000 	mov	r1, #0
80027fb0:	e51b0010 	ldr	r0, [fp, #-16]
80027fb4:	ebffff83 	bl	80027dc8 <mappages>
80027fb8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80027fbc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80027fc0:	e51b0008 	ldr	r0, [fp, #-8]
80027fc4:	ebffe07f 	bl	800201c8 <memmove>
80027fc8:	e1a00000 	nop			@ (mov r0, r0)
80027fcc:	e24bd004 	sub	sp, fp, #4
80027fd0:	e8bd8800 	pop	{fp, pc}
80027fd4:	80029b04 	.word	0x80029b04

80027fd8 <loaduvm>:
80027fd8:	e92d4800 	push	{fp, lr}
80027fdc:	e28db004 	add	fp, sp, #4
80027fe0:	e24dd020 	sub	sp, sp, #32
80027fe4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80027fe8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80027fec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80027ff0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80027ff4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027ff8:	e1a03a03 	lsl	r3, r3, #20
80027ffc:	e1a03a23 	lsr	r3, r3, #20
80028000:	e3530000 	cmp	r3, #0
80028004:	0a000001 	beq	80028010 <loaduvm+0x38>
80028008:	e59f00f0 	ldr	r0, [pc, #240]	@ 80028100 <loaduvm+0x128>
8002800c:	ebffe6b8 	bl	80021af4 <panic>
80028010:	e3a03000 	mov	r3, #0
80028014:	e50b3008 	str	r3, [fp, #-8]
80028018:	ea000030 	b	800280e0 <loaduvm+0x108>
8002801c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028020:	e51b3008 	ldr	r3, [fp, #-8]
80028024:	e0823003 	add	r3, r2, r3
80028028:	e3a02000 	mov	r2, #0
8002802c:	e1a01003 	mov	r1, r3
80028030:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028034:	ebffff2d 	bl	80027cf0 <walkpgdir>
80028038:	e50b0010 	str	r0, [fp, #-16]
8002803c:	e51b3010 	ldr	r3, [fp, #-16]
80028040:	e3530000 	cmp	r3, #0
80028044:	1a000001 	bne	80028050 <loaduvm+0x78>
80028048:	e59f00b4 	ldr	r0, [pc, #180]	@ 80028104 <loaduvm+0x12c>
8002804c:	ebffe6a8 	bl	80021af4 <panic>
80028050:	e51b3010 	ldr	r3, [fp, #-16]
80028054:	e5933000 	ldr	r3, [r3]
80028058:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002805c:	e3c3300f 	bic	r3, r3, #15
80028060:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028064:	e59b2004 	ldr	r2, [fp, #4]
80028068:	e51b3008 	ldr	r3, [fp, #-8]
8002806c:	e0423003 	sub	r3, r2, r3
80028070:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028074:	2a000004 	bcs	8002808c <loaduvm+0xb4>
80028078:	e59b2004 	ldr	r2, [fp, #4]
8002807c:	e51b3008 	ldr	r3, [fp, #-8]
80028080:	e0423003 	sub	r3, r2, r3
80028084:	e50b300c 	str	r3, [fp, #-12]
80028088:	ea000001 	b	80028094 <loaduvm+0xbc>
8002808c:	e3a03a01 	mov	r3, #4096	@ 0x1000
80028090:	e50b300c 	str	r3, [fp, #-12]
80028094:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028098:	ebfffe9c 	bl	80027b10 <p2v>
8002809c:	e1a01000 	mov	r1, r0
800280a0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800280a4:	e51b3008 	ldr	r3, [fp, #-8]
800280a8:	e0822003 	add	r2, r2, r3
800280ac:	e51b300c 	ldr	r3, [fp, #-12]
800280b0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800280b4:	ebffedce 	bl	800237f4 <readi>
800280b8:	e1a03000 	mov	r3, r0
800280bc:	e1a02003 	mov	r2, r3
800280c0:	e51b300c 	ldr	r3, [fp, #-12]
800280c4:	e1530002 	cmp	r3, r2
800280c8:	0a000001 	beq	800280d4 <loaduvm+0xfc>
800280cc:	e3e03000 	mvn	r3, #0
800280d0:	ea000007 	b	800280f4 <loaduvm+0x11c>
800280d4:	e51b3008 	ldr	r3, [fp, #-8]
800280d8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800280dc:	e50b3008 	str	r3, [fp, #-8]
800280e0:	e51b2008 	ldr	r2, [fp, #-8]
800280e4:	e59b3004 	ldr	r3, [fp, #4]
800280e8:	e1520003 	cmp	r2, r3
800280ec:	3affffca 	bcc	8002801c <loaduvm+0x44>
800280f0:	e3a03000 	mov	r3, #0
800280f4:	e1a00003 	mov	r0, r3
800280f8:	e24bd004 	sub	sp, fp, #4
800280fc:	e8bd8800 	pop	{fp, pc}
80028100:	80029b20 	.word	0x80029b20
80028104:	80029b44 	.word	0x80029b44

80028108 <allocuvm>:
80028108:	e92d4810 	push	{r4, fp, lr}
8002810c:	e28db008 	add	fp, sp, #8
80028110:	e24dd024 	sub	sp, sp, #36	@ 0x24
80028114:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028118:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002811c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028120:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028124:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80028128:	9a000001 	bls	80028134 <allocuvm+0x2c>
8002812c:	e3a03000 	mov	r3, #0
80028130:	ea00002f 	b	800281f4 <allocuvm+0xec>
80028134:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028138:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002813c:	e1520003 	cmp	r2, r3
80028140:	2a000001 	bcs	8002814c <allocuvm+0x44>
80028144:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028148:	ea000029 	b	800281f4 <allocuvm+0xec>
8002814c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028150:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028154:	e283300f 	add	r3, r3, #15
80028158:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002815c:	e3c3300f 	bic	r3, r3, #15
80028160:	e50b3010 	str	r3, [fp, #-16]
80028164:	ea00001d 	b	800281e0 <allocuvm+0xd8>
80028168:	ebffe530 	bl	80021630 <alloc_page>
8002816c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028170:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028174:	e3530000 	cmp	r3, #0
80028178:	1a000007 	bne	8002819c <allocuvm+0x94>
8002817c:	e59f007c 	ldr	r0, [pc, #124]	@ 80028200 <allocuvm+0xf8>
80028180:	ebffe5c3 	bl	80021894 <cprintf>
80028184:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028188:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
8002818c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028190:	eb0000d5 	bl	800284ec <deallocuvm>
80028194:	e3a03000 	mov	r3, #0
80028198:	ea000015 	b	800281f4 <allocuvm+0xec>
8002819c:	e3a02a01 	mov	r2, #4096	@ 0x1000
800281a0:	e3a01000 	mov	r1, #0
800281a4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800281a8:	ebffdf94 	bl	80020000 <memset>
800281ac:	e51b4010 	ldr	r4, [fp, #-16]
800281b0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800281b4:	ebfffe4b 	bl	80027ae8 <v2p>
800281b8:	e1a03000 	mov	r3, r0
800281bc:	e3a02003 	mov	r2, #3
800281c0:	e58d2000 	str	r2, [sp]
800281c4:	e3a02a01 	mov	r2, #4096	@ 0x1000
800281c8:	e1a01004 	mov	r1, r4
800281cc:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800281d0:	ebfffefc 	bl	80027dc8 <mappages>
800281d4:	e51b3010 	ldr	r3, [fp, #-16]
800281d8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800281dc:	e50b3010 	str	r3, [fp, #-16]
800281e0:	e51b2010 	ldr	r2, [fp, #-16]
800281e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800281e8:	e1520003 	cmp	r2, r3
800281ec:	3affffdd 	bcc	80028168 <allocuvm+0x60>
800281f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800281f4:	e1a00003 	mov	r0, r3
800281f8:	e24bd008 	sub	sp, fp, #8
800281fc:	e8bd8810 	pop	{r4, fp, pc}
80028200:	80029b64 	.word	0x80029b64

80028204 <allocuvm_lazy>:
80028204:	e92d4800 	push	{fp, lr}
80028208:	e28db004 	add	fp, sp, #4
8002820c:	e24dd018 	sub	sp, sp, #24
80028210:	e50b0010 	str	r0, [fp, #-16]
80028214:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028218:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
8002821c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028220:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80028224:	9a000001 	bls	80028230 <allocuvm_lazy+0x2c>
80028228:	e3a03000 	mov	r3, #0
8002822c:	ea00002c 	b	800282e4 <allocuvm_lazy+0xe0>
80028230:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80028234:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028238:	e1520003 	cmp	r2, r3
8002823c:	2a000001 	bcs	80028248 <allocuvm_lazy+0x44>
80028240:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028244:	ea000026 	b	800282e4 <allocuvm_lazy+0xe0>
80028248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002824c:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028250:	e283300f 	add	r3, r3, #15
80028254:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028258:	e3c3300f 	bic	r3, r3, #15
8002825c:	e50b3008 	str	r3, [fp, #-8]
80028260:	ea00001a 	b	800282d0 <allocuvm_lazy+0xcc>
80028264:	e51b3008 	ldr	r3, [fp, #-8]
80028268:	e3a02001 	mov	r2, #1
8002826c:	e1a01003 	mov	r1, r3
80028270:	e51b0010 	ldr	r0, [fp, #-16]
80028274:	ebfffe9d 	bl	80027cf0 <walkpgdir>
80028278:	e50b000c 	str	r0, [fp, #-12]
8002827c:	e51b300c 	ldr	r3, [fp, #-12]
80028280:	e3530000 	cmp	r3, #0
80028284:	1a000007 	bne	800282a8 <allocuvm_lazy+0xa4>
80028288:	e59f0060 	ldr	r0, [pc, #96]	@ 800282f0 <allocuvm_lazy+0xec>
8002828c:	ebffe580 	bl	80021894 <cprintf>
80028290:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80028294:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80028298:	e51b0010 	ldr	r0, [fp, #-16]
8002829c:	eb000092 	bl	800284ec <deallocuvm>
800282a0:	e3a03000 	mov	r3, #0
800282a4:	ea00000e 	b	800282e4 <allocuvm_lazy+0xe0>
800282a8:	e51b300c 	ldr	r3, [fp, #-12]
800282ac:	e5933000 	ldr	r3, [r3]
800282b0:	e2033003 	and	r3, r3, #3
800282b4:	e3530000 	cmp	r3, #0
800282b8:	0a000001 	beq	800282c4 <allocuvm_lazy+0xc0>
800282bc:	e59f0030 	ldr	r0, [pc, #48]	@ 800282f4 <allocuvm_lazy+0xf0>
800282c0:	ebffe60b 	bl	80021af4 <panic>
800282c4:	e51b3008 	ldr	r3, [fp, #-8]
800282c8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800282cc:	e50b3008 	str	r3, [fp, #-8]
800282d0:	e51b2008 	ldr	r2, [fp, #-8]
800282d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800282d8:	e1520003 	cmp	r2, r3
800282dc:	3affffe0 	bcc	80028264 <allocuvm_lazy+0x60>
800282e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800282e4:	e1a00003 	mov	r0, r3
800282e8:	e24bd004 	sub	sp, fp, #4
800282ec:	e8bd8800 	pop	{fp, pc}
800282f0:	80029b7c 	.word	0x80029b7c
800282f4:	80029ba0 	.word	0x80029ba0

800282f8 <allocpage_on_fault>:
800282f8:	e92d4800 	push	{fp, lr}
800282fc:	e28db004 	add	fp, sp, #4
80028300:	e24dd018 	sub	sp, sp, #24
80028304:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028308:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002830c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028310:	e3c3300f 	bic	r3, r3, #15
80028314:	e50b3008 	str	r3, [fp, #-8]
80028318:	e59f31b0 	ldr	r3, [pc, #432]	@ 800284d0 <allocpage_on_fault+0x1d8>
8002831c:	e5933000 	ldr	r3, [r3]
80028320:	e3530000 	cmp	r3, #0
80028324:	0a000003 	beq	80028338 <allocpage_on_fault+0x40>
80028328:	e59f31a0 	ldr	r3, [pc, #416]	@ 800284d0 <allocpage_on_fault+0x1d8>
8002832c:	e5933000 	ldr	r3, [r3]
80028330:	e5932010 	ldr	r2, [r3, #16]
80028334:	ea000000 	b	8002833c <allocpage_on_fault+0x44>
80028338:	e3e02000 	mvn	r2, #0
8002833c:	e59f318c 	ldr	r3, [pc, #396]	@ 800284d0 <allocpage_on_fault+0x1d8>
80028340:	e5933000 	ldr	r3, [r3]
80028344:	e3530000 	cmp	r3, #0
80028348:	0a000003 	beq	8002835c <allocpage_on_fault+0x64>
8002834c:	e59f317c 	ldr	r3, [pc, #380]	@ 800284d0 <allocpage_on_fault+0x1d8>
80028350:	e5933000 	ldr	r3, [r3]
80028354:	e5933000 	ldr	r3, [r3]
80028358:	ea000000 	b	80028360 <allocpage_on_fault+0x68>
8002835c:	e3a03000 	mov	r3, #0
80028360:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80028364:	e59f0168 	ldr	r0, [pc, #360]	@ 800284d4 <allocpage_on_fault+0x1dc>
80028368:	ebffe549 	bl	80021894 <cprintf>
8002836c:	e59f315c 	ldr	r3, [pc, #348]	@ 800284d0 <allocpage_on_fault+0x1d8>
80028370:	e5933000 	ldr	r3, [r3]
80028374:	e3530000 	cmp	r3, #0
80028378:	0a000005 	beq	80028394 <allocpage_on_fault+0x9c>
8002837c:	e59f314c 	ldr	r3, [pc, #332]	@ 800284d0 <allocpage_on_fault+0x1d8>
80028380:	e5933000 	ldr	r3, [r3]
80028384:	e5933000 	ldr	r3, [r3]
80028388:	e51b2008 	ldr	r2, [fp, #-8]
8002838c:	e1520003 	cmp	r2, r3
80028390:	3a00000e 	bcc	800283d0 <allocpage_on_fault+0xd8>
80028394:	e59f3134 	ldr	r3, [pc, #308]	@ 800284d0 <allocpage_on_fault+0x1d8>
80028398:	e5933000 	ldr	r3, [r3]
8002839c:	e3530000 	cmp	r3, #0
800283a0:	0a000003 	beq	800283b4 <allocpage_on_fault+0xbc>
800283a4:	e59f3124 	ldr	r3, [pc, #292]	@ 800284d0 <allocpage_on_fault+0x1d8>
800283a8:	e5933000 	ldr	r3, [r3]
800283ac:	e5933000 	ldr	r3, [r3]
800283b0:	ea000000 	b	800283b8 <allocpage_on_fault+0xc0>
800283b4:	e3a03000 	mov	r3, #0
800283b8:	e1a02003 	mov	r2, r3
800283bc:	e51b1008 	ldr	r1, [fp, #-8]
800283c0:	e59f0110 	ldr	r0, [pc, #272]	@ 800284d8 <allocpage_on_fault+0x1e0>
800283c4:	ebffe532 	bl	80021894 <cprintf>
800283c8:	e3e03000 	mvn	r3, #0
800283cc:	ea00003c 	b	800284c4 <allocpage_on_fault+0x1cc>
800283d0:	e59f30f8 	ldr	r3, [pc, #248]	@ 800284d0 <allocpage_on_fault+0x1d8>
800283d4:	e5933000 	ldr	r3, [r3]
800283d8:	e5933004 	ldr	r3, [r3, #4]
800283dc:	e51b1008 	ldr	r1, [fp, #-8]
800283e0:	e3a02001 	mov	r2, #1
800283e4:	e1a00003 	mov	r0, r3
800283e8:	ebfffe40 	bl	80027cf0 <walkpgdir>
800283ec:	e50b000c 	str	r0, [fp, #-12]
800283f0:	e51b300c 	ldr	r3, [fp, #-12]
800283f4:	e3530000 	cmp	r3, #0
800283f8:	1a000004 	bne	80028410 <allocpage_on_fault+0x118>
800283fc:	e51b1008 	ldr	r1, [fp, #-8]
80028400:	e59f00d4 	ldr	r0, [pc, #212]	@ 800284dc <allocpage_on_fault+0x1e4>
80028404:	ebffe522 	bl	80021894 <cprintf>
80028408:	e3e03000 	mvn	r3, #0
8002840c:	ea00002c 	b	800284c4 <allocpage_on_fault+0x1cc>
80028410:	e51b300c 	ldr	r3, [fp, #-12]
80028414:	e5933000 	ldr	r3, [r3]
80028418:	e2033003 	and	r3, r3, #3
8002841c:	e3530000 	cmp	r3, #0
80028420:	0a000004 	beq	80028438 <allocpage_on_fault+0x140>
80028424:	e51b1008 	ldr	r1, [fp, #-8]
80028428:	e59f00b0 	ldr	r0, [pc, #176]	@ 800284e0 <allocpage_on_fault+0x1e8>
8002842c:	ebffe518 	bl	80021894 <cprintf>
80028430:	e3a03000 	mov	r3, #0
80028434:	ea000022 	b	800284c4 <allocpage_on_fault+0x1cc>
80028438:	ebffe47c 	bl	80021630 <alloc_page>
8002843c:	e50b0010 	str	r0, [fp, #-16]
80028440:	e51b3010 	ldr	r3, [fp, #-16]
80028444:	e3530000 	cmp	r3, #0
80028448:	1a000003 	bne	8002845c <allocpage_on_fault+0x164>
8002844c:	e59f0090 	ldr	r0, [pc, #144]	@ 800284e4 <allocpage_on_fault+0x1ec>
80028450:	ebffe50f 	bl	80021894 <cprintf>
80028454:	e3e03000 	mvn	r3, #0
80028458:	ea000019 	b	800284c4 <allocpage_on_fault+0x1cc>
8002845c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028460:	e3a01000 	mov	r1, #0
80028464:	e51b0010 	ldr	r0, [fp, #-16]
80028468:	ebffdee4 	bl	80020000 <memset>
8002846c:	e51b0010 	ldr	r0, [fp, #-16]
80028470:	ebfffd9c 	bl	80027ae8 <v2p>
80028474:	e1a03000 	mov	r3, r0
80028478:	e383203e 	orr	r2, r3, #62	@ 0x3e
8002847c:	e51b300c 	ldr	r3, [fp, #-12]
80028480:	e5832000 	str	r2, [r3]
80028484:	ebfffe8b 	bl	80027eb8 <flush_tlb>
80028488:	e59f3040 	ldr	r3, [pc, #64]	@ 800284d0 <allocpage_on_fault+0x1d8>
8002848c:	e5933000 	ldr	r3, [r3]
80028490:	e1a00003 	mov	r0, r3
80028494:	ebfffe96 	bl	80027ef4 <switchuvm>
80028498:	e59f3030 	ldr	r3, [pc, #48]	@ 800284d0 <allocpage_on_fault+0x1d8>
8002849c:	e5933000 	ldr	r3, [r3]
800284a0:	e5931010 	ldr	r1, [r3, #16]
800284a4:	e51b300c 	ldr	r3, [fp, #-12]
800284a8:	e5933000 	ldr	r3, [r3]
800284ac:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800284b0:	e3c3300f 	bic	r3, r3, #15
800284b4:	e51b2008 	ldr	r2, [fp, #-8]
800284b8:	e59f0028 	ldr	r0, [pc, #40]	@ 800284e8 <allocpage_on_fault+0x1f0>
800284bc:	ebffe4f4 	bl	80021894 <cprintf>
800284c0:	e3a03000 	mov	r3, #0
800284c4:	e1a00003 	mov	r0, r3
800284c8:	e24bd004 	sub	sp, fp, #4
800284cc:	e8bd8800 	pop	{fp, pc}
800284d0:	800af548 	.word	0x800af548
800284d4:	80029bc8 	.word	0x80029bc8
800284d8:	80029c0c 	.word	0x80029c0c
800284dc:	80029c44 	.word	0x80029c44
800284e0:	80029c78 	.word	0x80029c78
800284e4:	80029cb0 	.word	0x80029cb0
800284e8:	80029cd8 	.word	0x80029cd8

800284ec <deallocuvm>:
800284ec:	e92d4800 	push	{fp, lr}
800284f0:	e28db004 	add	fp, sp, #4
800284f4:	e24dd020 	sub	sp, sp, #32
800284f8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800284fc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028500:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028504:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028508:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002850c:	e1520003 	cmp	r2, r3
80028510:	3a000001 	bcc	8002851c <deallocuvm+0x30>
80028514:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028518:	ea000035 	b	800285f4 <deallocuvm+0x108>
8002851c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028520:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028524:	e283300f 	add	r3, r3, #15
80028528:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002852c:	e3c3300f 	bic	r3, r3, #15
80028530:	e50b3008 	str	r3, [fp, #-8]
80028534:	ea000029 	b	800285e0 <deallocuvm+0xf4>
80028538:	e51b3008 	ldr	r3, [fp, #-8]
8002853c:	e3a02000 	mov	r2, #0
80028540:	e1a01003 	mov	r1, r3
80028544:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028548:	ebfffde8 	bl	80027cf0 <walkpgdir>
8002854c:	e50b000c 	str	r0, [fp, #-12]
80028550:	e51b300c 	ldr	r3, [fp, #-12]
80028554:	e3530000 	cmp	r3, #0
80028558:	1a000006 	bne	80028578 <deallocuvm+0x8c>
8002855c:	e51b3008 	ldr	r3, [fp, #-8]
80028560:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
80028564:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80028568:	e1a03a23 	lsr	r3, r3, #20
8002856c:	e1a03a03 	lsl	r3, r3, #20
80028570:	e50b3008 	str	r3, [fp, #-8]
80028574:	ea000016 	b	800285d4 <deallocuvm+0xe8>
80028578:	e51b300c 	ldr	r3, [fp, #-12]
8002857c:	e5933000 	ldr	r3, [r3]
80028580:	e2033003 	and	r3, r3, #3
80028584:	e3530000 	cmp	r3, #0
80028588:	0a000011 	beq	800285d4 <deallocuvm+0xe8>
8002858c:	e51b300c 	ldr	r3, [fp, #-12]
80028590:	e5933000 	ldr	r3, [r3]
80028594:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028598:	e3c3300f 	bic	r3, r3, #15
8002859c:	e50b3010 	str	r3, [fp, #-16]
800285a0:	e51b3010 	ldr	r3, [fp, #-16]
800285a4:	e3530000 	cmp	r3, #0
800285a8:	1a000001 	bne	800285b4 <deallocuvm+0xc8>
800285ac:	e59f004c 	ldr	r0, [pc, #76]	@ 80028600 <deallocuvm+0x114>
800285b0:	ebffe54f 	bl	80021af4 <panic>
800285b4:	e51b0010 	ldr	r0, [fp, #-16]
800285b8:	ebfffd54 	bl	80027b10 <p2v>
800285bc:	e1a03000 	mov	r3, r0
800285c0:	e1a00003 	mov	r0, r3
800285c4:	ebffe40f 	bl	80021608 <free_page>
800285c8:	e51b300c 	ldr	r3, [fp, #-12]
800285cc:	e3a02000 	mov	r2, #0
800285d0:	e5832000 	str	r2, [r3]
800285d4:	e51b3008 	ldr	r3, [fp, #-8]
800285d8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800285dc:	e50b3008 	str	r3, [fp, #-8]
800285e0:	e51b2008 	ldr	r2, [fp, #-8]
800285e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800285e8:	e1520003 	cmp	r2, r3
800285ec:	3affffd1 	bcc	80028538 <deallocuvm+0x4c>
800285f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800285f4:	e1a00003 	mov	r0, r3
800285f8:	e24bd004 	sub	sp, fp, #4
800285fc:	e8bd8800 	pop	{fp, pc}
80028600:	80029d08 	.word	0x80029d08

80028604 <freevm>:
80028604:	e92d4800 	push	{fp, lr}
80028608:	e28db004 	add	fp, sp, #4
8002860c:	e24dd010 	sub	sp, sp, #16
80028610:	e50b0010 	str	r0, [fp, #-16]
80028614:	e51b3010 	ldr	r3, [fp, #-16]
80028618:	e3530000 	cmp	r3, #0
8002861c:	1a000001 	bne	80028628 <freevm+0x24>
80028620:	e59f0098 	ldr	r0, [pc, #152]	@ 800286c0 <freevm+0xbc>
80028624:	ebffe532 	bl	80021af4 <panic>
80028628:	e3a02000 	mov	r2, #0
8002862c:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80028630:	e51b0010 	ldr	r0, [fp, #-16]
80028634:	ebffffac 	bl	800284ec <deallocuvm>
80028638:	e3a03000 	mov	r3, #0
8002863c:	e50b3008 	str	r3, [fp, #-8]
80028640:	ea000016 	b	800286a0 <freevm+0x9c>
80028644:	e51b3008 	ldr	r3, [fp, #-8]
80028648:	e1a03103 	lsl	r3, r3, #2
8002864c:	e51b2010 	ldr	r2, [fp, #-16]
80028650:	e0823003 	add	r3, r2, r3
80028654:	e5933000 	ldr	r3, [r3]
80028658:	e2033003 	and	r3, r3, #3
8002865c:	e3530000 	cmp	r3, #0
80028660:	0a00000b 	beq	80028694 <freevm+0x90>
80028664:	e51b3008 	ldr	r3, [fp, #-8]
80028668:	e1a03103 	lsl	r3, r3, #2
8002866c:	e51b2010 	ldr	r2, [fp, #-16]
80028670:	e0823003 	add	r3, r2, r3
80028674:	e5933000 	ldr	r3, [r3]
80028678:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
8002867c:	e3c33003 	bic	r3, r3, #3
80028680:	e1a00003 	mov	r0, r3
80028684:	ebfffd21 	bl	80027b10 <p2v>
80028688:	e50b000c 	str	r0, [fp, #-12]
8002868c:	e51b000c 	ldr	r0, [fp, #-12]
80028690:	ebfffd46 	bl	80027bb0 <kpt_free>
80028694:	e51b3008 	ldr	r3, [fp, #-8]
80028698:	e2833001 	add	r3, r3, #1
8002869c:	e50b3008 	str	r3, [fp, #-8]
800286a0:	e51b3008 	ldr	r3, [fp, #-8]
800286a4:	e35300ff 	cmp	r3, #255	@ 0xff
800286a8:	9affffe5 	bls	80028644 <freevm+0x40>
800286ac:	e51b0010 	ldr	r0, [fp, #-16]
800286b0:	ebfffd3e 	bl	80027bb0 <kpt_free>
800286b4:	e1a00000 	nop			@ (mov r0, r0)
800286b8:	e24bd004 	sub	sp, fp, #4
800286bc:	e8bd8800 	pop	{fp, pc}
800286c0:	80029d14 	.word	0x80029d14

800286c4 <clearpteu>:
800286c4:	e92d4800 	push	{fp, lr}
800286c8:	e28db004 	add	fp, sp, #4
800286cc:	e24dd010 	sub	sp, sp, #16
800286d0:	e50b0010 	str	r0, [fp, #-16]
800286d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800286d8:	e3a02000 	mov	r2, #0
800286dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800286e0:	e51b0010 	ldr	r0, [fp, #-16]
800286e4:	ebfffd81 	bl	80027cf0 <walkpgdir>
800286e8:	e50b0008 	str	r0, [fp, #-8]
800286ec:	e51b3008 	ldr	r3, [fp, #-8]
800286f0:	e3530000 	cmp	r3, #0
800286f4:	1a000001 	bne	80028700 <clearpteu+0x3c>
800286f8:	e59f0024 	ldr	r0, [pc, #36]	@ 80028724 <clearpteu+0x60>
800286fc:	ebffe4fc 	bl	80021af4 <panic>
80028700:	e51b3008 	ldr	r3, [fp, #-8]
80028704:	e5933000 	ldr	r3, [r3]
80028708:	e3c33030 	bic	r3, r3, #48	@ 0x30
8002870c:	e3832010 	orr	r2, r3, #16
80028710:	e51b3008 	ldr	r3, [fp, #-8]
80028714:	e5832000 	str	r2, [r3]
80028718:	e1a00000 	nop			@ (mov r0, r0)
8002871c:	e24bd004 	sub	sp, fp, #4
80028720:	e8bd8800 	pop	{fp, pc}
80028724:	80029d28 	.word	0x80029d28

80028728 <copyuvm>:
80028728:	e92d4810 	push	{r4, fp, lr}
8002872c:	e28db008 	add	fp, sp, #8
80028730:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
80028734:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80028738:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
8002873c:	ebfffd45 	bl	80027c58 <kpt_alloc>
80028740:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028744:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028748:	e3530000 	cmp	r3, #0
8002874c:	1a000001 	bne	80028758 <copyuvm+0x30>
80028750:	e3a03000 	mov	r3, #0
80028754:	ea000059 	b	800288c0 <copyuvm+0x198>
80028758:	e3a03000 	mov	r3, #0
8002875c:	e50b3010 	str	r3, [fp, #-16]
80028760:	ea00004a 	b	80028890 <copyuvm+0x168>
80028764:	e51b3010 	ldr	r3, [fp, #-16]
80028768:	e3a02000 	mov	r2, #0
8002876c:	e1a01003 	mov	r1, r3
80028770:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80028774:	ebfffd5d 	bl	80027cf0 <walkpgdir>
80028778:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002877c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028780:	e3530000 	cmp	r3, #0
80028784:	1a000008 	bne	800287ac <copyuvm+0x84>
80028788:	e51b3010 	ldr	r3, [fp, #-16]
8002878c:	e3a02001 	mov	r2, #1
80028790:	e1a01003 	mov	r1, r3
80028794:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028798:	ebfffd54 	bl	80027cf0 <walkpgdir>
8002879c:	e1a03000 	mov	r3, r0
800287a0:	e3530000 	cmp	r3, #0
800287a4:	1a000033 	bne	80028878 <copyuvm+0x150>
800287a8:	ea000041 	b	800288b4 <copyuvm+0x18c>
800287ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800287b0:	e5933000 	ldr	r3, [r3]
800287b4:	e2033003 	and	r3, r3, #3
800287b8:	e3530000 	cmp	r3, #0
800287bc:	1a000008 	bne	800287e4 <copyuvm+0xbc>
800287c0:	e51b3010 	ldr	r3, [fp, #-16]
800287c4:	e3a02001 	mov	r2, #1
800287c8:	e1a01003 	mov	r1, r3
800287cc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800287d0:	ebfffd46 	bl	80027cf0 <walkpgdir>
800287d4:	e1a03000 	mov	r3, r0
800287d8:	e3530000 	cmp	r3, #0
800287dc:	1a000027 	bne	80028880 <copyuvm+0x158>
800287e0:	ea000033 	b	800288b4 <copyuvm+0x18c>
800287e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800287e8:	e5933000 	ldr	r3, [r3]
800287ec:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800287f0:	e3c3300f 	bic	r3, r3, #15
800287f4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800287f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800287fc:	e5933000 	ldr	r3, [r3]
80028800:	e1a03223 	lsr	r3, r3, #4
80028804:	e2033003 	and	r3, r3, #3
80028808:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002880c:	ebffe387 	bl	80021630 <alloc_page>
80028810:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80028814:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028818:	e3530000 	cmp	r3, #0
8002881c:	0a000021 	beq	800288a8 <copyuvm+0x180>
80028820:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80028824:	ebfffcb9 	bl	80027b10 <p2v>
80028828:	e1a03000 	mov	r3, r0
8002882c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028830:	e1a01003 	mov	r1, r3
80028834:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028838:	ebffde62 	bl	800201c8 <memmove>
8002883c:	e51b4010 	ldr	r4, [fp, #-16]
80028840:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028844:	ebfffca7 	bl	80027ae8 <v2p>
80028848:	e1a02000 	mov	r2, r0
8002884c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028850:	e58d3000 	str	r3, [sp]
80028854:	e1a03002 	mov	r3, r2
80028858:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002885c:	e1a01004 	mov	r1, r4
80028860:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028864:	ebfffd57 	bl	80027dc8 <mappages>
80028868:	e1a03000 	mov	r3, r0
8002886c:	e3530000 	cmp	r3, #0
80028870:	ba00000e 	blt	800288b0 <copyuvm+0x188>
80028874:	ea000002 	b	80028884 <copyuvm+0x15c>
80028878:	e1a00000 	nop			@ (mov r0, r0)
8002887c:	ea000000 	b	80028884 <copyuvm+0x15c>
80028880:	e1a00000 	nop			@ (mov r0, r0)
80028884:	e51b3010 	ldr	r3, [fp, #-16]
80028888:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002888c:	e50b3010 	str	r3, [fp, #-16]
80028890:	e51b2010 	ldr	r2, [fp, #-16]
80028894:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80028898:	e1520003 	cmp	r2, r3
8002889c:	3affffb0 	bcc	80028764 <copyuvm+0x3c>
800288a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800288a4:	ea000005 	b	800288c0 <copyuvm+0x198>
800288a8:	e1a00000 	nop			@ (mov r0, r0)
800288ac:	ea000000 	b	800288b4 <copyuvm+0x18c>
800288b0:	e1a00000 	nop			@ (mov r0, r0)
800288b4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800288b8:	ebffff51 	bl	80028604 <freevm>
800288bc:	e3a03000 	mov	r3, #0
800288c0:	e1a00003 	mov	r0, r3
800288c4:	e24bd008 	sub	sp, fp, #8
800288c8:	e8bd8810 	pop	{r4, fp, pc}

800288cc <uva2ka>:
800288cc:	e92d4800 	push	{fp, lr}
800288d0:	e28db004 	add	fp, sp, #4
800288d4:	e24dd010 	sub	sp, sp, #16
800288d8:	e50b0010 	str	r0, [fp, #-16]
800288dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800288e0:	e3a02000 	mov	r2, #0
800288e4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800288e8:	e51b0010 	ldr	r0, [fp, #-16]
800288ec:	ebfffcff 	bl	80027cf0 <walkpgdir>
800288f0:	e50b0008 	str	r0, [fp, #-8]
800288f4:	e51b3008 	ldr	r3, [fp, #-8]
800288f8:	e5933000 	ldr	r3, [r3]
800288fc:	e2033003 	and	r3, r3, #3
80028900:	e3530000 	cmp	r3, #0
80028904:	1a000001 	bne	80028910 <uva2ka+0x44>
80028908:	e3a03000 	mov	r3, #0
8002890c:	ea00000e 	b	8002894c <uva2ka+0x80>
80028910:	e51b3008 	ldr	r3, [fp, #-8]
80028914:	e5933000 	ldr	r3, [r3]
80028918:	e2033030 	and	r3, r3, #48	@ 0x30
8002891c:	e3530030 	cmp	r3, #48	@ 0x30
80028920:	0a000001 	beq	8002892c <uva2ka+0x60>
80028924:	e3a03000 	mov	r3, #0
80028928:	ea000007 	b	8002894c <uva2ka+0x80>
8002892c:	e51b3008 	ldr	r3, [fp, #-8]
80028930:	e5933000 	ldr	r3, [r3]
80028934:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028938:	e3c3300f 	bic	r3, r3, #15
8002893c:	e1a00003 	mov	r0, r3
80028940:	ebfffc72 	bl	80027b10 <p2v>
80028944:	e1a03000 	mov	r3, r0
80028948:	e1a00000 	nop			@ (mov r0, r0)
8002894c:	e1a00003 	mov	r0, r3
80028950:	e24bd004 	sub	sp, fp, #4
80028954:	e8bd8800 	pop	{fp, pc}

80028958 <copyout>:
80028958:	e92d4800 	push	{fp, lr}
8002895c:	e28db004 	add	fp, sp, #4
80028960:	e24dd020 	sub	sp, sp, #32
80028964:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028968:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002896c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028970:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028974:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028978:	e50b3008 	str	r3, [fp, #-8]
8002897c:	ea00002c 	b	80028a34 <copyout+0xdc>
80028980:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028984:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028988:	e3c3300f 	bic	r3, r3, #15
8002898c:	e50b3010 	str	r3, [fp, #-16]
80028990:	e51b3010 	ldr	r3, [fp, #-16]
80028994:	e1a01003 	mov	r1, r3
80028998:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002899c:	ebffffca 	bl	800288cc <uva2ka>
800289a0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800289a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800289a8:	e3530000 	cmp	r3, #0
800289ac:	1a000001 	bne	800289b8 <copyout+0x60>
800289b0:	e3e03000 	mvn	r3, #0
800289b4:	ea000022 	b	80028a44 <copyout+0xec>
800289b8:	e51b2010 	ldr	r2, [fp, #-16]
800289bc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800289c0:	e0423003 	sub	r3, r2, r3
800289c4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800289c8:	e50b300c 	str	r3, [fp, #-12]
800289cc:	e51b200c 	ldr	r2, [fp, #-12]
800289d0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800289d4:	e1520003 	cmp	r2, r3
800289d8:	9a000001 	bls	800289e4 <copyout+0x8c>
800289dc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800289e0:	e50b300c 	str	r3, [fp, #-12]
800289e4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800289e8:	e51b3010 	ldr	r3, [fp, #-16]
800289ec:	e0423003 	sub	r3, r2, r3
800289f0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800289f4:	e0823003 	add	r3, r2, r3
800289f8:	e51b200c 	ldr	r2, [fp, #-12]
800289fc:	e51b1008 	ldr	r1, [fp, #-8]
80028a00:	e1a00003 	mov	r0, r3
80028a04:	ebffddef 	bl	800201c8 <memmove>
80028a08:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028a0c:	e51b300c 	ldr	r3, [fp, #-12]
80028a10:	e0423003 	sub	r3, r2, r3
80028a14:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028a18:	e51b2008 	ldr	r2, [fp, #-8]
80028a1c:	e51b300c 	ldr	r3, [fp, #-12]
80028a20:	e0823003 	add	r3, r2, r3
80028a24:	e50b3008 	str	r3, [fp, #-8]
80028a28:	e51b3010 	ldr	r3, [fp, #-16]
80028a2c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028a30:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80028a34:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028a38:	e3530000 	cmp	r3, #0
80028a3c:	1affffcf 	bne	80028980 <copyout+0x28>
80028a40:	e3a03000 	mov	r3, #0
80028a44:	e1a00003 	mov	r0, r3
80028a48:	e24bd004 	sub	sp, fp, #4
80028a4c:	e8bd8800 	pop	{fp, pc}

80028a50 <paging_init>:
80028a50:	e92d4800 	push	{fp, lr}
80028a54:	e28db004 	add	fp, sp, #4
80028a58:	e24dd010 	sub	sp, sp, #16
80028a5c:	e50b0008 	str	r0, [fp, #-8]
80028a60:	e50b100c 	str	r1, [fp, #-12]
80028a64:	e59f0034 	ldr	r0, [pc, #52]	@ 80028aa0 <paging_init+0x50>
80028a68:	e51b3008 	ldr	r3, [fp, #-8]
80028a6c:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028a70:	e1a01003 	mov	r1, r3
80028a74:	e51b200c 	ldr	r2, [fp, #-12]
80028a78:	e51b3008 	ldr	r3, [fp, #-8]
80028a7c:	e0422003 	sub	r2, r2, r3
80028a80:	e3a03003 	mov	r3, #3
80028a84:	e58d3000 	str	r3, [sp]
80028a88:	e51b3008 	ldr	r3, [fp, #-8]
80028a8c:	ebfffccd 	bl	80027dc8 <mappages>
80028a90:	ebfffd08 	bl	80027eb8 <flush_tlb>
80028a94:	e1a00000 	nop			@ (mov r0, r0)
80028a98:	e24bd004 	sub	sp, fp, #4
80028a9c:	e8bd8800 	pop	{fp, pc}
80028aa0:	80014000 	.word	0x80014000

80028aa4 <kvminfo>:
80028aa4:	e92d4800 	push	{fp, lr}
80028aa8:	e28db004 	add	fp, sp, #4
80028aac:	e24dd008 	sub	sp, sp, #8
80028ab0:	e59f0084 	ldr	r0, [pc, #132]	@ 80028b3c <kvminfo+0x98>
80028ab4:	ebffe376 	bl	80021894 <cprintf>
80028ab8:	e3a03000 	mov	r3, #0
80028abc:	e50b3008 	str	r3, [fp, #-8]
80028ac0:	ea000016 	b	80028b20 <kvminfo+0x7c>
80028ac4:	e59f3074 	ldr	r3, [pc, #116]	@ 80028b40 <kvminfo+0x9c>
80028ac8:	e5932000 	ldr	r2, [r3]
80028acc:	e51b3008 	ldr	r3, [fp, #-8]
80028ad0:	e1a03a23 	lsr	r3, r3, #20
80028ad4:	e1a03103 	lsl	r3, r3, #2
80028ad8:	e0823003 	add	r3, r2, r3
80028adc:	e5933000 	ldr	r3, [r3]
80028ae0:	e50b300c 	str	r3, [fp, #-12]
80028ae4:	e51b300c 	ldr	r3, [fp, #-12]
80028ae8:	e2033003 	and	r3, r3, #3
80028aec:	e3530002 	cmp	r3, #2
80028af0:	1a000007 	bne	80028b14 <kvminfo+0x70>
80028af4:	e51b300c 	ldr	r3, [fp, #-12]
80028af8:	e1a02a23 	lsr	r2, r3, #20
80028afc:	e1a02a02 	lsl	r2, r2, #20
80028b00:	e51b300c 	ldr	r3, [fp, #-12]
80028b04:	e2033003 	and	r3, r3, #3
80028b08:	e51b1008 	ldr	r1, [fp, #-8]
80028b0c:	e59f0030 	ldr	r0, [pc, #48]	@ 80028b44 <kvminfo+0xa0>
80028b10:	ebffe35f 	bl	80021894 <cprintf>
80028b14:	e51b3008 	ldr	r3, [fp, #-8]
80028b18:	e2833601 	add	r3, r3, #1048576	@ 0x100000
80028b1c:	e50b3008 	str	r3, [fp, #-8]
80028b20:	e51b3008 	ldr	r3, [fp, #-8]
80028b24:	e3530000 	cmp	r3, #0
80028b28:	aaffffe5 	bge	80028ac4 <kvminfo+0x20>
80028b2c:	e1a00000 	nop			@ (mov r0, r0)
80028b30:	e1a00000 	nop			@ (mov r0, r0)
80028b34:	e24bd004 	sub	sp, fp, #4
80028b38:	e8bd8800 	pop	{fp, pc}
80028b3c:	80029d34 	.word	0x80029d34
80028b40:	800af54c 	.word	0x800af54c
80028b44:	80029d50 	.word	0x80029d50

80028b48 <getpte>:
80028b48:	e92d4800 	push	{fp, lr}
80028b4c:	e28db004 	add	fp, sp, #4
80028b50:	e24dd008 	sub	sp, sp, #8
80028b54:	e50b0008 	str	r0, [fp, #-8]
80028b58:	e50b100c 	str	r1, [fp, #-12]
80028b5c:	e3a02000 	mov	r2, #0
80028b60:	e51b100c 	ldr	r1, [fp, #-12]
80028b64:	e51b0008 	ldr	r0, [fp, #-8]
80028b68:	ebfffc60 	bl	80027cf0 <walkpgdir>
80028b6c:	e1a03000 	mov	r3, r0
80028b70:	e1a00003 	mov	r0, r3
80028b74:	e24bd004 	sub	sp, fp, #4
80028b78:	e8bd8800 	pop	{fp, pc}

80028b7c <default_isr>:
80028b7c:	e92d4800 	push	{fp, lr}
80028b80:	e28db004 	add	fp, sp, #4
80028b84:	e24dd008 	sub	sp, sp, #8
80028b88:	e50b0008 	str	r0, [fp, #-8]
80028b8c:	e50b100c 	str	r1, [fp, #-12]
80028b90:	e51b100c 	ldr	r1, [fp, #-12]
80028b94:	e59f000c 	ldr	r0, [pc, #12]	@ 80028ba8 <default_isr+0x2c>
80028b98:	ebffe33d 	bl	80021894 <cprintf>
80028b9c:	e1a00000 	nop			@ (mov r0, r0)
80028ba0:	e24bd004 	sub	sp, fp, #4
80028ba4:	e8bd8800 	pop	{fp, pc}
80028ba8:	80029d7c 	.word	0x80029d7c

80028bac <pic_init>:
80028bac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028bb0:	e28db000 	add	fp, sp, #0
80028bb4:	e24dd014 	sub	sp, sp, #20
80028bb8:	e50b0010 	str	r0, [fp, #-16]
80028bbc:	e59f2060 	ldr	r2, [pc, #96]	@ 80028c24 <pic_init+0x78>
80028bc0:	e51b3010 	ldr	r3, [fp, #-16]
80028bc4:	e5823000 	str	r3, [r2]
80028bc8:	e59f3054 	ldr	r3, [pc, #84]	@ 80028c24 <pic_init+0x78>
80028bcc:	e5933000 	ldr	r3, [r3]
80028bd0:	e2833014 	add	r3, r3, #20
80028bd4:	e3e02000 	mvn	r2, #0
80028bd8:	e5832000 	str	r2, [r3]
80028bdc:	e3a03000 	mov	r3, #0
80028be0:	e50b3008 	str	r3, [fp, #-8]
80028be4:	ea000006 	b	80028c04 <pic_init+0x58>
80028be8:	e59f2038 	ldr	r2, [pc, #56]	@ 80028c28 <pic_init+0x7c>
80028bec:	e51b3008 	ldr	r3, [fp, #-8]
80028bf0:	e59f1034 	ldr	r1, [pc, #52]	@ 80028c2c <pic_init+0x80>
80028bf4:	e7821103 	str	r1, [r2, r3, lsl #2]
80028bf8:	e51b3008 	ldr	r3, [fp, #-8]
80028bfc:	e2833001 	add	r3, r3, #1
80028c00:	e50b3008 	str	r3, [fp, #-8]
80028c04:	e51b3008 	ldr	r3, [fp, #-8]
80028c08:	e353001f 	cmp	r3, #31
80028c0c:	dafffff5 	ble	80028be8 <pic_init+0x3c>
80028c10:	e1a00000 	nop			@ (mov r0, r0)
80028c14:	e1a00000 	nop			@ (mov r0, r0)
80028c18:	e28bd000 	add	sp, fp, #0
80028c1c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028c20:	e12fff1e 	bx	lr
80028c24:	800af588 	.word	0x800af588
80028c28:	800af58c 	.word	0x800af58c
80028c2c:	80028b7c 	.word	0x80028b7c

80028c30 <pic_enable>:
80028c30:	e92d4800 	push	{fp, lr}
80028c34:	e28db004 	add	fp, sp, #4
80028c38:	e24dd008 	sub	sp, sp, #8
80028c3c:	e50b0008 	str	r0, [fp, #-8]
80028c40:	e50b100c 	str	r1, [fp, #-12]
80028c44:	e51b3008 	ldr	r3, [fp, #-8]
80028c48:	e3530000 	cmp	r3, #0
80028c4c:	ba000002 	blt	80028c5c <pic_enable+0x2c>
80028c50:	e51b3008 	ldr	r3, [fp, #-8]
80028c54:	e353001f 	cmp	r3, #31
80028c58:	da000001 	ble	80028c64 <pic_enable+0x34>
80028c5c:	e59f0038 	ldr	r0, [pc, #56]	@ 80028c9c <pic_enable+0x6c>
80028c60:	ebffe3a3 	bl	80021af4 <panic>
80028c64:	e59f1034 	ldr	r1, [pc, #52]	@ 80028ca0 <pic_enable+0x70>
80028c68:	e51b3008 	ldr	r3, [fp, #-8]
80028c6c:	e51b200c 	ldr	r2, [fp, #-12]
80028c70:	e7812103 	str	r2, [r1, r3, lsl #2]
80028c74:	e3a02001 	mov	r2, #1
80028c78:	e51b3008 	ldr	r3, [fp, #-8]
80028c7c:	e1a02312 	lsl	r2, r2, r3
80028c80:	e59f301c 	ldr	r3, [pc, #28]	@ 80028ca4 <pic_enable+0x74>
80028c84:	e5933000 	ldr	r3, [r3]
80028c88:	e2833010 	add	r3, r3, #16
80028c8c:	e5832000 	str	r2, [r3]
80028c90:	e1a00000 	nop			@ (mov r0, r0)
80028c94:	e24bd004 	sub	sp, fp, #4
80028c98:	e8bd8800 	pop	{fp, pc}
80028c9c:	80029d98 	.word	0x80029d98
80028ca0:	800af58c 	.word	0x800af58c
80028ca4:	800af588 	.word	0x800af588

80028ca8 <pic_disable>:
80028ca8:	e92d4800 	push	{fp, lr}
80028cac:	e28db004 	add	fp, sp, #4
80028cb0:	e24dd008 	sub	sp, sp, #8
80028cb4:	e50b0008 	str	r0, [fp, #-8]
80028cb8:	e51b3008 	ldr	r3, [fp, #-8]
80028cbc:	e3530000 	cmp	r3, #0
80028cc0:	ba000002 	blt	80028cd0 <pic_disable+0x28>
80028cc4:	e51b3008 	ldr	r3, [fp, #-8]
80028cc8:	e353001f 	cmp	r3, #31
80028ccc:	da000001 	ble	80028cd8 <pic_disable+0x30>
80028cd0:	e59f0038 	ldr	r0, [pc, #56]	@ 80028d10 <pic_disable+0x68>
80028cd4:	ebffe386 	bl	80021af4 <panic>
80028cd8:	e3a02001 	mov	r2, #1
80028cdc:	e51b3008 	ldr	r3, [fp, #-8]
80028ce0:	e1a02312 	lsl	r2, r2, r3
80028ce4:	e59f3028 	ldr	r3, [pc, #40]	@ 80028d14 <pic_disable+0x6c>
80028ce8:	e5933000 	ldr	r3, [r3]
80028cec:	e2833014 	add	r3, r3, #20
80028cf0:	e5832000 	str	r2, [r3]
80028cf4:	e59f201c 	ldr	r2, [pc, #28]	@ 80028d18 <pic_disable+0x70>
80028cf8:	e51b3008 	ldr	r3, [fp, #-8]
80028cfc:	e59f1018 	ldr	r1, [pc, #24]	@ 80028d1c <pic_disable+0x74>
80028d00:	e7821103 	str	r1, [r2, r3, lsl #2]
80028d04:	e1a00000 	nop			@ (mov r0, r0)
80028d08:	e24bd004 	sub	sp, fp, #4
80028d0c:	e8bd8800 	pop	{fp, pc}
80028d10:	80029d98 	.word	0x80029d98
80028d14:	800af588 	.word	0x800af588
80028d18:	800af58c 	.word	0x800af58c
80028d1c:	80028b7c 	.word	0x80028b7c

80028d20 <pic_dispatch>:
80028d20:	e92d4800 	push	{fp, lr}
80028d24:	e28db004 	add	fp, sp, #4
80028d28:	e24dd010 	sub	sp, sp, #16
80028d2c:	e50b0010 	str	r0, [fp, #-16]
80028d30:	e59f3080 	ldr	r3, [pc, #128]	@ 80028db8 <pic_dispatch+0x98>
80028d34:	e5933000 	ldr	r3, [r3]
80028d38:	e5933000 	ldr	r3, [r3]
80028d3c:	e50b300c 	str	r3, [fp, #-12]
80028d40:	e3a03000 	mov	r3, #0
80028d44:	e50b3008 	str	r3, [fp, #-8]
80028d48:	ea000010 	b	80028d90 <pic_dispatch+0x70>
80028d4c:	e3a02001 	mov	r2, #1
80028d50:	e51b3008 	ldr	r3, [fp, #-8]
80028d54:	e1a03312 	lsl	r3, r2, r3
80028d58:	e1a02003 	mov	r2, r3
80028d5c:	e51b300c 	ldr	r3, [fp, #-12]
80028d60:	e0033002 	and	r3, r3, r2
80028d64:	e3530000 	cmp	r3, #0
80028d68:	0a000005 	beq	80028d84 <pic_dispatch+0x64>
80028d6c:	e59f2048 	ldr	r2, [pc, #72]	@ 80028dbc <pic_dispatch+0x9c>
80028d70:	e51b3008 	ldr	r3, [fp, #-8]
80028d74:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80028d78:	e51b1008 	ldr	r1, [fp, #-8]
80028d7c:	e51b0010 	ldr	r0, [fp, #-16]
80028d80:	e12fff33 	blx	r3
80028d84:	e51b3008 	ldr	r3, [fp, #-8]
80028d88:	e2833001 	add	r3, r3, #1
80028d8c:	e50b3008 	str	r3, [fp, #-8]
80028d90:	e51b3008 	ldr	r3, [fp, #-8]
80028d94:	e353001f 	cmp	r3, #31
80028d98:	daffffeb 	ble	80028d4c <pic_dispatch+0x2c>
80028d9c:	e59f3014 	ldr	r3, [pc, #20]	@ 80028db8 <pic_dispatch+0x98>
80028da0:	e5933000 	ldr	r3, [r3]
80028da4:	e5933000 	ldr	r3, [r3]
80028da8:	e50b300c 	str	r3, [fp, #-12]
80028dac:	e1a00000 	nop			@ (mov r0, r0)
80028db0:	e24bd004 	sub	sp, fp, #4
80028db4:	e8bd8800 	pop	{fp, pc}
80028db8:	800af588 	.word	0x800af588
80028dbc:	800af58c 	.word	0x800af58c

80028dc0 <ack_timer>:
80028dc0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028dc4:	e28db000 	add	fp, sp, #0
80028dc8:	e24dd00c 	sub	sp, sp, #12
80028dcc:	e59f3020 	ldr	r3, [pc, #32]	@ 80028df4 <ack_timer+0x34>
80028dd0:	e50b3008 	str	r3, [fp, #-8]
80028dd4:	e51b3008 	ldr	r3, [fp, #-8]
80028dd8:	e283300c 	add	r3, r3, #12
80028ddc:	e3a02001 	mov	r2, #1
80028de0:	e5832000 	str	r2, [r3]
80028de4:	e1a00000 	nop			@ (mov r0, r0)
80028de8:	e28bd000 	add	sp, fp, #0
80028dec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028df0:	e12fff1e 	bx	lr
80028df4:	901e2000 	.word	0x901e2000

80028df8 <timer_init>:
80028df8:	e92d4800 	push	{fp, lr}
80028dfc:	e28db004 	add	fp, sp, #4
80028e00:	e24dd010 	sub	sp, sp, #16
80028e04:	e50b0010 	str	r0, [fp, #-16]
80028e08:	e59f3050 	ldr	r3, [pc, #80]	@ 80028e60 <timer_init+0x68>
80028e0c:	e50b3008 	str	r3, [fp, #-8]
80028e10:	e59f104c 	ldr	r1, [pc, #76]	@ 80028e64 <timer_init+0x6c>
80028e14:	e59f004c 	ldr	r0, [pc, #76]	@ 80028e68 <timer_init+0x70>
80028e18:	ebfff365 	bl	80025bb4 <initlock>
80028e1c:	e51b1010 	ldr	r1, [fp, #-16]
80028e20:	e59f0044 	ldr	r0, [pc, #68]	@ 80028e6c <timer_init+0x74>
80028e24:	eb000109 	bl	80029250 <__divsi3>
80028e28:	e1a03000 	mov	r3, r0
80028e2c:	e1a02003 	mov	r2, r3
80028e30:	e51b3008 	ldr	r3, [fp, #-8]
80028e34:	e5832000 	str	r2, [r3]
80028e38:	e51b3008 	ldr	r3, [fp, #-8]
80028e3c:	e2833008 	add	r3, r3, #8
80028e40:	e3a020e2 	mov	r2, #226	@ 0xe2
80028e44:	e5832000 	str	r2, [r3]
80028e48:	e59f1020 	ldr	r1, [pc, #32]	@ 80028e70 <timer_init+0x78>
80028e4c:	e3a00004 	mov	r0, #4
80028e50:	ebffff76 	bl	80028c30 <pic_enable>
80028e54:	e1a00000 	nop			@ (mov r0, r0)
80028e58:	e24bd004 	sub	sp, fp, #4
80028e5c:	e8bd8800 	pop	{fp, pc}
80028e60:	901e2000 	.word	0x901e2000
80028e64:	80029db4 	.word	0x80029db4
80028e68:	800af60c 	.word	0x800af60c
80028e6c:	000f4240 	.word	0x000f4240
80028e70:	80028e74 	.word	0x80028e74

80028e74 <isr_timer>:
80028e74:	e92d4800 	push	{fp, lr}
80028e78:	e28db004 	add	fp, sp, #4
80028e7c:	e24dd008 	sub	sp, sp, #8
80028e80:	e50b0008 	str	r0, [fp, #-8]
80028e84:	e50b100c 	str	r1, [fp, #-12]
80028e88:	e59f0034 	ldr	r0, [pc, #52]	@ 80028ec4 <isr_timer+0x50>
80028e8c:	ebfff35a 	bl	80025bfc <acquire>
80028e90:	e59f3030 	ldr	r3, [pc, #48]	@ 80028ec8 <isr_timer+0x54>
80028e94:	e5933000 	ldr	r3, [r3]
80028e98:	e2833001 	add	r3, r3, #1
80028e9c:	e59f2024 	ldr	r2, [pc, #36]	@ 80028ec8 <isr_timer+0x54>
80028ea0:	e5823000 	str	r3, [r2]
80028ea4:	e59f001c 	ldr	r0, [pc, #28]	@ 80028ec8 <isr_timer+0x54>
80028ea8:	ebfff2ce 	bl	800259e8 <wakeup>
80028eac:	e59f0010 	ldr	r0, [pc, #16]	@ 80028ec4 <isr_timer+0x50>
80028eb0:	ebfff35c 	bl	80025c28 <release>
80028eb4:	ebffffc1 	bl	80028dc0 <ack_timer>
80028eb8:	e1a00000 	nop			@ (mov r0, r0)
80028ebc:	e24bd004 	sub	sp, fp, #4
80028ec0:	e8bd8800 	pop	{fp, pc}
80028ec4:	800af60c 	.word	0x800af60c
80028ec8:	800af640 	.word	0x800af640

80028ecc <micro_delay>:
80028ecc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028ed0:	e28db000 	add	fp, sp, #0
80028ed4:	e24dd014 	sub	sp, sp, #20
80028ed8:	e50b0010 	str	r0, [fp, #-16]
80028edc:	e59f3054 	ldr	r3, [pc, #84]	@ 80028f38 <micro_delay+0x6c>
80028ee0:	e50b3008 	str	r3, [fp, #-8]
80028ee4:	e51b3008 	ldr	r3, [fp, #-8]
80028ee8:	e2833008 	add	r3, r3, #8
80028eec:	e3a02082 	mov	r2, #130	@ 0x82
80028ef0:	e5832000 	str	r2, [r3]
80028ef4:	e51b2010 	ldr	r2, [fp, #-16]
80028ef8:	e51b3008 	ldr	r3, [fp, #-8]
80028efc:	e5832000 	str	r2, [r3]
80028f00:	e1a00000 	nop			@ (mov r0, r0)
80028f04:	e51b3008 	ldr	r3, [fp, #-8]
80028f08:	e2833004 	add	r3, r3, #4
80028f0c:	e5933000 	ldr	r3, [r3]
80028f10:	e3530000 	cmp	r3, #0
80028f14:	cafffffa 	bgt	80028f04 <micro_delay+0x38>
80028f18:	e51b3008 	ldr	r3, [fp, #-8]
80028f1c:	e2833008 	add	r3, r3, #8
80028f20:	e3a02000 	mov	r2, #0
80028f24:	e5832000 	str	r2, [r3]
80028f28:	e1a00000 	nop			@ (mov r0, r0)
80028f2c:	e28bd000 	add	sp, fp, #0
80028f30:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028f34:	e12fff1e 	bx	lr
80028f38:	901e2020 	.word	0x901e2020

80028f3c <uart_init>:
80028f3c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028f40:	e28db000 	add	fp, sp, #0
80028f44:	e24dd014 	sub	sp, sp, #20
80028f48:	e50b0010 	str	r0, [fp, #-16]
80028f4c:	e59f20a4 	ldr	r2, [pc, #164]	@ 80028ff8 <uart_init+0xbc>
80028f50:	e51b3010 	ldr	r3, [fp, #-16]
80028f54:	e5823000 	str	r3, [r2]
80028f58:	e59f3098 	ldr	r3, [pc, #152]	@ 80028ff8 <uart_init+0xbc>
80028f5c:	e5933000 	ldr	r3, [r3]
80028f60:	e2833024 	add	r3, r3, #36	@ 0x24
80028f64:	e3a0204e 	mov	r2, #78	@ 0x4e
80028f68:	e5832000 	str	r2, [r3]
80028f6c:	e3a03c96 	mov	r3, #38400	@ 0x9600
80028f70:	e50b3008 	str	r3, [fp, #-8]
80028f74:	e51b3008 	ldr	r3, [fp, #-8]
80028f78:	e2833e96 	add	r3, r3, #2400	@ 0x960
80028f7c:	e1a02103 	lsl	r2, r3, #2
80028f80:	e59f3070 	ldr	r3, [pc, #112]	@ 80028ff8 <uart_init+0xbc>
80028f84:	e5933000 	ldr	r3, [r3]
80028f88:	e2833028 	add	r3, r3, #40	@ 0x28
80028f8c:	e59f1068 	ldr	r1, [pc, #104]	@ 80028ffc <uart_init+0xc0>
80028f90:	e0821291 	umull	r1, r2, r1, r2
80028f94:	e1a025a2 	lsr	r2, r2, #11
80028f98:	e5832000 	str	r2, [r3]
80028f9c:	e59f3054 	ldr	r3, [pc, #84]	@ 80028ff8 <uart_init+0xbc>
80028fa0:	e5933000 	ldr	r3, [r3]
80028fa4:	e2833030 	add	r3, r3, #48	@ 0x30
80028fa8:	e5933000 	ldr	r3, [r3]
80028fac:	e59f2044 	ldr	r2, [pc, #68]	@ 80028ff8 <uart_init+0xbc>
80028fb0:	e5922000 	ldr	r2, [r2]
80028fb4:	e2822030 	add	r2, r2, #48	@ 0x30
80028fb8:	e3833c03 	orr	r3, r3, #768	@ 0x300
80028fbc:	e3833001 	orr	r3, r3, #1
80028fc0:	e5823000 	str	r3, [r2]
80028fc4:	e59f302c 	ldr	r3, [pc, #44]	@ 80028ff8 <uart_init+0xbc>
80028fc8:	e5933000 	ldr	r3, [r3]
80028fcc:	e283302c 	add	r3, r3, #44	@ 0x2c
80028fd0:	e5932000 	ldr	r2, [r3]
80028fd4:	e59f301c 	ldr	r3, [pc, #28]	@ 80028ff8 <uart_init+0xbc>
80028fd8:	e5933000 	ldr	r3, [r3]
80028fdc:	e283302c 	add	r3, r3, #44	@ 0x2c
80028fe0:	e3822010 	orr	r2, r2, #16
80028fe4:	e5832000 	str	r2, [r3]
80028fe8:	e1a00000 	nop			@ (mov r0, r0)
80028fec:	e28bd000 	add	sp, fp, #0
80028ff0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028ff4:	e12fff1e 	bx	lr
80028ff8:	800af644 	.word	0x800af644
80028ffc:	1b4e81b5 	.word	0x1b4e81b5

80029000 <uart_enable_rx>:
80029000:	e92d4800 	push	{fp, lr}
80029004:	e28db004 	add	fp, sp, #4
80029008:	e59f3020 	ldr	r3, [pc, #32]	@ 80029030 <uart_enable_rx+0x30>
8002900c:	e5933000 	ldr	r3, [r3]
80029010:	e2833038 	add	r3, r3, #56	@ 0x38
80029014:	e3a02010 	mov	r2, #16
80029018:	e5832000 	str	r2, [r3]
8002901c:	e59f1010 	ldr	r1, [pc, #16]	@ 80029034 <uart_enable_rx+0x34>
80029020:	e3a0000c 	mov	r0, #12
80029024:	ebffff01 	bl	80028c30 <pic_enable>
80029028:	e1a00000 	nop			@ (mov r0, r0)
8002902c:	e8bd8800 	pop	{fp, pc}
80029030:	800af644 	.word	0x800af644
80029034:	800290dc 	.word	0x800290dc

80029038 <uartputc>:
80029038:	e92d4800 	push	{fp, lr}
8002903c:	e28db004 	add	fp, sp, #4
80029040:	e24dd008 	sub	sp, sp, #8
80029044:	e50b0008 	str	r0, [fp, #-8]
80029048:	ea000001 	b	80029054 <uartputc+0x1c>
8002904c:	e3a0000a 	mov	r0, #10
80029050:	ebffff9d 	bl	80028ecc <micro_delay>
80029054:	e59f3030 	ldr	r3, [pc, #48]	@ 8002908c <uartputc+0x54>
80029058:	e5933000 	ldr	r3, [r3]
8002905c:	e2833018 	add	r3, r3, #24
80029060:	e5933000 	ldr	r3, [r3]
80029064:	e2033020 	and	r3, r3, #32
80029068:	e3530000 	cmp	r3, #0
8002906c:	1afffff6 	bne	8002904c <uartputc+0x14>
80029070:	e59f3014 	ldr	r3, [pc, #20]	@ 8002908c <uartputc+0x54>
80029074:	e5933000 	ldr	r3, [r3]
80029078:	e51b2008 	ldr	r2, [fp, #-8]
8002907c:	e5832000 	str	r2, [r3]
80029080:	e1a00000 	nop			@ (mov r0, r0)
80029084:	e24bd004 	sub	sp, fp, #4
80029088:	e8bd8800 	pop	{fp, pc}
8002908c:	800af644 	.word	0x800af644

80029090 <uartgetc>:
80029090:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029094:	e28db000 	add	fp, sp, #0
80029098:	e59f3038 	ldr	r3, [pc, #56]	@ 800290d8 <uartgetc+0x48>
8002909c:	e5933000 	ldr	r3, [r3]
800290a0:	e2833018 	add	r3, r3, #24
800290a4:	e5933000 	ldr	r3, [r3]
800290a8:	e2033010 	and	r3, r3, #16
800290ac:	e3530000 	cmp	r3, #0
800290b0:	0a000001 	beq	800290bc <uartgetc+0x2c>
800290b4:	e3e03000 	mvn	r3, #0
800290b8:	ea000002 	b	800290c8 <uartgetc+0x38>
800290bc:	e59f3014 	ldr	r3, [pc, #20]	@ 800290d8 <uartgetc+0x48>
800290c0:	e5933000 	ldr	r3, [r3]
800290c4:	e5933000 	ldr	r3, [r3]
800290c8:	e1a00003 	mov	r0, r3
800290cc:	e28bd000 	add	sp, fp, #0
800290d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800290d4:	e12fff1e 	bx	lr
800290d8:	800af644 	.word	0x800af644

800290dc <isr_uart>:
800290dc:	e92d4800 	push	{fp, lr}
800290e0:	e28db004 	add	fp, sp, #4
800290e4:	e24dd008 	sub	sp, sp, #8
800290e8:	e50b0008 	str	r0, [fp, #-8]
800290ec:	e50b100c 	str	r1, [fp, #-12]
800290f0:	e59f303c 	ldr	r3, [pc, #60]	@ 80029134 <isr_uart+0x58>
800290f4:	e5933000 	ldr	r3, [r3]
800290f8:	e2833040 	add	r3, r3, #64	@ 0x40
800290fc:	e5933000 	ldr	r3, [r3]
80029100:	e2033010 	and	r3, r3, #16
80029104:	e3530000 	cmp	r3, #0
80029108:	0a000001 	beq	80029114 <isr_uart+0x38>
8002910c:	e59f0024 	ldr	r0, [pc, #36]	@ 80029138 <isr_uart+0x5c>
80029110:	ebffe2ab 	bl	80021bc4 <consoleintr>
80029114:	e59f3018 	ldr	r3, [pc, #24]	@ 80029134 <isr_uart+0x58>
80029118:	e5933000 	ldr	r3, [r3]
8002911c:	e2833044 	add	r3, r3, #68	@ 0x44
80029120:	e3a02030 	mov	r2, #48	@ 0x30
80029124:	e5832000 	str	r2, [r3]
80029128:	e1a00000 	nop			@ (mov r0, r0)
8002912c:	e24bd004 	sub	sp, fp, #4
80029130:	e8bd8800 	pop	{fp, pc}
80029134:	800af644 	.word	0x800af644
80029138:	80029090 	.word	0x80029090

8002913c <__udivsi3>:
8002913c:	e2512001 	subs	r2, r1, #1
80029140:	012fff1e 	bxeq	lr
80029144:	3a000036 	bcc	80029224 <__udivsi3+0xe8>
80029148:	e1500001 	cmp	r0, r1
8002914c:	9a000022 	bls	800291dc <__udivsi3+0xa0>
80029150:	e1110002 	tst	r1, r2
80029154:	0a000023 	beq	800291e8 <__udivsi3+0xac>
80029158:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002915c:	01a01181 	lsleq	r1, r1, #3
80029160:	03a03008 	moveq	r3, #8
80029164:	13a03001 	movne	r3, #1
80029168:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002916c:	31510000 	cmpcc	r1, r0
80029170:	31a01201 	lslcc	r1, r1, #4
80029174:	31a03203 	lslcc	r3, r3, #4
80029178:	3afffffa 	bcc	80029168 <__udivsi3+0x2c>
8002917c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029180:	31510000 	cmpcc	r1, r0
80029184:	31a01081 	lslcc	r1, r1, #1
80029188:	31a03083 	lslcc	r3, r3, #1
8002918c:	3afffffa 	bcc	8002917c <__udivsi3+0x40>
80029190:	e3a02000 	mov	r2, #0
80029194:	e1500001 	cmp	r0, r1
80029198:	20400001 	subcs	r0, r0, r1
8002919c:	21822003 	orrcs	r2, r2, r3
800291a0:	e15000a1 	cmp	r0, r1, lsr #1
800291a4:	204000a1 	subcs	r0, r0, r1, lsr #1
800291a8:	218220a3 	orrcs	r2, r2, r3, lsr #1
800291ac:	e1500121 	cmp	r0, r1, lsr #2
800291b0:	20400121 	subcs	r0, r0, r1, lsr #2
800291b4:	21822123 	orrcs	r2, r2, r3, lsr #2
800291b8:	e15001a1 	cmp	r0, r1, lsr #3
800291bc:	204001a1 	subcs	r0, r0, r1, lsr #3
800291c0:	218221a3 	orrcs	r2, r2, r3, lsr #3
800291c4:	e3500000 	cmp	r0, #0
800291c8:	11b03223 	lsrsne	r3, r3, #4
800291cc:	11a01221 	lsrne	r1, r1, #4
800291d0:	1affffef 	bne	80029194 <__udivsi3+0x58>
800291d4:	e1a00002 	mov	r0, r2
800291d8:	e12fff1e 	bx	lr
800291dc:	03a00001 	moveq	r0, #1
800291e0:	13a00000 	movne	r0, #0
800291e4:	e12fff1e 	bx	lr
800291e8:	e3510801 	cmp	r1, #65536	@ 0x10000
800291ec:	21a01821 	lsrcs	r1, r1, #16
800291f0:	23a02010 	movcs	r2, #16
800291f4:	33a02000 	movcc	r2, #0
800291f8:	e3510c01 	cmp	r1, #256	@ 0x100
800291fc:	21a01421 	lsrcs	r1, r1, #8
80029200:	22822008 	addcs	r2, r2, #8
80029204:	e3510010 	cmp	r1, #16
80029208:	21a01221 	lsrcs	r1, r1, #4
8002920c:	22822004 	addcs	r2, r2, #4
80029210:	e3510004 	cmp	r1, #4
80029214:	82822003 	addhi	r2, r2, #3
80029218:	908220a1 	addls	r2, r2, r1, lsr #1
8002921c:	e1a00230 	lsr	r0, r0, r2
80029220:	e12fff1e 	bx	lr
80029224:	e3500000 	cmp	r0, #0
80029228:	13e00000 	mvnne	r0, #0
8002922c:	ea000059 	b	80029398 <__aeabi_idiv0>

80029230 <__aeabi_uidivmod>:
80029230:	e3510000 	cmp	r1, #0
80029234:	0afffffa 	beq	80029224 <__udivsi3+0xe8>
80029238:	e92d4003 	push	{r0, r1, lr}
8002923c:	ebffffbe 	bl	8002913c <__udivsi3>
80029240:	e8bd4006 	pop	{r1, r2, lr}
80029244:	e0030092 	mul	r3, r2, r0
80029248:	e0411003 	sub	r1, r1, r3
8002924c:	e12fff1e 	bx	lr

80029250 <__divsi3>:
80029250:	e3510000 	cmp	r1, #0
80029254:	0a000043 	beq	80029368 <.divsi3_skip_div0_test+0x110>

80029258 <.divsi3_skip_div0_test>:
80029258:	e020c001 	eor	ip, r0, r1
8002925c:	42611000 	rsbmi	r1, r1, #0
80029260:	e2512001 	subs	r2, r1, #1
80029264:	0a000027 	beq	80029308 <.divsi3_skip_div0_test+0xb0>
80029268:	e1b03000 	movs	r3, r0
8002926c:	42603000 	rsbmi	r3, r0, #0
80029270:	e1530001 	cmp	r3, r1
80029274:	9a000026 	bls	80029314 <.divsi3_skip_div0_test+0xbc>
80029278:	e1110002 	tst	r1, r2
8002927c:	0a000028 	beq	80029324 <.divsi3_skip_div0_test+0xcc>
80029280:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80029284:	01a01181 	lsleq	r1, r1, #3
80029288:	03a02008 	moveq	r2, #8
8002928c:	13a02001 	movne	r2, #1
80029290:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80029294:	31510003 	cmpcc	r1, r3
80029298:	31a01201 	lslcc	r1, r1, #4
8002929c:	31a02202 	lslcc	r2, r2, #4
800292a0:	3afffffa 	bcc	80029290 <.divsi3_skip_div0_test+0x38>
800292a4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
800292a8:	31510003 	cmpcc	r1, r3
800292ac:	31a01081 	lslcc	r1, r1, #1
800292b0:	31a02082 	lslcc	r2, r2, #1
800292b4:	3afffffa 	bcc	800292a4 <.divsi3_skip_div0_test+0x4c>
800292b8:	e3a00000 	mov	r0, #0
800292bc:	e1530001 	cmp	r3, r1
800292c0:	20433001 	subcs	r3, r3, r1
800292c4:	21800002 	orrcs	r0, r0, r2
800292c8:	e15300a1 	cmp	r3, r1, lsr #1
800292cc:	204330a1 	subcs	r3, r3, r1, lsr #1
800292d0:	218000a2 	orrcs	r0, r0, r2, lsr #1
800292d4:	e1530121 	cmp	r3, r1, lsr #2
800292d8:	20433121 	subcs	r3, r3, r1, lsr #2
800292dc:	21800122 	orrcs	r0, r0, r2, lsr #2
800292e0:	e15301a1 	cmp	r3, r1, lsr #3
800292e4:	204331a1 	subcs	r3, r3, r1, lsr #3
800292e8:	218001a2 	orrcs	r0, r0, r2, lsr #3
800292ec:	e3530000 	cmp	r3, #0
800292f0:	11b02222 	lsrsne	r2, r2, #4
800292f4:	11a01221 	lsrne	r1, r1, #4
800292f8:	1affffef 	bne	800292bc <.divsi3_skip_div0_test+0x64>
800292fc:	e35c0000 	cmp	ip, #0
80029300:	42600000 	rsbmi	r0, r0, #0
80029304:	e12fff1e 	bx	lr
80029308:	e13c0000 	teq	ip, r0
8002930c:	42600000 	rsbmi	r0, r0, #0
80029310:	e12fff1e 	bx	lr
80029314:	33a00000 	movcc	r0, #0
80029318:	01a00fcc 	asreq	r0, ip, #31
8002931c:	03800001 	orreq	r0, r0, #1
80029320:	e12fff1e 	bx	lr
80029324:	e3510801 	cmp	r1, #65536	@ 0x10000
80029328:	21a01821 	lsrcs	r1, r1, #16
8002932c:	23a02010 	movcs	r2, #16
80029330:	33a02000 	movcc	r2, #0
80029334:	e3510c01 	cmp	r1, #256	@ 0x100
80029338:	21a01421 	lsrcs	r1, r1, #8
8002933c:	22822008 	addcs	r2, r2, #8
80029340:	e3510010 	cmp	r1, #16
80029344:	21a01221 	lsrcs	r1, r1, #4
80029348:	22822004 	addcs	r2, r2, #4
8002934c:	e3510004 	cmp	r1, #4
80029350:	82822003 	addhi	r2, r2, #3
80029354:	908220a1 	addls	r2, r2, r1, lsr #1
80029358:	e35c0000 	cmp	ip, #0
8002935c:	e1a00233 	lsr	r0, r3, r2
80029360:	42600000 	rsbmi	r0, r0, #0
80029364:	e12fff1e 	bx	lr
80029368:	e3500000 	cmp	r0, #0
8002936c:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
80029370:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
80029374:	ea000007 	b	80029398 <__aeabi_idiv0>

80029378 <__aeabi_idivmod>:
80029378:	e3510000 	cmp	r1, #0
8002937c:	0afffff9 	beq	80029368 <.divsi3_skip_div0_test+0x110>
80029380:	e92d4003 	push	{r0, r1, lr}
80029384:	ebffffb3 	bl	80029258 <.divsi3_skip_div0_test>
80029388:	e8bd4006 	pop	{r1, r2, lr}
8002938c:	e0030092 	mul	r3, r2, r0
80029390:	e0411003 	sub	r1, r1, r3
80029394:	e12fff1e 	bx	lr

80029398 <__aeabi_idiv0>:
80029398:	e12fff1e 	bx	lr
