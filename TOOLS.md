---
title: "AI Tools at Cornell — Inventory"
last_reviewed: 2026-05-14
maintained_by: ai-support@cornell.edu
authoritative_source: https://innovationhub.ai.cornell.edu/tools-resources/
---

# AI Tools at Cornell — Inventory

A living inventory of AI tools approved, in pilot, or under review for Cornell staff. Maintained by the AI Innovation Hub team. The **Claude Training** site pulls from this file. Grouped by vendor.

---

## Tools

| Vendor | Tool | Status | Audience | Data approved | Best for | Hub |
|---|---|---|---|---|---|---|
| **Adobe** | Adobe Firefly | Live · General | All staff | Low risk (public) | Image generation and simple edits. | [Hub](https://innovationhub.ai.cornell.edu/tool/adobe-firefly/) |
| **Anthropic** | Claude 3P (Cowork) | Live · Specialized | Approved units (currently research admin) | Up to moderate risk | Confidential research admin work, desktop file workflows, multi-step tasks. Also fine for non-confidential. | [Hub](https://innovationhub.ai.cornell.edu/tool/claude/) |
| **Anthropic** | Claude Enterprise / Edu | Under review | Faculty / staff / students (planned) | Up to moderate risk (planned) | Full Anthropic SaaS — general chat, Projects, Artifacts, mobile. Cowork habits carry over. | [Hub](https://innovationhub.ai.cornell.edu/tool/claude/) |
| **Cornell** | Cornell AI Platform (n8n + LiteLLM) | Live · Pilot | Builders / developers | Up to moderate risk | Custom workflows and automation. n8n orchestrates; LiteLLM proxies model calls (AWS Bedrock, Vertex AI, Foundry). Powers Claude 3P. | [Hub](https://innovationhub.ai.cornell.edu/tool/cornell-ai-platform/) |
| **Microsoft** | Microsoft 365 Copilot Chat | Live · General | All staff | Low risk (public) | Day-to-day web chat. Sign in with your Cornell account. | [Hub](https://innovationhub.ai.cornell.edu/tool/microsoft-365-copilot-chat/) |
| **Microsoft** | Copilot Chat → moderate-risk approval | In flight | All staff | Low → Moderate (in flight) | Extends Copilot Chat's data ceiling. Approval in progress. | — |
| **OpenAI** | ChatGPT Edu | Under review | Faculty / staff / students (planned) | Up to moderate risk (planned) | Full OpenAI chat experience when live. | [Hub](https://innovationhub.ai.cornell.edu/tool/openai-chatgpt-edu/) |
| **Zoom** | Zoom AI Companion | Live · General | All staff | Per Zoom approvals | Meeting summaries and transcripts. Built into Zoom. | [Hub](https://innovationhub.ai.cornell.edu/tool/zoom-ai-companion/) |

### Cost & licensing

- **Free to staff at point of use today:** Microsoft 365 Copilot Chat (base Microsoft offering, included with Cornell M365), Adobe Firefly (Cornell Adobe license), Zoom AI Companion (Cornell Zoom license), Claude 3P (runs on Cornell&rsquo;s pay-per-use cloud contracts &mdash; AWS Bedrock, Vertex AI, Foundry), Cornell AI Platform (Cornell-built and maintained).
- **Paid Cornell-wide subscription, under review:** OpenAI ChatGPT Edu and Claude Enterprise / Edu. These are the &ldquo;upgrade&rdquo; tier &mdash; they unlock the full vendor experience above the Microsoft baseline.

---

## Quick rule (for users)

| If your work involves... | Use |
|---|---|
| Confidential / moderate-risk data | **Claude 3P** (only approved tool today for moderate risk) |
| Day-to-day general chat (public data) | **Microsoft 365 Copilot Chat** |
| Meetings | **Zoom AI Companion** |
| Images | **Adobe Firefly** |
| Custom workflows or automation | **Cornell AI Platform** (pilot) |
| HIPAA, export-controlled, FERPA, or other high-risk data | **Not allowed in any of these tools** |

Claude 3P also handles non-confidential work. When in doubt, the [AI Innovation Hub](https://innovationhub.ai.cornell.edu/tools-resources/) is the source of truth.

---

## Tools we don't have (yet) or won't

| Tool | Status at Cornell |
|---|---|
| ChatGPT consumer / ChatGPT Plus | Not approved. Use ChatGPT Edu when live. |
| Claude.ai consumer / Claude Pro | Not approved. Use Claude 3P, or wait for Claude Enterprise/Edu. |
| Gemini consumer | Not approved. |
| Microsoft 365 Copilot (in-app) | Cornell does not license the paid in-Word/Excel/Outlook integration. Only the free Copilot Chat web version is available. |
| Free public AI tools | Do **not** enter moderate-risk or higher Cornell data into any free or paid public tool not on the Hub. |

---

## How to update this file

- One row per tool, grouped by vendor (vendors sort A&rarr;Z; keep related rows together).
- **Status values:** `Live · General` &middot; `Live · Specialized` &middot; `Live · Pilot` &middot; `Under review` &middot; `In flight`.
- **Data approved values** use [Cornell IT&rsquo;s data risk levels](https://it.cornell.edu/security-and-policy/data-types-high-risk-moderate-risk-low-risk):
  - **Low risk (public)** &mdash; public-facing or directory information
  - **Moderate risk** &mdash; confidential Cornell data (protocols, awards, proposals, IP, internal financials)
  - **High risk** &mdash; HIPAA, PCI, FERPA, export-controlled, government-restricted
- A tool&rsquo;s `Data approved` should be the highest risk level allowed *today*. &ldquo;Up to moderate risk&rdquo; = low and moderate both fine; high is not.
- Update `last_reviewed` in the front-matter at the top whenever you edit.

---

## Maintainers

- AI Innovation Hub team
- Issues / additions: `ai-support@cornell.edu`
- This file lives in the [`zj52/claude-training`](https://github.com/zj52/claude-training) repo. Pull requests welcome, or send edits to the email above.
