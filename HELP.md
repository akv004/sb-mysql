# Spring Boot MySQL startup app

# How to run
* sb-mysql> mvn clean install
* sb-mysql> docker-compose up --build


# Docker compose 

```
version: '3.7'

# Define services
services:
# App backend service
app-server:
# Configuration for building the docker image for the backend service
build:
context: . # Use an image built from the specified dockerfile in the `app-server` directory.
dockerfile: Dockerfile
ports:
- "8080:8080" # Forward the exposed port 8080 on the container to port 8080 on the host machine
restart: always

```


#Notes 
* if docker  rmi give error on ubuntu host
  docker rm -f  aa8bf8014f84                                                                                                                                                                                                                                                    1 ↵  630  01:50:40
  Error response from daemon: Could not kill running container , cannot remove - Cannot kill container  signaling init process caused "permission denied"
  
RUN :
  sudo aa-remove-unknown