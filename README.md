# ubuntu-flask-gunicorn-docker
A scalable Flask application using Gunicorn on Ubuntu 18.04 in Docker example. You can also customize and build your own Docker image referencing the example.

## Contents
- Ubuntu 18.04
- Python 3.7.3
- Flask 1.0.3
- Werkzeug 0.15.4
- Gunicorn 19.9.0
- Example "Hello World" Flask App Running on Port 8080

## Build/Customize the image
If you would like to build the image from the Dockerfile. * Note you can modify the Dockerfile and/or app01.py and wsgi.py to customize this to your liking otherwise it will give you the default example Flask app.
```
docker build -t nethacker/ubuntu-flask-gunicorn-docker:latest .
```

## Pull the image
If you would like to pull the default example Flask app image from Docker Hub.
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
If you didn't modify the Dockerfile you should be able to go to localhost port 80 in a browser and get a red "Hello World" message

## Notes
- --shm-size is to set a bigger shared memory size. Gunicorn has a config entry to use shared memory (/dev/shm) vs disk (/tmp) for health checks to avoid timeouts.
- In the /home/ubuntu you can see all the files for Flask as well as the Gunicorn config.
- Gunicorn is tuned for use in a container oriented environment.
