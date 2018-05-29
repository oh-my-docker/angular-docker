FROM node:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

WORKDIR /app

VOLUME ["/app"]

RUN npm install -g @angular/cli

EXPOSE 4200

CMD []
