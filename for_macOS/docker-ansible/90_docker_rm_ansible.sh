#!/bin/bash

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST


##----------------------------------------------------------------------------##
## docker rm
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker rm $TARGET_HOST01\n"

docker rm $TARGET_HOST01


printf "Execute ... "
yprintf "docker rm $TARGET_HOST02\n"

docker rm $TARGET_HOST02


printf "Execute ... "
yprintf "docker rm $TARGET_ANSIBLE\n"

docker rm $TARGET_ANSIBLE


##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker ps -as\n"

docker ps -as
