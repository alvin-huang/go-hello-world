SRCDIR                  := $(shell pwd)
DOCKER_TAG               = go-hello-world:latest
    
build: docker
	docker run --rm -v $(CURDIR):/go-hello-world -w /go-hello-world $(DOCKER_TAG) \
		sh -c 'gox -osarch="darwin/amd64 linux/amd64"'

docker:
	docker build -t $(DOCKER_TAG) .

.PHONY: docker build
