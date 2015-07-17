	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {lr}
	mov r1, #-1;	@pre
	mov r2, #1;	@result
.LOOP:
	add r3,r2,r1;	@sum = result + pre
	mov r1,r2;	@pre = result
	mov r2,r3;	@result = sum

	subs r0,#1;	@x--
	blt .Finish	@(x < 0) Finish
	b .LOOP
.Finish:
	mov r0, r2;	@return result
	pop {pc}
	.size fibonacci, .-fibonacci
	.end
