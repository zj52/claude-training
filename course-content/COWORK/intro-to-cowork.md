# Introduction to Claude Cowork (course summary)

- **Course:** Introduction to Claude Cowork (Anthropic Academy)
- **Pages:** 14
- **Use:** Module 2 → Module 3 homework. Reviewed in Module 3.
- **Saved:** 2026-05-16 (from user-provided extract)
- **License note:** No explicit license shown in the extract; treat as Anthropic course material. Summary preserved here for internal Cornell training-team reference, not for redistribution.

---

## 1. What is Claude Cowork

Cowork is an interface inside the Claude Desktop app built for **digital delegation** — handing Claude a multi-step process rather than chatting turn-by-turn.

- **Claude Chat** → brainstorming and textual answers.
- **Artifacts / Code** → building software sandboxes.
- **Claude Cowork** → executing cross-functional business operations on the user's actual desktop, coordinating tools, references, intermediate files, and finished deliverables.

## 2. Setting up Claude Cowork

- **Where to install:** the Claude Desktop app on Mac/Windows ([claude.com/download](https://claude.com/download)). Cowork is accessed via the mode selector in the top right.
- **"Work in a project" (folder pointing):** click in the prompt bar, choose the smallest local folder scoped to the task. Cowork has both **read and write** access to that folder (unlike Chat). Source materials and saved outputs both live there.
- **Connectors** (Customize area):
  - *Email / Calendar:* Outlook (M365) or Gmail
  - *Messaging:* Slack or Teams
  - *Cloud storage:* SharePoint, OneDrive, Google Drive, Box *(many cloud connectors are read-and-search only)*
  - *CRM / project tools:* Notion, Salesforce, HubSpot, Asana, Linear
  - *No connector?* Use the Claude in Chrome extension as a bridge for internal dashboards / web apps behind a login.
- **Permissions model:**
  - **Ask before acting** *(default)* — Claude pauses for approval before external-touching actions (sending emails, posting).
  - **Act without asking** — for trusted workflows under active supervision.
  - *Hard guardrail:* Cowork **always** asks before permanently deleting files, regardless of mode.

## 3. What Claude Cowork can do for you

### Three work patterns that fit Cowork

1. **Multi-step tasks** — several distinct phases (gather → compare → draft → format). Hand Claude the whole arc; watch progress in the Progress panel.
2. **File-based tasks** — inputs and outputs are real files (Word, Excel, PDF) on disk. Cowork reads, edits, and saves directly.
3. **Multi-tool tasks** — spans multiple connected apps. Cowork plans across them and executes the sequence as one delegation.

### Key features

- **`/schedule`** — run a task automatically on a cadence (hourly, daily, weekdays, manual). Workflow: do it successfully once, then `/schedule` it. Scheduled tasks only run while the computer is on and Claude Desktop is open.
- **Dispatch** *(research preview, Pro/Max)* — trigger a Cowork task from the Claude mobile app; it runs on the user's desktop and pushes a notification when finished.

## 4. Hand Claude Cowork your first task

Three core habits:

1. **A complete delegation names three things up front:**
   - **The Deliverable** — exact format and length (e.g., *"a four-page memo"*)
   - **The Inputs** — exactly where to look (folders, file names, date ranges, app channels)
   - **The Nuance** — strategic context Claude can't infer
2. **Answer clarifying questions before execution.** Cowork prefers to ask up front (often multiple-choice) rather than build context turn-by-turn.
3. **Steer mid-task.** If the Progress panel shows the wrong source or template, queue a correction message — no need to wait until the end and regenerate.
4. **Review like a colleague's draft.** Cowork writes real files to your folder. Treat the output as a first draft; verify facts, refine, don't restart unless needed.

## 5. Get better results faster — the four building blocks

How Cowork gets calibrated to *your* work over time:

| Block | What Cowork learns | What it unlocks |
|---|---|---|
| **Global Instructions** | Who you are; how you work | Every task starts pre-calibrated to role, formatting, preferences |
| **Projects** | The context of one stream of work | Claude operates like an existing team member with access to past files and decisions |
| **Skills** | How a specific process is executed | Cowork runs the matching task the way your team does (templates, steps) |
| **Plugins** | The deep expertise of a role or specialized field | Cowork shifts from generalist to specialist for that domain |

## 6. Standing context — Global instructions and projects

- **Global Instructions** (Settings → Cowork) apply to every chat, scheduled task, and mobile Dispatch. Include role, company, acronyms, formatting and tone standards.
- **Projects** are scoped workspaces for distinct streams of work (a customer account, a recurring report, a launch). They track project-specific instructions, schedules, tool connections, and **automatically building memory** of past decisions.
- **Project initialization paths** (Projects → New project): from scratch · from an existing local folder · imported from a standard Claude Chat workspace.

## 7. Skills — teach Cowork your way

A **skill** is a reusable playbook (a folder of assets) that teaches Cowork how to execute a specific process. Cowork identifies matching tasks and activates skills **automatically**.

Four possible building blocks per skill:

1. **`SKILL.md`** *(required)* — the runbook: triggers + step-by-step logic
2. **Assets** — visual/structural components (logos, master decks, branding)
3. **References** — "what good looks like" (style guides, model reports, compliance clauses)
4. **Scripts** — code files for repeated technical operations (data processing, chart calc)

### Build process

Prompt Cowork: *"I want to build a skill for [process]. Walk me through what you need to know."* Claude interviews you, constructs the folder, you install it via the Customize menu. Adjust conversationally later.

## 8. Plugins — encode your team's expertise

A **plugin** scales institutional knowledge by bundling multiple skills, connectors, and **subagents** (transient AI micro-helpers spun up for sub-tasks) into a single role-based install.

### Two shapes

1. **End-to-end pipeline** — sequences skills into a single complex delegation (e.g., a Financial Close plugin: pull data → process variances → draft executive memo).
2. **Functional toolkit** — bundles independent team skills, each invoked by slash command (e.g., Legal plugin with `/nda-review` and `/clause-library`).

### Setup

- Browse standard plugins via Customize → Plugins.
- `/setup-cowork` — Claude interviews you and recommends a tailored set.
- Customize an off-the-shelf plugin: click Customize and supply your own templates/examples.

## 9. Claude in Chrome

The Claude in Chrome extension lets Cowork view, click, and navigate websites alongside you — a bridge for data silos without native APIs.

**Designed for:**

- Internal BI / Tableau / Looker dashboards
- Supply chain, ERP, vendor procurement portals
- Proprietary web tools behind corporate SSO
- Multi-tab comparative web research

### Combined workflow + security

Triggered via Cowork, the extension handles web data retrieval and passes information back to the desktop app to build or edit local files. Claude does not bypass auth or store login details — you log in to Chrome first; Claude operates inside your active session and asks before critical actions.

## 10. Claude for Microsoft 365

Native presence inside the M365 suite:

- **Excel:** audits data, writes complex expressions, debugs syntax / circular errors, builds calculations directly in workbooks.
- **PowerPoint:** uses your slide masters, fonts, templates; outputs fully editable charts and native layouts.
- **Word:** drafts, refines, reformats prose in-place; works with tracked changes and comments.
- **Outlook:** prioritizes incoming mail, drafts replies tailored to historical threads and calendar availability.

### Chained pipeline example

Read a client request in Outlook → spin up a project brief in Word → calculate metrics in Excel → export a pitch deck to PowerPoint, all in one thread.

### When to choose Cowork vs. M365 add-in

- **Cowork** — when a job reaches outside Office to cross-reference Slack, CRM, local folders, etc., to assemble new files.
- **M365 add-in** — when you're already deep inside an Office document doing real-time editing or formula debugging.

## 11. Best practices for working safely

### Workspace guardrails

- **Isolate working folders.** Never point Cowork at broad roots (Desktop, Documents, Downloads). Create task-specific directories.
- **Preserve masters elsewhere.** Keep irreplaceable contracts / baselines in folders or drives separate from Cowork's write path.
- **Draft and test first.** Run new automations and `/schedule` cadences against dummy files. Force intermediate drafts until execution is reliable.
- **Avoid ambiguity in destructive verbs.** Not *"cut this"* — instead *"remove this paragraph from the draft, keep the core file unchanged."*

### When NOT to use Cowork

- **Regulated workflows** — not natively indexed in core compliance logs / standard admin data exports.
- **Unsupervised deliveries** — Cowork should never autonomously hit final "send" on public announcements, external client contracts, or client-facing operations.
- **Sensitive personal data** — unless specifically audited, cleared, and structured by enterprise IT.

## 12. Validating skills for plugins (evals)

Before sharing a skill or plugin, validate it.

- **Eval** = a structured test: realistic prompts → review output with human judgment → iterate.
- **Skill-creator side-by-side comparison:** *with skill* vs *without skill*, so you can see whether your skill adds value over the baseline.
- **Tuning:** specific, targeted adjustments to Claude, one constraint at a time. Most custom skills stabilize within 1–2 rounds.

## 13. Share what you build with your team

### Enterprise distribution (private marketplace, IT-admin published)

- **Available** — opt-in in the corporate Directory.
- **Installed by default** — pre-activated; users can disable individually.
- **Required** — permanently installed for compliance / legal / operational rigidity.
- **Hidden** — published but masked; for staging / restricted test groups.

### Operational hygiene

- **Appoint a single owner** for every shared tool (bug triage, references, change requests).
- **Mandatory testing gates** — eval before deploying to production.
- **Specific naming standards** — `"finance-quarterly-expense-audit"`, not `"report-generator"`.
- **Rhythm audits** — quarterly prune of unused skills + performance log review.

## 14. Wrap up — pick one action this week

1. **Configure standing context** — author a global instructions profile, or initialize a scoped project workspace for a live workflow.
2. **Automate a sequence** — set up a `/schedule` recurring task, or send an off-hours mobile Dispatch.
3. **Deploy a capability** — install a role-specific plugin, or use Chrome / M365 to run a complex multi-app extraction.

---

## Cornell adaptation notes

This course is **the operational backbone of Module 3**. The arc is clear:

> **Module 2 closes with the unit-level AI guide draft. Module 3 makes it operational in Cowork.**

### Mapping the four building blocks to Cornell research admin

| Cowork block | Cornell-flavored example |
|---|---|
| **Global Instructions** | *"I'm a sponsored programs officer at Cornell. I support PIs across [departments]. When I write to PIs, my tone is professional and direct. When I cite CFR or sponsor policy, I always link the source. I never paste student records or restricted research data into Claude. The unit-level AI guide at [path] governs anything I haven't pre-approved here."* |
| **Project** | One per **PI group, sponsor, or recurring workflow** — e.g., "NIH Year-End Reports 2026," "Smith Lab Sub-Recipient Pipeline," "Annual Compliance Audit Prep." Selected folder = the relevant award files. Memory captures past decisions across the year. |
| **Skill** | Reusable runbooks for Cornell-specific tasks — *"Look up a CFR section and summarize for a PI"*, *"Review a sub-recipient agreement against Cornell positions"*, *"Build a one-page sponsor brief from an NIH NOFO."* Pair with AI4RA's [prompt-library](https://github.com/AI4RA/prompt-library) for foundations. |
| **Plugin** | A "Sponsored Programs" plugin or "Research Compliance" plugin bundling the unit's skills + relevant connectors. Future state, not Module 3 launch material — but worth showing as the destination. |

### Cornell-specific risk / caveat callouts

These are the points where the Cowork training's generic guidance meets Cornell-specific reality and needs an extra note in Module 3:

- **"Regulated workflows" caveat (Page 11).** Cowork is explicitly NOT designed for activities that need to be indexed in compliance logs. For Cornell, this means: don't use Cowork for FERPA / HIPAA / export-controlled / sponsor-restricted data unless the AI Innovation Hub or IT has signed off. The Module 2 Green/Yellow/Red model holds: Cowork is great for green and yellow; red still requires explicit clearance.
- **Local conversation history (from the user's Cowork deck reference).** Conversations live on the user's machine. Cornell-specific question: what's the audit trail story for sponsor-touching work? Open question for IT confirmation.
- **"Don't point at Desktop / Documents / Downloads" (Page 11).** Cornell-specific habit to teach: each PI or sponsor workflow should have its own dedicated folder. Possibly inside a Cornell-managed cloud drive (Box?) that's already permission-scoped.

### Module 3 suggested anchor concepts (priority order)

1. **"Point Claude at a folder"** — *the* paradigm shift. Slide 1 of Module 3.
2. **Plan / Execute / Connect** — the three things Cowork does.
3. **The four building blocks** — Global / Project / Skill / Plugin. Slide-worthy as a 2×2 grid.
4. **The three task-fit patterns** — multi-step / file-based / multi-tool. Worth a slide.
5. **The complete delegation pattern** — Deliverable / Inputs / Nuance. Cornell's existing 3-part prompt fits cleanly here.
6. **Skill mechanics** — `SKILL.md` + Assets + References + Scripts. Probably one slide.
7. **Safety guardrails** — never broad roots, preserve masters, draft-then-promote, avoid destructive verbs. Plus the Cornell "don't use for regulated data without sign-off" overlay.
8. **Evals and sharing** — covered lightly unless Cornell IT plans a private marketplace.

### Bridge from Module 2 → Module 3 (the payoff)

The Module 2 deliverable (unit-level AI guide draft) becomes:

- **Global Instructions** for Cowork — the role identity, tone, formatting rules.
- **Project** initialization input — the scope, the values, the data-class rules.
- **Skill candidates** — the workflows in the unit-level guide's Task Delegation section that are "AI can handle" or "AI can assist."

Stating this arc explicitly in Module 3's opener gives the workshop its dramatic payoff: *the document you wrote last week now configures the tool that does the work.*

---

*Last updated: 2026-05-16.*
