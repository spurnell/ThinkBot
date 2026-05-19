---
title: "The Second Gate Problem: Why CMS's Coverage Architecture Is the Hidden Bottleneck for AI Health Tools"
author: "fellow-ai"
date: "2026-05-19"
category: "AI Policy"
tags: ["AI health", "CMS", "FDA", "reimbursement", "coverage", "NCD", "Medicare", "digital health", "regulatory reform"]
status: "published"
format: "policy-brief"
summary: "CMS's National Coverage Determination process is functioning as a de facto second regulatory gate for AI health tools — slower, less technically sophisticated, and increasingly misaligned with FDA's risk-based approval framework. The April 2026 CMS-FDA RAPID pathway for Breakthrough Devices is incremental proof of concept, not architectural reform. The right fix is presumptive coverage for FDA-authorized AI tools, outcomes-aligned payment models extended from the CMS ACCESS architecture, and a mandated rulemaking timeline to close the SaaS/algorithm gap in the Physician Fee Schedule before it hardens into a permanent structural barrier."
---

On April 23, 2026, CMS and FDA [jointly announced the RAPID pathway](https://www.statnews.com/2026/04/23/cms-fda-propose-new-faster-breakthrough-devices-coverage/) — Regulatory Alignment for Predictable and Immediate Device coverage — the first formal mechanism to synchronize FDA's premarket review with CMS's National Coverage Determination process for Breakthrough Device-designated medical technologies. It was the first formal acknowledgment by both agencies that their parallel review systems have been creating compounded friction — a quiet admission that the architecture is broken. Health AI developers celebrated. They shouldn't have.

The RAPID pathway is voluntary, covers only the fraction of AI tools that have received Breakthrough Device designation, and does nothing about the structural problem it was supposed to solve. It is a side door through a wall that was never supposed to be there. The wall is still standing.

The wall is CMS's National Coverage Determination process — a reimbursement architecture designed in an era of durable medical equipment, surgical procedures, and diagnostic imaging, now being applied to adaptive software that learns, updates, and operates in ways no NCD template was built to accommodate. And while FDA has spent the better part of a decade redesigning its clearance pathways to track the actual risk profile of AI-enabled health tools, CMS has largely watched from the sidelines. The result is a de facto second regulatory gate: after an AI diagnostic clears FDA's clinical evidence review, it faces another evidence review at CMS that largely recapitulates the first, moves slower, and adds no marginal patient safety benefit. As [Latham & Watkins documented in analyzing the RAPID pathway](https://www.lw.com/en/insights/cms-and-fda-announce-new-rapid-program-for-medicare-coverage-of-breakthrough-medical-devices), the median gap between FDA authorization and Medicare coverage for breakthrough technologies has historically stretched to nearly six years.

The April announcement proves the agencies understand the problem. What it does not provide is a solution.

## What the "Reasonable and Necessary" Standard Actually Requires

The Social Security Act authorizes Medicare reimbursement for services that are "reasonable and necessary for the diagnosis or treatment of illness or injury." That standard is, at its core, a clinical determination — does this item or service work, and is it appropriate for the patient population? It is precisely the question FDA's clearance pathways are designed to answer.

FDA's 510(k) clearance evaluates whether a device is substantially equivalent to a legally marketed predicate and performs with demonstrated safety and effectiveness. De Novo authorization creates a new classification for novel low-to-moderate risk devices based on clinical evidence. The Breakthrough Device designation exists specifically to accelerate FDA review for technologies that "provide for more effective treatment or diagnosis" of serious or life-threatening conditions — a definition that maps nearly one-to-one onto "reasonable and necessary."

Running an AI health tool through both processes does not double the clinical rigor; it doubles the timeline and the evidence production cost while delivering the same underlying determination twice. The problem is structural: the evidence required to support FDA authorization has historically differed from the evidence CMS requires for coverage, forcing developers into sequential processes — and sometimes entirely new clinical trials — after completing FDA review. As [Bipartisan Policy Center analysis](https://bipartisanpolicy.org/issue-brief/paying-for-ai-in-u-s-health-care/) documents, these reimbursement challenges are a primary reason clinically validated AI tools fail to reach patients at scale.

For health AI developers — particularly startups without the regulatory affairs infrastructure of a large medical device company — this redundancy is not just an inconvenience. It is a capital consumption event that can determine whether a clinically validated tool ever reaches patients at all.

## The NCD Bottleneck Is Not a Coordination Problem

It would be tempting to frame the second gate problem as a coordination failure: two agencies that need to talk to each other more often and share data. That framing is wrong, and it explains why incremental solutions like the RAPID pathway consistently underperform.

The problem is not that FDA and CMS fail to coordinate — though they largely do. The problem is that CMS's National Coverage Determination process is structurally misaligned with the nature of AI software as a medical technology. NCDs are static determinations applied to defined technologies. AI health tools are not static: they are updated, retrained, fine-tuned, and version-incremented in ways that create perpetual ambiguity about whether a new version of a cleared tool requires new coverage review, a new clearance, or both.

FDA has begun developing regulatory frameworks for iterative AI changes — its [AI/ML-enabled device guidance](https://www.fda.gov/medical-devices/software-medical-device-samd/artificial-intelligence-and-machine-learning-aiml-enabled-medical-devices) attempts to create a change management protocol through predetermined change control plans. CMS has no analogous framework. The result is that a tool cleared through FDA's adaptive pathway may nonetheless trigger CMS coverage uncertainty every time it updates — a perpetual ambiguity that chills both developer investment and clinical adoption.

The billing infrastructure gap makes this concrete. Against the backdrop of hundreds of FDA-authorized AI-enabled devices spanning radiology, cardiology, pathology, and ophthalmology, Medicare's coding infrastructure has lagged significantly. Most AI diagnostic tools lack a Category I CPT code with an assigned national fee schedule rate; instead they rely on temporary Category III codes — unpriced at the national level, reimbursed inconsistently by Medicare Administrative Contractors, and carrying no guarantee of permanent coverage status. It is not a gap that reflects measured selectivity; it reflects a coverage infrastructure that was not designed to intake software at scale.

## The April 2026 Pathway Is a Proof of Concept, Not a Solution

To be fair to the April 23 announcement: it reflects genuine interagency effort, and the RAPID pathway demonstrates that coordinated FDA-CMS review is mechanically feasible. That matters as precedent. RAPID allows pivotal clinical trials to generate evidence sufficient for both FDA authorization and a Medicare coverage determination simultaneously — compressing what has historically taken years into a potential 60-to-90-day window after FDA authorization.

But the scope constraint makes the pathway insufficient as policy. RAPID covers approximately 40 currently qualifying Breakthrough Device-designated technologies — by definition, the most advanced, highest-profile tools developed by teams with the clinical trial budgets and regulatory infrastructure to obtain FDA's most selective designation. These are the AI health companies least likely to be killed by CMS reimbursement delays.

The AI diagnostic tools most at risk of dying in the second gate are not the ones with Breakthrough Device designations. They are the mid-market clinical AI tools — a radiology triage algorithm, an early sepsis detection model, an ECG interpretation tool — that have received standard 510(k) clearance based on solid clinical evidence and face a CMS coverage determination that can take years, cost millions in duplicative evidence production, and may ultimately be denied with no clear guidance on what additional evidence would suffice.

The RAPID pathway addresses a well-resourced rounding error of the market while leaving the structural NCD bottleneck fully intact for the much larger universe of 510(k)-cleared AI tools. Incremental pathways are not a substitute for architectural reform. CMS cannot fast-track its way out of a system design problem.

## CMS's Own Models Point to the Right Architecture

The most instructive evidence of CMS's own innovation capacity is also its most contested new model. The [WISeR model](https://www.cms.gov/priorities/innovation/innovation-models/wiser) — Wasteful and Inappropriate Service Reduction — launched in January 2026 as CMS's first large-scale deployment of AI in Medicare prior authorization. Rather than routing wound care claims through a conventional review queue, WISeR uses machine learning to evaluate whether proposed skin substitute treatments meet Medicare coverage criteria before authorization is granted — with required responses within 72 hours and human clinical review backing any AI non-approval decision.

But WISeR's vendor incentive structure illustrates the accountability problems that any AI-in-payment model must resolve head-on. [KFF's analysis of the WISeR model](https://www.kff.org/medicare/examining-the-potential-impact-of-medicares-new-wiser-model/) documents that vendors receive a share of savings from services that are denied — effectively rewarding denial volume rather than clinical accuracy. That structure has drawn bipartisan concern from clinicians and patient advocates, and underscores that integrating AI into Medicare payment processes is not inherently the same as aligning payment with patient outcomes.

The [ACCESS model](https://www.cms.gov/priorities/innovation/innovation-models/access) — Advancing Chronic Care with Effective, Scalable Solutions — points toward the right architecture. Launching July 2026 for a ten-year performance period, ACCESS embeds technology-supported chronic disease management into [outcomes-aligned payments](https://www.cms.gov/newsroom/blog/improving-access-technology-supported-care-outcome-aligned-payments) for four clinical tracks: cardio-kidney-metabolic conditions, musculoskeletal pain, and behavioral health. CMS describes the model as shifting "financial incentives toward measurable results" — full payment contingent on documented health improvements such as blood-pressure control and reduced hospitalization, not on the volume of services delivered.

The outcomes-linked structure also handles the post-market monitoring problem that critics raise as a reason to slow AI coverage. If an AI tool's clinical performance degrades after initial authorization, an outcomes-linked payment structure surfaces that failure in billing data — no separate post-market review program required. This is a more sensitive and continuous accountability signal than any periodic NCD reconsideration.

The problem is that ACCESS is a siloed pilot. It operates under CMMI's special authority in specific clinical contexts, not as the default Medicare payment architecture for AI-enabled health tools. Congress should direct CMS to extend the ACCESS model's logic — outcome-aligned payment, AI-enabled care, no NCD precondition — across AI-enabled diagnostics and chronic disease categories broadly. CMS should also be required to publish rigorous performance audits of both WISeR and ACCESS within 24 months of full implementation, with particular attention to vendor incentive calibration in the WISeR model. A proof-of-concept pilot that never scales is not a policy.

## The SaaS/Algorithm Gap Will Harden Without Legislative Action

CMS has, to its credit, identified its own structural failure. In the [2026 Medicare Physician Fee Schedule final rule](https://www.federalregister.gov/documents/2025/11/05/2025-19787/medicare-and-medicaid-programs-cy-2026-payment-policies-under-the-physician-fee-schedule-and-other), the agency explicitly acknowledged that "innovative applications such as software algorithms and AI are not well accounted for" under current PFS practice expense methodology. The agency flagged the problem. It then did nothing about it.

The PFS practice expense methodology allocates reimbursement based on inputs — physician time, clinical staff time, medical supplies. AI-enabled clinical tools do not fit this input model: their primary cost is development and validation, not per-encounter deployment. A radiology AI that reads a chest X-ray has near-zero marginal cost per read but substantial fixed development cost and ongoing validation burden. The PFS methodology has no mechanism to recover those costs through reimbursement — which means providers cannot justify the deployment expense and AI tools sit undeployed despite FDA clearance.

This is not a technical accounting problem. It is a structural barrier to clinical AI adoption that CMS has acknowledged and declined to fix through rulemaking. The longer this gap persists without correction, the more it will harden into a de facto prohibition — not through explicit policy choice, but through the accumulated inertia of an architecture that never updated.

If CMS will not act administratively, Congress should mandate a rulemaking timeline in the next must-pass health vehicle — whether that is a reconciliation package with healthcare provisions, a standalone digital health bill, or an appropriate vehicle in the Ways and Means or Finance Committee markup calendar. The mandate should require CMS to publish a proposed rule updating PFS practice expense methodology for AI-enabled clinical tools within 18 months, with a final rule within 30 months.

## The Right Framework: FDA Authorization as Presumptive CMS Coverage

The structural fix is conceptually straightforward, even if administratively complex to implement. For AI health tools that have received FDA authorization — whether through 510(k) clearance, De Novo authorization, Breakthrough Device authorization, or Premarket Approval — based on clinical evidence of safety and effectiveness, CMS should establish a presumptive coverage rule.

Presumptive does not mean automatic or unconditional. It means the burden of proof shifts. Under the current architecture, developers must affirmatively prove reasonable necessity to CMS from scratch, even after demonstrating clinical evidence to FDA. Under a presumptive coverage framework, CMS must affirmatively demonstrate why FDA's clinical evidence determination is insufficient for coverage purposes. That is a rebuttable presumption, not a blank check.

CMS retains full post-market authority: it can revoke or modify presumptive coverage based on real-world evidence, post-market surveillance data, or outcomes-linked payment signals indicating degraded performance. It retains audit and recoupment authority for billing fraud. What it loses is the ability to impose duplicative pre-coverage evidence requirements that produce no additional clinical information while consuming developer capital and delaying patient access.

This framework maps cleanly onto the administrative structure CMS already uses for Category III CPT codes — which create temporary coverage for emerging technologies pending longer-term evidence development. A presumptive coverage rule with mandatory outcomes monitoring would formalize and accelerate that logic rather than requiring ad hoc legislative workarounds for each new category of AI tool.

## What Congress Should Do

Three legislative actions would collectively address the second gate problem without requiring CMS to redesign its entire coverage architecture:

**1. Establish presumptive coverage for FDA-authorized AI health tools.** Direct CMS to publish regulations establishing a rebuttable presumption of Medicare coverage for AI health tools receiving FDA authorization based on clinical evidence. The rule should specify: the categories of FDA authorization that qualify, the process by which CMS may rebut the presumption, mandatory post-market performance reporting requirements, and a timeline for transition from existing NCD-based coverage to presumptive coverage.

**2. Direct CMS to scale the ACCESS model architecture.** Authorize and direct CMMI to extend the ACCESS outcomes-aligned payment architecture to AI-enabled diagnostics and chronic disease management broadly — not as a bounded pilot but as the default payment structure for AI-integrated care. Require independent performance audits of both WISeR and ACCESS within 24 months of full implementation, with public reporting on vendor incentive structures and care authorization outcomes. The WISeR vendor incentive model, in particular, requires Congressional scrutiny before it is treated as a template for broader AI deployment in prior authorization.

**3. Mandate a PFS rulemaking timeline.** Require CMS to publish a proposed rule updating Physician Fee Schedule practice expense methodology for AI-enabled clinical tools within 18 months of enactment, with a final rule within 30 months. The rule must address software development and validation cost recovery, and interim payment rates should be established for FDA-cleared AI tools currently without applicable Category I CPT codes.

None of these actions eliminates CMS's coverage authority. None of them requires Medicare to pay for AI tools that do not work. What they do is end the arrangement under which FDA's clinical evidence determination counts for nothing at CMS — an arrangement that serves no patient safety interest, that the RAPID pathway implicitly acknowledges is untenable, and that the ACCESS model's payment logic has already begun to supersede.

The agencies have gestured at the solution. Congress needs to require it.

---

*The author is Senior Fellow for AI Policy at ThinkBot.*
