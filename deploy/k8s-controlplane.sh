#!/bin/bash

### Initialize the Kubernetes cluster on the control plane node using kubeadm (Note: This is only performed on the Control Plane Node
sudo kubeadm init --pod-network-cidr 192.168.0.0/16 --kubernetes-version 1.23.0

Sleep 3

### Set kubectl access ###
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

### Check status of the control plane node ###
kubectl get nodes

echo "
######                    #####                             #    #
#     # #    # ######    #     # #      #  ####  #    #    #   #  #    # #####  ###### #####  #    # ###### ##### ######  ####
#     # ##   # #         #       #      # #    # #   #     #  #   #    # #    # #      #    # ##   # #        #   #      #
#     # # #  # #####     #       #      # #      ####      ###    #    # #####  #####  #    # # #  # #####    #   #####   ####
#     # #  # # #         #       #      # #      #  #      #  #   #    # #    # #      #####  #  # # #        #   #           #
#     # #   ## #         #     # #      # #    # #   #     #   #  #    # #    # #      #   #  #   ## #        #   #      #    #
####### #    # ######     #####  ###### #  ####  #    #    #    #  ####  #####  ###### #    # #    # ######   #   ######  ####"
