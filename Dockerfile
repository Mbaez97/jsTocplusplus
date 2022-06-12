FROM ubuntu:latest

RUN apt-get update 
RUN apt-get install -y \ 
    flex \
    build-essential \
    libfl-dev \
    libbison-dev \
    bison 

COPY . /app

WORKDIR /app



