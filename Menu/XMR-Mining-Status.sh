#!/bin/bash
#Script: XMR Mining - Status
#Script Author : _Dreyannz_
CONFIG=/etc/config.json
test -f $CONFIG || exit 1
THREADS=`grep "threads" $CONFIG | wc -l`
URL=`grep "url" $CONFIG | wc -l`
IP=$(ip route get 8.8.8.8| grep src| sed 's/.*src \(.*\)$/\1/g')
WORKER_TEMP=`grep "pass" $CONFIG | wc -l`
WORKER=${WORKER_TEMP%"-$IP"}
CPU=`grep "max-cpu-usage" $CONFIG | wc -l`
command="/usr/local/bin/xmrig -c /etc/config.json"
running=`ps ax | grep -v grep | grep $command | wc -l`
if [ $running -gt 0]; then
	STATUS="Running"
else
	STATUS="Not Running"
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
echo -e "\e[93m          Current Status   : $STATUS"
echo -e "\e[0m                                                  "