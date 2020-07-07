FROM alpine
RUN apk update

RUN apk add nginx

adduser -D -g 'www' www

mkdir /www
chown -R www:www /var/lib/nginx
chown -R www:www /www

RUN apk add git
RUN git clone https://github.com/Vedant-Mhatre/Sample-Html-Css-Website.git
RUN ls m
