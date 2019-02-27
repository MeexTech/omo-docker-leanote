#!/bin/sh

if [ -f "/root/init_path.sh" ];then
    /root/init_path.sh
    rm -f /root/init_path.sh
fi

nohup mongod -f /etc/mongod.conf  > /dev/null &

if [ -f "/root/init_mongo.sh" ];then 
    /root/init_mongo.sh
    rm -f /root/init_mongo.sh
fi

cd /root/leanote/bin
bash run.sh
