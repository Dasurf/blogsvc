run:
	docker compose up

build:
	docker compose build

shell:
	docker compose run --rm blogsvc bash

shelldb:
	docker exec it blogdb psql -U postgres -d blogdb

#open shell inside the container
down:
	docker compose down

.PHONY: run build shell shelldb down
