#!/bin/sh

# Install terraform
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
apt update && apt install terraform

# Move terraform to local so it works with path
mv /usr/bin/terraform /usr/local/bin/

# Install autocomplete and reboot shell
terraform -install-autocomplete
source ~/.bashrc

# Install curl and poetry
apt install curl
curl -sSL https://install.python-poetry.org | python3 -

# Get the users home directory and then export poetry path
homedir=$( getent passwd "$USER" | cut -d: -f6 )
export PATH="${homedir}/.local/bin:$PATH"

# Install docker
apt-get update
apt-get install ca-certificates curl gnupg lsb-release

mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update

apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin