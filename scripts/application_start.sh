#!/bin/bash

echo "Starting the Spring Boot application..."

# Full path to the Java executable
#JAVA_HOME=/opt/jdk-18/bin/java

# Change to the directory where your JAR file is located
cd /home/ec2-user/my-app/

# Run the JAR file
java -jar myprogram-0.0.1-SNAPSHOT.jar
