#!/bin/bash
sudo yum -y update
sudo yum install epel-release -y
sudo yum install ansible -y
sudo curl -O https://releases.ansible.com/ansible-tower/setup/ansible-tower-setup-latest.tar.gz
sudo tar xvf ansible-tower-setup-latest.tar.gz
cd ansible-tower-setup*/
sudo sed -i "s/^admin_password=''.*/admin_password='ansible'/g" inventory
sudo sed -i "s/^pg_password=''.*/pg_password='ansible'/g" inventory
sudo ./setup.sh
echo "Ansible Tower setup completed. Access Tower UI at https://your-server-ip/"




#Setting up ansible tower for RHEL8 <ami-0b324207d4bcaec61> and CENTOS7 <ami-002070d43b0a4f171>.

#!/bin/bash

# # Ensure script is run as root
# if [ "$(id -u)" -ne 0 ]; then
#     echo "This script must be run as root" 1>&2
#     exit 1
# fi

# Install wget if not already installed
sudo yum install wget -y

# Download Ansible Tower installer
sudo wget https://releases.ansible.com/ansible-tower/setup/ansible-tower-setup-latest.tar.gz

# Extract the downloaded tarball
sudo tar xvf ansible-tower-setup-latest.tar.gz

# Navigate to the extracted directory
sudo cd ansible-tower-setup*/

# Edit inventory file to set admin and database passwords
sudo sed -i "s/^admin_password=''.*/admin_password='ansible'/g" inventory
sudo sed -i "s/^pg_password=''.*/pg_password='ansible'/g" inventory

# Run setup script
sudo ./setup.sh

# Once setup is complete, you can access Ansible Tower UI via browser
echo "Ansible Tower setup completed. Access Tower UI at https://your-server-ip/"


