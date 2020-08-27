#!/bin/bash

export LC_ALL=zh_CN.utf8
export DISPLAY=:0
BASE=$(dirname $(readlink -f $0))
cd $BASE
chown -R admin main/data
exec sudo -u admin wine *.exe

