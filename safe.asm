
org 100h
jmp a

a:  
    add al,1
    add bx, 11b
    mov cx, 101b
    mul cx  
    add bx, 10b    
    xor bx, 1101b  
    sub bx, 111b
    xor cx,cx
    mov dl,[1234]
    inc dl
    jmp b
    
b:
    mov cx,[bx]
    jmp start
start:

    JNO a
    cmp cx,0
    jne a
    

mov ah, 0
int 16h    
ret




