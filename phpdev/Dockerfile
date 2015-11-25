#Docker Debian template
FROM debian
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive

run adduser deploy
run useradd -g deploy sudo
run apt-get -y update && apt-get -y upgrade
run apt-get install -y php5-mysql nginx mysql-server
#insert project build
run echo "insert git clone here"
run echo "build complete"
