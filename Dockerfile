FROM node:15
RUN apt update && apt -y upgrade
RUN yarn global add gatsby-cli
WORKDIR /gatsby
EXPOSE 8000
CMD ["./start.sh"]