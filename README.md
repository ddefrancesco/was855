# WebSphere Application Server Developer Edition Liberty on OpenJDK JRE 7 image for Docker

The Dockerfile below is used to build the `was855-jre7:javaee7` image on [Docker Hub](https://hub.docker.com/r/ddefrancesco/was855-jre7/). The image contains IBM WebSphere Application Server Developer Edition Liberty with Java EE 7 Profile features and an OpenJDK Java Runtime Environment V7.


#Dockerfile

FROM websphere-liberty:javaee7
RUN installUtility install adminCenter-1.0 --acceptLicense
COPY server.xml /config/
ENV LICENSE accept
##ADD /dropins/SampleWarEAR.ear /config/dropins/	
EXPOSE 80 9080 9448 9443 9060

