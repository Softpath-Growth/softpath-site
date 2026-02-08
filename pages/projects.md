---
layout: page
title: Projects
description: Side projects and tools from Softpath. Calculators, apps, and experiments in growth, productivity, and marketing operations.
permalink: /projects/
---

# Projects

Tools and experiments we've built. Some useful utilities, some things we wanted to exist.

<nav class="anchor-nav" aria-label="Projects">
  <a href="#timeblock">Timeblock</a>
  <a href="#cadence">CADENCE</a>
  <a href="#dailyhabit">DailyHabit</a>
  <a href="#ab-math-sucks">AB Math Sucks</a>
</nav>

---

<div class="projects-page-grid">

{% for project in site.projects %}
<div class="project-card-full" id="{{ project.title | slugify }}">
  <span class="project-card-full__badge">{{ project.type }}</span>
  <h2 class="project-card-full__title">
    {% if project.external_url %}
    <a href="{{ project.external_url }}" target="_blank" rel="noopener noreferrer">
      {{ project.title }} <i class="ph ph-arrow-square-out"></i>
    </a>
    {% else %}
    <a href="{{ project.url }}">{{ project.title }}</a>
    {% endif %}
  </h2>
  <p class="project-card-full__description">{{ project.description }}</p>
  {% if project.content != "" %}
  <a href="{{ project.url }}" class="btn btn-text">Learn more</a>
  {% endif %}
</div>
{% endfor %}

</div>

---

## Ideas in the queue

Things we're thinking about building. No timeline, no promises.

**Marketing Audit Checklist Generator** — Interactive tool that creates a customized audit checklist based on your stack and business model. Answer a few questions, get a prioritized list of what to check.

**Attribution Model Playground** — Sandbox for testing different attribution models against sample data sets. See how different approaches change credit allocation and what that means for your channel mix.

**CAC Benchmarking Tool** — Anonymous, aggregated CAC data across industries and business models. Know whether your $50 CAC is good or terrible for your context.

If any of these interest you or you have ideas for tools you wish existed, [let us know](/contact).
