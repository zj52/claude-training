# Lesson 5 — Understanding privacy and data

- **Course:** AI Fluency for nonprofits ([Skilljar](https://anthropic.skilljar.com/ai-fluency-for-nonprofits))
- **Lesson URL:** <https://anthropic.skilljar.com/ai-fluency-for-nonprofits/376883>
- **Estimated time:** 30 minutes (incl. 10-min video)
- **Position:** First lesson in the Delegation–Diligence loop section.
- **Saved:** 2026-05-16 (clean extraction via Gemini)
- **License:** CC BY-NC-SA 4.0 — Copyright 2025 Anthropic and Giving Tuesday. Based on the AI Fluency Framework developed by Prof. Rick Dakan (Ringling College of Art and Design) and Prof. Joseph Feller (University College Cork).

---

## What you'll learn

By the end of this lesson you'll be able to:

- Articulate privacy concerns and evaluate AI tools based on their data handling policies.
- Practice data hygiene strategies for safely working with sensitive information.

## Understanding privacy and data (video, 10 min)

The video addresses one of the most common concerns nonprofit professionals have about AI: data privacy. It covers what actually happens to data you share with AI tools, how to evaluate different platforms and plans for their privacy protections, and how to prepare sensitive data for safe AI use.

## Key takeaways

- **AI introduces new privacy considerations — particularly around training.** Some AI uses your inputs to train future models, which means patterns from your data could influence future outputs.
- **Different tools have different rules.** The free AI you use to brainstorm event themes is not the same as a paid account with strict data retention policies. Match your tool to your task — tools with more protection allow for safer sharing of sensitive data.
- **Safe AI use isn't about avoiding it — it's about using it responsibly.** Apply Problem Awareness and Platform Awareness before starting a new project. Often you can get full benefit from AI without sharing sensitive information by breaking tasks into component parts.
- **You can often remove identifying information entirely.** For pattern analysis, you likely don't need names, contact details, or other PII (Personally Identifiable Information). Work backwards from your actual goal to determine what data is truly necessary.
- **If something goes wrong, you have options.** Delete the conversation, request data deletion through the platform's privacy process, and follow your organization's protocols.

### A note on Claude's privacy settings

> For Claude specifically, find detailed data policy information at [privacy.anthropic.com](https://privacy.anthropic.com/) and [trust.anthropic.com](https://trust.anthropic.com/). You can adjust your privacy settings directly in the Claude app, including opting out of having your conversations used for training. Other AI providers should have similar resources — if they don't, that may be a red flag.

## Exercise 1 — Evaluating data sensitivity

Develop judgment about what data is safe to share with AI tools.

### Part I: Review sample data

Choose one of the following scenarios that's most relevant to your work:

- A spreadsheet of donor giving history with names, amounts, and contact information.
- Survey responses from program participants including demographic details.
- A grant report draft containing beneficiary stories and outcome data.

### Part II: Annotate for sensitivity

For your chosen scenario, identify:

1. Which fields or sections contain personally identifiable information (PII)?
2. Which information is essential for the analysis you want to do?
3. Which information could be removed or anonymized without losing analytical value?
4. What's the worst-case scenario if this data were exposed?

### Part III: Plan your approach

- What would you remove or modify before sharing with AI?
- What tool/plan tier would be appropriate for this level of sensitivity?
- What verification steps would you take after receiving AI's analysis?

## Exercise 2 — Practicing data hygiene

Walk through actually preparing sensitive data for safe AI use.

### Part I: Choose your document

Select a real document from your work that contains some sensitive information (or create a realistic sample). This could be:

- A program report with client details
- A donor communication draft referencing specific giving amounts
- Meeting notes that mention staff or volunteer names

### Part II: Sanitize the document

Work through the document and:

- Replace names with generic identifiers (Person A, Donor 1, etc.)
- Remove or generalize location details if not essential
- Strip contact information entirely
- Consider whether specific dollar amounts need to be exact or could be ranges

### Part III: Test with AI

Share your sanitized document with AI and ask a question relevant to your work. Reflect:

- Did removing identifying information limit AI's ability to help you?
- What additional context did you need to provide to compensate?
- Are you comfortable with the level of information you shared?

## Lesson reflection

- How does thinking about AI privacy compare to how you already think about other software tools (email, cloud storage, CRMs)?
- What's one change you'll make to how you approach sharing data with AI based on this lesson?

## What's next

The next lesson puts these privacy practices into action through data analysis with AI — spotting patterns, generating insights, and strengthening programs while keeping sensitive information protected.

---

## Cornell adaptation notes

**This lesson is the most directly relevant to Cornell's positioning of Claude 3P, and the one where Cornell's setup deviates *most* from generic consumer-AI advice.** Worth careful framing in Module 2.

### The generic privacy advice → Cornell-specific simplification

The lesson teaches good general AI privacy hygiene. Most of those concerns are *pre-solved* by Cornell's Claude 3P configuration:

| Generic AI privacy concern | Cornell Claude 3P answer |
|---|---|
| "Is your data used to train future models?" | **No.** Cornell's enterprise agreement with Anthropic includes zero data retention for training. |
| "What's the platform's retention policy?" | Conversations are not used for training; Cornell-controlled retention applies. |
| "Should I use a free vs. paid tier?" | The tier is already chosen for you — Cornell Claude 3P is the configured tool. |
| "Match the tool to the task." | Slide 4 of Foundations covers exactly this — Claude 3P for confidential admin, Sandbox AI legacy where required. |
| "Adjust your privacy settings." | Cornell admin pre-configures these — learners don't need to manage them per-conversation. |

The lesson's core insight — *different tools have different rules* — IS the lesson Cornell wants taught. Our slide 4 already teaches the Cornell-specific version. Module 2 can reinforce: *"AI Fluency teaches you to evaluate every tool. At Cornell, the IT and AI Innovation Hub teams have done that evaluation for the tools you've been given. Your job is to use the right tool for the right data — not to re-evaluate each one yourself."*

### The PII-anonymization techniques still apply for highest-sensitivity data

Claude 3P solves the training/retention concern, but **doesn't override Cornell's data classification policy**. Some data still requires extra handling regardless of the tool:

- **Restricted data** (FERPA-protected student records, HIPAA-covered health info, export-controlled research data, social security numbers): the lesson's anonymization techniques still apply. Even Claude 3P is not approved for these without additional review.
- **Confidential admin data** (proposal drafts, sponsor negotiation notes, internal staffing decisions): Claude 3P is appropriate. The lesson's hygiene framing — "work backwards from your goal, share only what's necessary" — is still good practice as a *judgment habit*, even when the tool is approved.
- **Public/published data** (CFR text, public NIH/NSF announcements, Cornell's public-facing comms): no special handling.

### Exercise mapping for Cornell

- **Exercise 1 (data sensitivity)** maps directly to Cornell's data classification policy. A research admin parallel: a spreadsheet of PI emails + award amounts + sponsor names. What's PII? What's necessary? What's the worst case?
- **Exercise 2 (data hygiene)** maps to: sanitizing a draft proposal narrative or compliance memo before sharing externally — the same anonymization muscle research admins already use when redacting documents for FOIA requests, audits, etc.

### Module 2 takeaway

The mental model from this lesson — *Problem Awareness + Platform Awareness before you start* — is the **Delegation** competency at work, applied to data. That's the conceptual through-line:

1. *What am I trying to do?* (Problem Awareness)
2. *Is the tool I'm reaching for approved for this data type?* (Platform Awareness)
3. *Only then start.* (Task Delegation)

Cornell's tooling answers question 2 for most cases. The learner's job is still to ask all three questions every time.

---

*Saved: 2026-05-16.*
