#!/usr/bin/env bash

# upgrade the system
export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -q -y dist-upgrade
apt-get install -y curl python-software-properties build-essential git-core

# install and configure NGINX
nginx=stable
add-apt-repository -y ppa:nginx/$nginx
apt-get update
apt-get install -y nginx
rm -rf /usr/share/nginx/html/
ln -fs /vagrant /usr/share/nginx/html
sed -i '1s/.*/user vagrant;/' /etc/nginx/nginx.conf
