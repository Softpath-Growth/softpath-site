---
title: "Your Analytics Only Knows About the Failures You Imagined"
date: 2026-08-11
description: "271 signup starts, zero completions, and no error in any dashboard. Why OAuth breaks inside Meta's in-app browser, and the reconciliation query that catches it."
excerpt: "271 people started a signup form in six days. Zero of them finished it. No errors, no failed submissions, no abandonment events. That absence turned out to be the finding."
---

271 people started a signup form in six days. Zero of them finished it.

No errors. No failed submissions. No abandonment events. Every dashboard I had access to reported the same thing: a funnel with a top and no bottom, and nothing in between to explain the gap.

That absence turned out to be the finding.

This is a story about a specific bug at a field service SaaS client, but the bug is not the interesting part. The interesting part is why four days of querying the warehouse could not find it, and what that says about how most teams instrument their products.

## Four hypotheses, four dead ends

The client runs Meta traffic to a demo page, which links to a signup form on a separate subdomain. Volume ramped hard in early August. Arrivals climbed. Accounts created stayed at zero.

I started where anyone would start, which is with the assumption that the traffic is bad.

**Bot traffic.** Killed it on dwell time. These sessions ran 40 seconds and moved through the demo page in a coherent order. Bots do not read.

**Creative and offer mismatch.** Killed it on path analysis. People arriving from the ads were traversing the site like they wanted the product, not like they had clicked the wrong thing.

**Form friction.** Killed it on the form itself. Name, email, password. There is not enough surface area there to lose 271 consecutive people.

**Validation rejection.** This was my best theory and it took the longest to kill. The backend returns a 200 with a success flag set to false in several cases, which means a rejected signup looks identical to a completed one from the client's perspective. The only durable record lives in an application progress table with an exit reason field, and that table lives in the app database rather than the warehouse. I asked for the counts. They were near zero.

Four wrong answers, each checked and disproven. At that point I stopped querying and opened the page on a phone.

## The two buttons

The mobile signup form led with two controls, above the fold and above the email field: Continue with Google and Continue with Microsoft.

Google has blocked OAuth from embedded webviews since 2021, with hard enforcement and a `disallowed_useragent` error since July 2023. The Facebook and Instagram in-app browsers are embedded webviews. Microsoft enforces the same policy. Apple's Sign in with Apple behaves the same way.

Every visitor arriving from a Meta ad who tapped either button got a full-page 403 and dead-ended. There is no setting that turns this off. It is enforced on Google's side, for every site's Google login, inside those apps. Nobody configures their way out of it.

The fix was user agent detection. Suppress both social buttons when the UA contains the Facebook or Instagram tokens, lead with email and password. Roughly forty lines of client-side code.

Four days of diagnosis, one afternoon of implementation. That ratio is normal when the evidence you are looking for is an absence.

## Why nothing could see it

Here is the part worth keeping.

The completion event fired inside the callback for the email and password submit path. That is the only place it fired. An OAuth attempt does not reach that callback, so it emits nothing.

The exit tracking wrote rows to the application progress table only on submit attempts. An OAuth attempt is not a submit, so it wrote nothing.

Both instrumentation layers were blind to the same failure, for the same reason. They were both built by describing the path the team designed. The failure happened on a path nobody had described.

This is not an instrumentation gap in the sense of somebody forgetting an event. Every event that existed was correct and firing. The taxonomy was complete with respect to the model of the world it was built from. That model just did not include "the user taps a button and receives a 403 from a third party."

Your event taxonomy is a document of your assumptions about how people succeed and how you expect them to fail. Failure modes you did not imagine are invisible by construction, and no amount of dashboard-staring surfaces them, because the dashboard is downstream of the same assumptions.

## The reconciliation column

There is one cheap defense against this and most teams do not run it.

Count the thing the funnel is supposed to create, from the system of record, and put it next to your client-side completion count in the same query. Accounts created from the backend table, against form completions from the client. Then subtract.

That gap column is the highest-value column in any funnel query you will write. It does not tell you why. It tells you that your client-side story and your database disagree, which is the only signal that reliably survives a failure mode you did not anticipate.

In this case the gap was the entire funnel. In the more common case it is a persistent small positive number, and it means something quiet is eating conversions. At this same client, the backend had five silent bot-detection gates that return success to the user while creating nothing. One of them limits signups to three per non-free email domain per ten minutes. A contractor signing up his office staff together hits it and gets told he succeeded.

Nothing about that is visible in an event stream. It is only visible in the difference between two counts.

## The second-order damage, and the reframe

There is a media consequence here that is easy to miss and it cuts the other way from what you would expect.

The campaign was optimizing toward a conversion event that could not fire. Meta spends against the signal it receives, so for six days the bid model was learning from nothing while the ads themselves were working better and better. Dwell time went up. Demo page traversal went up. Traffic quality rose during the outage.

That reframe matters more than the bug. Presented as "we burned a week of budget," this is a failure. Presented accurately, the money is not wasted, it is dammed up. The demand exists, it arrived, and it hit a wall forty pixels from the finish line. Fix the wall and you find out what the account can actually do.

I would rather present that than a clean week of mediocre performance.

## What I actually changed

Three things, in order of value.

The UA detection, which is the fix. Client-side, no dependencies, no touching the backend.

An event on the suppressed cohort, so the population that used to be invisible now has a name and a count. If you fix an invisible failure without instrumenting the fix, you have traded one blind spot for a slightly smaller one.

And a reconciliation query that runs client completions against backend account creations daily, with the gap as a column. That one takes ten minutes to write and it is the thing that catches the next bug of this shape, which will not look anything like this one.

---

This is the kind of work I do at [Softpath](https://softpath.co). I run growth, and I also build the systems that run it, which in practice means I am the person who reads the event payloads and the person who decides what the campaign should optimize toward. Those two jobs are usually split across a consultant and an engineer, and the bug above lives exactly in the seam between them.

Some of that thinking is productized. [Cadence](https://cadence.softpath.co) is the A/B testing tool I built because most testing platforms report on the metric you declared and stay quiet about everything downstream of it, which is the same failure as the one in this post wearing a different hat. Tests that measure conversion auto-instrument retention, whether you asked for it or not.

If your funnel numbers and your database numbers have never been in the same query, that is where I would start. [Get in touch](https://softpath.co/contact).
