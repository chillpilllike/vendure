# Use Node.js as the base image
FROM node:20

# Set the working directory
WORKDIR /usr/src/app

# Clone the Vendure repository
RUN git clone https://github.com/vendure-ecommerce/vendure.git .

# Install dependencies
RUN yarn install

# Build the Vendure project
RUN yarn build

# Set the default command
CMD ["yarn", "start"]
