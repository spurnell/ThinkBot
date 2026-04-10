---
title: "CIRCIA's Overreach Problem: Why CISA's Mandatory Reporting Rule Is Too Big to Work"
author: "fellow-general-tech"
date: "2026-04-10"
category: "Privacy & Cybersecurity"
tags: ["cybersecurity", "CISA", "CIRCIA", "incident reporting", "critical infrastructure", "regulation", "information sharing"]
status: "published"
format: "policy-brief"
summary: "CISA's final rule implementing CIRCIA's mandatory cyber incident reporting requirements arrives in May 2026 already late, already controversial, and already drawing bipartisan fire for expanding far beyond congressional intent. Congress must force scope narrowing, stronger safe harbors, and restoration of the voluntary-first ethos that made public-private cybersecurity cooperation functional in the first place."
---

# CIRCIA's Overreach Problem: Why CISA's Mandatory Reporting Rule Is Too Big to Work

Somewhere in the gap between a bipartisan law and a [447-page notice of proposed rulemaking](https://www.federalregister.gov/documents/2024/04/04/2024-06526/cyber-incident-reporting-for-critical-infrastructure-act-circia-reporting-requirements) (NPRM), a good idea became a compliance bureaucracy.

The Cyber Incident Reporting for Critical Infrastructure Act of 2022 (CIRCIA) was one of those rare moments of genuine legislative consensus: both parties agreed that federal agencies needed better, faster visibility into serious cyberattacks on critical infrastructure. The deal was targeted and sensible — a mandatory reporting backstop for truly critical systems, layered atop the voluntary information-sharing culture that had developed over two decades of ISAC cooperation and CISA outreach.

What CISA's rulemakers produced instead is something far larger. The proposed rule would extend mandatory disclosure obligations to [virtually every owner and operator across all 16 critical infrastructure sectors](https://www.mofo.com/resources/insights/240402-cisas-very-broad-proposed-rule) — a physician's office clearing $16 million in revenue, a software publisher with $47 million in annual sales, any entity that can be characterized as an "active participant" in a critical infrastructure sector even if the entity itself is not critical infrastructure. As one law firm put it, the rule amounts to [CIRCIA for practically everyone](https://www.venable.com/insights/publications/2024/04/circia-cyber-incident-reporting-for-practically).

With the [final rule now expected in May 2026](https://cyberscoop.com/cisa-pushes-final-cyber-incident-reporting-rule-to-may-2026/) — already seven months past its statutory deadline, delayed further by appropriations lapses that forced CISA to cancel its own [public town halls](https://www.federalregister.gov/documents/2026/02/13/2026-02948/cyber-incident-reporting-for-critical-infrastructure-act-circia-rulemaking-town-hall-meetings) — Congress has a closing window to force a course correction. It should use it.

---

## The Scope Creep Problem

CIRCIA passed with overwhelming bipartisan support because it was sold as a focused tool. The [original law](https://www.cisa.gov/topics/cyber-threats-and-advisories/information-sharing/cyber-incident-reporting-critical-infrastructure-act-2022-circia) directed CISA to require reporting from covered entities in critical infrastructure — the water utilities, pipeline operators, financial market utilities, and hospital systems whose disruption would produce cascading national consequences.

What emerged from CISA's rulemaking was something categorically different. The NPRM's "covered entity" definition sweeps in any organization that exceeds the Small Business Administration's sector-specific size threshold or meets one of dozens of sector-based criteria — regardless of whether that organization's compromise would meaningfully affect national security or public safety. The rulemakers' own logic is revealing: CISA defined "in the sector" to include entities that are "active participants in critical infrastructure sectors," even if the entity itself is not critical infrastructure.

The congressional architects of CIRCIA noticed. [House Homeland Security Subcommittee Chair Andrew Garbarino and Committee Chair Mark Green jointly released a statement](https://homeland.house.gov/2024/03/28/chairmen-green-garbarino-release-statement-on-circia-proposed-rule/) calling the proposed rule's covered entity definition far broader than Congress intended, arguing that CISA's approach would subject to mandatory reporting vast numbers of organizations whose disruption would not rise to the threshold of national concern. The criticism was not partisan grandstanding — these were the congressional authors of CIRCIA, publicly telling the implementing agency that it had misread its mandate.

This is a familiar pattern. Agencies use the notice-and-comment process to establish expansive regulatory footprints under narrow statutory authorizations. The result is a rule that bears the legislative label of CIRCIA while bearing little resemblance to the legislative bargain that produced it. Congress should be explicit in appropriations riders or oversight letters: covered entities means critical infrastructure operators, not everyone in a sector who clears a revenue threshold.

---

## The 72-Hour Problem: Speed Mandates Produce Noise, Not Intelligence

The core reporting requirement — [72 hours for covered cyber incidents, 24 hours for ransomware payments](https://compliancehub.wiki/circia-final-rule-expected-may-2026-critical-infrastructure-faces-mandatory-72-hour-incident-and-24-hour-ransomware-payment-reporting/) — sounds reasonable in the abstract. Rapid reporting helps CISA identify attack campaigns, correlate indicators of compromise across sectors, and warn other potential victims. The theory is sound.

The practice is another matter. Forensic investigations of cyberattacks take time. Significant time. According to industry data, [completing a full forensic analysis of a cyber incident takes organizations an average of 33 days](https://www.varonis.com/blog/data-breach-response-times) — a figure that reflects the genuine complexity of attributing attack vectors, assessing data exfiltration scope, and understanding lateral movement. Thirty-three days, against a 72-hour clock.

What happens when you race to file a legal report before you understand what you are reporting? You produce legally defensible paperwork, not actionable intelligence. Incident response teams, already overwhelmed with containment and recovery, will divert resources to assembling a compliance filing that checks the regulatory box while revealing little about actual threat actor behavior. CISA analysts will receive a flood of early-stage, low-confidence reports that require significant triage before they become useful — burdening an agency [already under resource pressure](https://www.dwt.com/blogs/privacy--security-law-blog/2025/09/cisa-delays-cyber-incident-reporting-rules-2026) to stretch constrained capacity further.

The supplemental filing mechanism in the proposed rule acknowledges this reality — CISA itself recognizes that initial 72-hour reports will be incomplete. But supplemental filings are afterthoughts in the compliance calculus. Organizations will design their processes around the primary deadline, not the update. The intelligence-gathering architecture of CIRCIA should be inverted: encourage early voluntary notification for time-sensitive threat correlation, require substantive reporting only once an incident is sufficiently characterized to produce useful data.

There is a deeper problem with speed mandates. Rushing incident disclosure before an organization fully understands the scope of an attack creates real liability exposure. Incomplete or inaccurate disclosures made under deadline pressure can be weaponized in subsequent litigation — by plaintiffs' counsel, by regulators, by counterparties. The rational response for any organization is to route every incident report through legal review before submission. Lawyers replace incident responders in the reporting loop. The intelligence value of the mandatory regime collapses into a compliance exercise, and CISA ends up with carefully curated legal documents rather than honest threat data.

---

## Mandatory Regimes Poison Voluntary Ecosystems

There is a reason the pre-CIRCIA information-sharing ecosystem produced genuine results. The [28 sector-specific Information Sharing and Analysis Centers](https://www.nationalisacs.org/) and CISA's [Joint Cyber Defense Collaborative](https://www.cisa.gov/topics/partnerships-and-collaboration/joint-cyber-defense-collaborative) operated on a foundation of trust built precisely because participation was non-coercive. Companies shared threat indicators, attack narratives, and vulnerability disclosures freely — knowing that information shared to improve sector-wide defenses would not become a regulatory exhibit or a litigation hook.

That trust is the irreplaceable substrate of effective public-private cybersecurity cooperation. It took decades to build. It can be dismantled quickly.

[As Davis Wright Tremaine has documented](https://www.dwt.com/blogs/privacy--security-law-blog/2025/03/cisa-sec-cyber-incident-reporting-rules-congress), the industry concerns about CIRCIA's mandatory regime are not simply about compliance cost — they are about the structural change in the relationship between critical infrastructure operators and the federal government. Under a mandatory disclosure regime with inadequate safe harbors, every incident report is a potential regulatory trigger, a litigation exhibit, and an admission. Organizations will manage that risk exactly as they manage other legal risks: by involving counsel early, sharing the minimum required by law, and treating CISA as an adversary rather than a partner.

The voluntary-first ethos was not a policy failure awaiting correction. It was a functional intelligence-gathering architecture with genuine private-sector buy-in. The test of any mandatory reporting regime should be whether it improves on that architecture — whether it produces more and better threat intelligence than the voluntary ecosystem it supplements. The CIRCIA NPRM as drafted does not pass that test.

---

## Safe Harbor Design Is the Linchpin

None of these problems is unsolvable. The key to making mandatory incident reporting work — making companies report honestly and early, with useful detail rather than legally curated summaries — is safe harbor design. Adequate safe harbors are not a concession to industry; they are the precondition for honest reporting.

The current draft falls short on two dimensions. First, its use-limitation provisions do not adequately constrain how reported information can be used by federal agencies. If a CIRCIA report can be routed to enforcement authorities, shared with sector regulators in ways that trigger follow-on scrutiny, or disclosed to third parties under FOIA with insufficient protection, companies will self-censor. Second, the draft does not provide sufficient immunity from third-party civil litigation. A company that files a good-faith incident report disclosing the scope of a breach should not face class action plaintiffs waving that report as their primary evidence of liability. Without meaningful protection from third-party suits, companies will treat mandatory filings as documents crafted for litigation, not for intelligence.

Congress established use-limitation protections for voluntary information sharing under the [Cybersecurity Information Sharing Act of 2015](https://www.bytebacklaw.com/2026/02/navigating-cyber-disclosures-in-2026-a-limited-renewal-of-cisa-2015-and-take-two-on-finalizing-circias-reporting-regulations/). CIRCIA's mandatory regime needs equivalent or stronger protections. The final rule should include explicit prohibitions on using CIRCIA reports as the basis for regulatory enforcement actions absent independent evidence, robust FOIA exemptions, and immunity from private civil litigation for good-faith filers. These are not loopholes; they are the architecture that makes honest reporting rational.

---

## NIS2 Is a Cautionary Tale, Not a Template

For those tempted to argue that the United States should harmonize with European approaches and accept CIRCIA's broad scope as the price of alignment with the EU's [NIS2 Directive](https://digital-strategy.ec.europa.eu/en/policies/nis2-directive), the data offer a sobering corrective.

According to the [ENISA NIS Investments 2025 report](https://www.enisa.europa.eu/publications/nis-investments-2025) — a survey of over 1,000 organizations across EU critical infrastructure sectors — 70% of covered entities cite NIS2 compliance as the primary driver of their cybersecurity investments. That sounds positive until you consider what it means: organizations are spending on compliance, not on security outcomes. Eighty-nine percent of surveyed organizations expect to need additional cybersecurity staff to comply with NIS2 requirements, while 32% — and 59% of small and medium-sized entities — are already struggling to fill existing cybersecurity roles. The directive has generated an enormous compliance tax across European industry with no demonstrated improvement in baseline security posture relative to comparable sectors in jurisdictions with less prescriptive frameworks.

The American voluntary-first model, properly resourced, has a better track record than the European compliance model at actually moving threat intelligence through networks that can act on it. The reflex to import European regulatory frameworks — absent evidence that they produce better security outcomes — is precisely the kind of regulatory borrowing that should require affirmative justification. That justification has not been made.

---

## What Congress Should Do

The May 2026 final rule is not the end of this process — it is the beginning of the next phase of congressional oversight. Four priorities should guide that oversight:

**Narrow the covered entity definition.** Congress should direct CISA, through appropriations riders or authorizing legislation, to limit covered entities to organizations whose disruption would produce documented national-level consequences. Sector participation — measured by revenue thresholds — is not a proxy for national security criticality.

**Restructure reporting timelines.** The mandatory 72-hour window should be replaced with a tiered structure: voluntary early notification for active campaigns, followed by a substantive mandatory report — with meaningful detail — within a longer window (180 days is not unreasonable) once an incident is characterized. Supplemental filings should be the intelligence vehicle, not afterthoughts.

**Strengthen safe harbor protections.** Congress should amend CIRCIA's safe harbor provisions to explicitly prohibit the use of mandatory reports in enforcement actions absent independent evidence, provide strong FOIA protections, and extend immunity from private civil litigation to good-faith filers. The CISA 2015 model provides a legislative starting point; CIRCIA safe harbors should match or exceed it.

**Resource the voluntary ecosystem.** Mandatory reporting is a floor, not a ceiling. Congress should ensure that JCDC, ISACs, and CISA's voluntary coordination programs are adequately funded alongside any mandatory regime — not crowded out by the compliance infrastructure that a broad mandatory rule will require.

---

## The Real Test

The case for mandatory cyber incident reporting does not rest on ideology. It rests on a straightforward empirical claim: that a mandatory regime will produce more and better intelligence about threats to critical infrastructure than the voluntary-first model it supplements. That claim needs to be tested against actual regulatory design, not assumed.

The CIRCIA NPRM as drafted does not support that claim. It sweeps in millions of entities with no demonstrated connection to national security criticality. It imposes a speed mandate that produces compliance theater rather than actionable intelligence. It fails to provide the safe harbor protections that would make honest reporting rational. And it risks poisoning the voluntary-first information-sharing culture that produced genuine results precisely because it was built on trust, not coercion.

Congress has a closing window to demand a better design. The question is not whether mandatory incident reporting is a legitimate tool — it is. The question is whether this rule, as drafted, will actually make critical infrastructure more secure. The answer, right now, is no.
