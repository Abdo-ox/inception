FROM debian:oldstable

RUN apt update -y && \
    apt install mariadb-server -y && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*

COPY conf/my.cnf /etc/mysql

COPY tools/script.sh .

RUN mkdir -p /run/mysqld && \
    chmod 777 script.sh && \
    chmod 777 /run/mysqld 

EXPOSE 3306

CMD ["./script.sh"]