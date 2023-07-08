.PHONY: ALL

build:
	docker-compose build

up:
	docker-compose up -d postgres
	docker-compose up -d redis
	docker-compose up -d nginx

down:
	docker-compose down

backend:
	docker-compose run --rm backend
frontend:
	docker-compose run --rm frontend
