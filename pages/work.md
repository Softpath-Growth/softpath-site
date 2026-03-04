---
layout: page
title: "Selected Client Work"
description: "Marketing infrastructure rebuilds, paid acquisition management, and analytics implementations for B2C and B2B2C companies. Anonymized case studies showing how Softpath fixes broken tracking and attribution."
permalink: /work/
last_modified_at: 2026-03-04
faq:
  - question: "Can I see detailed case studies or client references?"
    answer: "Most clients prefer to keep their growth infrastructure private. We share deeper specifics on methodology and outcomes in conversation, and some clients have agreed to serve as references for companies evaluating similar work. Book a call to discuss."
  - question: "What results does a marketing infrastructure audit typically produce?"
    answer: "Every client we have audited has discovered tracking gaps, measurement errors, or wasted spend they did not know existed. Common findings include: attribution tools overcounting conversions by 15-40%, redundant martech tools costing thousands per month, and tracking gaps causing 10-20% of purchases to go unattributed. The audit consistently pays for itself."
  - question: "How long does a typical engagement take?"
    answer: "A marketing infrastructure audit takes 2-3 weeks. Tracking overhauls typically run 4-8 weeks. Paid acquisition management is ongoing, typically 20-40 hours per month. Implementation timelines depend on the complexity of your martech stack and the scope of tracking issues discovered."
---

We don't publish logos or detailed case studies without permission, and most clients prefer to keep their growth infrastructure private. Here's a representative sample of problems we solve and outcomes we deliver.

---

## DTC Subscription Brand
### Tracking rebuild + paid acquisition

**The situation:** Subscription box company scaling fast but flying blind. Meta ROAS looked great in-platform, but customer-level analysis showed [true CAC was 40% higher than reported](/blog/attribution-tool-lying/). Events fired multiple times, attribution windows were misconfigured, and their subscription billing platform wasn't integrated with analytics.

**What we did:** Complete [tracking audit](/services/#infrastructure-audits) and rebuild. Implemented [server-side conversion API](/blog/server-side-tracking-not-optional/) for Meta with deduplication. Built a proper [LTV model](/blog/ltv-payback-timing/) using actual subscription retention data. Restructured Meta campaigns around true CAC targets rather than platform ROAS.

**The outcome:** Discovered systematic over-investment in channels that looked efficient but weren't. Reallocated spend based on real contribution margin, initially spending less total while scaling channels that actually worked. Within 6 months, increased overall acquisition volume at a lower blended CAC.

---

## B2B2C Fintech Platform
### Analytics implementation

**The situation:** Fintech company with a two-sided marketplace model. Data lived in Snowflake but the marketing team had no self-serve analytics. Every question required an engineering ticket. Attribution was nonexistent because their multi-touch, multi-stakeholder journey didn't fit standard models.

**What we did:** Built a custom [attribution model](/blog/replaced-attribution-tool-bigquery/) reflecting their actual user journey, including the B2B sales motion that influenced consumer adoption. Created a marketing analytics layer in their BI tool so the growth team could answer their own questions. Implemented UTM governance and channel taxonomy.

**The outcome:** Marketing team went from waiting days for data to answering questions themselves in minutes. Attribution model revealed partnership channels were dramatically undervalued by last-touch attribution, shifting budget allocation significantly. The CMO could explain marketing's contribution to the board without caveats.

---

## E-commerce Brand (Multi-SKU)
### Martech stack integration

**The situation:** Mid-size e-commerce brand with a [stack that had grown organically](/blog/martech-stack-audit/) over years. Klaviyo, Shopify, GA4, Meta pixel, Google Ads, a loyalty program, and a reviews platform, none sharing consistent customer identity. Email personalization was limited because Klaviyo didn't know what customers had actually purchased.

**What we did:** Implemented Segment as a customer data layer. Unified identity across all touchpoints. Rebuilt event tracking to capture the full product interaction journey. Connected purchase and LTV data back to ad platforms for better optimization signals.

**The outcome:** Klaviyo got accurate purchase history, unlocking abandoned cart flows that worked and post-purchase sequences tailored to actual purchases. Meta campaigns optimized to purchase value rather than conversion events. Found and fixed a tracking gap causing 15% of purchases to go unattributed.

---

## SaaS Company (Product-Led Growth)
### Paid acquisition launch

**The situation:** PLG SaaS company grown entirely through organic and word-of-mouth. Wanted to layer in paid acquisition but had never run ads. Complex free trial funnel, unclear what to optimize for or how to measure success.

**What we did:** Designed their paid acquisition measurement framework from scratch. Implemented conversion tracking for the full funnel (signup to activation to paid conversion). Built a Google Ads program focused on high-intent search. Ran [incrementality tests](/blog/incrementality-test-without-data-science/) to validate paid was driving new customers, not capturing existing demand.

**The outcome:** Paid became a meaningful acquisition channel without cannibalizing organic. Brand search was almost entirely cannibalistic (cut it). Non-brand intent terms drove genuine incremental signups. Established a measurement framework they used as they expanded to other channels.

---

## Consumer App
### Tracking repair + measurement

**The situation:** Mobile-first consumer app whose tracking had degraded over multiple iOS updates and app redesigns. Numbers were so unreliable the marketing team had stopped looking at them. Spend decisions based on instinct.

**What we did:** Full mobile tracking audit covering iOS and Android. Rebuilt MMP implementation with proper SKAdNetwork configuration. Implemented modeled attribution accounting for iOS privacy limitations. Created an [executive dashboard](/blog/dashboard-your-ceo-needs/) showing acquisition metrics people could trust.

**The outcome:** Marketing team regained confidence in their data for the first time in over a year. Identified one paid channel with negative incrementality, it was cannibalizing organic installs. Shifted budget to channels with proven incrementality, improving overall acquisition efficiency by ~25%.

---

## Want more detail?

We share deeper specifics on methodology and outcomes in conversation. Some clients have agreed to serve as references for companies evaluating similar work.

<a href="/contact/" class="btn btn-primary">Let's talk about your situation</a>

---

## Frequently Asked Questions

{% for item in page.faq %}
### {{ item.question }}

{{ item.answer }}

{% endfor %}
