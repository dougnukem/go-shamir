all: test

.PHONY: all

dep:
	go mod download

.PHONY: dep

build:
	go build -o bin/go-shamir main.go

.PHONY: build

vendor:
	go mod vendor

.PHONY: build

test: build
	./tests/shamir

.PHONY: test
