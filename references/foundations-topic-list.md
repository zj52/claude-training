# Foundations session, combined topic list

Working agenda list, merged from the current foundations deck (slides/foundations.html, 16 slides) and Zach's notes from the AICL course review on 2026-07-25. Source tags show where each topic currently lives. **both** = in the deck and in the notes. **foundations** = deck only. **notes** = notes only, not yet in the deck.

| # | Topic | Source |
|---|---|---|
| 1 | Title and framing (Cornell-style opener) | foundations |
| 2 | The goal. Create efficiency by automating tedious work with AI | foundations |
| 3 | What Claude 3P is | foundations |
| 4 | Data rules. Same rules as Sandbox AI | foundations |
| 5 | The Cornell AI ecosystem (landscape SVG with reveal) | foundations |
| 6 | Probabilistic, not deterministic. Answers built one token at a time | both |
| 7 | Read critically, spot-check what matters (verification habit) | both |
| 8 | Knowledge cutoff. It only knows its training data, up to a point in time | notes |
| 9 | Fabrication. When it lacks knowledge, prediction fills the gap with plausible text | notes |
| 10 | Specificity is where fabrication concentrates. Check names, numbers, dates, citations | notes |
| 11 | Working memory is a limitation to work with. Context is finite | notes |
| 12 | Buried details. Key info mid-conversation, or early in a long session, fades from attention | notes |
| 13 | Durability of instructions. Steerability degrades over long sessions (drift) | notes |
| 14 | Property collisions. NTP + knowledge gap = confident fabrication; working memory + long sessions = drift | notes |
| 15 | The four-property framework itself (capability to limitation spectrum, "further right, verify more") | notes |
| 16 | The 3-part prompt. Set Stage, Define Task, Specify Rules | foundations |
| 17 | Weak prompt example (vendor contract) | foundations |
| 18 | Strong prompt example, same task | foundations |
| 19 | The interface. What you see when you open Claude 3P | foundations |
| 20 | Pick a model. Sonnet first, move up when you need to | foundations |
| 21 | Examples. What it can already do (sponsored programs + compliance) | foundations |
| 22 | Today's exercises. Two real tasks | foundations |
| 23 | Homework. "You are the agent," lead-in to Module 2 | foundations |
| 24 | Resources | foundations |

## Notes on the merge

- Topics 8 through 15 are the new material from the AICL course review. They all belong to the same "How AI works" segment as topics 6 and 7, so the natural home is right after slide 6, before the 3-part prompt sequence starts.
- Topic 13 (steerability) is taught implicitly by the 3-part prompt sequence (16 through 18), but as a named limitation it appears only in the notes.
- Candidate slide treatments for 8 through 14 are mocked up in `course-content/AICL/` (quadrant build, four-verbs list, simplified framework table). Nothing in the deck has been changed yet.
- Source assets and license notes for the AICL material live in `course-content/AICL/ai-capabilities-limitations-framework.md`.
