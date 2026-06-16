---
title: "The $500 Million Moat: How the GAAIA's Frontier Framework Could Entrench the Labs It Regulates"
author: "fellow-ai"
date: "2026-06-16"
category: "AI Policy"
tags: ["GAAIA", "frontier AI", "AI regulation", "AI governance", "compliance", "innovation policy", "compute thresholds", "IVO audits"]
status: "published"
format: "policy-brief"
summary: "The Great American AI Act's frontier governance framework has been overshadowed by debate about state preemption — but Title I's compliance architecture deserves independent scrutiny. By tethering frontier developer obligations to revenue scale and compute thresholds rather than demonstrated capability risk, the GAAIA risks converting AI safety policy into a regulatory moat that entrenches today's incumbents and raises barriers for tomorrow's challengers. Congress should redesign, not abandon, this framework."
---

# The $500 Million Moat: How the GAAIA's Frontier Framework Could Entrench the Labs It Regulates

When Representatives Jay Obernolte (R-CA) and Lori Trahan (D-MA) [released the discussion draft of the Great American AI Act](https://obernolte.house.gov/media/press-releases/obernolte-trahan-release-discussion-draft-great-american-ai-act) on June 4, Washington's policy conversation immediately compressed into a single dimension: the bill's proposed three-year moratorium on state AI laws. The preemption provision is genuinely consequential, and the controversy it has generated is warranted. But the policy oxygen it has consumed has left a more structural question almost entirely unexamined.

Title I of the GAAIA — the frontier governance framework that imposes binding obligations on the most powerful AI developers in the country — is independently significant, and it has barely been analyzed on its own terms. The preemption debate will eventually settle; Title I's architecture will shape the AI safety compliance ecosystem for a generation. Congressional staff, AI developers, and anyone who cares about whether the next frontier breakthrough comes from today's well-capitalized incumbents or tomorrow's well-funded challengers should pay close attention to what Title I actually does.

The short version: the bill's safety goals are legitimate, but the governance design is structurally flawed. By keying its most consequential obligations to a $500 million annual revenue threshold and a training compute ceiling of 10²⁶ floating-point operations, the GAAIA captures today's frontier leaders while exempting their most ambitious challengers — precisely the companies most likely to produce the next generation of capable models. The result is not rigorous frontier governance. It is incumbent protection dressed in technical language.

## What Title I Actually Does

The GAAIA creates a new regulatory tier for "large frontier developers," defined in [the bill's section-by-section summary](https://trahan.house.gov/uploadedfiles/gaaia_discussion_draft_section-by-section.pdf) as any entity with annual gross revenues exceeding $500 million that has trained a foundation model using more than 10²⁶ integer or floating-point operations. This dual threshold is the gateway to a set of substantial obligations.

**Section 111** requires covered developers to publish a "frontier AI framework" addressing catastrophic risk thresholds and assessment procedures, model-weight cybersecurity postures, and deployment decisions. It mandates transparency reports and requires disclosure of "critical safety incidents" to a newly created Center for Artificial Intelligence Standards and Innovation (CAISI). [TechPolicy.Press's detailed analysis](https://www.techpolicy.press/unpacking-the-great-american-artificial-intelligence-act-of-2026/) of the draft notes that elements of these disclosures flow into government records, including a mandated GAO audit of model-weight security postures.

**Section 112** establishes a federal licensing regime for "independent verification organizations" (IVOs) — third-party auditors that large frontier developers must retain to perform semi-annual compliance audits. IVOs would assess the adequacy of a developer's frontier AI framework, governance practices, risk monitoring, and catastrophic risk mitigation. Their findings go to CAISI. Both sections sunset after three years.

The mechanics are straightforward. The structural implications are not.

## Problem One: A Revenue Threshold Is Not a Risk Threshold

The most fundamental design flaw in Title I is its conflation of financial scale with safety risk. The $500 million revenue threshold is administratively legible. As a proxy for which AI systems pose the greatest dangers, it is largely incoherent.

Consider what this threshold captures and what it exempts. Today's frontier labs — the handful of companies that have trained the largest, most capable models and that attract the most serious safety scrutiny — comfortably exceed $500 million in annual revenue. The threshold sweeps them all in. But the next generation of capable frontier developers, which may be building on novel architectures, operating with lean teams on venture capital, or growing rapidly from a smaller revenue base, will sit outside the regulatory perimeter at precisely the moment when they are most rapidly scaling capabilities. The bill covers who is powerful today, not what models can do tomorrow.

This is not a theoretical concern. Capability-to-revenue ratios in AI are notoriously unstable. The research lab that trains the most consequential model of 2028 may have revenues of $200 million in 2026. Under the GAAIA's framework, it would be fully exempt from the catastrophic risk mitigation requirements the bill imposes on its better-capitalized peers — until it has already cleared the $500 million bar, long after the relevant models were developed and deployed.

The resulting competitive dynamic is precisely the opposite of what safety-motivated frontier governance should produce. Well-resourced incumbents, already operating sophisticated internal safety programs, absorb compliance obligations they largely already satisfy. Challengers, who may have thinner safety infrastructure, remain unregulated until they become financially significant — at which point, the regulatory environment they must satisfy was designed around their predecessors.

The compute threshold compounds the problem. The 10²⁶ FLOP ceiling aligns with the threshold established by [Executive Order 14110](https://www.federalregister.gov/documents/2023/11/01/2023-24283/safe-secure-and-trustworthy-development-and-use-of-artificial-intelligence) and used in several proposed regulatory frameworks. But as researchers at [Harvard's Journal of Law and Technology have argued](https://jolt.law.harvard.edu/digest/beyond-flops-shortcomings-of-flops-as-a-model-classification-metric-in-ai-regulation-1), FLOPs are a poor regulatory metric precisely because the relationship between compute and capability is neither stable nor predictable. Algorithmic innovations routinely allow smaller training runs to produce equivalent or superior results. A threshold calibrated to capture today's most capable models will systematically fail to capture tomorrow's equally capable but more efficiently trained ones.

## Problem Two: The Sarbanes-Oxley Trap

Section 112's IVO regime has a well-documented historical analog, and the analogy should concern anyone interested in whether AI safety compliance produces genuine accountability or a credentialed performance of it.

The Sarbanes-Oxley Act of 2002 established mandatory third-party auditing requirements for public companies in the wake of accounting scandals at Enron and WorldCom. The regime was well-intentioned. Its structural consequence was the creation of a highly concentrated certification market. Today, the Big Four accounting firms — Deloitte, EY, PwC, and KPMG — [command 99.7 percent of S&P 500 audit fees](https://www.voronoiapp.com/business/The-Big-Four-Has-a-997-Market-Share-on-SP-500-Audits--926). The audit market did not remain competitive. It collapsed into an oligopoly that functions simultaneously as a regulatory backstop and a barrier to the entry of new certified auditors.

The compliance cost dynamics are equally instructive. A [2025 GAO report on SOX Section 404 compliance](https://www.gao.gov/products/gao-25-107500) found that while larger companies incur higher absolute compliance costs, those costs are *proportionally more burdensome* for smaller firms — a fixed-cost asymmetry that makes compliance-intensive regulation systematically more punishing for new entrants than for established players. Well-resourced incumbents build compliance infrastructure once and amortize it across large revenue bases. Challengers face the same fixed costs against smaller operations.

The IVO framework in Section 112 replicates this architecture. CAISI would license a finite set of third-party verifiers. Semi-annual audits are not cheap; they require specialized expertise that only a small pool of actors currently possesses. The labs that helped write the AI safety evaluation playbook will be best-positioned to absorb these audits quickly and cheaply — and most likely to spin up affiliated entities that qualify as IVOs. New entrants that lack internal safety teams and existing third-party relationships will face disproportionate costs at precisely the moment when they are most financially constrained.

There is also a deeper accountability gap. SOX audits verify compliance with internal control standards; they do not ensure financial integrity. The [RAND Corporation's analysis](https://www.rand.org/pubs/research_briefs/RB9295.html) of SOX's effects on smaller firms raised empirical questions about whether compliance costs justified measurable governance gains. A semi-annual IVO audit verifies that a developer's *framework* meets statutory requirements. It does not verify that the developer's *models* are safe. Process auditing is not a substitute for capability evaluation, and a compliance certificate from a licensed IVO is not a safety guarantee.

## Problem Three: Disclosure as Intelligence Exposure

Section 111's transparency and reporting requirements are designed to give federal overseers visibility into how frontier developers manage their most powerful models. The goal is legitimate. The implementation creates a national security problem.

A GAO-mandated audit of model-weight security postures, documented in CAISI records, does not sit in a hermetically sealed national security compartment. It sits in a federal agency's records system subject to the Freedom of Information Act. A government-maintained registry of model-weight security vulnerabilities — even one that describes protective measures rather than the weights themselves — is an intelligence asset for adversarial state actors, not a consumer protection mechanism.

The Bureau of Industry and Security has recognized this logic in its export control work. BIS [established controls on advanced AI model weights](https://www.federalregister.gov/documents/2025/01/15/2025-00636/framework-for-artificial-intelligence-diffusion) on the grounds that model weight possession enables adversaries to "deploy models without restrictions, modify them for malicious purposes, or study them to develop competing systems." The underlying threat model is sound: information about weight security architecture is nearly as sensitive as the weights themselves, because it identifies the attack surfaces most worth targeting.

There is a workable alternative. Sensitive technical disclosures already have a legislative home: [FOIA Exemption 3](https://www.justice.gov/oip/freedom-information-act-guide/exemption-3) protects information specifically exempted by statute, and Exemption 4 protects confidential commercial and technical information. Congress could design Section 111's disclosure regime to flow exclusively through classified or restricted channels — the model the administration's [June 2 executive order on frontier AI security](https://www.skadden.com/insights/publications/2026/06/new-ai-executive-order) has already applied to CAISI's own frontier model evaluations — rather than into the standard agency records system. The oversight function can be preserved without creating a centralized, FOIA-accessible map of frontier model vulnerabilities.

## Problem Four: Static Thresholds in a Dynamic Field

Perhaps the most technically serious flaw in the GAAIA's frontier framework is the assumption that a hard-coded compute ceiling will function as a meaningful risk proxy over time.

It will not. [Epoch AI's research on inference price trends](https://epoch.ai/data-insights/llm-inference-price-trends) documents that the cost of reaching a given capability benchmark has fallen by between 40 and 200 times per year for frontier models — with price drops since early 2024 accelerating to a median of roughly 200-fold annually. [Epoch AI's analysis of frontier model counts](https://epoch.ai/blog/model-counts-compute-thresholds) projects that models exceeding 10²⁶ FLOPs of training compute will increase from roughly 10 today to more than 80 by 2028 and over 200 by 2030 — meaning the threshold will gradually sweep in less powerful systems as frontier capabilities advance further beyond it.

A threshold calibrated to identify the most capable models in 2026 will, without any congressional action, come to describe a much broader and less risk-homogeneous set of models by 2029. The developers covered by the GAAIA's IVO audit requirement will be a different and larger population than the one the bill's drafters had in mind — again, without any legislative update. Static regulatory thresholds in fast-moving technology domains are not just imprecise; they are self-defeating, because the very progress the field makes degrades the threshold's signal value.

## The Alternative: Capability-Based Governance

Nothing in the preceding analysis implies that frontier AI governance is unnecessary or premature. The argument is the opposite: the stakes are high enough that the governance design must actually work.

A workable design would attach compliance obligations to demonstrated dangerous capabilities rather than balance-sheet scale. The [NIST AI Risk Management Framework](https://www.nist.gov/publications/artificial-intelligence-risk-management-framework-ai-rmf-10), released in January 2023 and supplemented by [NIST AI 600-1's Generative AI Profile](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.600-1.pdf) in July 2024, provides a rigorous scaffolding for exactly this kind of capability-profiling. CBRN information hazards are the first of AI 600-1's twelve risk categories — and [research quantifying CBRN uplift potential in frontier models](https://arxiv.org/pdf/2510.21133) demonstrates that these evaluations are technically feasible today.

Specifically, Congress should consider:

**Capability-based triggers.** Compliance obligations should attach when a model demonstrates specific hazardous capabilities — CBRN uplift beyond a defined threshold, sustained deception of evaluators, or autonomous replication and resource acquisition. These triggers are technically demanding to define, but they are substantially more durable than revenue or compute proxies, and they apply equally to all developers regardless of financial scale.

**Tiered and graduated requirements.** Not every frontier model poses the same catastrophic risk profile. A tiered framework — light-touch transparency requirements for broadly capable models, heavier evaluation obligations for models that approach specific hazard thresholds — would distribute compliance costs proportionately to demonstrated risk rather than balance-sheet scale.

**Restricted-channel disclosure.** Section 111's transparency requirements should be redesigned to flow through protected channels analogous to those used for export-controlled technical data. The oversight function is preserved; the adversarial intelligence-collection risk is mitigated.

**Adaptive thresholds with mandatory review.** If Congress retains compute thresholds at all, they should be indexed to Epoch AI or equivalent tracking data and subject to mandatory administrative review every eighteen months, with automatic adjustment or Congressional reauthorization requirements when frontier capability levels materially shift.

## Conclusion: Redesign Title I, Don't Abandon It

The GAAIA's frontier governance framework reflects a genuine and serious policy aspiration: ensuring that the developers of the most capable AI systems in the world maintain accountability structures proportionate to the risks they create. That aspiration deserves a governance design worthy of it.

The current design falls short. Revenue and compute thresholds are blunt proxies for risk that happen to align almost perfectly with the current frontier market structure — capturing today's most powerful and well-resourced players while exempting the challengers most likely to define the next phase of capable AI development. Mandatory IVO audits will spawn a certification market with the same structural dynamics as post-SOX financial auditing: a small number of licensed verifiers, disproportionate fixed costs for new entrants, and compliance theater that substitutes for genuine safety accountability. Model disclosure requirements, as currently designed, create a national security liability. And static compute thresholds will degrade as a risk signal over exactly the period when they are most consequential.

The stakeholder feedback period on the GAAIA discussion draft — directed to GAAIA@mail.house.gov by Obernolte and Trahan's offices — closes imminently. Industry commenters, AI safety researchers, and technology law practitioners all have an interest in ensuring that the formal introduction of this legislation reflects a more rigorous governance design. The window to influence that design is narrow.

Congress should not abandon Title I. It should rebuild its compliance triggers from first principles — grounding frontier developer obligations in demonstrated capability risk, not the ability to read a balance sheet.

---

*ThinkBot is an AI-powered policy research organization. This brief reflects the views of the AI Policy Fellow and does not constitute legal advice. The Great American AI Act remains a discussion draft; all statutory references reflect the June 4, 2026 version.*
