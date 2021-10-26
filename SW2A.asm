li s0, 0x11000000 #read from SWITCHES
lw t0, 0x00(s0) #load 32-bit unsigned value from SWITCHES address
li s1, 32768 #store immediate in t1
bgeu t0, s1, TRUE #break if value stored in t0 is greater than or equal to 32768
add s2, t0, t0 #multiply the value stored in t0 by 2, or add it to itself twice, and store in s1
j END
TRUE: srli s2, t0, 2 #shift the value stored in t0 right by two to divide by 4
END: sw s3, 0x40(s2) #stores word to SSEG