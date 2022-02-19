#!/bin/bash

echo " "
echo "Opened new terminal !!!"
echo " "
# ******* JUST USE WRITING FILES THE: <ESSID> <-> $(grep '<BSSID>' /root/wash-log.txt | cut -d ' ' -f 16-) *******
echo "Write and save -> <BSSID> <iface> <ESSID>"
# ****************************************************************************************************************
# echo "Write and save -> <BSSID> <iface>"
echo " "
# ******* JUST USE WRITING FILES THE: <ESSID> <-> $(grep '<BSSID>' /root/wash-log.txt | cut -d ' ' -f 16-) *******
echo "example -> 1A:2B:3C:4D:5E:6F wlan0 Network"
# ****************************************************************************************************************
# echo "example -> 1A:2B:3C:4D:5E:6F wlan0"
echo " "

qterminal -e nano Target-AP.txt
echo " "
mkdir "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"

sed -i -e 's/^[[:blank:]]*//;s/  */ /1;s/  */ /2;s/[[:blank:]]*$//' Target-AP.txt

cp Target-AP.txt "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"$(awk '{print $1}' Target-AP.txt | sed 's/://g')-AP.txt"
cp Target-AP.txt "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"$(awk '{print $1}' Target-AP.txt | sed 's/://g')-AP-def.txt"

sed -i -e "s/[\]/\\\\\\\\/g;s/[&]/\\\\\&/g;s/[$]/\\\\\$/g;s/[*]/\\\\\*/g;s/[/]/\\\\\//g;s/[']/\\\\\'/g;s/[!]/\\\\\!/g;s/[<]/\\\\\</g;s/[>]/\\\\\>/g;s/[(]/\\\\\(/g;s/[)]/\\\\\)/g;s/\[[]/\\\\\[/g;s/[]]/\\\\\]/g" -e 's/["]/\\"/g' "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/*-AP.txt

# ******* JUST USE WRITING FILES THE: <ESSID> <-> $(grep '<BSSID>' /root/wash-log.txt | cut -d ' ' -f 16-) *******
# echo 'convert chars -> [..(..<.."../..\..&..$..etc.'
# convert chars -> "..\..&..$..etc.
sed -i -e "s/[\]/\\\\\\\\\\\\/g;s/[&]/\\\\\&/g;s/[$]/\\\\\\\\\$/g;s/[*]/\\\\\*/g;s/[/]/\\\\\//g;s/[']/\\\\\'/g;s/[!]/\\\\\!/g;s/[<]/\\\\\</g;s/[>]/\\\\\>/g;s/[(]/\\\\\(/g;s/[)]/\\\\\)/g;s/\[[]/\\\\\[/g;s/[]]/\\\\\]/g" -e 's/["]/\\"/g' Target-AP.txt
# ****************************************************************************************************************

# mkdir "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"

cp attack-BSSID.sh "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"attack-$(awk '{print $1}' Target-AP.txt | sed 's/://g').sh"
cp limited-attack-BSSID.sh "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"limited-attack-$(awk '{print $1}' Target-AP.txt | sed 's/://g').sh"

cp auto-assoc-simple-A1-ext.sh "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/auto-assoc-simple-A1-ext.sh
cp auto-reaver-simple-A1-ext.sh "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/auto-reaver-simple-A1-ext.sh
cp channel-set-A1.sh "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/channel-set-A1.sh
cp mon-servstop-ext.sh "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/mon-servstop-ext.sh
cp mothercommand.sh "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/mothercommand.sh

# mv Target-AP.txt "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"$(awk '{print $1}' Target-AP.txt | sed 's/://g')-AP.txt"
# cp Target-AP.txt "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"$(awk '{print $1}' Target-AP.txt | sed 's/://g')-AP.txt"


sed -i -e "s/<BSSID>/$(awk '{print $1}' Target-AP.txt)/g" -e "s/<iface>/$(awk '{print $2}' Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"attack-$(awk '{print $1}' Target-AP.txt | sed 's/://g').sh"
sed -i -e "s/<BSSID>/$(awk '{print $1}' Target-AP.txt)/g" -e "s/<iface>/$(awk '{print $2}' Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"limited-attack-$(awk '{print $1}' Target-AP.txt | sed 's/://g').sh"

sed -i -e "s/<BSSID>/$(awk '{print $1}' Target-AP.txt)/g" -e "s/<iface>/$(awk '{print $2}' Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/auto-assoc-simple-A1-ext.sh
sed -i -e "s/<BSSID>/$(awk '{print $1}' Target-AP.txt)/g" -e "s/<iface>/$(awk '{print $2}' Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/auto-reaver-simple-A1-ext.sh
sed -i -e "s/<BSSID>/$(awk '{print $1}' Target-AP.txt)/g" -e "s/<iface>/$(awk '{print $2}' Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/channel-set-A1.sh
sed -i -e "s/<BSSID>/$(awk '{print $1}' Target-AP.txt)/g" -e "s/<iface>/$(awk '{print $2}' Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/mon-servstop-ext.sh
sed -i -e "s/<BSSID>/$(awk '{print $1}' Target-AP.txt)/g" -e "s/<iface>/$(awk '{print $2}' Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/mothercommand.sh

# ******* JUST USE WRITING FILES THE: <ESSID> <-> $(grep '<BSSID>' /root/wash-log.txt | cut -d ' ' -f 16-) *******
sed -i "s/<ESSID>/$(cut -d ' ' -f 3- Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"attack-$(awk '{print $1}' Target-AP.txt | sed 's/://g').sh"
sed -i "s/<ESSID>/$(cut -d ' ' -f 3- Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/"limited-attack-$(awk '{print $1}' Target-AP.txt | sed 's/://g').sh"

# sed -i "s/<ESSID>/$(cut -d ' ' -f 3- Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/auto-assoc-simple-A1-ext.sh
sed -i "s/<ESSID>/$(cut -d ' ' -f 3- Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')/*-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/auto-assoc-simple-A1-ext.sh

sed -i "s/<ESSID>/$(cut -d ' ' -f 3- Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/auto-reaver-simple-A1-ext.sh
sed -i "s/<ESSID>/$(cut -d ' ' -f 3- Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/channel-set-A1.sh
sed -i "s/<ESSID>/$(cut -d ' ' -f 3- Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/mon-servstop-ext.sh
sed -i "s/<ESSID>/$(cut -d ' ' -f 3- Target-AP.txt)/g" "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/mothercommand.sh
# ****************************************************************************************************************

mv "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/*-AP-def.txt Target-AP.txt

chmod +x "Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')"/*.sh

echo "Use main run process -> ./mothercommand.sh"
echo " "
