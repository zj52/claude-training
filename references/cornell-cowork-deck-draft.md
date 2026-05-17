# Cornell Claude Cowork deck (existing draft)

- **Source:** [Google Slides — AI Training - Claude Cowork](https://docs.google.com/presentation/d/1SGadGowblRB628fbAafSqhobxcwMyPeDdSVn3rnf56M/edit)
- **Provenance:** Cornell-internal draft, *Based on material from Anthropic*. CC BY-NC-SA 4.0.
- **Saved:** 2026-05-16

## Why this is in the source library

The user's prior Cornell-specific Cowork training deck. Directly relevant to Module 3 (Cowork) of the new workshop series — most content here can be carried forward or adapted.

## Deck topics (in order, per sync)

- **Title slide.** "Claude Cowork · Based on material from Anthropic · AI Training · Cornell"
- **Architecture framing:** Cowork is built on the same architecture as Claude Code — agentic system used to write and ship production software.
- **The shape of the exchange.** *"You describe an outcome. Claude plans the steps, works through them, and produces the deliverable — a file on your drive, not text to paste somewhere else."*
- **Three things that enable this:** Plan / Execute / Connect.
- **Capabilities:** Connectors, File operations, Plugins, Scheduled tasks, Subagents, Local computation.
- **Context handling:** *"Can handle scale — compacts context."*
- **The key affordance:** *"Point Claude at a folder."*
- **Plugins explained:** a bundle of Skills + Connectors + Subagents; available open-source for most knowledge-work roles.
- **Privacy note:** Cowork conversation history is stored locally on the user's machine; check plan documentation for audit logging and compliance details if regulated workloads are involved.

## Key takeaways worth porting into our materials

1. **"Point Claude at a folder."** This is the *single most important* operational concept in Cowork and it deserves to be the anchor framing of Module 3. Everything else (Skills, Plugins, Subagents, Scheduled tasks) is mechanics on top of that core affordance. Worth its own slide.

2. **Plan / Execute / Connect.** Clean three-word frame for what Cowork does differently from chat-mode Claude. Memorable and accurate. Could be a slide in Module 3, or compressed onto the Module 2 → Module 3 bridge slide.

3. **The Cowork product description in one sentence:** *"You describe an outcome. Claude plans the steps, works through them, and produces the deliverable — a file on your drive, not text to paste somewhere else."* Most accurate one-liner for the audience. Worth quoting verbatim somewhere prominent (Module 1 slide 3? Module 3 slide 1?).

4. **Plugins = Skills + Connectors + Subagents.** The compositional definition the user lands here is exactly right. The Cornell version is *plugins encode "how a specialist would approach this kind of work."* Module 3 should land this with a research-admin-flavored example (a hypothetical "sponsored-programs plugin" with skills for proposal review + connectors for eRA Commons + subagents for parallel sub-recipient checks).

5. **Local storage of conversation history.** Important Diligence point — *Cowork conversations don't get pushed to a Cornell-managed audit log unless that's separately configured.* Worth a small explicit slide in Module 3, paired with the regulated-data chart (`references/cornell-regulated-data.md`) — the question "is Cowork OK for regulated data?" needs an explicit answer before learners run wild with it.

## Bridge from Module 2 → Module 3

The Module 2 plan's closing slide (slide 12) currently teases Cowork with *"AIF taught you to upload context. Cowork lets your selected folder be that context, automatically."* This deck supplies the language to extend that bridge into Module 3's opener:

- **Module 2's "context document"** (from AIF-NP Lesson 1) → **becomes the system prompt for a Cowork Project** in Module 3.
- **Module 2's "unit-level AI guide"** (from AIF-NP Lesson 8) → **becomes the operational rules for that Project.**
- **The selected folder** → **becomes the persistent context the Project draws on.**

Theory → Guide → Operational Tooling, as we've been calling it.

## To do

- Walk through the full deck and inventory: slide list, graphics used, Cornell branding, what's working / what to revise.
- Confirm the privacy/local-storage framing aligns with Cornell IT's current position on Claude 3P (open question in `references/cornell-regulated-data.md`).
- Identify which graphics need to be rebuilt in Cornell carnelian (parallel to the 4D framework SVG we just built at `slides/assets/aif-4d-framework.svg`).

---

*Last updated: 2026-05-16.*
