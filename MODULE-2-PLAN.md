# Module 2 — AI Fluency (planning stub)

Working notes for building `slides/ai-fluency.html` (the Module 2 deck). Pulls together the Cornell adaptation insights flagged across each AIF-NP lesson file. **This is a stub** — wording, ordering, and exercises will be refined once Module 1 has been delivered and the cohort's reflection-form responses are in.

- **Date in workshop series:** Module 2 (one week after Foundations)
- **Homework feeding in:** [AI Fluency for Nonprofits](https://anthropic.skilljar.com/ai-fluency-for-nonprofits) + the reflections form
- **Homework feeding out:** Claude Cowork course (Module 3)

---

## The workshop's organizing arc

The three modules form a deliberate progression — *theory → policy → operational tooling*:

- **Module 1 (Foundations)** — meet the tool, understand the data rules. *The tour.*
- **Module 2 (AI Fluency)** — learn the framework, draft your unit's AI policy. *The thinking.*
- **Module 3 (Cowork)** — turn the policy into a Cowork **Project** with system prompt + selected folder + saved context. *The operational artifact.*

State this arc explicitly in Module 1's close and Module 2's open — the cohort should see where they're headed before each step.

## Conceptual spine — the 4D Framework

Module 2 is built on the AIF-NP course material, which is itself built on the AI Fluency Framework's **4D's**:

- **Delegation** — Problem Awareness · Platform Awareness · Task Delegation
- **Diligence** — Creation · Transparency · Deployment
- **Description** — Product · Process · Performance
- **Discernment** — Product · Process · Performance

These twelve sub-competencies are the *full* taxonomy. Module 2 doesn't need to teach every one — it needs learners to recognize them when they show up in their work.

The two **loops** are the more memorable framing:

- **Delegation ↔ Diligence** — *when and whether* to use AI
- **Description ↔ Discernment** — *how* to use AI day-to-day

## Suggested deck structure

Draft order — refine after cohort reflection data is in.

1. **Welcome + recap.** Mission framing from the reflection forms (anonymized quotes, word cloud from "If AI could help me…"). Sets the tone that this is *their* training.
2. **The two loops, in one slide.** Quick recap of the homework. *"Last week was the tour. This week is the framework that ties it all together."* Anchor line on the slide: **"AI Fluency: the ability to use AI in ways that are efficient, effective, ethical, and safe."** *(Verbatim from AIF-NP Q6 — the quote-able sentence of the whole course.)*
3. **Delegation–Diligence — when and whether.** Frame the *should I use AI for this?* question. The next two slides give learners two filters to answer it.
4. **The data-class filter — Green / Yellow / Red.** Standalone slide for the memorable mental model. Public data → any approved tool; confidential admin → Claude 3P; regulated → stop and check the chart / call a data steward. Anchored in Cornell's regulated data chart (`references/cornell-regulated-data.md`). This is **Platform Awareness** made concrete — *"which tool fits which data?"*
5. **"Should AI do this?" — not "Can AI do this?"** *(Title verbatim from AIF-NP Q4.)* The task-type filter, with the three categories: AI handles (standardized responses, documented info), AI assists (drafts that need human review), Human handles (high-stakes / emotional / precedent-setting). This is **Task Delegation** made concrete — *"which task fits which role?"* Pair with slide 4: together they form a quick 2-filter decision matrix.
6. **What's already decided at Cornell vs. what your unit decides.** Third decision-rule slide, completing the trio. Some questions are answered at the Cornell institutional level (approved tool list, data-class rules, broad disclosure norms) — units don't need to redo them, just reference them. Other questions need unit-level decisions (which specific tasks fall in each category, who's our AI champion, what's our review cadence). Liberating, not burdensome — *"here's what you don't have to figure out alone."*
7. **Description–Discernment — how.** Show Cornell's "context · task · format" 3-part prompt from Module 1 as a compression of AIF's three Description sub-components (**Product** = format, **Process** = task, **Performance** = context/role). Same teaching, different names — say it plainly. *Foreshadow:* Module 3 will extend this with one more slot (**Inputs** — where Claude should look) because Cowork can read files and connectors directly. The 3-part prompt grows into a 4-part delegation pattern when the tool can reach beyond the chat window.
8. **Foundations Exercise A revisited.** Walk back through the eCFR lookup exercise from Module 1, naming the 4D's as they happen. One concrete task showing all four competencies in motion. *Borrowed pedagogical move: the AIF-NP "Researching with AI" lesson uses the same Description–Discernment loop frame on the same kind of task.*
9. **Hands-on: test against data you know cold.** *(The centerpiece.)* Each participant brings one dataset they understand — an annual award report, a portfolio analysis, a past compliance dashboard, a closed proposal cycle. We spend ~10 minutes in Claude 3P running a validation test. The room watches the **Deployment Diligence** loop happen on real Cornell data. Builds the habit of *"before I trust AI with new data, I validate on data I know."*
10. **The "stand behind every word" principle + "human in the loop" callout.** From the AIF-NP Writing lesson — the same risk posture Cornell already requires for sponsored programs work. PI ownership of every claim in a proposal narrative isn't a new rule; the framing helps name it. **Sub-anchor (Q7):** *"Being the human in the loop means ensuring AI serves your mission and maintaining the relationships that define your work."* Adapted for Cornell: ensuring AI serves the *research* mission and the PI / sponsor / colleague relationships that define our work. This is the values anchor of the whole workshop — say it plainly.
11. **What you can do that you couldn't before.** Three Cornell-specific scenarios where the 4D's unlock something practical. (Examples TBD after cohort feedback.)
12. **Homework + Module 3 preview.** Two-part homework (see below) + the Cowork course. Bridge: *"AIF taught you to upload context. Cowork lets your selected folder be that context, automatically. Next week we go deeper into Cowork's advanced features — **Skills** (your recurring workflows, taught to the tool) and **Plugins** (bundled expertise for a role). The policy you draft this week becomes the configuration that runs those skills."* **And:** *"Cornell's plan isn't 'each of you builds skills alone' — RAIS and the AI Innovation Hub will partner with you to refine what you scaffold, and over time the cohort's contributed skills roll up into a shared library and Cornell-specific plugins."*

## Module 2 → Module 3 homework (two parts)

1. **Apply the 4D framework to one real research-admin task** (from AIF-NP Lesson 9's "pick one real task" guidance). Specific PI question, sponsor research need, budget review, CFR lookup, compliance check — anything in the participant's actual queue. Loop through Delegation → Description → Discernment → Diligence. Bring a short reflection.
2. **Draft your unit-level AI policy** (from AIF-NP Lesson 8's capstone exercise). Use the 7-part scaffold (Platform / Task / Capacity / Quality / Transparency / Values / Compile). Lean on what Cornell has already decided (slide 6's framing) so the unit-level work is bounded and doable. Synthesize the answers into a one-page draft with Claude 3P.

Both pieces feed Module 3, where the policy becomes the system prompt for a Cowork Project and the real task becomes a recurring workflow.

## Hands-on exercise specifics — "Test against known data"

Centerpiece exercise. From AIF-NP Lesson 6 (`course-content/AIF-NP/06-data-analysis-with-ai.md`). Cornell-adapted version:

- **Pre-work:** in the email going out before Module 2, ask participants to bring one dataset they already know — annual award totals by department, a recent portfolio review, a closed proposal cycle, a compliance dashboard.
- **Live exercise (~15 min):**
  1. Open Claude 3P with selected-folder access to the dataset.
  2. Ask Claude to answer a question the participant already knows the answer to.
  3. Compare AI's answer with the known answer.
  4. If they match: ask Claude how it got there (Process Discernment).
  5. If they don't: refine the prompt with better Description until they do, or find the limit.
- **Debrief (~10 min):**
  - Where did Description need to be sharper?
  - Where did Discernment catch a problem?
  - Would you have caught the problem if you didn't already know the answer?
  - **The takeaway to land:** *Now you know what kind of analytical work you can confidently delegate to AI in your context. Document it for next time.*

## Where Module 2 references other materials

- `course-content/AIF-NP/02-4d-framework.md` — the conceptual spine
- `course-content/AIF-NP/03-researching-with-ai.md` — Description–Discernment via research, maps to our Foundations Exercise A
- `course-content/AIF-NP/04-writing-with-ai.md` — "stand behind every word"; bridge to Cowork via Projects/selected folder
- `course-content/AIF-NP/05-privacy-and-data.md` — pairs with Cornell's regulated data chart
- `course-content/AIF-NP/06-data-analysis-with-ai.md` — *source for the hands-on exercise*
- `references/cornell-regulated-data.md` — simplified Green/Yellow/Red data-class mental model
- `slides/foundations.html` — Module 1 deck (esp. slide 5 data rules, slide 8/9 prompt structure, Exercise A)
- `NOTES-attribution.md` — attribution lines for AIF / AI4RA / REACHWorkshop2026

## Open questions before building the deck

1. **What did the cohort's reflections actually say?** Wait for at least a handful of submissions before designing — let the actual room shape the examples.
2. **Claude 3P's official position on Cornell's regulated data chart.** Confirm with IT before slide 3 / 5 — affects how confidently we can claim Yellow → Claude 3P.
3. **How many of the lesson exercises do learners actually complete?** If completion is low, Module 2 may need to do some of the work in-room.
4. **AI4RA tooling demo time?** Is there a 5-minute slot to demo the AI4RA eCFR MCP server live in Module 2? Reinforces credit and shows the Description–Discernment loop on a real Cornell-relevant task.

---

*Last updated: 2026-05-16.*
