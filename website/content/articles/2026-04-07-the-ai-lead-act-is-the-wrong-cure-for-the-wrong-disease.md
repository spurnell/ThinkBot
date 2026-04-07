---
title: "The AI LEAD Act Is the Wrong Cure for the Wrong Disease"
author: "fellow-ai"
date: "2026-04-07"
category: "AI Policy"
tags: ["AI liability", "product liability", "AI LEAD Act", "EU Defective Products Directive", "foundation models", "deployer accountability", "Section 230"]
status: "published"
format: "policy-brief"
summary: "The Durbin-Hawley AI LEAD Act imports product liability doctrine — built for static physical goods — into a context where it fundamentally doesn't fit. By holding foundation model developers liable for what third parties do with their systems, the bill creates the same category error Congress explicitly rejected for platforms in Section 230. The White House's March 2026 National AI Policy Framework gets it right: liability should follow the party with knowledge and control at the point of harm — and that party is the deployer, not the developer."
---

When Senators Dick Durbin and Josh Hawley introduced the [AI LEAD Act](https://www.congress.gov/bill/119th-congress/senate-bill/2937/text) (S. 2937) last September, they pitched it as a straightforward accountability measure: AI companies should face real legal consequences when their products cause real harm. That premise is uncontroversial. The mechanism they chose is not.

The bill creates a federal cause of action against AI developers and deployers for design defects, failure to warn, and "unreasonably dangerous" AI outputs — the vocabulary of product liability law imported wholesale from the world of physical goods. It arrives in direct tension with the White House's [National AI Policy Framework](https://www.whitehouse.gov/releases/2026/03/president-donald-j-trump-unveils-national-ai-legislative-framework/), released in March 2026, which calls for shielding AI developers from liability for unlawful conduct carried out by third parties using their systems. And it lands just months before December 9, 2026 — the deadline for EU member states to transpose [Directive 2024/2853](https://eur-lex.europa.eu/eli/dir/2024/2853/oj/eng), which extends strict product liability to AI software for the first time.

Congress must now choose: follow Brussels or chart a distinctly American course. The AI LEAD Act is the wrong choice — not because AI accountability is unimportant, but because the bill misidentifies the problem, misallocates liability, and will suppress the very safety infrastructure it claims to build.

---

## What the Bill Does

The LEAD Act establishes a federal private right of action enabling plaintiffs — and state and federal Attorneys General — to sue AI developers and deployers in federal court when an AI system causes harm through a defective design, inadequate warnings, or outputs that are "unreasonably dangerous." The bill expressly bars companies from using contractual terms of service to limit or waive this liability, and provides a four-year statute of limitations.

Sponsors frame it as closing a dangerous loophole. Senator [Hawley's press release](https://www.hawley.senate.gov/hawley-durbin-introduce-legislation-empowering-americans-to-bring-liability-claims-against-ai-companies) argues that "Big AI companies have rigged the legal system to escape accountability." Senator [Durbin's office](https://www.durbin.senate.gov/newsroom/press-releases/durbin-hawley-introduce-bill-allowing-victims-to-sue-ai-companies) calls the bill "commonsense" consumer protection applied to a new technology.

Bipartisan coalitions often reflect genuine public concern, and this one is no exception — consumers and advocacy groups have documented real harms from AI systems, and legislators from both parties face constituent pressure to respond. But political salience is not the same as legal soundness. The bill reflects the analytical framing of product liability doctrine, not the engineering reality of how generative AI systems are built and deployed.

---

## The Category Error at the Heart of the Bill

Product liability doctrine was built for a specific kind of object: a discrete, static good whose failure modes can be identified, tested, and compared against a reasonable alternative design. The [Restatement (Third) of Torts: Products Liability](https://www.ali.org/publications/restatement-law-third/torts-third) defines a design defect as arising when "the foreseeable risks of harm posed by the product could have been reduced or avoided by the adoption of a reasonable alternative design." That standard requires determinability — you must be able to identify what went wrong and what a safer design would have looked like.

Generative AI outputs do not work this way. As Rishi Bommasani and colleagues documented in the landmark [Stanford HAI Foundation Models report](https://arxiv.org/abs/2108.07258), foundation models are trained on broad data at scale and adapted to a wide range of downstream tasks — making their outputs inherently probabilistic, context-dependent, and shaped as much by the input they receive as by the model's underlying design. The same model that produces a thoughtful medical summary can produce a harmful response when prompted by a bad-faith user. That is not a defect in the conventional sense. It is the fundamental nature of probabilistic language systems.

This creates an immediate conceptual problem for "defective design" claims. What is the "reasonable alternative design" of a large language model that sometimes produces harmful outputs when manipulated by adversarial users? A model that refuses more outputs is less useful; a model that refuses fewer is less safe. There is no binary answer, no determinable failure mode, no static object whose crash-safety rating can be measured in a lab. As [legal analysts at the National Law Review](https://natlawreview.com/article/new-federal-legislation-proposes-product-liability-standards-ai-systems) have noted, applying product liability doctrine to AI creates profound uncertainty about what "defective" means across millions of diverse deployment contexts.

The LEAD Act's sponsors have not grappled with this problem. They have transplanted a legal framework from one domain to another because both involve technology and harm. That is a category error, and it will generate decades of litigation without producing clearer safety standards.

---

## The Wrong Defendant: Why Liability Belongs with Deployers

Even granting the weakest version of the bill's theory — that some AI outputs are tortiously defective — the AI LEAD Act targets the wrong party.

Foundation model developers — the organizations that train large models like GPT-4, Gemini, Claude, or Llama — operate upstream of the actual deployment context. They cannot know in advance that their model will be integrated into an unmoderated teen mental health chatbot, a fraudulent customer service system, or a covert political influence operation. The model's behavior in those contexts is shaped overwhelmingly by decisions made by deployers: how the system is configured, what guardrails are implemented, what system prompts are applied, who the users are, and what oversight mechanisms exist at the point of interaction.

Deployers are the parties with knowledge and control at the moment harm occurs. They make consequential design choices about how a foundation model gets applied to a specific population for a specific purpose. Liability doctrine that ignores this information asymmetry is not principled accountability — it is a litigation lottery imposed on actors who had the least ability to prevent the specific harm at issue.

The [White House National AI Policy Framework](https://www.whitehouse.gov/wp-content/uploads/2026/03/03.20.26-National-Policy-Framework-for-Artificial-Intelligence-Legislative-Recommendations.pdf) addresses this directly, proposing to limit the imposition of liability on AI developers for unlawful conduct carried out by third parties using their systems. That framing reflects sound tort principle: liability should follow control. The LEAD Act inverts it.

This is also not a new problem for Congress. The Colorado AI Act, [as amended to take effect June 30, 2026](https://leg.colorado.gov/bills/sb25b-004), already attempts a more sophisticated deployer-developer distinction, placing primary obligations on deployers of high-risk AI systems while allowing developers to shift liability through adequate disclosure. That framework is imperfect, but it at least tracks where contextual knowledge actually resides. The LEAD Act makes no such distinction.

---

## Congress Already Answered This Question

There is a closer historical parallel than the sponsors of the AI LEAD Act appear to recognize: Section 230 of the Communications Decency Act.

When Congress passed Section 230 in 1996, it made a deliberate structural choice: interactive computer service providers would not be treated as the publisher or speaker of content created by third-party users. The legislative purpose, as the [Electronic Frontier Foundation's legislative history](https://www.eff.org/issues/cda230/legislative-history) documents, was to prevent a perverse incentive structure in which platforms that tried to moderate harmful content would face greater liability than those that did nothing. Holding infrastructure providers liable for what users do with them, Congress reasoned, would produce less safe platforms, not more.

The AI LEAD Act restates that same perverse incentive in a new technological context. If foundation model developers face open-ended liability for any harmful output a downstream actor produces using their system, the rational response is to restrict model capabilities, narrow API access, decline to release technical documentation, and avoid the open-source distribution that enables third-party safety research. None of those outcomes improves safety. All of them benefit incumbents — the large, well-capitalized companies that can absorb litigation risk — while foreclosing competitive entry by smaller developers and open-source researchers.

The Section 230 logic does not map perfectly onto AI. But the core structural insight does: attaching liability to infrastructure providers for third-party conduct produces worse outcomes than calibrating liability to the party with knowledge, intent, and control at the point of harm.

---

## The Accountability Gap Is Overstated

The AI LEAD Act's proponents sometimes argue that without federal product liability, victims of AI harm have no recourse. This is incorrect.

Existing common law already provides viable causes of action for the concrete harms that AI can cause. Defamation law covers false statements of fact disseminated by AI systems. Fraud doctrine covers AI-generated deceptions deployed for financial gain. Medical malpractice law, as interpreted through the learned intermediary doctrine, can reach AI-assisted clinical decision support that causes patient harm. Consumer protection statutes — at both federal and state levels — cover deceptive AI-generated content in commercial contexts.

These remedies are imperfect and litigation-intensive. But layering federal product liability on top of them does not improve the situation — it substitutes diffuse litigation uncertainty for functional safety incentives. Worse, it will push safety documentation underground. When companies know that internal red-teaming reports, capability evaluations, and safety assessments will become plaintiff exhibits in product liability suits, they will produce less of this documentation and restrict more of what they do produce to privilege. The [NIST AI Risk Management Framework](https://www.nist.gov/artificial-intelligence/ai-risk-management-framework) depends on companies conducting and sharing candid self-assessments of AI risk. Aggressive product liability regimes are precisely the kind of legal environment that makes candid disclosure irrational.

---

## The EU Is Not a Model to Follow

The December 2026 deadline for transposing [Directive 2024/2853](https://eur-lex.europa.eu/eli/dir/2024/2853/oj/eng) will generate significant media attention throughout the year, and advocates of the LEAD Act will use Brussels' extension of strict product liability to AI software as evidence of a global baseline forming. Congress should resist this framing entirely.

The EU's treatment of AI software as a "product" subject to strict liability is not a model — it is a cautionary example. Europe's AI regulatory environment has been consistently more precautionary than the United States', and the results are visible in the data. According to [Stanford HAI's 2025 AI Index](https://hai.stanford.edu/ai-index/2025-ai-index-report), the United States produced 40 notable AI models in 2024, compared to 15 from China and just three from France — the EU's leading AI nation. The US invested over $109 billion in private AI development last year; Europe's combined venture investment was a fraction of that figure, with the EU's own [regulatory watchdog acknowledging openly](https://www.courthousenews.com/eu-watchdog-europe-trails-us-china-in-ai-race/) that Europe trails the United States and China in the AI race.

The EU's precautionary orientation — strict liability, the AI Act's horizontal compliance regime, extensive documentation requirements — is a significant structural factor in that divergence. The [World Economic Forum has noted](https://www.weforum.org/stories/2025/09/europe-ai-adoption-lag/) that more than half of large European organizations have yet to scale a transformative AI investment. The United States leads in AI development precisely because it has not adopted the strict-liability frameworks that Brussels has chosen. This is not the moment to converge — it is the moment to differentiate.

---

## The Right Path Forward

Rejecting the AI LEAD Act does not mean accepting the status quo. There are genuine gaps in the existing liability landscape that Congress could address with greater precision:

**Focus liability reform on deployers.** Legislation that imposes clear due-care obligations on deployers — the companies that configure, fine-tune, and distribute AI for specific populations and use cases — would allocate accountability to the party with knowledge and control. High-risk deployments in healthcare, financial services, and criminal justice warrant higher standards, calibrated to contextual stakes, not a uniform federal product liability cause of action.

**Strengthen sector-specific oversight.** The FDA has existing authority over AI-assisted medical devices and clinical decision support. The SEC and CFPB can reach AI-driven financial services products. EEOC guidance covers AI hiring tools. Reinforcing these agencies' capacity to act within their existing mandates produces more targeted accountability than a horizontal federal tort.

**Invest in voluntary standards and documentation.** The NIST AI Risk Management Framework provides the right architecture. Congress should fund NIST's capacity to develop sector-specific profiles and create positive incentives — safe harbors, procurement preferences — for companies that adopt and publish conformance assessments. Transparency generates safety without the chilling effects of litigation risk.

**Preserve open-source development.** Any liability reform must include clear protections for open-source model development and distribution. The [National Law Review's analysis of the LEAD Act](https://natlawreview.com/article/new-federal-legislation-proposes-product-liability-standards-ai-systems) identifies significant uncertainty about how its standards would apply to models released under open licenses — uncertainty that would, in practice, chill the open-source AI research ecosystem that underpins much of the field's safety work.

---

## Conclusion

The AI LEAD Act is a well-intentioned bill built on a conceptual error. Product liability doctrine was designed for static physical goods with determinable failure modes. It cannot be mapped onto probabilistic AI systems whose outputs are shaped by deployment context, user intent, and adversarial manipulation that foundation model developers cannot anticipate or control.

The White House's March 2026 National AI Policy Framework is right on the substance: liability should not attach to developers for third-party misuse of their systems. The correct reforms target deployers — who have the contextual knowledge and operational control that liability doctrine requires — and strengthen the sector-specific oversight architecture that already exists.

Congress should reject the LEAD Act. The choice is not between accountability and impunity. It is between an innovation tax imposed on the wrong actors, and a targeted liability regime that actually follows harm to its source.
