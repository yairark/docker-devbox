#Appsec Docker Container to practice and test Appsec related skills
#WebGoat Docker container
FROM debian
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive

run adduser --disabled-password --gecos '' deploy
run useradd -g deploy sudo
run apt-get -y update && apt-get -y upgrade
run apt-get	install -y nginx tmux vim git mercurial php5-mysql mysql-server openjdk-7-jre
run apt-get install -y curl
run curl -O https://s3.amazonaws.com/webgoat-war/webgoat-container-7.0-SNAPSHOT-war-exec.jar
run echo "webgoat d/l complete"
run java -jar webgoat-container-7.0-SNAPSHOT-war-exec.jar
#insert project build
run echo "webgoat setup complete"
run echo "build complete"
