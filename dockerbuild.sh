#!/bin/sh
[ -e ./bin/md5 ] || {
    sudo mkdir -p ./bin
    sudo wget https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 -O ./bin/confd
    sudo md5=`sudo md5sum ./bin/confd | awk '{print $1}'`
    sudo echo ${md5} > ./bin/md5
}
sudo docker build -t autopublisher-backend-nginx .
