#!/usr/bin/env bash
set -e

action=$1

YELLOW='\033[1;33m'
CLEAR='\033[0m'

build() {
  echo -e "${YELLOW}Building petto_app_image...${CLEAR}"
  docker build -t petto-app-image -f Dockerfile .
  echo -e "${YELLOW}Starting petto containers quietly...${CLEAR}"
  docker-compose up -d
}

clean() {
  echo -e "${YELLOW}Stopping petto containers...${CLEAR}"
  docker stop $(docker ps --all --filter name=petto -q)
  echo -e "${YELLOW}Removing petto containers...${CLEAR}"
  docker rm $(docker ps --all --filter name=petto -q)
  echo -e "${YELLOW}Removing petto images...${CLEAR}"
  docker rmi $(docker images --all --filter=reference='petto*' -q)
}

if [[ $action == build ]]
then
  build
elif [[ $action == clean ]]
then
  clean
elif [[ $action == rebuild ]]
then
  clean
  build
fi