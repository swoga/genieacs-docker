FROM node:10-buster
USER root

WORKDIR /
RUN npm install -g --unsafe-perm genieacs@1.2.0-beta.0

EXPOSE 7546/tcp 7557/tcp 7567/tcp 3000/tcp

ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

ENTRYPOINT ["/tini", "--"]
