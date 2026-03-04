---
title: "Stop A/B Testing Things That Don't Matter"
date: 2026-04-12
description: "Most A/B testing programs are exercises in statistical theater. Here's why your tests probably won't detect anything meaningful and what to do instead."
excerpt: "Your A/B testing program exists to make your company feel scientific. Almost none of your tests will reach statistical significance, and that's by design."
---

Your A/B testing program exists to make your company feel scientific. Almost none of your tests will reach statistical significance, and that's by design.

This isn't cynical. It's math. You probably don't have enough traffic to detect meaningful effect sizes. You're testing variables that don't matter. You're peeking at results and calling tests early. You're measuring leading indicators that don't correlate with things you care about. Your entire testing infrastructure is built to generate the appearance of rigor without the reality of insight.

I'm not saying you shouldn't A/B test. I'm saying you should stop testing things that won't matter even if they work.

## The Traffic Problem

Let's start with the obvious. Statistical significance requires sample size. Sample size depends on three things: the baseline conversion rate, the effect size you're trying to detect, and how much certainty you want (usually 95% confidence and 80% power).

Go to abmathsucks.com and run the math. If your baseline conversion rate is 5% and you want to detect a 10% relative improvement (so 5% becomes 5.5%), you need roughly 16,000 visitors per variation. That's 32,000 people total to run a two-way test.

Most companies running A/B tests don't have that traffic. So either they need to run tests for weeks or months, or they need to test much larger effect sizes. A 10% relative improvement is meaningful. A 30% improvement is the kind of thing that shows up as a banner on every marketing deck. But it almost never happens.

So what actually happens. Teams run a test for two weeks, see a 2% improvement in the metric they're watching, and call it a win even though the result could easily be statistical noise. Or they peek at the data halfway through, see something interesting, and shut down the test early. Both approaches feel wrong because they are wrong.

The numbers are brutal. Most companies testing on conversion funnels see effect sizes between negative 3% and positive 3%. If your effect size is actually 3% and your traffic is 5,000 visitors per variation, the probability that you'll detect that effect with 95% confidence is maybe 15%. You'll run the test, see nothing, and think the feature doesn't matter. When really you just don't have enough traffic to know.

## The Problem of Testing Trivia

Even if you had infinite traffic, you're testing the wrong things. Most A/B tests run at companies are about small changes to the interface. Button colors. Copy tweaks. Form field ordering. These are experiments in statistical theater.

Here's the test: would you make a decision based on this result if it worked. If your button color test showed a 20% improvement in click-through rate, would your company suddenly change how it thinks about product? Probably not. You might update the design system. But you wouldn't shift your overall strategy.

Now ask yourself: what's the realistic effect size. Button colors might move a metric by 1% or 2%. That's not nothing. But it's also not something you can reliably detect unless you have massive traffic.

Compare that to testing something that actually matters. What if you tested removing the paywall entirely for a week and offering free trial users a different value proposition. The effect size would be massive (either +30% conversion or -15%, but not 2%). You could detect it quickly. And the result would actually change how you think about your business.

Most A/B testing programs do the opposite. They test things with small effect sizes (because they're also hard to implement, iterate on, and measure). They need massive sample sizes to detect those effect sizes (which they don't have). So they consistently fail to reach significance (which feels like scientific rigor, but it's actually just noise).

## The Novelty Effect and Early Termination

You've probably seen this in your own tests. You launch a new landing page design. The first week looks great. Conversion rate jumps 15%. Everyone's excited. By week two, it's back to baseline. The change wore off.

This is the novelty effect. Users notice new things and interact with them differently, at least until the newness fades. Testing for two weeks and stopping is not rigor. It's learning the wrong lesson.

The solution is to run tests long enough to see the effect stabilize. That usually takes three to four weeks if you're testing user-facing changes. But most companies run tests for one or two weeks because waiting is boring and everyone's impatient.

Then there's peeking. You run a test. After three days, you check the results. They look good. After a week, they still look good. So you turn off the test and call it a win, even though you planned to run it for two weeks. This is incredibly common and it's also mathematically indefensible. When you peek, you increase the false positive rate. A result that looked significant at day seven might not be significant at day fourteen. But you'll never know because you stopped looking.

The technical term is "peeking bias" or "multiple comparisons problem." The practical term is "theater." You wanted to feel scientific so you ran a test. You didn't want to wait so you called it early. Now you believe something that probably isn't true.

## The Leading Indicator Problem

You optimize for the metric in front of you. If you're testing on a landing page, you optimize for conversion rate. If you're testing on email, you optimize for click-through rate. If you're testing in product, you optimize for feature adoption or DAU.

But most of these metrics don't predict the things you actually care about. Click-through rate on email doesn't predict revenue. Conversion rate on landing pages doesn't predict customer lifetime value. Feature adoption in product doesn't predict churn.

You can win a hundred A/B tests and lose customers. This is the most insidious trap in modern A/B testing. You have data. You have significance. You have momentum. But you're optimizing for the wrong thing.

The solution is to follow the chain. If you test landing page copy, don't optimize for conversion rate alone. Check whether those converted users are the right users. Are they retained? Do they spend more? Do they have lower support costs? If none of that changes, then the test won the metric game but lost the business game.

Most companies don't do this. It requires data infrastructure to follow users downstream. It requires waiting weeks or months to see the full picture. It's not exciting. So instead, companies run tests, celebrate when the click-through rate goes up, and wonder why their payback period keeps getting longer.

## When A/B Testing Actually Works

This isn't an argument against testing. It's an argument for testing things that matter, on platforms where you have enough traffic, with enough rigor to get honest answers.

You want to test changes to your primary user journey where the effect size is likely to be large. You want to run tests long enough to see the novelty effect fade. You want to measure downstream impact, not just the immediate metric. And you want to only run tests if you have the traffic to actually detect a meaningful effect size.

Use abmathsucks.com. Run the math for your traffic, your baseline conversion rate, and the smallest effect size you'd actually care about. If the required sample size is three times your weekly traffic, don't run the test. It'll waste your time and teach you nothing.

Instead, run fewer tests on bigger changes. Test a different value proposition. Test a different pricing model. Test removing a step from your signup flow. These have bigger effect sizes. They matter more. And you can actually detect them.

## The Real Skill

The meta-problem is that your A/B testing program is probably optimized for running tests, not for learning. You have dashboards. You have statistical significance thresholds. You have guardrails. But most of what you're testing won't matter even if it works.

The companies that actually win with testing are the ones ruthless about test selection. They don't test button colors. They don't run tests on low-traffic surfaces. They don't peek and they don't call tests early. They ask whether a result would change a decision, and if the answer is no, they don't test it.

They also know what they don't know. They recognize that a negative result doesn't mean something doesn't work. It means they didn't have enough power to detect it. So they either run the test longer, get more traffic, or just make the decision based on reason rather than data.

This is the uncomfortable truth about A/B testing. The companies with the most rigorous testing programs often learn the least. The ones that win are the ones willing to make decisions on smaller sample sizes, to trust their intuition when the data is inconclusive, and to test only the things where the answer actually matters.

Your testing program should feel productive. But it should also be honest about what it can and can't tell you.

---

*Noah Manion is a fractional growth consultant at [softpath.co](https://softpath.co) specializing in marketing infrastructure, paid acquisition, and analytics for B2C and B2B2C companies.*
