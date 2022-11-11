name = .done
up: $(name)
$(name):
	@cd srcs && docker-compose up -d
run:
	@cd srcs && docker-compose up
build :
	@cd srcs && docker-compose build
rmi:
	@docker image rm --force $(docker image ls -q)
rmv:
	@docker volume rm $(docker volume ls -q)
rmc:
	@docker container rm $(docker contianer ls -q)
clean : rmc rmv rmi
