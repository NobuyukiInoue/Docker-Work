#!/bin/bash

service openbsd-inetd start

cp -p /app/fd2rc.txt /root/.fd2rc
cp -p /app/vimrc.txt /root/.vimrc

echo "##------------------------------------------##"
echo "## Password for root"
echo "##------------------------------------------##"

passwd


echo "##------------------------------------------##"
echo "## useradd -u 1000 -m username -s /bin/bash"
echo "##------------------------------------------##"

useradd -u 1000 -m username -s /bin/bash

echo "##------------------------------------------##"
echo "## Password for username"
echo "##------------------------------------------##"

passwd username
