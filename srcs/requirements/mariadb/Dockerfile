FROM debain:11

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
    apt install mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 3306

CMD ["mysqld"]