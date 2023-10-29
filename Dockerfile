# sample Dockerfile
FROM alpine
WORKDIR /sql
RUN apk add mysql mysql-client && \
    rm /etc/my.cnf.d/mariadb-server.cnf && \
    mkdir -p /run/mysqld/ && \
    mysql_install_db --user=root --datadir=/sql --skip-test-db
EXPOSE 3306
CMD  mysqld --user=root --datadir=/sql