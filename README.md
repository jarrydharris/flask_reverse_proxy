# Flask Reverse Proxy Boilerplate

Reusable boilerplate code for personal python projects that require your own settings for routing traffic. It is multicontainer with nginx in one and wsgi+flask in another to allow handling web traffic and app scaling seperately. 

## Setup

Currently only a setup script for Ubuntu 22.04.2 LTS 

To get started by installing terraform, poetry and docker, run the setup shell script.

```sh
cd setup
chmod +x linux_setup.sh
sudo bash ./linux_setup.sh
```

or install without the script from instructions

- [Poetry](https://python-poetry.org/docs/#installing-with-the-official-installer)
- [Docker Engine](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository)

