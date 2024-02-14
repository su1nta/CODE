FROM php:apache AS php_apache
RUN docker-php-ext-install mysqli
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

FROM mysql:latest as mysql
COPY ./mysql/init/ /docker-entrypoint-initdb.d/
COPY ./mysql/mysql.conf /etc/my.cnf.custom
RUN cat /etc/my.cnf.custom/my.cnf > /etc/my.cnf

FROM php_apache AS final