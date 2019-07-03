# VERSION 1.0
# AUTHOR: Phil Chen
# DESCRIPTION: Scalable Flask Gunicorn Web Application Example on Ubuntu 18.04
# SOURCE: https://github.com/nethacker/ubuntu-flask-gunicorn-docker

FROM nethacker/ubuntu-18-04-python-3
RUN pip install gunicorn flask && useradd -m ubuntu
ENV HOME=/home/ubuntu
USER ubuntu
COPY app01.py wsgi.py gunicorn_config.py /home/ubuntu/
WORKDIR /home/ubuntu/
EXPOSE 8080
CMD ["gunicorn", "-c", "gunicorn_config.py", "wsgi:hello"]
