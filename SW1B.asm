li t0, 0x11000000 #read input from SWITCHES
li t1, 0x11000020 #store LEDs address in t1
lh t2, 0x00(t0) #load half word signed value in 2's complement
not t3, t2 #take 1's complement of value and store in t3
addi s0, t3, 1 #add 1 to 1's complement value and store in saved register 0
sh s0, 0x00(t1) #output t1 to s0