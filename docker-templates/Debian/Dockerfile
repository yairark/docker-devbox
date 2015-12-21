#Docker Debian template
FROM debian
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive
run adduser --disabled-password --gecos '' deploy
run useradd -g deploy sudo
run apt-get -y update && apt-get -y upgrade
run apt-get -y install vim git mercurial tmux
#insert project build
run echo "insert git clone here"
run echo "build complete"
