# Base stage
FROM node:18 AS base

# Set working directory
WORKDIR /promptopia

# Install dependencies
COPY *.json *.config.js *.mjs ./
RUN npm install

# Development stage
FROM base AS development

# Copy source files
COPY . .

# Build the application (optional for development)
RUN npm run build

# Start development server
CMD ["npm", "run", "dev"]

# Production stage
FROM base AS production

# Set working directory
WORKDIR /promptopia

# Copy only production dependencies
COPY package*.json  ./
RUN npm install --only=production

# Copy built files from the development stage
COPY --from=development /promptopia ./

# Build the application
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start production server
CMD ["npm", "start"]
