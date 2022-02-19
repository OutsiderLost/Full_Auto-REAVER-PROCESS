
Attack automatization, with a time interval of 35 minutes.

(mdk3 because it proved to be more effective than mdk4 in this case)

Effective against: TP-* Ar* types (not only with old models)!

-----------------------------

Install:

(other addiction)
git clone https://github.com/hash3liZer/wifijammer.git

git clone https://github.com/OutsiderLost/Full_Auto-REAVER-PROCESS.git

cd Full_Auto-REAVER-PROCESS

chmod +x *.sh

(optional 2nd method)
unzip Full_Auto-REAVER-PROCESS-B_type.zip && rm Full_Auto-REAVER-PROCESS-B_type.zip

chmod +x Full_Auto-REAVER-PROCESS-B_type/*.sh

-----------------------------

Usage:

(make attack files for target network)
./REAVER-PROCESS-maker-A_type.sh
(or)
./REAVER-PROCESS-maker-B_type.sh

(enter the target network information)
Write and save -> <BSSID> <iface> <ESSID>

(run)
cd Full_Auto-$(awk '{print $1}' Target-AP.txt | sed 's/://g')

./mothercommand

-----------------------------
*****************************
WARNING !!! 'B' instead of 'A' if it didn't work.

ESSID does not have an automatic input command!

'Aireplay-ng' runs much smoother with a manual ESSID!

However, this is a problem with correct input, it doesn't hurt to check it before running.

Maybe test with a separate xterm "Aireplay-ng how to bear to read strange characters.

(the 2 strings are separated -> " ' )
(and under xterm all command entries behave differently)
(for example, the aireplay-ng command should be placed and tested next to the "attack- *" file, and run.)
(as a result, the appropriate "Aireplay-ng" authentication ESSID is also required for mkd3 authentication!)
(however, the "auto-assoc- *" file behaves differently, may want to check it separately.)
*****************************
