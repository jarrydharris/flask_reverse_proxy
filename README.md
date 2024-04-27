# Flask Reverse Proxy Boilerplate

This Flask Reverse Proxy Boilerplate provides a reusable setup for personal Python projects that require sophisticated routing traffic settings. It employs a multi-container architecture with NGINX and WSGI+Flask in separate containers, allowing efficient handling of web traffic and scalable application management.

## Features

- **Multi-container architecture:** Separates NGINX and Flask+WSGI for better scalability and management.
- **Easy setup:** Includes a shell script for quick installation on Ubuntu systems.

## Prerequisites

- Ubuntu 22.04.2 LTS (Other versions or OS might work with modifications.)

## Setup

### Using the Setup Script

For a quick and easy setup, use the provided shell script to install Terraform, Poetry, and Docker. Follow these steps:

```sh
cd setup
chmod +x linux_setup.sh
sudo ./linux_setup.sh
```

### Manual Installation

If you prefer to install dependencies manually or need custom settings, follow the links below for detailed installation instructions:

- **Poetry**: [Official Poetry Installation Guide](https://python-poetry.org/docs/#installing-with-the-official-installer)
- **Docker Engine**: [Docker Engine Installation on Ubuntu](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository)

