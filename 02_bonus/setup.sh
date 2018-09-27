#!/usr/bin/expect -f
spawn ./MCMA2_Linux_x86_64 -setpass password -
expect "[y/n]"
send -- "y"
expect eof
