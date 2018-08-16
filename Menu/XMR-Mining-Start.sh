#!/bin/bash
#Script: XMR Mining - Start
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
	echo -e "\e[93m           XMR Miner Is Already Running           "
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
	echo -e "\e[93m                Starting XMR Miner                "
	echo -e "\e[0m                                                  "
	/usr/local/bin/xmrig -c /etc/config.json
	sed -i '$i \/usr/local/bin/xmrig -c /etc/config.json\n' /etc/rc.local
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
fi