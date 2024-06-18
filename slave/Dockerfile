FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y openssh-server && \
    mkdir /var/run/sshd

COPY id_rsa.pub /root/.ssh/authorized_keys

RUN chmod 700 /root/.ssh && \ 
    chmod 600 /root/.ssh/authorized_keys

RUN apt-get install sudo -y

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
