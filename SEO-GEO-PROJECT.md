# SEO & GEO Project: softpath.co

**Project Date:** March 4, 2026
**Site:** https://softpath.co
**Stack:** Jekyll 4.3, Firebase Hosting, vanilla CSS

---

## PHASE 1: RESEARCH

### 1A. Site Audit

#### Site Structure

**Pages (7):**
| Page | URL | Title | Description | Layout |
|------|-----|-------|-------------|--------|
| Home | / | Marketing Infrastructure & Paid Acquisition | We fix marketing infrastructure and run paid acquisition you can actually measure... | home |
| Services | /services/ | Services | Marketing infrastructure audits, paid acquisition management, and analytics consulting... | page |
| Work | /work/ | Work | Selected client work from Softpath... | page |
| About | /about/ | About | Softpath is a fractional growth consultancy founded by Noah Manion... | page |
| Blog | /blog/ | Blog | (none set) | page |
| Contact | /contact/ | Contact | Get in touch with Softpath... | page |
| Projects | /projects/ | Projects | Side projects and tools... | page |

**Blog Posts (25):**
| Date | Slug | Title | Has Description | Has Excerpt |
|------|------|-------|-----------------|-------------|
| 2025-06-26 | web-app-builder | Build Chrome-Based Apps... | No | No |
| 2025-07-01 | discovery-narritive | The Discovery Framework... | Yes | Yes |
| 2025-09-16 | why-analytics-are-a-mess | I've Been Rebuilding Analytics Setups... | Yes | No |
| 2026-02-02 | discovery-process | The Discovery Framework... | Yes | Yes |
| 2026-02-05 | built-my-own-planner | Built My Own Day Planner... | Yes (wrong desc) | No |
| 2026-02-10 | ab-math-sucks | Why Every A/B Test Duration Calculator Lies... | Yes | No |
| 2026-02-20 | ltv-payback-timing | Your LTV Calculation Is Off by 6 Months... | No | Yes |
| 2026-02-23 | incrementality-testing | Your Incrementality Test Just Proved Meta Doesn't Work... | No | Yes |
| 2026-02-24 | introducing-cadence | The A/B Testing Market Is Solving the Wrong Problem | No | Yes |
| 2026-02-25 | practitioner-not-a-leader | Most Companies Need a Practitioner, Not a Leader | No | Yes |
| 2026-03-03 | 43-reverse-engineered-clay | I Reverse-Engineered the Viral 'We Replaced Clay' Post... | No | Yes |
| 2026-03-04 | firing-best-ad | We Fired Our Best Performing Ad... | No | Yes |
| 2026-03-05 | creative-testing-framework | I Spent $40K Testing 127 Ad Variations... | No | Yes |
| 2026-03-07 | attribution-tool-lying | Your Attribution Tool Is Lying to You... | Yes | Yes |
| 2026-03-11 | martech-stack-audit | The Martech Stack Audit Nobody Wants to Do | Yes | Yes |
| 2026-03-15 | mer-only-metric-that-matters | MER Is the Only Metric That Matters... | Yes | Yes |
| 2026-03-19 | replaced-attribution-tool-bigquery | I Replaced a $40K/Year Attribution Tool With a BigQuery View | Yes | Yes |
| 2026-03-23 | google-ads-dont-match-ga4 | Why Your Google Ads Conversions Don't Match GA4... | Yes | Yes |
| 2026-03-27 | real-cost-broken-tracking | The Real Cost of Broken Tracking | Yes | Yes |
| 2026-03-31 | server-side-tracking-not-optional | Server-Side Tracking Isn't Optional Anymore | Yes | Yes |
| 2026-04-04 | incrementality-test-without-data-science | How to Run an Incrementality Test Without a Data Science Team | Yes | Yes |
| 2026-04-08 | onboarding-funnel-leaking | Your Onboarding Funnel Is Leaking... | Yes | Yes |
| 2026-04-12 | stop-ab-testing-things-that-dont-matter | Stop A/B Testing Things That Don't Matter | Yes | Yes |
| 2026-04-16 | dashboard-your-ceo-needs | The Dashboard Your CEO Actually Needs | Yes | Yes |
| 2026-04-20 | building-vs-buying-growth-infrastructure | Building vs. Buying Your Growth Infrastructure | Yes | Yes |

**Projects (4):**
- Timeblock, CADENCE, DailyHabit, AB Math Sucks

#### Technical SEO Issues Found

1. **jekyll-seo-tag plugin installed but NOT rendered.** The `{% seo %}` tag is missing from head.html. The plugin is in Gemfile and _config.yml but never called. This means no canonical URLs, no proper OG tags from the plugin, no Twitter cards, no JSON-LD from the plugin.

2. **Open Graph tags are partial.** head.html has og:title, og:description, og:url, og:site_name but is missing og:type, og:image, twitter:card, twitter:site, twitter:image. No Twitter Card meta tags at all.

3. **No schema markup anywhere.** Zero JSON-LD structured data on any page.

4. **Blog page has no description meta tag.** blog.html front matter has no description.

5. **Permalink structure includes dates:** `/blog/:year/:month/:day/:title/` which creates deeply nested URLs. Not ideal for SEO but changing would break existing links, so we leave it.

6. **Several posts missing description field.** Posts from 2025 and early 2026 lack description in front matter, falling back to site description which is generic.

7. **One post has wrong file extension:** `2026-03-03-43-reverse-engineered-clay` has no `.md` extension. Jekyll may still process it but this is fragile.

8. **Duplicate content:** Two posts about Discovery Framework (2025-07-01 and 2026-02-02) with very similar titles.

9. **Post 2026-02-05 has wrong description:** "Built My Own Day Planner" reuses the analytics description from 2025-09-16.

10. **Future-dated posts won't appear in sitemap.** Posts dated after March 4, 2026 won't be in the sitemap unless `future: true` is set in _config.yml.

11. **Sitemap includes SoftpathStyleGuide.pdf.** Should be excluded.

12. **Heading hierarchy issues:**
    - Services page: H1 in content, but page.html layout also renders an H1 from page.title, creating double H1s.
    - Work page: Same double H1 issue.
    - Several blog posts start with H1 in markdown but the post layout already has an H1 for the title.

13. **No internal linking between blog posts.** Posts reference concepts covered in other posts but don't link to them.

14. **No breadcrumb navigation.**

15. **No "last updated" dates on content.**

16. **robots.txt references llms.txt and llms-full.txt in comments but not as formal directives.**

17. **No `<link rel="canonical">` tags.** Would be fixed by properly calling `{% seo %}`.

18. **Phosphor Icons loaded as full script from unpkg CDN.** Performance concern but not critical.

19. **No image alt text audit needed** since the site has minimal images.

20. **Cadence tracking script in head.html** loads synchronously, which could delay rendering.

#### Current Plugin Status
- jekyll-seo-tag: Installed in Gemfile and _config.yml, but `{% seo %}` NOT called in head.html
- jekyll-sitemap: Installed and generating sitemap.xml correctly
- jekyll-feed: Installed and generating feed.xml

#### llms.txt and llms-full.txt
Both exist and are well-written. llms.txt is comprehensive with services, methodology, ICP, and contact info. Will need updates after content optimization.

#### robots.txt
Comprehensive. All AI crawlers explicitly allowed. Sitemap referenced. llms.txt referenced in comments.

---

### 1B. Keyword Research

#### Highest-Value Keywords by Cluster

**Cluster 1: Marketing Measurement & Attribution**
Top targets: fix marketing attribution, platform attribution vs actual revenue, incrementality testing guide, marketing measurement audit, how to run incrementality test

**Cluster 2: Marketing Infrastructure & Martech**
Top targets: GA4 vs platform conversions discrepancy, marketing infrastructure audit, too many marketing tools, Meta CAPI implementation, martech stack audit

**Cluster 3: Paid Acquisition & Growth**
Top targets: fractional head of growth, fractional growth consultant, true customer acquisition cost, real CAC calculation, creative testing framework

**Cluster 4: Analytics & Data**
Top targets: Looker Studio marketing dashboard, BigQuery marketing analytics, cohort analysis marketing

**Cluster 5: GEO Natural Language Queries**
Top targets:
- "who can help me fix my marketing attribution"
- "my Meta ads dashboard doesn't match my revenue"
- "how do I know if my tracking is broken"
- "what should a marketing infrastructure audit include"
- "do I need a fractional head of growth"
- "best way to measure incrementality without a data team"
- "GA4 conversions don't match Google Ads conversions"

#### Top 20 Keywords Ranked by Opportunity

1. "who can help me fix my marketing attribution" (AI query, excellent fit)
2. "my Meta ads dashboard doesn't match my revenue" (AI query, excellent fit)
3. platform attribution vs actual revenue (medium vol, high intent)
4. GA4 vs platform conversions discrepancy (medium-high vol, high intent)
5. fractional head of growth (low-med vol, direct positioning match)
6. fix marketing attribution (medium vol, problem-solution)
7. how do I know if my tracking is broken (AI query, diagnostic)
8. too many marketing tools (low vol, ultra-high intent, low competition)
9. marketing infrastructure audit (medium vol, service-aligned)
10. incrementality testing guide (low-med vol, underserved)
11. true customer acquisition cost (medium vol, measurement focus)
12. what should a marketing infrastructure audit include (AI query)
13. fractional growth consultant (low-med vol, positioning match)
14. real CAC calculation (low vol, high intent)
15. do I need a fractional head of growth (AI query)
16. best way to measure incrementality without a data team (AI query)
17. Looker Studio marketing dashboard (low-med vol, low competition)
18. Meta CAPI implementation (low-med vol, technical)
19. cohort analysis marketing (low-med vol, medium competition)
20. marketing efficiency ratio MER (low-med vol, niche)

---

### 1C. Competitor & Citation Analysis

#### Key Findings

**Softpath does NOT appear in Google top 10 for any of the 10 highest-value queries.** Despite having blog posts on many of these exact topics.

**Dominant competitors in search results:**
- Cometly (appears in 7+ of top 10 queries)
- EasyInsights (5+ queries)
- Funnel.io (4+ queries)
- HubSpot (strong in CAC and tool overload)
- Triple Whale (attribution and incrementality)
- DataSlayer (GA4 discrepancy)

**Critical gap:** Individual consultant voices are almost entirely absent from search results. Software vendors and agencies dominate. This is Softpath's biggest opportunity.

**Content format trends:**
- 60% guides/how-to posts
- 25% educational blog articles
- 10% tools/templates
- <5% case studies (major gap)

**What gets cited in AI responses:** Direct, self-contained answers. Specific numbers and statistics. Step-by-step processes. Named frameworks and methodologies.

---

## PHASE 2: IMPLEMENTATION PLAN

### 2A. Technical SEO Fixes (Priority Order)

1. **Enable jekyll-seo-tag rendering.** Add `{% seo %}` to head.html. This fixes: canonical URLs, proper OG tags, Twitter cards, JSON-LD site metadata. Remove manual OG tags that will be duplicated.

2. **Add twitter/OG image and type.** Add og:type and og:image to _config.yml for jekyll-seo-tag. Add twitter config.

3. **Fix blog page description.** Add description to blog.html front matter.

4. **Fix file extension.** Rename `2026-03-03-43-reverse-engineered-clay` to `2026-03-03-43-reverse-engineered-clay.md`.

5. **Fix double H1 issue.** Modify page.html and post.html layouts so content H1s don't duplicate layout H1s. Or remove content-level H1s from pages.

6. **Add descriptions to all posts missing them.** Fill in description front matter for all posts.

7. **Fix wrong description.** Update 2026-02-05 planner post description.

8. **Add `future: true` to _config.yml.** So future-dated posts appear in sitemap and build.

9. **Exclude PDF from sitemap.** Add to _config.yml defaults or sitemap exclude.

10. **Add schema markup includes.** Create JSON-LD includes for Organization, Person, Article, FAQ, Service, BreadcrumbList, HowTo.

11. **Add internal links throughout blog posts.**

12. **Make Cadence script async.** Add `async` attribute.

### 2B. Content Optimization Plan

**Every page gets:**
- Optimized title with primary keyword
- Optimized description (150-160 chars) with primary keyword
- FAQ section with schema markup (for GEO extractability)
- Self-contained summary paragraph at the top
- Internal links to relevant blog posts and pages
- "Last updated" date

**Every blog post gets:**
- description field in front matter (if missing)
- Internal links to related posts
- Author bio linking to /about/

### 2C. Schema Markup Strategy

**Organization schema** (every page via default.html):
- name, url, founder, description, services, contactPoint

**Person schema** (about page):
- Noah Manion with credentials, expertise, social links

**Service schema** (services page):
- Each service offering with description

**Article schema** (every blog post via post.html):
- title, author, datePublished, dateModified, description, publisher

**FAQ schema** (pages with FAQ sections):
- Q&A pairs matching natural language queries

**BreadcrumbList schema** (every page):
- Navigation path

### 2D. GEO-Specific Plan

- Update llms.txt and llms-full.txt with all new content
- Create generate-llms-full.sh script
- Add self-contained summary paragraphs to all key pages
- Ensure FAQ answers are concise, direct, extractable by AI
- Add specific statistics and data points throughout content

---

## PHASE 3: IMPLEMENTATION LOG

### Changes Made

(Documented below as changes are implemented)

#### 3A. Technical Implementations

**1. Enabled jekyll-seo-tag**
- Added `{% seo %}` to _includes/head.html
- Removed manual OG tags that are now handled by the plugin
- Added twitter and social config to _config.yml
- Added og:image default

**2. Fixed head.html**
- Added canonical URL support via jekyll-seo-tag
- Made Cadence script async
- Added Twitter Card meta support

**3. Fixed _config.yml**
- Added `future: true`
- Added author, twitter, social, and logo config
- Added defaults for post descriptions
- Excluded PDF from sitemap

**4. Fixed file extension**
- Renamed clay post to .md extension

**5. Fixed heading hierarchy**
- Removed duplicate H1s from pages/services.md, pages/work.md
- Modified layouts to prevent double H1

**6. Added descriptions to all posts missing them**

**7. Created schema markup includes**
- _includes/schema-organization.html
- _includes/schema-article.html
- _includes/schema-faq.html
- _includes/schema-service.html
- _includes/schema-person.html
- _includes/schema-breadcrumb.html

**8. Added FAQ sections to key pages**
- Services page: 6 FAQs targeting GEO queries
- About page: 4 FAQs
- Work page: 3 FAQs

**9. Added internal linking throughout blog posts**

**10. Updated llms.txt and llms-full.txt**

**11. Created generate-llms-full.sh**

**12. Created GEO-MONITORING.md**
