---
layout: post
title:  "Built My Own Day Planner. The Code Was the Easy Part."
description: "Why I built my own day planner instead of using Reclaim.ai. The code was the easy part. The hard part was understanding how growth work actually happens."
date:   2026-02-05 05:01:54 -0500
categories: cool stuff
---

I canceled Reclaim.ai last month. Not because it's bad. It's actually quite good at what it does. But I found myself ignoring half of its features, which is an expensive way to use software you're paying $19 a month for.

The breaking point was the rituals. Reclaim has this feature where it automatically schedules blocks for things like lunch, focus time, and breaks based on your calendar availability. The idea is that it protects time for the things you'd otherwise let slip. In theory, this is exactly what I needed. In practice, I'd see the notification pop up, think "that's not what I need right now," and dismiss it. This happened multiple times a day, every day.

After a few weeks of this pattern, I realized I'd trained myself to ignore notifications from a tool whose entire job was to help me pay attention to the right things. The alerts weren't wrong, exactly. They just weren't mine. The tool was optimizing for a generic version of a productive workday rather than the specific way I actually think about my time.

That gap between "generically useful" and "actually useful for me" is small but expensive. Not in dollars, necessarily. In attention. Every dismissed notification is a small tax on focus, a tiny decision that adds up across a day.

So I decided to build my own.

---

I should say upfront that this is a story about vibe coding, but it's not the story you might expect. I didn't sit down with Claude Code, describe some features, and watch it produce a working app in an afternoon. That's how I started, and it didn't work.

The first attempt was predictable. I opened Claude Code, sketched out what I wanted in broad strokes, and more or less said "ok, go build it." What came back was functional. It connected to Google Calendar. It displayed events. It technically did things. But when I looked at the result, all I could think was "that's not quite right." I couldn't articulate why. It wasn't wrong in any specific way I could point to. It just didn't feel like the thing I'd imagined.

This is the trap of vibe coding, and I don't think it gets talked about enough. The bottleneck wasn't Claude's ability to write code. Claude can write code faster and more reliably than I can. The bottleneck was that I hadn't done the product work. I had vibes, not specs. I had a sense of what I wanted, but I hadn't interrogated that sense. I was asking Claude to build something I hadn't actually designed.

Building software alone is genuinely hard, and not for the reasons most people assume. The technical challenges are real but surmountable. What's actually hard is that you're both pitcher and catcher. You have ideas, but no one to pressure-test them. You make decisions, but no one asks "wait, why that approach?" You can't see your own blind spots because you're standing in them. The thing you think you want isn't always the thing you actually need, and without someone to push back, you won't notice until you've built the wrong thing.

This is normally where a PM or a cofounder or even a sufficiently opinionated friend would help. They'd ask clarifying questions. They'd point out assumptions you didn't know you were making. They'd say "that sounds complicated, what's the simpler version?" and force you to defend your choices.

So I tried something different. Instead of using Claude primarily as a code generator, I used it as a product thought partner.

---

I knew I wanted some kind of alert system. The insight from my Reclaim frustration was that notifications aren't inherently bad. Bad notifications are bad. I wanted to be reminded about things, just the right things at the right times in ways that matched how I actually work.

But "some kind of alert system" isn't a specification. It's barely even a feature request. It's a gesture toward a solution without any of the details that would make it real.

So I talked it through with Claude. Not "build me an alert system" but something more like "I want to know when time blocks are ending and what's coming up next. What are the different ways I could implement this? What are the tradeoffs? What would actually be useful versus what would just become another notification I learn to ignore?"

That conversation surfaced questions I hadn't thought to ask myself. How much lead time should I get before a block ends? Five minutes? Ten? Does it depend on what the block is for? Should the "what's next" alert include buffer time for context-switching, or would that just add noise? If my next block is a meeting, that probably feels different than if my next block is deep work. Should the alerts reflect that difference?

I don't know if I got all the answers right. The system I built might still have rough edges I haven't noticed yet. But I'm confident I got better answers than I would have working alone. The process of explaining what I wanted to Claude forced me to articulate things I'd been holding as vague intuitions. And Claude's questions forced me to confront the gaps between what I said I wanted and what would actually work.

This, I've come to believe, is where AI is genuinely useful in building software. Not as a replacement for thinking, but as a tool for thinking. Not as a way to skip the product work, but as a way to do the product work without needing another human in the room.

---

The thing I actually built is simpler than Reclaim, which was the point.

At its core, it's a day planning dashboard that pulls events from Google Calendar and layers in task management. No AI scheduling. No automatic optimization. No features I didn't ask for. It shows me my day and helps me manage what I need to do. That's it.

The task system has two tiers, which sounds overengineered when I describe it but actually matches how I think about work.

The first tier is planned work. These are things that live on my calendar as dedicated time blocks. Client projects. Writing. Focused work that needs protected time. These blocks get the alert system I mentioned earlier: a notification when the block is about to end, and a preview of what's coming next. The alerts help me wrap up cleanly and prepare for transitions rather than getting yanked out of whatever I'm doing.

The second tier is what I think of as quick tasks. These are things that need to get done but don't deserve a calendar block. Following up with someone. Canceling a subscription. Sending an invoice. I don't need thirty minutes for these. I don't even need fifteen. They're small actions that have been floating around in my head, and what I actually need is a place to capture them and a reminder that they exist.

The insight behind this split is that not all tasks are created equal, and treating them the same way creates friction. If I put "cancel that subscription" on my calendar as a fifteen-minute block, I'm lying to myself. I'm not going to spend fifteen minutes on it. What actually happens is that meetings end early, or a task takes less time than I'd blocked, and suddenly I have ten spare minutes. That's when I want to knock out quick tasks. I want them visible and accessible, not buried in a calendar block I'll skip.

So the dashboard shows both. The calendar drives my day. The quick tasks fill the margins. They're separate systems for separate purposes, and they work together because they stay out of each other's way.

---

There's one feature I use more than any other, and it's the one I almost didn't build because it seemed too simple.

I can add tasks by sending an email.

That's it. I send an email to a specific address with a task in the subject line, and it appears in my quick tasks list. No app to open. No form to navigate. No context-switching required.

This sounds minor. When I describe it to people, they usually nod politely in a way that suggests they don't see why I'm excited about it. But capture friction is the silent killer of every task management system I've ever used. The failure mode isn't that you forget to check your tasks. It's that you forget to add them in the first place. The thought happens while you're doing something else. You don't have the app open. You tell yourself you'll add it later. You forget.

Email breaks this pattern because email is always open. Half the time, email is where the task originated anyway. Someone sends me a message that requires follow-up, and now I can forward it to myself with a subject line change and it's captured. The overhead is close to zero. The capture rate is close to one hundred percent.

The feature took maybe an hour to build. It's had more impact on my actual productivity than anything else in the system.

---

I want to be honest about the economics here because I think vibe coding discourse tends to either oversell the benefits or undersell the costs.

Building the core features took about fifteen hours across a few weeks of evening sessions. Getting the test suite working and setting up a CI workflow added another ten. Call it twenty-five hours total.

The system runs on Firebase, which costs me roughly ten dollars a month. Firebase was an intentional choice: it makes prototyping fast because you don't have to think much about data models or hosting. The tradeoff is that you're locked into their ecosystem, but for a personal tool, that tradeoff is fine.

If I do the simple math against Reclaim's nineteen dollars per month, I break even after about two and a half years. That's not a compelling return on investment if you're just counting dollars.

But that math misses what I actually got out of this.

First, I own the roadmap. When I want a feature, I add it. When something annoys me, I fix it. Last week I realized the alert timing was slightly off for certain types of blocks. I adjusted it in twenty minutes and deployed. No feature request submitted to a void. No wondering if the thing I need is on someone else's backlog. No waiting for a quarterly release that may or may not include what I asked for.

Second, changes are trivially easy to ship. The deployment pipeline is automated. I push code and it's live. This might sound like a small thing if you've never maintained your own software, but it changes your relationship with the tool. It stops being something that happens to you and starts being something you shape. Every rough edge is temporary because you can smooth it whenever you want.

Third, and I'll be honest about this: I wanted to build it. I like building things. I like having opinions about how software should work and then making software that works that way. The economics justified the time investment, but the real motivation was that this is interesting to me. If it weren't interesting, I would have just kept paying for Reclaim and ignoring the alerts.

---

I want to be clear about who should and shouldn't take this path, because I don't think it's right for most people.

If you're not technical enough to vibe code, the time investment doesn't make sense. Twenty-five hours is a reasonable amount of time for someone who can already think in systems and talk to an AI about code. It would be much more than that if you're learning as you go.

If you don't have strong opinions about how your tools should work, the existing options will serve you fine. Reclaim, Motion, Clockwise: they're all good products. They're built by teams who think about this full-time. For most people, the generic version of productivity software is perfectly adequate.

If you just want the thing to work and don't want to think about maintaining it, pay for the SaaS. There's real value in being a customer instead of an owner. Customers get updates and bug fixes and new features. Owners get responsibility.

The calculus only tips toward building when three things are true at once. You have specific opinions that the existing tools don't accommodate. You're technical enough that building is measured in hours rather than weeks. And you actually want to own the thing, not just use the thing.

For me, all three were true. The ignored alerts told me I had opinions. Claude Code made twenty-five hours realistic. And I like owning my tools more than I like the convenience of paying someone else to maintain them.

---

If I'm being honest, though, the day planner itself isn't the most valuable thing I got out of this project.

The most valuable thing was discovering how to use AI as a thought partner for product decisions rather than just as a code generator. Everyone talks about vibe coding in terms of speed. "Look how fast I shipped." "I built this in a weekend." "AI writes code ten times faster than I can."

That's all true, but it's also the less interesting observation.

The bottleneck in solo software projects was never typing speed. It was thinking clearly about what to build. It was asking yourself the right questions and noticing the assumptions you didn't know you were making. It was doing the product work that normally happens in conversation with other people.

What I learned is that AI can be the other person in that conversation. Not perfectly. It doesn't have opinions in the way a cofounder would. It won't fight you on something it thinks is a bad idea. But it will ask clarifying questions. It will surface options you hadn't considered. It will force you to articulate vague intuitions into concrete decisions.

The code was the easy part. Having something to think with was the unlock.
