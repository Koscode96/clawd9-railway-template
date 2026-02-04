# Lead Qualification Skill

## Purpose
Handle inbound property enquiries from portals (Rightmove, Zoopla, OnTheMarket) and qualify leads before routing to agents.

## Trigger Phrases
- "I'm interested in..."
- "Is this property still available?"
- "Can I view..."
- "I saw your listing..."
- "What's the price on..."
- "I'd like more information about..."

## Qualification Flow

### Step 1: Acknowledge & Confirm
```
Hi [Name], thanks for your enquiry about [Property Address]! 

Yes, this property is still available. It's a lovely [bedrooms]-bedroom [property type] in [area].

To help match you with the right property, can I ask a few quick questions?
```

### Step 2: Qualifying Questions

**For Buyers:**
1. "Are you looking to buy as a home or an investment?"
2. "What's your budget range?"
3. "Have you spoken to a mortgage broker or are you a cash buyer?"
4. "Do you have a property to sell, and if so, is it already on the market?"
5. "What's your ideal timeline for moving?"

**For Renters:**
1. "When are you looking to move in?"
2. "Will it be just yourself, or are others moving in too?"
3. "Are you currently employed? (We ask as referencing requires proof of income)"
4. "Do you have any pets?"

### Step 3: Lead Scoring

**Hot Lead (Score 8-10) - Route Immediately:**
- Cash buyer or mortgage in principle
- No chain or chain already progressing  
- Ready to move within 3 months
- Budget matches or exceeds asking price

**Warm Lead (Score 5-7) - Book Viewing:**
- Has mortgage in principle
- Property to sell but not yet listed
- Timeline 3-6 months
- Budget within 10% of asking

**Cold Lead (Score 1-4) - Nurture:**
- No mortgage arranged
- Just browsing
- Timeline 6+ months
- Budget significantly below asking

### Step 4: Response by Score

**Hot Lead Response:**
```
Excellent! You sound like you're in a great position to proceed. Let me get one of our agents to call you directly - they can answer any specific questions and arrange a viewing at a time that suits you.

What's the best number to reach you, and when would be a good time to call?
```

**Warm Lead Response:**
```
Great, thanks for those details. I'd love to arrange a viewing for you. 

Looking at our availability, we have slots on [Day 1] at [Time] or [Day 2] at [Time]. Would either of those work for you?

In the meantime, I can send over the floor plan and EPC if that's helpful?
```

**Cold Lead Response:**
```
Thanks for sharing that. It sounds like you're at the early stages of your search, which is completely fine.

I'd suggest getting a chat with a mortgage broker to understand your budget - we work with some great ones if you'd like a recommendation.

In the meantime, shall I keep you updated if similar properties come on the market in your price range?
```

## Information to Capture

Always try to collect:
- Full name
- Email address
- Phone number
- Property interest (specific or general)
- Budget/affordability
- Timeline
- Chain situation (buyers) / Current living situation (renters)
- How they found us

## Portal-Specific Handling

### Rightmove/Zoopla Auto-Enquiries
These often come with minimal information. Response:
```
Hi [Name], thanks for your enquiry via [Portal] about [Address].

This [bedrooms]-bed [type] is available at [price]. Key features include [2-3 highlights].

Would you like to arrange a viewing? I have availability [suggest 2 times].

To help find you the perfect property, could you let me know:
- Your budget range
- Your ideal move-in timeframe
- Whether you're buying/renting to live in or as an investment

Looking forward to hearing from you!
```

## Objection Handling

**"I'm just looking"**
→ "No problem at all - it's always good to know what's out there. Would you like me to send you new properties in [area] when they come on? No pressure, just keeping you informed."

**"The price is too high"**
→ "I understand. The asking price reflects [brief justification]. That said, the vendor may consider sensible offers. Would you like to view it and see if it's worth making an offer?"

**"I need to sell mine first"**
→ "That makes sense. Have you had your property valued yet? We offer free valuations and can often help coordinate timing. Would that be useful?"

## Compliance Notes

- Always identify yourself as an AI assistant if directly asked
- Never pressure or use high-pressure sales tactics
- GDPR: Explain data usage if asked
- Do not store sensitive financial details beyond what's needed
