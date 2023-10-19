# Setup commands

build:
	go build -o ./bin/crawler ./cmd/crawler/

run: build
	./bin/crawler

test:
	go test -v ./...