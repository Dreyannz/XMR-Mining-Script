#!/bin/sh
# Author Piolo Martin
# XMR_Miner_Mod _Dreyannz_


# Disclaimer Sequence
clear
echo "                                                  "
echo "    :::::::::  :::::::::   ::::::::  :::   :::    "
echo "    :+:    :+: :+:    :+: :+:    :+: :+:   :+:    "
echo "    +:+    +:+ +:+    +:+        +:+  +:+ +:+     "
echo "    +#+    +:+ +#++:++#:      +#++:    +#++:      "
echo "    +#+    +#+ +#+    +#+        +#+    +#+       "
echo "    #+#    #+# #+#    #+# #+#    #+#    #+#       "
echo "    #########  ###    ###  ########     ###       "
echo "           XMR_Miner_Mod by _Dreyannz_            "
echo "         Original Script by Piolo Martin          "
echo "                                                  "
echo "                   Disclaimer:                    "
echo "                                                  "
echo "  We Are Not Liable Of Any Loss, Locked Or Banned "
echo "    Of Your Accounts On Your Virtual Providers    "
echo "              Mine At Your Own Risk               "
echo "                                                  "
read -r -p "          Press Enter Key To Continue" Skipper1
echo "                                                  "

#Pre-Setup Sequence
clear
clear
clear
echo "                                                        "
echo "         Please Input Your Wallet Address         "
echo "   If You Dont Have One, Create At MyMonero.com   "
echo "                                                  "
read -p "" WalletAdd 
echo "                                                  "
echo "            Please Input Name Of Worker           "
echo "                                                  "
read -p "" WorkerName 
echo "                                                  "
echo "        CPU Usage: [1-100] Recommended=50         "
echo "                                                  "
read -p "" CPU 

# Dependent Variables
MY_WALLET="$WalletAdd"
MY_WALLET_PASS="$WorkerName"
CPU_USAGE="$CPU"

# Independent Variables

ALGO="cryptonight"
POOL_URL_AND_PORT="stratum+tcp://xmr.pool.minergate.com:45700"
IP=$(ip route get 8.8.8.8| grep src| sed 's/.*src \(.*\)$/\1/g')
CONFIG_NAME="config.json"

# Install Libraries
clear
add-apt-repository -y ppa:jonathonf/gcc-7.1
apt-get update
apt-get install -y libmicrohttpd-dev

# Install XMRIG Binary
cd /tmp
wget http://mymonero.s3-ap-southeast-1.amazonaws.com/xmrig.tar.bz2 -O xmrig.tar.bz2
tar -vxjf xmrig.tar.bz2
cp -f xmrig /usr/local/bin/xmrig
chmod +x /usr/local/bin/xmrig
rm -f xmrig.tar.bz2
rm xmrig
cd /etc
wget https://raw.githubusercontent.com/Dreyannz/XMR_Mining_Ubuntu/master/config1.json -O ${CONFIG_NAME}
sed -i "s/ALGO/${ALGO}/g" ${CONFIG_NAME}
sed -i "s/POOL_URL_AND_PORT/${POOL_URL_AND_PORT}/g" ${CONFIG_NAME}
sed -i "s/WALLET_ADDRESS/${MY_WALLET}/g" ${CONFIG_NAME}
sed -i "s/WALLET_PASS/${MY_WALLET_PASS}-${IP}/g" ${CONFIG_NAME}
sed -i "s/CPU_USAGE/${CPU_USAGE}/g" ${CONFIG_NAME}
/usr/local/bin/xmrig -c /etc/config.json

# Start Miner
sed -i '$i \/usr/local/bin/xmrig -c /etc/config.json\n' /etc/rc.local

# Closing Sequence
clear
echo "                                                        "
echo "                                                  "
echo "           To Check If Worker Is Online           "
echo "           Open Your Browser And Go To:           "
echo "        https://supportxmr.com/#/dashboard        "
echo "                                                  "
echo "          Process May Take A Few Minutes          "
echo "        Before Appearing On Your DashBoard        "
echo "                                                  "
read -r -p "        Press Enter Key To Close Sequence         " Skipper2
echo "                                                  "

# StartUp And Identities
clear
echo "                                                  "
echo "    :::::::::  :::::::::   ::::::::  :::   :::    "
echo "    :+:    :+: :+:    :+: :+:    :+: :+:   :+:    "
echo "    +:+    +:+ +:+    +:+        +:+  +:+ +:+     "
echo "    +#+    +:+ +#++:++#:      +#++:    +#++:      "
echo "    +#+    +#+ +#+    +#+        +#+    +#+       "
echo "    #+#    #+# #+#    #+# #+#    #+#    #+#       "
echo "    #########  ###    ###  ########     ###       "
echo "           XMR_Miner_Mod by _Dreyannz_            "
echo "         Original Script by Piolo Martin          "
echo "                                                  "
echo "             Track Your Progress At:              "
echo "        https://supportxmr.com/#/dashboard        "
echo "                                                  "
echo "                                                  "


