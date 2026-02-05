FROM kalilinux/kali-linux-docker
RUN apt-get update && apt-get upgrade -yy
RUN apt-get install kali-linux -yy
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9

RUN apt-get install -y net-tools vim less fdclone nkf python3 openbsd-inetd telnetd telnet ftp
#apt-get install kali-linux-wireless
#RUN pip install --upgrade pip
#RUN pip install --upgrade setuptools

# CMD [ 'bash' ]
