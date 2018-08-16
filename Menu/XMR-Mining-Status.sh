#!/bin/bash
#Script: XMR Mining - Status
#Script Author : _Dreyannz_
CONFIG=/etc/config.json
test -f $CONFIG || exit 1
#Name Of Worker
WORKER=`grep "pass" $CONFIG | sed -e 's/.*://'`
IP=$(ip route get 8.8.8.8| grep src| sed 's/.*src \(.*\)$/\1/g')
echo $WORKER > pass.txt
sed -i 's/,//g' pass.txt
sed -i 's/"//g' pass.txt
WORKER_TEMP=`cat pass.txt`
WORKER_TEMP=${WORKER_TEMP%"$IP"}
echo $WORKER_TEMP > pass.txt
sed -i 's/-/ /g' pass.txt
WORKER=`cat pass.txt`
rm pass.txt
#Number Of Threads
THREADS=`grep "threads" $CONFIG | sed -e 's/.*://'`
echo $THREADS > threads.txt
sed -i 's/"//g' threads.txt
sed -i 's/,//g' threads.txt
THREADS=`cat threads.txt`
rm threads.txt
#Max CPU Usage
CPU=`grep "max-cpu-usage" $CONFIG | sed -e 's/.*://'`
echo $CPU > cpu.txt
sed -i 's/,//g' cpu.txt
CPU=`cat cpu.txt`
rm cpu.txt
#Mining Pool
URL=`grep "url" $CONFIG | sed -e 's/.*"://'`
echo $URL > url.txt
sed -i 's/"//g' url.txt
sed -i 's/,//g' url.txt
URL=`cat url.txt`
rm url.txt
#Miner IP Address
IP=$(ip route get 8.8.8.8| grep src| sed 's/.*src \(.*\)$/\1/g')
echo $IP > ip.txt
sed -i 's/ //g' ip.txt
IP=`cat ip.txt`
rm ip.txt
#Current Status
result=`ps aux | grep -i "/usr/local/bin/xmrig -c /etc/config.json" | grep -v "grep" | wc -l`
if [ $result -ge 1 ]; then
	STATUS="Running"
	COLOR="\e[93m"
else
	STATUS="Not Running"
	COLOR="\e[91m"
fi
clear
echo -e "                                                        "
echo -e "\e[94m    :::::::::  :::::::::   ::::::::  :::   :::    "
echo -e "\e[94m    :+:    :+: :+:    :+: :+:    :+: :+:   :+:    "
echo -e "\e[94m    +:+    +:+ +:+    +:+        +:+  +:+ +:+     "
echo -e "\e[94m    +#+    +:+ +#++:++#:      +#++:    +#++:      "
echo -e "\e[94m    +#+    +#+ +#+    +#+        +#+    +#+       "
echo -e "\e[94m    #+#    #+# #+#    #+# #+#    #+#    #+#       "
echo -e "\e[94m    #########  ###    ###  ########     ###       "
echo -e "\e[94m          XMR Miner Script by _Dreyannz_          "
echo -e "\e[94m                                                  "
echo -e "\e[93m                 XMR Miner Status                 "
echo -e "\e[94m                                                  "
echo -e "\e[93m          Name of Worker   : $WORKER"
echo -e "\e[93m          No. of Threads   : $THREADS"
echo -e "\e[93m          Max CPU Usage    : $CPU"
echo -e "\e[93m          Mining Pool      : $URL"
echo -e "\e[93m          Miner IP Address : $IP"
echo -e "\e[93m          Current Status   : $COLOR$STATUS"
echo -e "\e[0m                                                  "