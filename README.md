# ubuntu-flask-gunicorn-docker
A scalable Flask application using Gunicorn on Ubuntu 18.04 example. You can customize this to your liking or test the
pre-built Docker image example.

## Contents
- Ubuntu 18.04
- Python 3.7.3
- Flask 1.0.3
- Werkzeug 0.15.4
- Gunicorn 19.9.0
- Example "Hello World" Flask App Running on Port 8080

## Build/Customize the image
If you would like to build the image from the Dockerfile.
```
docker build -t nethacker/ubuntu-flask-gunicorn-docker:latest .
```

## Pull the image
If you would like to pull the image from Docker Hub.
```
docker pull nethacker/ubuntu-18-04-flask-gunicorn-example:latest
```

## Start a container
If you followed the Build path above.
```
docker run --shm-size=256m --detach -p 80:8080 nethacker/ubuntu-flask-gunicorn-docker:latest
```
If you followed the Pull path above.
```
docker run --shm-size=256m --detach -p 80:8080 nethacker/ubuntu-18-04-flask-gunicorn-example:latest
```

## Testing
You should be able to go to localhost port 80 in a browser and get a red "Hello World" message

