---
title: "The Martech Stack Audit Nobody Wants to Do"
date: 2026-03-11
description: "Most martech stacks accumulate tools without removing old ones. Here's what a real audit looks like and what you'll find."
excerpt: "Most companies run a bloated martech stack with redundant tools, broken integrations, and data conflicts. Here's how to audit it and what you'll discover."
---

Your martech stack is broken in ways you don't know about.

Not catastrophically broken. It still works. Emails still send. Ads still run. Revenue still comes in. But underneath the surface, data disagrees with itself. Integrations quietly fail. Duplicate tools measure the same thing different ways. Your team doesn't know which system to trust, so they trust none of them.

I walked through a martech audit with a B2B SaaS company last month. They had what looked like a reasonable stack on paper. HubSpot as the CRM. Salesforce for sales forecasting. GA4 for website analytics. Segment for data collection. Amplitude for product analytics. Meta CAPI for Facebook conversion tracking. A client-side pixel for Meta tracking. Klaviyo for email. Looker for reporting. Eleven tools total, each costing between 500 and 8,000 dollars per month. The total was 67,000 dollars annually.

By the time we finished, they realized 40% of the stack was either redundant or actively broken.

## What a Real Martech Audit Looks Like

Start by inventorying every tool that touches marketing data. Create a spreadsheet with columns: tool name, cost per month, what data it collects, what data it sends to other tools, when it was implemented, and who owns it. Be exhaustive. Include tools that are barely used. Include things your predecessor implemented and nobody talks about anymore.

For the company I mentioned, that inventory looked like this: GA4 tracking website behavior and sending data to Segment. Segment collecting events and sending to both HubSpot and Amplitude. HubSpot tracking contacts, companies, and deals. Salesforce tracking deals, only for the sales team, not integrated with anything else. Meta CAPI receiving conversion events from Segment and from a client-side pixel on the website. Amplitude tracking product behavior. Klaviyo tracking email engagement.

Now map the data flows. This is where it gets uncomfortable. Draw boxes for each tool and arrows for data moving between them. You'll see that GA4 data goes to Segment goes to HubSpot goes to nowhere, because Salesforce doesn't receive it. You'll notice Meta CAPI receives data from both Segment and a client-side pixel, which means conversions might be double-counted. You'll realize that Amplitude is collecting product behavior but nobody is using those insights to inform marketing decisions.

The invisible truth emerges: this stack was assembled as a series of individual decisions made over time, not as a coherent system. Each tool was added to solve an immediate problem. None of them were removed even when the problem changed.

## Where the Broken Integrations Hide

Now audit which integrations actually work. Start with the most critical one: Segment sending data to HubSpot. Check if it's actually updating contact records. Open HubSpot and look at a contact who visited the website recently. Is the GA4 data there? Open Segment and check the destination logs. Are the calls being sent? Are they failing?

In the company I worked with, the Segment to HubSpot integration was silently failing. Segment was configured to send events, but HubSpot's API rate limits were being hit every afternoon. Segment would retry, but the delays meant that real-time marketing automation never triggered. Nobody noticed for eight months because it was running in the background.

Then check Segment to Amplitude. They had implemented this months ago. It was still running, but nobody at the company used Amplitude anymore. Data was flowing to a graveyard. That's five thousand dollars per year being spent on a tool that nobody checks.

The Meta CAPI implementation was the most painful discovery. They had both a client-side pixel and Conversions API enabled, each sending conversion events. Meta was double-counting conversions, artificially inflating their reported ROAS. When they finally turned off the client-side pixel and kept only CAPI, their reported conversion numbers dropped by 45%. The performance was the same. The measurement was just honest.

## The Uncomfortable Question: Which System Do You Actually Trust

Once you finish the audit, you face a hard choice. Which tools do you trust for truth. The company had three sources of revenue data: Salesforce said 68 closed deals last month worth 3.4 million. HubSpot said 72 deals worth 3.6 million. The manual accounting records said 68 deals worth 3.2 million.

All three numbers were "correct." Salesforce was only tracking enterprise deals and missing SMB sales recorded in HubSpot. HubSpot was double-counting some deals. The accounting records were three days delayed. None of them were lying. They were just measuring different things with different latency.

This forces a conversation you can't avoid: which system is the source of truth. For this company, the answer was accounting records, updated daily. Everything else had to reconcile to that. GA4 had to report numbers that made sense relative to revenue. Segment had to send clean data that wouldn't inflate counts. HubSpot had to match accounting records weekly, not lead the conversation.

## What to Remove and What to Keep

The company cut their stack from eleven tools to six. They removed Salesforce because the sales team was never going to keep it in sync with HubSpot. They removed the client-side Meta pixel because CAPI was better. They removed Amplitude because product analytics weren't driving marketing decisions. They removed Looker because HubSpot's native reporting was sufficient.

That cut their martech costs from 67,000 to 31,000 per year. But more importantly, it made the remaining system coherent. Data flowed in a logical direction. Integrations were simple enough that they could be debugged. Everyone on the team could explain where a number came from and why it might be different from another number.

The remaining stack was GA4 for website analytics, Segment for collection and transformation, HubSpot for CRM and automation, Meta for paid acquisition, Klaviyo for email, and a manual daily reconciliation to accounting records.

Not glamorous. Not cutting-edge. But reliable.

## How to Start Your Own Audit

Block four hours with your marketing and data teams. Build the inventory spreadsheet. Map the data flows honestly. Check if the integrations actually work by pulling logs and comparing data between connected systems.

For each tool, answer three questions. Would the business function if this tool disappeared tomorrow? Does anyone on the team actively use the data it produces to make decisions? Is the data it generates consistent with at least one other source of truth? If any tool gets a "no" to all three, schedule it for removal. If it gets a "yes" to the first but "no" to the other two, it's probably doing more harm than good by generating numbers that confuse without informing.

The process is tedious. Nobody wants to spend a Tuesday afternoon checking whether Segment's event logs match HubSpot's contact records. But the cost of not doing it is worse: making million-dollar budget decisions based on data that contradicts itself.

The uncomfortable finding in almost every audit is that 30-40% of the martech stack is redundant or actively conflicting with the rest of the system. That's not because the tools are bad. It's because martech stacks are assembled reactively, not designed proactively. Every tool made sense when it was added. The problem is that nobody went back to check whether it still makes sense now.

---

*Noah Manion is a fractional growth consultant at [softpath.co](https://softpath.co) specializing in marketing infrastructure, paid acquisition, and analytics for B2C and B2B2C companies.*
