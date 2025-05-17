dev:
	cp .env.dev .env
	ENV_FILE=.env.dev docker-compose up --build

prod:
	cp .env.prod .env
	ENV_FILE=.env.prod docker-compose up --build

down:
	docker-compose down

shell:
	docker exec -it golangapi-api-1 sh

air:
	docker exec -it golangapi-api-1 air