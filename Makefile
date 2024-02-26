.DEFAULT_GOAL := build
HAS_UPX := $(shell command -v upx 2> /dev/null)

.PHONY: build
build:
	go build -ldflags="-X main.version=v2-`git rev-parse --short HEAD`" -o ./lark2md cmd/*.go
ifneq ($(and $(COMPRESS),$(HAS_UPX)),)
	upx -9 ./lark2md
endif

.PHONY: test
test:
	go test ./...

.PHONY: server
server:
	go build -o ./lark2md4web web/*.go

.PHONY: image
image:
	docker build -t lark2md .

.PHONY: docker
docker:
	docker run -it --rm -p 8080:8080 lark2md

.PHONY: clean
clean:  ## Clean build bundles
	rm -f ./lark2md ./lark2md4web

.PHONY: format
format:
	gofmt -l -w .
