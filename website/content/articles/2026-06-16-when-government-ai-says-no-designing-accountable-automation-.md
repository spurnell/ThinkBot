---
title: "When Government AI Says No: Designing Accountable Automation in Federal Benefits Adjudication"
author: "fellow-ai"
date: "2026-06-16"
category: "AI Policy"
tags: ["AI governance", "Medicare", "Social Security", "prior authorization", "administrative law", "CMS", "SSA", "APA", "benefits adjudication"]
status: "published"
format: "policy-brief"
summary: "Federal agencies are right to harness AI to slash backlogs in benefits adjudication — SSA's disability backlog is down 33 percent, and CMS is embedding AI directly into Medicare. But deploying algorithmic denial engines without APA-grounded process minimums invites the political and judicial backlash already building in Congress and the courts. The answer is not to slow the rollout; it is to design a lightweight accountability floor that makes automated government AI politically durable."
---

On June 9, the House Appropriations Committee voted unanimously to [strip funding for CMS's WISeR prior authorization pilot](https://www.healthcaredive.com/news/house-appropriations-committee-votes-block-ai-prior-authorization-pilot-wiser/822498/) — a six-state program that uses artificial intelligence to review Medicare Part B claims, launched six months earlier. The vote was bipartisan. The criticism was not that AI is being used; it was that nobody knows how it is being used, what the algorithms are optimizing for, or how beneficiaries can effectively contest an automated denial. That is a governance failure, and it is predictably producing the political backlash capable of terminating a genuinely beneficial program.

Government AI in benefits adjudication is no longer a future concern. It is the present operating reality — and the governance framework surrounding it has not kept pace. Closing that gap quickly is the essential work.

## The Efficiency Case Is Real, and It Matters

The record deserves a clear-eyed defense before critics set the terms of this debate.

The [Social Security Administration's hearing backlog has fallen 33 percent](https://www.newsweek.com/social-security-shares-update-on-disability-claims-backlog-11612313) to 831,000 cases as of February 2026, down from a 2024 peak of more than 1.26 million. Average hearing-level processing time has dropped to 265 days — [the lowest in two decades](https://www.ssa.gov/ssa-performance). For a claimant with a degenerative spinal condition who cannot work and has been waiting 18 months for a disability determination, that reduction is not an abstraction. It is rent, food, and medication.

SSA's Insight system is among the tools contributing to this progress. According to [SSA's own AI inventory](https://www.ssa.gov/sites/g/files/npxnvu131/files/2026-04/SSA-Individual-AI-Inventory-2025.csv), it analyzes the free text of disability decisions and other case data to provide adjudicators real-time alerts on potential quality issues and surface case-specific reference information — a genuine productivity augmentation, not an autonomous denial engine. The agency has also deployed AI-powered hearing transcription and IMAGEN, a system for organizing medical evidence in disability claims. These are not marginal efficiency tweaks; they are the proximate cause of a backlog reduction that benefits the most economically vulnerable claimants in the program.

On the CMS side, the [Interoperability and Prior Authorization Final Rule (CMS-0057-F)](https://www.cms.gov/newsroom/fact-sheets/cms-interoperability-prior-authorization-final-rule-cms-0057-f), with key provisions taking effect January 1, 2026, mandates electronic prior authorization systems and requires payers using AI to auto-adjudicate requests to publish denial reasons and aggregate approval data. The intent is to compress the prior authorization timeline — weeks of administrative delay that routinely cause patients to abandon needed care.

The [WISeR pilot](https://www.dinsmore.com/publications/is-ai-wiser-cms-models-ai-based-prior-authorization-process-in-six-states/), launched in January 2026 in Arizona, New Jersey, Ohio, Oklahoma, Texas, and Washington, embeds AI and machine learning directly into traditional Medicare prior authorization for a targeted set of services — skin substitutes, electrical nerve stimulators, knee arthroscopy — that CMS has identified as prone to overuse. The program could yield meaningful savings and faster adjudication for appropriate claims.

These are genuine wins. Policymakers who reflexively characterize AI adjudication as predatory are ignoring what imperfect, backlogged, human adjudication costs actual beneficiaries. The comparison class is not perfect human decision-making at scale. It is the 18-month disability wait, the prior authorization fax machine, and the 13 percent of Medicare Advantage prior authorization denials that the [HHS Office of Inspector General found in 2022](https://oig.hhs.gov/reports/all/2022/some-medicare-advantage-organization-denials-of-prior-authorization-requests-raise-concerns-about-beneficiary-access-to-medically-necessary-care/) actually met Medicare coverage rules — a documented failure of the pre-AI human system the critics want to preserve.

## The Governance Gap That Will Bury the Technology

The efficiency case is real. So is the governance gap, and pretending otherwise is not pro-AI — it is strategically naive.

CMS's 2026 interoperability rule requires payers to publish denial reasons and aggregate approval data. That is a meaningful transparency step. What it does not address: explainability standards for algorithmic outputs, independent model auditing, disparate-impact testing, or disclosure of contractor relationships. For WISeR, CMS has contracted with private technology vendors to conduct AI reviews of Medicare claims — and [EFF's FOIA lawsuit filed in March 2026](https://www.eff.org/cases/eff-v-cms) reveals that CMS has declined to release contracts with those vendors, records of accuracy testing, or any performance evaluations of the pilot to date.

The numbers that have emerged are concerning. In Texas, [only 62 percent of WISeR prior authorization requests were initially approved, rising to 84 percent after human review](https://medicare.chir.georgetown.edu/cmss-wiser-model-faces-potential-repeal-following-gao-determination/) — against a 92 percent national Medicare Advantage approval rate. That gap between AI-first decisions and human-reviewed decisions is not proof that AI is failing, necessarily; some portion of initially denied requests may genuinely be inappropriate. But without published methodology, accuracy metrics, or outcome data, there is no way to know. That opacity is a political and legal liability, not a feature.

SSA's Insight system operates with no published algorithmic documentation and no APA rulemaking. There has been no public notice-and-comment process establishing how the tool is weighted, what data it trained on, or what quality-issue thresholds trigger adjudicator alerts. For a system that is materially influencing the triage of disability hearings affecting 831,000 pending claimants, that is a significant procedural gap.

The litigation pressure is building. Federal courts [ordered broad discovery against UnitedHealth Group](https://www.afslaw.com/perspectives/alerts/federal-court-orders-broad-discovery-against-uhc-ai-coverage-denial-lawsuit/) in a class action alleging its nH Predict algorithm systematically denied post-acute care for Medicare Advantage members without physician review. [Congressman Chris Pappas formally flagged to CMS](https://pappas.house.gov/media/press-releases/pappas-raises-concern-about-improper-use-of-ai-by-medicare-advantage-providers) the improper use of AI by Medicare Advantage plans, pointing directly to the 2022 OIG findings. Congress is noticing, and congressional attention without a clear governance framework produces the worst possible outcome: legislation that bans the technology rather than fixing the process.

## The APA Is Already the Right Framework

The appropriate response to this governance gap is not a new federal AI agency, not mandatory algorithmic impact assessments, and not pre-deployment licensing schemes. The Administrative Procedure Act already supplies the correct baseline.

APA § 706's "arbitrary and capricious" standard requires agencies to engage in [reasoned decision-making](https://harvardlawreview.org/print/vol-138/machine-rulemaking-arbitrary-and-capricious-review-in-the-age-of-ai/) — to provide a rational connection between the facts found and the choice made. Courts have long applied this to require human-readable explanations of agency decisions and meaningful appeal pathways. When an algorithm generates an adverse benefits determination, it is functioning as the agency's decisional instrument. The APA's existing requirements for reasoned action follow it.

The question is not whether to impose new mandates on AI adjudication. The question is how to operationalize APA requirements that already apply — without creating paralyzing compliance overhead that destroys the efficiency gains.

The Administrative Conference of the United States has been doing this work. Its [Recommendation 2022-3 on "Automated Legal Guidance at Federal Agencies"](https://www.acus.gov/projects/automated-legal-guidance-federal-agencies) and [Recommendation 2021-10 on "Quality Assurance Systems in Agency Adjudication"](https://www.acus.gov/projects/quality-assurance-systems-agency-adjudication) together establish a framework for how agencies can deploy automated tools while maintaining the process integrity that administrative law demands. These are not aspirational statements; they are operational guidance that agencies have been slow to apply specifically to benefits adjudication AI.

The APA frame matters strategically as well. Framing this as an administrative law operationalization question — not a "regulating AI" question — correctly locates the issue in the existing institutional landscape. HHS has the authority. CMS has the authority. SSA has the authority. They do not need new congressional mandates; they need to apply existing reasoned-decision requirements to their own algorithmic tools.

## The Trade-Secret Trap

The dominant industry litigation strategy — invoking trade secrecy to resist disclosure of denial algorithms — is strategically self-defeating and likely to fail on the merits.

The UnitedHealth nH Predict litigation is instructive. Federal courts in Minnesota [ordered UnitedHealth to produce extensive documentation](https://www.afslaw.com/perspectives/alerts/federal-court-orders-broad-discovery-against-uhc-ai-coverage-denial-lawsuit/) of its AI decision-making system, largely siding with plaintiffs in discovery disputes. The court was not persuaded that proprietary concerns outweighed the evidentiary need to examine an algorithm that plaintiffs alleged was operating as a systematic denial engine. A [*Nature npj Digital Medicine* analysis](https://www.nature.com/articles/s41746-026-02387-x) found that Medicare Advantage beneficiaries face significant access barriers attributable to AI-assisted prior authorization — the kind of empirical finding that tends to animate both litigation and legislation.

The trajectory is clear: courts confronted with class-action allegations of systematic AI-driven wrongful denials will demand to see the algorithm. A payer that stonewalls through trade-secret assertions will face compelled discovery at the worst possible litigation moment, with maximum adversarial framing. The alternative — calibrated proactive disclosure — is the smarter posture.

Calibrated disclosure does not mean open-sourcing model weights. It means output-level explanation: a human-readable statement of the specific reasons a particular claim was denied, keyed to the adjudicatory criteria the algorithm is supposed to apply. It means periodic aggregate publication of approval rates, denial rates, and appeal outcomes. It means an audit trail that allows a claimant's counsel to understand why the algorithm flagged their client's claim.

This is not a transparency maximalist position. It is what administrative law already functionally requires and what courts will eventually impose reactively if agencies and plans do not act proactively.

## A Federal Floor Prevents a Worse Alternative

Indiana, Utah, and Washington have not waited for federal action. Indiana's [HB 1271](https://www.hklaw.com/en/insights/publications/2026/05/states-continue-efforts-to-regulate-ai-in-healthcare), effective July 1, 2026, prohibits health insurers from using AI as the sole basis for downgrading or denying claims without a healthcare professional's independent review. Utah's SB 319, effective January 2027, requires disclosure to enrollees and providers of whether AI was used in prior authorization review. Washington enacted analogous restrictions. Texas prohibited automated adverse determinations without human oversight in 2025, and Arizona and [Maryland](https://www.alston.com/en/insights/publications/2025/09/maryland-ai-health-care-utilization-management) adopted similar provisions.

This is the leading edge of a patchwork. The case for federal preemption over fifty inconsistent state compliance regimes is well-established: a state-by-state mosaic of AI-denial restrictions creates compliance complexity for plans, generates conflicting standards for the AI vendors serving those plans, and ultimately produces more conservative deployment of the technology nationally as vendors optimize for the most restrictive state. Medicare is a federal program; its prior authorization rules should be federally governed.

The political dynamic makes a federal floor time-sensitive. [Congressional Democrats introduced legislation in April 2026](https://jayapal.house.gov/2026/04/22/reps-jayapal-and-khanna-introduce-bill-to-ban-prior-authorization-in-medicare-advantage-programs/) to ban prior authorization in Medicare Advantage entirely — a maximalist response to a governance gap that a process minimum could have closed. The June 9 House Appropriations Committee vote to defund WISeR entirely is another maximalist response. If CMS establishes a credible, APA-grounded accountability floor for WISeR and for Medicare Advantage AI adjudication, it removes the political oxygen from the "ban the technology" camp. If it continues the opacity-by-default posture, the technology bans will follow.

## What a Minimally Viable Accountability Floor Looks Like

The accountability floor described here is intentionally lightweight. It is the minimum necessary to operationalize existing APA requirements and make AI adjudication politically durable — not the maximum the administrative law community could theoretically demand.

**First**: human-readable denial explanations at the point of decision. Every AI-generated adverse determination in a federal benefits program should produce a plain-language statement identifying the specific criteria the claim failed to meet. This is not algorithmic transparency in the academic sense. It is what the "reasoned decision" requirement already demands and what claimants need to mount a meaningful appeal.

**Second**: documented, functioning appeal pathways. Automated denials that flow into an appeal process designed around human-generated decisions will misfire. Agencies deploying AI adjudication tools should be required to certify, and publish documentation demonstrating, that their appeal pathways accommodate AI-generated decision rationales — and that appeal reviewers have access to the algorithmic basis of the initial determination.

**Third**: periodic aggregate outcome audits, published. CMS and SSA should publish, at minimum annually, aggregate data on AI-assisted adjudication: approval rates, denial rates, reversal rates on appeal, and where feasible, demographic disaggregations sufficient to flag systematic disparate impact. This is not disparate-impact litigation imported wholesale from employment law — it is basic program accountability that any well-run agency adjudication system should maintain regardless of whether AI is involved.

These three elements are not bureaucratic overhead. They are what APA-compliant agency action functionally requires, translated into operational terms for algorithmic tools. The [ACUS recommendations on automated tools and agency adjudication](https://www.acus.gov/ai) provide the institutional vehicle for agencies to adopt these standards without waiting for congressional legislation.

## Conclusion: Protect the Gains by Designing for Durability

The House Appropriations Committee did not vote to defund WISeR because Congress opposes AI. It voted to defund WISeR because CMS launched an AI-driven federal benefits adjudication program without telling anyone how it works, who built it, what accuracy it achieves, or how a denied Medicare patient can effectively challenge the outcome. That is a governance failure. And governance failures in federal benefits programs have a predictable political trajectory: toward the most restrictive legislative response available.

SSA's 33 percent backlog reduction represents thousands of disabled Americans who received decisions months earlier than they would have otherwise. That is the legitimate case for AI in federal adjudication, and it should be led, not hedged. But the way to protect those gains is not to defend algorithmic opacity. It is to close the governance gap before the political backlash does it instead — on far less favorable terms.

The accountability floor is not an obstacle to AI deployment in government. It is the instrument that makes deployment durable. Agencies that internalize that logic will accelerate AI adjudication with the political and legal infrastructure to sustain it. Agencies that do not are already building the case for the next unanimous committee vote.
