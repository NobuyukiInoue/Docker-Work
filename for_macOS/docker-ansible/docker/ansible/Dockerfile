FROM ubuntu

ENV ANSIBLE_HOST_KEY_CHECKING False

RUN apt-get update && \
    apt-get install -y software-properties-common && \
#   apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible

RUN apt-get install -y net-tools iputils-ping ssh telnet vim wget fdclone nkf less ftp tcpdump man
RUN apt-add-repository ppa:ansible/ansible


CMD /bin/bash
