#!/bin/bash

OPENVPNCONFIG=$(ctx download-resource "config/server.conf")

cp $OPENVPNCONFIG /etc/openvpn/server.conf

semanage port -a -t openvpn_port_t -p tcp 1111

systemctl enable openvpn@server.service

systemctl start openvpn@server.service