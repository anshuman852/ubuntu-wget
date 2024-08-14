FROM ubuntu:22.04
LABEL org.opencontainers.image.description DESCRIPTION="Docker image for elasticdump"
RUN apt-get update && apt-get install -y wget curl npm unzip tmux
RUN npm install -g n
RUN n stable
RUN npm install -g elasticdump
RUN apt-get install -y python3-pip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install
RUN export arch=$(uname -m)
## download for both amd64 and arm64 if uname -m is aarch64 (arm64) or if uname -m is x86_64 (x86_64)
RUN if [ $(uname -m) = "aarch64" ]; then wget -O mongodb-tools.deb https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2004-arm64-100.8.0.deb && dpkg -i mongodb-tools.deb; fi
RUN if [ $(uname -m) = "aarch64" ]; then wget -O rclone.deb https://downloads.rclone.org/v1.67.0/rclone-v1.67.0-linux-arm64.deb && dpkg -i rclone.deb; fi
## print architecture during build
RUN echo $arch
RUN if [ $(uname -m) = "x86_64" ]; then wget -O mongodb-tools.deb https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2004-x86_64-100.8.0.deb && dpkg -i mongodb-tools.deb; fi
RUN if [ $(uname -m) = "x86_64" ]; then wget -O rclone.deb https://downloads.rclone.org/v1.67.0/rclone-v1.67.0-linux-amd64.deb && dpkg -i rclone.deb; fi

