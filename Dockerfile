# Use Node 20 LTS
FROM node:20

# Set working directory
WORKDIR /app

# Copy package.json and install deps
COPY package.json ./
RUN npm install --legacy-peer-deps

# Copy the rest of your files
COPY . .

# Expose port (needed for Koyeb)
EXPOSE 3000

# Run your bot
CMD ["node", "index.js"]
