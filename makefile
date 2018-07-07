-include .env

# prepares the deployment for a development environment
dev:
	cp dev.env .env

# prepares the deployment for a production environment
prod:
	cp prod.env .env

# deploys the stack
up:
	stat .env
	docker-compose \
		up

down:
	stat .env
	docker-compose \
		down
