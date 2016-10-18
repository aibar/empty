#!/bin/bash

sudo rm -rf out && mkdir -v out
cd out

mkdir -v etc usr
ln -s /bin sbin
ln -s /bin usr/bin

echo root:x:0:0:root:/:/dev/null > etc/passwd
echo root:x:0: > etc/group

sudo chown -R 0:0 ./

tar czfv ../fs.tar.gz ./*