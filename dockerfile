# Use Node.js base image
FROM node:18-slim

# Set working directory
WORKDIR /app

# Install system dependencies (optional but helpful)
RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the Medusa source
COPY . .

# Expose Medusa default port
EXPOSE 9000

# Run the Medusa backend
CMD ["npm", "run", "start"]
