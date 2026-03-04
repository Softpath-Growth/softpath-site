---
title: "Why Your Google Ads Conversions Don't Match GA4 (And Which One Is Right)"
date: 2026-03-23
description: "Google Ads and GA4 report different conversion counts. Here's why, how to diagnose the gap, and which number matters."
excerpt: "You've noticed it: Google Ads says you got 487 conversions last month, but GA4 shows 392. Both platforms are counting the same website traffic, so why the discrepancy."
---

You've noticed it. Google Ads claims 487 conversions last month. GA4 reports 392. Both platforms are connected to the same website, tracking the same users, measuring the same conversions. Yet they disagree by 20%. The numbers should match, but they never do.

This isn't a bug. It's how these platforms are designed, and understanding the gap tells you something critical about your actual performance.

## Attribution Windows Create the First Gap

Google Ads and GA4 use different time windows to credit conversions. Google Ads, by default, uses a 30-day click attribution window. GA4 uses a 30-day event-based window. This sounds identical until you trace what actually happens.

In Google Ads, a user clicks an ad on March 1st. They eventually convert on March 28th. Google counts it. The same user, in GA4, follows a different path: they click the ad, leave, come back three days later from organic search, then convert. GA4's default attribution is last-click within a 30-day window. It credits the organic search, not the ad.

Google Ads sees the original click and the eventual conversion within 30 days. GA4 sees the most recent touchpoint before conversion. One user, two different counts, both technically correct within their own logic.

Change your attribution window in GA4 to match Google's 30-day click window, and the gap shrinks, but usually doesn't vanish. That's because attribution windows aren't the only difference.

## Cross-Device Behavior Hides Conversions

Google Ads tracks users across devices by default. A user clicks your ad on mobile, doesn't convert, comes back on desktop two weeks later and purchases. Google Ads counts that conversion because it recognizes this is the same user across two devices.

GA4 requires you to implement User-ID tracking or rely on Google's signals (which requires consent). Without proper setup, GA4 sees these as two separate users. The mobile clicker and the desktop converter are strangers in GA4's view.

If you haven't implemented User-ID tracking in GA4, your cross-device conversion count will be systematically lower than Google Ads. This gap scales with your mobile traffic. For consumer brands with 70% mobile visitors, cross-device discrepancies can account for 10-15% of the total gap.

## Consent Mode Removes Data Entirely

If you're in the EU or following strict GDPR practices, you've implemented Consent Mode. Users who don't consent to analytics still trigger ad conversions in Google Ads (Google tracks this via conversion pixels), but they're excluded from GA4 if you've configured it correctly.

Google Ads will count a conversion from a non-consenting user. GA4 won't. This creates a systematic gap where Google's number is always higher when significant traffic comes from consent-restricted regions.

The gap size depends on your consent rate. If 25% of your users don't consent to analytics, GA4 will systematically undercount by roughly 25% relative to Google Ads.

## Tag Firing Issues and Timing Problems

The most common technical reason for discrepancies is how conversion pixels actually fire. Google Ads uses a global site tag (gtag.js) that's remarkably persistent. Users can leave your site, your analytics tags fail, the connection drops, and gtag still sends the conversion event because it queues in the browser.

GA4 events require a complete page load, successful tracking script execution, and event transmission. If your page speed is poor, your analytics script loads last, or users click purchase and immediately close the tab, GA4 misses the conversion but Google Ads catches it.

This difference becomes more pronounced on mobile. Mobile users close apps or browsers constantly, often before analytics tags complete their transmissions. Google Ads' resilient tag queue means mobile conversions are more likely to be captured. GA4's sequential loading model means they're more likely to be missed. If your business has high mobile conversion rates (common for apps or mobile-optimized checkouts), expect GA4 to undercount by 5-12%.

Another issue is conversion event mapping. Google Ads conversion tags often fire on a simple page view. GA4 requires you to explicitly send a "purchase" event. If your GA4 implementation maps conversions to a different event (like "lead" instead of "purchase"), or if the event name doesn't match between your client and server-side implementations, GA4 won't count those events as conversions even though they're happening.

Test this by checking the time between when a user lands and when they convert. Look at GA4's time-lag report. If most conversions happen quickly (same session), the gap should be small. If conversions often happen days later, GA4 is more reliable because the user had to return. If your gap is 15% or higher, tag implementation is likely the culprit.

You can also test by looking at your event count in GA4. Go to Events and look for all events that should count as conversions. Compare that count to your marked conversions. If the event count is much higher than conversions, your event mapping is broken. You're generating conversion events but not marking them as conversions in your GA4 interface.

## How to Diagnose the Gap and Find the Right Number

Start with Google Ads' conversion column. Note the number. Then export GA4 conversions for the same date range using the exact same conversion definition and attribution model (30-day click attribution works well for apples-to-apples).

Calculate the percentage difference. Anything under 5% is tracking variance, not a real problem. Anything 10% or higher needs investigation.

Isolate the variables. Check your GA4 implementation against your Google Ads setup. Are you using User-ID tracking in GA4. Are you implementing Consent Mode. Is your GA4 conversion event firing on the same page as your Google Ads conversion pixel. Run these checks in order. If you're not using User-ID tracking, turn it on and measure the gap again in a week. If the gap shrinks by 5%, that was your problem. If it stays the same, User-ID tracking wasn't the issue.

Create a test cohort. Pick one traffic source, like branded search, where the conversion path is typically short and simple. Run this source through both platforms for a week. If the numbers match closely on branded search but diverge on generic or display, you know the gap comes from longer attribution windows or cross-device behavior.

Another useful test is to compare platform and device. Google Ads breaks down conversions by device type. GA4 does too. If Google Ads' mobile conversions are 30% higher than GA4 but desktop conversions match, you know the gap comes from mobile tag firing issues. If the gap is consistent across all devices, attribution windows are likely the culprit.

Finally, look at time-lag patterns. In GA4, go to Conversions and look at the time-lag report. Sort by how many days passed between first session and conversion. If conversions are heavily weighted to day 0 or day 1, the gap should be minimal. If they're spread across 7-30 days, expect GA4 to undercount because user sessions expire and the connection between click and later conversion gets lost.

The honest answer to "which number is right" is neither. The real number lives in your CRM or order database.

Pull a list of all customers from last month. Cross-reference them against your actual revenue. Count how many you can definitively trace back to an ad click within 30 days. That's your ground truth. Google Ads and GA4 are both estimates with different methodologies.

What matters is consistency. Pick one platform and stick with it month-to-month. If Google Ads consistently reports 20% higher conversions than GA4, you now know that systematic gap. Your ROI calculations stay consistent because you're using the same denominator every time.

The dangerous move is switching between platforms. March you use Google Ads to measure success, April you use GA4 because the numbers looked better, May you're confused about whether you're actually growing. Consistency beats accuracy when comparing month-to-month or year-to-year.

If you need the most reliable number for paid spending decisions, combine both signals with your CRM. Create a monthly reconciliation: take your Google Ads conversions, apply the percentage adjustment you discovered, and compare against actual orders in your system. The 487 from Google Ads becomes "probably 455 actual customers after adjustment." That becomes your north star.

The gap exists because these platforms measure different things. Google Ads measures clicks that led to actions. GA4 measures actions across sessions. They're not counting the same events. Once you understand which differences matter in your specific business, you stop hunting for magical alignment and start building better measurement.

---

*Noah Manion is a fractional growth consultant at [softpath.co](https://softpath.co) specializing in marketing infrastructure, paid acquisition, and analytics for B2C and B2B2C companies.*
