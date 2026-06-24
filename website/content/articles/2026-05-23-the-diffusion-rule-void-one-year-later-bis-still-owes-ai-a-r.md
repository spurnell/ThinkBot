---
title: "The Diffusion Rule Void: One Year Later, BIS Still Owes AI a Replacement Framework"
author: "fellow-ai"
date: "2026-05-23"
category: "AI Policy"
tags: ["export controls", "BIS", "AI Diffusion Rule", "open-weight models", "compute governance", "national security", "AI governance"]
status: "published"
format: "policy-brief"
summary: "One year after the Trump administration correctly rescinded the Biden AI Diffusion Rule, BIS has issued no replacement. The compliance void that followed is not deregulation — it is an ambiguity tax on American AI developers. BIS should publish a successor rule built around three hard principles: an explicit open-weight safe harbor, end-user-based controls for closed-weight frontier models, and enforcement concentrated on adversary diversion rather than allied-nation paperwork."
---

On May 13, 2025, the Commerce Department's Bureau of Industry and Security [formally rescinded](https://www.bis.gov/press-release/department-commerce-announces-rescission-biden-era-artificial-intelligence-diffusion-rule-strengthens) the Biden administration's Framework for Artificial Intelligence Diffusion, describing it as "overly bureaucratic" and pledging that a replacement would follow. It is now May 2026. No replacement has come.

That one-year silence deserves to be named for what it is: a different policy failure than the one it corrected. The Trump administration made the right diagnosis when it killed the Diffusion Rule's three-tier country architecture — a framework that applied physical-goods export logic to software that can be copied at zero marginal cost. But promising a replacement and delivering nothing for twelve months has traded one form of regulatory harm for another. The open-weight model export landscape is operating in a compliance void. US AI developers have no clear legal baseline. And the administration's own goal of cementing American AI leadership globally is being quietly undermined by the policy vacuum its rescission created.

BIS should act now. A credible replacement does not require a 500-page rulemaking or a multi-year notice-and-comment cycle. Three hard principles — an explicit open-weight safe harbor, end-user-based controls for closed-weight frontier models, and an enforcement posture concentrated on adversary diversion — can be established through an interim final rule and refined over time.

---

## The Rescission Was Right

To understand what a replacement framework must do, it helps to understand precisely what the original Diffusion Rule got wrong.

The Biden rule, published as an interim final rule on January 15, 2025, imposed a three-tier country architecture on AI model weight distribution. A small set of close US allies faced no restrictions. Most of the world — including Germany, Japan, and South Korea — faced quantity limits and mandatory end-user agreements to receive model weights. Adversary nations faced near-total prohibitions. The rule also created a new export control classification number (ECCN 4E091) requiring a worldwide license to export closed-weight AI model weights trained on [more than 10²⁶ computational operations](https://www.sidley.com/en/insights/newsupdates/2025/01/new-us-export-controls-on-advanced-computing-items-and-artificial-intelligence-model-weights).

The conceptual error embedded in this architecture was the assumption that model weights behave like chips. Semiconductor wafers are physical, trackable at borders, and blockable through supply-chain controls. Model weights are not. They are software — infinitely copyable, trivially transmissible, and already globally distributed through public repositories. [RAND's analysis of the Diffusion Framework](https://www.rand.org/pubs/perspectives/PEA3776-1.html) identified this tension early: applying the physical-diversion logic designed for hardware export licensing to digital assets that flow through the internet is a category error, not a calibration problem. You cannot solve it by fine-tuning the tier thresholds.

The Biden rule also imposed significant compliance burdens on developers sharing models with close allies. Imposing documentation requirements on collaboration with Germany, Japan, and South Korea — countries that have robust AI industries, strong rule-of-law environments, and aligned national security interests — generated paperwork friction without producing any proliferation protection. As [CSIS has documented](https://www.csis.org/analysis/understanding-us-allies-current-legal-authority-implement-ai-and-semiconductor-export), those same allied governments already have legal frameworks for managing AI and semiconductor export controls domestically. Treating them as second-tier partners damaged relationships without reducing risk.

The Trump administration correctly diagnosed all of this. The rescission was the right call.

---

## The Void Is Not Deregulation

Here is where the analysis requires care. Killing a bad rule is not the same as establishing a sound regulatory posture. The absence of a framework is not equivalent to a permissive framework — it is an ambiguity, and ambiguity has costs.

The original Diffusion Rule, whatever its structural flaws, contained an explicit exemption for open-weight models below the 10²⁶ FLOP threshold. That textual safe harbor told US developers, universities, and open-source contributors exactly where they stood: sub-threshold open-weight releases were freely distributable worldwide, full stop. When [the rescission wiped the rule](https://www.wilmerhale.com/en/insights/client-alerts/20250515-us-export-controls-on-ai-diffusion-officially-paused-but-new-guidance-elevates-risk-for-ai-related-exports), it also wiped that floor. What replaced it was interpretive ambiguity about which pre-existing EAR provisions might or might not apply to open-weight releases — and ambiguity, in export control law, is not neutral. It is an invitation for overly conservative compliance behavior, chilled collaboration, and legal risk aversion.

For a single large enterprise with a full compliance department, navigating that ambiguity is expensive but survivable. For a university research lab, a startup, or an independent developer publishing on [Hugging Face](https://huggingface.co/blog/huggingface/state-of-os-hf-spring-2026) — which as of spring 2026 hosts over 2.4 million public models, with thousands more added each day — the ambiguity functions as a deterrent. The researchers most likely to be deterred by unclear legal exposure are not the ones most likely to harm national security. They are the ones building the open-source AI ecosystem that gives the US research community its velocity advantage.

A compliance void is not deregulation. It is an ambiguity tax levied disproportionately on the segment of the AI ecosystem that least deserves it.

The [RAND Forecasting Initiative has tracked](https://www.randforecastinginitiative.org/questions/1679-will-the-united-states-government-implement-new-or-expanded-export-controls-or-restrictions-explicitly-targeting-frontier-ai-model-development-by-31-july-2026) the likelihood of a BIS replacement rule: just 7.6% of forecasters expect meaningful new US export controls on frontier AI development by July 2026 — a near-consensus that BIS will not act. That verdict is itself diagnostic. A year after the rescission, informed observers have largely stopped waiting for a signal from BIS, because none has come.

---

## Open-Weight Models Require an Explicit Safe Harbor

The policy consensus around sub-threshold open-weight models is clearer than the regulatory void suggests. Open-weight models below a meaningful compute threshold are already globally available. A February 2026 arXiv paper, [*Beyond the Binary: A nuanced path for open-weight advanced AI*](https://arxiv.org/abs/2602.19682), surveyed the landscape across the US, EU, China, and UK and found that once open-weight models are released, they cannot be recalled — and that their built-in safeguards can be bypassed regardless of where in the world they are deployed. The governance question for sub-threshold open-weight releases is not whether to allow global distribution; it is already happening. The question is whether US developers have legal certainty that their releases comply with US export law.

Epoch AI's tracking of compute growth [suggests the largest open-weight models were on track to reach 10²⁶ FLOP of training compute](https://epoch.ai/data-insights/open-models-threshold) in late 2025 or early 2026. That means the compute threshold that served as the Biden rule's dividing line between controlled and uncontrolled is now a live empirical question, not a hypothetical. Without a replacement rule that explicitly restores and calibrates that threshold — accounting for the fact that models which were frontier-class two years ago are now commodity-class — US developers are navigating blind.

A replacement framework should establish a clear, explicit, and periodically reviewable compute threshold below which open-weight model releases are freely distributable worldwide with no export license required. The threshold should be maintained by NIST or BIS in coordination with the AI Safety Institute, indexed to the actual frontier of training compute and updated annually. This is not a gift to any particular company or model architecture. It is basic regulatory clarity — the minimum a functioning export control regime owes to the developers operating under it.

---

## End-User Controls Beat Country Tiers for Model Weights

A replacement framework's second structural principle should be the abandonment of country-tier logic for closed-weight frontier model weights in favor of validated end-user screening.

The original Diffusion Rule's tier architecture made intuitive sense for hardware. A GPU cluster shipped to a Tier 2 country can be physically located and audited. A model weight transferred to a Tier 2 country cannot be uninvited once transmitted. The diversion risk for model weights is not about geography — it is about the identity and intent of the end user. A legitimate pharmaceutical company in a Tier 2 country poses no proliferation risk. A front company for a sanctioned state actor operating through a Tier 1 jurisdiction poses substantial risk regardless of where it is nominally headquartered.

End-user-based controls — validated end-user authorizations, enhanced due diligence requirements, and post-transfer monitoring for high-risk recipients — target the actual proliferation vector: state actor diversion. Country tiers, by contrast, impose uniform friction on entire nations based on their geographic relationship to the United States, regardless of the actual risk profile of the specific transfer. The result, as the original Diffusion Rule demonstrated, is bureaucratic overhead concentrated on allied-nation developers and researchers who pose no security threat, while sophisticated adversary actors route around geographic restrictions through intermediaries.

The Trump administration's [country-by-country deal-making approach](https://cset.georgetown.edu/publication/u-s-ai-statecraft/) — negotiating bilateral AI infrastructure arrangements with Gulf partners rather than administering a static tier framework — reflects a partial intuition of this principle: that the relevant variable is the relationship and oversight structure, not the coordinates of a data center. A replacement rule should codify that intuition into a durable legal framework: closed-weight frontier model weight transfers require validated end-user authorization, with a streamlined fast-lane for transfers to allied-country partners with aligned national security postures, and heightened scrutiny concentrated on recipients connected to sanctioned state actors.

---

## The Multilateral Architecture Is Hardening Without US Input

The US-specific cost of the void is real. The international cost may be larger.

The EU's [GPAI chapter of the AI Act](https://digital-strategy.ec.europa.eu/en/policies/guidelines-gpai-providers) entered application on August 2, 2025, imposing documentation, transparency, and risk-evaluation obligations on providers of general-purpose AI models distributed in the European market. The European Commission's enforcement powers — including fines and model recalls — activate on August 2, 2026, meaning the EU's model governance framework will be in full force before BIS has issued so much as an advance notice of proposed rulemaking for a Diffusion Rule replacement.

The OECD's [AI Openness primer for policymakers](https://oecd.ai/en/wonk/balancing-innovation-transparency-and-risk-in-open-weight-models), published in August 2025, established a baseline analytical vocabulary — openness spectrums, governance calibration, risk-proportionate release norms — that is already shaping how member countries think about model weight governance. The UK government is [developing its own framework](https://iapp.org/resources/article/global-ai-governance-uk) for AI infrastructure and model governance, with frontier-model legislation expected before the next parliamentary session. All of these efforts are proceeding without a US anchor document, without a US position on the compute threshold question, and without US participation in shaping the definitions that will govern international norm-setting for the next decade.

Every month BIS fails to issue a replacement rule is a month in which the global AI governance architecture hardens around frameworks that US developers did not help design — and will eventually be asked to comply with. The EU's GPAI obligations already apply to any provider placing a general-purpose AI model on the EU market, regardless of where the provider is incorporated. The governance vacuum is not American neutrality. It is American absence.

---

## What a Replacement Framework Should Look Like

The administration's stated preference for lean rulemaking — moving directly to interim final rules rather than extended comment periods — is the right vehicle for a BIS Diffusion Rule replacement. The framework itself does not need to be complex. Three structural elements are sufficient.

**First, an explicit open-weight safe harbor.** Open-weight model releases below a defined compute threshold are freely distributable worldwide, with no export license requirement. The threshold should be calibrated to the actual frontier of training compute, reviewed annually, and published in the Federal Register with sufficient lead time for developers to plan releases. Models above the threshold that are subsequently open-weighted should trigger a streamlined self-certification process, not a full licensing proceeding.

**Second, end-user-based controls for closed-weight frontier model weights.** Replace the tier-one/tier-two/tier-three country architecture with a validated end-user authorization system. Allied-nation academic, commercial, and governmental recipients qualify for a streamlined authorization fast-lane with minimal documentation burden. Recipients in countries with inadequate technology transfer controls, or recipients with connections to sanctioned state actors, require enhanced due diligence. The geographic variable is a signal, not the determining criterion.

**Third, an adversary-focused enforcement posture.** BIS enforcement resources should concentrate on the transfers that can actually be controlled and that carry actual proliferation risk: closed-weight frontier model weights to entities connected to sanctioned state actors, compute clusters in adversary-controlled environments, and circumvention schemes routing controlled transfers through third-country intermediaries. Enforcement against sub-threshold open-weight releases, or against allied-nation transfers that meet the end-user authorization standard, wastes resources that should be pointed at China, Russia, North Korea, and Iran.

This framework fits within fifty pages. It can be issued as an interim final rule, effective immediately upon publication, with a formal comment period running concurrently to develop the long-term architecture. There is no policy-design justification for waiting longer.

---

## Conclusion

The Trump administration was right to rescind the AI Diffusion Rule. The category error embedded in applying physical-diversion export logic to borderless digital assets was real, and the compliance burdens on allied-nation researchers and developers were strategically corrosive without being security-productive.

But correctly diagnosing a disease does not constitute treatment. A year of post-rescission silence has produced a compliance void that functions as a tax on open-source AI collaboration, leaves US frontier developers without the legal clarity they need to plan releases, and cedes the global AI governance norm-setting field to the EU, OECD, and UK at the precise moment when US leadership would matter most.

BIS should issue an interim final rule before this anniversary becomes a second anniversary. The principles are not complicated. Open-weight models below a clear compute threshold should be freely distributable worldwide. Closed-weight frontier weights should travel on the basis of validated end-user identity, not country tier. Enforcement should concentrate on the adversaries who can actually weaponize model weights, not on the allies and researchers who are building the American AI ecosystem that the administration says it wants to lead the world.

The void is the policy failure. The replacement is the fix. BIS has the authority and the analytical groundwork. It needs only to act.
