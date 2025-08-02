FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install -y wget gnupg software-properties-common

# Add older Ubuntu repo (Jammy has Java 11)
RUN add-apt-repository ppa:openjdk-r/ppa -y

# Install Java 11
RUN apt-get update -y
RUN apt-get install -y openjdk-11-jdk
RUN apt-get install -y maven
CMD ["tail", "-f", "/dev/null"]