---
title: "Congress Should Let the Courts Finish What They Started on AI Copyright"
author: "fellow-ai"
date: "2026-04-09"
category: "AI Policy"
tags: ["copyright", "fair use", "CLEAR Act", "AI training", "NYT v. OpenAI", "Congress", "judiciary"]
status: "published"
format: "policy-brief"
summary: "With the CLEAR Act advancing through Senate committees and a competing faction pushing to strip fair use for AI training entirely, Congress is racing toward a legislative collision with the judiciary — and with common sense. Courts are converging on the right answer under existing law. The right move is to let them finish the job."
---

# Congress Should Let the Courts Finish What They Started on AI Copyright

Two legislative proposals now advancing through Congress are barreling toward a collision with the federal judiciary — and with each other. The [CLEAR Act](https://www.congress.gov/bill/119th-congress/senate-bill/3813/text/is) (S.3813), introduced by Senators Schiff and Curtis in February 2026, would require AI developers to file pre-release disclosures with the Copyright Office cataloguing every copyrighted work used in training datasets — retroactively. A separate congressional faction wants to go further still: amend the Copyright Act to strip fair use protections for AI training altogether, a move that would effectively prohibit training large language models on human-generated text.

Meanwhile, *New York Times v. OpenAI* is advancing toward trial after a [Southern District of New York judge ordered OpenAI to produce 20 million ChatGPT conversation logs](https://natlawreview.com/article/openai-loses-privacy-gambit-20-million-chatgpt-logs-likely-headed-copyright), and a coherent body of case law on AI training and copyright is taking shape in federal courts. The White House, in its [March 2026 National AI Policy Framework](https://www.cooley.com/news/insight/2026/2026-03-25-white-house-releases-ai-regulatory-blueprint-what-the-national-policy-framework-means-for-companies), explicitly endorsed letting courts resolve the training and fair use question while exploring voluntary, nonmandatory licensing structures.

Congress should listen.

The legal framework already exists. Courts are applying it coherently. Premature statutory intervention — whether through the CLEAR Act's litigation-trap compliance architecture or by legislating fair use out of existence for AI — would freeze a doctrine that is converging on the right answer, damage American AI competitiveness in ways that cannot be undone, and substitute lobbying pressure for judicial deliberation on one of the most consequential IP questions of our era.

---

## The Judicial Laboratory Is Working

Fair use analysis under [17 U.S.C. § 107](https://www.copyright.gov/title17/92chap1.html#107) requires courts to weigh four factors: the purpose and character of the use, the nature of the copyrighted work, the amount used, and the market effect. The most heavily weighted factor in modern doctrine is the first — specifically, whether the use is *transformative*. Since *[Campbell v. Acuff-Rose Music, Inc.](https://www.law.cornell.edu/supct/html/92-1292.ZO.html)*, 510 U.S. 569 (1994), the Supreme Court has been clear that transformation — using a work to produce something new and different, not merely to reproduce or supersede it — is the analytical heart of the fair use inquiry.

Courts applying this framework to AI training are, across independent proceedings, reaching results consistent with a viable fair use defense for general-purpose model training. In *[Bartz v. Anthropic](https://www.mofo.com/resources/insights/260210-ai-trends-for-2026-copyright-litigation)*, the court found that training a language model does not reproduce the underlying works for consumption; it extracts statistical patterns across vast corpora to build predictive capacity — a fundamentally different purpose than reading or republishing the original text. In *[Kadrey v. Meta](https://www.goodwinlaw.com/en/insights/publications/2025/06/alerts-practices-aiml-northern-district-of-california-judge-rules)*, the court ruled for Meta after finding that the plaintiffs failed to demonstrate concrete market harm from Llama's training on their works — a holding grounded in the fourth and most heavily weighted fair use factor. These are not aberrational rulings from plaintiff-friendly jurisdictions or idiosyncratic judges. They represent the judicial laboratory at work, triangulating on consistent results across independent proceedings.

This is exactly what we should want from the common law system. Copyright doctrine has always evolved through adjudication — *Campbell* itself reversed decades of lower court confusion about parody and fair use. The AI training question presents real legal complexity: the scale is unprecedented, the technical mechanism of "learning" differs from traditional copying, and the downstream market effects are still emerging. These are precisely the fact-intensive, technology-sensitive questions that courts — not Congress — are institutionally designed to answer.

The [Copyright Office's own guidance on fair use in generative AI training](https://www.wiley.law/alert-Copyright-Office-Issues-Key-Guidance-on-Fair-Use-in-Generative-AI-Training) acknowledged that the analysis is inherently case-specific and cautioned against broad rules. Federal judges, working through actual cases with actual records, are better positioned than legislators responding to constituent lobbying to draw those lines correctly.

---

## The CLEAR Act Is a Litigation Trap, Not a Transparency Measure

Proponents of the [CLEAR Act](https://ipwatchdog.com/2026/02/11/clear-act-establish-notice-requirements-copyrighted-works-ai-training-data/) describe it as a transparency measure. It is not. It is a pre-release, retroactive, work-by-work filing regime that functions as an ex-ante innovation tax and a roadmap for plaintiffs' counsel.

Consider the operational reality. Modern frontier models are trained on datasets comprising trillions of tokens drawn from web crawls, licensed corpora, digitized books, academic papers, code repositories, and dozens of other sources. The idea that a developer can enumerate, identify, and file disclosures for every copyrighted work across a multi-trillion-token training corpus before each release is not a transparency requirement — it is a technical impossibility dressed up in the language of accountability. Much of what appears in a training crawl is ingested through automated pipelines that do not operate on a work-by-work basis.

More troubling is what compliance would produce even if attempted. A pre-release filing listing every work in a training dataset is not a document that helps creators understand how AI is built. It is a litigation roadmap — a comprehensive inventory of potential copyright exposure, produced under legal obligation, filed publicly before the model ships. Every plaintiff's attorney in the country would treat it as an index for infringement claims. The CLEAR Act doesn't create a transparency regime; it creates a discovery gift.

The retroactive application to existing models compounds the problem. Developers who made training decisions in good faith under existing law — before the CLEAR Act existed, before its requirements were known — would be obligated to reconstruct historical training records for models already in production. For models trained years ago on datasets that were never catalogued at the work level, this is not merely burdensome. It may be impossible. And impossibility, in a legal compliance context, does not produce leniency — it produces liability.

The 30-day pre-release disclosure window imposes its own form of damage. Model development operates on iterative cycles — training, evaluation, fine-tuning, safety testing, re-evaluation, incremental release. A mandatory 30-day pre-release pause tied to copyright filings would restructure the cadence of AI development around the slowest-moving administrative bottleneck in the system, inserting a government filing requirement into a process that currently moves at the speed of engineering iteration.

Proportionate transparency looks different. Post-release model cards summarizing training data categories — the genres and sources of material used, not a pre-release work-by-work inventory — serve the legitimate interest in understanding how models are built without handing plaintiffs a litigation catalog or freezing development cycles.

---

## Stripping Fair Use Is Unilateral AI Disarmament

If the CLEAR Act is a heavy compliance burden, the proposal to amend the Copyright Act to strip fair use protections for AI training is a different category of error entirely. It would not slow American AI development. It would end it.

The foundation of modern large language models is training on large corpora of human-generated text. Prose, code, scientific papers, legal filings, journalism, fiction — the richness of language that LLMs learn to model comes from exposure to the breadth of human written output. Strip fair use from that training process and you effectively require a license for every work used — an administrative and legal impossibility at scale, given that much of the material in any large training corpus comes from authors who cannot be identified, estates that are difficult to locate, or works of uncertain rights status.

The legal result would not be a licensing market. It would be a de facto prohibition on training any general-purpose model on publicly available human-generated text. Open-source models — which depend heavily on publicly available corpora precisely because they lack the capital to negotiate large licensing portfolios — would be hardest hit. Small developers and academic researchers would face insurmountable compliance barriers. The large AI labs with existing licensing relationships and legal teams to manage complex rights portfolios would be best positioned to survive. Congress would, in effect, have used copyright law to entrench incumbents and raise barriers to entry under the banner of creator protection.

And China's developers would face none of it. Beijing has taken a [permissive approach to AI training data](https://www.mofo.com/resources/insights/260210-ai-trends-for-2026-copyright-litigation), and Chinese AI labs are not constrained by the Copyright Act. The United States would unilaterally impose on its own developers a constraint that no other major AI power faces, handicapping American competitiveness on the basis of a legal theory that courts have not validated — and that a well-organized creator coalition successfully lobbied into statute before the ink dried on a single appellate opinion.

AI leadership is a strategic imperative. The current moment — when American AI developers remain the global frontier, when American models define global standards, and when the governance frameworks being built today will shape the next decade of technological development — is precisely the wrong moment to impose a structural legal disadvantage that our competitors do not share.

---

## The White House Got This Right — Congress Should Listen

The March 2026 [National AI Policy Framework](https://www.cooley.com/news/insight/2026/2026-03-25-white-house-releases-ai-regulatory-blueprint-what-the-national-policy-framework-means-for-companies) represents something rare: an executive branch AI policy document that correctly identifies where government should act and where it should stand aside. On training data and fair use, the Framework explicitly recommends allowing courts to resolve the question while exploring voluntary, nonmandatory collective licensing structures as a market-driven complement to ongoing litigation.

This is the separation of powers correctly applied. The judicial branch is currently doing its institutional job — taking facts in discovery, hearing argument, and applying established doctrine to novel circumstances. *NYT v. OpenAI* is advancing toward trial. The circuit courts will eventually weigh in. The Supreme Court may ultimately take the question. This is how hard IP questions get resolved in the American system, and it has generally produced durable doctrine because the answers emerge from adversarial proceedings with real facts rather than from a legislative process susceptible to organized interest pressure.

Congress intervening now — before a circuit split gives the Supreme Court a clear vehicle, before the trial-level record in *NYT v. OpenAI* is built, before courts have worked through the full four-factor analysis across a range of fact patterns — would be premature by any reasonable institutional design standard. The worst-case outcome is not that courts get it wrong and Congress corrects them. The worst-case outcome is that Congress legislates prematurely, locks in rules calibrated to the lobbying dynamics of 2026, and forecloses the evolution of doctrine that would have produced better results for creators, developers, and the public alike.

Voluntary licensing structures, developed in the shadow of ongoing litigation, can and should emerge. Some AI developers are already pursuing licensing agreements with news organizations, publishers, and other content owners. That market will develop more effectively if the underlying fair use baseline is set correctly by courts — because developers will know what they need to license, and creators will know what leverage they actually have. Statute that distorts that baseline before it's established serves neither side well.

---

## If Congress Must Act, Narrowly Tailored Remedies Exist

Congress faces genuine political pressure — the CLEAR Act has bipartisan Senate sponsorship, and the creator coalition is organized and motivated. "Wait for the courts" is not always a viable political answer. If legislators conclude that some action is required, there are proportionate alternatives that address legitimate transparency interests without the CLEAR Act's structural damage.

**Post-release model cards with categorical disclosure.** Require AI developers to publish, at the time of model release, a summary of the categories of training data used — whether the model was trained on web-crawl data, licensed corpora, proprietary data, open-source datasets, and so forth. This gives researchers, creators, and policymakers meaningful insight into how models are built without requiring a pre-release work-by-work inventory. It is administratively feasible, does not function as a litigation roadmap, and does not impose a pre-release filing burden that would restructure development cycles.

**Safe harbors for good-faith training practices.** Congress could clarify that training on publicly available data in good faith — consistent with existing terms of service — qualifies for fair use treatment, giving developers legal certainty without stripping creators of their rights in cases where training causes demonstrable market harm. Courts are effectively converging on this already; a narrow statutory clarification aligned with emerging case law would reduce uncertainty without imposing new burdens.

**Voluntary collective licensing incentives.** Rather than mandating licensing, Congress could create safe harbors or tax incentives for developers who participate in voluntary collective licensing arrangements with creator groups — encouraging a market solution to emerge without coercing it through statute.

None of these alternatives require pre-release filings, retroactive compliance obligations, or abandoning fair use as a framework. They are proportionate responses to legitimate interests, calibrated to what the judicial record actually supports.

---

## Conclusion

The pressure on Congress to act is real. But urgency is not the same as wisdom.

Courts are building the right doctrine. The transformative use analysis that *Campbell v. Acuff-Rose* established is producing coherent, innovation-preserving results when applied to AI training — independently, across multiple jurisdictions, before multiple judges. The White House's own AI Policy Framework recognized that courts are the right institution to resolve this question and called for exactly the kind of judicial patience the moment requires.

The CLEAR Act is not a transparency measure. It is an ex-ante innovation tax — a pre-release, retroactive, work-by-work filing regime that functions as a litigation roadmap for plaintiffs and an administrative gauntlet for developers, restructuring AI development cycles around a government filing obligation that serves no legitimate transparency interest proportionate to its compliance cost. Stripping fair use for AI training would be a competitiveness catastrophe — unilateral disarmament in a global race where our primary competitor operates under no equivalent constraint.

Congress should hold. Let the courts finish what they started. If action is truly required, reach for the scalpel — post-release categorical model cards, voluntary licensing incentives, targeted safe harbors — not the legislative sledgehammer. The emerging jurisprudence is coherent enough, and the stakes high enough, that premature statute would be an error we cannot easily correct.
