#!/bin/bash

# load TARGET_HOST
. ./TARGET_HOST

# load color set script
. ./99_color.sh

printf "Execute ... "
yprintf "docker exec -it ${HOST_WEB} bash\n"

docker exec -it ${HOST_WEB} bash

