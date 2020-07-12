# Alpine git nginx web deployment

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info
This project uses alpine linux which uses it to clone a repository and deploys those static web files using nginx as server.
	
In Development folder, user can pass their github repository name while building image and alpine linux clones that repo and uses nginx to deploy the website.

In Production folder, user can pass their github repository name while running image and the rest same as above. If user does not pass github repo name a sample website is cloned from my [github repo](https://github.com/Vedant-Mhatre/Sample-Html-Css-Website)


## Technologies
Project is created with:
* Docker: 19.03.12

	
## Setup
To run this project, install it locally run the following commands:

Step 1:
Clone this github repo and change directory 
```
$ git clone https://github.com/Vedant-Mhatre/Alpine-git-Nginx-deployment.git
$ cd Alpine-git-Nginx-deployment
```

Step 2:
Build image with name alpine and tag v1, '.' specifies to location of dockerfile 
```
$ docker build -t alpine:v1 .
```

Step 3:
Run the built image and connect it to your localhost on port 8081
```
$ docker run -d -p 8081:80 alpine:v1
```
