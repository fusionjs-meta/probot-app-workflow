FROM node:8.9.4@sha256:090e91ff2325ca4aa558771b7f24819825b5c8f520fb891723555bb48811f534

WORKDIR /probot-app-workflow

RUN yarn global add greenkeeper-lockfile@1

COPY package.json yarn.lock /probot-app-workflow/

RUN yarn
