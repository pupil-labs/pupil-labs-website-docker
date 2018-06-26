# pupil-labs-website-docker
Docker image for pupil-labs-website 

## Setup

Install docker CE on your host machine. Follow instructions [here](https://docs.docker.com/install/). 

### Docker on Linux

Follow installation instructions for [Docker Community Edition (CE)](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/). 

## Build Docker Image

Build the docker image. This will use the `Dockerfile` by default.

```bash
cd pupil-docker-ubuntu
docker build . --file 'Dockerfile' --tag 'pupillabs/pupil-labs-website:1.0'
```

##Debugging

You can run/enter the container like so.

```bash
docker run -d --name <container-name> <name or id of image> tail -f /dev/null   
docker exec -it <container name> bash
```