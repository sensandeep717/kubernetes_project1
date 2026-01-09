FROM ubuntu:22.04

LABEL maintainer="sensandeep717@gmail.com"

RUN apt-get update && \
    apt-get install -y apache2 zip unzip wget && \
    apt-get clean

WORKDIR /var/www/html

RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip && \
    unzip photogenic.zip && \
    cp -rvf photogenic/* . && \
    rm -rf photogenic photogenic.zip

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
