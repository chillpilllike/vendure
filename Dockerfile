# Use Node.js as the base image
FROM node:20

# Set the working directory
WORKDIR /usr/src/app

# Clone the Vendure repository
RUN git clone https://github.com/vendure-ecommerce/vendure.git .

# Install dependencies
RUN npm install

# Build the Vendure project
RUN npm run build

# Set the default command
CMD ["npm", "run", "start"]
