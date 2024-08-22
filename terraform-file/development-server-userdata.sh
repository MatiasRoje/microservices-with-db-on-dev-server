#! /bin/bash
sudo yum update -y
sudo hostnamectl set-hostname Development-Server
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo yum install -y libxcrypt-compat
sudo curl -L "https://github.com/docker/compose/releases/download/v2.21.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo yum install java-11-amazon-corretto -y
git clone https://github.com/cmakkaya/microservices-with-db-on-dev-server.git
cd microservices-with-db-on-dev-server
git checkout dev