# Alpine git nginx web deployment

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [To Do](#to-do)


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
git clone https://github.com/Vedant-Mhatre/Alpine-git-Nginx-deployment.git
cd Alpine-git-Nginx-deployment
```
<h2>To pass github repository name on run time: </h2>

Step 2:
Build image with name runtime-server and tag v1, '.' specifies to location of dockerfile 
```
cd Production
docker build -t runtime-server:v1 .
```

Step 3:
Pass the name of your github repository name(without https:// and .git part) using -e and connect it to your localhost on port 8081
```
docker run -e REPONAME=2nd-Sample-Html-Css-Website -p 8081:80 -itd runtime-server:v1
```
The website will be hosted on localhost:8081

<h2>To pass github repository name on build time: </h2>

Step 2:
Pass the name of your github repository name(without https:// and .git part) and build image with name buildtime-server and tag v1, '.' specifies to location of dockerfile 
```
cd Development
docker build --build-arg REPONAME=2nd-Sample-Html-Css-Website -t buildtime-server:v1 .
```

Step 3:
Pass the name of your github repository name(without https:// and .git part) using -e and connect it to your localhost on port 8081
```
docker run -itd -p 8081:80 buildtime-server:v1
```

To run using mount command:
```
docker container create --name newvolumetest -it -p 8081:80 --mount source=tempvol,target=/app buildtime-server:v2
docker container start newvolumetest
```
The website will be hosted on localhost:8081

## To Do

- [ ] For development part use bind mounts 
- [ ] For production part use volumes 
