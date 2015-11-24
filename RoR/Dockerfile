#Docker image file for Ruby-on-Rails Web Development
FROM ubuntu
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive

run useradd deploy
run adduser deploy sudo
run  echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main" > /etc/apt/sources.list.d/passenger.list
run apt-get install -y apt-transport-https
run apt-get -y update && apt-get -y upgrade
run apt-get install -y --force-yes vim wget curl tmux zsh build-essential git mercurial subversion nginx nginx-extras passenger
run apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
run gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

run curl -sSL https://get.rvm.io | bash -s stable --ruby 
run curl -sSL https://get.rvm.io | bash -s stable --rails
#insert git clone of RoR CMS
run echo "insert git clone here"
run bin/bash -c "source /usr/local/rvm/scripts/rvm"
run echo "running Passenger config script"
run sed -i "/#passenger_/s/#//g" /etc/nginx/nginx.conf
#enable passenger configs for ruby and nginxrun sed -i "15/.*/ \t $(passenger-config --root)/g" /etc/nginx/nginx.conf
run sed -i "15s/.*/ \t $(passenger-config --root)/g" /etc/nginx/nginx.conf
run echo "config script complete"
run echo "build complete"
