 CONTID=$(docker ps -q)
 if [ -n "$CONTID" ]; then
 	 # Do something when var is non-zero length
  	docker commit ${CONTID} jenkinsdockerdemo

 else 
	docker run -d -p 3000:3000 jenkinsdockerdemo

 fi
