#!/bin/bash

# load TARGET_HOST
. ./99_TARGET_HOST.sh

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##
## nodejs linux
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
