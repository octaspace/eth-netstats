FROM node:10.19.0-alpine

RUN apk add --no-cache git

WORKDIR /eth-netstats

ADD . /eth-netstats

RUN npm install

RUN node_modules/grunt-cli/bin/grunt

CMD ["npm", "start"]
