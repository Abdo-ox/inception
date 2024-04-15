FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install nginx && \
    apt-get install openssl

COPY ./conf/nginx.conf /etc/nginx

COPY ./tools/script.sh .

RUN mkdir -p /etc/nginx/ssl && \
    chmod 777 script.sh

EXPOSE 443

CMD ["./script.sh"]