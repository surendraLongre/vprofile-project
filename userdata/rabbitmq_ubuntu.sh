#!/bin/bash
sudo apt update -y
sudo apt install wget -y
cd /tmp/
apt install rabbitmq-server -y
 systemctl enable --now rabbitmq-server
sudo systemctl status rabbitmq-server
sudo sh -c 'echo "[{rabbit, [{loopback_users, []}]}]." > /etc/rabbitmq/rabbitmq.config'
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo systemctl restart rabbitmq-server
