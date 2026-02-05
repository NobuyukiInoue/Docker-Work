#!/bin/bash

# load TARGET_HOST
. ./99_TARGET_HOST.sh

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##$
## nodejs$
##----------------------------------------------------------------------------##$

printf "Execute ... "
yprintf "docker exec -it $TARGET_HOST bash\n"

# docker exec -it $TARGET_HOST psql -U postgres -P
docker exec -it $TARGET_HOST psql -U postgres

