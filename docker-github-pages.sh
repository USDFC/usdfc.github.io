#!/bin/bash
source "${PWD}/.bashrc"

docker run -v "/${PWD}:/usr/src/app" -e JEKYLL_GITHUB_TOKEN=${GITHUB_TOKEN} -p "4000:4000" starefossen/github-pages

#sudo docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs sudo docker rm

#Kill all things
#docker rm $(docker ps -a -q)
