FROM ubuntu:22.04
LABEL org.opencontainers.image.description DESCRIPTION="Docker image for elasticdump"
RUN apt-get update && apt-get install -y wget curl npm unzip tmux
RUN npm install -g n
RUN n stable
RUN npm install -g elasticdump
RUN apt-get install -y python3-pip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install
RUN wget -O mongodb-tools.deb https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2204-x86_64-100.8.0.deb && dpkg -i mongodb-tools.deb

