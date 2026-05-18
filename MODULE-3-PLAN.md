# Module 3 — Cowork (planning stub)

Working notes for building `slides/cowork.html` (the Module 3 deck). Pulls together the course content from `course-content/COWORK/intro-to-cowork.md` plus the quiz takeaways and the Cornell-specific framing built up across Modules 1 and 2. **This is a stub** — wording, ordering, and the live exercise will be refined once Module 2 has been delivered and the cohort's guide drafts are in.

- **Date in workshop series:** Module 3 (one week after AI Fluency)
- **Homework feeding in:** [Introduction to Claude Cowork](https://anthropic.skilljar.com/) + the unit-level AI guide draft from Module 2
- **Homework feeding out:** Pick one task to operationalize before the 30-day check-in

---

## The workshop's organizing arc — payoff slide

This is the third and final step in the *Theory → Guide → Operational Tooling* arc. Module 3 is where the abstract becomes concrete:

- **Module 1 (Foundations)** — *the tour.* You met the tool and learned the data rules.
- **Module 2 (AI Fluency)** — *the thinking.* You learned the framework and drafted your unit's AI guide.
- **Module 3 (Cowork)** — *the operational artifact.* You configure Cowork with your guide. The guide becomes Global Instructions. Your scope becomes a Project. The folder you select becomes the persistent context. The "AI can handle" tasks from your guide become Skills.

State this explicitly in the opener. The Module 2 deliverable is no longer a doc — it's the configuration for the tool that does the work.

## What Module 3 covers — the advanced features

Module 1 taught the basics: what Claude 3P is, the data rules, the 3-part prompt, the interface. Module 2 taught the *framework* — when and whether to use AI, how to talk to it well. **Module 3 goes deeper into Cowork's advanced tool features**: Skills (your recurring workflows taught to Cowork), Plugins (bundled expertise installed for your role), Scheduled tasks, the Chrome and M365 bridges, and the evals that keep your skills trustworthy.

Said plainly: *Module 3 is where you go from using Cowork to configuring Cowork.*

## Conceptual spine — Cowork's own framing

Three frames from the Cowork course, all worth lifting:

- **"Point Claude at a folder."** *The* one-line answer to *"what's different about Cowork?"* Anchor concept of Module 3.
- **Plan / Execute / Connect.** Three-word framing for what Cowork does differently from chat-mode Claude.
- **The four building blocks of compounding knowledge:** Global Instructions · Projects · Skills · Plugins. From broadest (every task) to most specialized (role-based bundle).

Plus three operational patterns:

- **Three task-fit patterns:** multi-step · file-based · multi-tool. (Quiz Q8 is a clean test case for the room.)
- **The complete delegation pattern:** **Deliverable · Inputs · Nuance.** Cowork's sibling of AIF's Description triad and Cornell's 3-part prompt. Module 3 should reuse the Module 2 mapping we already established — same teaching, different vocabulary, one consistent vocabulary in the deck.
- **Review before acting:** *"a polished result can still be wrong."* Quiz Q6 — direct lift. Pairs with Module 2's "stand behind every word."

## Suggested deck structure

Draft order — refine after Module 2 has been delivered and the cohort's guide drafts and reflections are in.

1. **Welcome + the arc — the payoff slide.** Module 1 → Module 2 → Module 3 stated plainly. Today is the day the document you wrote becomes the tool that works for you.
2. **Point Claude at a folder.** The paradigm shift, in one sentence. Anchor line: *"Read, create, and edit files there directly, without an upload or download step."* (Verbatim from quiz Q7.)
3. **Plan / Execute / Connect.** Three-word frame for the shape of the work. Worked example: a sponsor-research delegation start-to-finish.
4. **When to reach for Cowork (vs. Chat).** Three task-fit patterns: multi-step · file-based · multi-tool. **Open with quiz Q8 as a room poll** — surface where the cohort sits before teaching the categories.
5. **From the 3-part prompt to the 4-part delegation.** The 3-part prompt you've used since Module 1 — *context · task · format* — still applies. Cowork adds **one slot**: explicit **Inputs** (which folder, which files, which date range, which connector channels). Same teaching, one more piece, because Cowork can reach beyond the chat window. Show as: ***Deliverable* (format) · *Inputs* (where to look — new) · *Nuance* (context the tool can't infer).** The change is additive, not a replacement.
6. **The four building blocks of compounding knowledge.** Visual: 2×2 grid showing Global · Project · Skill · Plugin from broadest scope to most specialized. *(Build as `slides/assets/cowork-building-blocks.svg` in Cornell carnelian — parallel to the 4D framework SVG.)*
7. **From your unit-level guide to Global Instructions + Project.** This is the bridge slide. Explicit map: guide → Global Instructions (role, tone, formatting rules) + Project init scope (data class, values, allowed tasks). The Module 2 deliverable is now the configuration.
8. **Projects in practice.** Scoped workspace · selected folder · project-specific instructions · **automatically building memory that stays inside the project** (anchor line from quiz Q2). Cornell example: a "Sponsor Renewal Pipeline" project pointed at the relevant award folder.
9. **Skills — your recurring workflows, taught to Cowork.** *(The deep-dive slide of Module 3.)* What a Skill is: a folder of assets that teaches Cowork how to run a specific process — `SKILL.md` (the runbook with triggers and step-by-step logic) + Assets (logos, templates) + References ("what good looks like") + optional Scripts. **Worked Cornell example:** a `cfr-lookup-for-pi` skill — trigger phrase, instructions to use the eCFR MCP server (credit AI4RA), the one-paragraph plain-English summary template, and a sample reference document. Auto-activates when the prompt matches. The skill-creator interview pattern (`"I want to build a skill for..."`) as the on-ramp. **Cornell collaborative path:** anyone can start building; RAIS and the AI Innovation Hub will help you take a rough skill and make it shareable. Skills that prove useful get pulled into the cohort's shared library.
10. **Plugins — install today; build together over time.** Plugins package multiple skills, connectors, and subagents into one role-based install. **For now: browse and install via Customize → Plugins, or use `/setup-cowork` for a guided recommendation.** Two shapes: end-to-end pipelines (e.g., a Financial Close plugin that sequences skills) vs. functional toolkits (e.g., a Legal plugin with `/nda-review`, `/clause-library`). **For the future of Cornell research admin:** RAIS and the AI Innovation Hub will partner with the cohort to build Cornell-specific plugins — bundling the cohort's contributed skills, the AI4RA [prompt-library](https://github.com/AI4RA/prompt-library), and Cornell-relevant connectors. The path to a Cornell research-admin plugin isn't "wait for IT to build one" — it's *"contribute skills, and they roll up into a plugin RAIS publishes."*
11. **Evals — trust your skill before you share it.** *(Slim slide.)* Before publishing a skill, run the skill-creator's built-in side-by-side comparison: *with skill* vs *without skill*. Verify the skill adds value over baseline. Tune one constraint at a time. Most skills stabilize in 1–2 rounds.
12. **Bridges: Claude in Chrome + Microsoft 365.** When to reach for each. Cornell-specific: internal Cornell BI dashboards / Workday / Salesforce via Chrome (no native connector); deep editing in Word / Excel / PowerPoint / Outlook via M365 add-in. Cowork plans across both bridges and the desktop in one thread.
13. **Working safely — Cornell overlay.** Course guidance: isolate folders · preserve masters · draft-and-test · avoid destructive verbs. **Cornell overlay (recall Module 2's Green/Yellow/Red):** Cowork is great for Green and Yellow. **Red still requires explicit Cornell sign-off** regardless of how convenient Cowork makes the workflow look. Also: *project memory stays scoped to its project* (quiz Q2) — privacy story worth a sentence. *Scheduled tasks resume when the computer wakes* (quiz Q4) — no anxiety about missed runs.
14. **Hands-on — Configure → Build → Run live.** *(The centerpiece, ~25 min.)* Three-part live build:
    - **(a) Configure** Global Instructions from the participant's guide draft + start a Project pointed at the chosen folder.
    - **(b) Build** a first Skill from one of the guide's "AI can handle" tasks via the skill-creator interview.
    - **(c) Run** the task end-to-end with the new skill active. Watch the Progress panel.

    The room sees the **Plan → Execute → Connect** loop happen on real Cornell work, with their guide and a new skill *both* driving the behavior. Builds the habit of *"my guide isn't a doc — it's how the tool now behaves."*
15. **Review before acting.** Quiz Q6 verbatim: *"A polished result can still be wrong."* Pairs with Module 2's "stand behind every word." Same Diligence message, simpler language.
16. **Wrap-up + 30-day check-in.** Pick one of four:
    - **Configure standing context** — author Global Instructions, or initialize a scoped Project for a current workflow.
    - **Automate a sequence** — set up a `/schedule` recurring task, or send an off-hours mobile Dispatch.
    - **Deploy a capability** — install a role-specific plugin, build a second skill, or use Chrome / M365 for a multi-app extraction.
    - **Contribute back** — bring your scaffolded skill (or a new one) to RAIS / AI Innovation Hub for refinement. The skills the cohort builds together roll up into the shared library and, eventually, into Cornell-specific plugins.
    Schedule a 30-day check-in (RAIS office hours? dedicated session?) to surface what worked, what didn't, and what skills are ready for the shared library.

16 slides — Module 3 carries more weight on advanced tool features (Skills, Plugins, Evals each get explicit treatment). Slides 11 (Evals) and 12 (Bridges) could be compressed into one "advanced patterns" slide if pacing requires; the priority order if compression is needed is Bridges first (less universal), then Evals (slim by design).

## Hands-on exercise specifics — "Configure → Build → Run"

Centerpiece exercise. Modeled on Module 2's "test against data you know cold" but operational and tool-deep rather than analytical. Each participant leaves with a working Project, a working Skill, and one task delegated.

- **Pre-work:** in the email going out before Module 3, ask participants to bring (1) their unit-level AI guide draft from Module 2, (2) one specific folder they want Cowork to work in (a sponsor folder, a recurring report folder, an award folder), and (3) one specific task in their queue that they'd like to delegate — *picked from the "AI can handle" section of their guide.*
- **Live exercise (~25 min):**

  **(a) Configure (~7 min)** — Global Instructions + Project
  1. Open Claude Desktop → switch to Cowork mode.
  2. Settings → Cowork → paste a condensed version of the unit-level guide as **Global Instructions**.
  3. Create a new Project for the chosen workstream. Initialize from the local folder.

  **(b) Scaffold (~10 min)** — first Skill (rough draft, not polished)
  4. Start a new chat: *"I want to build a skill for [the specific task]. Walk me through what you need to know."*
  5. Answer the skill-creator's interview questions. Upload any reference materials you brought.
  6. Install the *rough draft* skill via the Customize menu.

  *Realistic framing — name it out loud:* a polished, eval-tested skill takes more than 10 minutes. What we're doing here is scaffolding the structure and the trigger. **Refinement happens later, with RAIS / AI Innovation Hub support, and the cohort's contributed skills get pulled into the shared library.**

  **(c) Run (~8 min)** — delegate the task
  7. Issue the task prompt with "Ask before acting" permissions on.
  8. Watch the Progress panel; steer mid-run if needed.
  9. Review the output as a draft, not as final.

- **Debrief (~10 min):**
  - Where did Global Instructions catch a mistake before it happened?
  - Did the Skill auto-activate? If not, what would tighten the trigger?
  - What in the guide needed to be sharper to make this run cleanly?
  - **The takeaway to land:** *Your guide isn't a doc you wrote — it's how the tool now behaves. The scaffold you just made isn't yours to polish alone — bring it to RAIS / the AI Innovation Hub to refine, and it can become part of the cohort's shared skill library.*

## Where Module 3 references other materials

- `course-content/COWORK/intro-to-cowork.md` — full course summary with Cornell adaptation notes
- `course-content/COWORK/intro-to-cowork-quiz.md` — quiz takeaways with slide-lift recommendations
- `references/cornell-cowork-deck-draft.md` — Cornell's existing Cowork deck (graphics, language) to harmonize with
- `references/cornell-regulated-data.md` — Green/Yellow/Red data-class model for the safety slide overlay
- `MODULE-2-PLAN.md` — the guide → Cowork bridge originates here
- `slides/foundations.html` — Module 1 deck (esp. slide 4 data rules, slide 11 model picker)
- `slides/assets/aif-4d-framework.svg` — visual style precedent for the building-blocks diagram
- `NOTES-attribution.md` — attribution lines for AIF / AI4RA / REACHWorkshop2026 / Anthropic

## Cornell-specific safety overlay (must land in Module 3)

Cowork's generic safety guidance ("don't point at Desktop / Documents / Downloads", "preserve masters", "draft-and-test") needs a Cornell overlay that recalls Module 2:

- **Green data → use freely** (public RFPs, public CFR, published policies).
- **Yellow data → use Cowork with the unit-level guide as Global Instructions** (internal proposal drafts, sponsor negotiation notes, unit budget drafts).
- **Red data → STOP.** Cowork's "regulated workflows" exclusion (course Page 11) lines up with Cornell's regulated data chart. FERPA / HIPAA / export-controlled / sponsor-restricted data still requires explicit AI Innovation Hub or IT sign-off regardless of how good Cowork looks for the workflow.
- **Project memory stays inside the project.** Useful privacy guarantee — sponsor-A workstream context doesn't bleed into sponsor-B work. Worth a sentence on the safety slide.

## Open questions before building the deck

1. **What did Module 2's cohort actually deliver?** Wait until guide drafts are in before designing examples — let the actual guides shape what the live exercise demonstrates.
2. **Cowork audit trail story for Cornell.** Conversation history is local-to-machine. What's Cornell's position on this for sponsor-touching work? Open question for IT — possibly use the Module 2 → Module 3 gap week to confirm before Module 3 runs.
3. **Cornell-specific Cowork plugin in the future?** Could AI4RA's prompt-library + sponsored programs skills be packaged as a Cornell research-admin plugin? Tease as a vision in slide 10; don't promise as deliverable.
4. **30-day check-in format.** RAIS office hours, dedicated workshop debrief session, or async via the reflections form pattern? Decide before Module 3's wrap-up slide goes final.
5. **Cowork's actual learner experience by Module 3 date.** Cowork is moving fast as a product. Walk the live exercise in Cowork the week before Module 3 to make sure the UI / setup steps in the deck still match what learners will see.

---

*Last updated: 2026-05-16.*
