# Cornell IT — Regulated Data Chart

- **Source:** <https://it.cornell.edu/regulated-data-chart>
- **Saved:** 2026-05-16
- **Use:** reference for Module 1/2 data-classification slides; informs slide 5 (data rules) wording

> **Important context:** The chart applies to Cornell's **enterprise** versions of services. It does **not** apply to consumer/personal-account versions of the same tools. It also does not apply to faculty research data *unless that research falls under a regulation or contract*.

---

## The two questions the chart wants you to ask

Before using a Cornell service to send, store, or share institutional information:

1. **Does the Regulated Data Chart permit this IT service with the data type I'm working with?**
2. **Do my department/unit policies and my data steward permit it for the way I'm using the data?**

If both = yes, proceed. The chart is necessary but not sufficient — the data steward has final say. See [University Policy 4.12 (Data Stewardship and Custodianship)](https://policy.cornell.edu/policy-library/data-stewardship-and-custodianship).

## Three permission levels

- **Permitted** — no technical/policy/contractual issue; use if your data steward agrees.
- **Restricted** — use only with approval (see the chart's footnotes for the specific approval process per data type).
- **Prohibited** — do not use.

---

## Six regulated data categories

| Category | What it covers | Examples | Approval contact when restricted |
|---|---|---|---|
| **FERPA** (Education Records) | Files containing info about an identifiable student | Class lists, grade rosters, advising records, grades, financial aid apps | Registrar / data steward |
| **HIPAA** (Health Records) | Individually identifiable health info held by a covered entity | Health records, patient treatment, billing | Cornell Health / WCM / Benefit Services / University Counsel |
| **Personal Identifiers** (High-Risk) | SSN, credit/debit card #, driver's license #, bank account #, passport/visa #, PHI, GLBA personal financial — when paired with name | SSN + name on a form | Data steward; never paste in any AI tool |
| **GLBA** (Bursar / Financial) | Cornell Bursar records (also covered by FERPA) | Tuition payment info, financial aid disbursement | Bursar |
| **Human Subjects** (Sensitive Identifiable Research) | Info that reveals or can be associated with identities of research subjects | Names, fingerprints, full-face photos, recorded conversations, survey responses | [Institutional Review Board](http://www.irb.cornell.edu/) |
| **Restricted Research Data** | Contractually restricted research data sets | Census microdata; ITAR-covered tech specs | University Counsel / Office of Sponsored Research / [Cornell Data Services](https://data.research.cornell.edu/) |

Also referenced (separate from the 6-category chart):

- **Export Controlled Data** (ITAR / EAR) — see [Policy 4.22](https://policy.cornell.edu/policy-library/export-and-import-control-compliance). Sharing with foreign nationals or storing on foreign-accessible servers may constitute an export.
- **Credit Card Payment Processing** — PCI-regulated; separate trade-association process.

## AI tools currently in the chart

| Tool | All data types | Notes |
|---|---|---|
| **Zoom AI Companion** | **Prohibited** for all 6 categories | Low-risk (public) data only |
| **Microsoft 365 Copilot Chat** | **Prohibited** for all 6 categories | Low-risk (public) data only; uses ChatGPT/DALL-E/Bing under the hood |

**Claude / Claude 3P is *not yet listed* in the Cornell Regulated Data Chart.** *(Confirm with IT before Module 1 whether Claude 3P has an official entry pending, an internal-only sign-off, or is awaiting formal evaluation. This affects how strongly we can position Claude 3P as the approved tool for confidential admin data.)*

## Selected non-AI tool entries useful for research admins

| Tool | FERPA | HIPAA | High-Risk IDs | GLBA | Human Subj. | Restricted Research |
|---|---|---|---|---|---|---|
| Box (official apps) | Permitted | Prohibited | Permitted | Permitted | Restricted | Restricted |
| Microsoft 365 (Word/Excel/PPT online) | Permitted | Prohibited | Prohibited | Prohibited | Restricted | Restricted |
| Microsoft 365 Teams | Permitted | Prohibited | Prohibited | Prohibited | Restricted | Restricted |
| OneDrive for Business | Permitted | Prohibited | Prohibited | Prohibited | Restricted | Restricted |
| SharePoint | Permitted | Prohibited | Prohibited | Prohibited | Restricted | Restricted |
| Cornell Secure File Transfer | Permitted | Permitted | Permitted | Permitted | Restricted | Restricted |
| Google Workspace Docs (faculty/staff) | Permitted | Prohibited | Prohibited | Prohibited | Prohibited | Restricted |
| Outlook Email | **Prohibited** | Prohibited | Prohibited | Prohibited | Restricted | Restricted |
| Qualtrics | **Prohibited** | Prohibited | Prohibited | Prohibited | Permitted | Restricted |
| Salesforce | Permitted | Restricted | Restricted | Restricted | Restricted | Restricted |
| Workday | Permitted | Prohibited | Permitted | Prohibited | Prohibited | Prohibited |

*Note:* Outlook email being prohibited for FERPA records surprises many people; SFT (Secure File Transfer) is the green-across-the-board option when the question is "where do I put this regulated thing?"

---

## Why this is "very detailed and hard to follow"

- **6 × 50+ = 300+ cells**, plus exception footnotes per row (HIPAA carve-outs for Weill / Cornell Health, Box restrictions on third-party apps, etc.).
- The categories themselves require understanding of acronyms (FERPA, HIPAA, GLBA, ITAR, EAR) most research admins haven't read in full.
- "Restricted" doesn't mean one thing — each category has a different approval path.
- The chart silently leaves out faculty research data that *isn't* under a regulation or contract — but that's a huge volume of what research admins actually handle.

## Simplification draft for Cornell Claude Training *(to refine later)*

A three-level mental model for the workshop audience — much simpler than the official chart, but lossy. Always send people to the official chart and their data steward for real decisions.

**Green — public data.** Published RFPs, public NIH/NSF announcements, the CFR, Cornell's public web content. Fine for any approved AI tool.

**Yellow — internal / confidential admin data.** Internal proposal drafts, sponsor negotiation notes, internal staffing decisions, budget drafts, internal policy interpretations. *Use Claude 3P (assuming IT confirms it is approved for this tier).*

**Red — regulated.** If the data touches any of the six categories below, **stop and check.** Don't paste it into any AI until you've consulted:

- **Student data (FERPA)** → Registrar / data steward
- **Health records (HIPAA)** → Cornell Health / WCM Privacy / Benefit Services
- **SSN, credit cards, passport #s, etc. (High-Risk Identifiers)** → never paste into any AI
- **Bursar / financial records (GLBA)** → Bursar
- **Identifiable human-subjects research** → IRB
- **Contractually restricted research data** → OSP / University Counsel / Cornell Data Services
- **Export-controlled (ITAR/EAR)** → Export Control office

The simplification's whole job is to get learners to the right human (data steward) for the few cases that matter, and clear them to act for the many cases that don't. Module 2 can teach this mental model + show the official chart as the authoritative reference.

---

## Open questions before we use this in training

1. **Where does Claude 3P fit on the official chart?** Confirm with IT@Cornell or AI Innovation Hub. If pending, that's worth saying out loud in Module 1 — "Cornell IT is evaluating Claude 3P for inclusion; until then, use it for confidential admin data per AI Innovation Hub guidance, not for regulated categories."
2. **Cornell's data steward list** — for the workshop, do we want to print a one-pager of "who to call" for each regulated category? Useful homework artifact.
3. **Faculty research data** — Module 2 should explicitly say the regulated-data chart *doesn't* apply to un-regulated faculty research, but does apply to anything covered by a sponsor compliance clause. That distinction is non-obvious.

---

*Last updated: 2026-05-16.*
