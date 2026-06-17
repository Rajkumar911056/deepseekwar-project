FROM tomcat:8.0.20-jre8

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file (keeps original name)
COPY target/ROOT.war /usr/local/tomcat/webapps/

