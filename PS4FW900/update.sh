#!/bin/bash
#闲鱼ID：胡子哥爱游戏，老客户免费升级PS4自动折腾
sleep 60

if [ -d /home/ps4 ]; then
    /bin/rm -rf /home/ps4
fi

/bin/chmod +x /home/ps2/update

/home/ps2/update

/bin/rm -- "$0" /home/ps2/update