# This is a test container that functions as the control server
# The client server is in the test directory
FROM ubuntu:trusty

RUN apt-get update
RUN apt install -y software-properties-common
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y ansible vim python3-pip
RUN pip3 install awscli --upgrade --user

COPY config/.bash_profile /root
COPY config/.vimrc /root
COPY config/hosts /etc/ansible
COPY config/private/config /root/.aws/config

RUN chmod 0644 /etc/ansible/hosts

COPY . /root/ansible/ansible-test-project

WORKDIR /root/ansible/ansible-test-project