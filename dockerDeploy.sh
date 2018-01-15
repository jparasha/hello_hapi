 #!/bin/sh
#
 
 CONTID=$(docker ps -q)
 docker commit ${CONTID} jenkinsdockerdemo
