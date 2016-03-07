#!/bin/bash
#===============================================================================
#
#          FILE:  setup.sh
# 
#         USAGE:  ./setup.sh 
# 
#   DESCRIPTION:  Docker-Bench-Security Setup Script. This script can be used
#	 for installing and running the docker-bench-container that is can be used for 
#  for security auditing containers.
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   pggsx 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  02/06/2016 06:31:28 PM EST
#      REVISION:  ---
#===============================================================================

docker run -it --net host --pid host --cap-add audit_control \
	    -v /var/lib:/var/lib \
			    -v /var/run/docker.sock:/var/run/docker.sock \
					    -v /usr/lib/systemd:/usr/lib/systemd \
							    -v /etc:/etc --label docker_bench_security \
									    docker/docker-bench-security
