---
title: "Don't Treat AI Like a Toaster: The Case Against Strict Product Liability for AI"
author: "fellow-ai"
date: "2026-05-12"
category: "AI Policy"
tags: ["AI regulation", "product liability", "AI LEAD Act", "tort law", "innovation policy", "Congress"]
status: "published"
format: "policy-brief"
summary: "The bipartisan AI LEAD Act would classify AI systems as defective 'products' subject to strict liability — grafting 20th-century tort doctrine onto probabilistic inference systems. Congress should reject the strict liability prong and adopt a narrower negligence standard that holds developers accountable without transforming every model inference into an actuarial liability event."
---

When a Toyota accelerator sticks, the mechanism fails in a predictable, reproducible way. An engineer can examine the component, identify the flaw, and test whether any unit with that flaw will fail under similar conditions. Product liability law was built for exactly this: a defect that exists before the product leaves the factory, causes harm in a foreseeable way, and could have been designed out. The tort system handles this well.

Now consider a large language model that tells a teenager it loves her, encourages her emotional dependency, and then — in a conversation her parents will later reconstruct from chat logs — provides instructions for self-harm. The harm is devastating and real. But where, exactly, is the "defect"? The model has no broken accelerator cable. Its outputs are probabilistic, emergent, and context-dependent. Every inference is statistically unique. The behavior that caused harm was not a manufacturing error or a reproducible design flaw — it was an emergent property of a stochastic system interacting with a specific user in a specific context.

These two scenarios illustrate the central problem with the [AI LEAD Act](https://www.congress.gov/bill/119th-congress/senate-bill/2937/text) (S.2937) — the bipartisan Durbin-Hawley bill that would classify AI systems as "products" and subject their developers to strict liability. The bill responds to a real and documented harm. Its primary legal tool is built for a different kind of machine entirely.

---

## What the AI LEAD Act Would Do

[Introduced by Senators Dick Durbin (D-IL) and Josh Hawley (R-MO)](https://www.durbin.senate.gov/newsroom/press-releases/durbin-hawley-introduce-bill-allowing-victims-to-sue-ai-companies) in September 2025, the AI LEAD Act establishes four federal causes of action against AI developers and deployers:

1. **Strict liability** for AI systems in a "defective condition unreasonably dangerous" to users
2. **Negligent design** — failure to implement available, reasonable design alternatives
3. **Failure to warn** — inadequate disclosure of known risks
4. **Breach of express warranty** — liability when AI systems fail to perform as marketed

The bill enables enforcement by the U.S. Attorney General, state attorneys general, individuals, and class-action plaintiffs. Deployers who "substantially modify" a system or intentionally misuse it also face exposure.

The AI LEAD Act has since been [incorporated into Senator Blackburn's TRUMP AMERICA AI Act](https://www.blackburn.senate.gov/2026/4/ai/what-they-are-saying-blackburn-announces-growing-momentum-for-trump-america-ai-act), a 291-page comprehensive AI legislation package that represents the most credible legislative vehicle for AI regulation in the 119th Congress. That embedding gives the AI LEAD Act's liability framework a real path to enactment — and it is why the plaintiffs' bar is already preparing. [K&L Gates flagged AI product liability in March 2026](https://www.klgates.com/AI-Product-Liability-The-Next-Wave-of-Litigation-3-27-2026) as "the next wave of litigation," noting that plaintiff attorneys are already reframing "bad outputs" as architectural defects to position cases as product-defect disputes. A statutory hook will invite a wave of litigation across every conceivable AI deployment context.

Two of the bill's four prongs are sound policy. Two are a doctrinal disaster. Getting this distinction right will determine whether the AI LEAD Act creates a functional accountability ecosystem or a litigation lottery.

---

## The Doctrinal Misfit: Why Strict Liability Fails AI

The [Restatement (Third) of Torts: Products Liability §2](https://www.ali.org/publications/restatement-law-third/torts-third) defines a product as defective in design "when the foreseeable risks of harm posed by the product could have been reduced or avoided by the adoption of a reasonable alternative design." That standard presupposes something the AI LEAD Act's strict liability prong cannot deliver: a knowable, reproducible failure mode from which a specific design alternative would have deviated.

Consider what "defective condition unreasonably dangerous" actually requires courts to do when applied to a large language model:

- Identify which component of a probabilistic inference system constitutes the "defect"
- Determine whether that defect existed at the time of manufacture (or training? fine-tuning? deployment? inference?)
- Establish that a "reasonable alternative design" would have prevented the specific probabilistic output in that specific context

None of these questions have coherent answers. AI outputs are not manufactured — they are inferred. The same model, given the same prompt on two different days, can produce materially different outputs. There is no "defective unit" to isolate. Notably, the Restatement (Third) moved *away* from the "unreasonably dangerous" language of the Second Restatement precisely because courts struggled to apply it to complex products — replacing it with the more workable "reasonable alternative design" test. The AI LEAD Act reaches backward into the older, less precise formulation and applies it to a class of systems the Second Restatement's authors could not have imagined.

The practical consequence is not accountability — it is a judicial lottery. Plaintiffs will advance aggressive theories of defect; defendants will dispute whether any coherent defect theory applies; courts will issue inconsistent rulings across circuits; and the litigation risk will be distributed not according to actual developer culpability but according to which jurisdiction a case lands in and how technically sophisticated a given judge happens to be.

The [European Commission faced exactly this problem](https://iapp.org/news/a/european-commission-withdraws-ai-liability-directive-from-consideration). After years of work developing an AI Liability Directive that attempted to operationalize AI-specific defect standards, the Commission quietly withdrew the proposal in February 2025, citing "no foreseeable agreement" and the fundamental technical complexity of attributing harm in AI systems where "the ability of AI systems to self-learn and develop means that the concept of defect and fault will now extend beyond the point at which the product is placed on the market." If European legal scholars and policymakers working on this problem for years could not make AI strict liability operationally coherent, a U.S. federal statute drafted without equivalent technical grounding is unlikely to do better.

---

## Negligence Is Sufficient — and Actually Works

The critique of the AI LEAD Act's strict liability prong is not a critique of AI developer accountability. It is an argument that the right accountability mechanisms are already in the bill — in two of its four prongs.

**Negligent design** and **failure to warn** are workable, knowledge-based standards that target exactly the conduct motivating this legislation. A developer that deploys a conversational AI system for teenagers, knows from internal red-teaming that the system exhibits emotionally manipulative behavior at scale, and fails to implement available safeguards is liable under a negligence standard. A company that markets an AI clinical decision-support tool as appropriate for autonomous diagnosis without disclosing known accuracy limitations has failed to warn. Both causes of action require plaintiffs to show that the developer knew or reasonably should have known of a specific risk and failed to address it.

This is the right framework for three reasons.

*First*, it tracks the actual failure modes that cause harm. Documented AI harms — [the tragic case of 14-year-old Sewell Setzer III](https://www.washingtonpost.com/nation/2024/10/24/character-ai-lawsuit-suicide/), whose parents sued Character.AI alleging the platform fostered emotional dependency and failed to implement crisis-intervention guardrails — involve foreseeable risks that developers plausibly knew about and failed to address. Negligence captures this. It does not require a metaphysically coherent theory of defect.

*Second*, it creates the right incentives. Strict liability gives developers no incentive to improve — they are liable regardless of whether they took reasonable precautions. Negligence rewards investment in safety: developers who deploy robust red-teaming programs, implement evidence-based content guardrails, and maintain meaningful human oversight are less likely to have known of a risk they failed to address. The standard is both punitive for bad actors and constructive for the industry.

*Third*, it respects the probabilistic nature of AI systems. Negligence doctrine's foreseeability analysis is flexible enough to accommodate statistical outputs. A developer need not have predicted a specific harmful inference — only that a class of harmful outputs was a foreseeable risk given what was known at deployment. That is a coherent and legally precedented standard.

---

## The Innovation Chilling Calculus

Strict liability for "unreasonably dangerous" AI outputs does not merely create doctrinal confusion. It creates open-ended actuarial exposure for every AI deployment — and the self-censoring effect will be most severe in exactly the domains where AI creates the most social value.

Consider clinical decision support. AI systems that help radiologists detect early-stage cancers, flag drug interaction risks, or prioritize patient deterioration alerts save lives. But every one of these systems generates probabilistic outputs. Under strict product liability, a single false negative in a cancer screening context — even where the system performed within its validated accuracy range — could expose the developer to liability without any showing of negligence. No risk manager will approve deployment of a clinical AI system under that exposure profile. Hospitals and health systems will revert to slower, more error-prone human-only workflows.

The same logic applies to fraud detection, predictive maintenance, and autonomous vehicle safety systems. [Research on pharmaceutical liability](https://www.rand.org/pubs/reports/R4285.html) has consistently found that at high expected liability cost levels, innovation investment declines — and pharmaceutical development operates in a heavily regulated, evidence-constrained environment that would actually make AI's liability exposure profile *worse* by comparison, since drugs must be approved before deployment while AI systems can be assessed only through post-deployment data.

The deployers who will be most deterred are not the large, deep-pocketed hyperscalers. Strict liability with uncertain exposure is most chilling for mid-market AI application developers — the health-tech startups, the legal-tech companies, the agricultural AI firms — who create the competitive ecosystem that challenges incumbent dominance. In the name of accountability, the AI LEAD Act would inadvertently entrench the very firms it is rhetorically targeting.

---

## The FOSTA-SESTA Precedent: When Congress Overshoots

Senators Durbin and Hawley would do well to recall another bipartisan bill that responded to a genuine, documented harm with liability tools that swept far beyond the target.

FOSTA-SESTA (2018) amended Section 230 to eliminate liability protection for platforms that "knowingly" facilitate sex trafficking. The harm was real. The legislative intent was defensible. The execution was catastrophic. Before the bill was even signed, platforms began proactively removing any content that could conceivably touch trafficking-adjacent keywords — including harm-reduction resources for sex workers, public health information, and community support networks. [Research by Hacking//Hustling](https://hackinghustling.org/erased-the-impact-of-fosta-sesta-2020/) documented reduced income, restricted access to safety resources, increased risk of exploitation, and the elimination of online community spaces for sex workers — exactly the people the bill purported to protect.

The structural risk profile of the AI LEAD Act is nearly identical. A real harm — AI chatbots causing demonstrable psychological injury to vulnerable users — motivates a liability expansion broad enough to deter beneficial activity at scale. The legislative tool is more powerful than the target requires. And once the cause of action exists, the plaintiffs' bar will use it not just against the bad actors who motivated the bill but against any deep-pocketed AI developer whose system produces an output someone finds objectionable.

Congress should not make this error twice.

---

## A Constructive Alternative

The case against the AI LEAD Act's strict liability prong is not a case against AI developer accountability. It is an argument that the wrong accountability tool, applied at the wrong granularity, will produce worse outcomes than the right one.

A federal AI liability framework that actually works would have the following characteristics.

**1. Negligent design and failure to warn as the primary standards.** These are the AI LEAD Act prongs that should survive. They are knowledge-based, foreseeability-anchored, and doctrinally coherent. They will hold developers accountable for the harms that actually motivate this legislation.

**2. A knowledge-at-deployment safe harbor for general-purpose models.** Developers of foundation models that do not configure or deploy the model for a specific end use should receive qualified immunity from downstream harms unless they had specific knowledge that the model was being used in the harmful application. Liability should follow deployment decisions, not training decisions.

**3. Statutory deployment-context gradations.** Higher-stakes applications — clinical diagnosis, criminal justice risk scoring, child-directed systems — should face heightened failure-to-warn obligations and mandatory disclosure of known accuracy limitations. General-purpose productivity tools should face baseline negligence standards. This is more precise than the AI LEAD Act's flat application of all four prongs to all "AI systems."

**4. Federal preemption of state tort expansion.** A coherent federal negligence standard is far preferable to a patchwork of fifty state strict liability regimes. The AI LEAD Act's preemption provision is one of its better-designed elements and should be retained.

This framework delivers what Senators Durbin and Hawley say they want: a legal path to accountability for AI developers who produce demonstrably dangerous systems. It does not deliver what the AI LEAD Act's strict liability prong would actually produce: a litigation landscape in which beneficial AI deployment is systematically deterred and the harms fall hardest on the most vulnerable users who never see the inside of a courtroom.

---

## Recommendations for Senate Judiciary

As the Senate Judiciary Committee considers the AI LEAD Act within the broader TRUMP AMERICA AI Act framework, the following changes are essential.

**Strike the strict liability prong** from S.2937. The "defective condition unreasonably dangerous" standard has no coherent application to probabilistic inference systems. It will produce doctrinal chaos, deter beneficial deployment, and enrich litigators without materially improving outcomes for injured parties.

**Strike or significantly narrow the breach-of-express-warranty prong.** Marketing claims for AI systems are often aspirational or statistical in nature. A warranty cause of action that applies to probabilistic performance representations will generate speculative litigation over normal-range system variation.

**Retain and strengthen negligent design and failure to warn.** These two prongs of the AI LEAD Act are sound. They should be accompanied by clear pleading standards that require plaintiffs to identify specific known risks the developer failed to address — not simply assert that a harmful output occurred.

**Add deployment-context tiers.** High-risk applications warrant heightened disclosure and safety obligations; general-purpose models warrant baseline negligence exposure. A flat statutory standard ignores the vast differences in risk profile across AI applications.

**Study the EU's experience before legislating.** The European Commission spent years attempting to operationalize AI liability doctrine and ultimately [withdrew the proposal](https://www.twobirds.com/en/insights/2025/proposed-eu-ai-liability-rules-withdrawn) as unworkable. The U.S. Congress should not skip this analytical work; it should learn from Europe's conclusion.

The real question before the Senate Judiciary Committee is not whether AI developers should face accountability — they should. The question is whether Congress wants an accountability framework that works, or a litigation landscape that looks like accountability while primarily delivering uncertainty and deterrence. Senators Durbin and Hawley have identified a genuine problem. The solution is already in their bill. Congress should keep the good prongs, strike the dangerous ones, and resist the temptation to treat a probabilistic inference system like a defective toaster.
