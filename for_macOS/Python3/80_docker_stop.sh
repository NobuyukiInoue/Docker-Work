#!/bin/bash

# load TARGET_HOST
. ./TARGET_HOST

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##
## docker stop
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker stop $TARGET_HOST\n"

docker stop $TARGET_HOST


##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker ps -as\n"

docker ps -as
