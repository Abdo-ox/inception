
DOCKERFILES= srcs/requirements/nginx/Dockerfile \
			srcs/requirements/mariadb/Dockerfile \
			srcs/requirements/wordpress/Dockerfile 

up: $(DOCKERFILES)
	sudo docker build -t nginx srcs/requirements/nginx
	sudo docker build -t nginx srcs/requirements/wordpress
	sudo docker build -t nginx srcs/requirements/mariadb
