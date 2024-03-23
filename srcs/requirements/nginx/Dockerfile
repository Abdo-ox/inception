FROM debian:latest

RUN apt-get update -y && \
    apt-get install -y nginx

COPY ./conf/default.conf /etc/nginx/conf.d

EXPOSE 443

CMD ["nginx", "-g" ,"daemon off;"]