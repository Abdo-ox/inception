FROM debian:oldstable

RUN apt-get update -y && \
    apt-get install -y wget && \
    apt-get install -y coreutils && \
    apt-get install -y php-fpm php-mysql && \
    mkdir -p /run/php

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && cp -R wp-cli.phar /usr/local/bin/wp

COPY conf/php-fpm-config.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/script.sh .

RUN chmod 777 script.sh
    
EXPOSE 9000

CMD ["./script.sh"]