FROM ubuntu:18.04
MAINTAINER Pupil Labs <info@pupil-labs.com>

WORKDIR /root

ADD . /root

ENV PYTHONPATH=$PYTHONPATH:/usr/bin

RUN chmod -R +x scripts && sync &&\
	./scripts/apt_install.sh &&\
	./scripts/node_install.sh

# this container does not do anything
# it will be used to execute bundle scripts via travis ci
CMD ["/bin/bash"]