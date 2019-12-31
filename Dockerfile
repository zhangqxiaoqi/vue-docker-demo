FROM node:12.14.0-alpine
RUN \
npm install -g nrm --registry=https://registry.npm.taobao.org && \
npm install -g yrm --registry=https://registry.npm.taobao.org && \
yrm use taobao && \
yarn global add @vue/cli && \
yarn global add cross-env
RUN mkdir /projects
WORKDIR /projects