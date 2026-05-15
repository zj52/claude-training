# Claude 3P: New User Q\&A

*Notes from first installs of Claude third-party inference (Claude 3P).*

---

## Is this as secure as sandbox AI?

**Yes.**

Same safety tier, same data rules. Good for Cornell data used in research administration (protocols, awards, proposals, IP). Exceptions: HIPAA data, which we shouldn't encounter, and regulated data such as export-controlled information.

Claude 3P is a different front end pointing at the **same infrastructure** as sandbox AI. Your prompts go through our LiteLLM gateway to the cloud models we already have data-protection contracts with (AWS, Azure, GCP). Nothing about Claude 3P routes your data outside that envelope.

### What about web search?

The `/gemini-search` skill uses Gemini's **enterprise** web grounding, not regular Google search. Concretely:

- Your query stays inside the contracted Vertex AI environment.  
- Gemini matches it against a curated web index Google maintains for regulated industries (finance, healthcare, public sector).  
- **Google does not log your prompt.** The standard Google Search grounding tool would log for 30 days; we explicitly use the enterprise tool instead, which contractually removes that logging.  
- The trade-off: the enterprise index is narrower and refreshes every few hours, so it occasionally misses things you'd find on public Google.

**Bottom line:** the data path for a Claude 3P chat, with or without search, is the same path your sandbox AI chats already take. Same gateway, same contracted infrastructure, same rules about what to put in.

---

## Is Claude 3P the same as the regular desktop app?

Yes. It's the same app, but with a different configuration enabled by our IT team. That configuration lets us route through our own secure infrastructure contracts already in place.

---

## Claude 3P is asking me if I want to use the Chrome extension. Is that part of Claude 3P?

No. Claude 3P only includes the desktop application, configured by our IT team. It does not include the web interface, the browser extension, or the mobile application.

---

## Can Claude read a file if I paste in a file path from my machine?

No, Claude can't read a file that way. Drag and drop the file into the chat instead.

---

## How long before chats are archived or deleted?

Chats are stored indefinitely, until you delete them. They're kept on your local machine.

---

## Which Claude model should I pick?

For most work, **Sonnet** is the default. It's fast, capable, and what the app uses unless you change it.

Reach for **Opus** on harder reasoning — long documents, multi-step analysis, anything where a wrong answer is expensive. It's slower and counts more against your usage window.

Reach for **Haiku** when you want a quick answer and don't need depth — short rewrites, classification, simple lookups.

You can switch in the model picker at the bottom of the chat. If you're not sure, start with Sonnet and only move up if the answer isn't good enough.

---

## Does Claude remember our previous chats?

No, not by default. Each new chat starts blank. Claude doesn't know what you said in yesterday's conversation, or even in the chat right next to this one.

Two things change that:

- **Projects** carry a shared instruction and a set of files that every chat inside the project can see.
- A single long chat keeps everything visible up to its context window — eventually the oldest messages get pushed out.

If you want Claude to remember something across chats, put it in a Project's instructions or in a file the Project can read.

---

## What's a Project, and when should I use one?

A Project is a folder of chats that share the same instructions and uploaded files.

Use one when:

- You're going to have many chats on the same topic (e.g., reviewing IRB protocols, drafting award narratives, working through a specific RFP).
- You have reference material — a style guide, a list of acronyms, a template — that every chat should know about.
- You want to set the tone or role once instead of re-explaining it each time.

Don't bother with a Project for one-off questions. A regular chat is fine.

---

## Can Claude be wrong?

Yes. Claude can sound confident and still be wrong, especially about specific facts, numbers, citations, names, and anything recent. Treat its output the way you'd treat a sharp but unverified intern: a useful first draft, not a final answer.

Two practical habits:

- For anything that matters, ask Claude to show its source or quote the passage it's relying on. If it can't, assume it might be making it up.
- Spot-check numbers and direct quotes against the original.

---

## Can I upload files? What kinds?

Yes. Drag and drop into the chat. Claude handles:

- Text-like files: `.md`, `.txt`, `.csv`, `.html`, code files
- PDFs and images (it can read the contents)
- Word docs (`.docx`), Excel (`.xlsx`), PowerPoint (`.pptx`)

There's a per-chat size limit, so very large PDFs or spreadsheets may need to be split. For files you'll reference repeatedly, attach them to a Project instead of re-uploading every chat.

---

## Why did I get a different answer when I asked the same question again?

Claude isn't deterministic — by design it picks among plausible next words probabilistically, so two runs of the same prompt can come back worded differently, and occasionally with different substance.

If you need consistency:

- Be more specific in the prompt (constraints, format, length).
- Give Claude a template to follow.
- For factual lookups, ask it to quote the source.

---

## Is there a usage limit?

Yes. There's a rolling cap on how much you can send to the bigger models in a given window. Most people never hit it during normal work. If you do, you'll see a message and can either wait out the window or switch to a lighter model (Sonnet → Haiku) to keep going.

---

## Can I share a chat with a colleague?

Not directly through Claude 3P. Chats are stored on your machine, not in a shared cloud. To share, copy the relevant content into an email, a doc, or a Teams message, or export the chat as text.

---

## How do I get better answers?

Three things help more than anything else:

- **Give context up front.** "I'm drafting a justification for an NSF supplement; here's the program description and the original proposal — write a 150-word case for the supplement" beats "write a justification."
- **Show, don't just tell.** Paste an example of the style or format you want. Claude matches an example more closely than any adjective ("formal," "concise") will get you.
- **Iterate.** First drafts rarely land. Tell Claude what's wrong with it — "too generic, make it specific to our award," "cut the marketing language" — and it'll fix that part without losing the rest.

For more, see the AI Fluency materials linked in the deck.
