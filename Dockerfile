FROM ubuntu:20.04

# install the latest updates with no cache from apt
RUN apt update && apt upgrade -y && apt full-upgrade -y && apt autoclean -y \
    && apt autoremove

# install misc. packages we need
RUN apt install curl -y

# install nodejs 12.x
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs