---
title: "I Replaced a $40K/Year Attribution Tool With a BigQuery View"
date: 2026-03-19
description: "Most attribution tools are overkill. Here's how to build a source of truth in BigQuery that platforms can't manipulate."
excerpt: "You don't need a $40K/year attribution tool. You need raw data that you control. Here's how to build reality-based metrics in BigQuery instead."
---

I spent four months helping a company evaluate attribution tools. Every vendor had a slick demo. Every vendor promised machine learning attribution modeling and cross-device tracking. Every vendor quoted between 30,000 and 100,000 dollars per year.

I asked a simple question: do you actually need this. The answer was no. They needed a database they could trust, a view that reconciled platform claims against actual revenue, and a weekly check to see if their numbers made sense. We built it in BigQuery for zero dollars.

This isn't a complete attribution model. Real marketing mix modeling and algorithmic attribution are complex and they require sophistication. But most companies don't need that. They need a reality check. They need to know when platforms are lying to them.

## What the Old Attribution Tool Was Actually Doing

The company had been using a tool that promised to stitch together customer journeys across channels. You'd drop in your GA4 data, Meta data, email data, and it would track users through their entire journey and assign credit algorithmically.

The result looked good. Every campaign had a multi-touch attribution breakdown. 30% of revenue from first touch, 20% from middle touches, 50% from last click, adjusted for some proprietary model. Beautiful charts. Impossible to debug.

When we turned it off and went back to looking at raw data, the truth emerged. The tool had no way to actually verify its attribution. If a customer clicked a Meta ad, opened an email, and converted, who got credit. The tool said it would split it fairly. But its proprietary algorithm was a black box. You couldn't know if it was right. And when results looked suspiciously good, you had no way to sanity-check them.

That's the core problem with most attribution tools. They provide false confidence. They make you feel like you know more than you actually do.

## What We Built Instead

The replacement was remarkably simple. Raw data from three sources, combined in BigQuery, checked against accounting records weekly.

First source: ad spend from platform APIs. We set up a daily script that pulls Meta Ads Manager spend via the Ads API, Google Ads spend via Google Ads API, and LinkedIn spend via LinkedIn APIs. This goes into a table called source_ad_spend with columns: date, platform, campaign_name, amount. No interpretation. No transformation. Just the actual dollars spent.

Second source: conversion events from Segment. The company was already sending events from GA4, Shopify, and their email system into Segment. We set up Segment to export these events daily to a BigQuery table called source_events with columns: timestamp, user_id, event_type, event_properties, platform_source. An "add_to_cart" event has a different structure than a "purchase" event, but they all live in the same table with consistent timestamps.

Third source: revenue from the billing system. The Stripe API exports all charges daily. We built a simple table called source_revenue with columns: date, customer_id, amount, customer_acquisition_date. This table is the source of truth. This is actual money that came into the company.

Now we built a view called business_metrics that reconciles these sources:

```
SELECT
  date,
  SUM(amount) as total_ad_spend,
  COUNT(DISTINCT customer_id) as new_customers,
  SUM(revenue) as total_revenue,
  ROUND(SUM(revenue) / SUM(amount), 2) as mer,
  COUNT(DISTINCT CASE WHEN source = 'meta' THEN customer_id END) as customers_from_meta,
  SUM(CASE WHEN source = 'meta' THEN revenue ELSE 0 END) as revenue_from_meta,
  ROUND(SUM(CASE WHEN source = 'meta' THEN revenue ELSE 0 END) /
        SUM(CASE WHEN source = 'meta' THEN amount ELSE 0 END), 2) as meta_mer
FROM (
  SELECT
    revenue.date,
    revenue.customer_id,
    revenue.amount as revenue,
    ad_spend.platform as source,
    ad_spend.amount
  FROM source_revenue revenue
  LEFT JOIN source_events events ON revenue.customer_id = events.user_id
  LEFT JOIN source_ad_spend ad_spend ON events.platform_source = ad_spend.platform
)
GROUP BY date
ORDER BY date DESC
```

This query is simplified. The real version has 200 lines and handles cross-device journeys, time windows, and edge cases. But the principle is the same. You're pulling raw data and calculating the one metric that matters: how much revenue came from how much spend.

## The Reality Check

This view runs every morning at 7 AM. We get back a spreadsheet with daily MER and channel-level MER. On most days, it matches expectations. Some days it doesn't.

Last month, Meta reported 2,000 conversions on a specific day. The BigQuery view showed that actual customers acquired from Meta that day was 140. The gap wasn't fraud. It was attribution window confusion. Meta was counting impressions and clicks that happened a week prior but crediting them to the conversion day. The view forced a conversation: do we trust Meta's reporting or the actual customer acquisition. The answer is the customer acquisition, because that's what the business actually measures.

Another insight came from channel overlap. Email and Meta campaigns were running simultaneously. If you looked at individual channel MER, email was doing 15:1 and Meta was doing 8:1. But when you looked at the combined channel and how they influenced each other, scaling email decreased Meta performance because of audience overlap. The blended MER was 10:1, not the average of the two. The view made this visible.

## How to Build Your Own

You don't need BigQuery specifically. Snowflake works. Redshift works. Even a PostgreSQL database works if your data volume is small enough. The important thing is having raw data that you control, not filtered or transformed through a vendor's interpretation.

Start with your three data sources. First, get your ad spend automated. Most platforms have APIs. If they don't, use Zapier or Make to export daily reports to a spreadsheet. Get it into your database daily.

Second, get your event data into a central location. Segment is one option. If you're not using Segment, set up direct exports from GA4, Shopify, or whatever customer-facing systems you have.

Third, pull your actual revenue data from your billing system or accounting software. This is the source of truth.

Then write a simple query that joins these three sources and calculates MER. The query will be imperfect. You'll realize that your email platform reports conversion times in a different timezone. You'll realize that Meta attribution windows are 28 days but your revenue attribution window is 30 days. You'll have to make choices about how to handle these gaps.

That friction is actually valuable. Every decision you make about how to attribute and reconcile becomes documented. Your next analyst will understand exactly how the numbers work. They won't inherit a black box.

## The Honest Limitation

This approach doesn't give you perfect multi-touch attribution. It doesn't tell you exactly which touchpoint deserves credit when a customer has a ten-step journey. If you truly need sophisticated marketing mix modeling, hire a data scientist and run proper analyses.

But most companies don't need that level of sophistication. They need to know when platforms are lying. They need to know if their channels are actually working. They need to allocate budget across channels without getting fooled by attribution gaming.

A BigQuery view gives you that. It's a source of truth that platforms can't manipulate. It's transparent. It's reproducible. And once you've built it, it costs nothing to run.

The company that replaced their $40K attribution tool saved money, but that's not the real win. The real win is that they now understand their marketing efficiency better than they did. They know which metrics to trust. And that changes decision-making in ways that compound over months and years.

---

*Noah Manion is a fractional growth consultant at [softpath.co](https://softpath.co) specializing in marketing infrastructure, paid acquisition, and analytics for B2C and B2B2C companies.*
