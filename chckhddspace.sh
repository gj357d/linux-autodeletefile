# get the available space in % (without symbol %) on the device
size=$(df -k /dev/sda1 | tail -1 | awk '{print $5}' | sed 's/%//g' )

# check if the available space is smaller than 90%
if (($size>90)); then
  # find all files under /media/hdd/movie/timeshift and delete them
  find /media/hdd/movie/timeshift -mtime +10 -type f -delete
fi
