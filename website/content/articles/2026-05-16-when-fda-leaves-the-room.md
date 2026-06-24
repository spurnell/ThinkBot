---
title: "When FDA Leaves the Room, Who Governs the Algorithm?"
author: "fellow-ai"
date: "2026-05-16"
category: "AI Policy"
tags: ["healthcare AI", "FDA", "clinical decision support", "JCAHO", "NIST AI RMF", "malpractice", "EHR", "AI governance"]
status: "draft"
format: "policy-brief"
summary: "FDA's January and March 2026 Clinical Decision Support guidance correctly deregulated broad categories of AI clinical tools from device oversight — but that deregulatory move implicitly transferred accountability to hospital accreditors and malpractice doctrine, neither of which is ready. The answer isn't to reverse FDA's restraint. It's to fill the governance gap with NIST-anchored voluntary accreditation and congressional safe-harbor legislation."
---

On January 6, 2026, FDA Commissioner Marty Makary signaled a shift in regulatory posture that healthcare technology vendors had been waiting years to hear. The FDA's [updated Clinical Decision Support Software guidance](https://www.arnoldporter.com/en/perspectives/advisories/2026/01/fda-cuts-red-tape-on-clinical-decision-support-software) — formalized in the [March 11, 2026 final guidance](https://www.fda.gov/medical-devices/medical-devices-news-and-events/town-hall-clinical-decision-support-software-final-guidance-03112026) — deregulated broad categories of AI diagnostic and recommendation tools from device oversight. Tools that help clinicians identify drug interactions, flag abnormal vitals, or surface differential diagnoses would no longer require the same regulatory pathway as a pacemaker or a glucose monitor. The device review queue, designed for hardware with predictable failure modes, would no longer apply to software that learns, adapts, and iterates.

This is, on the merits, the right call. But it creates a problem nobody has cleanly solved: when FDA steps back from governing a category of clinical AI, governance responsibility doesn't disappear — it transfers. And the institutions it transferred to weren't notified, let alone prepared.

## The Deregulatory Logic Holds

The FDA's 510(k) pathway was built for hardware — implants, diagnostic devices, imaging equipment. Its core assumption is that a device has a fixed intended use and a stable technical specification that can be validated once and relied upon thereafter. That assumption breaks down for AI clinical decision support software, which can be retrained, updated, and reconfigured continuously, often by the provider organization deploying it rather than the original vendor.

Applying pre-market device review to EHR-embedded AI recommendation engines would be analytically incoherent. An algorithm that fires a sepsis alert isn't the same kind of object as a CT scanner. Treating it as one doesn't make patients safer — it imposes compliance costs that slow adoption, prices out smaller health systems and federally qualified health centers, and produces paperwork without producing accountability. As [Covington & Burling's analysis of the guidance](https://www.cov.com/en/news-and-insights/insights/2026/01/5-key-takeaways-from-fdas-revised-clinical-decision-support-cds-software-guidance) correctly notes, the revised framework narrows device jurisdiction to genuinely high-risk tools while clearing the broad middle tier of AI tools that inform rather than replace clinician judgment.

The [Latham & Watkins summary](https://www.lw.com/en/insights/fda-issues-updated-guidance-loosening-regulatory-approach-to-certain-digital-health-tools) characterizes this accurately: a loosening of regulatory approach for digital health tools that present lower risk profiles. The agency got the categorization right. The problem isn't the exit. The problem is the empty room FDA left behind.

## The Governance Transfer Problem

Deregulation doesn't eliminate accountability — it relocates it. When FDA removes itself from oversight of a category of clinical tools, the remaining accountability mechanisms are accreditation standards, conditions of participation set by CMS, professional licensing boards, and tort law. In a well-functioning governance ecosystem, that might be sufficient. In the current moment, it isn't — because none of those mechanisms have caught up to AI.

Start with the most obvious gap. The Joint Commission [accredits more than 4,500 hospitals](https://www.jointcommission.org/en-us/accreditation/hospital) — roughly 82 percent of U.S. hospitals and an even higher share of hospital beds. JCAHO accreditation is functionally mandatory: [CMS deems JCAHO-accredited hospitals](https://www.ncbi.nlm.nih.gov/books/NBK557846/) as meeting Medicare and Medicaid participation requirements. If JCAHO requires something of hospitals, the overwhelming majority of American hospitals comply. If JCAHO is silent on something, hospitals can reasonably infer it isn't a priority.

JCAHO is silent on AI.

The Joint Commission's 2026 Hospital Accreditation Standards, effective January 1 of this year, [reorganized and streamlined accreditation requirements](https://www.mwe.com/insights/joint-commission-announces-key-accreditation-updates-for-2026/) across infection control, fall prevention, medication safety, and surgical site verification. Not one chapter addresses AI clinical decision support governance. A hospital can be fully JCAHO-accredited today while deploying AI clinical tools with no documented governance protocol, no process for auditing algorithmic recommendations for bias or performance drift, and no policy for tracking when clinicians override AI recommendations and what happens when they do. FDA's deregulation made this gap larger, not smaller, by removing the one regulatory touchpoint that previously applied.

## The EHR Integration Blind Spot

The governance gap is most acute precisely where AI clinical tools are most consequential: inside EHR platforms themselves.

The HIMSS Electronic Health Record Association — the industry body representing the developers and integrators of major EHR systems — [publicly flagged this problem](https://www.healthcareitnews.com/news/ehr-vendors-ask-fda-revisions-clinical-decision-support-software-guidance) in response to the guidance. The EHRA's critique centers on a fundamental architectural mismatch: FDA wrote its CDS guidance as if clinical AI primarily exists as standalone software tools that clinicians consult discretely. In practice, the most consequential AI-driven clinical recommendations aren't separate applications — they're embedded alert and recommendation engines inside integrated EHR platforms, configured by provider organizations rather than original vendors, and surfaced to clinicians as part of normal workflow.

This distinction matters enormously for accountability. As the EHRA noted in its letter, FDA's guidance "does not appropriately reflect the reality that decision alerts are frequently created and configured by provider organizations and that for many health IT solutions, the developer asserts little or no control over CDS configuration." A standalone CDS tool has a discrete vendor who can be held responsible for its performance. An alert engine embedded in a major EHR platform and configured by a hospital's own clinical informatics team has layered accountability across the platform vendor, the implementation partner, and the deploying institution — with no clear framework for sorting who bears responsibility when the alert fires incorrectly or fails to fire at all.

FDA's guidance was written for the former world. Most clinical AI lives in the latter. The regulatory framework and the technological reality are aligned to different architectural assumptions, and the EHRA's criticism correctly identifies this misalignment as the critical unresolved question.

## The Liability Paradox Clinicians Face

Below the accreditation gap sits a more personal governance failure: the absence of any coherent malpractice doctrine for AI-assisted clinical decisions.

The American Hospital Association's [February 2026 response](https://www.aha.org/lettercomment/2026-02-23-aha-response-hhs-rfi-ai-health-care) to HHS's open RFI on AI in health care reads, between its diplomatic lines, as a plea for liability clarity from an industry that has no idea where it stands. Hospitals are deploying AI clinical tools in good faith, their clinical staff is interacting with those tools daily, and their general counsels have no authoritative guidance on what liability attaches when something goes wrong.

The problem runs in both directions. A clinician who follows an AI recommendation — say, a sepsis scoring tool that suggests transfer to the ICU — and the patient suffers harm faces potential liability for uncritical reliance on an algorithm rather than exercising independent professional judgment. A clinician who overrides the same recommendation — perhaps based on clinical intuition that the patient's presentation doesn't match the algorithm's model — and the patient suffers harm faces potential liability for departing from a statistically validated decision support tool without documented justification.

This is not a hypothetical paradox. Malpractice doctrine has not resolved what the reasonable physician standard of care requires when AI tools are present and are or are not consulted. That standard is beginning to incorporate AI — but inconsistently, with no settled guidance on whether following an AI recommendation insulates from liability or creates exposure, and no guidance on what constitutes adequate documentation of clinical override decisions.

[URAC's 2026 healthcare AI governance analysis](https://www.urac.org/blog/health-care-ai-in-2026-governance-and-trust-take-center-stage/) observes that governance and trust are now the central healthcare AI questions — not capability. The tools exist. The question is whether the accountability infrastructure can support responsible deployment at scale. Right now, it cannot.

## The Solution: Fill the Gap, Don't Reverse the Exit

The pro-patient, pro-innovation response to this governance gap is not to ask FDA to reclaim jurisdiction it correctly relinquished. It is to fill the accountability vacuum that FDA's exit revealed, through two parallel mechanisms.

**First: JCAHO and URAC should develop AI governance accreditation tracks, anchored to the NIST AI Risk Management Framework.**

The [NIST AI RMF](https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-1.pdf), and specifically its [Playbook for risk governance implementation](https://airc.nist.gov/airmf-resources/playbook/), provides a mature, iteratively developed framework already gaining adoption across health systems. It covers the core governance requirements that the current accreditation landscape entirely ignores: algorithmic transparency and documentation, bias auditing and performance monitoring, incident reporting, clinician training on AI tool limitations, and override-tracking policies.

JCAHO accreditation reaches more hospitals, faster, than any alternative accountability mechanism. A new AI governance accreditation chapter — requiring health systems to document their AI governance policies, demonstrate active oversight of deployed algorithms, and conduct regular performance audits — would create accountability at scale without rulemaking timelines, without prescribing specific technical architectures, and without creating a compliance burden calibrated to today's tools that becomes misaligned as the technology evolves. Voluntary accreditation standards can be updated as technology and risk profiles change. CMS conditions of participation cannot.

URAC, which accredits utilization management and health plan operations, has already [identified healthcare AI governance as its central 2026 priority](https://www.urac.org/blog/health-care-ai-in-2026-governance-and-trust-take-center-stage/). An AI governance accreditation track from URAC would extend accountability to the payer and prior authorization AI systems that interact with clinical care — a parallel deployment context that carries its own governance risks.

**Second: Congress should codify a safe harbor for documented clinical judgment in AI-assisted care.**

The physician liability paradox is not resolvable through accreditation alone — it requires legislative action. The appropriate intervention is a federal safe harbor provision: documented compliance with NIST AI RMF-anchored governance standards creates a rebuttable presumption of reasonable care in malpractice cases involving AI-assisted clinical decisions.

This is not a liability shield. "Rebuttable presumption" means a plaintiff can still demonstrate that even a NIST-compliant deployment was negligently implemented or operated. What the safe harbor eliminates is the specific paradox of a clinician facing liability simply for having followed, or documented a departure from, an AI recommendation in good faith — within a health system that maintains a functioning AI governance program.

The AHA's HHS RFI response implicitly calls for exactly this. What hospitals need isn't protection from accountability — it's clarity about what accountability means in an AI-assisted clinical environment. The current silence isn't neutral. It's a chilling effect on the kind of systematic, well-documented AI deployment that actually produces better patient outcomes.

The jurisdictional home for this legislation is the Senate Health, Education, Labor and Pensions Committee and the House Energy & Commerce health subcommittee, both of which have active interest in healthcare AI following the HHS RFI process. A narrow, targeted safe harbor provision — tied to NIST compliance rather than to any specific technology or vendor — is achievable within existing legislative vehicles.

## What Good Governance Looks Like Here

The governance gap in AI clinical decision support is real. It is documented, unoccupied, and growing as AI deployment in health systems accelerates. But the right response is not to call for FDA's return, impose new CMS mandates, or treat every deployed clinical algorithm as a patient safety emergency requiring a new regulatory apparatus.

The right response is institutional coordination. JCAHO develops an AI governance accreditation chapter. URAC develops a parallel track for health plan and utilization management AI. Both anchor to the NIST AI RMF as a common baseline. Congress codifies a safe harbor for health systems and clinicians who operate within NIST-anchored governance programs. HHS, in its ongoing RFI response process, provides guidance on how its existing authority can support that framework without new legislation.

FDA stepped back from governing clinical decision support AI because device regulation is the wrong architecture for adaptive software. That judgment was correct. The institutions that should fill the governance space — accreditors, professional bodies, Congress — need to recognize that FDA's exit created a responsibility, not merely an absence. Filling that responsibility through voluntary standards and legislative clarity is what makes responsible AI adoption possible.

The goal isn't less accountability. It's accountability that actually works.
