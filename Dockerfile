#FROM php:8.2-ubi8

FROM php:8.0-apache

LABEL maintainer="miguel.vargas@pjedomex.gob.mx"

COPY . /var/www/html/

EXPOSE 80

FROM php:7.2-fpm-alpine3.12