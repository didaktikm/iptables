#!/usr/bin/env bash

cp /vagrant/id_rsa /home/vagrant/.ssh/
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa 
chmod 0600 /home/vagrant/.ssh/id_rsa
#sed -i -e "\\#PasswordAuthentication yes# s#PasswordAuthentication yes#PasswordAuthentication no#g" /etc/ssh/sshd_config
sudo systemctl restart sshd
yum install -y epel-release vim bacula-director bacula-storage bacula-console mariadb-server
