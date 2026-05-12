---
title: "The Chip Security Act Is a 42-0 Mistake"
author: "fellow-tech-innovation"
date: "2026-05-12"
category: "Tech & Innovation"
tags: ["semiconductors", "export controls", "Chip Security Act", "BIS", "national security", "China policy"]
status: "published"
format: "policy-brief"
summary: "A House committee voted 42-0 to advance the Chip Security Act, which would mandate embedded geolocation hardware in every advanced American semiconductor before export. The bill is a politically unanimous but technically unsound response to a real AI chip-smuggling problem — one that would create new attack surfaces, erode global trust in US chip technology, and hand adversaries a roadmap to hardware vulnerabilities, all while determined smugglers spoof their way around it. Congress should redirect its bipartisan energy toward rigorous end-use enforcement, tighter distributor licensing compliance, and interagency coordination rather than baking surveillance into the silicon."
---

When a House committee votes 42-0 to advance legislation, Washington tends to treat the math as an argument. Unanimity signals seriousness; a broad coalition suggests the experts agree. On the Chip Security Act, unanimity signals political momentum — and political momentum applied to a technically unworkable mandate is precisely how well-intentioned legislators create the vulnerabilities they were trying to prevent.

The problem the Act addresses is real. Since late 2025, U.S. authorities have documented [a $2.5 billion wave of AI chip smuggling](https://www.digitimes.com/news/a20260327VL202/chips-security-policy-usa.html) — NVIDIA H100s and their equivalents routed through front companies in Singapore, Malaysia, and the UAE before landing in Chinese data centers that were never supposed to receive them. The Commerce Department's Bureau of Industry and Security (BIS) moved in January 2026 to [tighten its export review policy for advanced AI chips bound for China and Macau](https://www.morganlewis.com/pubs/2026/01/bis-revises-export-review-policy-for-advanced-ai-chips-destined-for-china-and-macau), but enforcement has consistently lagged the smugglers. Congress is right that the status quo is inadequate. The Chip Security Act is not an adequate fix.

The bill would require that advanced American-made semiconductors carry embedded location-verification hardware — on-chip geolocation technology that would allow U.S. authorities to track where a chip is physically operating post-export. The [House Select Committee on the Chinese Communist Party](https://chinaselectcommittee.house.gov/media/press-releases/house-committee-passes-chip-security-act/) has framed this as a straightforward answer to a straightforward problem: if you cannot stop chips from being smuggled, build the tracking into the chip itself. Senate companion bill [S.1705](https://www.congress.gov/bill/119th-congress/senate-bill/1705) is already gathering cosponsors, and the legislation is heading to the House floor.

It should not pass in its current form.

## Surveillance Hardware as Attack Surface

The most fundamental objection to the Chip Security Act is not strategic or economic — it is technical. Mandatory on-chip geolocation hardware does not merely fail to solve the smuggling problem; it creates a new class of vulnerabilities in the very chips it is supposed to protect.

The [Center for Cybersecurity Policy and Law](https://www.centerforcybersecuritypolicy.org/insights-and-research/congress-proposed-chip-security-act-threatens-to-create-new-cyber-vulnerabilities-in-u-s-semiconductors) has documented how mandated geolocation hardware introduces attack surfaces that sophisticated adversaries can exploit. The logic is straightforward: any hardware module with a defined function — in this case, reporting location to an authorized receiver — is a hardware module with a defined attack vector. State-level adversaries do not need to defeat geolocation tracking if they can compromise the tracking mechanism itself. By mandating that every advanced American chip carry a government-specified surveillance module, Congress would be writing the vulnerability specification into law.

The [NYU Journal of Intellectual Property and Entertainment Law's "Chip Wall" analysis](https://jipel.law.nyu.edu/chip-wall-cybersecurity-concerns-with-the-chip-security-act/) goes further: on-chip geolocation is not merely exploitable, it is likely spoofable by well-resourced actors. Spoofing GPS and network-based location signals is a well-documented technique — one that sophisticated state actors and the smuggling networks that serve them are entirely capable of deploying. The chip would report a compliant location; the physical chip would sit in a Chinese hyperscaler. Smugglers evade the mandate; legitimate buyers carry the vulnerability.

This is an asymmetric risk profile that Congress has not adequately analyzed. The Act imposes a known, persistent security cost — a new attack surface baked into every exported chip — across the entire global supply chain of U.S. advanced semiconductors. It generates an uncertain, spoofing-evadable enforcement benefit against a subset of bad actors. That trade-off fails the basic cost-benefit test that any technology mandate should clear before it reaches a floor vote.

There is also a feasibility problem that the 42-0 tally obscures. [CSIS has warned](https://www.csis.org/analysis/trusted-chips-why-discussion-risks-distracting-solving-policy-issues) that proposed on-chip tracking mechanisms are not among the real enforcement tools available and risk distracting from the actual policy work. No independent technical body — not the National Academy of Sciences, not NIST, not NSF — has assessed whether reliable, tamper-resistant on-chip geolocation at the precision required for export control enforcement is achievable with current semiconductor manufacturing capabilities. Congress is considering mandating a technology that may not work for its stated purpose, on a timeline set by legislative momentum rather than engineering reality.

## The Trustworthiness Premium

The strategic case against the Chip Security Act is equally serious, and it is not being made primarily by industry lobbyists — though [the Semiconductor Industry Association has raised the alarm clearly](https://www.semiconductors.org/sia-statement-on-chip-security-act/). It is being made by the underlying logic of the global semiconductor market.

The United States retains a commanding position in advanced chip technology not merely because of fabrication relationships or architectural advantages, but because buyers — allied governments, enterprise customers, neutral-market purchasers — trust American chips. That trustworthiness premium is a strategic asset that took decades to build. It is not infinitely elastic.

When the U.S. government mandates that every advanced chip exported from American companies carry embedded government-tracking hardware, it changes the procurement calculus for every buyer outside the United States. Allied governments with legitimate national security concerns about hosting U.S. government surveillance hardware in their critical AI infrastructure will reconsider purchasing decisions. Commercial enterprises will weigh alternatives. The neutral-market countries that Washington has spent years cultivating as non-Chinese customers for advanced AI infrastructure will face a new reason to look elsewhere.

Where will they look? Huawei's Ascend series — already gaining ground in China's domestic AI infrastructure market and actively marketed to Global South customers as an alternative to U.S. chips — benefits from every reason global buyers find to distrust American semiconductors. The [Information Technology Industry Council](https://www.itic.org/news-events/techwonk-blog/the-unintended-consequence-of-the-chip-security-act) has documented how the compliance and procurement costs of mandated tracking hardware would compound this dynamic across supply chains built over years. The Act could accelerate the very semiconductor decoupling it was designed to prevent — an innovation tax levied on the entire global supply chain to address an enforcement failure that better tools can solve more directly.

This is strategic arithmetic, not industry lobbying. The SIA, ITI, and independent academic researchers at NYU and the Center for Cybersecurity Policy and Law are raising the same technical and strategic objections without coordination. When industry and non-industry experts converge on identical specific concerns independently, that convergence deserves more weight than a unanimous committee vote taken without independent feasibility analysis.

## The Wrong Tool for the Right Problem

Behind both the security and strategic objections is a more fundamental regulatory error. The Chip Security Act is an ex-ante mandate imposed on the entire global supply chain to address a targeted enforcement failure. That inverts sound regulatory logic.

The chip smuggling problem is not a problem of insufficient technology embedded in chips — it is a problem of insufficient enforcement capacity and compliance rigor in the export licensing regime. BIS already has the legal authority to pursue distributors who divert controlled chips. The January 2026 revision to [BIS's export review policy](https://www.morganlewis.com/pubs/2026/01/bis-revises-export-review-policy-for-advanced-ai-chips-destined-for-china-and-macau) demonstrates that the existing statutory framework supports more aggressive enforcement. The problem is that BIS lacks the field enforcement capacity, interagency coordination infrastructure, and distributor compliance architecture to deploy that authority effectively.

Mandating on-chip surveillance technology does not fix the enforcement capacity problem. It adds a new layer of technical complexity — the geolocation hardware must be designed, standardized, manufactured, certified, and secured — while leaving the underlying enforcement gap unaddressed. The $2.5 billion in documented smuggling did not succeed because chips lacked tracking hardware. It succeeded because distributor compliance audits were inadequate, interagency coordination between BIS and Customs was insufficient, and end-use verification requirements were not rigorously enforced. Those are fixable problems. Congress has the tools to fix them without degrading the product for every legitimate buyer in the world.

## An Enforcement-First Framework

The case against the Chip Security Act is not that Congress should do nothing — doing nothing is not defensible given the documented scale of the diversion problem. The argument is that an enforcement-first framework is both more effective and less costly than a surveillance hardware mandate, and that the two approaches are not equivalent. Congress can build a credible, harder-to-defeat response to chip smuggling without baking government tracking into the silicon.

A rigorous enforcement-first framework would have five components.

**Mandatory end-use certification for high-risk distributors.** BIS already licenses distributors; the gap is in post-license verification. Binding end-use certificates from distributors in identified high-risk jurisdictions — subject to audit and enforcement with criminal liability for false statements — create paper trails and legal exposure that the current regime lacks. This is harder to evade than a geolocation signal because it requires falsifying legal documentation across multiple jurisdictions, not spoofing a radio frequency.

**Enhanced BIS field enforcement capacity.** The Bureau of Industry and Security's Office of Export Enforcement is chronically under-resourced relative to its mandate. A dedicated funding line for field investigators focused specifically on advanced semiconductor diversion — modeled on the targeted expansion of IRS enforcement capacity for high-value noncompliance — would address the compliance gap directly. Congress should fund the enforcement agency, not mandate unproven hardware.

**A Chip Diversion Intelligence Center within Commerce.** Interagency coordination between BIS, Customs and Border Protection, the Treasury's Office of Foreign Assets Control, and the intelligence community is fragmented. A dedicated analytic center — drawing on trade data, financial intelligence, and technical indicators of diversion patterns — would enable proactive identification of smuggling networks before chips reach prohibited end-users. [CSET at Georgetown](https://cset.georgetown.edu) and the [Foundation for Defense of Democracies](https://www.fdd.org) have both documented the intelligence-sharing gaps that allow diversion networks to operate across multiple jurisdictions without triggering coordinated enforcement responses.

**A multilateral trusted-buyer registry with allied coordination.** The United States is not alone in its interest in keeping advanced AI chips out of Chinese military applications. The Netherlands (ASML), Japan (Tokyo Electron), South Korea, and the UK all have aligned interests in preventing diversion. A multilateral trusted-buyer registry — an affirmative list of verified end-users in allied and partner countries who receive streamlined licensing in exchange for audit rights — would create positive incentives for compliance and a basis for coordinated enforcement action when violations occur. This is the architecture of [the Wassenaar Arrangement](https://www.wassenaar.org/) applied to advanced semiconductors with modern compliance infrastructure.

**Distributor liability for downstream diversion.** Currently, a distributor who sells to a front company that then re-exports to China can disclaim knowledge and limit criminal exposure. Expanding strict liability for distributors in advanced semiconductor categories — modeled on the Bank Secrecy Act's approach to financial institutions facilitating money laundering — would shift the incentive structure. Distributors facing legal exposure for downstream diversion have strong incentives to build their own compliance programs. Private compliance infrastructure is harder to defeat than government hardware, and it scales without a federal mandate on chip architecture.

This framework is not a proposal to do less. It is a proposal to do the right things — things that are harder to spoof, that do not degrade the product for legitimate buyers, and that address the actual mechanism of the enforcement failure.

## Answering the Proponents

Advocates of the Chip Security Act will raise three objections.

*"The smuggling threat is too large to handle with enforcement alone."* This misdiagnoses the problem. The networks that moved $2.5 billion in chips did not succeed because enforcement was structurally impossible — they succeeded because enforcement capacity was insufficient and compliance requirements were inadequately rigorous. The solution is to fix enforcement, not to add surveillance hardware that well-resourced actors can spoof.

*"The 42-0 vote demonstrates expert consensus."* It demonstrates political momentum. Congress has repeatedly passed technology mandates with broad margins that failed technically — from early broadband deployment requirements to the troubled implementation of HSPD-12 federal identity credentials. Bipartisan momentum is not a substitute for feasibility analysis. The legislative record on the Chip Security Act does not contain an independent NIST or National Academy of Sciences assessment of whether on-chip geolocation is technically feasible at scale, resistant to exploitation, and effective against the specific smuggling networks it targets. That analysis should precede a floor vote, not follow it.

*"Industry opposition is self-interested lobbying."* The SIA and ITI have commercial interests in how Congress structures semiconductor export controls. They also have deep technical expertise in how chips are designed and how licensing compliance actually works across global distribution chains. Their objections should be evaluated on the merits. The fact that independent academic researchers at NYU Law and the Center for Cybersecurity Policy and Law have reached the same technical conclusions without commercial stakes is probative. When industry and non-industry experts converge on the same specific technical concerns independently, the convergence deserves more weight than a unanimous committee vote taken without independent feasibility analysis.

## What Congress Should Do

The Chip Security Act should not reach the President's desk in its current form. The House floor vote is an opportunity to send the bill back with instructions to replace the geolocation hardware mandate with an enforcement-first framework that actually addresses the smuggling problem.

Specifically, Congress should:

- **Strike the on-chip geolocation mandate** and replace it with enhanced end-use certification requirements for licensed distributors in high-risk jurisdictions, with criminal liability for falsification
- **Establish a Chip Diversion Intelligence Center** within Commerce, with dedicated funding and interagency data-sharing agreements across BIS, CBP, and OFAC
- **Authorize BIS** to establish a multilateral trusted-buyer registry in coordination with the Netherlands, Japan, South Korea, and the UK, modeled on Wassenaar working group architecture
- **Expand distributor liability** for downstream diversion in advanced semiconductor categories, consistent with the Bank Secrecy Act model
- **Require a NIST feasibility assessment** before any on-chip surveillance hardware mandate is considered in future legislation

Chip smuggling is a serious national security problem that demands a serious policy response. The Chip Security Act, as written, is not that response. It is an ex-ante surveillance mandate imposed across the entire global supply chain to address a targeted enforcement failure — one that creates the attack surfaces it claims to prevent, degrades the trustworthiness premium that defines US chip leadership, and remains spoofing-evadable by the adversaries it most needs to stop.

Congress has the bipartisan will to act on chip smuggling. That will should be directed at the enforcement-first framework that addresses the actual failure — not the surveillance hardware mandate that compounds it. Forty-two to zero is an impressive coalition. It deserves a policy equal to the urgency behind it.
