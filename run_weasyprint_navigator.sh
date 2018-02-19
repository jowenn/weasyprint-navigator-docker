#!/bin/bash

case $1 in
	new)
		docker run -d --name weasyprint_navigator -p127.0.0.1:5000:5000 weasyprint_navigator
		;;
	start)
		docker start weasyprint_navigator
		;;
	stop)
		docker stop weasyprint_navigator
		;;
	*)	
		echo "new start stop needed"
		;;
esac

docker inspect --format '{{ .NetworkSettings.IPAddress }}' weasyprint_navigator
