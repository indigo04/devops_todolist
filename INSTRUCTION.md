# ToDo App in Docker

## Docker Hub Repository
[Docker Hub Repository Link](https://hub.docker.com/repository/docker/xeomzi/todoapp/general)

## Build and Run Instructions

### Build the Docker Image
To build the Docker image, run the following command:
```bash
docker build -t todoapp:1.0.0 .
```

### Run the Docker Container
To run the Docker container, run the following command:
```bash
docker run -d -p 8080:8080 todoapp:1.0.0
```