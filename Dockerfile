FROM golang:1.9.4-alpine

# Install whatever dependencies you need
RUN apk add --no-cache git

RUN go get -u github.com/kardianos/govendor && \
    go get github.com/mitchellh/gox
