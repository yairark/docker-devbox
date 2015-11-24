#Docker Image Template for Redhat Projects
FROM centos
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive

run useradd deploy
run adduser -g deploy sudo
run yum -y update && yum -y upgrade
run echo "build complete"
