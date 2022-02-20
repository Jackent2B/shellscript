#!/bin/bash 
# date >  /home/jackent2b/Documents/shellscript/email.txt
#uptime > /home/jackent2b/Documents/shellscript/email.txt
#mail -s 'send mail test' jayant.khandelwal7@gmail.com < /home/jackent2b/Documents/shellscript/email.txt
MYLOCATION=/home/jackent2b/Documents/shellscript/email.txt 
touch /home/jackent2b/Documents/shellscript/email.txt
echo "1.): " >> $MYLOCATION
echo "DATE:" >> $MYLOCATION
date >> $MYLOCATION
echo "2.): " >> $MYLOCATION
echo "UPTIME:" >> $MYLOCATION
uptime >> $MYLOCATION
echo "3.): " >> $MYLOCATION
echo "CURRENTLY CONNECTED:" >> $MYLOCATION
w >> $MYLOCATION
echo "4.):" >> $MYLOCATION
echo "LAST LOGINS:" >> $MYLOCATION
last -a |head -3 >> $MYLOCATION
echo "5.):" >> $MYLOCATION
echo "DISK AND MEMORY USAGE:" >> $MYLOCATION
free -h >> $MYLOCATION
echo "6.):" >> $MYLOCATION
echo "vmstat: DETAILS ABOUT SWAP RAM" >> $MYLOCATION
vmstat >> $MYLOCATION
echo "7.):" >> $MYLOCATION
echo "lsmem: DETAILS ABOUT PHYSICAL RAM" >> $MYLOCATION
lsmem >> $MYLOCATION
echo "8.):" >> $MYLOCATION
echo "CURRENT CONNECTIONS:" >> $MYLOCATION
ss -s >> $MYLOCATION

mail -s 'PFA System Configuration' jayant.khandelwal7@gmail.com < $MYLOCATION
rm $MYLOCATION