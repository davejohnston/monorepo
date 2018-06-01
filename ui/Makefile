COMPONENT := ui

all: build check test

build:
	@echo "Building $(COMPONENT)"
	@go build -o bin/$(COMPONENT) cmd/main.go

check:
	@echo "Checking $(COMPONENT)"

test:
	@echo "Testing $(COMPONENT)"

deploy:
	@echo "Deploy $(COMPONENT)"

image:
	docker build $(DOCKER_OPTS) --rm -t davejohnston/$(COMPONENT):latest -f Dockerfile .
