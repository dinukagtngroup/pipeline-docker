FROM node:19.8.1-alpine3.17

WORKDIR /usr/app

RUN apk add --no-cache aws-cli

RUN wget https://releases.hashicorp.com/terraform/1.4.2/terraform_1.4.2_linux_amd64.zip
RUN unzip terraform_1.4.2_linux_amd64.zip && rm terraform_1.4.2_linux_amd64.zip
RUN mv terraform /usr/bin/terraform

RUN apk add git

CMD []