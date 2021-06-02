.386 
.model flat,c 
.code

; find min
SignedMin proc
		push ebp
		mov ebp, esp
		mov eax, [ebp+8]		; eax = 'a'
		mov ecx, [ebp+12]		; ecx = 'b'
		cmp eax, ecx
		jle @F					; jump to nearest @@ symbol if less than or =
		mov eax, ecx			; eax = smallest of a or b

	@@:	mov ecx, [ebp+16]
		cmp eax, ecx
		jle @F
		mov eax, ecx			; eax = smallest of a, b or c

	@@: pop ebp
		ret

SignedMin endp

; find max
SignedMax proc
		push ebp
		mov ebp, esp
		mov eax, [ebp+8]		; as above
		mov ecx, [ebp+12]		; but maximum
		cmp eax, ecx
		jge @F
		mov eax, ecx

	@@:	mov ecx, [ebp+16]
		cmp eax, ecx
		jge @F
		mov eax, ecx

	@@:	pop ebp 
		ret
SignedMax endp


end
