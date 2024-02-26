ARG GO_VERSION=1.21
FROM golang:${GO_VERSION}-alpine AS builder

WORKDIR /lark2md

COPY go.mod go.sum ./
RUN go mod download

COPY core  ./core
COPY web ./web
COPY utils ./utils
RUN go build -o ./lark2md4web ./web/*.go

FROM alpine:latest
RUN apk update && apk add --no-cache ca-certificates

ENV GIN_MODE=release

COPY --from=builder /lark2md/lark2md4web ./

EXPOSE 8080

ENTRYPOINT ["./lark2md4web"]
