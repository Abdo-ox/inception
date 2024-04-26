DOCKER_COMPOSE=srcs/docker-compose.yml
DIRDB=/home/ajari/inception/data/db
DIRWP=/home/ajari/inception/data/wp

run: $(DOCKER_COMPOSE) $(DIRWP) $(DIRDB)
	sudo docker-compose -f $(DOCKER_COMPOSE) up --build

rerun: $(DOCKER_COMPOSE)
	sudo docker-compose -f $(DOCKER_COMPOSE) down
	sudo docker system prune -af
	sudo rm -rf $(DIRDB) $(DIRWP)
	make run
img:
	sudo docker images -a
	
ps:
	sudo docker ps -a
rmv:
	sudo docker volume prune 
$(DIRWP):
	mkdir -p  $(DIRWP)

 $(DIRDB):
	mkdir -p  $(DIRDB)
	