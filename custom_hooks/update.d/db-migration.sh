#!/bin/bash

#echo $@;
count=`git show --name-status ${2}..${3} | egrep '^(M|D)\s' | egrep '\sdb\/migrations\/\S' | wc -l`
if ((count > 0)); then echo 'db migrations 目录下的文件不允许修改和删除'; fi
exit $count
