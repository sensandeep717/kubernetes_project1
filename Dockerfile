FROM ubuntu:22.04

LABEL maintainer="sensandeep717@gmail.com"

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

COPY website/ /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
