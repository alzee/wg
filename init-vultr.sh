#!/bin/bash
#
# vim:ft=bash

curl -L https://ash.alz.ee | bash &> /root/log

curl -L https://wg.alz.ee/setup | SERVER=vultr PRIVATEKEY='xxxxx' bash

sudo sed -i '/PermitRootLogin/s/yes/no/' /etc/ssh/sshd_config
sudo sed -i '/PasswordAuthentication/s/yes/no/' /etc/ssh/sshd_config.d/50-cloud-init.conf
sudo systemctl restart sshd
