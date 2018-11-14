FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y software-properties-common openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN apt-get install -y apache2 php libapache2-mod-php php-mcrypt

# Link `python3` to `python` for ansible to run
RUN ln -s /usr/bin/python3 /usr/bin/python

COPY ./html /var/www/html

EXPOSE 22
EXPOSE 80
CMD ["/usr/sbin/sshd", "-D"]