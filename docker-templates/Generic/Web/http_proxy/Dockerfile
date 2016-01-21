#Docker Debian template
FROM debian
MAINTAINER pggsx

ENV DEBIAN_FRONTEND noninteractive
RUN adduser --disabled-password --gecos '' deploy
RUN usermod -aG sudo deploy
RUN apt-get -qy update && apt-get -qy upgrade
RUN apt-get install -y build-essential sudo vim git tmux mercurial nginx nginx-common nginx-extras python squid3
RUN sed -i "s/^#acl localnet/acl localnet/" /etc/squid3/squid.conf 
RUN sed -i "s/^#http_access allow localnet/http_access allow localnet/" /etc/squid3/squid.conf
RUN /usr/local/squid/sbin/squid -k parse
RUN /usr/local/squid/sbin/squid -z
RUN /usr/local/squid/sbin/squid
#insert project build
RUN echo "insert git clone here"
RUN echo "build complete"
