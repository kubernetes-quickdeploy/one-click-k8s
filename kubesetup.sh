#!/bin/bash

### Initialize the Kubernetes cluster on the control plane node using kubeadm (Note: This is only performed on the Control Plane Node
sudo kubeadm init --pod-network-cidr 192.168.0.0/16 --kubernetes-version 1.23.0

### Set kubectl access ###
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

### Install calico ###
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

### Kubernrets Dashboard ###
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml

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
