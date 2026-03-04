---
layout: post
title:  "Build Chrome-Based Apps from Any Website to Stay Focused and Productive"
description: "How to build Chrome-based apps from any website using App Mode to stay focused while working. A simple productivity trick for growth teams."
date:   2025-06-26 05:01:54 -0500
categories: cool stuff
---
# Build Chrome-Based Apps from Any Website to Stay Focused and Productive

I hate doing all my work in the browser.

It might be controversial in a world full of browser tabs, extensions, and web-based productivity, but to me, the browser is the most distracting workspace ever invented. Task switching becomes frictionless, and I inevitably end up bouncing between Slack, Gmail, dashboards, Twitter, and whatever shiny object popped into my head mid-task.

And yet, the tools I rely on most to get work done live in the browser: BigQuery, Segment, Snowflake, Meta Ads Manager, and so on.

## The Spark: Google Ads Editor

What got me thinking differently was Google Ads Editor. It’s a desktop app. It only does one thing. When I open it, I’m locked into one task: editing campaigns. The UI is focused, snappy, and completely separate from the chaos of the browser.

That’s when I wondered: **what if I could make apps like this for every web tool I use?**

Turns out, you can.

And it takes less than 30 seconds once it’s set up.

## The Solution: Chrome App Mode + a Simple App Generator

Chrome has a built-in feature called **App Mode**. It lets you launch any site in a standalone, borderless window:

```bash
open -na "Google Chrome" --args --app="https://app.segment.com/envorso/destinations"
```

This opens the site in a clean window:
- No address bar
- No tabs
- No bookmarks
- Just the app

From there, I wanted to:
- Turn that into a native-looking Mac app
- Give it the site's favicon as its Dock icon
- Drop it in my Applications folder
- Make the whole process repeatable with a simple interface

So I built a little **Web App Builder** app using [Platypus](https://sveinbjorn.org/platypus), some Bash scripting, and AppleScript dialogs.

## How It Works

When you launch the Web App Builder, it prompts you for:

1. **App Name** (e.g., "Segment")
2. **App URL** (e.g., `https://app.segment.com/envorso/destinations`)

Then it:
- Creates a Chrome App Mode launcher script
- Downloads the favicon from the site
- Converts it to a macOS-compatible `.icns` file
- Wraps it all into a `.app` using Platypus
- Saves the finished app to your `~/Applications` folder

You can now open the web tool like a native Mac app, dock it, and treat it as an isolated workspace.

## Benefits

This small change had a big impact on my workflow:

- **No more tab overload**: Every tool lives in its own window and workspace
- **Less distraction**: I don’t get sucked into other tabs or inboxes when I’m working on data
- **Feels faster**: Chrome App Mode is leaner than full browser windows
- **More focus**: Just like using Google Ads Editor, you’re doing one thing at a time

## Tools You’ll Need

- [Google Chrome](https://www.google.com/chrome/)
- [Homebrew](https://brew.sh/)
- Platypus (`brew install --cask platypus`)

## Try It Yourself

I’ve published everything you need on GitHub:

👉 https://github.com/noahmanion/web-app-builder

That includes:
- `app_generator.sh`: the script that powers the app
- Instructions to compile it into a `.app` using Platypus
- Sample apps for Segment, BigQuery, and Meta Ads

## What’s Next

I'm planning to add features like:
- Launching apps in dedicated Chrome profiles (for account separation)
- Optional incognito mode
- Auto-adding apps to Login Items or the Dock

If you want to get away from the distraction machine that is your browser, give this a shot.

**GitHub Repo:** https://github.com/noahmanion/web-app-builder
