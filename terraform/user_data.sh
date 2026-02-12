#!/bin/bash

apt update -y
apt install -y docker.io

systemctl start docker
systemctl enable docker

usermod -aG docker ubuntu

docker pull namitagrawal/strapi-app:latest

docker run -d -p 1337:1337 namitagrawal/strapi-app:latest
