FROM ubuntu:14.04
MAINTAINER Mario Ezquerro

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y mysql-server dnsutils

ADD my.conf /etc/mysql/conf.d/my.conf
ADD script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh

CMD ["/usr/local/bin/script.sh"]