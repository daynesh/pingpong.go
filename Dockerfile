# Parent image we are building from
FROM golang:1.16 as builder

# Go environment variables
ENV GOOS=linux GOARCH=amd64 CGO_ENABLED=0 GO111MODULE=on

# Copy everything from the current directory to the PWD inside the container
COPY . /build
WORKDIR /build

# Build application
RUN go build -o app

# Start fresh from a smaller image
FROM alpine:latest

# Copy built binary into container
COPY --from=builder /build/app /usr/local/bin/

# Exposing the following ports for our container
EXPOSE 8080

# Instructions for executing our container
ENTRYPOINT ["/usr/local/bin/app"]