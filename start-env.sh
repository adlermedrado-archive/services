#!/usr/bin/env bash

PARAM_COMMAND=$1
if [ -z $PARAM_COMMAND ] ; then
    echo "You need to say what you want me to do.";
fi

case "$PARAM_COMMAND" in

1)  echo "Starting Services"
    apachectl start && /usr/local/mysql/support-files/mysql.server start
    ;;
2)  echo  "Stoping Services"
    apachectl stop && /usr/local/mysql/support-files/mysql.server stop
    ;;
3)  echo  "Restarting Services"
    apachectl restart && /usr/local/mysql/support-files/mysql.server restart
    ;;
*) echo "Invalid Command"
   ;;
esac