
;virus decryption

lea si,Start
mov sp,0682 ;size of encrypted virus

Decrypt:
xor [si],si ;encryption
xor [si],sp ;decryption
inc [si]
dec sp
jnz Decrypt

Start: