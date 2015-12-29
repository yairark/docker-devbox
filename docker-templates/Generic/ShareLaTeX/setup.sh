#!/bin/bash
#===============================================================================
#
#          FILE:  setup.sh
# 
#         USAGE:  ./setup.sh 
# 
#   DESCRIPTION:  Setup script for ShareLaTeX Docker Server
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  12/24/2015 12:31:34 PM EST
#      REVISION:  ---
#===============================================================================
docker_ip=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' $(docker ps | awk -v i=2
-v j=1 'FNR == i {print $j}')
#checks if docker is installed 
if [ $(dpkg-query -W -f='${Status}' docker 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
	  apt-get install docker;
	fi
# starts docker service 
sudo service docker start;
#builds ShareLaTeX images
docker build -t "pggsx:sharelatex" .;

#setups docker command for sharelatex server 
docker run -d \
	  -v ~/sharelatex_data:/var/lib/sharelatex \
		  -p 5000:80 \
			  --name=sharelatex \
				sharelatex/sharelatex

#runs docker exec for container to do full Tex-install
#INSTALL ALL THE PACKAGES~!!!(-(0-0)-)
docker exec sharelatex tlmgr install scheme-full;

#insert
sudo sed -i "i/63s/.*/bind $IP /g" /etc/redis.conf 
sudo sed -i "i/6s/.*/bind $IP /g" /etc/mongod.conf 
#shutdowns sharelatex server
docker stop sharelatex;
#replies that images is ready to run and then runs docker container
echo "Image was built successfully"
sudo bash -c "sudo docker start sharelatex && sudo service mongod start && sudo service redis
start"

#echoes that container was built successfully and then exits
echo "Container is now running~! Access via localhost:5000"
exit

