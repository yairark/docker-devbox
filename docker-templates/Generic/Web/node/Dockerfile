#Docker Debian template
FROM debian:stable
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive
RUN adduser --disabled-password --gecos '' deploy
RUN usermod -aG sudo deploy
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install python-software-properties git build-essential
RUN apt-get install -y software-properties-common
RUN apt-get update
RUN apt-get --force-yes install -y nodejs npm
RUN npm install -g strongloop express express-generator
RUN apt-get install  --force-yes -y build-essential sudo vim git tmux mercurial nginx nginx-common nginx-extras
#insert project build
run echo "insert git clone here"
run echo "build complete"
