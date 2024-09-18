format binary
    use16
    org   0x7c00
start:
    mov   ax,   cs
    mov   ds,   ax
    mov   si,   hello
    cld
print: 
    lodsb
    or    al,   al
    jz    done
    mov   bx,   0x07
    mov   ah,   0x0e
    int   0x10
    jmp   print
done:
    cli
    hlt
    times 32768 - 16 - (himBHs2307) db 0xf4
hello:
    db    Hello World!,13,10,0,0
