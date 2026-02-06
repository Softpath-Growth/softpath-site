---
layout: post
title: "Why Every A/B Test Duration Calculator Lies to You (And What I Built Instead)"
description: "Most A/B test calculators give you technically correct math while completely ignoring organizational reality. Here's why that's a problem, and what honest testing advice actually looks like."
date: 2026-02-10
author: Noah
categories: [measurement, testing, analytics]
---

The standard A/B test duration calculator will tell you that with a 5% baseline conversion rate, expecting a 20% relative lift, you need about 18,000 visitors per variant to reach 80% statistical power at 95% confidence.

This is mathematically correct. It's also completely useless.

The calculator won't tell you that your CEO will kill the test on day 12 when they see variant B slightly underperforming. It won't mention that your sample size assumes independence that doesn't exist because half your traffic comes from the same Facebook campaign. It won't acknowledge that you're going to peek at the results daily and feel compelled to act on noise.

Most importantly, it won't tell you that statistical significance theater has replaced actual learning in most organizations.

I built [abmathsucks.com](https://abmathsucks.com) because I was tired of pretending the math was the hard part.

## The Lie of Omission

Here's what typical A/B test calculators do: they take your inputs (baseline rate, minimum detectable effect, desired power, significance level) and return a sample size or duration. Clean, clinical, correct.

Here's what they don't do: acknowledge that the returned number exists in a social and organizational context that will systematically undermine your ability to actually run the test for that duration.

This isn't pedantry. The gap between "mathematically required duration" and "organizationally feasible duration" is where most testing programs go to die.

Consider a real scenario: you work at a mid-size e-commerce company. You want to test a new checkout flow. The calculator says you need 28 days. Your VP of Product has a board meeting in 3 weeks and wants to report results. Your engineering team is planning a major infrastructure migration that will invalidate your test in 25 days. Your CEO reads a competitors' blog post about the exact thing you're testing and Slacks you asking why you're not just shipping it.

The calculator gave you a number. Reality gave you an impossible constraint satisfaction problem.

## What Honesty Actually Looks Like

When I sat down to build a different kind of calculator, I started with a simple question: what would it look like to tell people the truth about their tests, not just the math?

The result was a calculator with two modes: "Nice" and "Aggressive."

Nice mode gives you the math plus gentle reality checks. "Your test needs 34 days. Consider whether your organization can actually wait that long before making decisions."

Aggressive mode gives you the math plus brutal honesty. "Your test needs 47 days. Your CEO will kill it on day 8 when the line goes down. Your VP will kill it on day 15 when they read a hot take on Twitter. Your engineering team will kill it on day 23 when they need to ship something unrelated. Plan accordingly."

The aggressive mode isn't mean for the sake of being mean. It's honest for the sake of being useful.

## The Organizational Dynamics Nobody Mentions

The reason standard calculators fail isn't because the statistics are wrong. It's because they ignore three fundamental realities:

**Reality 1: Peeking is inevitable**

You're going to look at the results before the test is done. Your stakeholders are going to look. Someone is going to put the interim results in a dashboard. Someone else is going to share that dashboard in Slack.

The question isn't whether people will peek. The question is whether you've planned for the fact that peeking will generate pressure to make decisions on insufficient data.

Standard calculators pretend this doesn't happen. Honest calculators acknowledge it and help you plan around it.

**Reality 2: Organizational patience is finite and predictable**

There's a fairly consistent pattern across companies: executives lose patience with tests around the 2-week mark. Product managers lose patience around week 3. Engineers lose patience whenever they need to ship something that touches the same code.

This isn't a character flaw. It's a resource allocation problem. Running tests has opportunity cost. Keeping code branches alive has maintenance cost. Waiting for results has competitive cost.

The calculator that tells you "you need 6 weeks" without acknowledging that your organization's patience expires at 3 weeks is giving you technically correct advice that's practically useless.

**Reality 3: Sample size assumptions are almost always violated**

The independence assumption underlying sample size calculations is rarely true in practice. Your traffic isn't random. It's clustered by campaign, by day of week, by time of day, by cohort, by a dozen other factors that violate the "independent and identically distributed" assumption.

Most calculators ask for "daily traffic" and assume you can just multiply by days. This works if your traffic is perfectly uniform and independent. It falls apart when Monday traffic behaves differently than Friday traffic, or when your paid campaigns drive dramatically different user intent than organic traffic.

Honest calculators acknowledge this. They tell you that your 28-day estimate might actually need to be 35 or 40 days when you account for weekday vs. weekend clustering. They remind you that if you're running this test during a major promotional period, your results might not generalize to normal conditions.

## The Statistical Significance Theater Problem

Here's the uncomfortable truth: most organizations don't run A/B tests to learn. They run A/B tests to justify decisions they've already made.

Statistical significance has become a box to check, not a meaningful threshold for decision-making. Teams pick the variant that "feels better" and then wait until the test reaches significance to justify the choice. If the test doesn't reach significance in time, they either extend it selectively or ship anyway and post-rationalize the decision.

This is measurement theater, not measurement practice.

Standard calculators enable this theater by providing an aura of scientific rigor without acknowledging the social dynamics that undermine that rigor. They give you a number that looks authoritative and scientific, which you can then use to justify whatever you were going to do anyway.

Honest calculators don't solve this problem, but they at least acknowledge it exists.

## What Real Testing Discipline Requires

If you actually want to run tests that generate learning rather than justification, you need more than a calculator. You need:

**Organizational pre-commitment:** Decide before the test starts what decision rule you'll use and what you'll do with each outcome. Write it down. Share it with stakeholders. Hold yourself accountable to it.

**Guardrail metrics:** Don't just measure your primary metric. Measure what could break. If you're testing for conversion lift, also measure revenue per conversion, repeat rate, support tickets, and anything else that could reveal you're attracting lower-quality users. Celebrating a conversion increase that damages LTV is statistical malpractice.

**Realistic timelines:** Use a calculator that tells you the organizational truth, not just the mathematical truth. If the math says 45 days but your organization can only sustain 25, either change the test design (larger effect size, higher power threshold, different metrics) or acknowledge you're underpowered and treat results accordingly.

**Willingness to say "we don't know":** Sometimes tests are inconclusive. Sometimes they reveal the effect is smaller than you can reliably measure. Sometimes they show results that contradict your intuition and you need to dig deeper to understand why. Statistical discipline means accepting these outcomes, not torturing the data until it tells you what you want to hear.

## Why I Built This Tool

I've spent the last decade working with companies on growth measurement and marketing infrastructure. I've seen the same pattern repeatedly: smart teams build sophisticated testing programs, set up proper statistics, use all the right tools, and still end up making decisions based on gut feel and organizational politics rather than evidence.

The bottleneck is rarely the math. The bottleneck is the gap between what the math requires and what the organization can actually deliver.

Standard calculators don't acknowledge this gap. They give you a number and send you on your way. They let you pretend that testing discipline is about getting the statistics right, when it's actually about aligning statistical requirements with organizational constraints.

I built [abmathsucks.com](https://abmathsucks.com) to make that gap visible. The aggressive honesty mode isn't there to be edgy or contrarian. It's there to surface the organizational dynamics that standard calculators ignore.

If you're running tests, you deserve tools that tell you the truth about what you're up against, not just the math that assumes away all the hard parts.

## The Calculators You Actually Need

This is the first in what will be a series of measurement tools that prioritize organizational reality over statistical purity. Coming next:

**True CAC Calculator:** Most CAC calculations ignore attribution window effects, incremental vs. baseline spend dynamics, and the fact that your "organic" channel isn't actually organic. Let's calculate what you're really paying.

**Attribution Window Calculator:** How long should your attribution window be? Standard answer: 7 or 30 days. Honest answer: it depends on your purchase cycle, your measurement infrastructure, and how much you're willing to lie to yourself about channel effectiveness.

**Incrementality Test Planner:** Want to know if your paid channels are actually incremental? Standard advice says run holdout tests. Honest advice says your holdout test is probably underpowered, your channel mix effects are confounding your results, and you need a different approach entirely.

These tools share a philosophy: measurement reality matters more than measurement purity. Better to be approximately right about the actual constraints you face than precisely correct about an idealized scenario that doesn't exist.

## If You Need Help

I run Softpath, a fractional growth consultancy focused on marketing infrastructure, paid acquisition, and analytics reality. I work with companies to build measurement systems that acknowledge organizational constraints rather than pretending they don't exist.

If you're struggling with testing discipline, attribution modeling, or the gap between what your data says and what actually works, let's talk.

[Get in touch →](https://softpath.io/contact)

---

*All the calculators mentioned in this post are free, no email required, no BS. They're built to be useful, not to capture leads. Though if you find them useful and want to work together, I won't complain.*