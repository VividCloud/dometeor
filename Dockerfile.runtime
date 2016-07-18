FROM node:0.10-slim
MAINTAINER VividCloud

ADD bundle.tar.gz /bundle.tar.gz
RUN tar -xzvf /bundle.tar.gz && cd bundle \
    && (cd programs/server && npm install)

EXPOSE 80
CMD node main.js
