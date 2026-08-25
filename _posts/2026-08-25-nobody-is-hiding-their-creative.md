---
title: "Nobody Is Hiding Their Creative. I Once Helped Hide a Business Model."
description: "I pulled 11,682 Meta ads to test the claim that advertisers hide creative behind unbranded pages. The pages are real. The creative isn't hidden. Here's what the EU payer disclosure actually shows."
date: 2026-08-25 09:00:00 -0500
categories: paid-acquisition competitive-research
excerpt: "The pages are real. The method finds them. And the story about why they exist is wrong, which I know because years ago a client paid me to build one."
image: /assets/images/blog/unbranded-pages-chart.png
---

A post went around LinkedIn arguing your competitive research is broken because you type app names into the Meta Ad Library and stop there. The claim: sophisticated advertisers run unbranded pages with no logo and no brand name, so their real creative never surfaces on a brand search. The fix offered was a five-step traversal. Find the branded page, collect its destination URLs, keyword-search those domains, check every page promoting the ads you find, repeat.

I pulled 11,682 unique ads across 81 advertisers in three verticals to check.

The pages are real. The method finds them. And the story about why they exist is wrong, which I know because years ago a client paid me to build one.

<figure class="post-figure post-figure--wide">
  <img src="/assets/images/blog/unbranded-pages-chart.png" alt="Two charts. The first shows the share of summed EU ad reach sitting on pages with no brand name for four app advertisers: BetterMe 79 percent, Headway 61 percent, Simple 29 percent, Rise Science 7 percent. The second shows male share of delivered reach across Simple's six pages, where the unbranded Coach Kai Tan page is 97 percent male while every branded Simple page is under 19 percent male." loading="lazy" width="2000" height="2196">
  <figcaption>Every page in each group is confirmed as one advertiser using the payer entity disclosed under the EU Digital Services Act, not inferred from destination URLs. <a href="/assets/data/unbranded-pages-dataset.csv">Download the page-level dataset (CSV)</a>.</figcaption>
</figure>

## What's actually there

Exact-phrase search on `simple.life` in the EU Ad Library returns six pages, not one.

Three carry the brand: Simple App, Simple Fasting App, Simple: Weight Loss Coach. Three don't: Coach Kai Tan, Laci Coach, and a page called "Мy 28 Day Challenge" whose first character is U+041C, Cyrillic capital EM, not a Latin M.

That detail got my attention and I was about to write the obvious sentence about a deliberate homoglyph defeating text search. Then I checked the page's own vanity URL. It's `facebook.com/28dayfastingchallenge`, plain Latin. Whether the Cyrillic М is deliberate or a keyboard slip at a company that hires across Eastern Europe, I can't tell you, and the evidence points both ways.

Here's the part that killed my first draft.

**The ads on these pages are branded.** Not subtly. The headline on all 260 Coach Kai Tan ads in my pull is the literal string "Simple App." The link display domain is `simple.life`. A user scrolling past that ad knows exactly who is advertising to them. Same on Headway's unbranded pages: 269 of 275 ads on "Fun & Easy Growth" name Headway in the headline or body, and every one displays `makeheadway.com`.

Nothing is hidden from the user. What's unbranded is the container, not the message.

That has to matter, because it's the same standard everyone already uses to say AG1's setup isn't covert. AG1 pays for ads running on creator pages, Sadie Smart and Dr. Georg Abel and the Hahner twins, with AG1 visible in the creative. That's whitelisting and nobody calls it a disguise. Apply it consistently and Simple and Headway are doing a version of the same thing.

## Then there's localization, which explains more than anyone wants it to

Where Headway's unbranded pages deliver:

| Page | Top countries | Creative language |
|---|---|---|
| Headway App (branded) | DE, PL, FR, IT, ES | mixed |
| Fun & Easy Growth | IT, ES, DE, PL, PT | Spanish, Italian |
| Victoria Solano | ES, PT, IT, DE, FR | Spanish |
| Adrián Navarro | ES, IT, PT, DE, FR | Spanish |
| Feliz Jornada de Crescimento | PT, FR, IE, ES, IT | Portuguese |
| Audiolibros para caminar | ES, PT, IT, DE, FR | Spanish |

"Audiolibros para caminar" is Spanish for "audiobooks for walking." Every unbranded page in Headway's portfolio is a Romance-language page.

There's a boring operational reason for this that has nothing to do with hiding. Page-level engagement history follows the page, and so does the comment section. A Spanish-language ad running off a page whose top comments are in German converts worse. Splitting by locale is standard practice and I've recommended it myself.

So for Headway, whose unbranded pages carry 60.8% of the portfolio's summed EU reach across six page IDs, the honest reading is: mostly localization, possibly some deliberate separation, and I can't cleanly distinguish them from the outside. BetterMe splits the same way, 78.6% unbranded, with "Lessie Fitness" running Spanish and French and Portuguese while "BetterMe Store" runs Italian and German.

## Simple is the one case a language split doesn't explain

| Page | Ads sampled | Gender target set to | Delivered | Male |
|---|---|---|---|---|
| Simple Fasting App | 268 | Women on 144 | 19.4M | 15.7% |
| Simple App | 71 | Women on 34 | 22.6M | 18.5% |
| Coach Kai Tan | 260 | **Men on 183** | 4.8M | **97.0%** |

4,694,948 men reached against 91,125 women. Coach Kai Tan's top delivery countries are Greece, Ireland and the Netherlands. Three languages, one gender. Same payer entity, AM APPS LTD, which is Simple's operating company out of Limassol. The page launched in March 2026.

Simple's branded pages sell weight loss to women. One unbranded page sells it to men. Benchmark Simple on their brand page and you'll conclude they're a women's product and be wrong about a segment they thought deserved its own funnel.

## So there are three reasons to run an unbranded page, and only one is about hiding

**Hide the message.** This is the thing the LinkedIn post is selling and it does not happen. The brand is in the creative every time.

**Separate the audience.** Language, gender, life stage. Common, operational, and the reason for it is that a page carries engagement history and comments into every ad it runs. This is most of what I found.

**Hide the initiative.** Rare. This is the only one where the concealment is the actual point, and the party you're hiding from often isn't a competitor at all.

## The one time I built one of these

Years ago at Vokal I ran growth for a building products manufacturer. Multi-billion in revenue, and essentially every dollar of it moved through a distributor and dealer network. They wanted to know whether they could sell direct to consumers.

They did not want anyone to know they were asking. Competitors were named in the brief. So was the channel.

The channel is the real constraint, and it changes the whole shape of the problem. In a distributor model your dealers aren't just how you reach the market, they're your single largest customer. A dealer who sees their manufacturer running consumer ads doesn't file it away as market intelligence. They call their rep, and then they call two other manufacturers.

So we built it unbranded. New domain with nothing tying back to the parent company, a page whose name meant nothing to anyone, paid traffic pointed at it, testing sales approaches for a category that had never been sold that way before.

Notice what was actually being hidden. Not the creative. Nobody in that industry was going to reverse-engineer our hooks and beat us to market with them. What was hidden was that the test existed at all.

And notice how much further that requirement reaches than the one everyone writes about. Hiding your creative from a competitor is a page-name problem. Hiding an initiative from your own distribution is an infrastructure problem: a separate domain, nothing shared that could be traced back, and a plan for the day somebody finds it anyway. Different threat model, different build, and the tactic that shows up in the Ad Library looks identical from the outside.

That's the version worth knowing about, and it's the one nobody writes about, because it doesn't produce a swipe file. There's nothing to screenshot. The whole value is that the page is boring and unattributable and running a strategy the parent company hasn't committed to yet.

## Which makes my own null result weaker than I first wrote it

I seeded 23 B2B SaaS advertisers and found zero unbranded pages. HubSpot, Notion, Deel, Rippling, Vanta, Pipedrive, Monday and Clay all have real EU inventory with full payer disclosure and none of them runs a second page. Eight advertisers with enough coverage to see a program, zero programs. The rest I can't speak to: ServiceTitan surfaced one payer-disclosed ad, BuildOps four, Ramp five. That's a gap, not an absence.

But the deeper problem is what kind of program my method could have detected in the first place.

A test like the one I built is small, short, runs in one country, buys no European traffic, and never crosses the volume threshold where you'd notice it in a scan. It has no payer disclosure. It is not sitting one hop from the parent brand's domain, because the entire point was that it isn't. My method cannot see a program like the one I personally built.

So "zero B2B programs" honestly reads as "zero programs of the type this method can see," and the type it can't see is exactly the type worth finding.

## The attribution problem, which is separate and also real

Discovery turned out to be the easy part. Knowing whose page you found is where it falls apart.

Two pages, "Dr. Aline Fernandes" and "Dr. David García," both pointing at noom.com, both with gender target set to Men, both delivering 95%+ male. Follow the methodology and Noom's covert men's funnel writes itself. The payer disclosure says ERECTOGEN. Noom isn't paying for them. They're also tiny: 10 ads, under 10,000 summed reach, on pages with 18 and 8 likes. Which is the sharper criticism, because the traversal surfaced them with exactly the same confidence it surfaced a page running 300.

A page called "28 Day Challenge" drives betterme-pilates.com with 219 ads. Payer is CONVERT BEES LTD, with a slice under AdQuantum LTD. Not BetterMe Limited, which pays for BetterMe's own pages. What the disclosure can't tell me is whether Convert Bees is an unaffiliated affiliate arbitraging the offer or a media buyer BetterMe contracted. The payer field resolves the legal entity, not the commercial relationship.

And precision swings wildly with how distinctive the domain is:

- `simple.life` returned 6 pages. All 6 are Simple's.
- `makeheadway.com` returned 6. All 6 are Headway's.
- `hubspot.com` returned 36. **One** is HubSpot. The rest use HubSpot's meeting scheduler as their landing page.
- `notion.so` returned 24. **Zero** are Notion. Affiliates and template sellers.

If your competitor owns a made-up word, the traversal works beautifully. If they own a dictionary word, you get a 3% hit rate and no warning label.

## The field that resolves ownership, and its ceiling

The EU Digital Services Act forces a payer and beneficiary disclosure on every ad served in the EU. It sits in the Ad Library payload as `aaa_info.payer_beneficiary_data`, next to `eu_total_reach`, the configured `gender_audience`, `age_audience`, and a country-by-age-by-gender breakdown of delivery. That last set is the genuinely underused part: you get the advertiser's intended targeting, not just what got delivered.

Across my pull, 8,499 ads carried a payer disclosure resolving to 200 distinct entities. Cluster on it and the ownership question closes in one pass.

Now the ceiling. Ads found via US-country searches carried a payer disclosure **34%** of the time. Via German search, **91%**.

Your visibility is a function of whether your competitor buys European traffic. Not your tooling budget, not your methodology. European regulators. And an unbranded initiative deliberately kept out of the EU is invisible by construction.

## What I'd actually do with this

Everyone is selling competitive research as a creative swipe file. The creative is the least valuable thing in the Ad Library. You can see all of it, and seeing it tells you nothing about what it's worth, because spend allocation, payback period, refund rate and everything they killed last month are all invisible.

The valuable signal is different and much rarer: a new page appearing where there wasn't one, in a category adjacent to yours, buying real volume, that doesn't obviously belong to anybody. That's not a creative to copy. That's somebody testing a motion they haven't committed to. It's the only thing in this dataset I'd want an alert for, and it's the hardest thing to automate, because the whole design intent is that it looks like nothing.

If you sell consumer subscriptions in Europe, cluster on the payer field once a quarter and skip the domain traversal. The output isn't creative, it's a map of which segments a competitor thought deserved their own funnel. Simple deciding men were worth a dedicated page in March is a strategic signal. The hooks Coach Kai Tan is testing are not.

And if you're weighing the tactic yourself, it isn't free. Splitting spend across pages splits page-level signal and you pay a learning tax on every new one. Policy risk concentrates. Your reporting layer has to reconcile several page identities into one funnel, which makes attribution worse exactly when you need it better. In the EU your payer entity is disclosed regardless. The version that's worth the cost isn't the one that hides your creative. It's the one that hides a decision you haven't made yet, and often it's hiding it from people who aren't your competitors at all.

## Method and data

Exact-phrase domain search in the Meta Ad Library, Germany and United States, deduplicated by ad archive ID, clustered on `aaa_info.payer_beneficiary_data`. The full page-level dataset is here: [unbranded-pages-dataset.csv](/assets/data/unbranded-pages-dataset.csv).

Three caveats you should hold against every number above.

**Reach is summed, not unique.** All reach figures are the sum of per-ad `eu_total_reach` across a page's ads, which double counts anyone who saw more than one ad. Treat it as a spend proxy for comparing pages within one advertiser. The total across my dataset exceeds the EU adult population several times over, which tells you how much double counting is in there.

**Ad counts are truncated.** The crawler capped at roughly 90 ads per keyword search and 270 per page pull, sorted by impressions descending. Any count near those ceilings is a floor, not a total.

**The branded/unbranded call is mine.** I classified a page as unbranded when the page name contains no brand token from the operator's trademark or product domain. That's a page-name test, not an intent test, and reasonable people will disagree on specific calls. "Tori Business Growth" drives a BetterMe creator-recruitment funnel and is arguably not a consumer growth channel at all, but it's in my numerator. The dataset above has the full classification so you can re-cut it.

---

This is the kind of work I do at [Softpath](https://softpath.co). I run growth, and I also build the systems that run it, which in this case meant writing the crawler, clustering 11,682 ads on a field almost nobody reads, and then throwing out my own thesis when the creative didn't support it. Those two jobs are usually split across a strategist and an engineer, and the interesting finding lived in the seam.

Some of that thinking is productized. [Cadence](https://cadence.softpath.co) is the A/B testing tool I built because most platforms optimize for test velocity rather than decision velocity, which is the same failure as competitive research that collects everything and concludes nothing.

If you're making creative decisions off a competitor's ad library and you've never checked who's actually paying for those ads, that's where I'd start. [Get in touch](https://softpath.co/contact).
