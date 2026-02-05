FROM elixir:1.8.1

ENV NODE_VERSION 10.x

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs

RUN npm install npm@latest -g

RUN mix local.hex --force && \
  mix archive.install hex phx_new 1.4.3 --force && \
  mix local.rebar --force

RUN apt-get install -y apt-utils net-tools iputils-ping iproute vim telnetd telnet wget fdclone nkf less ftp tcpdump man

WORKDIR /app
