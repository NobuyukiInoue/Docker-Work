#!/bin/bash

# load TARGET_HOST
. ./TARGET_HOST

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##
## web
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker start ${NAMES_WEB}\n"

docker start elixir181_myroom_web_1

##----------------------------------------------------------------------------##
## db
##----------------------------------------------------------------------------##
printf "Execute ... "
yprintf "docker start ${NAMES_DB}\n"

docker start elixir181_myroom_db_1

##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##
printf "Execute ... "
yprintf "docker ps -as\n"

docker ps -as
