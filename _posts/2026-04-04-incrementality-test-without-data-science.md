---
title: "How to Run an Incrementality Test Without a Data Science Team"
date: 2026-04-04
description: "Incrementality tests don't require data scientists. Run a geo holdout test with basic math to prove channel impact."
excerpt: "You don't trust platform attribution. You shouldn't. But you can measure real channel impact with a simple test and no data science team."
---

I wrote previously about how to interpret incrementality results without making the mistake of killing channels that still work. This post is the prequel: how to actually run the test yourself.

Most marketing teams think incrementality testing requires a data science team, statistical significance calculations, and expensive software. So they don't test. They trust platform attribution instead. They shouldn't.

The simplest incrementality test is a geo holdout. Pick some markets. Turn off your spend in a subset. Measure the revenue difference. The difference is your incrementality. No statisticians required.

## How a Geo Holdout Test Works

Start with this basic principle: if you turn off a marketing channel and revenue drops, that channel was working. If revenue stays flat, it wasn't working. The size of the drop tells you how much that channel contributes.

In a geo holdout test, you pick geographic regions where you have comparable revenue. If you operate nationally, pick five regions with similar customer density, average order value, and seasonality. The regions should be large enough to have stable daily revenue (usually metro areas or states).

You keep spending normally in four regions (test regions). You cut spend to zero in one region (holdout). You measure revenue for both groups over the test period. The revenue difference between test and holdout, scaled to account for population differences, is your incrementality.

Concrete example. You spend $50,000 per month on paid acquisition nationally, distributed evenly across five regions. You're testing whether paid acquisition is actually working or whether people would have bought anyway.

You pick five regions: Northeast, Southeast, Midwest, Southwest, and West Coast. Historically, each generates about $600,000 in monthly revenue. You've been spending $10,000 per month on paid in each region.

You run the test for one month. In the Northeast (your holdout), you turn off all paid acquisition spend. You spend nothing. In the other four regions, you spend the normal $10,000 each.

Results for the month:

Northeast (holdout, $0 paid spend): $580,000 revenue
Southeast (test, $10,000 spend): $605,000 revenue
Midwest (test, $10,000 spend): $608,000 revenue
Southwest (test, $10,000 spend): $602,000 revenue
West Coast (test, $10,000 spend): $610,000 revenue

The Northeast dropped by $20,000 from its $600,000 baseline. That's a 3.3% revenue decline. Your test regions averaged $606,250, a 1% increase from baseline.

The difference between test and holdout is $26,250 for the month. You spent $40,000 across the test regions (four regions at $10,000 each). Your incrementality is $26,250 in revenue from $40,000 in spend, roughly a $0.66 incremental revenue per dollar spent.

That's your real ROI. Not platform attribution. Real measured impact.

## Getting Sample Size Right

The biggest mistake in geo holdout tests is using regions too small. If your holdout region has $100,000 in monthly revenue, random fluctuation (seasonality, a big sale, competitor promo) can swing it by 20%. Your test becomes noise.

You need your holdout region to generate at least $300,000 in monthly baseline revenue. Ideally $500,000+. That dampens random fluctuation.

If your business is smaller or concentrated, you can use longer test periods instead. Rather than one month, run the test for three months. Seasonal variance gets smoothed out. You'll see the real incrementality.

The test period should also match your sales cycle. If most of your sales happen 3-7 days after the ad, run the test for 14 days to let conversions settle. If your sales cycle is 30 days, run 45 days.

Longer tests are better. A 90-day test with three months of holdout data will show you the true incrementality much better than a 14-day test. You're trading test duration for accuracy.

## Confounds to Watch For

The hardest part of a geo holdout test isn't the math. It's controlling for things that change during the test and aren't your paid acquisition channel.

Suppose a competitor runs a national promotion during your test month. Suddenly all your regions see lower conversion rates. The Northeast (holdout) drops even more because you're not paying to compete. Your test shows paid acquisition is incredibly valuable because the holdout fell harder. But really, you measured "how much paid helps when competitors are aggressive," not "what is paid acquisition worth in normal conditions."

The solution is to note confounds and acknowledge them. If a competitor runs a promo, your incrementality number is probably overstated. If you launch a PR campaign that gets national coverage during the test, incremental lift is understated because organic lift is high.

Seasonality is another confound. If you run a test in December and April, the December baseline will be much higher. You can't compare them directly. Either run your test outside high-seasonality periods, or run it during the same seasons in different years.

Internal changes matter too. If you change your product offer, add a new landing page, or launch a new campaign for organic channels during the test, you've changed the denominator. The revenue difference won't be clean incrementality of paid acquisition.

The best time to run an incrementality test is when nothing else is changing. That's rare, so document what changed. Your incrementality number becomes "paid acquisition contributed $X to incremental revenue, plus or minus confounds A, B, and C."

## How to Interpret Results

If your holdout drops 5% and test regions stay flat, paid acquisition is generating 5% incremental revenue above baseline. Scale that to your annual spend and you know the real revenue contribution. If you spend $500,000 a year on paid and it generates 5% revenue lift, that's roughly 5% times your annual revenue.

If your holdout drops 0% and test regions stay flat, paid acquisition isn't working. You're paying for customers who would have bought anyway, likely driven by brand demand or organic channels. That's crucial to know.

If your holdout drops 10% and test regions drop 5%, something weird happened. Normally when you turn off paid, that region underperforms relative to test regions. Both dropping suggests a regional issue, not a paid channel issue. Investigate that separately from the test.

If your test regions drop and your holdout stays flat, paid acquisition might be cannibalizing organic. Customers who would have searched for you organically are instead clicking ads. That's not value creation, that's channel replacement. You're just shifting customers between channels, not generating incremental ones.

A real example illustrates this. Company Y sells online courses and spends $30,000 monthly on Facebook and Google ads nationally. They pick four regions: California, Texas, Florida, and New York, each historically generating $200,000 monthly. They keep spending normally in three ($10,000 each) and cut spend to zero in Florida. Month 1 results show California at $198,000, Texas at $205,000, New York at $201,000, and Florida (holdout) at $185,000. That's a $16,333 lift from $30,000 spend, or $0.54 revenue per dollar. Their platform said they got 2.5x ROAS. Reality says 0.54x. That's losing money. But now they know. They can reduce paid spend, increase organic investment, or test changes to improve conversion rates. Without the test, they would have trusted Facebook and scaled spend upward, losing thousands more.

## When to Trust the Results and Scale Beyond One Test

Your incrementality test is reliable when three things are true. First, your holdout and test regions were similar to start. Second, nothing major changed during the test period. Third, your revenue is stable enough that 5% swings aren't noise.

If all three are true, your incrementality number is probably within 2-3% of reality. Close enough to make budget decisions.

If any are false, your number is probably off by 10%+. Acknowledge that. Say "our test suggests paid acquisition is working, but we had a major competitor event during the test, so the real number might be 10% lower." That's useful.

Once you've run one test, run others. Test different channels separately. Turn off paid search while keeping social on. Turn off social while keeping search on. You'll learn which channel is actually incrementally driving revenue. Test seasonal windows. Incrementality might be very different in Q4 versus Q1. Run a test in each season and you'll see how your channel performance changes. Test market sizes too. If you have one large metro and several small ones, run the test in a large metro where the data will be cleaner. Then run it in a small metro to see if results differ.

Over time, you'll build intuition about which channels work and which don't. This intuition will be grounded in real incrementality, not platform attribution. The goal isn't perfect accuracy. It's moving from zero data (just trusting platform attribution) to directionally correct data (knowing whether a channel is actually profitable). A geo holdout test gets you there with no data science team, no expensive software, and basic math.

---

*Noah Manion is a fractional growth consultant at [softpath.co](https://softpath.co) specializing in marketing infrastructure, paid acquisition, and analytics for B2C and B2B2C companies.*
