#Docker Debian template
FROM sharelatex/sharelatex
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive

run apt-get -y update && apt-get -y upgrade
run apt-get -y install vim git mercurial tmux
#insert project build
run echo "insert git clone here"

run echo "build complete"
