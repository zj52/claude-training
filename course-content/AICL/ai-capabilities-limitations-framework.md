# AI Capabilities & Limitations Framework (diagram)

- **Course:** AI Capabilities and Limitations (AICL), Anthropic Academy / Skilljar
- **Lesson:** "What We Mean by AI" — <https://anthropic.skilljar.com/ai-capabilities-and-limitations/456427>
- **Asset:** `ai-capabilities-limitations-framework.png` (captured 2026-07-25 from the lesson page; the diagram is rendered in HTML on the page, so this is a screenshot capture)
- **License:** Copyright 2026 Anthropic. Original work building on the AI Fluency Framework developed by Prof. Rick Dakan (Ringling College of Art and Design) and Prof. Joseph Feller (University College Cork). Released under CC BY-NC-SA 4.0.

## Diagram content (transcription)

**AI Capabilities & Limitations Framework** — Four properties that shape what AI can and can't do for you. Each sits on a spectrum. The further right, the more you should verify and compensate.

Each property is shown on a CAPABILITY → LIMITATION spectrum:

| Property | Guiding question | Capability end (left) | Limitation end (right) |
|---|---|---|---|
| Next Token Prediction | Where do AI answers come from? | Well-worn paths: summarize, reformat, explain common concepts | Novel territory, sparse patterns, "true vs. sounds true" |
| Knowledge | What does AI actually know? | Frequent, recent-in-training, consistent: mainstream topics, popular languages | Rare, post-cutoff, niche, local, or contested topics |
| Working Memory | What is the AI paying attention to right now? | Material fits comfortably, session is current, you supply relevant context | Very long docs/conversations, expecting cross-session continuity (the cliff) |
| Steerability | How much am I in control? | Short, concrete, verifiable instructions ("respond as a table," "under 100 words") | Long reasoning chains, abstract asks, native precision |

## Related assets

All video-frame slides from the same course, same license as above.

- `ntp-capability-limitation-zones.png` (2346x1322) — from the Next Token Prediction lesson. Title "Next token prediction" with two boxes on a dashed two-way arrow: "Writes compellingly" (labeled Capability zone, left) and "Hallucinates" (labeled Limitation zone, right).
- `collision-ntp-knowledge-gap.png` (1174x688) — from "When Properties Collide." Two boxes joined edge to edge: "Next token prediction" overlapping "Knowledge gap." The collision: when the model lacks knowledge, next token prediction fills the gap with plausible-sounding text, which is where confident fabrication comes from.
- `collision-working-memory-steerability.png` (1190x584) — from "When Properties Collide." Two boxes joined edge to edge: "Working memory" overlapping "Steerability." The collision: as working memory fills up in long sessions, earlier instructions lose their grip and the model becomes harder to steer.

## Cornell adaptation notes

- The course positions this as a companion to the 4D Framework: 4D covers the human competencies, this framework covers the machine properties those competencies respond to. Natural pairing for Module 1 (4D) → a "how the machine behaves" segment.
- The "further right, verify and compensate" framing is a compact way to teach verification habits for RAIS use cases (post-cutoff regs, niche sponsor policies land on the limitation end of Knowledge).
- ShareAlike applies: anything we derive from this diagram is also CC BY-NC-SA 4.0.
- Teaching point (Zach, 2026-07-25): the more specific a claim from an LLM, the more it warrants checking, because that's where errors often happen. In other words, **specificity is where fabrication concentrates.** Names, numbers, dates, citations, and section references are the highest-risk outputs; vague summaries rarely fail, precise claims do. Pairs naturally with the "further right, verify and compensate" framing.
