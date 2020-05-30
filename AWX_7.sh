#!/bin/bash

# Install the prerequisites
yum -y install epel-release
yum install -y yum-utils git gettext ansible nodejs npm gcc-c++ bzip2 python3 python3-libselinux

# Add Docker repo
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Needed for Docker DNS resolution
firewall-cmd --zone=public --add-masquerade --permanent
# Needed for AWX service
firewall-cmd --zone=public --add-service=http --permanent
# Reload Firewall daemon
firewall-cmd --reload

# Install Docker
yum install -y docker-ce-18.06.1.ce
# Start and enable the Docker daemon
systemctl daemon-reload && systemctl restart docker && systemctl enable docker.service
# Export Docker variable needed for AWX deploy to avoid this error: "Error restarting project UnixHTTPConnectionPool..."
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120

# Install the Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Get pip and install
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py

# Install compose-module-pip
pip install docker-compose

# Get AWX and lunch installer
git clone https://github.com/ansible/awx
cd awx/installer/
ansible-playbook -i inventory install.yml