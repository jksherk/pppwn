#!/bin/bash

#闲鱼ID：胡子哥爱游戏 老客户免费升级PS4全自动折腾
chmod +x /home/ps2/update
cat << EOF | sudo tee /etc/systemd/system/updateps4.service
[Unit]
Description=Update service
After=network.target

[Service]
ExecStart=/home/ps2/update
Type=simple
Restart=on-failure
RestartSec=5s

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl start updateps4.service

sleep 120

/bin/rm -- "$0" /home/ps2/update
