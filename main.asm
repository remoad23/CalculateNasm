section text

 global  start
        extern  printf

  start:
        push    message
        call    printf
        add     esp, 4
        ret
   message:
        db      'Hello', 10, 0