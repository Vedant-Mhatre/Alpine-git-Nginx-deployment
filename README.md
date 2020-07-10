# Alpine git nginx web deployment

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info
This project uses alpine linux which uses it to clone a repository and deploys those static web files using nginx as server.
	* [Why Docker?](#Why Docker?)
	* [Why Alpine?](#Why Alpine?)
	* [Why Nginx?](#Why Nginx?)
	
	
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
