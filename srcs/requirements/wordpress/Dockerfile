FROM debian:latest

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install -y coreutils && \
    apt-get install -y php-fpm && \
    apt-get install -y unzip


RUN cd /tmp && \
    wget https://wordpress.org/latest.zip && \
    unzip latest.zip && \
    mkdir /var/www && \
    mkdir /var/www/html && \
    cp -R /tmp/wordpress/* /var/www/html/ && \
    chown -R www-data:www-data /var/www/html/
    
EXPOSE 9000

COPY conf/php-fpm-config.conf /etc/php/7.4/fpm/pool.d/www.conf

CMD ["php-fpm8.2", "-F"]