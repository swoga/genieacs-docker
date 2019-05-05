FROM node:8-stretch
USER root

#install newer /usr/bin/env from coreutils for -S support
WORKDIR /
RUN wget http://ftp.gnu.org/gnu/coreutils/coreutils-8.31.tar.xz && tar xf coreutils-8.31.tar.xz
WORKDIR /coreutils-8.31
ENV FORCE_UNSAFE_CONFIGURE=1
RUN ./configure --prefix=/coreutils --libexecdir=/coreutils/lib --enable-no-install-program=kill,uptime && \
make && make install
RUN rm /usr/bin/env && cp /coreutils/bin/env /usr/bin/env && rm -r /coreutils-8.31 && rm -r /coreutils

#install genieacs
WORKDIR /
RUN git clone https://github.com/genieacs/genieacs
WORKDIR /genieacs
RUN npm install
RUN npm run compile
RUN npm run build

EXPOSE 7546/tcp 7557/tcp 7567/tcp 3000/tcp

ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

ENTRYPOINT ["/tini", "--"]
