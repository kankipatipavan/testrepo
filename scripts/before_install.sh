#!/bin/bash

echo "cleaning the artifacts."
#mvn clean
#!/bin/bash

# Define the Java version
JAVA_VERSION="17"

# Define the download URL for the JDK tar.gz file
DOWNLOAD_URL="https://download.java.net/java/GA/jdk${JAVA_VERSION}/d9d758a248514b3ca22bb749fdebcb8e/35/GPL/openjdk-${JAVA_VERSION}_linux-x64_bin.tar.gz"

# Define the installation directory
INSTALL_DIR="/opt/java/jdk${JAVA_VERSION}"

# Create the installation directory if it doesn't exist
sudo mkdir -p $INSTALL_DIR

# Download the JDK tar.gz file
echo "Downloading Java JDK ${JAVA_VERSION}..."
sudo curl -L -o /tmp/openjdk-${JAVA_VERSION}_linux-x64_bin.tar.gz $DOWNLOAD_URL

# Extract the JDK tar.gz file to the installation directory
echo "Extracting Java JDK ${JAVA_VERSION}..."
sudo tar -xzvf /tmp/openjdk-${JAVA_VERSION}_linux-x64_bin.tar.gz -C $INSTALL_DIR --strip-components=1

# Update alternatives to set Java version
echo "Setting Java JDK ${JAVA_VERSION} as default..."
sudo alternatives --install /usr/bin/java java $INSTALL_DIR/bin/java 1
sudo alternatives --install /usr/bin/javac javac $INSTALL_DIR/bin/javac 1

# Clean up downloaded tar.gz file
echo "Cleaning up..."
sudo rm -f /tmp/openjdk-${JAVA_VERSION}_linux-x64_bin.tar.gz

echo "Java JDK ${JAVA_VERSION} has been successfully installed."
