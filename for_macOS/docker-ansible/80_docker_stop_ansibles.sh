#!/bin/bash

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST


##----------------------------------------------------------------------------##
## docker stop
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker stop $TARGET_HOST01\n"

docker stop $TARGET_HOST01


printf "Execute ... "
yprintf "docker stop $TARGET_HOST02\n"

docker stop $TARGET_HOST02


printf "Execute ... "
yprintf "docker stop $TARGET_ANSIBLE\n"

docker stop $TARGET_ANSIBLE


##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker ps -as\n"

docker ps -as
