#!/bin/bash

# load TARGET_HOST
. ./TARGET_HOST

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##
## docker rm
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker rm $TARGET_HOST\n"

docker rm $TARGET_HOST


##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker ps -as\n"

docker ps -as
