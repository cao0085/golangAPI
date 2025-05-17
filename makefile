dev:
	cp .env.dev .env
	ENV_FILE=.env.dev docker-compose up --build

prod:
	cp .env.prod .env
	ENV_FILE=.env.prod docker-compose up --build

down:
	docker-compose down