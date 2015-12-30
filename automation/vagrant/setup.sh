#!/bin/bash
#===============================================================================
#
#          FILE:  setup.sh
# 
#         USAGE:  ./setup.sh 
# 
#   DESCRIPTION:  setup script for Vagrant and associated images. Vagrant can 
#									be used for either automation of docker tasks using Puppet or
#									Ansible recipes or playbooks respectively or as a VM 
#									replacement for Docker locally. Vagrant+Docker+Ansible or Puppet
#									is the most common configuration since Docker can be deployed
#									remotely or locally.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   pggsx 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  12/23/2015 01:59:56 AM EST
#      REVISION:  ---
#===============================================================================


fn_distro(){
	arch=$(uname -m)
	kernel=$(uname -r)
	if [ -f /etc/lsb-release ]; then
	    os=$(lsb_release -s -d)
	elif [ -f /etc/debian_version ]; then
			 os="Debian $(cat /etc/debian_version)"
			 sudo apt-get install vagrant
	elif [ -f /etc/redhat-release ]; then
	     os=`cat /etc/redhat-release`
	else
	     os="$(uname -s) $(uname -r)"
	fi
	
}
