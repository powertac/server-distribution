FROM openjdk:alpine
LABEL maintainer=pascalwhoop
LABEL name=powertac-server

#adding all the needed dependencies, as alpine is a bloody lightweight
RUN apk add --no-cache bash vim git maven python

#TODO adding deps for weather-server and possible other components. It needs to be argued if ONE big container is a better idea or rather many small containers, one for each module.

#docker usually acts mostly on the root filepath, as it's common for only one process to run inside of a container.
WORKDIR /powertac
COPY init.sh ./

#download the server-distribution from github
RUN chmod +x init.sh && \
	mkdir data && \ 
	git clone https://github.com/powertac/server-distribution 

EXPOSE 8080 61616
#and start it up with `mvn -Pweb2` as described in the docs on Github
CMD /powertac/init.sh
