COMPONENT := edge

all: build check test

build:
	@echo "Building $(COMPONENT)"
	go build -o bin/$(COMPONENT) cmd/main.go

check:
	@echo "Checking $(COMPONENT)"

test:
	@echo "Testing $(COMPONENT)"

deploy:
	@echo "Deploy $(COMPONENT)"

image:
	@docker build --rm $(DOCKER_OPTS) -t davejohnston/$(COMPONENT):latest -f Dockerfile .
