# Module 1 Reflections — Foundations Workshop

Draft form content, ready to copy into Microsoft Forms (or Google Forms / Qualtrics — whichever Cornell ends up using). Based on the four self-reflection questions in Anthropic's *AI Fluency for Non-Profits* (the homework course), adapted to Cornell research-administration context.

---

## Form title

**Module 1 Reflections — Foundations Workshop**

## Form description (shown at the top of the form)

> Welcome — this is the Module 1 homework. It's the same set of self-reflection questions from the *AI Fluency for Non-Profits* course you just took, adapted for Cornell.
>
> Your answers will frame everything we discuss in Module 2. We display only your first name + department, or "Anonymous" if you prefer. Nothing is shared outside Cornell.
>
> Estimated time: 10–15 minutes. There are no wrong answers.

---

## Questions

### 1. Name *(required, not displayed publicly)*

- Field type: short text
- Help text: *"For our records only. We never display your full name on the site."*

### 2. Department *(required)*

- Field type: short text (or dropdown if you have a Cornell department list handy)
- Help text: *"Your home unit at Cornell — e.g., Office of Sponsored Programs, Research Integrity Assurance, Office of the Vice Provost for Research."*

### 3. How would you like to be displayed if we share quotes on the training site? *(required)*

- Field type: multiple choice (single answer)
- Options:
  - First name + department
  - Anonymous + department
  - Fully anonymous

### 4. What is the mission and vision of your team at Cornell? *(required)*

- Field type: long text
- Help text: *"What does your team or office actually do, and what's the larger purpose it serves? A few sentences is fine — this is context, not a strategic plan."*

### 5. Describe your workplace situation and your specific role. *(required)*

- Field type: long text
- Help text: *"Constraints, strengths, opportunities. What's your day-to-day like? Where does your time go? What gets in the way? What's underused?"*

### 6. What are the core values and philosophy that shape your work? *(required)*

- Field type: long text
- Help text: *"The principles you bring to your job — things you wouldn't compromise on, or care about beyond what's on the job description."*

### 7. *"If AI could help me ___, I would be able to spend more time ___."* *(required)*

- Field type: long text
- Help text: *"This is the most important question. Focus on how AI efficiency could free you up for higher-impact, human-centered work — the parts that need your judgment, your relationships, your expertise. Not just &quot;answer email faster&quot; but what that lets you actually do more of."*

### 8. *(Optional)* Anything else?

- Field type: long text
- Help text: *"Questions, observations, things on your mind after the workshop, things you want us to address in Module 2."*

---

## Notes for whoever builds the form

- **Platform:** Microsoft Forms (Cornell SSO, you own the data, free) — per SITE-PLAN.
- **Submissions per email:** allow multiple, since people may want to revisit and refine.
- **Anonymity display rule on the site:** render `firstName + ", " + department` or `"Anonymous · " + department` based on Q3. Never render last name anywhere.
- **Embed vs. link out:** both work. SITE-PLAN suggests embedding via iframe on `module-foundations.html`, with a fallback "Form not loading? [Open in a new tab →]".
- **Where the form URL goes once it exists:** four placeholders need to be filled in:
  1. `slides/foundations.html` — Slide 11 reflections card (currently `href="#"`)
  2. `slides/foundations.html` — Resources list entry "Module 1 reflection form" (currently `href="#"`)
  3. `module-foundations.html` — "Open the form →" button under homework (currently `href="#"`)
  4. Optionally, iframe embed on `module-foundations.html` if you go that route

---

## How this maps to the AI Fluency course

The Anthropic course's Part I self-reflection has four questions. This Cornell version preserves all four and adds three administrative fields (name, department, display preference) plus one optional catch-all.

| AI Fluency Part I question | Cornell form question |
|---|---|
| 1. Mission and vision of your organization | Q4 — adapted to "team at Cornell" |
| 2. Your workplace situation and role | Q5 — kept verbatim |
| 3. Core values and philosophy | Q6 — kept verbatim |
| 4. "If AI could help me ___" | Q7 — kept verbatim |

Part II of the course (the AI conversation) is *not* part of the form — that's expected to happen in Claude 3P itself, between the user and Claude. The form captures the human reflection that feeds into the AI conversation.

---

*Last updated: 2026-05-16. Source: Anthropic AI Fluency for Non-Profits course, Welcome lesson exercise.*
