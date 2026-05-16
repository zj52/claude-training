# Foundations — Speaker Notes

Extra context for each slide, for the instructor to read before/during the session. Public — these get surfaced via a Notes modal on the deck once that's built. Not stage directions; not private. Think of it as the "and another thing you should know" layer that doesn't fit on the slide.

**Authoring conventions:**

- One `## Slide N — Title` heading per slide. Numbers match the deck's slide position.
- Lead each slide's notes with a `**Key framing.**` line — the single most important thing the instructor should land.
- After that, anything goes: anticipated questions, anecdotes, transitions, things to *not* say, context about why a slide exists.
- Keep it concise. Speaker notes should fit in a glance, not a deep read.

---

## Slide 3 — What is Claude 3P

**Key framing.** With Cowork, the mental shift is from *"what should I ask Claude?"* to *"what task should I have Claude do?"* Chat-Claude tells you how to redline a contract; Cowork-Claude opens the contract, marks the redlines, and saves the marked-up file. Lead with this. It's the single biggest hurdle for people coming from claude.ai or Copilot Chat.

**Plain analogy that lands.** *"Cowork is Claude with hands, not just a mouth."* Or, for the Cornell admin audience: *"Think of it as an intern who can read your documents, draft responses, run lookups, and save files back to your folder — but one you still review."*

**Why it matters for Cornell admin work specifically.** Most research-administration work is task-shaped, not question-shaped: draft a justification, review a contract against standard positions, clean up a budget, pull citations from a regulation. Cowork is built for jobs, not Q&A.

**Anticipated questions:**

- *"Why no general chat?"* — Cowork is task-focused. If you want claude.ai-style open-ended chat for general questions, that's a separate product Cornell hasn't approved for confidential data yet.
- *"Why no Artifacts or Projects?"* — Those are claude.ai concepts. Cowork's equivalent of a "project" is the folder it's pointed at; its "artifacts" are the actual files it produces and saves there.
- *"Is the VM really isolated?"* — Yes, architecturally. The agent literally cannot see files outside what's been granted. (Contrast with Claude Code, which runs on your local machine and uses per-action permission prompts instead. Both safe, different mechanisms.)
- *"What happens if I want it to use a different folder mid-task?"* — It asks; you approve. Per-session, not a permanent grant.

**Transition to next slide.** "Now that you know what Claude 3P is, the next slide shows where it fits in the bigger Cornell AI picture — what other tools are around it, and why Claude 3P is the path for confidential admin work."

---
