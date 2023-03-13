# Python Cloud Boilerplate

Reusable boilerplate code for personal python projects hosted on cloud. 

## Setup

Currently only a setup script for Ubuntu 22.04.2 LTS

To get started by installing terraform, poetry and docker, run the setup shell script.

```sh
cd setup
chmod +x linux_setup.sh
sudo bash ./linux_setup.sh
```

or install without the script from instructions

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Poetry](https://python-poetry.org/docs/#installing-with-the-official-installer)
- [Docker Engine](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository)

## Terraform 

The terraform directory contains a number of simple config setups to be used or deleted as necessary.

- Azure VM SSH
- Docker nginx

## Resources

https://docs.github.com/en/actions/deployment/deploying-to-your-cloud-provider/deploying-to-azure/deploying-python-to-azure-app-service

## Environment variables

Flask

```shell
export FLASK_APP="startup:app"
export FLASK_ENV="development"
```