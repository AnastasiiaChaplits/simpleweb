# Specify a base image
FROM node:alpine

WORKDIR /simpleweb

# Install some deps
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]
