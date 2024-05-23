org 100h
jmp a

a:
    add al, 1
    add bx, 11b
    mov cx, 101b
    mul cx
    add bx, 10b
    xor bx, 1101b
    sub bx, 111b
    xor cx, cx
    mov byte [1234], 127d
    jmp b

b:
    mov word [bx], 0d      
    jmp start

start:
    jmp a

mov ah, 0
int 16h
ret