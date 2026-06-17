FROM tomcat:9.0-jdk11-openjdk-slim

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file (keeps original name)
COPY target/ROOT.war /usr/local/tomcat/webapps/

