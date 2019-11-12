        global  sum
        section .text

sum:
	movsd	xmm4, xmm0	; copy a1 -> xmm4 (xmm4 = xmm0 = a1)       
	sub	rdi, 1		; rdi -> n - 1	

adding_members:
	addsd	xmm0, xmm4	; a1 = a1 + xmm4
	mov rax, rdi		; rax = rdi = n - 1

adding_step:
	addsd	xmm0, xmm1	; xmm0 += d
	dec rax			; rax = rax - 1
	jnz adding_step
	
	dec rdi			; rdi = rdi - 1 (n -1, n-2, n-3, ...) 
	jnz adding_members
	
	ret  	

