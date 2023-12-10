FROM php:apache AS php_apache
ARG BUILD_DATE
RUN docker-php-ext-install mysqli
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

FROM mysql:latest as mysql
ARG BUILD_DATE
COPY ./mysql/sql/ /docker-entrypoint-initdb.d/
COPY ./mysql/mysql.conf /etc/my.cnf.custom
RUN cat /etc/my.cnf.custom/my.cnf > /etc/my.cnf

FROM phpmyadmin AS phpmyadmin
ARG BUILD_DATE
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

FROM php_apache AS final