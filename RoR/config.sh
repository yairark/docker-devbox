#!/bin/bash
#===============================================================================
#
#          FILE:  config.sh
# 
#         USAGE:  ./config.sh 
# 
#   DESCRIPTION: Configuration script that is used for nginx passenger and 
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  pggsx 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  11/22/2015 01:49:52 PM EST
#      REVISION:  ---
#===============================================================================

awk '^#passenger_/{sub(/^#/"")}' #enable passenger configs for ruby and nginx
sed -i "15/s/ $(passenger-config --root)/g" /etc/nginx/nginx.conf
sudo service nginx restart
sudo passenger-config validate-install
