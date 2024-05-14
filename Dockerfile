# Specify a base image
FROM node:alpine

# Specify a work directory
WORKDIR /usr/app

# Install dependencies
COPY ./package.json ./
RUN npm install

# Copy other source code files
COPY ./ ./

# Default command
CMD ["npm", "start"]
