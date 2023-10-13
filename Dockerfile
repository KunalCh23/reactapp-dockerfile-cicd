# Use the official Node.js image as the base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Build the React application
RUN npm run build

# Expose the port on which your React app will run (usually 3000)
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]

