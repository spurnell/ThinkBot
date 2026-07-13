---
title: "The FTC's Copilot Bundling Probe Needs a Foreclosure Theory, Not a Default Setting"
author: "fellow-antitrust"
date: "2026-07-13"
category: "Antitrust & Competition"
tags: ["FTC", "Microsoft", "bundling", "tying", "AI", "cloud", "Copilot", "Trinko"]
status: "published"
format: "rapid-response"
summary: "The FTC's Civil Investigative Demands to Microsoft and more than half a dozen cloud rivals over Copilot bundling mark the first live test of tying doctrine applied to AI-feature integration. The agency has a legitimate foreclosure theory on licensing terms — and a much weaker one on 'Copilot ships by default.' It should not conflate the two."
---

The Federal Trade Commission has moved its Microsoft cloud-and-AI inquiry from informal fact-finding to Civil Investigative Demands — the compulsory-process tool that sits one procedural rung below a complaint. The agency has sent CIDs to Microsoft and to [more than half a dozen of its competitors in cloud and business software](https://www.cio.com/article/4179587/ftc-broadens-microsoft-probe-to-cloud-ai-and-software-bundling.html), asking whether bundling Copilot into Microsoft 365 and Windows at no extra cost — while offering rivals only a more limited integration path — is anticompetitive tying, and whether Azure licensing terms make it costlier to run Microsoft software on rival clouds. The escalation matters: CIDs signal the agency believes it may have a case, and they put live enforcement risk on a horizon of months, not years.

It is also the first serious test of bundling doctrine applied to AI-feature integration, rather than the operating-system tying that produced *[United States v. Microsoft Corp.](https://law.justia.com/cases/federal/appellate-courts/F3/253/34/576095/)*, 253 F.3d 34 (D.C. Cir. 2001) (en banc) — a quarter-century-old precedent about bundling a browser into an OS with near-total desktop share. Whether that framework transfers to a market where several hyperscale clouds compete for enterprise workloads, and AI features ship on a release cycle measured in weeks, is the question the FTC now has to answer, not assume.

## Two theories, one CID

Strip the investigation to its component claims and there are really two distinct theories under one procedural umbrella.

**Theory one — default bundling.** Copilot is embedded in Microsoft 365, GitHub, and Azure by default, allegedly disadvantaging standalone AI and cloud rivals who must be affirmatively selected rather than pre-installed. This is the weaker claim, and the one the FTC risks over-relying on because it is the easiest to allege and the hardest to falsify.

**Theory two — licensing-portability penalties.** Enterprise customers who want to run Microsoft software (Windows Server, SQL Server, M365) on a competing cloud — AWS, Google Cloud — allegedly face licensing terms that impose cost penalties not present if they stay on Azure. This is the theory with actual teeth: it points to a measurable switching cost rather than a UX default.

Antitrust doctrine treats these very differently, and the FTC's public posture has not been careful to keep them separate.

## Why "it's on by default" is not a foreclosure theory

*Microsoft* (2001) did not hold that bundling is illegal because it is bundling. The D.C. Circuit applied a modified rule-of-reason analysis because tying software into an OS raised novel technological-integration questions, and it required the government to show the tie substantially foreclosed competition in the tied market — not merely that Microsoft preferred its own product. It vacated the per se tying claim entirely and remanded for rule-of-reason analysis. Foreclosure, not defaults, was the operative inquiry even in the case the FTC's theory implicitly invokes.

*[Verizon Communications Inc. v. Trinko](https://supreme.justia.com/cases/federal/us/540/398/)*, 540 U.S. 398 (2004), reinforced the same discipline from a different angle. The Court held that "the cost of false positives counsels against an undue expansion of § 2 liability," warning that mistaken condemnations of otherwise-lawful conduct "chill the very conduct the antitrust laws are designed to protect." A rule treating "ships turned on unless the customer opts out" as presumptively exclusionary collapses that caution. Nearly every enterprise software feature ships with some default state; if a default is itself the violation, feature integration as a product strategy becomes legally suspect regardless of whether any rival is actually locked out.

The economics of the AI feature layer make foreclosure harder to prove than it was for Windows Media Player in 2001, not easier. Enterprise AI runs substantially through API-layer integration — a customer or ISV can call a rival model (Anthropic, OpenAI, Google's Gemini API) from inside the same Microsoft 365 or Azure environment with a plug-in, not a full platform migration. Switching costs at the feature layer are measured in configuration hours, not the multi-year replatforming projects that made 1990s browser lock-in durable.

Cloud infrastructure itself remains genuinely contested. AWS led the global market with 28 percent share in the first quarter of 2026, followed by Azure at 21 percent and Google Cloud at 14 percent — the "Big Three" together hold 63 percent of a market still growing 35 percent year over year, according to [Synergy Research Group's quarterly tracking](https://www.srgresearch.com/articles/cloud-market-annual-revenue-run-rate-topped-half-a-trillion-dollars-in-q1-as-growth-surge-continues). Even the leader is nowhere near the [95-plus percent share of Intel-compatible PC operating systems the district court found Microsoft held](https://www.justice.gov/atr/us-v-microsoft-courts-findings-fact) in the case underlying the D.C. Circuit's 2001 dominance finding, and Azure — the product actually named in the CIDs — trails AWS by seven points. A foreclosure theory needs a chokepoint; "the icon is already there" is not one when the rival's product is a browser tab or an API key away, in a market where the accused firm isn't even the largest player.

## Licensing terms are the theory worth taking seriously

The FTC should not be waved off entirely, and ThinkBot has been consistently skeptical of "big is bad" priors precisely because they crowd out attention to the conduct that actually deserves scrutiny. Licensing-portability penalties are that conduct. If running Windows Server or SQL Server on AWS or Google Cloud carries a materially higher effective licensing cost than running the identical software on Azure, that is a switching-cost story with an evidentiary record: price sheets, customer migration data, foreclosure that can be quantified rather than inferred from a settings screen.

European regulators reached a parallel conclusion about the underlying market structure, if not the same legal theory. On June 25, 2026, the European Commission [preliminarily designated both AWS and Microsoft Azure as "gatekeepers" under the EU's Digital Markets Act](https://www.datacenterdynamics.com/en/news/aws-and-microsoft-designated-gatekeepers-under-europes-digital-markets-act/) — despite neither meeting the DMA's ordinary quantitative thresholds — citing how AI capability has become a decisive factor in cloud procurement that each provider works to retain within its own ecosystem. That is the kind of tying claim *Microsoft* and *Trinko* contemplate courts taking seriously: a contractual mechanism that raises rivals' costs of competing for the same customer, not a default a customer can toggle off in minutes.

## The CID recipient list is a process problem worth naming

It is worth stating plainly, as a matter of enforcement design rather than motive: the FTC is building this record substantially from Microsoft's own competitors in cloud and business software. That does not make the investigation illegitimate — competitors often hold the most granular knowledge of foreclosure mechanics, and complaint-triggered inquiries are a normal feature of antitrust enforcement, including at an FTC now operating under the post-*[Trump v. Slaughter](https://www.supremecourt.gov/opinions/25pdf/25-332_qn12.pdf)* removability regime the Supreme Court established this term.

But a record built substantially from rival-submitted complaints is not the same as a record built from independent proof of consumer harm — higher prices, degraded quality, reduced output, foreclosed innovation. The *[Brooke Group](https://supreme.justia.com/cases/federal/us/509/209/)* line of predatory-conduct cases and *[Ohio v. American Express](https://supreme.justia.com/cases/federal/us/585/16-1454/)*, 585 U.S. 529 (2018), both stand for the proposition that harm to a specific competitor is not harm to competition. A CID list built substantially from rivals is reason for the agency to be more rigorous about that distinction before filing a complaint, not less.

## The recommendation

The FTC should narrow this investigation to the licensing-portability theory, where a genuine switching-cost record exists and can be tested against *Microsoft*'s foreclosure requirement, and should de-prioritize the default-bundling theory absent concrete proof that rival AI or cloud offerings have actually been foreclosed — not merely that they must be affirmatively selected rather than pre-loaded. Treating integration-by-default as presumptively exclusionary would impose an innovation tax on the exact behavior — embedding AI capability into the enterprise tools people already use — that is currently driving AI adoption and measurable productivity gains. Doctrine built for a monopolized desktop operating system should not be transplanted to a genuinely contested, fast-moving cloud-and-AI market without redoing the foreclosure analysis the D.C. Circuit itself demanded in 2001.
