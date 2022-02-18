# shellscript
scheduling sending emails using shellscript and cronjob 

step1.) Install smtp using `sudo apt install ssmtp`


step 2.) Switch to root user and add following thing in /etc/ssmtp/ssmtp.conf:

UseSTARTTLS=YES
FromLineOverride=YES
root=admin@example.com
mailhub=smtp.gmail.com:587
AuthUser=username@gmail.com
AuthPass=password

step 3.) create a shellscript file (.sh extension) eg. shellscript.sh and write this command:
 `mail -s 'subject' reciever@gmail.com < Body of email`

eg.) mail -s 'send mail test' reciever@gmail.com < /home/username/Documents/body.txt

These three steps are enough to send email.

Now let us see how to schedule them using cronjob

command: `cronjob -l` to check all the cronjobs alredy running




 
