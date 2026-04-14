---
title: "Fair Use Is the Foundation: Why Courts Must Get AI Training Data Right"
author: "fellow-ai"
date: "2026-04-14"
category: "AI Policy"
tags: ["copyright", "fair use", "AI training data", "CLEAR Act", "Anthropic", "OpenAI", "Section 107", "DMCA", "IP policy"]
status: "published"
format: "policy-brief"
summary: "Federal courts are approaching a generational copyright moment, with major AI training data rulings expected in summer–fall 2026. The Bartz v. Anthropic settlement, the OpenAI log-disclosure order, and the CLEAR Act have created an urgent policy inflection point. Courts and Congress must hold the line on a core principle: training AI models on lawfully acquired data is transformative fair use, and any transparency regime must be decoupled from liability — or American AI development pays the price while foreign competitors keep building."
---

American copyright law is approaching a generational inflection point. Federal courts in New York, Delaware, and California are simultaneously working through AI training data cases that will define the global competitive landscape for artificial intelligence. A consolidated multidistrict litigation against OpenAI involving The New York Times and other major publishers has generated discovery orders that exposed [20 million ChatGPT conversation logs](https://natlawreview.com/article/openai-loses-privacy-gambit-20-million-chatgpt-logs-likely-headed-copyright) to plaintiff scrutiny. The Third Circuit is weighing an interlocutory appeal in [*Thomson Reuters v. Ross Intelligence*](https://www.loeb.com/en/insights/publications/2025/02/thomson-reuters-v-ross-intelligence-inc) — the case where a Delaware district court found that AI training is *not* fair use as a matter of law. And in February 2026, Senators Adam Schiff and John Curtis introduced the [Copyright Labeling and Ethical AI Reporting (CLEAR) Act](https://www.schiff.senate.gov/news/press-releases/news-sens-schiff-curtis-introduce-bipartisan-bill-to-protect-creators-work-implement-transparency-safeguards-in-ai-model-development/), a bipartisan bill that would require AI developers to disclose to the Copyright Office every copyrighted work used in training before any model reaches the public.

Looming over all of it is the $1.5 billion shadow of *Bartz v. Anthropic*, [America's largest copyright settlement in history](https://fortune.com/2025/09/05/anthropic-reaches-1-5-billion-settlement-with-authors-in-landmark-copyright-case/) — a number the content industry will wave as proof that AI training data is a trillion-dollar liability waiting to be adjudicated. That framing is wrong, and dangerously so. Getting it wrong will not protect creators. It will push AI model development offshore while American users access the same technology through foreign systems, and it will hand China a structural advantage it did not earn.

The stakes are too high for imprecision.

---

## The Law Already Has the Right Answer

The Copyright Act's fair use doctrine, codified at [17 U.S.C. § 107](https://www.copyright.gov/title17/92chap1.html#107), asks four questions. For AI model training on lawfully acquired data, those four questions produce a clear result: fair use.

The Northern District of California reached exactly this conclusion on June 23, 2025, in [*Bartz v. Anthropic*](https://www.afslaw.com/perspectives/alerts/landmark-ruling-ai-copyright-fair-use-vs-infringement-bartz-v-anthropic). Judge William Alsup found the use of copyrighted books to train a large language model "spectacularly transformative" — perhaps the most emphatic application of the first fair use factor any court has issued in years. The reasoning tracks the statute precisely. Training a model on text does not reproduce that text for public consumption. A trained neural network is not a copy of its training data; it is a statistical abstraction derived from patterns across billions of parameters. No reader can open Claude and retrieve a chapter of a novel. The fourth factor — market harm — therefore weighs heavily for the developer: there is no market substitution when the output is categorically different from the input.

This is not a novel doctrinal leap. In [*Authors Guild v. Google*, 804 F.3d 202 (2d Cir. 2015)](https://law.justia.com/cases/federal/appellate-courts/ca2/13-4829/13-4829-2015-10-16.html), the Second Circuit held that digitizing entire books to power a text-search index was transformative fair use — even though Google's corpus was identical to the originals and required copying every word. The key was different purpose and no market substitute. [*Kelly v. Arriba Soft Corp.*, 336 F.3d 811 (9th Cir. 2003)](https://scholar.google.com/scholar_case?case=12355374028354341132) applied the same logic to thumbnail images used as search results. The pattern in fair use jurisprudence is consistent: when copying serves a transformative analytical purpose and does not flood the market with substitutes for the original, fair use applies.

AI model training is the most analytically transformative use of text ever devised. That the resulting model is commercially valuable does not change the analysis. Commercial purpose is one consideration under the first factor, not a trump card. Google Books was commercial. The Wayback Machine is commercial. Westlaw is commercial. None required authors' permission to build.

---

## Bartz Got the Hard Question Right, Too — and the Settlement Reflects That

Judge Alsup's ruling in *Bartz* was a split decision — and that split is crucial to understanding what followed.

While the court held that training on lawfully acquired books is transformative fair use, it reached the opposite conclusion regarding Anthropic's download of [over seven million pirated books](https://www.npr.org/2025/09/05/nx-s1-5529404/anthropic-settlement-authors-copyright-ai) from shadow libraries Library Genesis and Pirate Library Mirror. Those downloads, the court found, failed every fair use factor. The purpose was building a general research library, not transformative training. The works were obtained illegally. And crucially, the piracy was unnecessary: Anthropic could have purchased or licensed the texts. Judge Alsup's dicta was stark — using pirated sources when lawful alternatives exist is "inherently, irredeemably infringing."

The $1.5 billion settlement that followed in September 2025 is therefore a settlement for *piracy*, not for AI training. That distinction is critical, and it is being systematically obscured in the policy debate.

Content industry advocates will cite the $1.5 billion figure as evidence that training on copyrighted data commands billions in licensing fees. That argument inverts the causation. Anthropic did not pay $1.5 billion because training on books is a compensable use. It paid $1.5 billion because it downloaded millions of pirated copies — conduct the law correctly treats as infringement. The settlement reflects the cost of getting the *acquisition* question wrong, not the *training* question.

Allowing settlement economics to define the IP framework for AI training would be a category error of historic proportions. Litigation asymmetry, class certification risks, and legal uncertainty all inflate settlement values far above any principled assessment of harm. The [Susman Godfrey firm's announcement](https://www.susmangodfrey.com/wins/susman-godfrey-secures-1-5-billion-settlement-in-landmark-ai-piracy-case/) framed this explicitly as a "landmark AI piracy case" — not a landmark ruling that training itself infringes. Courts and policymakers should keep that characterization in mind when the next filing cites $1.5 billion as the market rate for training data licenses.

---

## The Circuit Split Is the Real Threat

Not every court has adopted Judge Alsup's framework. The Delaware district court in [*Thomson Reuters v. Ross Intelligence*](https://www.jenner.com/en/news-insights/publications/client-alert-court-decides-that-use-of-copyrighted-works-in-ai-training-is-not-fair-use-thomson-reuters-enterprise-centre-gmbh-v-ross-intelligence-inc) found in February 2025 that Ross's use of Westlaw headnotes to train a competing legal research AI was not fair use — in part because the competing product targeted the same market as the original. That case is now before the Third Circuit on interlocutory appeal, with Anthropic having [filed an amicus brief](https://www.webpronews.com/anthropic-asks-a-federal-court-to-rewrite-the-rules-of-ai-copyright-and-the-stakes-are-enormous/) urging the appellate court to recognize the transformative nature of AI training.

The *Thomson Reuters* outcome is explicable on narrow grounds. Ross was building a direct competitor to Westlaw using Westlaw's own proprietary headnotes — a much closer call than general-purpose language model training. But if the Third Circuit issues a broad ruling that AI training categorically fails fair use, the conflict with *Bartz*'s Northern District analysis will require eventual Supreme Court resolution. That process could take years, and the uncertainty in the interim would be devastating for domestic AI development.

The correct appellate outcome in *Thomson Reuters* is to distinguish the direct-competitor substitution problem from the general transformative-training analysis — not to issue a sweeping condemnation of AI training data practices. Courts should resist the temptation to solve licensing markets from the bench.

---

## A Liability Regime Offshores Development — It Doesn't Protect Creators

Here is the argument for aggressive AI training liability at its strongest: creators have a moral and economic stake in how their work is used, AI companies are building billion-dollar products from that work, and the law should ensure those creators are compensated.

The argument is sympathetic in its premise and wrong in its conclusion.

The relevant question for IP policy is not whether creators deserve compensation in the abstract — it is whether a specific legal remedy actually delivers that compensation, or whether it simply relocates the activity to a jurisdiction that doesn't care. Chinese AI developers, including those associated with [DeepSeek](https://www.fdd.org/analysis/2026/02/13/openai-alleges-chinas-deepseek-stole-its-intellectual-property-to-train-its-own-models/), operate under a regulatory approach that [ICLG characterizes as deliberately permissive toward upstream AI training](https://iclg.com/practice-areas/data-protection-laws-and-regulations/02-ai-regulatory-landscape-and-development-trends-in-china). The irony is that OpenAI accused DeepSeek of stealing *its* training data to build competing models — a reminder that the real threat to American IP interests is not U.S. training law, but the absence of it in Beijing.

An aggressive U.S. training liability regime does not create a global licensing market. It creates a global training disadvantage — one that falls entirely on companies subject to U.S. jurisdiction while leaving foreign competitors unaffected. American users will still access foreign AI systems. American authors will receive no royalties from DeepSeek. American AI companies will face compliance costs their Chinese competitors will not. The net effect is to transfer AI capability development abroad while delivering essentially nothing to the rights holders the regime purports to protect.

This is not a hypothetical. The EU's [AI Act](https://artificialintelligenceact.eu/) and related copyright frameworks have already generated compliance burdens that are lengthening European AI development timelines — while underlying models continue to be trained, just with greater legal overhead or outside EU jurisdiction. IP policy that drives training offshore is not IP protection. It is industrial policy pointed in the wrong direction.

---

## The CLEAR Act: Legitimate Transparency, Dangerous Ambiguity

The CLEAR Act raises a genuine public interest. There is real value in knowing what data trained the AI systems shaping information access, legal decisions, and creative industries. The bill's core requirement — that AI developers file a notice with the Copyright Office identifying copyrighted works in their training sets before commercial release — is a defensible transparency mandate.

The danger is architectural. The bill creates a comprehensive public database of disclosed training works, with civil penalties for non-compliance. What it does not do clearly enough is establish that disclosure cannot be weaponized as a liability trigger. If the act of disclosure — formally registering that Work X was used in training Dataset Y — creates the predicate for an infringement suit on the theory that the filer has now confessed to copying, the CLEAR Act becomes a mandatory licensing mechanism dressed in transparency language.

Congress must make the distinction explicit. Disclosure should not constitute evidence of infringement. If the bill does not include that protection, the rational response for AI developers will be to restrict training to works whose provenance they can affirmatively clear — which means works that major rights holders control, entrenching incumbents and raising barriers to entry for smaller AI developers.

Transparency about training data is a legitimate policy goal. Decoupling that transparency from automatic liability is a precondition for the policy to function without becoming a backdoor licensing mandate. Congress should add explicit safe harbor language to the CLEAR Act before passage.

---

## The Right Model: Narrow Safe Harbor Legislation

The most durable solution is one Congress has successfully deployed before. When the internet created novel intermediary liability questions in the 1990s, Congress did not wait for courts to develop a consistent common law answer. It enacted [Section 512 of the Digital Millennium Copyright Act](https://www.copyright.gov/title17/92chap5.html#512), establishing a safe harbor for online service providers who could demonstrate they were not actively engaged in infringement and had adopted reasonable notice-and-takedown procedures. That framework has been imperfect — but it provided the legal clarity that allowed the modern platform ecosystem to develop.

AI training law needs the same intervention. Congress should enact a narrow statutory safe harbor for model training conducted on lawfully acquired data — one that:

1. **Affirms the lawful-acquisition distinction.** Fair use protection applies to training on lawfully obtained copies. Training on pirated data, as *Bartz* correctly established, is not protected.
2. **Defines "lawfully acquired" with specificity.** Purchased copies, licensed data, and publicly available data accessed through standard web crawls should qualify. Shadow library torrents and unauthorized scrapes of access-controlled content should not.
3. **Decouples disclosure from liability.** Compliance with training-data disclosure requirements under the CLEAR Act should not be construed as an admission of infringement.
4. **Routes output-reproduction claims through takedown, not pre-training licensing.** Rights holder concerns about market substitution are most legitimate when AI *outputs* reproduce protected expression verbatim. The safe harbor should direct those claims through a mechanism analogous to § 512(c) — not through pre-training licensing requirements.

This framework respects copyright's core purpose — preventing market substitution that deprives creators of income — while refusing to extend copyright into territory that fair use doctrine has consistently protected for decades.

---

## What's at Stake When Courts Rule

Summer and fall 2026 will likely produce at least one major appellate ruling on AI training data fair use. When that ruling arrives, it will do one of three things: affirm Judge Alsup's transformative-use framework and provide the clarity the industry needs; fragment into a circuit split that creates years of litigation chaos; or issue a broad anti-training ruling that triggers an immediate legislative response and a race to relocate model development to friendlier jurisdictions.

The first outcome is the right one — and the one most consistent with settled fair use doctrine, with the economic reality of global AI competition, and with the actual interests of American creators. Creators benefit more from a strong domestic AI industry that generates markets, tools, and licensing opportunities than from a liability regime that exports AI capability while delivering marginal royalty streams.

Courts should read *Authors Guild v. Google*, read *Bartz v. Anthropic*, and apply the transformative use analysis rigorously. Congress should pass the CLEAR Act only with explicit safe harbor language that decouples disclosure from liability, and should follow that bill with a narrow DMCA-style training data safe harbor.

Fair use is not a loophole. It is the legal infrastructure that made the internet, the cloud, and now AI possible. Courts and Congress must not mistake the $1.5 billion price tag of a piracy settlement for a license fee — or impose on the entire American AI sector the costs of conduct that the law already correctly prohibits.
