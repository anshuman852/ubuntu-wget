FROM ubuntu:22.04
RUN apt-get update && apt-get install -y wget curl npm unzip
RUN npm install -g n
RUN n stable
RUN npm install -g elasticdump
RUN apt-get install -y python3-pip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

