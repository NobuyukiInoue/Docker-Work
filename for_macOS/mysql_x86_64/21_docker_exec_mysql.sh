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

# docker exec -it $TARGET_HOST mysql -u root -p
docker exec -it $TARGET_HOST mysql -u root

