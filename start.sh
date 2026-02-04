#!/bin/bash
set -e

# Clawd9 Railway Template Start Script
echo "🏠 Starting Clawd9 - AI Agents for Real Estate"

# Copy skills to workspace if not already there
if [ ! -d "$OPENCLAW_WORKSPACE/skills" ]; then
    echo "📦 Installing Clawd9 real estate skills..."
    mkdir -p $OPENCLAW_WORKSPACE/skills
    cp -r /app/skills/* $OPENCLAW_WORKSPACE/skills/
fi

# Copy base config if not exists
if [ ! -f "$OPENCLAW_CONFIG/openclaw.json" ]; then
    echo "⚙️ Setting up configuration..."
    cp /app/openclaw.json $OPENCLAW_CONFIG/openclaw.json
fi

# Check for API key
if [ -z "$ANTHROPIC_API_KEY" ]; then
    echo "❌ Error: ANTHROPIC_API_KEY is required"
    exit 1
fi

echo "✅ API key detected"

# Check if openclaw is installed
if ! command -v openclaw &> /dev/null; then
    echo "❌ OpenClaw not found, installing..."
    npm install -g openclaw@latest
fi

# Start the gateway
echo "🚀 Starting OpenClaw gateway..."
echo "📡 Telegram bot will connect automatically if TELEGRAM_BOT_TOKEN is set"

# Run openclaw with environment variables
exec openclaw gateway \
    --port 18789 \
    --config $OPENCLAW_CONFIG/openclaw.json \
    --workspace $OPENCLAW_WORKSPACE