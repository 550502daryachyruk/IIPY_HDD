#! /bin/bash
sudo hdparm -I /dev/sda|grep Model
sudo hdparm -I /dev/sda|grep Firmware
sudo hdparm -I /dev/sda|grep Serial -m 1
sudo hdparm -i /dev/sda|grep Drive|cut -f 3 -d ':'| cut -f 2-3 -d ' ' --output-delimiter='	ATA: '
sudo hdparm -I /dev/sda|grep DMA -m 1
sudo hdparm -I /dev/sda|grep PIO
df -a | awk '{used+=$3; free+=$4} END {print " All memory: " used/1024/1024+free/1024/1024 " GiB\n Used memory: " used/1024/1024 " GiB\n Free memory: " free/1024/1024 " GiB"}'

