# build stage
FROM node:18.17.0
RUN mkdir -p /reactFilesInDocker/src
WORKDIR /reactFilesInDocker/src
COPY  package.json    .
RUN npm install
COPY    .     .
EXPOSE 80
CMD ["npm" , "run", "start"]