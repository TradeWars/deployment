-include .env

# prepares the deployment for a development environment
dev:
	cp dev.env .env

# prepares the deployment for a production environment
prod:
	cp prod.env .env

# deploys the stack
# COMPOSE_CONVERT_WINDOWS_PATHS is necessary for binding the docker unix socket
# while deploying on Windows.
up:
	stat .env
	COMPOSE_CONVERT_WINDOWS_PATHS=1 \
	docker-compose \
		up \
		--detach

down:
	stat .env
	COMPOSE_CONVERT_WINDOWS_PATHS=1 \
	docker-compose \
		down
