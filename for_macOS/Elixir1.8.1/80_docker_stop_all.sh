#!/bin/bash

# load color set script
. ./99_color.sh

NAMES_WEB="elixir181_myroom_web_1"
NAMES_DB="elixir181_myroom_db_1"

##----------------------------------------------------------------------------##
## web
##----------------------------------------------------------------------------##

printf "Execute ... "
yprintf "docker stop ${NAMES_WEB}\n"

docker stop elixir181_myroom_web_1

##----------------------------------------------------------------------------##
## db
##----------------------------------------------------------------------------##
printf "Execute ... "
yprintf "docker stop ${NAMES_DB}\n"

docker stop elixir181_myroom_db_1

##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##
printf "Execute ... "
yprintf "docker ps -as\n"

docker ps -as

