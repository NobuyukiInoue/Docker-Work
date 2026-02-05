#!/bin/bash

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST


##----------------------------------------------------------------------------##
## docker-compose
##----------------------------------------------------------------------------##

docker-compose up -d --build


##----------------------------------------------------------------------------##
## docker update
##----------------------------------------------------------------------------##

printf "Execute ... "
printf "docker update --restart=no $TARGET_ANSIBLE\n"

docker update --restart=no $TARGET_ANSIBLE


printf "Execute ... "
yprintf "docker update --restart=no $TARGET_HOST01\n"

docker update --restart=no $TARGET_HOST01


printf "Execute ... " -NoNewline
yprintf "docker update --restart=no $TARGET_HOST02\n"

docker update --restart=no $TARGET_HOST02


printf "##----------------------------------------------------------------------------##"
printf "## docker ps -as"
printf "##----------------------------------------------------------------------------##"
printf "\nExecute ... "
yprintf "docker ps -as\n"

docker ps -as

printf "##----------------------------------------------------------------------------##"
printf "## docker inspect -f"
printf "##----------------------------------------------------------------------------##"
printf "\nExecute ... "
yprintf "docker inspect -f `{{.Name}} {{.HostConfig.RestartPolicy.Name}}` $(docker ps -aq)\n"

docker inspect -f "{{.Name}} {{.HostConfig.RestartPolicy.Name}}" $(docker ps -aq)
