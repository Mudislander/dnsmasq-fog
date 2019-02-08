# Dnsmasq-fog Docker

This project is maintained by [Linkat](http://linkat.xtec.cat).

In this repository there are provided the files for building a docker image for running a dnsmasq service only for PXE boot configuration. This service is part of the Linkat's project [FOG Project in Docker](https://hub.docker.com/r/linkat/fogproject) but it can be used as standalone.


## DockerHub

You can find the docker image releases at https://hub.docker.com/r/linkat/dnsmasq-fog

## Repository

Public repository in GitLab: https://gitlab.com/linkatedu/dnsmasq-fog

## Releases

Code releases are found at https://gitlab.com/linkatedu/dnsmasq-fog/tags

Docker image releases are found at https://hub.docker.com/r/linkat/dnsmasq-fog/tags


## Build

The [Dockerfile](https://gitlab.com/linkatedu/dnsmasq-fog/blob/master/Dockerfile) file defines all needed for building the image. It can be built with:

```
VERSION=0.0.1
docker build -t linkat/dnsmasq-fog:$VERSION .
```


**(!)** *The previous version code `0.0.1` is an example.*

## Run

### Environment parameters

The following environment variables must be defined:

* **TFTP_SERVER_IP**. The IP address assigned to the TFTP server

### docker-run

```
docker run -d --restart=always --network="host" --cap-add=NET_ADMIN -e TFTP_SERVER_IP=192.168.1.225 --name dnsmasq-fog linkat/dnsmasq-fog
```

### docker-compose

Or using [docker-compose.yml](https://gitlab.com/linkatedu/dnsmasq-fog/blob/master/docker-compose.yml) file:

```
docker-compose up -d
```
