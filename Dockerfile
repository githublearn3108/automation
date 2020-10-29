FROM ubuntu
MAINTAINER ageforsign@gmail.com
RUN apt-get install -y apache2 \
  zip \
 unzip
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page255/currency-exchange.zip /var/www/html
RUN unzip currency-exchange.zip
RUN cp -rvf currency-exchange/* .
RUN rm -rf currency-exchange currency-exchange.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80
