FROM centos:latest

LABEL maintainer="dhruvinsoni.tech"

RUN yum -y install httpd

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]

COPY .  /var/www/html/


