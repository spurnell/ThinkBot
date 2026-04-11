---
title: "The FTC's AI Interoperability Mandate Is a Solution in Search of a Problem"
author: "fellow-antitrust"
date: "2026-04-11"
category: "Antitrust & Competition"
tags: ["FTC", "antitrust", "AI", "interoperability", "cloud computing", "Section 5", "competition policy"]
status: "published"
format: "policy-brief"
summary: "The FTC's April 8 mandate requiring AI model portability across cloud platforms is legally dubious and economically counterproductive — an overreach of Section 5 authority that imposes an innovation tax without evidence of consumer harm. Industry-led standards, not unilateral agency action, are the right path to portability."
---

On April 8, 2026, the Federal Trade Commission issued [its most aggressive structural intervention in AI markets to date](https://markets.financialcontent.com/stocks/article/marketminute-2026-4-8-breaking-the-walled-garden-ftc-mandates-ai-interoperability-for-tech-giants): a mandate requiring large-cap AI cloud providers to allow enterprise customers to freely migrate fine-tuned models, prompts, and associated data across competing platforms without technical or financial penalty. The order specifically targets Microsoft and Alphabet, framing their integrated AI-cloud offerings as "walled gardens" that foreclose competitive choice.

The FTC's diagnosis sounds intuitive. It is not supported by law, evidence, or sound economic reasoning. The mandate is an act of unilateral regulatory overreach — one that imposes an innovation tax on the infrastructure investment that made American AI leadership possible, substitutes regulatory design for competitive dynamics, and stretches Section 5 of the FTC Act well past its adjudicated limits. Policymakers and the competition law community should treat it as such.

## No Harm, No Foul — and No Case

The consumer welfare standard requires a threshold showing: actual or probable harm to consumers, not harm to the competitive process in the abstract. [*Ohio v. American Express Co.*](https://www.supremecourt.gov/opinions/17pdf/16-1454_5h26.pdf) (2018) reaffirmed that antitrust analysis must identify concrete injury — to prices, output, quality, or innovation — not merely market structure that regulators find aesthetically displeasing. The FTC's interoperability order clears none of this bar.

Enterprise cloud customers choose integrated AI platforms — bundled compute, fine-tuning infrastructure, inference APIs, and support — because the integration delivers genuine performance and reliability value. Switching costs exist in every market; they are not evidence of market failure. A hospital that has invested in a particular EHR system faces switching costs too. We do not call that a competition emergency. The relevant question under the consumer welfare standard is whether exit is *impossible* — whether consumers are genuinely foreclosed from alternatives — not whether it is inconvenient.

The FTC has produced no evidence that enterprise AI customers are being harmed by lock-in. It has produced a structural hypothesis and a metaphor about walls. That is not antitrust enforcement; it is pattern-matching in search of a theory.

## Forced Portability Is an Innovation Tax

The practical logic of the order is worse than the legal theory. The FTC is mandating that fine-tuned models — built on top of billions of dollars in proprietary infrastructure, custom silicon, and years of engineering — be freely portable to competing platforms. This converts private R&D investment into a public subsidy for rivals.

[CoreWeave alone is expected to deploy approximately $30 billion in capital expenditure in 2026](https://futurumgroup.com/insights/coreweave-arena-is-ai-production-readiness-redefined/), building out the AI-native infrastructure that enterprises increasingly demand. When proprietary differentiation — the return on that investment — can be expropriated by regulatory mandate, the incentive to make the next round of infrastructure bets collapses. The Supreme Court recognized this logic in [*Verizon Communications Inc. v. Law Offices of Curtis V. Trinko*](https://supreme.justia.com/cases/federal/us/540/398/) (2004): compelling firms to share the fruits of their investment "may lessen the incentive for the monopolist, the rival, or both to invest in those economically beneficial facilities." The Court rejected forced sharing as a general antitrust remedy for precisely this reason.

The FTC's order flips the incentive structure. If a cloud provider knows that any fine-tuning capability it builds for enterprise customers must be made freely portable to AWS, Lambda, or any entrant that deploys an API endpoint, the rational response is to invest less in that capability to begin with. Regulators call this "leveling the playing field." Economists call it a free-rider subsidy. The effect on long-run innovation is the same.

## Section 5 Is Not a Structural Remedy Vehicle

The administrative law problem here is at least as serious as the economics. [As the FTC's own enforcement posture has evolved](https://www.morganlewis.com/pubs/2026/04/ai-enforcement-accelerates-as-federal-policy-stalls-and-states-step-in), the agency has been pressing Section 5's "unfair methods of competition" authority to achieve structural outcomes it could not establish through Section 2 monopolization litigation. The AI interoperability mandate is the clearest example yet.

Interoperability mandates of this scope — requiring affirmative infrastructure modifications and ongoing compliance obligations — are structural remedies. Structural remedies in competition law flow from adjudicated findings of monopolization: a market power determination, a finding of exclusionary conduct, a causal link to consumer harm, and a remedy proportionate to that harm. The DOJ's AI Litigation Task Force, operating within the courts under established Section 2 doctrine, is the constitutionally grounded vehicle for those determinations. The FTC is attempting to achieve through policy guidance what it could not prove at trial. That is not a policy disagreement. It is an administrative law problem.

The D.C. Circuit's decision in [*Rambus Inc. v. FTC*](https://caselaw.findlaw.com/court/us-court-of-appeals-district-of-columbia-circuit/1395449.html) (2008) made this boundary clear: Section 5 does not authorize the Commission to restructure industries based on concerns about competitive dynamics that have not ripened into adjudicated harm. The FTC is testing that boundary again — and the courts are likely to push back.

## The Market Is Dynamic. The Premise Is Wrong.

Underlying the FTC's order is a "winner-take-all" theory of AI cloud competition. By that account, Microsoft and Alphabet are entrenching permanent structural advantages through model lock-in, and the window for effective competition is closing. The actual 2026 competitive landscape tells a different story.

[AWS, Azure, Google Cloud, CoreWeave, Lambda Labs, and a growing cohort of AI-specialized infrastructure providers](https://www.ellenox.com/post/the-top-10-ai-infrastructure-providers) are engaged in vigorous, multi-dimensional competition across pricing, hardware access, latency, compliance capabilities, and model flexibility. CoreWeave [has secured a $14 billion contract with Meta](https://stansberryresearch.com/stock-market-trends/coreweaves-55-billion-backlog-marks-the-next-phase-of-the-neocloud-boom) and is challenging hyperscalers on price and performance transparency. Lambda is [deploying 10,000 NVIDIA Blackwell Ultra GPUs in a new Kansas City facility](https://www.eesel.ai/blog/coreweave-alternatives) scheduled to go live this year. [The Q1 2026 regulatory and legislative landscape](https://www.insideglobaltech.com/2026/04/06/u-s-tech-legislative-regulatory-update-first-quarter-2026/) reflects an AI infrastructure market that is expanding, diversifying, and innovating — not converging toward permanent concentration. A mandate premised on foreclosure in a market this dynamic does not reflect the competitive reality it purports to remedy.

## The Right Path: Standards Bodies, Not Agency Fiat

There is a legitimate goal buried inside the FTC's misguided intervention: enterprises should have meaningful ability to move workloads and model assets across platforms as their needs evolve. That goal is worth pursuing. The question is mechanism.

[MLCommons](https://mlcommons.org/), through its MLPerf benchmarking infrastructure and dataset standardization work, is already building the technical scaffolding for interoperable AI evaluation and deployment. [NIST's AI Agent Standards Initiative](https://www.nist.gov/news-events/news/2026/02/announcing-ai-agent-standards-initiative-interoperable-and-secure), announced in February 2026, is developing interoperability frameworks for agentic AI systems with broad industry participation. These processes achieve portability goals through ecosystem buy-in, technical consensus, and voluntary competitive adoption — without suppressing the proprietary differentiation that drives infrastructure investment.

Industry-led standards produce durable interoperability. Unilateral agency mandates produce litigation, regulatory arbitrage, and chilled investment. [As Wilson Sonsini's 2026 antitrust preview noted](https://www.wsgr.com/en/insights/2026-antitrust-year-in-preview-big-tech.html), the trajectory of Big Tech enforcement this year runs a serious risk of outpacing the evidentiary and legal foundations that give antitrust enforcement its legitimacy.

The FTC's AI interoperability order is a well-intentioned answer to a question the market has not yet asked, using legal authority the statute has not yet granted, to remedy a harm the enforcement record has not yet demonstrated. Congress should scrutinize it. The courts will likely constrain it. In the meantime, the standards community should accelerate the work the FTC is trying — clumsily, and without authorization — to mandate.
