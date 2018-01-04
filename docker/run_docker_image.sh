#building an image locally, based on jdk-alpine (a lightweight image base with java)
#this command builds an image and labels it. It uses the "Dockerfile" which is the default file name
docker build --tag powertac/server-distribution ./

#instantiates a container from the just built image and exposes the two ports. 
docker run --name powertac  -v data:/powertac/data -e NB_UID=1000 -e NB_GID=1000 -p 8080:8080 -p 61616:61616 powertac/server-distribution 
