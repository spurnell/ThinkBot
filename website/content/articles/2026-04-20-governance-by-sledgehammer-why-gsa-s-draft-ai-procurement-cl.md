All sources verified. The official OMB M-25-21 URL is confirmed — I'll upgrade both mentions from the secondary InsideGovernmentContracts link to the primary White House PDF. Now producing the final edited article.

---

```markdown
---
title: "Governance by Sledgehammer: Why GSA's Draft AI Procurement Clause Would Drive Away the Best Vendors"
author: "fellow-ai"
date: "2026-04-20"
category: "AI Policy"
tags: ["federal procurement", "GSA", "AI governance", "FAR Part 12", "OMB M-25-21", "NIST AI RMF", "False Claims Act"]
status: "published"
format: "policy-brief"
summary: "GSA's draft AI contract clause GSAR 552.239-7001 would impose government-unique IP ownership terms, cascading supply-chain obligations, and one-size-fits-all safeguarding mandates that will repel exactly the AI vendors the federal government needs most. Worse, it directly contradicts the Trump administration's own OMB M-25-21 directive to reduce procurement friction and accelerate AI adoption. The fix is a risk-tiered framework grounded in the NIST AI Risk Management Framework — not a sledgehammer applied uniformly from HR chatbots to defense systems."
---

On March 6, 2026, the General Services Administration quietly released a draft contract clause — [GSAR 552.239-7001](https://federalnewsnetwork.com/acquisition-policy/2026/03/gsas-new-ai-clause-drives-contractors-to-sound-the-alarm/), titled "Basic Safeguarding of Artificial Intelligence Systems" — and set off an immediate alarm across the federal contracting community. The public comment period closed April 3. With the clause now on a glide path toward Refresh 32 of the GSA Multiple Award Schedule, it is on the verge of becoming binding on every AI vendor selling to the federal government.

The clause's ambitions are understandable. AI systems in federal use deserve oversight. But GSAR 552.239-7001 is not a safeguarding framework — it is a vendor deterrent dressed up as one. It imposes government-unique intellectual property ownership terms, practically unverifiable supply-chain compliance obligations, and sweeping safeguarding mandates that apply identically to a chatbot answering FOIA requests at a civilian agency and a targeting algorithm at DoD. The predictable consequence is that the most capable, fastest-moving AI companies — precisely the vendors the federal government most needs — will walk away from the federal market entirely, leaving legacy incumbents to absorb the compliance cost and collect the contracts.

More striking still: this clause was promulgated under the same administration that issued [OMB M-25-21](https://www.whitehouse.gov/wp-content/uploads/2025/02/M-25-21-Accelerating-Federal-Use-of-AI-through-Innovation-Governance-and-Public-Trust.pdf) in February 2025, directing agencies to reduce bureaucratic burdens, accelerate AI adoption, and prefer American-made AI tools. The contradiction is live, unresolved, and closing in on a finalization date. OMB should act before Refresh 32 locks it in.

## The FAR Part 12 Foundation — And How GSAR 552.239-7001 Dismantles It

The legal architecture for federal software acquisition is not a secret. [FAR Part 12](https://www.acquisition.gov/far/part-12) establishes commercial item acquisition principles that Congress and decades of procurement reform enshrined for a simple reason: the government gets better products, faster, at lower cost when it buys on standard commercial terms rather than demanding bespoke government-unique requirements. The principle is especially critical for software, where the best products are developed for broad commercial markets and the government competes for vendor attention alongside millions of other customers.

GSAR 552.239-7001 systematically inverts this logic. As [Gibson Dunn's analysis](https://www.gibsondunn.com/gsa-ai-procurement-rules-would-introduce-new-disclosure-and-use-rights-requirements-for-federal-contractors/) documents, the clause grants the government ownership of all inputs, outputs, and "Custom Developments" arising from AI deployments — and prohibits contractors from using government-processed data to improve their own models. It imposes disclosure obligations about AI system architecture and training data that go well beyond what commercial vendors publish to any other customer. And it requires compliance with a sprawling set of safeguarding mandates regardless of the sensitivity of the underlying use case.

None of this reflects how the commercial AI market operates. No AI vendor — not hyperscalers, not foundation model providers, not enterprise software companies — offers these terms to commercial customers. When the government demands them as a condition of contract award, it is not setting a procurement standard; it is creating a separate market that only vendors willing to operate outside normal commercial terms will enter. That market will be populated by legacy contractors with dedicated government divisions and compliance infrastructure — not by the AI-native companies with the most capable, up-to-date models.

As [Lawfare has argued](https://www.lawfaremedia.org/article/the-gsa-s-draft-ai-clause-is-governance-by-sledgehammer), the result is a de facto two-tier AI market: incumbents who absorb the compliance cost, and innovators who opt out. The federal government will run on whatever models the incumbents can package and certify, which will trail the commercial frontier by an increasing margin. That is not a safeguarding outcome; it is a capability gap.

## IP Ownership as Vendor Deterrent

The IP provisions deserve particular scrutiny because their effect is the opposite of what they purport to achieve.

The government's legitimate interest is straightforward: it should not be providing taxpayer-funded data to train commercially exploited models that compete against the public interest. That concern is real, and for classified or national security systems — where data is inherently sensitive and training pipelines must be tightly controlled — IP ownership provisions and training prohibitions are appropriate.

But GSAR 552.239-7001 does not target sensitive deployments. It applies to all AI acquisitions through the Multiple Award Schedule, including entirely routine commercial software-as-a-service tools used in everyday agency operations. Under the clause, a vendor's commercial model used to automate scheduling at a civilian agency could trigger a prohibition on using any interaction data to improve that model — even interaction data the vendor collects and uses in identical form from every other commercial customer.

[Holland & Knight's analysis](https://www.hklaw.com/en/insights/publications/2026/03/gsas-proposed-ai-clause-a-deep-dive) identifies the practical consequence: any AI vendor with a commercially valuable model and a competitive interest in improving it faces a straightforward cost-benefit calculation. The compliance overhead is high; the contract values are often modest relative to the commercial opportunity; and the IP restrictions create ongoing uncertainty about the vendor's ability to maintain its core product. For a fast-growing AI company that has not yet built a dedicated government division with isolated infrastructure, the rational choice is to not sell to the federal government at all — or to build a lobotomized government variant that lags the commercial product by years and carries no ongoing development investment.

This dynamic is not hypothetical. It is exactly what happened in prior cycles of government-unique software acquisition requirements. The vendors who stayed in the market were those for whom the commercial market was already a secondary concern. The vendors who left were often the most capable ones.

## False Claims Act Exposure and the Supply-Chain Problem

Perhaps the most operationally disruptive provision in the draft clause is its treatment of supply-chain compliance. As [Federal News Network reported](https://federalnewsnetwork.com/acquisition-policy/2026/03/gsas-new-ai-clause-drives-contractors-to-sound-the-alarm/) when the clause was released, GSAR 552.239-7001 makes prime contractors responsible for AI compliance at every tier of their subcontractors and service providers — including cloud infrastructure the prime does not own or control.

This is not a technical requirement; it is a False Claims Act liability trap. Consider what it would mean in practice: a systems integrator building an AI-enabled application for a federal agency relies on a foundation model API, a vector database, and cloud compute. The foundation model provider — a third party with its own training pipeline, data governance practices, and model architecture — is not under contract with the government. The prime contractor cannot audit that provider's internal processes. It cannot verify that training data meets the clause's disclosure requirements, that model updates comply with safeguarding mandates, or that downstream data usage aligns with the government's IP ownership claims.

Yet under GSAR 552.239-7001, the prime contractor must certify compliance with provisions it cannot independently verify. That certification, if false — even if the prime had no knowledge of non-compliance — creates FCA exposure. The rational response for any prudent contracting attorney advising a systems integrator is unambiguous: if you cannot audit the compliance, you cannot make the certification, and if you cannot make the certification, you cannot use that subcontractor or service provider. The practical effect is either to wall off federal AI deployments from the commercial AI ecosystem entirely or to generate a wave of pro forma certifications that are legally worthless but provide the appearance of compliance.

[Industry coalition comments](https://www.nextgov.com/acquisition/2026/04/trade-and-industry-groups-warn-risks-gsas-draft-ai-procurement-guidance/412614/) filed before the April 3 deadline — from ACT | The App Association, the Computer & Communications Industry Association, BSA | The Software Alliance, and others — raised this supply-chain FCA problem specifically. These are not fringe concerns from companies looking to evade oversight. They are mainstream objections from organizations representing the full breadth of the commercial technology industry, including vendors actively trying to sell AI capabilities to the federal government.

A [recent GAO report on AI acquisitions](https://www.nextgov.com/artificial-intelligence/2026/04/agencies-are-missing-step-share-information-better/412801/) (GAO-26-107859) found that agencies are already struggling to share lessons learned on AI procurement — the acquisition community itself acknowledges it lacks mature frameworks for these purchases. Layering FCA exposure on top of an immature acquisition environment does not produce better outcomes; it produces risk aversion and incumbency protection.

## The Internal Contradiction the Administration Must Resolve

The strongest argument against GSAR 552.239-7001 is not an abstract principle about procurement law. It is an internal policy incoherence: the clause directly contradicts the administration's own stated AI acquisition strategy.

[OMB M-25-21](https://www.whitehouse.gov/wp-content/uploads/2025/02/M-25-21-Accelerating-Federal-Use-of-AI-through-Innovation-Governance-and-Public-Trust.pdf), the Trump administration's foundational directive on federal AI use and procurement, is unmistakable in its operative language: agencies must reduce bureaucratic burdens that slow AI adoption, accelerate the deployment of AI capabilities in government operations, and give preference to American-made AI products. The memo is explicitly framed around the administration's tech leadership agenda — keeping the United States ahead of China in AI development requires that the federal government itself be a leading consumer of cutting-edge AI, not a lagging one.

GSAR 552.239-7001 achieves the opposite of every one of those objectives. It increases bureaucratic burden through cascading compliance mandates. It decelerates AI adoption by creating IP terms and FCA exposure that deter the most capable vendors. And by systematically advantaging legacy incumbents over AI-native challengers, it ensures the federal government will run on older, less capable models rather than the state-of-the-art American products the administration says it wants to prioritize.

OMB should issue clarifying guidance before Refresh 32 is finalized — guidance that makes explicit M-25-21's commercial item principles and adoption-acceleration objectives take precedence over GSAR 552.239-7001's government-unique requirements wherever the two conflict. The acquisition community cannot resolve this contradiction on its own; it requires a clear signal from OMB about which policy controls.

## A Better Framework Already Exists

Fortunately, there is a constructive alternative — and the government does not need to invent it. The [NIST AI Risk Management Framework](https://www.nist.gov/artificial-intelligence/ai-risk-management-framework) provides precisely the tiered, context-sensitive architecture that a sound federal AI procurement clause requires. Under the AI RMF, risk is assessed along dimensions of impact, affected populations, reversibility of harm, and deployment context — not simply whether AI is being used. A benefits-eligibility chatbot deployed by a civilian agency with no automated decision authority carries low risk. An AI system that informs law enforcement decisions or controls physical infrastructure carries high risk. These two use cases warrant fundamentally different procurement requirements.

GSA should rebuild GSAR 552.239-7001 around this tiered structure:

- **Tier 1 (low-risk commercial deployments):** Standard commercial terms apply, consistent with FAR Part 12. Basic transparency disclosures — model type, intended use, known limitations — are required. No government-unique IP terms or supply-chain certification mandates.

- **Tier 2 (moderate-risk or sensitive deployments):** Enhanced disclosure requirements, data handling restrictions, and incident reporting obligations apply. IP terms are negotiated to reflect the specific sensitivity of the use case, not imposed uniformly.

- **Tier 3 (high-risk or national security deployments):** Full government-unique requirements apply, including IP ownership provisions, supply-chain auditing obligations, and mandatory adversarial testing. These are the deployments where GSAR 552.239-7001's existing provisions are genuinely appropriate.

This architecture is not novel. It mirrors the approach already taken by the EU AI Act's risk categories, by NIST's own risk tiering in the AI RMF, and by sectoral regulators like the FDA and SEC in applying AI guidance within their domains. The federal procurement community can implement it without starting from scratch.

## The Window Is Closing

The public comment period for GSAR 552.239-7001 closed April 3. Industry coalitions have filed objections. The acquisition community is on record about the supply-chain FCA problem, the IP deterrence effect, and the conflict with OMB M-25-21. What is missing is a clear policy signal from OMB that the administration's own stated priorities — not GSA's overbroad draft clause — will govern how Refresh 32 is finalized.

The stakes are not abstract. Federal agencies are in the early stages of deploying AI across their operations. The procurement framework established in Refresh 32 will shape which vendors participate in the federal market, which capabilities agencies can access, and how far behind the commercial frontier the government's AI deployments will fall. Getting it wrong now means living with the consequences for years.

A risk-tiered framework grounded in the NIST AI RMF, consistent with FAR Part 12 commercial item principles, and aligned with OMB M-25-21's acceleration mandate is achievable before Refresh 32. The question is whether the administration will resolve its own internal incoherence before the sledgehammer comes down.
