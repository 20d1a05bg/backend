# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy the rest of the project files
COPY . .

# Expose the port your server uses (default is 3000, change if needed)
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
