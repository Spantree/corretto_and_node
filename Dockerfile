FROM node:12.16.2-buster

# Borrowed from the corretto official image.
# It is easier to install a Java sdk than node.
#
RUN wget https://apt.corretto.aws/corretto.key -O corretto.key
RUN apt-key add corretto.key
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository 'deb https://apt.corretto.aws stable main'
RUN apt-get update
RUN apt-get install -y java-11-amazon-corretto-jdk
# Verify installation
RUN java -version
#RUN update-alternatives --config java
#RUN update-alternatives --config javac

ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
