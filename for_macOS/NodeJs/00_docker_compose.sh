#!/bin/bash

# load TARGET_HOST
. ./TARGET_HOST

# load color set script
. ./99_color.sh

docker-compose up -d --build

##----------------------------------------------------------------------------##
## docker update
##----------------------------------------------------------------------------##

printf "\nExecute ... "
yprintf "docker update --restart=no $TARGET_HOST\n"

docker update --restart=no $TARGET_HOST


printf "##----------------------------------------------------------------------------##\n"
printf "## docker ps -as\n"
printf "##----------------------------------------------------------------------------##\n"
printf "\nExecute ... "
yprintf "docker ps -as\n"

docker ps -as

printf "##----------------------------------------------------------------------------##\n"
printf "## docker inspect -f\n"
printf "##----------------------------------------------------------------------------##\n"
printf "\nExecute ... "
yprintf "docker inspect -f {{.Name}} {{.HostConfig.RestartPolicy.Name}} $(docker ps -aq)\n"

docker inspect -f "{{.Name}} {{.HostConfig.RestartPolicy.Name}}" $(docker ps -aq)

