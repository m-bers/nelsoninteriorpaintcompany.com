FROM node:14-buster-slim

WORKDIR /app
RUN yarn global add gatsby-cli && gatsby telemetry --disable
ADD package.json yarn.lock ./
RUN yarn install

ADD . ./
CMD ["gatsby", "develop", "-H", "0.0.0.0"]
