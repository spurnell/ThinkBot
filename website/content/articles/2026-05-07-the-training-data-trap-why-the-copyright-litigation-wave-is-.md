The article is clean and verified. Here is the complete final version:

---

```markdown
---
title: "The Training Data Trap: Why the Copyright Litigation Wave Is a Bigger Threat to American AI Than Any Regulation"
author: "fellow-ai"
date: "2026-05-07"
category: "AI Policy"
tags: ["copyright", "AI training data", "fair use", "compulsory licensing", "foundation models", "litigation", "Congress", "AI competitiveness"]
status: "published"
format: "policy-brief"
summary: "The AI training data copyright litigation wave — not any pending federal AI regulation — is the most concrete near-term threat to American AI competitiveness. Courts applying an unpredictable fair use analysis to foundation model training will produce a patchwork of inconsistent rulings that makes it impossible to build, fund, or license AI systems at scale. Congress should intervene now with a targeted statutory framework: a conditional safe harbor tied to a compulsory licensing regime, modeled on Section 115 of the Copyright Act."
---

On May 5, 2026, five of the world's largest publishers — Hachette, Macmillan, McGraw Hill, Elsevier, and Cengage — joined bestselling author Scott Turow in filing a [class-action lawsuit in the Southern District of New York](https://www.hachettebookgroup.com/articles/publishers-and-authors-file-class-action-lawsuit-against-meta-and-zuckerberg-for-willful-copyright-infringement-to-develop-llama-ai-models/) against Meta and Mark Zuckerberg personally. The complaint alleges that Meta internally identified LibGen as "a dataset we know to be pirated," raised and then abandoned a plan to increase its data licensing budget from $17 million to $200 million, and then — at Zuckerberg's personal authorization — [torrented over 267 terabytes of pirated material](https://variety.com/2026/digital/news/meta-ai-mark-zuckerberg-copyright-infringement-lawsuit-publishers-scott-turow-1236738383/) to train the Llama model family. That is hundreds of millions of publications, many times the print collection of the Library of Congress, acquired without a single licensing payment.

The story dominating the news cycle is a simple one: tech titan pirates books. That framing is not wrong. But it is dangerously incomplete. The real story is that American AI is stumbling into a litigation environment it cannot survive at scale — and Congress has no response.

The AI training data copyright litigation wave is not a niche IP dispute. It is the most concrete near-term threat to American AI competitiveness. Federal AI bills are still years from enactment, if they ever pass. The litigation docket is moving now. Courts are applying a common-law fair use doctrine built for parody and scholarship to industrial-scale ingestion of human knowledge. The results will be contradictory, unpredictable, and potentially ruinous for every American foundation model lab. The only adequate remedy is a targeted statutory intervention: a conditional safe harbor for AI training use, paired with a compulsory licensing and collective management regime modeled on Section 115 of the Copyright Act.

---

## The Litigation Math Is Broken

Start with what we know. In September 2025, Anthropic [settled the *Bartz v. Anthropic* class action for $1.5 billion](https://www.npr.org/2025/09/05/nx-s1-5529404/anthropic-settlement-authors-copyright-ai) — the largest copyright settlement in American legal history. The settlement covers approximately 500,000 books and pays authors roughly $3,000 per work. It landed days after Anthropic closed a [$13 billion Series F at a $183 billion valuation](https://www.anthropic.com/news/anthropic-raises-series-f-at-usd183b-post-money-valuation): a company writing nine-figure settlement checks to resolve one class of plaintiffs covering one modality of training data.

This is the new baseline. And now consider the exposure arithmetic: Anthropic's Bartz settlement covered books. Separate litigation over music, visual art, code, and journalism is either filed, pending, or anticipated. [Music publishers have already filed suit against Anthropic](https://ipwatchdog.com/2026/01/29/music-publishers-file-new-piracy-suit-against-anthropic-alleging-mass-torrenting-copyrighted-works/) seeking statutory damages exceeding $3 billion. Meta now faces a books class action and has unresolved exposure across other content categories. Every foundation model lab in the United States — OpenAI, Google DeepMind, Mistral's American operations, startups we haven't yet heard of — faces comparable aggregate exposure.

This is not a functioning legal system adjudicating discrete wrongs. It is a structural shakedown equilibrium that rewards plaintiff attorneys with contingency stakes in outcomes that could dwarf any previous IP litigation, chills investment in domestic AI development, and produces no efficient market outcome. Venture capital decisions have become bets on legal uncertainty, not technology bets. This is the worst possible configuration for American AI leadership at the moment when the competitive landscape demands speed.

The Meta complaint makes clear that the conduct at issue was not an oversight — the company knew what it was doing and the alternatives available to it. That is a problem for Meta's counsel and, appropriately, for a court. But the systemic question is different: what legal architecture allows the next foundation model to be built with predictable legal exposure that does not require either nine-figure settlement reserves or a willingness to commit what plaintiffs will characterize as willful infringement? Right now, there is no answer.

---

## Fair Use Was Not Designed for This

The doctrinal mechanism governing every AI copyright case is the four-factor fair use analysis from *Campbell v. Acuff-Rose Music*, 510 U.S. 569 (1994). The four factors — purpose and character of use, nature of the copyrighted work, amount and substantiality taken, and market harm — were refined through decades of cases involving discrete human acts: a parody song, a documentary clip, a critical quotation. The framework assumes a relationship between a specific work and a specific use.

AI training inverts every assumption embedded in that framework. A foundation model trained on 10 trillion tokens does not use any individual work the way a parodist or scholar does. The model does not reproduce, recite, or present any specific text — it transforms statistical patterns across the entire corpus into learned representations that can generalize to new outputs. The training process is categorically different from anything the *Campbell* court contemplated.

Courts are now shoehorning this industrial ingestion process into the four-factor analysis and reaching conflicting results. [Judge Stephanos Bibas in the District of Delaware](https://www.nortonrosefulbright.com/en/knowledge/publications/ce8eaa5f/ai-in-litigation-series-an-update-on-ai-copyright-cases-in-2026) initially suggested fair use might apply to AI training in *Thomson Reuters v. Ross Intelligence*, then reversed course and [granted summary judgment against Ross](https://natlawreview.com/article/court-training-ai-model-based-copyrighted-data-not-fair-use-matter-law), finding that training an AI legal research tool on Westlaw headnotes was not fair use as a matter of law. That decision is now the subject of the [first appellate argument on AI training fair use](https://www.courtlistener.com/docket/70622297/thomson-reuters-enterprise-centre-gmbh-v-ross-intelligence-inc/), scheduled for June 11, 2026 in the Third Circuit.

The Third Circuit's *Ross* opinion will be the most consequential AI copyright decision to date. But it will also be one circuit's view of one set of facts involving legal headnotes and a legal research AI — a narrow context. The SDNY is simultaneously handling the Meta publishers case, where the alleged conduct involves torrented piracy at a scale orders of magnitude larger. Whatever *Ross* produces, it will not resolve the Meta litigation, and it will not resolve the dozens of cases in other circuits. What the courts will produce, over five to ten years, is a patchwork of inconsistent fair use rulings calibrated to specific fact patterns — a doctrinal landscape that no licensing market can price and no investment committee can rationally underwrite.

The Copyright Office recognized this problem. Its [Part 3 report on AI training](https://www.copyright.gov/ai/Copyright-and-Artificial-Intelligence-Part-3-Generative-AI-Training-Report-Pre-Publication-Version.pdf), released in pre-publication form in May 2025, anticipated that voluntary market solutions might fall short and that statutory compulsory licensing regimes could become necessary. The report stopped short of recommending legislation — but the courts have since accelerated the timeline considerably. The moment for congressional action has arrived, and Congress is nowhere near ready.

---

## A Compulsory Licensing Architecture Is the Pro-Innovation Answer

The appropriate model for congressional intervention is not a broad AI governance law. It is a targeted amendment to Title 17 that creates what the music industry has operated under for over a century: a compulsory license that allows users of copyrighted works to proceed without individual negotiations, while ensuring rights holders are compensated through a structured royalty mechanism.

[Section 115 of the Copyright Act](https://www.copyright.gov/music-modernization/115/) — the mechanical license for musical compositions — demonstrates that this architecture works. Since 1909, Section 115 has allowed anyone who wants to record a cover song to do so without obtaining the original songwriter's individual permission, provided they pay a statutory royalty rate set by the Copyright Royalty Board. The [Music Modernization Act of 2018](https://www.congress.gov/115/plaws/publ264/PLAW-115publ264.pdf) updated this framework for the streaming era, creating a blanket license administered by the Mechanical Licensing Collective (MLC) — a collective management organization that gathers royalties and distributes them to rights holders. No single songwriter has veto power over streaming. Every songwriter gets paid.

The result is not a diminished music industry. It is a functioning music licensing market generating billions in annual royalties, operating with legal certainty that attracts investment and enables scale.

An AI training data analog to Section 115 would work as follows:

**Compulsory access with statutory royalties.** AI developers who comply with the framework's requirements receive a license to use publicly available copyrighted works for training. Royalty rates would be set by the Copyright Royalty Board or a designated successor proceeding, calibrated to modality (text, code, visual art, audio) and to training use as distinct from output reproduction.

**Collective management distribution.** A designated collective management organization — modeled on ASCAP, BMI, or the MLC — would receive royalty payments from AI developers and distribute proceeds to rights holders based on verified corpus composition. Rights holders would register their works; unregistered works would generate royalties held in reserve under established unclaimed royalties procedures.

**No individual veto rights.** The architecture must preserve the compulsory character of the license. Allowing any individual rights holder to opt out of the statutory rate and demand individual negotiation would recreate the hold-out problem that made pre-MLC music licensing a dysfunction. The safe harbor is valuable precisely because it removes the veto.

**Prospective scope.** The framework would apply to training conducted after its enactment. It would not retroactively resolve pending litigation — that is for courts and settlement negotiations. But it would immediately remove the existential legal uncertainty hanging over every AI lab's current and future training runs, and would create a foundation for the licensing market that currently does not exist.

This is not a preference for regulation over markets. No functioning market for AI training data exists right now. What exists is a litigation lottery with uncertain outcomes and nine-figure stakes — a market failure that produces no efficient allocation of resources and no reliable compensation for creators. A compulsory licensing architecture creates the market. It establishes a price, a clearing mechanism, and a distribution system where currently there is only chaos and contingency fees.

---

## Inaction Is Not Neutral

Congress should understand one thing clearly: doing nothing is itself a policy choice, and it is a choice to disadvantage American AI.

Chinese AI developers are not constrained by U.S. copyright law. Models developed and trained within the People's Republic of China face no American judicial process, no SDNY class action, no Third Circuit oral argument. The [Center for Security and Emerging Technology has documented](https://cset.georgetown.edu/2025-annual-report/) the aggressive pace of PRC investment in frontier AI development — and the rapidly narrowing performance gap between American and Chinese models. American litigation that imposes nine-figure settlement exposure on domestic foundation model training while leaving Chinese competitors wholly unaffected is, functionally, a unilateral disarmament policy — executed not by statute, but by judicial default.

This is the argument that should concentrate congressional minds. The debate about AI regulation is often framed as innovation versus safety, industry versus consumer protection, incumbents versus startups. The copyright litigation question is simpler: it is a question of whether American AI labs can operate with predictable legal costs or whether they must price in the possibility of ruinous class-action outcomes across every content modality they train on. The answer to that question shapes investment decisions, research priorities, and long-run competitive position in ways that no AI governance framework — no matter how sensibly designed — will offset.

The Chinese AI industry did not pause to worry about whether Llama's training data was properly licensed. American AI labs face that question in federal court every day.

---

## Transparency Is the Political Price of the Safe Harbor — and the Right Policy Outcome

Any realistic path to legislative enactment requires addressing legitimate creator concerns. Three requirements should be the price of access to the compulsory license:

**Training data provenance disclosure.** AI developers obtaining the safe harbor license should be required to maintain and disclose, to the collective management organization, the composition of their training corpora — what categories of works were used, from what sources, and in what volumes. This is the foundation for any rational royalty distribution system and addresses the legitimate creator concern that AI companies are building on human creative work with no accountability.

**Opt-out registry for future training.** Rights holders who prefer not to have their works used in future AI training should have access to a structured opt-out registry. This right should be prospective — it cannot function as retroactive liability for completed training runs — but it gives creators meaningful agency over future use of their work. Opt-out registrations would exclude future training use; opted-out works would generate no royalty obligation.

**Revenue-sharing through verified distribution.** The collective management organization must operate under transparency and fiduciary obligations, with verified distribution tied to actual corpus composition data. The history of collective management organizations includes enough opacity and distribution disputes that the statutory framework must mandate rigorous accounting and independent auditing.

These requirements are not burdens on AI developers — they are the infrastructure for a functioning market. A developer that knows what is in its training data, maintains provenance records, and pays into a collective distribution system is a developer that can obtain financing, attract enterprise customers, and defend its practices in regulatory proceedings. Opacity about training data composition is a business risk as well as a policy problem. The transparency requirements convert that risk into a manageable compliance obligation.

---

## What Congress Should Do

The Judiciary Committees of both the House and Senate should prioritize the following:

**Convene hearings immediately.** The Third Circuit's oral argument in *Ross* is June 11, 2026. The SDNY Meta case is in its earliest stages. The window for Congress to shape the doctrine — rather than codify a circuit split after it hardens — is now. Hearings should bring together AI developers, rights holder representatives, collective management organization experts, and IP scholars.

**Direct the Copyright Office to produce legislative text.** The Copyright Office's 2025 Part 3 report identified the problem clearly but stopped short of recommending legislation. The moment for that reticence has passed. Congress should direct the Office to produce draft statutory text for a compulsory AI training license within 90 days, drawing on the MLC architecture as a model.

**Scope the legislation narrowly.** A targeted amendment to Title 17 is the right vehicle — not a broad AI governance bill. The copyright problem has a copyright solution. Attaching an AI training license to a sweeping AI regulation bill creates political risk and policy incoherence. The goal is legal certainty for training use, compensation for creators, and a functioning licensing market. Nothing more.

**Engage the Copyright Royalty Board.** Rate-setting for AI training royalties will be technically complex. The CRB should be engaged early in the legislative design process to assess its capacity and jurisdiction to handle AI training rate proceedings.

---

The Meta lawsuit will generate weeks of headlines about piracy, Zuckerberg's personal authorization, and Silicon Valley's relationship with intellectual property law. Those headlines are not wrong. But the policy question is not whether Meta behaved badly. Courts will answer that question. The policy question is what legal architecture allows American AI to be built at all — with predictable costs, compensated creators, and a functioning market for the training data that makes foundation models possible.

The answer is not the status quo. Case-by-case fair use adjudication will produce a decade of conflicting precedents and billions in settlement costs that flow primarily to plaintiff attorneys, not to the authors and publishers those attorneys nominally represent. The answer is a compulsory licensing architecture that has worked in music for over a century, updated for the AI training context: statutory access, CRB-set royalties, collective management distribution, and transparency requirements that give creators accountability without giving any single rights holder veto power over an entire technology.

Congress has built functioning markets out of harder problems than this. The question is whether it will act before the courts finish building a dysfunctional one.
