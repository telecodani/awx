#!/bin/bash

# Install the prerequisites
dnf -y install epel-release
dnf install -y yum-utils git gettext ansible nodejs npm gcc-c++ bzip2 python3

# Add Docker repo
dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Needed for Docker DNS resolution
firewall-cmd --zone=public --add-masquerade --permanent
# Needed for AWX service
firewall-cmd --zone=public --add-service=http --permanent
# Reload Firewall daemon
firewall-cmd --reload

# Install Docker
dnf install -y docker-ce-18.06.1.ce
# Start and enable the Docker daemon
systemctl daemon-reload && systemctl restart docker && systemctl enable docker.service

# Install the Docker-Compose
curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Install Pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py

# Install compose-module-pip
pip install docker-compose

# Clone AWX repo and lunch installer
git clone https://github.com/ansible/awx
cd awx/installer/
ansible-playbook -i inventory install.yml