---
layout: post
title: "Your LTV Calculation Is Off by 6 Months (And It's Killing Your Cash Flow)"
date: 2026-02-20 09:00:00 -0600
categories: analytics finance
excerpt: "Most LTV models calculate 'time until churn' but ignore payment timing. Here's why that gap between acquisition cost and actual payback is destroying your working capital."
---

Every LTV model I audit makes the same mistake.

They calculate customer lifetime as "time until churn." Revenue projections look great. The unit economics seem profitable. Leadership greenlights the growth plan.

Then six months later, the company is scrambling for a bridge round because they're out of cash.

That's not lifetime value. That's existence value.

## The Problem: Payment Timing Versus Profitability

Real LTV models must account for the lag between when you acquire a customer and when that customer becomes **cashflow profitable**.

Here's a concrete example:

- Customer Acquisition Cost (CAC): $200
- Monthly subscription: $50
- Gross margin: 50%

Standard LTV calculation says: Customer pays $50/month. At month 5, they've paid $250 total. That covers the $200 CAC plus $50 in profit. You're profitable at month 5.

**Wrong.**

Here's what actually happens:

- Day 1: You spend $200 to acquire the customer (Ad spend hits your card immediately)
- End of Month 1: Customer pays $50 (You're -$150 cashflow)
- End of Month 2: Customer pays $50 (You're -$100 cashflow)
- End of Month 3: Customer pays $50 (You're -$50 cashflow)
- End of Month 4: Customer pays $50 (You break even on cash)
- End of Month 5: Customer pays $50 (You're +$50 cashflow)
- End of Month 6: Customer pays $50 (You're +$100 cashflow, finally covering CAC + margin)

You're not profitable at month 4. You're cashflow negative until month 6.

## Why This Matters at Scale

Let's say you acquire 10,000 customers per month at $200 CAC.

- Month 1: You spend $2M on acquisition
- Month 1 revenue from new customers: $0 (they haven't been billed yet)
- Month 2 revenue from Month 1 cohort: $500K
- Month 3 revenue from Month 1 cohort: $500K

Your LTV model says "we're profitable at month 5!" but your CFO is asking where the $2M in working capital is going to come from to bridge that gap.

Scale this across multiple months of growth and suddenly you need **millions in additional working capital** that your LTV model never predicted.

## Three Companies I've Seen Run Out of Runway

**Company A: SaaS Platform ($8M raised)**

They modeled 4-month payback based on standard LTV calculations. Reality was 7 months due to payment timing and longer sales cycles than expected. They scaled aggressively, burned through their Series A in 18 months, and couldn't raise a bridge. Shut down with 40,000 active users.

**Company B: D2C Subscription ($3M raised)**

Annual plans looked great on paper - $400 upfront, $120 CAC, instant profitability. Except customers could cancel and get a prorated refund. 35% of customers canceled within 90 days. The "profitable" annual cohorts were actually cashflow negative for 6 months after accounting for refunds.

**Company C: B2B Marketplace (Bootstrapped)**

Net-30 payment terms with enterprise customers meant they paid acquisition costs immediately but didn't collect revenue for 30-45 days. Their 3-month payback model became a 5-month payback reality. Nearly went under twice before they switched to deposits + net-15 terms.

## How to Fix Your LTV Model

### 1. Model Actual Cash Timing

Don't model "month 5 = profitable." Model:
- When does CAC hit your bank account? (Usually immediately)
- When does revenue hit your bank account? (End of month? Net-30? Annual upfront?)
- What's your refund rate by cohort age?
- What are your variable costs and when do they hit?

### 2. Calculate True Payback Period

True payback period = The month when cumulative cash from a customer exceeds cumulative cash spent to acquire and service that customer.

Not "when revenue exceeds CAC" but "when actual collected cash exceeds actual spent cash."

### 3. Build a Monthly Cash Flow Model

Track by cohort:
```
Month 0: -$200 CAC
Month 1: +$50 revenue - $10 COGS - $5 support = +$35 net cash
Month 2: +$50 revenue - $10 COGS - $5 support = +$35 net cash
Month 3: +$50 revenue - $10 COGS - $5 support = +$35 net cash
Month 4: +$50 revenue - $10 COGS - $5 support = +$35 net cash
Month 5: +$50 revenue - $10 COGS - $5 support = +$35 net cash
Month 6: +$50 revenue - $10 COGS - $5 support = +$35 net cash

Cumulative: -$200, -$165, -$130, -$95, -$60, -$25, +$10
True payback: Month 7, not Month 5
```

### 4. Stress Test Your Working Capital Needs

If you're planning to scale acquisition from 1,000 customers/month to 10,000 customers/month, how much additional working capital do you need to bridge the payback gap?

Run the model assuming:
- 20% worse retention than expected
- 30 days longer sales cycle
- Payment terms extended by customers
- Higher refund rates

If any of those scenarios break your cash position, you don't have a growth plan. You have a bankruptcy timeline.

## The Fix Isn't Just Math

Once you've fixed your model, you have three levers:

**1. Reduce CAC payback time**
- Charge upfront (annual plans with no refunds)
- Require deposits
- Shorten payment terms (Net-15 instead of Net-30)
- Increase prices (higher MRR = faster payback)

**2. Reduce CAC**
- Shift to lower-CAC channels
- Improve conversion rates (same spend, more customers)
- Negotiate better rates with paid platforms

**3. Increase working capital buffer**
- Raise more money (if you can)
- Grow slower (if you can't)
- Switch to profitability-first growth

## What Good LTV Modeling Looks Like

A proper LTV model answers these questions:

1. When does a cohort become cashflow positive?
2. How much working capital do I need to bridge the gap between CAC and payback?
3. What happens to my cash position if I scale acquisition 2x? 5x? 10x?
4. What's my sensitivity to retention changes, payment timing, and CAC inflation?

If your LTV calculation doesn't include time-to-payback, you're not modeling economics. You're modeling fantasy.

And fantasies don't survive first contact with a balance sheet.

---

*Noah Manion is a fractional growth consultant specializing in marketing infrastructure, paid acquisition, and analytics. He's spent 13+ years fixing broken tracking, attribution, and growth models for companies from $2M to $100M in revenue. Find him at [softpath.co](https://softpath.co).*
