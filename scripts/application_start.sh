#!/bin/bash

echo "Starting the Spring Boot application..."

# Full path to the Java executable
#JAVA_HOME=/opt/jdk-18/bin/java


export JAVA_HOME=/opt/jdk-18
echo $JAVA_HOME
echo $PATH
echo "JAVA_HOME path set"

# Change to the directory where your JAR file is located
#cd /home/ec2-user/my-app/

#setting permissions
chmod 777 /home/ec2-user/my-app/myprogram-0.0.1-SNAPSHOT.jar

# Run the JAR file
java -jar /home/ec2-user/my-app/myprogram-0.0.1-SNAPSHOT.jar > /home/ec2-user/my-app/app.log 2>&1 & b
# > /home/ec2-user/my-app/app.log 2>&1 &
