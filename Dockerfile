FROM websphere-liberty
RUN installUtility install adminCenter-1.0 javaee-7.0 mdb-3.2 jmsMdb-3.2 jms-2.0 --acceptLicense
COPY server.xml /opt/ibm/wlp/usr/servers/defaultServer/
COPY jvm.options /config/jvm.option
RUN chmod 777 -R /opt/ibm/wlp/ /logs
ENV LICENSE accept
EXPOSE 80 9080 9448 9443 9060