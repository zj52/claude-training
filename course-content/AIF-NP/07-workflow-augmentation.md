# Lesson 7 — Workflow augmentation

- **Course:** AI Fluency for nonprofits ([Skilljar](https://anthropic.skilljar.com/ai-fluency-for-nonprofits))
- **Lesson URL:** <https://anthropic.skilljar.com/ai-fluency-for-nonprofits/376886>
- **Estimated time:** 40 minutes (incl. 6-min video)
- **Position:** First lesson in the "Putting it all together" section.
- **Saved:** 2026-05-16 (clean extraction via Gemini)
- **License:** CC BY-NC-SA 4.0 — Copyright 2025 Anthropic and Giving Tuesday. Based on the AI Fluency Framework developed by Prof. Rick Dakan (Ringling College of Art and Design) and Prof. Joseph Feller (University College Cork).
- **Naming note:** the course nav calls this lesson "Workflow augmentation"; the video on the page is titled "Workflow automation". Same lesson, two names.

---

## What you'll learn

By the end of this lesson you'll be able to:

- Apply all four dimensions of the 4D Framework together to build a repeatable procedure with AI.

## Workflow automation (video, 6 min)

The video brings together all four dimensions of the 4D Framework to build a practical workflow automation. We follow Emily, a development coordinator preparing for her organization's annual gala, as she sets up an AI-assisted email response system. The video demonstrates how to categorize tasks by what AI should handle versus what needs human attention, how to describe the system's behavior precisely, and how to maintain Diligence through testing and transparency.

## Key takeaways

- **Start with Problem Awareness.** Before touching any AI tools, analyze your actual workload. What are people asking? What patterns emerge? Make a specific list before deciding what to automate.
- **Task Delegation means asking "should AI do this?" — not just "can AI do this?"** Some tasks (like answering documented questions) are good candidates for automation. Others (like handling complaints or high-stakes requests) should stay with humans.
- **Test iteratively with real examples.** Use actual emails you've received to test the system. You'll discover gaps in your descriptions that need refinement — this is normal and necessary.
- **Practice all three types of Diligence.**
  - **Creation Diligence** — be intentional about what you automate.
  - **Deployment Diligence** — review outputs before they go out (especially early on).
  - **Transparency Diligence** — be honest about AI's role, especially if something goes wrong.

## Exercise 1 — Mapping your automation opportunities

Identify which repetitive tasks in your work are good candidates for AI automation.

### Part I: Audit your repetitive tasks

Think about your past week of work. List 5–10 tasks that felt repetitive or time-consuming. For each:

- How often does this occur? (Daily, weekly, monthly)
- How long does it take each time?
- Is the response/process mostly standardized, or does it vary significantly?

### Part II: Categorize by AI-appropriateness

Sort your tasks into three categories:

- **AI can handle:** standardized responses, documented information, clear processes.
- **AI can assist, human decides:** AI drafts or prepares, you review before action.
- **Human should handle:** high-stakes decisions, emotional situations, complex judgment calls.

### Part III: Prioritize

Choose one task from "AI can handle" or "AI can assist" that would save you the most time. This is your automation candidate.

### Reflection

- What criteria helped you decide which category each task belongs in?
- Were you surprised by how many (or how few) tasks felt appropriate for automation?

## Exercise 2 — Building your automation description

Walk through describing an automation system using the three types of Description.

### Part I: Define your product

Write a clear **Product Description** for the task you identified:

- What is the end result you want?
- What inputs will the system receive?
- What outputs should it produce?

### Part II: Define your process

Write a **Process Description** that outlines the steps:

- What should the system do first?
- What decision points exist?
- When should it escalate to a human?
- What information does it need access to?

### Part III: Define the performance

Write a **Performance Description** that defines behavior:

- What tone should it use?
- How should it handle uncertainty?
- What should it never do?
- How should it acknowledge the person's request?

### Part IV: Test with real examples

Share your descriptions with AI along with 3–5 real examples from your work. Evaluate:

- Did it categorize correctly?
- Are the responses accurate and appropriate?
- What adjustments do your descriptions need?

## Exercise 3 — Planning for Diligence (stretch)

Think through the responsibility aspects of your automation.

### Part I: Creation Diligence

- Why is this task appropriate for AI to handle?
- What could go wrong, and how would you catch it?
- What's the impact if AI makes a mistake?

### Part II: Deployment Diligence

- Will you review every output, or sample periodically?
- How will you monitor for problems over time?
- What triggers would cause you to pause the automation?

### Part III: Transparency Diligence

- Who needs to know AI is involved?
- How will you disclose AI's role?
- What follow-up options will you provide if someone wants human attention?

## Lesson reflection

- How did using all four dimensions of the 4D Framework together change how you approached this automation task?
- What surprised you about the process of describing an automation system precisely enough for AI to execute it?

## What's next

The next lesson covers strategies for integrating AI into your organization thoughtfully and sustainably — addressing concerns about AI dependency and building an AI policy that reflects your values.

---

## Cornell adaptation notes

### Research-admin automation candidates

Common research-admin work that fits the lesson's three categories:

| Category | Cornell examples |
|---|---|
| **AI can handle** | Triage of inbound PI questions to the right FAQ link or policy page; first-pass summary of a sponsor RFP into a one-page brief; reformatting messy budget tables; generating draft compliance checklists from sponsor requirements; preparing reminder copy for milestone/progress-report deadlines |
| **AI can assist, human decides** | Drafting responses to non-routine PI questions; drafting sponsor justification letters or NCE requests; reviewing a budget against an RFP for allowability flags; preparing meeting prep notes from a sponsor's announcement history; first-pass review of a sub-recipient agreement |
| **Human should handle** | Sponsor relationship calls; audit findings + remediation; allowability decisions that set precedent; exception/waiver requests; anything with a regulatory deadline at risk; anything touching FERPA / HIPAA / export-controlled data |

The lesson's "ask 'should AI do this?' not just 'can AI do this?'" framing is the one to lift directly into Module 2 — it crystallizes Delegation in a memorable phrase.

### Three types of Diligence — Cornell-flavored

- **Creation Diligence** — use **Claude 3P**, not personal accounts; bring sponsor-sensitive context only when the data class allows. (Ties back to Lesson 5 + the regulated data chart.)
- **Deployment Diligence** — early in any automation, review **every** output. Establish a sample rate (e.g., 1 in 10) only after you've built confidence over weeks. For high-stakes outputs (sponsor-facing letters, compliance interpretations), always review.
- **Transparency Diligence** — when AI-assisted output goes to a PI, OSP colleague, or sponsor, **disclose AI's role when it matters**. Examples:
  - *"Drafted with Claude 3P; reviewed and edited by me."* on internal documents.
  - For sponsor-facing material, AI involvement is usually invisible because the human owner has fully revised — but the standard from AIF-NP Lesson 4 still applies: **stand behind every word**.

### How this lesson fits Module 2

Lesson 6 (data analysis) and Lesson 7 (workflow augmentation) together form the most actionable pair in the AIF-NP course. Lesson 6 teaches **test on data you know cold**. Lesson 7 teaches **build a workflow you can defend**. Together they're the operational core of the 4D framework.

Suggested Module 2 anchor: *"By the end of today, you'll know one specific task in your queue that you'll automate with Claude 3P, and one specific check you'll run to validate it before going live."* That maps to Exercises 1–3 of this lesson + the validation exercise from Lesson 6.

Add to `MODULE-2-PLAN.md`: this lesson's three-category categorization (Can handle / Can assist / Human) deserves its own slide — it's a memorable mental model and pairs well with the Green/Yellow/Red data class simplification.

### Bridge to Module 3 (Cowork)

The lesson's "build a repeatable procedure" framing maps directly to **Cowork Projects** — a persistent project with selected folder + system prompt + saved context is exactly the operational form of the automation this lesson describes. Worth flagging in Module 2 close: *"AIF teaches you to describe a workflow. Module 3 shows you how to make it persistent in Cowork — Projects are where this lesson goes from theoretical to operational."*

---

*Saved: 2026-05-16.*
