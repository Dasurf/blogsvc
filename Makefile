IMAGE=blogsvc
CONTAINER=blogsvc_container

run:
	uvicorn app.main:app --reload

docker_build:
	docker build -t $(IMAGE)

docker_up:
	docker run --rm --name $(CONTAINER) -p 8000:8000 $(IMAGE)

docker_down:
	docker stop $(CONTAINER)
	docker rm $(CONTAINER)

#open shell inside the container
shell:
	docker exec -it $(CONTAINER) /bin/bash

.PHONY: run docker_build docker_up docker_down shell
