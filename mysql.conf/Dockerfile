FROM mysql
COPY my.cnf /etc/my.cnf.backup
RUN cat /etc/my.cnf.backup > /etc/my.cnf
COPY init.sql /docker-entrypoint-initdb.d/init.sql