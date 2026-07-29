# Foundations — Speaker Notes

Instructor context for each slide, shown by the Notes panel in the deck. Open it by clicking the slide counter at the bottom right (a red dot means the current slide has notes) or by pressing **N**.

**Authoring conventions:**

- One `## Slide N - Title` heading per slide. Numbers match the deck's slide positions (main deck 1-19, appendix 20-32).
- Lead each slide with a `**Key framing.**` line, the single most important thing to land.
- After that, anything goes. Anticipated questions, transitions, things to leave out.
- Keep it short enough to take in at a glance.

---

## Slide 5 - Cornell AI landscape

**Key framing.** Today we are going to look at Claude Desktop, which is a relatively new tool. It connects to our Cornell AI Platform, the secured infrastructure we maintain together with contracted partners. It fits into that larger infrastructure and sits at the heart of the overall ecosystem.

**Do not read the whole chart.** Point out a few things and keep moving.

- **Sandbox AI is being retired over time.** It will not be retired until we have solutions up that fully replace it.
- **We are moving to a tiered system.** Microsoft Copilot is our base offering, and pretty soon we will be able to put moderate-risk data into it as well. We are just wrapping up that work with governance.
- **Claude Desktop is the advanced or premium offering.** It lets us do additional things that you cannot as easily do in Copilot.
- **More is coming.** We will likely get other products available in the future, such as OpenAI's. We may also get different contracts with Anthropic that give us more functionality.

**Transition.** Right now we have a specific version of Claude Desktop, which I will get into next.

---

## Slide 6 - Claude Desktop

**Key framing.** Land the name once, then move past it. This is Claude Desktop with third-party inference turned on, Anthropic's shorthand is Claude 3P, and that is the last time the naming matters. Then the real shift, from *"what should I ask Claude?"* to *"what task should I have Claude do?"* Chat-Claude tells you how to redline a contract. Cowork-Claude opens the contract, marks the redlines, and saves the marked-up file. That is the biggest hurdle for people coming from claude.ai or Copilot Chat.

**Plain analogy that lands.** *"Cowork is Claude with hands, not just a mouth."* Or for this audience, think of it as an intern who can read your documents, draft responses, run lookups, and save files back to your folder, but one you still review.

**Why it matters for Cornell admin work.** Most research-administration work is task-shaped rather than question-shaped. Draft a justification, review a contract against standard positions, clean up a budget, pull citations from a regulation. Cowork is built for jobs, not for Q&A.

**Anticipated questions.**

- *"Why no general chat?"* Cowork is task-focused. Open-ended claude.ai-style chat is a separate product Cornell has not approved for confidential data yet.
- *"Is the VM really isolated?"* Yes, architecturally. The agent cannot see files outside what has been granted.
- *"What if I want it to use a different folder mid-task?"* It asks, you approve. Per session, not a permanent grant.

---

## Slide 7 - Data rules

**Key framing.** The sign on the right is what people will actually remember. Feed Claude any of the documents you use day to day, which is awards, proposals, and intellectual property. Do not feed it DoD work, CUI or export-controlled data, or HIPAA data.

**The sign is the short version.** The bullets carry the full list, including government-restricted information. Deliberately no use of the word "confidential" on the sign, since it gets read as government classified rather than Cornell confidential.

**The one-line rule.** If you can put it in Sandbox AI, you can put it in Claude 3P. Same gateway, same contracted infrastructure.

**If web search comes up.** It is new, and it is safe. It runs through Gemini's enterprise grounding, so your prompt is not logged.

---

## Slide 11 - What agents are

**Key framing.** This slide is why the deck no longer spends time on prompting technique. With agentic Claude plus skills and plugins, the playbook lives in the tooling rather than in the prompt. You describe the task and the skill carries the how. If someone asks about prompt engineering, note that Module 2 touches on it briefly, and that the biggest lever now is picking the right task and reviewing the output well.

---

## Slide 13 - What comes with the RAIS setup

**Key framing.** The installation is configured for 3P use and ships with a few things that are specific to our work. The distinction worth landing here is chat versus Cowork. Chat is where you ask questions. Cowork is where you ask Claude to do something for you, on real files.

**Keep it short.** This slide just names what is in the box. The interface walkthrough comes next and the eCFR connector and Legal Plugin both get used in the workshop.

---

## Slide 14 - The interface

**Key framing.** Projects are the thing to land here. Start the chat inside the project and the right context, the Legal Plugin skills, and the eCFR connector are already loaded. On models, one sentence is enough. Sonnet for everyday work, Opus when it is genuinely hard. The UI quick reference has the same guidance if anyone wants it later.

---

## Slide 16 - Workshop

**Key framing.** The three items run in order and each shows a different kind of capability. Live web search, which Sandbox AI never had. A connector, eCFR. And a plugin, the Legal Plugin contract review. Card 3 doubles as the link into the appendix walkthrough, so click it after running the exercise to page through the real output. For non-OSP audiences, skip the appendix. The main deck never flows into it on its own.

**Mechanics.** Clicking card 3 jumps to Appendix 1 of 13. Inside the appendix the red pill at bottom left comes back to this slide, and the left arrow from the first appendix slide does the same.

---

## Slide 20 - Appendix, what the plugin produced

**Key framing.** Everything in this appendix came out of one run of the plugin's contract-review skill, measured against Cornell's own materials, the OSP playbook and our standard research contract. Real award, real output, nothing staged.

**On the scrubbing.** The sponsor name, the professors, and the project topic are deliberately not shown. Only the OSP number and the review date are on the slide.

---

## Slide 21 - Appendix, six files

**Key framing.** Read them in this order. The memo explains the edits, the letter carries them to the company, the internal memo handles the Cornell side, and the spreadsheet tracks it.

---

## Slide 22 - Appendix, findings table

**Key framing.** This table is the spine of the memo. The pages after it explain each row in full.

---

## Slide 23 - Appendix, tracked changes

**Key framing.** Shown as LibreOffice renders it, with insertions underlined and deletions struck through. In Word it looks the same, with the editor name in the margin.

---

## Slide 25 - Appendix, the nine asks

**Key framing.** Ask 8 is about warranties and liability. Cornell cannot promise research results will work or that they infringe nobody's patents, and the liability terms in their form were written for a supplier.

---

## Slide 31 - Appendix, sequence

**Key framing.** The start-date question is the one most likely to come back quickly, because the professors want to begin work.

---

## Slide 32 - Appendix, reviewing the output

**Key framing.** If all three checks hold, this is usable as a starting point for the officer on the award. It is a first pass, not a substitute for judgment.

---
