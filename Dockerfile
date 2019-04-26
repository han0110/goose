# Build stage
FROM golang:1.12-alpine AS builder

RUN apk add --no-cache git gcc musl-dev linux-headers

RUN go get -u github.com/pressly/goose/cmd/goose

# Final stage
FROM alpine:latest

COPY --from=builder /go/bin/goose /usr/local/bin/goose
COPY ./start.sh /start.sh

ENTRYPOINT ["sh", "/start.sh"]
