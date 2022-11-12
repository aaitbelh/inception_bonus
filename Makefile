name = .done
up: $(name)
$(name):
	@cd srcs && docker-compose up -d
run:
	@cd srcs && docker-compose up
build :
	@cd srcs && docker-compose build
rmi:
	@docker image ls -q | xargs docker image rm --force
rmv:
	@docker volume ls -q | xargs docker volume rm --force
rmc:
	@docker container ls -a -q | xargs docker container rm --force

clean: rmi rmc rmv
