# Cornell Claude Training — Site & Workshop Reference

*Background reference for building the site. Covers operating model, page-by-page content, workshop slide outlines, exercise prompts, submission flow, and build order.*

---

## Purpose

A site that **supports a three-part live workshop**, not a self-paced course that replaces one. The site holds the artifacts (slides, exercises, homework forms, FAQ, tips) so attendees can come back, and absent or future learners can self-serve.

**Mission line** (used on home + as Module 1 framing):

> Our goal is to help create efficiency by automating tedious work.

---

## Operating model

**Three workshops, one week apart**, but pages remain available any time.

| Workshop | Site role |
|---|---|
| Live install + presentation + exercise + homework assignment | Module page hosts the slide deck (embedded), a short written summary, copy-pasteable exercise prompts, and a homework submission form |

Each module page should stand alone — someone who missed the live session should be able to read the summary, view the deck, try the exercise, and submit homework.

---

## Information architecture

Top-level nav (left-to-right):

1. **Home** — landing
2. **Foundations** (Module 1)
3. **AI Fluency** (Module 2)
4. **Working with Cowork** (Module 3)
5. **FAQ** — built, searchable
6. **Tips** — prompt library + skill recipes
7. **Further learning** — Anthropic Academy + AI4RA + support
8. *(External)* Tool status → AI Innovation Hub

Plus a community strip on home + footer: Teams channel link, office hours, `ai-support@cornell.edu`.

---

## Module 1 — Foundations

**Live workshop:** install Claude, run a brief slide deck, run the two exercises, assign homework.

**Slide deck outline** (one slide per row):

| # | Slide | Notes |
|---|---|---|
| 1 | Title + the mission line | "Our goal is to help create efficiency by automating tedious work." |
| 2 | Where Claude 3P fits in the Cornell ecosystem | Reuse existing `slides/ecosystem.html` content as the slide |
| 3 | Same data rules as Sandbox AI | Confidential OK · No HIPAA · No export-controlled or government-restricted |
| 4 | How AI works — probabilistic | Adapted from AI4RA / REACH slide 9, recolored in Cornell carnelian. Credit footer: "Adapted from AI4RA — REACH Workshop 2026." |
| 5 | The Anthropic 3-part prompt | Set the stage · Give the task · Specify the output |
| 6 | Success stories | 3–4 short, real Cornell examples — the "wow" slide |
| 7 | The Claude 3P interface | UI tour: chat, model picker, file drop, projects (when available) |
| 8 | Today's exercise | eCFR query + legal-skill contract review |
| 9 | Homework | Anthropic *AI Fluency for non-profits* + Module 1 reflection form |
| 10 | Links + community | This site, Teams channel, AI Innovation Hub, AI4RA, support email |

**Site page (`module-foundations.html`) — needs to contain:**

- Page intro: the mission line + a 2–3 sentence framing
- The deck (embedded — either iframe of a slides page, or a reveal.js / static slide page in the REACH style)
- A 5-bullet written summary for skim-readers
- The two exercise prompts, copy-pasteable
- The homework form (embedded MS Form)
- Links block at the bottom

---

## Module 2 — AI Fluency

**Live workshop:** review Anthropic's AI Fluency framework, show the word cloud built from Module 1 homework, run an advanced example, Q&A, assign Cowork 101 as homework.

**Slide deck outline:**

| # | Slide | Notes |
|---|---|---|
| 1 | Recap + objectives | What we covered last week, what we're doing today |
| 2 | The 4 dimensions | Effective · Efficient · Ethical · Safe |
| 3 | The 4 Ds | Delegation · Description · Discernment · Diligence |
| 4 | Delegation in practice | When to use Claude vs. web search vs. spreadsheet/calculator |
| 5 | Word cloud reveal | Aggregate phrases from the cohort's Module 1 homework |
| 6 | Highlights from the cohort | Anonymized "If AI could help me ___, I would spend more time ___" responses |
| 7 | Advanced example | A multi-step task — TBD, see Exercise prompts section |
| 8 | Q&A | Open floor |
| 9 | Homework | Take Anthropic *Introduction to Claude Cowork* (Skilljar) |
| 10 | Links + community | Same footer as Module 1 |

**Site page (`module-ai-fluency.html`) — needs to contain:**

- The deck
- A short written summary of the 4 dimensions + 4 Ds (mirrors slide content)
- The word cloud image (manually refreshed before each cohort session — see workflow below)
- A static fallback if the word cloud hasn't been generated yet
- The Anthropic AI Fluency reference link
- The advanced example, copy-pasteable
- The homework form (link out or embed)

---

## Module 3 — Working with Cowork

**Live workshop:** review the Cowork 101 course, run an advanced Cowork example, Q&A, announce office hours and roadmap updates.

**Slide deck outline:**

| # | Slide | Notes |
|---|---|---|
| 1 | Recap + objectives | Where we are after two weeks |
| 2 | Cowork 101 recap | High-level takeaways from the Anthropic Skilljar course |
| 3 | The Cowork mental model | Files + skills + tools + memory |
| 4 | What's different about Cowork at Cornell | Tier permissions, what's approved, what to avoid |
| 5 | Advanced example | A real Cornell task — TBD, see Exercise prompts section |
| 6 | Q&A | Open floor |
| 7 | Office hours | Day / time / Teams link |
| 8 | AI roadmap update | Where Cornell sits, what's coming next |
| 9 | Links + community | Same footer as Modules 1 & 2 |

**Site page (`module-cowork.html`) — needs to contain:**

- The deck
- A short summary of the Cowork mental model
- A link out to the Anthropic Cowork 101 course (homework path)
- The advanced example, copy-pasteable
- Office hours block (updates as the schedule changes)

---

## Exercise prompts

### Module 1 · Exercise A — eCFR query

```
I'm preparing a budget for an NIH-funded research project at Cornell. 
Look up 2 CFR 200, Subpart E (Cost Principles) using the eCFR skill — 
don't rely on memory — and answer:

1. What is the federal rule on charging administrative and clerical 
   salaries as direct costs on a federal award?
2. What documented exceptions allow administrative or clerical salaries 
   to be charged directly to a federal award?
3. Cite the specific section number(s) for each answer.

After you answer, give me a one-paragraph plain-English summary that I 
could share with a PI who has no familiarity with the regulations.
```

**Why this exercise:** real-world research administration work, uses a connected skill, demonstrates that Claude pulls from a live source rather than memory.

### Module 1 · Exercise B — Legal-skill contract review

```
I'm reviewing a vendor contract for a SaaS service Cornell plans to 
procure. Use the contract-review skill to walk through the attached 
agreement against typical Cornell positions.

Specifically:
1. Flag any clauses that deviate from standard positions on data 
   protection, indemnification, and termination.
2. For each flagged clause, give me: (a) what the clause says in plain 
   English, (b) why it might be a concern for Cornell, (c) suggested 
   redline language.
3. Summarize the top 3 risks in a single paragraph at the end — 
   something I could send to a non-lawyer business owner.

[Attach: sample-vendor-saas-agreement.pdf]
```

**Why this exercise:** uses a Claude skill, shows multi-document/multi-step reasoning, produces output a non-expert can read.

**Setup needed:** a redactable sample SaaS or NDA agreement — short (3–6 pages) is best.

### Module 2 · Advanced example — TBD

Suggestion: a *multi-step research-administration task* combining a document, a regulation lookup, and a drafted output. Example sketch:

```
I need to draft a memo to a PI explaining why a proposed equipment 
purchase on grant 1R01XXXXXXX-01 may not be allowable as a direct 
cost. Use the eCFR skill to pull the relevant rules from 2 CFR 200, 
review the attached award notice for any specific terms, and produce:

1. A 2-paragraph memo to the PI in plain English
2. A bulleted appendix with the regulatory citations
3. A one-line subject line for the email I'll send

Tone: collegial, not legalistic.
```

### Module 3 · Advanced example — TBD

Suggestion: a *Cowork end-to-end task* that uses files, a skill, and saves an output to the user's folder. Example sketch:

```
Open the budget-justification.docx in this folder. Cross-check the 
indirect cost rate I've used against 2 CFR 200 and our latest negotiated 
rate agreement (also in this folder). If anything is off, draft a revised 
justification paragraph and save it as 
budget-justification-revised.docx in the same folder, leaving the 
original untouched.
```

---

## Forms & anonymity

**Anonymity policy** (verbatim, on every form and as a sentence on each module page):

> We collect your name and department for our records. On this site we display only your first name + department, or "Anonymous" if you prefer. Nothing is shared outside Cornell.

**Form fields (Module 1 homework — AI Fluency lesson 1 reflection):**

1. Name *(required, not displayed publicly)*
2. Department *(required)*
3. Display preference: First name + department · Anonymous
4. *"Describe your workplace situation and your specific role — constraints, strengths, opportunities."*
5. *"What are the core values and philosophy that shape your work?"*
6. *"If AI could help me ___, I would be able to spend more time ___."* (Focus on how efficiency could free you for higher-impact, human-centered activities.)

**Form fields (Module 2 homework — Cowork 101 reflection):**

1. Name *(required, not displayed publicly)*
2. Department *(required)*
3. Display preference: First name + department · Anonymous
4. *"What's one task you'd want Cowork to handle for you?"*
5. *"What's a concern or question you have about Cowork at Cornell?"*

**Platform:** Microsoft Forms (Cornell SSO, you own the data, free). Embed via iframe on the module page or link out — both work.

---

## Word cloud workflow (manual, weekly)

Before each Module 2 session:

1. Export Module 1 form responses from MS Forms to Excel.
2. Concatenate the free-text answers (questions 4–6).
3. Paste into a word-cloud generator (e.g., [wordart.com](https://wordart.com) or [jasondavies.com/wordcloud](https://www.jasondavies.com/wordcloud/)).
4. Style with Cornell carnelian on white, charcoal on white, or mixed.
5. Export PNG (transparent background, ~1200px wide).
6. Drop into `module-ai-fluency.html` as the word-cloud image.
7. Commit + push.

Five minutes of work. No backend needed.

---

## Tips page (`tips.html`) — prompt library + skill recipes

**Purpose:** a return-visit page that builds value over time. Curated by Cornell IT to start; community submissions later.

**Initial content (3 sections):**

1. **Prompts** — cards tagged by task type (award narrative · policy summary · regulation lookup · contract review · meeting prep · email draft). Each card: title, one-line description, copy-to-clipboard prompt body, source tag (you / community / Anthropic).
2. **Skill recipes** — "How to use the legal skill for contract redlining," "How to use the eCFR skill for grant compliance," etc. Each recipe is a short step-by-step.
3. **The 3-part prompt template** — a clean reference card with examples.

**Submission flow** (later): a MS Form for community contributions, reviewed before publication.

---

## Interactive content (proposed)

Three pieces, in priority order. All client-side, all fit "simple and clean."

### 1. Word cloud (planned, manual refresh)
Lives on `module-ai-fluency.html`. Already covered above.

### 2. Delegation sorter
A small client-side card game. ~10 cards with prompts like:
- "Draft an outline for a sponsor narrative"
- "Calculate this year's indirect cost rate"
- "Check today's NIH submission deadline"
- "Summarize a 30-page policy memo"
- "Verify a citation in a manuscript"

User drags each card to one of four buckets: **Claude · Web search · Spreadsheet/calculator · Do it yourself**. On drop, reveals correct bucket + one-line "why."

Reinforces delegation from Module 2. Pure HTML/JS. Fits in `module-ai-fluency.html` or its own page.

### 3. Prompt rewriter
Side-by-side weak vs. strong prompt for 4–5 Cornell scenarios. User clicks **Reveal** on each — sees the rewrite and a callout for what changed (context, example, constraint). Reinforces the 3-part Anthropic frame from Module 1.

Lives on `tips.html` or its own page.

---

## Further learning + support

A small dedicated page (`learning.html`) or section in the footer:

- [Anthropic AI Fluency for non-profits](https://...) — Module 1 homework
- [Anthropic Introduction to Claude Cowork](https://anthropic.skilljar.com/introduction-to-claude-cowork) — Module 2 homework
- [Anthropic Academy](https://...) — broader catalog
- [AI4RA](https://...) — Cornell sibling community
- [REACH Workshop 2026](https://ui-insight.github.io/REACHWorkshop2026/) — source of the adapted probabilistic slide
- **Support:** `ai-support@cornell.edu`
- **Teams channel:** *(link)*
- **Office hours:** *(day/time + Teams meeting link)*

---

## Reference links

For the home page reference callout + footer:

- [Cornell AI Innovation Hub — Tools & Resources](https://innovationhub.ai.cornell.edu/tools-resources/) — source of truth for currently-approved Claude surfaces
- [Anthropic — Use Claude Cowork with third-party platforms](https://support.claude.com/en/articles/14680729-use-claude-cowork-with-third-party-platforms)
- [Anthropic support](https://support.claude.com/)

---

## Build order

The shortest path from where the site is today to ready-for-Module-1:

1. **Home hero update** — bake in the mission line; add a Community strip (Teams · office hours · support email).
2. **Module 1 page rebuild** — slide deck embed slot, written summary, two exercise prompts copy-pasteable, MS Form embed for the AI Fluency homework, links block.
3. **Slide deck for Module 1** — 10 slides per outline above. Style after the REACH Workshop slides-ai-literacy page.
4. **Module 2 page scaffold** — written summary, advanced example placeholder, MS Form embed for Cowork 101 reflection, word cloud image slot (placeholder until first cohort runs).
5. **Module 3 page scaffold** — Cowork 101 link out, advanced example placeholder, office hours block.
6. **Tips page** — prompt library with 6–8 initial cards + the 3-part template reference card.
7. **Further learning page** — links + support + office hours.
8. **Delegation sorter** — fits inside Module 2 page.
9. **Prompt rewriter** — fits inside Tips page.
10. **Slide decks for Modules 2 & 3** — once Module 1 has run once and you know what to lean on.

---

## Open items (need decisions / inputs)

- **AI4RA reuse** — confirm with them that the probabilistic slide can be adapted with credit. 30-second ping.
- **Office hours** — recurring day/time? Teams link?
- **AI roadmap content owner** — IT, the Innovation Hub, or you?
- **Success stories** — 3–4 stories needed for the Module 1 deck. Sources: your existing Sandbox AI cohort, AI4RA testimonials, or recruit fresh ones at the first cohort.
- **Sample contract for Exercise B** — a 3–6 page SaaS or NDA agreement, redacted as needed.
- **Slide deck format** — reveal.js (matches REACH), Marp, Slidev, or static HTML slides? All work; reveal.js is the closest visual match to REACH.
- **MS Forms field names** — confirm the wording I drafted above for both homework forms.
- **First cohort date** — drives the build schedule.

---

## Notes for whoever builds this

- Site design language is established in `styles.css` — carnelian on grey, REACH-inspired. Don't drift.
- All exercise prompts on the site should be in a `<pre>` block with a copy-to-clipboard button so attendees can grab them without selecting.
- The MS Form embed gets a fallback link in case iframe blocks: *"Form not loading? [Open in a new tab →]"*
- Anonymity display rule: render `firstName + ", " + department` or `"Anonymous · " + department` based on the preference field. Never render `lastName` anywhere.
- The word cloud image should have descriptive alt text for accessibility: *"Word cloud of cohort responses to 'If AI could help me…' Most common words: time, focus, drafting, students, review…"*
