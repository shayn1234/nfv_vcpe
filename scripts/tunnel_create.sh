#!/bin/sh

REMOTEKEY=$(ctx download-resource "config/oib_cloudify.rsa")
SERVICE_DEF=$(ctx download-resource "config/porttun.service")

cp $REMOTEKEY /root/remote.rsa
chmod 600 /root/remote.rsa

cp  $SERVICE_DEF /usr/lib/systemd/system/porttun.service

systemctl enable porttun
systemctl start porttun