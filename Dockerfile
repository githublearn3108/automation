FROM ubuntu
MAINTAINER ageforsign@gmail.com
RUN apt-get update && apt-get install -y apache2 \
  zip \
 unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80
