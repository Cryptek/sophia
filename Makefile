.DEFAULT_GOAL := build

.PHONY:clean fmt vet build
fmt:
		go fmt ./...

vet: fmt
		go vet ./...

build: vet clean
		go build

clean:
		go clean ./...