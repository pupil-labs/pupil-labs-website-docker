#!/bin/sh
docker container prune -f
docker images -qf dangling=true | xargs docker rmi