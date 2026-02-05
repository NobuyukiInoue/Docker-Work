#!/bin/bash

# load TARGET_HOST
. ./TARGET_HOST

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##
## docker start
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker start\n"

docker start $TARGET_HOST


##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##
printf "Execute ... "
yprintf "docker ps -as\n"

docker ps -as
