[![Docker Image CI](https://github.com/daynesh/pingpong.go/actions/workflows/docker-image.yml/badge.svg)](https://github.com/daynesh/pingpong.go/actions/workflows/docker-image.yml)

# PingPong REST API In Go
This is a simple REST API written in Go that simply returns a `{"message":"pong"}` response when requests are sent to this application's `/ping` endpoint.

## Building the application
To build the container image including the compilation of the application itself, run the following:
```
$ docker build -t pingpong:latest .
```

## Running the container
To execute the application as a container, run the following:
```
$ docker container run -p 8080:8080 --rm --name pingpong pingpong
```
