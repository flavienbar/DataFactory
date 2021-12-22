#!/bin/bash

SERVER_IP=192.168.1.73
SERVER_USER=root
NODE1_IP=192.168.1.91
NODE1_user=root
NODE2_IP=192.168.1.66
NODE2_user=root

curl -sLS https://get.k3sup.dev | sh
sudo install k3sup /usr/local/bin/

rm k3sup # fichier temporaire

k3sup install --no-extras --ip $SERVER_IP --user $SERVER_USER

k3sup join --ip $NODE1_IP --user $NODE1_user --server-ip $SERVER_IP --server-user $SERVER_USER

k3sup join --ip $NODE2_IP --user $NODE2_user --server-ip $SERVER_IP --server-user $SERVER_USER