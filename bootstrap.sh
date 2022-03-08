#!/bin/bash
## Create Ansible playbooks directory for kubernetes  
mkdir /home/kubernetes
## Stage Directory
cd /home/kubernetes
## create a hosts file
touch hosts
## Insert data into hosts file 
cat << 'EOF2' >> /home/kubernetes/hosts
[masters]
master ansible_host=ip_address ansible_user=root
[workers]
worker1 ansible_host=ip_address ansible_user=root
worker2 ansible_host=ip_address ansible_user=root
