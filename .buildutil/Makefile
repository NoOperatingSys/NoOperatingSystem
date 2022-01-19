setup-build:
	docker build -t noos-build .
build-checkpoint:
	docker run --rm -v $(CURDIR)/:/root/env noos-build make build-x86_64
