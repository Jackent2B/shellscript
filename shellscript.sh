#!/bin/bash 
# date >  /home/jackent2b/Documents/shellscript/email.txt
uptime > /home/jackent2b/Documents/shellscript/email.txt
mail -s 'send mail test' jayant.khandelwal7@gmail.com < /home/jackent2b/Documents/shellscript/email.txt
