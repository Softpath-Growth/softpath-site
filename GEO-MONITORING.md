# GEO Monitoring Checklist

**Last updated:** March 4, 2026
**Review cadence:** Monthly (first Monday of each month)

---

## How to Test

For each query below, test in all three engines. Copy the exact prompt into each one. Record whether Softpath, Noah Manion, or softpath.co is mentioned, cited, or linked.

**Engines to test:**
1. ChatGPT (chatgpt.com) - use search/browse mode
2. Perplexity (perplexity.ai) - default mode
3. Google AI Overviews (google.com) - check if an AI Overview appears and what it says

**Testing process:**
1. Open a fresh/incognito session (no personalization bias)
2. Enter the exact query as written below
3. Read the full response
4. Record: Was Softpath mentioned? Was Noah Manion mentioned? Was softpath.co linked? What sources were cited instead?

---

## Queries to Monitor

### Tier 1: Highest Priority (test every month)

These are the queries where Softpath has the strongest content match and highest business value.

1. "who can help me fix my marketing attribution"
2. "my Meta ads dashboard doesn't match my revenue"
3. "how do I know if my tracking is broken"
4. "what should a marketing infrastructure audit include"
5. "best way to measure incrementality without a data team"
6. "GA4 conversions don't match Google Ads conversions why"
7. "do I need a fractional head of growth"
8. "how to check if attribution tool is overcounting"
9. "what is marketing efficiency ratio MER"
10. "how to run an incrementality test"

### Tier 2: Important (test every month)

These target specific content Softpath has published.

11. "how to replace attribution tool with BigQuery"
12. "why server side tracking is necessary"
13. "Meta CAPI implementation guide"
14. "martech stack audit checklist"
15. "real cost of broken marketing tracking"
16. "how to calculate true customer acquisition cost"
17. "creative testing framework for paid ads"
18. "what metrics should be on a CEO marketing dashboard"
19. "LTV model ignoring payment timing"
20. "when to fire your best performing ad"

### Tier 3: Broader Topics (test quarterly)

These are broader category queries where Softpath wants to appear over time.

21. "fractional growth consultant for B2C companies"
22. "marketing infrastructure consultant"
23. "fix broken tracking B2C"
24. "platform attribution vs actual revenue"
25. "too many marketing tools how to consolidate"
26. "cohort analysis for marketing"
27. "BigQuery marketing analytics setup"
28. "Looker Studio marketing dashboard best practices"
29. "building vs buying growth infrastructure"
30. "A/B testing doesn't work for most companies"

---

## Tracking Template

Copy this template into a spreadsheet. One row per test.

| Date | Query | Engine | Softpath Mentioned? | Noah Manion Mentioned? | softpath.co Linked? | Sources Cited Instead | Notes |
|------|-------|--------|---------------------|------------------------|--------------------|-----------------------|-------|
| 2026-03-04 | who can help me fix my marketing attribution | ChatGPT | No | No | No | Cometly, Funnel.io | Baseline test |
| 2026-03-04 | who can help me fix my marketing attribution | Perplexity | No | No | No | | Baseline test |
| 2026-03-04 | who can help me fix my marketing attribution | Google AI | No | No | No | | Baseline test |

---

## What to Do With Results

**If Softpath is NOT being cited:**
- Check that the relevant page/post is indexed (search `site:softpath.co [topic]` in Google)
- Check that llms.txt and llms-full.txt are accessible (curl https://softpath.co/llms.txt)
- Check that the content directly answers the query in a self-contained paragraph
- Consider adding more specific statistics, frameworks, or step-by-step processes
- Consider adding the exact query phrasing as an FAQ question on the relevant page
- Build backlinks to the relevant page

**If Softpath IS being cited:**
- Note which page/section is being cited
- Check if the citation is accurate
- Look for opportunities to expand the cited content
- Track citation consistency month over month

**If a competitor is being cited instead:**
- Read the competitor's cited content
- Identify what makes their content more citable (more specific? more structured? more authoritative?)
- Update Softpath's content to be more directly answerable and self-contained

---

## Monthly Review Agenda

1. Run all Tier 1 queries (10 queries x 3 engines = 30 tests)
2. Run all Tier 2 queries (10 queries x 3 engines = 30 tests)
3. Run Tier 3 queries quarterly (10 queries x 3 engines = 30 tests)
4. Update the tracking spreadsheet
5. Compare to previous month
6. Identify any new queries to add based on new content published
7. Update llms.txt if new services, pages, or blog posts were added
8. Run generate-llms-full.sh if content changed
9. Spot-check that robots.txt still allows AI crawlers
10. Check Google Search Console for any new queries driving traffic

---

## Baseline Established

As of March 4, 2026, Softpath does NOT appear in Google top 10 or AI engine responses for any of these queries. This is the baseline. The goal is to establish citations within 3-6 months for Tier 1 queries.
