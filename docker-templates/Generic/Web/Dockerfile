#Docker Debian template
FROM debian
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive
RUN adduser --disabled-password --gecos '' deploy
run apt-get -y update && apt-get -y upgrade
run apt-get install -y build-essential sudo vim git tmux mercurial nginx nginx-common nginx-extras
run useradd -g deploy sudo
#insert project build
run echo "insert git clone here"
run echo "build complete"
