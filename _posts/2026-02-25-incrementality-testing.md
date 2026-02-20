---
layout: post
title: "Your Incrementality Test Just Proved Meta Doesn't Work (Here's Why You're Wrong)"
date: 2026-02-25 09:00:00 -0600
categories: paid-acquisition attribution
excerpt: "You ran a geo holdout test, saw that Meta only drives 15% incremental lift instead of the 40% it claims, and turned it off. Bad move. Here's how to actually use incrementality data."
---

I've watched three companies make this mistake in the past year.

They run an incrementality test. They discover their "highest performing channel" is claiming credit for conversions that would've happened anyway. The test shows 60% of attributed conversions are non-incremental.

So they kill the channel.

Revenue tanks. Panic sets in. They turn it back on. Spend six months rebuilding what they destroyed.

Here's the truth: **incrementality tests don't tell you whether to run a channel. They tell you what to pay for it.**

## What Actually Happened in Your Test

Let's say you're spending $100K/month on Meta. The platform claims it's driving $400K in revenue (4.0x ROAS).

You run a geo holdout test. Turn off Meta in 20% of your markets for 3 weeks. Revenue in those markets drops 15%, not 40%.

The math:
- Meta claims: $400K revenue driven
- Actual incremental revenue: $150K (15% of $1M baseline)
- Attribution overlap: $250K (would've converted anyway)

Your incrementality is 37.5% of what Meta reports (150K / 400K).

## Why Most Teams Get This Wrong

**Wrong reaction:** "Meta is lying to us. Turn it off."

**Right reaction:** "Meta drives $150K incremental revenue at $100K cost. That's 1.5x incremental ROAS. Is that worth it?"

The answer depends on:
1. What's your target ROAS after accounting for true incrementality?
2. What else could you do with that $100K?
3. What happens to the other 85% of revenue if you reallocate?

## The Four Incrementality Scenarios

### Scenario 1: High Attribution, High Incrementality
- Platform claims 4.0x ROAS
- Test shows 3.2x incremental ROAS
- **Action:** Scale this. It's working.

### Scenario 2: High Attribution, Medium Incrementality  
- Platform claims 4.0x ROAS
- Test shows 1.8x incremental ROAS
- **Action:** Keep running, but reprice. Cut bids to match true value.

### Scenario 3: High Attribution, Low Incrementality
- Platform claims 4.0x ROAS
- Test shows 0.6x incremental ROAS
- **Action:** Kill it or radically restructure creative/targeting.

### Scenario 4: Low Attribution, High Incrementality (Brand/Upper Funnel)
- Platform claims 1.2x ROAS
- Test shows 2.8x incremental ROAS when you include halo effect
- **Action:** This is your most valuable channel. Protect it.

Most companies I work with are in Scenario 2. The channel works. It's just not working as well as the platform claims.

## How to Reprice Based on Incrementality

Let's use the Meta example:
- Current spend: $100K/month
- Platform ROAS: 4.0x
- Incremental ROAS: 1.5x
- Your target incremental ROAS: 2.0x

You need to cut spend by 25% to hit your target:
- New spend: $75K/month
- Expected incremental revenue: $150K (same as before, diminishing returns are minimal at this level)
- New incremental ROAS: 2.0x ($150K / $75K)

You're still driving the same incremental revenue. You're just not overpaying for it.

## How to Actually Run an Incrementality Test

Most teams botch the test design. Here's how to do it right:

### 1. Choose Your Test Design

**Geo Holdout (Best for most companies)**
- Split markets geographically
- Turn off spend in 20-30% of markets
- Run for minimum 2-3 weeks (ideally 4-6)
- Compare revenue in test vs control markets

**Pros:** Clean, easy to implement
**Cons:** Requires enough geographic diversity

**Time-Based Holdout (For single-market companies)**
- Alternate weeks on/off
- Run for minimum 8 weeks
- Control for seasonality

**Pros:** Works with limited geography
**Cons:** Harder to control for external factors

**Matched Market Test (Most rigorous)**
- Pair similar markets (revenue, demographics, history)
- Turn off spend in one market of each pair
- Compare paired markets

**Pros:** Highest statistical confidence
**Cons:** Requires sophisticated market matching

### 2. Pick the Right Markets for Holdout

**Don't randomly select.** Choose markets that:
- Represent 20-30% of total spend
- Have similar historical performance to excluded markets
- Aren't undergoing major business changes (new distribution, PR, etc.)

Bad example: Test in your 3 smallest markets that represent 5% of revenue.
Good example: Test in 8 mid-sized markets that collectively represent 25% of revenue and mirror your top markets demographically.

### 3. Set Your Success Criteria BEFORE the Test

Decide in advance:
- What incremental ROAS makes the channel worth running?
- What will you do if incrementality is 80% of reported? 50%? 20%?
- How will you adjust spend based on results?

If you don't set criteria beforehand, you'll rationalize whatever result you get.

### 4. Account for Cross-Channel Effects

Turning off Meta doesn't just affect Meta conversions. It affects:
- Branded search volume (people see Meta ads, then search)
- Direct traffic (brand awareness spillover)
- Other paid channels (less competition for the same customer)

Measure everything:
- Total revenue in test markets (not just Meta attributed)
- Search volume changes
- Other channel performance shifts
- Organic traffic changes

### 5. Run It Long Enough

**Minimum test duration by business:**
- E-commerce with daily purchases: 2-3 weeks
- SaaS with weekly decision cycles: 4-6 weeks
- B2B with monthly sales cycles: 6-8 weeks
- High-consideration purchases: 8-12 weeks

If you cut the test short, you're measuring "immediate" impact, not true incrementality.

## What to Do With the Results

### If Incrementality is 80%+ of reported
Keep running. Your attribution is fairly accurate. You might have 10-20% room to optimize spend down, but the channel fundamentally works.

### If Incrementality is 40-80% of reported
This is the "reprice" zone. The channel works, but you're overpaying. Options:
1. Cut spend by 20-40% to match true value
2. Shift to higher-intent targeting (brand, retargeting)
3. Renegotiate with the platform if you're big enough
4. Keep spending but adjust your internal ROAS targets

### If Incrementality is <40% of reported
The channel is mostly stealing credit. Options:
1. Kill it entirely and reallocate budget
2. Radically restructure creative and targeting (test new audiences)
3. Shift to pure brand/awareness plays with different measurement

## The Mistake Everyone Makes

**They treat incrementality as binary: it works or it doesn't.**

Reality: Every channel has a point where incremental returns turn negative. Your job is to find that point and spend right up to it, not past it.

Example:
- First $50K on Meta: 2.5x incremental ROAS (great)
- Next $50K on Meta: 1.2x incremental ROAS (okay)
- Next $50K on Meta: 0.7x incremental ROAS (bad)

If you're spending $150K and getting 1.47x blended incremental ROAS, the answer isn't "kill Meta." It's "spend $100K on Meta and put the other $50K somewhere better."

## How Often Should You Re-Test?

Incrementality isn't static. Test:
- **Quarterly** for stable channels with consistent creative
- **After major creative refreshes** (new messaging, new audiences)
- **When performance suddenly improves** (suspiciously good results = attribution creep)
- **Before major budget increases** (prove incrementality before you scale)

## Real Example: How I Used This for a Client

**The Setup:**
- $180K/month on Meta
- Platform reporting 3.8x ROAS
- Company wanted to scale to $500K/month

**The Test:**
- 4-week geo holdout across 12 markets (28% of spend)
- Measured total revenue, not just Meta-attributed

**The Results:**
- Incremental ROAS: 1.9x (50% of reported)
- First $100K spent: 2.4x incremental
- Next $80K spent: 1.2x incremental

**The Action:**
- Cut Meta spend from $180K to $120K
- Reallocated $60K to Google branded search (4.5x incremental ROAS)
- Total revenue stayed flat, profit increased $45K/month

We didn't kill Meta. We repriced it.

## The Bottom Line

Incrementality tests are not pass/fail. They're pricing signals.

If a test shows your channel drives 15% incremental lift instead of 40%, that channel is still valuable. You just can't afford to pay for 40%.

Most teams see incrementality results and make binary decisions. The smart ones use them to negotiate better unit economics.

Don't turn off channels because they're not perfect. Reprice them because they're not worth what you're paying.

---

*Noah Manion is a fractional growth consultant specializing in marketing infrastructure, paid acquisition, and analytics. He's spent 13+ years managing paid spend from $1K to $1M monthly and running incrementality tests that actually inform strategy. Find him at [softpath.co](https://softpath.co).*
