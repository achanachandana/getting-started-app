FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies (production only)
RUN yarn install --production

# Start the application
CMD ["node", "src/index.js"]

# Expose the port the app runs on
EXPOSE 3000
