#!/bin/bash

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

# Run onboarding if no auth configured
if [ -z "$ANTHROPIC_API_KEY" ] && [ -z "$OPENAI_API_KEY" ]; then
    echo "🔑 No API key found. Starting setup wizard..."
    openclaw onboard --config $OPENCLAW_CONFIG/openclaw.json
else
    echo "✅ API key detected"
fi

# Start the gateway
echo "🚀 Starting OpenClaw gateway on port 18789..."
openclaw gateway \
    --port 18789 \
    --config $OPENCLAW_CONFIG/openclaw.json \
    --workspace $OPENCLAW_WORKSPACE \
    --verbose
