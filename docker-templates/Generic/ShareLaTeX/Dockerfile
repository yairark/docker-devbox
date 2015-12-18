#Docker Debian template
FROM sharelatex/sharelatex
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive

run adduser admin
run useradd -g admin sudo
run apt-get -y update && apt-get -y upgrade
#insert project build
run echo "insert git clone here"

run echo "build complete"
