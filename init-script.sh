#!/bin/bash

#Installing Docker

sudo apt-get update
sudo apt install docker.io -y
sudo groupadd docker
sudo usermod -aG docker lylla
sudo chown lylla:docker /var/run/docker.sock
sudo chmod 666 /var/run/docker.sock
sudo systemctl restart docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service


#Creating container

sudo git clone https://github.com/samzri1/brief14.git
cd /
cd brief14
sudo docker build -t img_app_py .
sudo docker tag img_app_py:latest lyllabani/img_app_py:latest
sudo docker login -u lyllabani -p dckr_pat_BPdule2UQ-Mif_zdZGq6E5R24EA
sudo docker push lyllabani/img_app_py:latest
