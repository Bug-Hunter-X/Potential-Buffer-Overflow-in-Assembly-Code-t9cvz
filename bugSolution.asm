```assembly
mov eax, [ebx+0x10]
mov ecx, 0x100 ; maximum value allowed for eax
cmp eax, ecx
jge overflow_handler ; handle overflow if eax >= 0x100
add eax, 0x10
mov [ebx+0x10], eax
jmp end
overflow_handler:
; Handle the overflow appropriately
; e.g., set eax to 0x100, log an error, or exit
mov eax, 0x100
end:
```