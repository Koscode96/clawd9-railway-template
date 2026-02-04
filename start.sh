#!/bin/bash
set -e

echo "🏠 Starting Clawd9 - AI Agents for Real Estate"

# Create OpenClaw config directory
mkdir -p ~/.openclaw

# Copy config to expected location
if [ ! -f ~/.openclaw/openclaw.json ]; then
    echo "⚙️ Setting up configuration..."
    cp /app/openclaw.json ~/.openclaw/openclaw.json
fi

# Copy skills to workspace
mkdir -p ~/.openclaw/workspace/skills
if [ ! -d ~/.openclaw/workspace/skills/clawd9-real-estate ]; then
    echo "📦 Installing Clawd9 real estate skills..."
    cp -r /app/skills/* ~/.openclaw/workspace/skills/
fi

# Check for API key
if [ -z "$ANTHROPIC_API_KEY" ]; then
    echo "❌ Error: ANTHROPIC_API_KEY is required"
    exit 1
fi

echo "✅ API key detected"

echo "🚀 Starting OpenClaw gateway..."
echo "📡 Telegram bot will connect automatically if TELEGRAM_BOT_TOKEN is set"

# Run openclaw gateway with allow-unconfigured for headless mode
exec openclaw gateway --allow-unconfigured --port ${PORT:-18789}