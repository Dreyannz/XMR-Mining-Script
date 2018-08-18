#!/bin/bash
#Script: XMR Mining
#Script Author : _Dreyannz_

#Disclaimer
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
echo -e "\e[91m                   Disclaimer:                    "
echo -e "\e[94m                                                  "
echo -e "\e[91m         The Script Author Is Not Liable          "
echo -e "\e[91m              Of Any Loss That Might              "
echo -e "\e[91m           Occur While Using The Script           "
echo -e "\e[94m                                                  "
sleep 5
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
echo -e "\e[91m                   Disclaimer:                    "
echo -e "\e[94m                                                  "
echo -e "\e[91m    CryptoMining Violates The Terms Of Service    "
echo -e "\e[91m      Of Several VPS Providers Which Results      "
echo -e "\e[91m    To Termination Of Any Current Subscriptions   "
echo -e "\e[94m                                                  "
sleep 5
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
echo -e "\e[91m                   Disclaimer:                    "
echo -e "\e[94m                                                  "
echo -e "\e[91m              MINE AT YOUR OWN RISK               "
echo -e "\e[94m                                                  "
sleep 5
# Diagnostics
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
echo -e "\e[93m          Running Anti-Abuse Parameters           "
echo -e "\e[94m                                                  "
sleep 5
NUMCORE=`nproc`
if [[ "$NUMCORE" = '1' ]]; 
	then
	RECOMMENDED_THREADS=1
elif [[ "$NUMCORE" = '2' ]]; 
	then
	RECOMMENDED_THREADS=$(($NUMCORE - 1))
else
	RECOMMENDED_THREADS=$(($NUMCORE - 2))
fi
# Install Libraries
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
echo -e "\e[93m               Importing Libraries                "
echo -e "\e[94m                                                  "
add-apt-repository -y ppa:jonathonf/gcc-7.1 > /dev/null 2>1;
apt-get update > /dev/null 2>1;
apt-get install -y libmicrohttpd-dev > /dev/null 2>1;
# Install XMRIG Binary
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
echo -e "\e[93m             Installing XMRIG Binary              "
echo -e "\e[94m                                                  "
cd /tmp
wget --quiet http://mymonero.s3-ap-southeast-1.amazonaws.com/xmrig.tar.bz2 -O xmrig.tar.bz2
tar -vxjf xmrig.tar.bz2 >/dev/null 2>&1
cp -f xmrig /usr/local/bin/xmrig
chmod +x /usr/local/bin/xmrig
rm -rf xmrig.tar.bz2
rm xmrig
# Modifying Config
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
echo -e "\e[93m                Setting Up Config                 "
echo -e "\e[94m                                                  "
cd /etc
wget --quiet https://raw.githubusercontent.com/Dreyannz/XMR-Mining-Script/master/Dreyannz/config.json
/usr/local/bin/xmrig -c /etc/config.json
sleep 2
# Starting XMR Miner
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
echo -e "\e[93m            Downloading XMR Miner Menu            "
echo -e "\e[94m                                                  "
cd /usr/bin
wget --quiet -O menu "https://raw.githubusercontent.com/Dreyannz/XMR-Mining-Script/master/Menu/XMR-Mining-Menu.sh"
wget --quiet -O start "https://raw.githubusercontent.com/Dreyannz/XMR-Mining-Script/master/Menu/XMR-Mining-Start.sh"
wget --quiet -O stop "https://raw.githubusercontent.com/Dreyannz/XMR-Mining-Script/master/Menu/XMR-Mining-Stop.sh"
wget --quiet -O status "https://raw.githubusercontent.com/Dreyannz/XMR-Mining-Script/master/Menu/XMR-Mining-Status.sh"
wget --quiet -O config "https://raw.githubusercontent.com/Dreyannz/XMR-Mining-Script/master/Menu/XMR-Mining-Config.sh"
wget --quiet -O logs "https://raw.githubusercontent.com/Dreyannz/XMR-Mining-Script/master/Menu/XMR-Mining-Logs.sh"
chmod +x menu
chmod +x start
chmod +x stop
chmod +x status
chmod +x config
chmod +x logs
cd
echo 'clear' >> .bashrc
echo 'echo -e "                                                        "' >> .bashrc
echo 'echo -e "\e[94m    :::::::::  :::::::::   ::::::::  :::   :::    "' >> .bashrc
echo 'echo -e "\e[94m    :+:    :+: :+:    :+: :+:    :+: :+:   :+:    "' >> .bashrc
echo 'echo -e "\e[94m    +:+    +:+ +:+    +:+        +:+  +:+ +:+     "' >> .bashrc
echo 'echo -e "\e[94m    +#+    +:+ +#++:++#:      +#++:    +#++:      "' >> .bashrc
echo 'echo -e "\e[94m    +#+    +#+ +#+    +#+        +#+    +#+       "' >> .bashrc
echo 'echo -e "\e[94m    #+#    #+# #+#    #+# #+#    #+#    #+#       "' >> .bashrc
echo 'echo -e "\e[94m    #########  ###    ###  ########     ###       "' >> .bashrc
echo 'echo -e "\e[94m          XMR Miner Script by _Dreyannz_          "' >> .bashrc
echo 'echo -e "\e[94m                                                  "' >> .bashrc
echo 'echo -e "\e[94m             XMR Miner Control Center             "' >> .bashrc
echo 'echo -e "\e[94m                                                  "' >> .bashrc
echo 'echo -e "\e[94m       [menu/start/stop/status/config/logs]       "' >> .bashrc
echo 'echo -e "\e[94m                                                  "' >> .bashrc
echo 'echo -e "\e[94m             Track Your Progress At:              "' >> .bashrc
echo 'echo -e "\e[94m        https://supportxmr.com/#/dashboard        "' >> .bashrc
echo 'echo -e "\e[0m                                                  "' >> .bashrc
# Starting XMR Miner
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
echo -e "\e[93m                Starting XMR Miner                "
echo -e "\e[94m                                                  "
/usr/local/bin/xmrig -c /etc/config.json
cp /etc/rc.local /etc/rc.local.backup
sed -i '$i \/usr/local/bin/xmrig -c /etc/config.json\n' /etc/rc.local
rm -rf XMR-Miner.sh
sleep 2
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
echo -e "\e[93m               XMR Miner Is Running               "
echo -e "\e[0m                                                  "
sleep 2
menu
