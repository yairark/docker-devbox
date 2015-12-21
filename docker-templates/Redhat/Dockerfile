#Docker Image Template for Redhat Projects
FROM centos
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive

run adduser --disabled-password --gecos '' deploy
run adduser -g deploy sudo
run yum -y update && yum -y upgrade
run apt-get -y install vim git mercurial tmux
run echo "build complete"

