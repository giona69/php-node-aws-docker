FROM circleci/php:7.4-node-browsers

RUN \
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4EB27DB2A3B88B8B

RUN \
sudo apt-get update && \
sudo apt-get install -y python python-dev python3-pip python3-virtualenv && \
sudo rm -rf /var/lib/apt/lists/*

RUN \
sudo apt-get update -y

RUN \
sudo apt-get -y install rsync

RUN \
sudo npm install -g @quasar/cli

RUN \
sudo pip install pyrsistent==0.16.0

RUN \
sudo pip install awsebcli

RUN \
sudo pip install awscli

RUN \
sudo pip install --upgrade awsebcli
