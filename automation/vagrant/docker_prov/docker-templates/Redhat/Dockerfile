#Docker Image Template for Redhat Projects
FROM centos
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive

run yum -y update && yum -y upgrade
run useradd deploy
run yum -y install sudo
run yum -y install vim git mercurial tmux
run echo "build complete"

