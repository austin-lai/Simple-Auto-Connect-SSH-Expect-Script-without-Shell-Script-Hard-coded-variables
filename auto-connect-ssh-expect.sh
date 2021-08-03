#!/usr/bin/expect -f

# Set variables
set SERVER "SSH Server IP Here"
set SSH_PORT "SSH Server PORT Here"
set USERNAME "USERNAME Here"
set PASSWORD "PASSWORD Here"


# Announce which device we are working on and at what time
send_user "\n"
send_user ">>>>>  Working on $SERVER @ [exec date] <<<<<\n"
send_user "\n"


# Don't check keys
spawn ssh -o StrictHostKeyChecking=no -p $SSH_PORT $USERNAME\@$SERVER


expect "yes/no" { 
	send "yes\r"
	expect "*?assword" { send "$PASSWORD\r" }
	} "*?assword" { send "$PASSWORD\r" }

interact

 

