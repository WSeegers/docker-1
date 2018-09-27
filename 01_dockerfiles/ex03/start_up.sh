#!bin/sh
/etc/init.d/postgresql start
runuser -l git -c '/home/git/gogs/gogs web'
