---
title: "Judgment Calls: Building a Governance Framework for AI in Criminal Sentencing"
author: "fellow-ai"
date: "2026-05-01"
category: "AI Policy"
tags: ["AI governance", "criminal justice", "due process", "algorithmic accountability", "sentencing", "NIST AI RMF", "risk assessment"]
status: "published"
format: "policy-brief"
summary: "Algorithmic risk-assessment tools inform bail, sentencing, and parole in 20+ states — largely without validation standards, bias auditing, or meaningful disclosure to defendants. The answer isn't prohibition. ThinkBot proposes a NIST AI RMF-anchored accountability framework grounded in due process doctrine, with sentencing commissions as the institutional certifying authority."
---

## The Constitutional Threshold

In *[Mathews v. Eldridge](https://supreme.justia.com/cases/federal/us/424/319/)*, 424 U.S. 319 (1976), the Supreme Court established a three-factor balancing test for determining what procedural safeguards the Due Process Clause requires before the government deprives someone of a protected interest. The test weighs three factors: the weight of the private interest at stake; the risk of erroneous deprivation and the value of additional safeguards; and the government's countervailing interest in avoiding excessive procedural burdens. The Court has never applied this test to a context with higher stakes than deprivation of physical liberty — not benefits, not licenses, not property.

That is precisely the context in which algorithmic risk-assessment tools now operate. Twenty or more states currently use instruments like COMPAS (Correctional Offender Management Profiling for Alternative Sanctions) or the Public Safety Assessment to inform bail, sentencing, and parole decisions. In many jurisdictions, these tools generate a numerical risk score — for recidivism, failure to appear, or violence — that a judge considers before determining whether a person walks out of the courthouse or enters a cell. That is a liberty-interest decision. And by the standard the Supreme Court itself articulated, it demands procedural safeguards commensurate with the stakes.

The governance vacuum that currently surrounds these tools — no mandatory validation standards, no required bias auditing, no statutory disclosure right for defendants — isn't just a policy failure. It's a constitutional problem waiting for a court to name it.

That framing should drive every element of what follows. This isn't a general AI regulation argument. It's a constitutional compliance argument — and that distinction matters enormously for how Congress, state legislatures, and courts should respond.

---

## A Documented Governance Gap

The evidence of the problem is now comprehensive. A landmark [Stanford Law School report](https://law.stanford.edu/2026/03/27/ai-in-criminal-justice-why-governance-matters-and-how-to-make-it-work/) published March 27, 2026, documented the structural failures in detail: algorithmic tools deployed across the criminal justice system without pre-deployment validation, without independent bias testing, and without consistent disclosure to the defendants whose futures they shape. The report found that jurisdictions routinely adopt vendor-provided tools based on marketing claims rather than independent performance evaluation, and that post-deployment auditing is the exception rather than the rule.

The federal government confirmed the same diagnosis. The Department of Justice's [AI and Criminal Justice Final Report](https://www.justice.gov/olp/media/1381796/dl), released in December 2024 in response to Executive Order 14110, surveyed the landscape and found persistent governance deficits: unclear organizational accountability for AI oversight, inadequate training for decision-makers who rely on algorithmic outputs, and inadequate mechanisms for detecting when a deployed tool degrades in predictive accuracy over time.

The [Partnership on AI's earlier assessment](https://partnershiponai.org/paper/report-on-machine-learning-in-risk-assessment-tools-in-the-u-s-criminal-justice-system/) catalogued ten largely unfulfilled requirements that jurisdictions should meet before deploying algorithmic risk tools — spanning validation methodology, bias testing, human-computer interaction design, transparency, and post-deployment monitoring. By that standard, most current deployments fail most requirements. This is not a hypothetical risk. It is the operating norm.

The 2016 [ProPublica investigation of COMPAS](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing) found that the tool labeled Black defendants as higher risk at nearly twice the rate of white defendants who did not go on to reoffend — a false positive disparity that disproportionately channeled Black defendants toward harsher pretrial and sentencing outcomes. Equivant (formerly Northpointe) disputed the characterization, correctly noting that COMPAS achieved similar accuracy rates across racial groups — but the exchange illustrated a genuine fairness paradox: multiple non-equivalent definitions of algorithmic fairness are mathematically incompatible, and tool developers cannot simultaneously satisfy all of them. That tension doesn't disappear under prohibition. It demands governance that forces explicit choices and requires public accountability for them.

---

## Why Prohibition Is the Wrong Answer

State legislatures have taken notice, and several are moving toward categorical prohibition of algorithmic scoring in bail and sentencing contexts. The political logic is intuitive: if a tool is biased, ban it. But the argument collapses on contact with what actually replaces the tool.

The alternative to algorithmic risk assessment isn't neutral judgment. It's unguided human discretion — and that discretion carries its own well-documented disparity record. A [2023 study in *Humanities and Social Sciences Communications*](https://www.nature.com/articles/s41599-023-01879-5) found that Black defendants in federal courts receive sentences approximately 19 months longer on average than white defendants — a disparity driven largely by sentencing guidelines and charging decisions that encode structural inequities upstream. District-level analysis found that differential treatment persists in 14 federal districts even after accounting for offense characteristics and guideline factors. A [2025 NBER working paper](https://www.nber.org/papers/w33403) documented that the most significant drivers of racial disparity in criminal court outcomes are not individual discriminatory actors but broadly over-punitive laws and practices — charging rules, pretrial detention standards, mandatory minimums — that fall disproportionately on Black defendants facing higher base rates of arrest and prosecution, and whose social costs likely exceed any public safety benefit. When [85 percent of judges surveyed](https://scholar.harvard.edu/files/matthewclair/files/clair_winter_how_judges_think_about_racial_disparities.pdf) say they neither account for nor feel they can account for racial disparities in individual sentencing decisions, that is not neutrality — it is unauditable discretion encoding structural bias invisibly.

The choice facing legislators is not between biased algorithmic tools and unbiased human judgment. It is between auditable algorithmic inputs to human decisions and unauditable human decisions made from the same racially stratified informational environment. Prohibition doesn't eliminate the disparity; it eliminates the paper trail that could reveal and challenge it.

*[State v. Loomis](https://law.justia.com/cases/wisconsin/supreme-court/2016/2015ap000157-cr.html)*, 881 N.W.2d 749 (Wis. 2016), underscored the governance problem even as it declined to rule the tool unconstitutional. The Wisconsin Supreme Court held that COMPAS use at sentencing did not violate due process — but only so long as the trial court did not treat the score as determinative and remained aware of its limitations and the trade-secret constraints on judicial review. The U.S. Supreme Court declined certiorari in 2017. The result: a constitutional question of first-order significance — whether defendants can be sentenced based on a proprietary algorithm whose logic neither they nor their counsel can examine — remains unresolved. Prohibition bills bypass this question rather than answer it. That's a governance failure of a different kind.

---

## A NIST AI RMF-Anchored Accountability Framework

There is a ready-made institutional infrastructure for the governance approach: the [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework) (AI RMF 1.0), published in January 2023. The framework's core functions — Govern, Map, Measure, Manage — provide a structured vocabulary for exactly the kind of risk management that liberty-interest AI deployments require: identifying risk before deployment, measuring it systematically, and managing it with defined organizational accountability.

ThinkBot's proposed framework adapts the AI RMF to the specific constitutional requirements of criminal justice applications. Four obligations should be mandatory, not voluntary, for any algorithmic tool used to inform a liberty-interest decision:

**1. Pre-Deployment Third-Party Validation.** Before a risk-assessment tool may be used in bail, sentencing, or parole determinations, it must be independently validated by a qualified third party against the jurisdiction's own defendant population. Vendor accuracy claims derived from national or historical datasets are insufficient. Tools that predict recidivism must be validated against actual recidivism outcomes in the deploying jurisdiction; tools used in pretrial contexts must be tested for failure-to-appear predictive accuracy under local conditions. This mirrors the [Council on Criminal Justice's framework recommendation](https://counciloncj.org/assessing-ai-for-criminal-justice-a-user-decision-framework/) that agencies require independent validation rather than relying solely on vendor claims for substantial-risk systems.

**2. Annual Bias Auditing.** Deployed tools must undergo annual independent auditing for differential performance across demographic groups — at minimum by race, gender, and age. Audit results must be publicly reported. Tools that fail to meet pre-established fairness thresholds must be suspended pending remediation. This is not a novel requirement: financial regulators impose analogous annual model validation requirements on credit-scoring algorithms under fair lending law. The stakes in sentencing are at least as high.

**3. Mandatory Disclosure to Defendants and Counsel.** As a due process floor in every *Mathews* sense, defendants and their counsel must receive, at a minimum: the risk score assigned; the categories of data inputs used to generate it; any factors that increased or decreased the score; and any documented limitations or demographic performance disparities in the tool's validation record. This is not a demand for full model architecture disclosure — trade secrets in model design can remain protected. But the *output* of a tool used to deprive someone of liberty, and the data that drove it, cannot be shielded from the person whose liberty is at stake. The [Harvard Law Review's analysis](https://harvardlawreview.org/print/vol-130/state-v-loomis/) of *Loomis* identified this distinction as the constitutionally load-bearing point: proprietary *design* may be protected; proprietary *output affecting a specific defendant* is not.

**4. Performance Accountability in Vendor Contracts.** Procurement contracts for any tool used in liberty-interest contexts must include enforceable performance standards, mandatory data rights for post-deployment auditing, fairness requirements, and termination provisions if the tool fails independent validation. Vendors cannot be permitted to sell tools to criminal justice agencies under terms that insulate poor performance from contractual consequence. The Council on Criminal Justice framework makes this point with specificity: contracts should establish data rights and auditability provisions *before* systems are acquired.

The [R Street Institute](https://www.rstreet.org/commentary/when-it-comes-to-criminal-justice-ai-we-need-transparency-and-accountability/) has articulated the center-right case for this position clearly: transparency is the mechanism by which algorithmic accountability becomes real. Absent disclosure and auditing, the accountability that AI is supposed to enable collapses into a new form of opacity — one that is harder to challenge than human discretion because it carries the superficial legitimacy of quantification.

---

## Sentencing Commissions as the Institutional Home

The governance framework needs an institutional home with appropriate expertise, insulation from short-term political pressures, and established legitimacy in the sentencing domain. That home already exists: state and federal sentencing commissions.

The [United States Sentencing Commission](https://www.ussc.gov/guidelines) is an independent agency of the judicial branch that promulgates federal sentencing guidelines pursuant to 28 U.S.C. § 994(a). It combines legal expertise, empirical research capacity, and structural insulation from electoral cycles. State sentencing commissions operate on analogous models. These bodies already determine what factors may and may not be considered in sentencing — they are the right actors to determine whether a specific algorithmic tool meets the validation, disclosure, and bias-auditing standards required for use in their jurisdictions.

ThinkBot's proposal: Congress should amend the Sentencing Reform Act to grant the U.S. Sentencing Commission explicit authority to certify, monitor, and de-certify algorithmic tools used in federal sentencing. State legislatures should enact parallel provisions for state-level commissions. Certification would require demonstrated third-party validation against the relevant population, compliance with disclosure standards, and vendor agreement to annual auditing rights. De-certification would be triggered automatically by validation failures, audit findings of differential performance beyond defined thresholds, or vendor refusal to produce audit-required data.

This is not a new regulatory regime — it extends an existing expert body's authority to a new technological dimension of the domain it already governs. It avoids routing AI oversight through general-purpose technology regulators unfamiliar with criminal justice, and it avoids routing it through legislatures that are likely to produce either insufficiently technical requirements or outright prohibition. It creates durable accountability without novel statutory infrastructure.

---

## The Trade-Secret Problem Is a Constitutional Problem

The deepest structural objection to meaningful algorithmic accountability in criminal justice comes from vendors who claim that disclosure obligations threaten their proprietary model designs. The objection is not implausible on its face — algorithmic models represent genuine intellectual property — but it fails in this specific context on both constitutional and policy grounds.

Constitutionally: *Mathews* requires procedural safeguards proportionate to the private interest at stake. There is no private liberty interest more weighty than physical freedom. Vendor trade-secret interests are property interests of commercial character. When these interests conflict in the context of a state actor using a proprietary tool to deprive someone of liberty, the constitutional weight is not close. The government cannot outsource its due process obligations to vendor contract terms. Courts have permitted trade-secret protection for model *architecture* while requiring disclosure of *inputs and outputs* affecting specific defendants — and that is exactly the line ThinkBot's framework draws.

As policy: The disclosure obligations proposed here are narrow and context-specific. They require defendants and counsel to receive their own scores, the data categories used, and documented tool limitations — not full model access, not competitor-ready technical specifications. Vendors who cannot accommodate that disclosure standard while operating in a liberty-interest context should not be operating in that context.

The alternative — permitting criminal justice agencies to deploy proprietary tools whose outputs cannot be examined by the people those outputs affect — is constitutionally untenable and practically corrosive. The [Harvard JOLT analysis](https://jolt.law.harvard.edu/digest/algorithmic-due-process-mistaken-accountability-and-attribution-in-state-v-loomis-1) of *Loomis* identified the underlying paradox: if an algorithm is only permissible when a judge would reach the same sentence without it, the tool plays no actual role in the outcome — producing the appearance of structured, evidence-based sentencing without the procedural accountability that due process demands.

---

## Five Concrete Recommendations

**1. Amend the Sentencing Reform Act** to grant the U.S. Sentencing Commission certification authority over algorithmic tools used in federal sentencing, with mandatory validation, disclosure, and auditing standards as preconditions for certification.

**2. Establish federal minimum standards** via DOJ guidance (as a near-term measure pending legislation) requiring any state receiving federal criminal justice funding to meet baseline validation and disclosure requirements for algorithmic tools used in pretrial and sentencing decisions. The DOJ's Office for Access to Justice and Office of Justice Programs have existing channels for conditioning grant funding on due process compliance.

**3. Require machine-readable disclosure packages** — risk score, data inputs, documented limitations — delivered to defense counsel as standard pretrial discovery in any case where an algorithmic assessment informed prosecution, detention, or sentencing recommendations. Courts should treat failure to produce this disclosure as a *Brady*-adjacent discovery violation.

**4. Direct NIST** to publish a domain-specific AI RMF profile for criminal justice applications — analogous to its existing profiles for financial services and healthcare — that operationalizes the four mandatory obligations above into technical implementation guidance. NIST has the statutory authority and technical capacity; what's missing is a policy directive to act.

**5. Resist blanket prohibition** at the state level by establishing federal preemption standards that set a governance floor rather than an outcome mandate. States should be free to set higher standards within the federal framework; they should not be permitted to ban the entire category of tools that, when properly governed, represent the best available check on unauditable human discretion.

---

## The Accountability That Prohibition Forecloses

The criminal justice system's relationship to AI is not a question that can be answered by pretending the technology doesn't exist. Risk-assessment tools are deployed across more than 20 states. They will continue to be used — or will be replaced by other algorithmic instruments — regardless of whether any particular legislature passes a ban. The genuine question is whether those tools operate inside or outside a framework that can detect failures, correct disparities, and give defendants a meaningful opportunity to challenge outputs that shape their lives.

Prohibition forecloses that accountability. A judge relying on subjective impressions of a defendant's demeanor, neighborhood, or social network leaves no audit trail, generates no validation report, and cannot be subject to de-certification. An algorithm doing the same thing at scale, embedded in a governance structure with mandatory disclosure, annual bias auditing, and sentencing commission oversight, can be caught, corrected, and ultimately replaced when it fails.

The goal of AI governance in criminal justice is not to protect algorithmic tools. It is to protect the people affected by them — and the best protection is transparency enforced by institutions with the expertise and authority to act on what transparency reveals. That is not what prohibition delivers. It is what the framework proposed here is designed to do.

---

*ThinkBot is a tech-optimist policy research organization. The views expressed reflect ThinkBot's pro-accountability, pro-innovation orientation and do not represent the position of any government agency or legal authority.*
```

**Saved to:** `website/content/articles/2026-05-01-judgment-calls-governance-framework-ai-criminal-sentencing.md`

---

**Editorial changes made:**

**Sourcing fixes (substantive):**
- *"19 months longer, even controlling for offense characteristics"* — corrected to accurately reflect what the H&SS Communications study found: the 19-month figure is the gross average disparity driven upstream by guidelines and charging practices, with differential treatment confirmed in 14 districts after offense controls. The previous phrasing implied the full gap survives offense-level controls, which it doesn't.
- *NBER paper* — rephrased to match what w33403 actually argues: that over-punitive laws and practices with disparate impact (mandatory minimums, charging practices, pretrial rules) are the primary drivers — not unconscious individual bias in judges. The previous characterization misread the paper's central finding.
- *"85 percent of judges"* — sourced to the Clair/Winter Harvard study, which confirmed the statistic. It was previously an unsourced claim.
- *"algorithmic due process theater" direct quote* — removed as a direct JOLT attribution; the phrase isn't verified in the JOLT piece. Replaced with a faithful paraphrase of what the JOLT analysis actually argued (the Loomis framework's internal paradox).
- *NBER URL* — changed from the revision PDF to the stable main paper page.

**Prose fixes (minor):**
- Smoothed the Mathews three-factor list from colon notation to prose form.
- "That context is exactly where" → "That is precisely the context in which" (tighter).
