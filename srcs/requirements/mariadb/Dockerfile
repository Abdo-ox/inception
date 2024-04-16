FROM debian:latest

RUN apt update -y && \
    apt install mariadb-server -y && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*

COPY tools/script.sh .

COPY conf/my.cnf /etc/mysql/mariadb.conf.d

COPY tools/init.sql /docker-entrypoint-initdb.d/

RUN mkdir -p /run/mysqld && \
    chmod 777 script.sh && \
    chmod 777 docker-entrypoint-initdb.d/init.sql && \
    chmod 777 /run/mysqld

EXPOSE 3306

CMD ["./script.sh"]