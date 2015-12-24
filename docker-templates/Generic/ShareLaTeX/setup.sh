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

#checks if docker is installed 

#if not,then installs docker

#builds ShareLaTeX images

#runs docker exec for container to do full Tex-install
#INSTALL ALL THE PACKAGES~!!!(-(0-0)-)

#setups docker command for sharelatex server

#replies that images is ready to run and then runs docker container
sudo bash -c "sudo docker start sharelatex && sudo service mongod start && sudo service redis
start"

#echoes that container was built successfully and then exits
echo "Build Successful"
exit

