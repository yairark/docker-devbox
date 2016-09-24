#Docker Debian template
FROM debian:stable
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive
run adduser --disabled-password --gecos '' deploy
run usermod -aG sudo deploy
run apt-get -y update && apt-get -y upgrade
run apt-get -y install vim git mercurial tmux sudo
#insert project build
run echo "insert git clone here"
run echo "build complete"
