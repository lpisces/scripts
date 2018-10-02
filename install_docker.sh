#! /bin/sh

curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh && rm -rf get-docker.sh

curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
