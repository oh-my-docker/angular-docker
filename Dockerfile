FROM node:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

WORKDIR /omd

VOLUME ["/omd"]

RUN npm install -g @angular/cli

EXPOSE 4200

ENTRYPOINT [ "ng" ]
CMD ["--help"]
