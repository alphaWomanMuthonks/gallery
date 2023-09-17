# Use an official Node.js 18 image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the Jenkins pipeline script into the container
COPY Jenkinsfile /app/Jenkinsfile

# Install any additional dependencies your application may need (if applicable)
# For example, if you need Git for cloning repositories:
RUN apt-get update && apt-get install -y git

# Define an entry point for running Jenkins
ENTRYPOINT ["jenkins-agent"]
