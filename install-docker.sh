#!/bin/bash
brew install docker 
brew install docker-machine
docker-machine create --driver virtualbox default
docker-machine env default
eval $(docker-machine env default)
docker-machine stop default
mv ~/.docker /goinfre/$1/
ln -s /goinfre/$1/.docker ~/.docker
docker-machine start default

