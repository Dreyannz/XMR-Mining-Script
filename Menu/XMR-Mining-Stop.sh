#!/bin/bash
#Script: XMR Mining - Stop
#Script Author : _Dreyannz_
result=`ps aux | grep -i "/usr/local/bin/xmrig -c /etc/config.json" | grep -v "grep" | wc -l`
if [ $result -ge 1 ]; then
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
	rm -rf /etc/rc.local
	cp /etc/rc.local.backup /etc/rc.local
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
	echo -e "\e[91m             XMR Miner Is Not Running             "
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
	echo -e "\e[91m             XMR Miner Is Not Running             "
	echo -e "\e[0m                                                  "
fi