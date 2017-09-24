FROM websphere-liberty:javaee7
COPY server.xml /config/
ADD /dropins/SampleWarEAR.ear /config/dropins/	
EXPOSE 80 9080 9448 9443 9060