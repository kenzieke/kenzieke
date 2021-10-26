li s0, 0x11000000 #read 23-bit value from SWITCHES
lw s1, 0(s0) #load 32-bit address from s0 and stores in s1
srli t1, s1, 16 #shift 32-bit value 16-bits to the right
slli t2, s1, 16 #shift 32-bit value 16-bits to the left
srli t2, t2, 16 #shift 32-bit value 16-bits back to the right
li t3, 0 #initialize test value to 0
LOOP: beq t3, t2, END #break if the value stored in t4 is equal to the original value in t2
      addi t3, t3, 1 #add one to test value each time loop runs
      add s2, s2, t1 #add t1 to itself together and store in s2
j LOOP
END: sw s2, 0x40(s1)