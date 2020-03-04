FROM tomcat:8.5.31-jre8

RUN cd /usr/local/tomcat/webapps/ \
	&& rm -rf host-manager/ \
	&& rm -rf manager/ \
	&& rm -rf examples/ \
	&& rm -rf ROOT/ \
	&& rm -f /usr/local/tomcat/conf/server.xml \
	&& rm -f /usr/local/tomcat/conf/context.xml

COPY tomcat-config/* /usr/local/tomcat/conf/
COPY app.war /usr/local/tomcat/webapps/ROOT.war
