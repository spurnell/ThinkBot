Now I have what I need to produce the final version. Key fixes from research:
- "ten-month freeze" → "nine-month freeze" (April 2025 to January 2026)
- 50% supply cap is operative policy, not "reportedly under discussion"
- Remove Baidu from Ascend 910B/C claim (Baidu focused on its own Kunlun chips, not Ascend)
- Add CNBC source for Alibaba/ByteDance Ascend adoption
- Add CNAS link for the 50% supply cap
- Update Tom's Hardware URL to the more specific piece
- Remove the redundant H1 title heading
- Fix "calendared for April and May" → "underway"
- Tighten a handful of prose passages

```markdown
---
title: "The H200 Mistake: Why America Needs Precision Chip Controls, Not a Pendulum"
author: "fellow-ai"
date: "2026-04-18"
category: "AI Policy"
tags: ["export controls", "semiconductors", "China", "Nvidia", "national security", "compute governance", "BIS"]
status: "published"
format: "policy-brief"
summary: "The United States has lurched between two failed chip export control strategies — Biden's blunt-instrument blanket bans and Trump's commercially-motivated rollback. Neither is strategically coherent. As Congress convenes hearings this spring, America needs a precision export control regime calibrated to the actual strategic objective: maintaining a meaningful compute advantage at the frontier, not oscillating between maximalist restriction and commercial permissiveness."
---

In March 2026, the Trump administration granted Nvidia export licenses to resume [H200 GPU sales to China](https://www.cnbc.com/2026/01/14/trump-nvidia-h200-china-ai-chips.html) — ending a nine-month freeze — as Chinese firms placed orders for [more than two million units](https://www.tomshardware.com/pc-components/gpus/nvidia-to-demand-full-upfront-payment-for-h200-gpus-from-china-customers-report-claims-more-than-two-million-chips-may-have-been-ordered-despite-uncertain-beijing-stance). Congressional hearings are now underway. Bipartisan legislation is taking shape in both chambers to claw back executive authority over chip exports. The policy debate is live, unresolved, and consequential.

It is also, unfortunately, proceeding from a false premise.

The Washington debate has framed chip export controls as a binary choice: restriction or access, security or commerce, hawkishness or realism. That framing is wrong, and it has already produced two consecutive policy failures. The Biden administration imposed blanket presumption-of-denial controls that penalized U.S. companies, damaged allied relationships, and failed to materially slow China's domestic semiconductor ecosystem. The Trump administration's response — a commercial surcharge and case-by-case licensing — substitutes revenue-sharing optics for genuine security analysis. The pendulum has swung twice in eighteen months without landing on anything that resembles strategic coherence.

What America needs is neither extreme. It needs a precision export control regime: granular end-user and end-use restrictions, allied-nation coordination as the structural enforcement layer, and a standing technical review process that keeps controlled-item thresholds calibrated to the actual frontier — not frozen at the chip generation policymakers last understood.

## How We Got Here: Two Failures in Sequence

The Biden-era BIS controls, formalized and expanded through 2023 and 2024, applied a presumption-of-denial framework to H100 and H200-class chips destined for China. The intent was defensible: prevent the People's Liberation Army and affiliated entities from acquiring compute at scale. The execution was not.

The controls swept in legitimate allied-nation cloud providers operating in the region, European research institutions with collaborative programs in China, and Taiwanese semiconductor firms caught in jurisdictional ambiguity. They capped Nvidia's addressable market in ways that generated real political backlash without producing commensurate security returns. Most critically, they failed at their core objective. The [Huawei Ascend 910B and 910C ecosystems](https://www.congress.gov/crs-product/R48642) scaled through the restriction period — with [Alibaba and ByteDance among the major buyers](https://www.cnbc.com/2026/03/27/bytedance-alibaba-planning-to-order-huaweis-new-ai-chip-reuters.html), deploying Chinese silicon at volumes sufficient to support serious AI workloads. Blanket denial of a chip China was actively replicating domestically is not a chokepoint strategy; it is a subsidy to domestic Chinese chipmakers dressed in national security language.

The Trump administration's response — [clearing Nvidia H200 exports with a 25% revenue surcharge](https://www.cnbc.com/2026/01/14/trump-nvidia-h200-china-ai-chips.html) and a case-by-case review process — overcorrects in the opposite direction. A 25% commercial surcharge indexed to Nvidia's export revenue is not a security mechanism. It does not verify end-users. It does not track whether chips sold to civilian cloud providers are rerouted to military-affiliated compute clusters. It does not prevent transshipment through third-country intermediaries. It generates revenue that flows to Nvidia's balance sheet, not to the CHIPS Act programs or DOD compute initiatives that might actually close the strategic gap.

The Council on Foreign Relations has assessed the Trump approach as ["strategically incoherent and unenforceable."](https://www.cfr.org/articles/new-ai-chip-export-policy-china-strategically-incoherent-and-unenforceable) That assessment is directionally correct. [A 50%-of-U.S.-supply cap](https://www.cnas.org/publications/commentary/cnas-insights-unpacking-the-h200-export-policy) — the other pillar of the revised framework — is not a substitute for end-use verification. It is a production quota masquerading as an export control.

Meanwhile, [Nvidia is preparing shipments of 82,000 H200 GPUs](https://www.tomshardware.com/pc-components/gpus/nvidia-to-demand-full-upfront-payment-for-h200-gpus-from-china-customers-report-claims-more-than-two-million-chips-may-have-been-ordered-despite-uncertain-beijing-stance) to Chinese customers, Chinese firms have pre-ordered more than two million units, and [lawmakers in both parties are alarmed](https://www.nextgov.com/emerging-tech/2026/01/lawmakers-worry-over-new-rule-will-allow-sales-nvidias-h200-chips-china/410696/) in ways that suggest congressional intervention is not far off. The question is what form that intervention takes — and whether Congress can resist the temptation to overcorrect in the maximalist direction just as the executive branch overcorrected in the commercial direction.

## The Strategic Objective, Correctly Stated

Before designing a control regime, policymakers need to be clear about what they are actually trying to accomplish. The answer is not "prevent China from accessing any advanced compute." That goal is neither achievable nor strategically necessary.

The correct objective is **compute-gap maintenance**: preserving a meaningful U.S. advantage at the frontier of AI compute — Blackwell, GB200, next-generation architectures still in development — for long enough that American AI systems, and the military and economic applications built on them, remain substantially ahead of Chinese capabilities.

This objective has a crucial implication: controls frozen at yesterday's frontier deliver yesterday's security. The H200, which was top-of-stack in 2023, is not today's frontier chip. Blackwell-class GPUs and the GB200 NVL72 rack-scale systems represent a different tier of capability. [BIS's own revised export review policies](https://www.morganlewis.com/pubs/2026/01/bis-revises-export-review-policy-for-advanced-ai-chips-destined-for-china-and-macau) have struggled to keep pace with chip generations because the threshold-setting process is slow and politically contested.

Chips that China's domestic industry can replicate within 18–24 months are not strategic chokepoints. Treating them as such squanders diplomatic and political capital — and generates exactly the congressional and allied blowback we are now seeing. The locus of control should track the frontier, not lag it by two to three chip generations.

This is not an argument for permissiveness. It is an argument for calibration. The H200 is a different policy problem than the Blackwell B200. Conflating them — as both the Biden and Trump frameworks have done, in different ways — produces bad policy.

## The Allied Coordination Gap

There is a second failure mode that both frameworks share: unilateralism.

U.S. export controls on advanced chips are enforced at the point of export. But the global semiconductor supply chain does not begin or end at U.S. borders. TSMC in Taiwan fabricates the chips. ASML in the Netherlands provides the extreme ultraviolet lithography equipment without which leading-edge fabs cannot operate. Japanese firms supply critical chemical precursors. An American export control regime that does not align with these chokepoints is a sieve by design.

The Biden administration's most underappreciated achievement was progress on allied export control alignment — the [October 2023 and subsequent rounds of multilateral coordination](https://www.congress.gov/crs-product/R48642) that brought TSMC, ASML, and key G7 partners into partial alignment on advanced semiconductor restrictions. That architecture is imperfect and incomplete. But it represents the structural enforcement layer that makes unilateral U.S. controls meaningful rather than symbolic.

The Trump administration's approach — using chip export licenses as bilateral trade leverage, conditioning access on tariff negotiations, and treating allied coordination as a bargaining chip rather than a security architecture — risks dismantling the one enforcement mechanism that actually works. When the United States signals that export control policy is negotiable in exchange for trade concessions, it tells allied partners that their own coordination is contingent rather than structural. That signal is corrosive.

Congress should evaluate any executive action on chip exports against this criterion: does it strengthen or weaken the allied coordination layer? A policy that delivers short-term Nvidia revenue at the cost of TSMC or ASML alignment is not a trade worth making.

## What a Precision Framework Looks Like

The alternative to both failed frameworks is not a theoretical ideal — it is an institutional design that draws on existing mechanisms and extends them with appropriate specificity. Here are the contours of a workable precision regime.

**Tiered end-user licensing.** Not all Chinese AI compute buyers represent equivalent risk. A verified civilian cloud provider operating under Chinese data sovereignty law, with contractual restrictions on military-linked customers, is a different risk profile than a university with direct PLA research contracts. A precision regime distinguishes between these categories through a tiered licensing structure: expedited review for verified civilian-use entities, enhanced scrutiny for dual-use contexts, and presumption-of-denial for entities on the Entity List, Military End-User List, or with demonstrated PLA affiliation. This is how the State Department's Directorate of Defense Trade Controls operates for defense articles; the administrative model is not novel.

**Mandatory post-shipment verification.** The known failure mode of export controls is transshipment — chips sold to a licensed entity in one jurisdiction that are subsequently rerouted to a restricted end-user. The [Commerce Department's BIS end-use check program](https://www.morganlewis.com/pubs/2026/01/bis-revises-export-review-policy-for-advanced-ai-chips-destined-for-china-and-macau) has the authority to conduct post-shipment verification visits but lacks the resources and political mandate to use it systematically. Any serious precision framework must include mandatory post-shipment verification as a condition of licensing, with revocation authority and extraterritorial reach for violations.

**Allied-nation expedited review track.** The Biden controls' most counterproductive feature was treating G7-aligned cloud providers operating in the Asia-Pacific — entities with no material risk of PLA diversion — with the same presumption-of-denial applied to Chinese state-affiliated buyers. A precision regime creates an expedited review track for shipments to entities domiciled in allied nations, with simplified compliance documentation and a 30-day maximum review window. This preserves the security function while eliminating the diplomatic and commercial costs that generated allied blowback.

**A standing technical review board.** The fundamental institutional failure in U.S. chip export control policy is that the threshold-setting process — which chips are controlled, at what performance levels, and toward which destinations — is slow, politically contested, and systematically behind the technology curve. The solution is a standing Commerce/DOD/NSA/OSTP technical review board with authority to update controlled-item thresholds annually as chip generations advance, using a defined cost-benefit standard: controls are warranted where the expected security benefit (measured by compute-gap preservation) exceeds the economic and diplomatic costs (measured by foregone revenue, allied friction, and domestic political backlash). The Missile Technology Control Regime updates its technical parameters through a standing expert process; AI chips warrant equivalent institutional architecture.

**Frontier-forward threshold calibration.** As an immediate matter, controlled-item thresholds should be recalibrated upward for H100/H200-class chips — which China's domestic industry is approximating — and downward for Blackwell-class systems that China cannot yet replicate. This is the right direction regardless of whether the broader institutional reforms are implemented. Controlling yesterday's frontier while leaving the strategically significant tier inadequately restricted is precisely backwards.

## The Congressional Response: Right Concern, Wrong Medicine

The bipartisan congressional response to the Trump administration's H200 licensing is understandable — the concern is legitimate. Executive discretion over chip exports should not be exercised as bilateral trade leverage, and a surcharge mechanism is not a genuine security framework. Congress is right to reassert oversight.

The risk is that Congress, in frustration with executive permissiveness, legislates a return to Biden-era maximalism — blanket statutory restrictions that would be equally blunt and equally counterproductive. Legislation that freezes controlled-item thresholds in statute, removes executive flexibility for allied-nation licensing, or applies presumption-of-denial to chip generations China is already replicating domestically would repeat the Biden error with additional rigidity.

The appropriate legislative intervention is not to mandate specific export decisions but to mandate the institutional architecture that produces better decisions: requiring the standing technical review board, establishing end-user verification as a mandatory licensing condition, appropriating resources for post-shipment verification, and creating a statutory allied-nation expedited review track. Congress should legislate the process, not the outcome.

## The Stakes

The United States' advantage in frontier AI compute is real but not permanent. It is sustained by TSMC's fabrication lead, ASML's EUV monopoly, U.S. chip design supremacy, and the ecosystem of talent, capital, and research infrastructure that supports it. Export controls are one instrument for maintaining that advantage at the margin — they are not a substitute for sustaining the underlying ecosystem.

The [consequences of getting H200 export policy wrong](https://www.cfr.org/articles/consequences-exporting-nvidias-h200-chips-china) are asymmetric: overbroad controls damage U.S. competitiveness and allied relationships with limited security return; inadequately targeted controls accelerate Chinese AI capabilities in ways that are difficult to reverse. The precision framework proposed here is designed to navigate that asymmetry — delivering genuine security benefit where the compute gap is strategically significant, while eliminating the economic and diplomatic costs that overbroad controls impose.

The pendulum has swung twice. A third overcorrection — whether commercial or maximalist — will leave the United States in the same position: spending political capital on a control regime that doesn't work, while the actual frontier of AI compute advances without adequate governance architecture.

What's needed now is discipline. Not restriction. Not permissiveness. Discipline — the kind that comes from clearly stated strategic objectives, calibrated instruments, allied coordination, and institutional processes built to keep pace with a technology that will not wait for Washington to make up its mind.
