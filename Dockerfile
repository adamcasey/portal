# Use official Node.js LTS image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm && pnpm install --frozen-lockfile

# Copy app source
COPY . .

# Build Next.js app
RUN pnpm build

# Expose port
EXPOSE 3000

# Start the app
CMD ["pnpm", "start"]
