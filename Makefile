DIRECTORY=srcs/
OPTIONS=--project-directory ${DIRECTORY}

build:
	docker compose ${OPTIONS} build

restart: stop start

start:
	docker compose ${OPTIONS} up -d

stop:
	docker compose ${OPTIONS} down

clean:
	docker compose ${OPTIONS} down -v

.PHONY: build clean restart start stop
