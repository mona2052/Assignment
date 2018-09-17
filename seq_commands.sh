#!/bin/bash

#git command to checkout repository
cd /home/testuser/mycode/
git clone https://github.com/mona2052/assignment.git

#change owner
chown -R username:testuser /home/testuser/mycode

#archive folder
tar -zcvf mycode.tar.gz /home/testuser/mycode

#checksum
cksum mycode.tar.gz

#scp
#need remote system dns
scp mycode.tar.gz testuser@remote.test.com:/home/testuser/remotecode/

#stop service node
sudo service node stop

#move archive
mv mycode.tar.gz /user/node/data/

#unarchive
tar -xzf mycode.tar.gz

#start service node
sudo service node start

#check endpoint
status_code=$(curl --write-out %{http_code} --silent --output /dev/null http://remote.test.com/status)

if [[ "$status_code" -ne 200 ]] ; then
  echo "Site status changed to $status_code"
else
  echo "Its OK $status_code"
fi
