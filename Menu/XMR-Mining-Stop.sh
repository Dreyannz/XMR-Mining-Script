#!/bin/bash
#Script: XMR Mining - Stop
#Script Author : _Dreyannz_
command="/usr/local/bin/xmrig -c /etc/config.json"
running=`ps ax | grep -v grep | grep $command | wc -l`
if [ $running -gt 0]; then
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
	echo -e "\e[93m                Stopping XMR Miner                "
	echo -e "\e[0m                                                  "
	killall -15 /usr/local/bin/xmrig -c /etc/config.json >/dev/null 2>&1
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
	echo -e "\e[93m             XMR Miner Is Not Running             "
	echo -e "\e[0m                                                  "
else
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
	echo -e "\e[93m             XMR Miner Is Not Running             "
	echo -e "\e[0m                                                  "
fi