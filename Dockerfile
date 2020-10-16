FROM centos:latest
MAINTAINER ageforsign@gmail.com
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/piuma.zip /var/www/html
WORKDIR /var/www/html
RUN unzip piuma.zip
RUN cp -rvf piuma/* .
RUN rm -rf piuma piuma.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
