FROM websphere-liberty:javaee7
RUN installUtility install adminCenter-1.0 --acceptLicense
COPY server.xml /config/
ENV LICENSE accept
#ADD /dropins/SampleWarEAR.ear /config/dropins/	
EXPOSE 80 9080 9448 9443 9060