#!/bin/bash
2>/dev/null
SYSTEM_USER_NAME=$(id -un)
if [[ "${SYSTEM_USER_NAME}" != 'root'  ]]
then
    echo 'You are not running the script as root!/Bu programı root olarak çalıştırmıyorsunuz!'
    exit 1
fi
echo
"
                                          
\ \      / /__| | ___ ___  _ __ ___   ___  | |_ ___  
 \ \ /\ / / _ \ |/ __/ _ \|     _ \ / _ \ | __/ _ \ 
  \ V  V /  __/ | (_| (_) | | | | | |  __/ | || (_)|
   \_/\_/ \___|_|\___\___/|_| |_| |_|\___|  \__\___/                                                
  ____ _                  ____         ____               _   _ 
 / ___| | ___  __ _ _ __ | __ ) _   _ / ___|_ __ __ _ ___| |_| |
| |   | |/ _ \/ _  |  _ \|  _ \| | | | |   | '__/ _  / __| __| |
| |___| |  __/ (_| | | | | |_) | |_| | |___| | | (_| \__ \ |_|_|
 \____|_|\___|\__,_|_| |_|____/ \__, |\____|_|  \__,_|___/\__(_)
                                |___/   
"
echo "-A simple and fast log cleaner brought to you by Marixus Crast"
sleep 2

echo Cleaning log files,this can take up a bit.
sleep 1
echo ""

rm -rf /var/log/*
echo "[+]Removing everything in /var/log"
sleep 1

rm -rf /var/apache/logs
echo "[+]Removing everything in /var/apache/logs"
sleep 1

rm -rf /var/apache/log
echo "[+]Removing everything in /var/apache/log"
sleep 1

rm -rf /usr/local/apache/log
echo "[+]Removing everything in /usr/local/apache/log"
sleep 1

rm -rf /usr/local/apache/logs
echo "[+]Removing everything in /usr/local/apache/logs"
sleep 1

echo Cleaned! > /root/.history
echo "[+]Removing everything in /root/.history" 
sleep 1

echo Cleaned! > /root/*_history
echo "[+]Removing everything in /root/*_history"
sleep 1
sleep 1
echo ""

echo "Donee! Everywhere looks better now!"
sleep 1

exit 1