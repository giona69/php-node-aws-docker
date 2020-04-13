FROM circleci/node:13.7.0-browsers

RUN \
sudo apt-get update && \
sudo apt-get install -y python python-dev python-pip python-virtualenv && \
sudo rm -rf /var/lib/apt/lists/*

RUN \
sudo apt-get update -y

RUN \
sudo apt-get -y install rsync

RUN \
sudo npm install -g @quasar/cli

RUN \
sudo npm install gulp-cli -g

RUN \
sudo npm install now@latest -g --unsafe-perm

RUN \
sudo pip install awsebcli

RUN \
sudo pip install awscli

RUN \
sudo pip install --upgrade awsebcli
