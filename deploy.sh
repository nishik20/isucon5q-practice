#!/bin/bash -eux

SCRIPT_DIR=$(dirname $(readlink -f $0))

pushd $SCRIPT_DIR
git pull
sudo systemctl restart mysql
sudo systemctl restart isuxi.python
sudo systemctl restart nginx
sudo sysctl -p

