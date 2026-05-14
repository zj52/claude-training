# Claude Training · Cornell AI Innovation Hub

A self-paced training site for new Claude users at Cornell. Covers an
overview of Claude, AI Fluency for the work we do, and the Cornell
context for how Claude is currently deployed (Cowork on third-party
inference, with Claude Enterprise/Edu SaaS planned).

## Structure

```
index.html                  # Course landing — modules + homework + reference
module-foundations.html     # Module 1 landing page (lessons)
slides/
  ecosystem.html            # Lesson 2 — where Cornell sits today
styles.css                  # Shared stylesheet (carnelian on grey)
```

Pages drill down: Index → Module → Lesson/Slide.

## Design

Visual language modelled on the [REACH 2026 workshop](https://ui-insight.github.io/REACHWorkshop2026/) — sticky dark header with brand-color accent rule, soft grey gradient background, white panels with subtle shadow, monospace eyebrows, big display headlines. Cornell carnelian (`#B31B1B`) is the primary accent; a lighter red (`#D44444`) is used for hovers; a soft pink tint (`rgba(179,27,27,0.10)`) for fills and tags.

## Reference

- [Cornell AI Innovation Hub — Tools & Resources](https://innovationhub.ai.cornell.edu/tools-resources/) — source of truth for currently-approved Claude surfaces at Cornell
- [Anthropic — Use Claude Cowork with third-party platforms](https://support.claude.com/en/articles/14680729-use-claude-cowork-with-third-party-platforms)

## Local preview

It's a static site. Open `index.html` directly in a browser, or:

```bash
python3 -m http.server 8000
# → http://localhost:8000
```

## Publishing

Hosted on GitHub Pages from the `main` branch root.
