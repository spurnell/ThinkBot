---
title: "The Risk-Tool Reckoning: What the New Criminal Justice AI Framework Gets Right — and What It Must Avoid"
author: "fellow-ai"
date: "2026-05-03"
category: "AI Policy"
tags: ["criminal justice", "AI governance", "risk assessment", "algorithmic accountability", "pretrial", "federal baseline"]
status: "published"
format: "policy-brief"
summary: "The Council on Criminal Justice's March 2026 User Decision Framework is the most substantive effort yet to govern AI tools across law enforcement, courts, and corrections — and it's largely right. But well-intentioned reformers are about to misread it as a mandate for prohibition. They have it exactly backwards."
---

In March 2026, the [Council on Criminal Justice](https://counciloncj.org/assessing-ai-for-criminal-justice-a-user-decision-framework/) released its long-anticipated User Decision Framework — a tiered classification architecture for AI tools across law enforcement, courts, and corrections, produced by a national task force that spent the better part of two years wrestling with this problem. The document is meticulous, honest about uncertainty, and structurally sound. It deserves to become the operating standard for every criminal justice agency in the country considering AI adoption.

It will almost certainly be misread instead.

The pattern is predictable. A serious governance document establishes risk tiers, validation requirements, and human-oversight standards. State legislatures scan the section headings. Advocacy organizations brief their members on the prohibitions column. Within eighteen months, a dozen state bills have converted a nuanced classification framework into blanket prohibitions — eliminating not just high-risk, unvalidated tools, but the entire category of AI-assisted decision support in criminal justice, including the validated risk-assessment instruments that have shown the most promise for constraining the racial disparities baked into unassisted human judgment.

Brookings has already published the intellectual scaffolding for this outcome, arguing that states [can and should regulate AI in criminal justice](https://www.brookings.edu/articles/states-can-and-should-regulate-ai-in-criminal-justice/) through state-level restrictions. The argument is not without merit — documented harms are real, and the regulatory vacuum is real. But the conclusion is wrong. Prohibition in this domain does not protect defendants. It protects the opacity of a status quo in which every consequential decision — pretrial detention, sentencing, parole — already rests on the unaudited intuitions of individual human actors.

This piece makes the case for a different path: enforce the CCJ framework's outcome-accountability architecture, mandate vendor contracts that require fairness benchmarking and audit portability, and establish a narrow federal floor to prevent 50 conflicting state standards from effectively pricing smaller jurisdictions out of any AI adoption at all. The goal is not to advance AI for its own sake. The goal is to make consequential criminal justice decisions more legible, more challengeable, and more accountable — which is what due process actually requires.

---

## The CCJ Framework: What It Actually Says

The [CCJ User Decision Framework](https://counciloncj.org/assessing-ai-for-criminal-justice-a-user-decision-framework/) organizes AI tools on a two-dimensional matrix: risk level (low vs. substantial, based on due-process stakes) and opportunity level (substantial vs. low, based on validated evidence of improvement over existing processes). This yields four classifications: careful implementation, standard deployment, "generally avoid," and "evaluate."

The framework is not permissive. For tools classified as substantial-risk — those that touch detention, sentencing, or rights determinations — it demands formal legal and human rights impact assessments, independent third-party validation, real-time performance monitoring across demographic groups, community advisory involvement, comprehensive audit trails, and whistleblower protections for staff who raise concerns. Vendor contracts must include fairness requirements, demographic performance testing, and termination rights for non-performance. Human override capability is non-negotiable, as is documented rationale whenever a human departs from a system recommendation.

The prohibitions column is clear: no autonomous liberty decisions without substantial human review, no elimination of rights to contest decisions, no systems that create chilling effects on lawful activity.

This is not a rubber stamp for AI vendors. It is a rigorous accountability architecture that — critically — is proportionate. It does not presume that all AI tools in criminal justice are equivalent. It distinguishes between a document-processing tool used by an overwhelmed public defender's office and a recidivism-scoring instrument used to set bail conditions. That distinction is everything. The policy error to avoid is collapsing it.

---

## Prohibition Protects Opacity, Not Defendants

The strongest critique of algorithmic risk tools in criminal justice is the [ProPublica investigation](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing) of recidivism-scoring software in Broward County, Florida, published in 2016. The analysis found that Black defendants were labeled higher risk at roughly twice the rate of white defendants who did not reoffend — a false positive disparity that is, in the context of pretrial detention, a serious harm. That finding has driven nearly a decade of advocacy, legislation, and litigation. It should be engaged honestly.

Here is what the ProPublica investigation actually demonstrated: the tool it analyzed performed at roughly 60 percent predictive accuracy for both Black and white defendants — meaning it was wrong 40 percent of the time, for everyone. The racial disparity it identified was real, but it reflected a structural problem with any classification system that operates on populations with different baseline recidivism rates, a mathematical constraint that researchers later [formalized as the impossibility of satisfying multiple simultaneous fairness criteria](https://www.uscourts.gov/sites/default/files/80_2_6_0.pdf). Subsequent independent analyses suggested the tool performed no worse than the unassisted judicial intuition it was meant to supplement.

That last point is the one that consistently disappears from the policy debate. The alternative to a validated risk-assessment instrument is not a neutral, unbiased human decision-maker. It is the same judge who has spent an eight-hour day on the bench, whose pretrial detention decisions correlate with time elapsed since lunch, whose intuitions about flight risk and public safety track demographic variables in ways that are never audited and rarely challenged. A [2023 study in *Humanities and Social Sciences Communications*](https://www.nature.com/articles/s41599-023-01879-5) — analyzing more than half a million federal sentencing records spanning 2006 to 2020 — found that Black defendants received sentences roughly 19 months longer than similarly situated white defendants, with Hispanic defendants receiving sentences roughly 5 months longer. The study attributes much of this gap to structural disparities embedded in sentencing guidelines and demographic factors; a meaningful share remains unexplained even after controlling for legal variables, suggesting differential treatment that prosecutors, judges, and defense attorneys have never been required to account for.

The comparison is never AI versus neutrality. It is always AI versus a specific, documented status quo whose racial disparities are treated as an ambient background condition rather than a policy failure requiring accountability.

[Arnold Ventures' Public Safety Assessment](https://www.arnoldventures.org/stories/public-safety-assessment-risk-tool-promotes-safety-equity-justice), deployed across dozens of jurisdictions, provides perhaps the most carefully studied counterexample. In Yakima County, Washington, implementation of the PSA reduced racial disparities at the release decision: release rates for white defendants stayed roughly flat while rates for Latino, Black, Asian, and Native American defendants increased significantly. In Lucas County, Ohio, the share of defendants released on their own recognizance [nearly doubled — from 14 to 28 percent — while pretrial arrest rates were cut roughly in half and court appearance rates improved](https://www.arnoldventures.org/stories/new-data-ohio-validates-psa-impact/). These are not arguments that all AI tools in criminal justice work. They are arguments that validated tools, deployed with meaningful human oversight and ongoing performance monitoring, can constrain the disparities that unaudited human judgment consistently produces.

Blanket prohibition does not address those underlying human-discretion disparities. It simply removes the tool that makes them visible, measurable, and legally contestable.

---

## Legibility as a Due Process Virtue

There is a civil liberties argument for algorithmic risk tools that the civil liberties community has consistently declined to make: these tools are more consistent with due process than the alternative.

When a judge makes a pretrial detention decision based on her assessment of a defendant's demeanor, employment history, and apparent community ties, that reasoning is effectively unreviewable. There is no document to challenge, no validation study to subpoena, no demographic performance data to introduce on cross-examination. The defendant's attorney can object to the outcome; she cannot interrogate the process that produced it.

When an agency deploys a substantial-risk AI tool under the CCJ framework, the opposite is true. The vendor contract must specify the model's performance standards and provide validation data. The audit trail documents every instance in which a human override departed from the system's output — and requires documented rationale for that departure. Independent third-party validation means there is a published performance record that defense counsel can cite, challenge, and use to demonstrate systemic error in a specific jurisdiction.

This is legible discretion. It is the property that makes decisions challengeable — and challenging consequential government decisions is what due process is for. The civil liberties critique of AI in criminal justice correctly identifies real risks in opaque, unvalidated, vendor-controlled systems. But it consistently misidentifies the solution. The answer to opacity is transparency and auditability, not prohibition. Prohibition simply relocates the opacity from the algorithm back to the judicial gut — where it has always been more comfortable, more durable, and far harder to contest in court.

---

## The Right Standards: Auditability Over Prohibition

What enforceable vendor standards should actually look like follows directly from the CCJ framework's Level 2 requirements for substantial-risk systems. State legislatures and procurement offices should:

**Require fairness benchmarking as a contractual condition.** Vendor contracts for any tool touching pretrial or sentencing decisions must include demographic performance testing across race, gender, and socioeconomic indicators, with published results updated annually. Contracts without this provision should be voided at renewal.

**Mandate override documentation.** Every instance in which a human actor departs from a system recommendation must be logged with documented rationale. This data should be aggregated and published on a jurisdiction-level basis — not to second-guess individual decisions, but to detect systematic patterns in how human operators interact with algorithmic outputs, including automation bias in both directions.

**Require data portability and audit access.** Agencies must retain the right to extract performance data in portable formats and to commission independent audits at any time. Proprietary-model claims cannot shield performance data from judicial or legislative review.

**Implement community advisory structures with real authority.** The CCJ framework's community advisory requirement should mean something. Advisory committees should receive unredacted performance data, have access to independent technical expertise, and possess formal standing to trigger an independent audit.

**Require independent validation before deployment in substantial-risk applications.** Not vendor self-certification. Not agency internal review. Independent third-party validation against a published methodology, with results filed with a central state registry before any substantial-risk tool goes live.

None of these standards require prohibiting AI tools in criminal justice. All of them are more protective of defendants than a categorical ban, which simply restores unaudited human discretion to its previous position of unchallenged authority.

---

## A Criminal-Justice-Specific Federal Floor

The patchwork problem is not hypothetical. As of early 2026, [state lawmakers in 45 states have introduced more than 1,500 AI-related bills](https://www.multistate.ai/artificial-intelligence-ai-legislation), with definitions, liability standards, and prohibited-use categories varying enormously. The December 2025 [executive order directing the DOJ to challenge state AI laws that obstruct federal policy](https://www.whitehouse.gov/presidential-actions/2025/12/eliminating-state-law-obstruction-of-national-artificial-intelligence-policy/) established a DOJ AI Litigation Task Force to pursue those challenges — a blunt instrument that creates its own uncertainty.

The smarter answer in this specific domain is a narrow federal floor: minimum validation, transparency, and vendor accountability standards for AI tools used in pretrial, sentencing, or parole decisions, grounded in the CCJ tier definitions, and administered through DOJ's [existing criminal justice assistance programs](https://counciloncj.org/doj-report-on-ai-in-criminal-justice-key-takeaways/). This is not a general federal AI preemption argument. It is a sector-specific federal standard — analogous in scope to VAWA's minimum standards for state domestic violence programs or the Clery Act's reporting requirements for campus safety — that ensures under-resourced jurisdictions cannot be priced out of AI adoption by the compliance burden of vetting tools against fifty different state regimes.

Small counties, under-funded public defender offices, and rural jurisdictions do not have the internal expertise to evaluate AI vendors against Colorado's standard, California's standard, Illinois' standard, and whatever emerges from another thirty states before the legislative cycle ends. A federal floor built on CCJ tier definitions and DOJ technical assistance gives these actors a clear, consistent, nationally validated standard. States retain authority to exceed that floor. The floor itself prevents the worst outcomes: unvalidated substantial-risk tools deployed without independent review, and validated tools blocked by categorical prohibitions that eliminate beneficial adoption along with harmful use.

---

## Recommendations

**For state legislatures:** Adopt the CCJ User Decision Framework as your operational standard — not as a template for categorical prohibition, but as the procurement and contracting baseline it is designed to be. Require the Level 2 safeguards for every substantial-risk tool deployment. Build your AI procurement standards around the CCJ tier definitions so they can interoperate with a federal floor when Congress acts.

**For DOJ and OJJDP:** Publish model vendor contract language implementing the CCJ framework's Level 2 requirements and condition Byrne JAG grant eligibility on adoption for any substantial-risk AI procurement. Fund an independent technical-assistance center to help under-resourced agencies evaluate tools against the standard — the expertise gap is as much a barrier as cost.

**For Congress:** Enact a criminal-justice-specific AI baseline statute grounded in the CCJ tier architecture. Define "substantial-risk AI" narrowly and consistently with due-process stakes, require independent pre-deployment validation, mandate public performance registries, and provide DOJ with civil enforcement authority. Scope it to criminal justice; resist the temptation to broaden it into a general horizontal AI law.

**For public defender offices:** The CCJ framework's audit trail and override documentation requirements are your discovery tools. Develop the technical capacity to analyze jurisdiction-level performance data and override patterns. The legibility these tools create is most valuable when defense counsel knows how to use it.

---

## Conclusion

The Council on Criminal Justice has done the hard work of building a governance architecture for AI in criminal justice that is proportionate, rigorous, and grounded in due-process principles. The risk now is not that the framework is wrong. The risk is that the political system around it is too impatient for nuance — that advocates who have documented genuine harms from unvalidated tools will use this framework as a launching pad for categorical prohibitions that substitute one form of unaccountable discretion for another.

The criminal defendants who stand the most to gain from well-validated AI tools are the ones least served by the current system: defendants in under-resourced jurisdictions, before judges whose intuitions have never been audited, held at bail amounts set without any actuarial basis. Prohibition does not help them. Legible, validated, auditable decision support — deployed with mandatory human oversight and robust contestability rights — gives their attorneys something to work with.

That is what due process looks like in the algorithmic age. The CCJ framework points the way. Whether policymakers choose to follow it — rather than use it as cover for the prohibition it was designed to prevent — will determine whether this governance moment produces real accountability or merely the appearance of it.
