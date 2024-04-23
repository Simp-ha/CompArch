.text
  .align 4
  .global fact
fact:   li a1, 10       #a = 10
        li a2, 3        #b = 3
        li a3, 43       #c = 34
        li a4, 1        #d = 1
        add a1, a2, a3  #a = 46
        add a2, a1, a3  #b = 13
        add a1, a1, a4  #a = 47
loop:   bge a2, a1, end #if(b<a) do, if(b>=a) go to end
        addi a2, a2, 10 #b = b+10
        j loop          #b = 53
end:    mul a4, a4, a3  #d = 34
        jr ra