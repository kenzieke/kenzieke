li s0, 0x11000000 #store SWITCHES address in saved register 0
li s1, 0x11000020 #store LEDs address in saved register 1

lhu t0, 0x00(s0) #read first 16-bit unsigned value and store in t0
lhu t1, 0x00(s0) #read second 16-bit unsigned value and store in t1
lhu t2, 0x00(s0) #read third 16-bit unsigned value and store in t2

add s2, t0, t1 #add t0 and t1 and store in s2
add s3, s2, t2 #add s2 and t2 and store in s3

sh s1, 0x00(s3) #output s4 to LEDs