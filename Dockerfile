FROM python:3.7-alpine
MAINTAINER thehimu1990@gmail.com

# recommeded for docker
ENV PYTHONUNBUFFERED 1

#Install all the project dependencies from "system directory" to docker image
COPY ./requirements.txt /requirements.txt

# install the dependencies in the docker image
RUN pip install -r /requirements.txt

### create directory in docker for application storage
# creates empty folder in docker image
RUN mkdir /app
# sitches to default directory
WORKDIR /app
# copy all contencts from local machine to docker image folder
COPY ./app /app

# add user
RUN adduser -D user
USER user


