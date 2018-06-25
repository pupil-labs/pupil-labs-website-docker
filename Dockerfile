FROM node:10.5-slim
MAINTAINER Pupil Labs <info@pupil-labs.com>

## for apt to be noninteractive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

WORKDIR /root

ADD . /root

RUN yarn install

# this container does not do anything
# it will be used to execute bundle scripts via travis ci
CMD ["/bin/bash"]