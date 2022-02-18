# shellscript
Scheduling sending emails using shellscript and cronjob 

Step1.) Install smtp using `sudo apt install ssmtp`

Step 2.) Switch to root user and add following thing in /etc/ssmtp/ssmtp.conf:

UseSTARTTLS=YES
FromLineOverride=YES
root=admin@example.com
mailhub=smtp.gmail.com:587
AuthUser=username@gmail.com
AuthPass=password

Step 3.) create a shellscript file (.sh extension) eg. shellscript.sh and write this command:
 `mail -s 'subject' reciever@gmail.com < Body of email`

eg.) mail -s 'send mail test' reciever@gmail.com < /home/username/Documents/body.txt

These three steps are enough to send email.

Now let us see how to schedule them using cronjob

Step 4.) command: `crontab -l` to check all the cronjobs alredy running

Step 5.) To add a cronjob, command: `crontab -e`

minute hour day month weekday /bin/sh /full/path/to/script.sh

eg. * * * * * /bin/sh /full/path/to/script.sh (to run CRONJOB at every minute)

(Reference: https://linuxhint.com/setup_cron_jobs_linux/)


