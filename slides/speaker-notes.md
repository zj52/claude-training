# Foundations — Notes

Extra context for the slides in Module 1, written for anyone reading the deck, whether
you attended the session or found it afterwards. These fill in background that would not
fit on a slide.

Open them from the slide counter at the bottom right, or press **N**. A red dot on the
counter means the current slide has notes.

---

## Slide 5 - Cornell AI landscape

Claude Desktop is a relatively new tool at Cornell. It connects to the Cornell AI
Platform, the secured infrastructure the university maintains together with contracted
partners, so it sits inside that larger ecosystem rather than beside it.

A few things the diagram does not spell out:

- **Sandbox AI is being retired gradually.** It stays running until the tools meant to
  replace it are fully in place, so nothing disappears before there is somewhere else to
  go.
- **Cornell is moving to a tiered set of tools.** Microsoft Copilot is the base offering,
  and work is wrapping up with governance that will allow moderate-risk data in Copilot
  as well.
- **Claude Desktop is the advanced tier.** It does things that are harder to do in
  Copilot, which is why it exists alongside rather than instead of it.
- **More is expected.** Other products, such as OpenAI's, may become available, and
  different agreements with Anthropic could add functionality over time.

The particular version of Claude Desktop that Cornell uses is covered on the next slide.

---

## Slide 6 - Claude Desktop

The naming is worth clearing up once. This is Claude Desktop with third-party inference
turned on. Anthropic calls that configuration Claude 3P, and you will see that shorthand
in these materials. It is the same application either way.

**Chat and Cowork are different modes.** Chat answers questions. Cowork carries out tasks
against real files. That distinction is the thing most worth understanding early,
particularly for anyone arriving from a tool where everything is a conversation. A useful
way to picture Cowork is an assistant that can read your documents, draft responses, run
lookups, and save files back to your folder, with you reviewing the result.

Most research administration work is shaped like a task rather than a question. Drafting
a justification, reviewing a contract against standard positions, cleaning up a budget,
pulling citations from a regulation. Cowork is built for that shape of work.

**Questions that come up:**

- *Is the virtual machine really isolated?* Yes, architecturally. The agent cannot see
  files outside what has been granted to it.
- *What if a task needs a different folder partway through?* Claude asks and you approve.
  That approval lasts for the session rather than permanently.
- *Where do the files end up?* In the folder the task was pointed at, saved as ordinary
  documents you can open in Word or Excel.

---

## Slide 7 - Data rules

The sign on this slide is the short version of the rule. Research administration material
is fine, which covers awards, proposals, and intellectual property. What must not go in
is DoD work, CUI or export-controlled data, and anything covered by HIPAA. The bullets
carry the fuller picture, including government-restricted information.

The word "confidential" is deliberately absent from the sign. Cornell uses it as a data
classification tier, but it is easily misread as government classified, so the sign names
the categories directly instead.

On web search, it is new to this tool and runs through Gemini's enterprise grounding,
which means prompts are not logged.

The underlying rule is simple. If something can go into Sandbox AI, it can go into Claude
3P. Both point at the same gateway and the same contracted infrastructure.

---

## Slide 11 - What agents are

This slide explains why the deck spends no time on prompting technique.

Earlier generations of AI tools rewarded carefully engineered prompts. With an agentic
model plus skills and plugins, the procedure lives in the tooling rather than in the
wording of the request. You describe the task and the relevant skill supplies the method.
The contract review later in the session is a good illustration, since the whole prompt is
close to "please review the attached agreement."

Prompting is not irrelevant, and Module 2 returns to it briefly. The larger levers now are
choosing the right task to hand over and reviewing what comes back.

---

## Slide 13 - What comes with the RAIS setup

The installation is configured for third-party inference and comes with a few things
specific to research administration work.

The distinction worth holding onto is chat versus Cowork. Chat is for questions. Cowork is
for tasks against real files.

The eCFR connector and the Legal Plugin both appear in the workshop later in the session,
so this slide only names them.

---

## Slide 14 - The interface

Projects are the part most worth understanding. A project bundles instructions and
reference files, so a chat or task started inside one begins with the right context
already loaded, along with the Legal Plugin skills and the eCFR connector.

On models, the short version is that Sonnet handles everyday work and Opus is for
genuinely hard problems, at higher cost per task. The UI quick reference on this slide
covers the same ground with screenshots of all four windows.

---

## Slide 16 - Workshop

The examples run in order, and each one demonstrates a different kind of capability.

1. **Web search**, which the previous tool did not have.
2. **A connector**, eCFR, which pulls live regulation text from the official source.
3. **A plugin**, the Legal Plugin, which runs a contract review from end to end.

The third example links into the appendix, where the output of a real review is walked
through page by page. That appendix is specific to the Office of Sponsored Programs and is
not part of the main sequence, so reading straight through the deck ends at the closing
slide without entering it.

---

## Slide 20 - Appendix, what the plugin produced

Everything in this appendix came out of a single run of the plugin's contract-review
skill, measured against Cornell's own materials, the OSP playbook and the standard
research contract. It is a real award and real output rather than a constructed example.

The sponsor's name, the faculty leads, and the project topic have been removed from these
slides and from the page images. The unredacted files are in Box, behind Cornell login,
because they cannot be published openly.

---

## Slide 21 - Appendix, six files

One run produced six output files, plus the contract exactly as it arrived.

It may make sense to read them in the numbered order. The memo explains the edits, the
marked-up contract carries them, the letter takes them to the company, the internal memo
handles the Cornell approval side, and the spreadsheet tracks every issue.

---

## Slide 22 - Appendix, findings table

This table is the spine of the review memo. Every issue is listed against the company's
own section numbering, in their order, so the memo can be read side by side with the
contract. The pages after it explain each row in full.

---

## Slide 23 - Appendix, tracked changes

The page is shown as LibreOffice renders it, with insertions underlined and deletions
struck through. In Word it looks much the same, with the editor's name shown in the
margin.

---

## Slide 25 - Appendix, the nine asks

The eighth ask concerns warranties and liability. Cornell cannot promise that research
results will work, nor that they infringe no one's patents. The liability terms in the
company's draft were written for a supplier relationship rather than a university
research collaboration.

---

## Slide 31 - Appendix, sequence

Of the two questions that set the schedule, the start date is the one most likely to come
back quickly, since the researchers want to begin work.

---

## Slide 32 - Appendix, reviewing the output

If all three checks hold, the output is a reasonable starting point for the officer
handling the award. It is a first pass and not a substitute for professional judgment.
