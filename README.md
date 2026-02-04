# Clawd9 - AI Agents for Real Estate

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/clawd9)

One-click deploy AI agents pre-configured for UK real estate operations: sales, lettings, and property management.

## What is Clawd9?

Clawd9 is a pre-configured [OpenClaw](https://openclaw.ai) deployment with specialized skills for real estate agencies. Instead of starting from scratch, you get an AI agent that already understands:

- 🏠 **Lead Qualification** - Respond to Rightmove/Zoopla enquiries instantly, qualify buyers/tenants
- 📅 **Viewing Booking** - Schedule viewings, send confirmations and reminders
- 🔧 **Tenant Communications** - Handle maintenance requests, rent reminders, move-in/out
- 📊 **Vendor Updates** - Automated weekly reports, viewing feedback, price discussions

## Deploy in 5 Minutes

### 1. Click Deploy

Click the "Deploy on Railway" button above. You'll need:
- A Railway account (free to create)
- An Anthropic or OpenAI API key

### 2. Set Environment Variables

| Variable | Required | Description |
|----------|----------|-------------|
| `ANTHROPIC_API_KEY` | Yes* | Your Anthropic API key |
| `OPENAI_API_KEY` | Yes* | Your OpenAI API key (alternative to Anthropic) |
| `TELEGRAM_BOT_TOKEN` | No | For Telegram integration |
| `TELEGRAM_ALLOWED_USERS` | No | Comma-separated Telegram user IDs |
| `OPENCLAW_GATEWAY_TOKEN` | Auto | Generated automatically for security |

*At least one AI provider API key is required.

### 3. Connect Your Channels

After deployment, visit your Railway URL and go to `/setup` to:
- Connect Telegram (recommended)
- Set up email integration
- Configure WhatsApp (coming soon)

## Skills Included

### Lead Qualification
- Instant response to portal enquiries
- Qualifying questions (budget, timeline, chain status)
- Lead scoring (hot/warm/cold)
- Automatic routing of hot leads

### Viewing Booking
- Calendar availability checking
- Automated confirmation messages
- 24hr and 2hr reminders
- Post-viewing feedback collection

### Tenant Communications
- Maintenance request triage (emergency/urgent/routine)
- Rent payment reminders
- Reference chasing
- Move-in/move-out workflows

### Vendor Updates
- Weekly activity reports
- Viewing feedback communication
- Price reduction discussions
- Sale progression updates

## Configuration

The default configuration works out of the box for most UK estate agencies. To customize:

### Adjust the Persona

Edit `openclaw.json` to change the agent's name and style:

```json
{
  "agents": {
    "defaults": {
      "persona": {
        "name": "Your Agency Name",
        "role": "Your Agency AI Assistant"
      }
    }
  }
}
```

### Add Your Property Data

For personalized responses, you can add your property listings to the agent's knowledge base. Contact us for integration options.

## Subscription Plans

The basic deployment is free (you just pay for Railway hosting ~£5-15/mo and AI API costs).

For premium features, visit [clawd9.lovable.app](https://clawd9.lovable.app):

| Plan | Price | Features |
|------|-------|----------|
| **Starter** | £49/mo | Core skills, email support |
| **Pro** | £149/mo | All channels, custom tuning, priority support |
| **Enterprise** | Custom | Multi-agent, CRM integration, dedicated support |

## Security

- 🔒 Your agent runs on isolated infrastructure
- 🔑 All credentials stored as encrypted environment variables
- 🛡️ Tailscale VPN support for private access
- 📝 No conversation data sent to Clawd9 - you own everything

## Support

- 📧 Email: hello@clawd9.co.uk
- 📖 Docs: [clawd9.lovable.app](https://clawd9.lovable.app)
- 💬 Discord: Coming soon

## Built With

- [OpenClaw](https://openclaw.ai) - The AI agent framework
- [Railway](https://railway.app) - One-click deployment platform
- [Anthropic Claude](https://anthropic.com) / [OpenAI](https://openai.com) - AI models

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Made with 🏠 by [Clawd9](https://clawd9.lovable.app)
