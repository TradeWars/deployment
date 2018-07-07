include .env

# prepares the deployment for a development environment
dev:
	cp dev.env .env

# prepares the deployment for a production environment
prod:
	cp prod.env .env

# deploys the stack
up:
	docker-compose \
		up
