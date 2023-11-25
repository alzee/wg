#!/bin/bash
#
# vim:ft=sh

apt update
apt install wireguard -y

PRIVATEKEY=${PRIVATEKEY:-private_key_not_given}
wgif=wg-server
conf=$wgif.conf
url=https://raw.githubusercontent.com/alzee/wg/main/server.conf

curl -L $url > $conf

iface=$(ip r show default | awk '{print $5}')

sed -i s/eth0/$iface/ $conf
sed -i /PrivateKey/s/XXXXX/$PRIVATEKEY/ $conf

mv $conf /etc/wireguard/

systemctl enable --now wg-quick@$wgif
