# Alpine git nginx web deployment

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info
This project uses alpine linux which uses it to clone a repository and deploys those static web files using nginx as server.
* [Why Docker?](#Why\ Docker?)
* [Why Alpine?](#why-alpine)
* [Why Nginx?](#Why-Nginx?)
	
## Why Docker?
1. More efficient use of system resources

2. Light weight system that starts fast

3. Faster software delivery cycles

4. Application portability

## Why Alpine?
1. Small Size: less than 8 MB

2. Simple: built around musl libc and busybox using it's own package manager APK which is easy to use

3. Secure

## Why Nginx?
1. Faster than Apache in many cases

2. Light weight and easy to configure

3. Load balancer support and designed for high concurrency


## Technologies
Project is created with:
* Docker: 19.03.12
* Alpine: 3.12.0

	
## Setup
To run this project, install it locally run the following commands:

Step 1:
Clone this github repo and change directory 
```
$ git clone https://github.com/Vedant-Mhatre/Alpine-git-Nginx-deployment.git
$ cd Alpine-git-Nginx-deployment
```

Step 2:
Build image with name alpine and tag v1, . specifies to location of dockerfile 
```$ docker build -t alpine:v1 .
```

Step 3:
Run the built image and connect it to your localhost on port 8081
```$ docker run -d -p 8081:80 alpine:v1

```
