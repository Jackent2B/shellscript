# shellscript
Scheduling sending emails using shellscript and cronjob 

**Prerequisite:** Give "Allow less secure apps" permission from the gmail account you want to send mails. (visit: account.google.com , and then give the permission)   

**Step1.)** Install smtp using `sudo apt install ssmtp`

**Step 2.)** Switch to root user and add following thing in /etc/ssmtp/ssmtp.conf:

UseSTARTTLS=YES </br>
FromLineOverride=YES </br>
root=admin@example.com </br>
mailhub=smtp.gmail.com:587 </br>
AuthUser=username@gmail.com </br>
AuthPass=password

**Step 3.)** create a shellscript file (.sh extension) eg. **shellscript.sh** and write this command: </br>
 `mail -s 'subject' reciever@gmail.com < Body of email`

**eg.)** mail -s 'send mail test' reciever@gmail.com < /home/username/Documents/body.txt

These three steps are enough to send email.

Now let us see how to schedule them using cronjob

**Step 4.)** command: `crontab -l` to check all the cronjobs alredy running

**Step 5.)** To add a cronjob, command: `crontab -e`

**Schedule a new cronjob using this format:**  minute hour day month weekday /bin/sh /full/path/to/script.sh

**eg.** * * * * * /bin/sh /full/path/to/shellscript.sh (to run CRONJOB at every minute)

(Reference: https://linuxhint.com/setup_cron_jobs_linux/  to learn more about cronjob)


