FROM alpine:3.3
MAINTAINER Adrien STEFANSKI <adrien.stefanski@gmail.com>
RUN apk add --no-cache subversion apache2-webdav apache2-utils mod_dav_svn
RUN mkdir /run/apache2
RUN mkdir /var/svnrepo
COPY ./conf/httpd.conf /etc/apache2/
COPY ./conf/svn /etc/svn
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]