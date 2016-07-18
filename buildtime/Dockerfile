MAINTAINER VividCloud
FROM alpine:3.4

RUN apk add curl
RUN curl https://install.meteor.com | sh

COPY . /app/
WORKDIR /app
RUN meteor npm install --production && meteor build /bundle.tar.gz --server-only
