#!/bin/bash

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST


##----------------------------------------------------------------------------##
## docker start
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker start $TARGET_ANSIBLE\n"

docker start $TARGET_ANSIBLE


printf "Execute ... "
yprintf "docker start $TARGET_HOST01\n"

docker start $TARGET_HOST01


printf "Execute ... "
yprintf "docker start $TARGET_HOST01\n"

docker start $TARGET_HOST02


##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##
printf "Execute ... "
yprintf "docker ps -as\n"

docker ps -as
