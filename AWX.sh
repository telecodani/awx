#!/bin/sh
#Uncomment the next line to update the system.
#yum -y update
yum -y install epel-release
yum -y install git gettext ansible docker nodejs npm gcc-c++ bzip2 python-docker-py
systemctl start docker
systemctl enable docker
cd /
git clone https://github.com/ansible/awx
cd /awx/installer
ansible-playbook -i inventory install.yml
