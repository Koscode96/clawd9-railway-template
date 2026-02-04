FROM node:22-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install OpenClaw globally
RUN npm install -g openclaw@latest

# Create app directory
WORKDIR /app

# Copy skills and configuration
COPY skills/ /app/skills/
COPY openclaw.json /app/openclaw.json
COPY start.sh /app/start.sh

# Make start script executable
RUN chmod +x /app/start.sh

# Create workspace directory
RUN mkdir -p /data/workspace /data/config

# Set environment variables
ENV OPENCLAW_WORKSPACE=/data/workspace
ENV OPENCLAW_CONFIG=/data/config

# Expose the gateway port
EXPOSE 18789

# Start OpenClaw
CMD ["/app/start.sh"]