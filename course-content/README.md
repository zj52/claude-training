# Course content

Pasted lessons from external courses we use as homework. Saved here for reference, Module 2/3 design, and cross-checking against the Cornell training materials. All source courses are CC BY-NC-SA 4.0 — see `../NOTES-attribution.md` for licensing details.

## Course abbreviations

| Abbrev | Course | Where | Used for |
|---|---|---|---|
| **AIF-NP** | AI Fluency for Nonprofits | [Skilljar](https://anthropic.skilljar.com/ai-fluency-for-nonprofits) | Module 1 homework |
| **AIF-FF** | AI Fluency: Framework & Foundations *(parent course)* | [Skilljar](https://anthropic.skilljar.com/ai-fluency-framework-foundations) | Reference; deeper background |
| **AIF-EDU** | AI Fluency for Educators | [Skilljar](https://anthropic.skilljar.com/ai-fluency-for-educators) | Reference |
| **AIF-STU** | AI Fluency for Students | [Skilljar](https://anthropic.skilljar.com/ai-fluency-for-students) | Reference |
| **TAIF** | Teaching AI Fluency | [Skilljar](https://anthropic.skilljar.com/teaching-ai-fluency) | Reference |
| **COWORK** | Introduction to Claude Cowork | Anthropic Academy | Module 2 → Module 3 homework |

## File naming

Within each course folder, lessons are numbered to match the course's own ordering:

```
AIF-NP/
  01-welcome.md
  02-4d-framework.md
  03-researching-with-ai.md
  ...
```

Each lesson file starts with a small metadata block: course, lesson URL, estimated time, license. Then the lesson body (cleaned up from the Skilljar extract), then a "Cornell adaptation notes" footer with implications for our materials.

## Workflow

1. User signs into Skilljar, opens a lesson.
2. User extracts text via Gemini (or copy-paste).
3. User pastes the cleaned text into chat.
4. I save it as `XX-slug.md` in the right course folder, preserving the source content faithfully and adding Cornell adaptation notes at the end.

## Why save these locally

- **Reference at workshop design time** — when building Module 2 / 3 we can cite specific lesson framings instead of re-deriving them.
- **License compliance** — keeping a local copy with source URL and license line ensures we always know what's ours vs. what's attributed.
- **Air-gapped** — if Skilljar goes down or content changes, we still have a snapshot we can review.

Course content is for internal Cornell training-team reference only — not redistributed. (The CC BY-NC-SA license permits non-commercial sharing, but we don't need to make these public; learners access the originals at the Skilljar links above.)
