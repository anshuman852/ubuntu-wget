FROM ubuntu:22.04
LABEL org.opencontainers.image.description DESCRIPTION="Docker image for elasticdump"
RUN apt-get update && apt-get install -y wget curl npm unzip tmux nano
RUN npm install -g n
RUN n stable
RUN npm install -g elasticdump
RUN apt-get install -y python3-pip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install
RUN export arch=$(uname -m)
## download for both amd64 and arm64 if uname -m is aarch64 (arm64) or if uname -m is x86_64 (x86_64)
RUN if [ "$arch" = "aarch64" ]; then wget -O mongodb-tools.deb https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2004-arm64-100.8.0.deb && dpkg -i mongodb-tools.deb; fi
RUN if [ "$arch" = "x86_64" ]; then wget -O mongodb-tools.deb https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2004-x86_64-100.8.0.deb && dpkg -i mongodb-tools.deb; fi

