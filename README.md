# popit\_ng Docker Environment

## Contents

This repository contains a ```Dockerfile``` to build a popit\_ng instance, a ```docker-compose.yml``` file to run an almost complete popit\_ng environment, and miscellenious scripts and configuration files.

The ```docker-compose.yml``` file provides a Docker environment with the following services:

* popit\_ng on Django
* Celery
* PostgreSQL
* Redis
* Elasticsearch

A webserver is not provided. You will have to provide your own webserver to act as a reverse proxy, as well as to serve static files.

## Requirements

* Docker and docker-compose
* At least 3GB of RAM
* At least 1GB of free disk space
* Webserver with reverse proxy support

## Usage

1. Clone this repository and move into the directory
1. Create a directory named ```esdata```
1. Make sure the ```esdata``` directory is readable and writable by UID 1000
1. Run ```docker-compose up``` to start the services
1. Configure your webserver to reverse proxy port 8000 on the Docker host, as well as to serve files in the ```static``` directory at the URL ```/static```
