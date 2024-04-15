FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install -y coreutils && \
    apt-get install -y php-fpm php-mysql && \
    apt-get install -y unzip

RUN wget https://wordpress.org/latest.zip && \
    unzip latest.zip && \
    mkdir -p /var/www/html
    
EXPOSE 9000

COPY conf/php-fpm-config.conf /etc/php/8.2/fpm/pool.d/www.conf

COPY tools/script.sh .

RUN chmod 777 script.sh

CMD ["./script.sh"]
