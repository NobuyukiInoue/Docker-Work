#!/bin/bash

# load TARGET_HOST
. ./TARGET_HOST

# load color set script
. ./99_color.sh

##----------------------------------------------------------------------------##$
## docker exec
##----------------------------------------------------------------------------##$

printf "Execute ... "
yprintf "docker exec -it $TARGET_HOST bash\n"

docker exec -it $TARGET_HOST bash

