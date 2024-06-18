FROM alpinelinux/ansible
RUN apk update
RUN mkdir /root/.ssh/ && \
    chmod 700 /root/.ssh/ && \
    chown root:root /root/.ssh/
COPY id_rsa /root/.ssh/id_rsa
RUN chown -R root:root /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa
RUN mkdir -p /etc/ansible/hosts
COPY inventory /etc/ansible/hosts/inventory
COPY ansible.cfg /etc/ansible/ansible.cfg
 
