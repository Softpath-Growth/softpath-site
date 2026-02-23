---
layout: post
title: "The A/B Testing Market Is Solving the Wrong Problem"
date: 2026-02-25 09:00:00 -0600
categories: career industry
excerpt: "Why I built Cadence, and why testing infrastructure was never the bottleneck."
---

Most A/B testing programs fail silently.

Not because the tools are broken. Optimizely works. VWO works. Statistical significance is real. The math is fine.

They fail because nobody called the test. Because the results got filed in Notion and never touched again. Because the growth PM is presenting at the QBR with a slide that says "17 experiments launched" and a CEO who has no idea what any of them did to the business.

I've watched this happen at company after company across 13 years of growth work. The testing program exists on paper. The velocity does not. And when I went looking for a tool that actually treated that as the core problem to solve, I found nothing. Just a graveyard of Google Optimize alternatives competing on feature parity with tools that cost 10x more.

So I built Cadence.

---

## What broke the market in 2023

When Google shut down Google Optimize in September 2023, they displaced a massive chunk of the testing market overnight. These were teams running perfectly functional experiments for free, suddenly being asked to pay $500-2,000/month for enterprise software they'd never need 80% of.

The alternatives that positioned to capture them all made the same mistake: they competed on infrastructure. Faster test deployment. Better stats engines. More integrations. Fancier targeting.

None of that was the problem.

The problem was that most growth teams at Series A-C companies don't have an infrastructure problem. They have a discipline problem. They have a communication problem. They have a "we ran four tests last quarter and our CEO thinks experimentation is theater" problem.

No existing tool was trying to solve that.

---

## How the market actually bifurcated

The A/B testing landscape split into two camps that both miss the same customer.

On the high end, you have Optimizely and Adobe Target. Serious tools, serious price tags, requiring dedicated experimentation programs and internal champions just to justify the contract. Built for companies where experimentation is already a first-class function with headcount attached. If you're not already there, these tools will not get you there -- they'll just give you a more expensive version of the same dysfunction you already have.

On the low end, you have the developer-focused open source alternatives -- GrowthBook, Flagsmith, Unleash. Legitimate tools, genuinely free, and completely dependent on engineering capacity to run. No executive-facing output. No workflow enforcement. No accountability layer. The growth PM who needs to run tests without pulling dev cycles gets nothing from these except a GitHub repo to send to their already-overloaded engineering team.

The gap is the growth PM at a 40-person Series B with a small dev team, a testing program that exists on paper, and a quarterly business review coming up where they need to show impact. That's not a niche. That's a massive slice of the market, and nobody is building for them specifically.

---

## What Cadence does differently

The core bet behind Cadence is this: testing infrastructure is now a commodity, and the real value is in what sits on top of it.

So the infrastructure is free.

What you pay for is the system that makes your team actually ship tests consistently -- and the output layer that makes those tests legible to people who don't care about p-values.

**Workflow enforcement.** Cadence treats a test like a project with a lifecycle, not a SQL query you fire and forget. It enforces calling conventions, tracks test age, and surfaces when something has been running past its useful window. The default state of a test is not "running indefinitely" -- it's "has a decision date." That one shift in assumption changes how teams behave.

**The Impact View dashboard.** Most testing tools produce outputs that only data people can read. Cadence produces outputs designed for the quarterly business review. Revenue impact projections. Retention curves. Annualized lift estimates. The goal is that your CEO can look at your testing program results for thirty seconds and understand what it's doing for the business. That's not vanity -- that's how testing programs survive internal politics long enough to actually compound.

This came out of a simple observation: the testing programs that die aren't the ones with bad data. They're the ones where leadership can't see the value. If your CEO can't read your experiment results, your testing program is one bad quarter away from getting defunded.

---

## Why it started as an internal tool

I built the first version of Cadence for my own consulting work. I needed a way to manage experiments across multiple client accounts without context-switching constantly, and I needed output formats I could drop into a client deck without reformatting everything in Google Sheets the night before a call.

The workflow enforcement piece came from watching clients run tests past significance for months because nobody owned the decision. I started building the "call the test" logic in because I was tired of being the person who had to manually check every two weeks and tell a team their experiment had been done for a month.

The executive communication layer came from a different frustration: clients who were genuinely doing good work but couldn't defend it internally. Growth PMs who were running disciplined experiments and losing budget fights because their reporting looked like a data export and not a business narrative.

Both of those problems are organizational, not technical. The solution had to be opinionated about process, not just capable of running tests.

---

## Where this fits if you're evaluating options

Cadence is not the right tool if you need multivariate testing across thousands of sessions per hour with enterprise SSO and a dedicated CSM. Buy Optimizely.

It's not the right tool if you want full infrastructure control and are happy managing flag evaluation logic in your codebase. Use GrowthBook.

It's the right tool if you're a growth PM or fractional head of growth managing a testing program that should be producing more than it is, and you need something that will enforce discipline without requiring an engineering sprint to maintain. It's the right tool if you're presenting experiment results to leadership and currently translating p-values into business language manually every time.

The pitch is simple: the bottleneck in your testing program isn't the tool. It's the process and the communication. Cadence is built to fix those two things and get out of the way.

---

If that problem is familiar, [check out Cadence](https://cadence.softpath.co) and see what it looks like in practice.
