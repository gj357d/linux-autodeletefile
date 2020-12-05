# linux-autodeletefile
A script that controls disk usage. The maximum value in % and the unit /dev/sdx are set.


Save chckhddspace.sh somewhere on the disk, edit the percentage limit in the condition and the disk you want to check.

Edit the file

nano crontab

and paste the following line. He will repeat the script every day at 3:00 am

0 3 * * * /chckhddspace.sh

In case you want to use other intervals you can use a great tool to help you.

https://crontab.guru/
