#!/usr/bin/env bash

# https://certbot.eff.org/lets-encrypt/ubuntuxenial-apache.html
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot  # add -y
sudo apt-get update
sudo apt-get install python-certbot-apache  # add -y

# https://www.youtube.com/watch?v=d4QDyHLHZ9c&t=882s
sudo certbot certonly --standalone  -d thenaivemind.com # enter, email, (a)gree

sudo cp -R /etc/letsencrypt ~/letsencryptbackup  # ssh out, save on shared volume maybe