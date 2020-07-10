# Alpine git nginx web deployment

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info
This project uses alpine linux which uses it to clone a repository and deploys those static web files using nginx as server.
* [Why Docker?](#why docker?)
* [Why Alpine?](#why alpine?)
* [Why Nginx?](#why nginx?)
	
## Why Docker?
1. More efficient use of system resources

2. Light weight system that starts fast

3. Faster software delivery cycles

4. Application portability

## Why Alpine?
1. Small

2. Simple

3. Secure

## Why Nginx?
asd


## Technologies
Project is created with:
* Docker: 19.03.12
* Alpine: 3.12.0

	
## Setup
To run this project, install it locally run the following commands:

```
$ git clone https://github.com/Vedant-Mhatre/Alpine-git-Nginx-deployment.git
$ cd Alpine-git-Nginx-deployment
$ docker build -t alpine:v1 .
$ docker run -d -p 8081:80 alpine:v1
```
