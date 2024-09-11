section .text
global menu

menu:
    ; Los argumentos se pasan en edi (num1), esi (num2), edx (opcion)
    mov eax, edi        ; num1 en eax
    mov ebx, esi        ; num2 en ebx

    ; Comparar opcion (edx) con los valores posibles
    cmp edx, 1
    je suma
    cmp edx, 2
    je resta
    cmp edx, 3
    je multiplicacion
    cmp edx, 4
    je division
    ; Si no es ninguna opción válida, retornar 0
    xor eax, eax
    ret

suma:
    add eax, ebx
    ret

resta:
    sub eax, ebx
    ret

multiplicacion:
    imul eax, ebx
    ret

division:
    ; Comprobar división por cero
    test ebx, ebx
    jz division_por_cero
    xor edx, edx        ; Limpiar edx para la división
    idiv ebx
    ret

division_por_cero:
    ; Retornar un valor que indique error, por ejemplo, el mínimo valor de int
    mov eax, 0x80000000
    ret