FROM debian:latest

RUN apt update -y && \
    apt install mariadb-server -y && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*

COPY tools/script.sh .

COPY conf/my.cnf /etc/mysql/mariadb.conf.d

RUN chmod 777 script.sh

EXPOSE 3306

CMD ["./script.sh"]