#!/bin/bash
#writen by zhouguangyou
#generate the supervisord.conf
#pip install supervisor
#echo_supervisord_conf > supervisord.conf

start(){
  supervisord -c supervisor.conf
}

stop(){
   ps aux | grep supervisord | awk '{print $2}' | xargs kill 
}

create(){
    echo_supervisord_conf > supervisor.conf
}

help(){
  echo $"Usage: $0 {start | create | stop | help}"
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  create)
    create
    ;;
  help)
    help
    ;;
   *)
    help
    exit 2
esac


