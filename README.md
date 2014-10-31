## Redis Dockerfile


This repository contains **Dockerfile** of [rsyslog](http://www.rsyslog.com/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/quiver/rsyslog/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [centos official](https://registry.hub.docker.com/_/centos/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/quiver/rsyslog/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull quiver/rsyslog`

   (alternatively, you can build an image from Dockerfile: `docker build -t="quiver/rsyslog" github.com/quiver/docker-rsyslog`)


### Usage

#### Run `rsyslog`

    docker run -d --name rsyslog -p 1514:514 quiver/rsyslog

