#!/usr/bin/env bash

#Script created by Knut (adrien.stefanski@gmail.com)


clean=false
function usage()
{
    echo "Stop current letencrypts env"
    echo ""
    echo "./stop.sh"
    echo "\t-h --help"
    echo "\t--clean"
    echo ""
}

while [ "$1" != "" ]; do
    PARAM=`echo $1 | awk -F= '{print $1}'`
    case $PARAM in
	-h | --help)
	    usage
	    exit
	    ;;
	-c | --clean)
	    clean=true
	    ;;
	*)
	    echo "ERROR: unknown parameter \"$PARAM\""
	    usage
	    exit 1
	    ;;
    esac
    shift
done


docker-compose stop
if [ "$clean" = true ] ; then
docker-compose rm
fi
