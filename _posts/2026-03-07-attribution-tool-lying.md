---
title: "Your Attribution Tool Is Lying to You. Here's How to Check."
date: 2026-03-07
description: "Meta reports 1,000 conversions, but your CRM shows 650 closed deals. Here's how to find the gap and fix your attribution."
excerpt: "Meta reports 1,000 conversions, but your CRM shows 650 closed deals. Most companies find their attribution tools overcount by 15-40%. Here's the reconciliation process that fixes it."
---

Your attribution tool is lying. Not intentionally. But it's lying to you anyway.

Meta Ads Manager reported 847 conversions last month. Your Salesforce CRM shows 523 closed deals in the same period. Your GA4 instance reports a different number entirely. These gaps aren't rounding errors or timing discrepancies. They're systematic, they're massive, and they're making every dollar allocation decision you make unreliable.

The core problem is that platforms have an incentive to overcount. Their entire business depends on proving that advertising works. When you spend a million dollars and they report results, the incentive structure pushes toward generous attribution rather than conservative measurement. A user might click an ad six months ago and still count as a "conversion" today under some attribution windows. That same user might convert on a competitor's website. That might count too.

I've seen companies where this gap runs as high as 50%. A D2C brand spending $200K/month on Meta was reporting a 3.8x ROAS inside the platform. When we reconciled against Shopify revenue and stripped out returns, the real number was 2.1x. They'd been scaling aggressively based on the inflated number for six months. That's roughly $360K in spend they wouldn't have approved if they'd known the real efficiency.

You need to measure this gap yourself. Here's how.

## Step One: Pull the Real Numbers from Each Platform

Start with Meta Ads Manager. Go to the Campaigns view for last month. Export the conversions reported in your account. If you're running CAPI (Conversions API), pull those numbers separately because they often disagree with pixel data. Write down the exact number. Let's say it's 1,000 conversions for March.

Now go to GA4. Find the event you care about, whether it's "purchase," "sign_up," or "demo_requested." Note the count. GA4 will likely show a different number than Meta because of different attribution windows and cross-device handling. Let's say GA4 shows 847.

Pull your CRM revenue. This is the hardest number to get right, but it's also the most honest one. Open Salesforce or HubSpot. Filter for deals closed in March. Sum the actual revenue. Don't count pipeline. Don't count opportunity size. Count actual, closed revenue from actual customers. This is 650 deals worth 3.2 million dollars in your example.

Now you have three reference points: Meta says 1,000, GA4 says 847, CRM says 650 closed deals. The gap between Meta and your CRM is 35%. That's not noise.

## Step Two: Understand Where the Gap Lives

The gap exists because of three forces working in the same direction.

First, view-through attribution. A user sees your ad, doesn't click, but later types your domain directly and buys. Platforms count this as a conversion even though they never actually drove a click. Meta's default includes 1-day view-through attribution, which means anyone who saw your ad and converted within 24 hours gets counted, even if they never engaged with it. For a company running broad awareness campaigns, this alone can inflate numbers by 10-20%.

Second, attribution window length. Meta's default is 7 days for clicks and 1 day for views (they changed from 28 days post-iOS 14.5, but many accounts still run longer windows). Google Ads defaults to 30 days. If someone clicks your ad on day 25 and converts on day 28, one platform counts it and the other doesn't. If they convert on day 31, neither does. But they still made a purchase that your CRM recorded.

Third, cross-device confusion. A user clicks on mobile, converts on desktop. Platforms attempt to stitch these sessions together using logged-in user data, but the matching is imperfect. When it works, great. When it doesn't, you get duplicate attribution or missed conversions depending on which direction the error falls.

None of these are wrong per se. But they're all biased upward, and they all inflate platform-reported conversions relative to actual revenue.

Add in the fact that some people click your ads and never buy anything (the "conversion" might be a lead form submission that never becomes revenue), and you realize that platform conversions and business conversions are measuring completely different things.

## Step Three: Build Your Reconciliation

Create a simple spreadsheet. Columns: date, Meta conversions reported, GA4 conversions, CRM closed deals, revenue. Fill it out weekly for four weeks. Calculate the ratio between reported conversions and closed revenue. In your example, Meta reports 1,000 conversions to generate 650 closed deals. That's a 1.54 to 1 ratio. GA4 reports 847 conversions to generate 650 closed deals. That's a 1.30 to 1 ratio.

The most useful metric here is actually the inverse: how many reported conversions does it take to generate one dollar of revenue. Meta requires 1,000 conversions to generate 3.2 million, or 0.31 cents per conversion. GA4 requires 847, or 0.38 cents per conversion. These numbers should feel intuitive when you calculate them. If your average deal size is 5,000 dollars, you'd expect to need around 130 conversions to generate one deal (5,000 divided by 38 cents per conversion reported). If Meta is reporting way more than that, something is off.

This reconciliation process reveals the true efficiency of your marketing. It's not what the platforms report. It's the ratio between what they report and what actually happened in your business.

## Step Four: Make This a Weekly Habit

Don't do this once and call it done. Automation is your friend here. Use a tool like Zapier or Make to pull Meta conversions, GA4 events, and Salesforce closed deals on Sunday morning. Drop them into a Google Sheet. Calculate the ratios. Send yourself a Slack message with the numbers.

After three weeks, patterns emerge. You'll notice that some campaigns are 15% less efficient than others. You'll see that weekend traffic converts at a different rate than weekday traffic. You'll notice when a platform update changes the attribution rules and suddenly everything looks different.

Most importantly, you'll stop making decisions based on inflated platform metrics. When Meta says a campaign achieved a 2:1 ROAS and your spreadsheet shows it's actually 1.2:1, you make better decisions.

## What You'll Find

Companies that do this rigorously almost always discover a 15-40% overcount in platform metrics relative to actual revenue. Some find higher gaps. Some find lower ones. The gap varies by industry. SaaS companies often see larger gaps because their attribution windows are longer. E-commerce companies sometimes see smaller gaps because conversion is simpler.

The real insight is this: your platforms are not lying about what they measure. They're accurately measuring impressions and clicks and events. But those measurements are only loosely correlated with the revenue that actually matters. The gap between what gets reported and what actually happens is the real metric you need to track.

---

*Noah Manion is a fractional growth consultant at [softpath.co](https://softpath.co) specializing in marketing infrastructure, paid acquisition, and analytics for B2C and B2B2C companies.*
