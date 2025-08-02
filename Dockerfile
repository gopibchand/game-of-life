# Use official Tomcat base image with JDK 11
FROM tomcat:9.0-jdk11

# Remove default ROOT webapp (optional, avoids conflicts)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into Tomcat’s webapps directory
# (WAR will auto-deploy when Tomcat starts)
COPY gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat (default CMD already starts catalina.sh run)
CMD ["catalina.sh", "run"]