DOCKER_COMPOSE=srcs/docker-compose.yml

all: $(DOCKER_COMPOSE)
	sudo docker-compose -f $(DOCKER_COMPOSE) up --build

re: $(DOCKER_COMPOSE)
	sudo docker-compose -f $(DOCKER_COMPOSE) down
	sudo docker system prune -af
	make

img:
	sudo docker images -a
	
ps:
	sudo docker ps -a

rmv:
	sudo docker volume prune 

stop: $(DOCKER_COMPOSE)
	sudo docker-compose -f $(DOCKER_COMPOSE) down