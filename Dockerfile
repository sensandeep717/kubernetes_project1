FROM ubuntu:22.04

LABEL maintainer="sensandeep717@gmail.com"

RUN apt-get update && \
    apt-get install -y apache2 zip unzip curl ca-certificates && \
    apt-get clean

WORKDIR /var/www/html

RUN curl -L --retry 5 --retry-delay 5 \
    https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip \
    -o photogenic.zip && \
    unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

