---
title: "Building vs. Buying Your Growth Infrastructure"
date: 2026-04-20
description: "When to replace SaaS tools with custom-built solutions and when to keep buying. A framework for infrastructure decisions that actually matter."
excerpt: "The trend of building custom tools instead of buying SaaS is real. But most companies get the tradeoff wrong. Here's the framework for deciding."
---

The trend of building custom tools instead of buying SaaS is real. But most companies get the tradeoff wrong.

You see it everywhere. A startup replaces Clay with a custom data pipeline. Another replaces Marketo with an in-house email system. Another builds a proprietary attribution layer instead of licensing something off the shelf. Sometimes these decisions work out. Most of the time they consume engineering resources that should have gone to the product.

The framework for deciding is simple: build when you have a stable, well-understood workflow at scale where per-unit economics don't work. Buy when you're still figuring out what you need and the platform's flexibility has value.

But almost everyone inverts this. They build when they're still experimenting. They buy when their workflow is locked in and they're just throwing money away.

## Why the Trend Exists

First, let's understand what sparked the "we built instead of buying" trend. Most of it comes from a real economics problem. B2B SaaS tools are priced for the masses. They need to cover a huge cost base. So a tool like Marketo or Salesforce Pardot costs 1,200 to 2,000 dollars per month even if you're only using 20% of the features.

If you have a narrowly defined use case and you're sending enough emails, Marketo's per-message economics are brutal. They're charging you for features you don't use. So a team thinks: we can hire an engineer. We can build something that does exactly what we need. We'll save money.

This is mathematically real, at least on the surface. An engineer costs 150K per year. Marketo costs 18K per year. The engineer pays for itself if they create value worth more than 132K per year. Over multiple years, the math gets better.

But this analysis is missing pieces. The engineer isn't doing this one thing forever. They're maintaining it. They're handling bugs. They're dealing with scaling issues. They're building reporting on top of it. The actual cost is much higher than the salary.

Also, the engineer probably wasn't going to be 100% utilized on this one system. In reality, they're dividing their time. 60% on this custom tool, 40% on other things. The economics change dramatically.

But there is a real case where building wins. It's when the workflow is stable, the volume is truly massive, and the per-unit cost of the SaaS solution is actually untenable. Not just "annoying," but genuinely impossible.

## The Clay Case Study

Look at the "we replaced Clay" post from earlier this year. The company had a locked-in workflow. They were doing data enrichment and deduplication on massive lists. Clay was working but it was too expensive at scale. They had engineers. They built a custom solution.

This is a textbook case for building. The workflow was known. The scale was high. The cost per record in Clay was killing the unit economics. Building made sense. But also notice this: they didn't decide overnight. They used Clay for over a year. They proved the concept worked. Then they built.

Most companies don't do this. They use a tool for three months, think it's limiting them, and decide to build. Wrong move. You don't know enough yet.

## When You Should Still Be Buying

You should buy when you're discovering what you need. If you're testing a new go-to-market motion, a new channel, or a new customer segment, you don't know what infrastructure you need yet. You don't know what's a bottleneck and what's irrelevant. So buy something flexible. Use it until the workflow becomes clear.

You should buy when the integration ecosystem matters. If you need to connect to Salesforce, HubSpot, Slack, and ten other tools, buying a mature platform saves months of engineering time. A custom system built by one engineer might not have those integrations and maintaining them as they change APIs is a nightmare.

You should buy when you need the credibility. For compliance-heavy use cases (healthcare, finance, data security), a mature SaaS tool with SOC2 certification and audit trails is worth paying for just for the legal defensibility. Building your own compliance infrastructure is possible but expensive.

You should buy when the platform's roadmap adds value. If Slack is adding features you'll eventually need, the cost of getting those features from a custom build is steep. If Marketo is adding AI-powered segmentation and your engineering team isn't specialized in machine learning, you're probably better off waiting for the feature and paying for it.

## When You Actually Should Build

Build when the workflow is stable and you're throwing money away on features you don't use. Build when the integration requirements are simple and stable. Build when your engineering team has specialized knowledge that the SaaS platform doesn't (like a unique attribution model or a domain-specific data transformation).

Build when the scale of the operation justifies the cost. If you're processing 10 million records per month and paying 5,000 dollars per month on a SaaS tool, you might build. If you're processing 100,000 records per month, you shouldn't.

Build when you have an extended timeline to recoup the investment. If you're hiring someone for a specific role anyway (a data engineer, a DevOps engineer), allocating some of their time to building infrastructure makes sense. If you're hiring them specifically for this project and expecting to redeploy them in six months, you won't recoup the cost.

Build when the tool is actively limiting your business. Not inconvenient. Not suboptimal. Actually blocking you from doing something you need to do. If your go-to-market motion requires something the tool can't do, and you can't workaround it, build.

The key insight is that building takes longer than people think and delivers less than people hope. The tool you build in three months usually takes six. It usually doesn't have all the features you wanted. It definitely needs maintenance that eats engineering time. You account for this and you might still decide to build. But most teams don't account for it. They're shocked when the project takes twice as long and costs three times as much.

## The Meta-Point

Here's the thing most people miss. The decision of where to draw this line is more valuable than any individual tool choice.

A company that's good at this decision will thrive. They'll build when it makes sense, buy when it makes sense, and know the difference. They'll notice when a workflow has stabilized and it's time to explore building. They'll notice when they're overcomplicating something and it's time to go back to a simple SaaS tool.

A company that's bad at this decision will waste money either way. They'll pay for tools they don't need or hire engineers to rebuild things that already exist. They'll get trapped in local decisions that make sense in isolation but don't make sense in aggregate.

The skill isn't "should we use Clay or build." The skill is knowing whether your situation is the kind where building makes sense. That's 80% of the decision. Once you know that, the specific tool choice is just execution.

You get this right by actually running the math, including the hidden costs. By talking to other companies in your stage who've faced the same decision. By being honest about whether your workflow is actually locked in or whether you're still experimenting. By acknowledging that the engineer's time has opportunity cost (what else would they be building instead).

Most importantly, you get this right by not making the decision once. A decision that made sense two years ago might not make sense today. A tool that was wrong for you six months ago might be right now. The companies that win are the ones constantly evaluating the tradeoff instead of treating their previous decision as permanent.

---

*Noah Manion is a fractional growth consultant at [softpath.co](https://softpath.co) specializing in marketing infrastructure, paid acquisition, and analytics for B2C and B2B2C companies.*
