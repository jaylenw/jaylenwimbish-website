FROM ubuntu:20.04

# install the latest updates with no cache from apt
RUN apt update && apt upgrade -y && apt full-upgrade -y && apt autoclean -y \
    && apt autoremove

# install misc. packages we need
RUN apt install curl sudo -y

# install nodejs 12.x
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs

# use the myUserID argument from docker-compose
ARG myUserID

# create a user with name "dev" with a home directory in /home/dev and the user id and group id will be the value of $myUserID
# add the user to the "sudo" group and have the user to have the password, "dev"
RUN useradd -m -u ${myUserID} dev && usermod -aG sudo dev && echo 'dev:dev' | chpasswd

# note to the user we want to expose port 3000 for local development
EXPOSE 3000
