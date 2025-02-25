# User an officail node.js runtime as a parent image  
FROM node:22-alpine


# Set the working directory in the container
WORKDIR /app


# Copy the package .json and the package.lock.json to the container
COPY package*.json .


# Install the dependencies
RUN npm install


#Copy the rest of the app code
COPY . .


# Expose the por that the app runs on
EXPOSE 5000


# Define the command to run your application

CMD ["node","./src/server.js"]



