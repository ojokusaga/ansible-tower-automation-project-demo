#!/bin/bash
sudo yum -y update
sudo yum install epel-release -y
sudo yum install ansible -y
sudo curl -O https://releases.ansible.com/ansible-tower/setup/ansible-tower-setup-latest.tar.gz
sudo tar xvf ansible-tower-setup-latest.tar.gz
cd ansible-tower-setup*/
sudo sed