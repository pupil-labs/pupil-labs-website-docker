FROM ubuntu:18.04
MAINTAINER Pupil Labs <info@pupil-labs.com>

WORKDIR /root

ADD . /root

ENV NODE_VERSION 10.5.0
ENV PYTHONPATH=$PYTHONPATH:/usr/bin

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN chmod -R +x scripts && sync &&\
	./scripts/apt_install.sh &&\
	./scripts/nvm_install.sh &&\
	./scripts/node_install.sh

# this container does not do anything
# it will be used to execute bundle scripts via travis ci
CMD ["/bin/bash"]