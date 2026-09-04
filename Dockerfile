# Use official Node.js 22 Alpine image
FROM node:22-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package files first to leverage Docker layer caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Set default environment variables
ENV PORT=3000

# Start the Express server
CMD ["node", "index.js"]
