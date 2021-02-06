# Pull base image.
FROM jlesage/baseimage-gui:debian-10

# Install thunder.
COPY com.xunlei.download_1.0.0.1-1_repack1_amd64.deb /com.xunlei.download_1.0.0.1-1_repack1_amd64.deb
COPY deepin-elf-verify_0.0.16.10-1_amd64.deb /deepin-elf-verify_0.0.16.10-1_amd64.deb 

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y -f /com.xunlei.download_1.0.0.1-1_repack1_amd64.deb /deepin-elf-verify_0.0.16.10-1_amd64.deb
RUN apt-get install -y libgtk2.0-0 libnspr4 libnss3 libdbus-glib-1-2 libxss1 libgtk-3-0 libasound2 
RUN apt-get install -y ttf-wqy-zenhei procps 
RUN apt-get clean all
RUN rm /com.xunlei.download_1.0.0.1-1_repack1_amd64.deb /deepin-elf-verify_0.0.16.10-1_amd64.deb

# Copy the start script.
COPY startapp.sh /startapp.sh

# Set the name of the application.
ENV APP_NAME="thunder"
