FROM node:14-buster-slim
USER root

WORKDIR /
RUN npm install -g --unsafe-perm genieacs@1.2.4

EXPOSE 7547/tcp 7557/tcp 7567/tcp 3000/tcp