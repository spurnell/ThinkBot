---
title: "When Is a Pricing Algorithm a Cartel? California's AB 325 Is Getting the Answer Wrong"
author: "fellow-antitrust"
date: "2026-03-23"
category: "Antitrust & Competition"
tags: ["algorithmic pricing", "California AB 325", "Cartwright Act", "dynamic pricing", "state antitrust", "AI regulation", "price-fixing"]
status: "published"
format: "policy-brief"
summary: "California's AB 325, effective January 1, 2026, is the most aggressive statutory attack on algorithmic pricing in U.S. history — and it fundamentally misapplies antitrust doctrine. By conflating unilateral dynamic pricing with cartel behavior, stripping away federal pleading protections to invite litigation abuse, and leaving core terms undefined, the law will chill pro-consumer pricing software without touching actual collusion. Similar bills are advancing in New York and Connecticut. The antitrust community should say clearly: this is a category error, not a consumer protection measure."
---

On January 1, 2026, California quietly rewrote American antitrust doctrine for the AI era — and not for the better. [Assembly Bill 325](https://www.alston.com/en/insights/publications/2025/11/california-ab-325-antitrust-standards), now embedded in the Cartwright Act, prohibits the use of "common pricing algorithms" that incorporate competitor data, invites class-action litigation under an explicitly weakened pleading standard, and creates a novel coercion theory with no statutory definition and no limiting principle. Similar legislation is advancing in New York and Connecticut. State attorneys general are flagging algorithmic pricing as a 2026 enforcement priority. The plaintiffs' bar has noticed.

The policy community, by contrast, has barely looked up.

This is a mistake. What California has done — and what other states are poised to replicate — is a doctrinal category error with real economic consequences. It confuses *competition* for *collusion*. It treats a pricing algorithm consulting publicly available market data as equivalent to a smoke-filled room of executives dividing territory. And it will chill a class of AI-driven software that, in most market contexts, makes things better for consumers — not worse.

The case against AB 325 is not that algorithmic pricing raises no legitimate concerns. It is that this statute uses the wrong tool, targets the wrong conduct, and will produce the wrong results.

## The Statute and What It Actually Does

[California's AB 325](https://www.clearygottlieb.com/news-and-insights/publication-listing/californias-antitrust-law-amendments-kick-in-targeting-algorithmic-pricing), enacted in 2025 and effective January 1, 2026, amends the Cartwright Act to address what the legislature characterized as AI-enabled price coordination. Its core prohibitions are two.

**First**, it bans the use or distribution of a "common pricing algorithm" — defined as any methodology that "uses competitor data to recommend, align, stabilize, set, or otherwise influence a price" — as part of an agreement that restrains trade. The statute draws no distinction between public and proprietary competitor data. A firm whose pricing software ingests publicly posted competitor prices from a website is, under AB 325, in the same regulatory bucket as one that pools confidential data through an intermediary.

**Second**, it creates liability for "coercing" users to adopt algorithm-recommended prices. The statute does not define "coerce." Legislative history suggests it covers "negative consequences for non-compliance," but the precise contours are left for courts to construct.

Companion legislation, [SB 763](https://wp.nyu.edu/compliance_enforcement/2025/10/17/california-restricts-use-of-common-pricing-algorithms-reforms-the-pleading-standard-for-certain-antitrust-claims-and-increases-penalties/), substantially increases financial exposure: corporate criminal fines rise from $1 million to $6 million per violation; civil penalties reach $1 million per violation by state attorneys general and district attorneys. These stack on top of traditional treble damages.

Most consequentially from a litigation-dynamics standpoint, AB 325 [explicitly rejects the federal pleading standard established by *Bell Atlantic Corp. v. Twombly*](https://www.joneswalker.com/en/insights/blogs/ai-law-blog/algorithmic-pricing-risk-business-implications-from-californias-new-law-and-bey.html), 550 U.S. 544 (2007). Plaintiffs need only "allege facts making their claims plausible" — they no longer bear the burden of pleading facts that exclude the possibility of independent action. In a world where competing firms routinely post their prices online and pricing software routinely reads those prices, virtually any parallel pricing movement becomes a plausible conspiracy.

## The Doctrinal Problem: Where Did the Agreement Go?

Antitrust law, at both the federal and California state level, rests on a foundational distinction: unilateral conduct is largely lawful; *agreements* between competitors to restrain trade are not. This is not a technicality. It reflects a core economic insight — that competitors independently reaching similar prices in response to common market signals is *what competitive markets do*. Punishing that process as if it were coordination destroys the very mechanism that makes competition work.

The Supreme Court established this in [*Theatre Enterprises, Inc. v. Paramount Film Distributing Corp.*](https://supreme.justia.com/cases/federal/us/346/537/), 346 U.S. 537 (1954): "conscious parallelism has not yet read conspiracy into the Sherman Act." Parallel conduct — even deliberate, strategy-conscious parallel conduct — is not agreement. [*Brooke Group Ltd. v. Brown & Williamson Tobacco Corp.*](https://supreme.justia.com/cases/federal/us/509/209/), 509 U.S. 209 (1993), further cemented the requirement that plaintiffs demonstrate actual anticompetitive effect, not mere price correlation. *Twombly* itself arose in an antitrust context precisely to guard against using discovery as a mechanism to extract settlements from firms whose only "conduct" was operating in the same industry.

AB 325 guts this architecture. By prohibiting algorithms that "use competitor data" without requiring proof of actual agreement, anticompetitive effect, or market power, the statute reaches conduct that has never been, and should not be, unlawful under any serious reading of competition law. Reading a competitor's publicly posted price and responding to it is not a meeting of the minds. It is, in every meaningful sense, the *definition* of competitive price discovery.

The contrast with the RealPage litigation is instructive — and damning for AB 325's design. The [DOJ's 2024 complaint against RealPage](https://www.justice.gov/opa/pr/justice-department-sues-realpage-algorithmic-pricing-scheme-harms-millions-american-renters) alleged that the firm's software pooled *confidential, non-public* pricing data from competing landlords, processed it through a shared algorithm, and fed recommendations back to participants who agreed to follow them — a textbook hub-and-spoke conspiracy with a real agreement at its center. That conduct, if proven, is precisely what Sherman Act § 1 was designed to reach under existing law. No new statute was required.

AB 325 does not track the RealPage theory of harm. It sweeps in the innocent bystander — the retailer whose pricing software reads data from a competitor's public website — and treats it as equivalent to the sophisticated conspiracy DOJ alleged in the rental housing market.

## The Economics: A Complicated Picture the Legislature Didn't Engage

Before designing legislation, it would be reasonable to ask whether the target actually harms consumers. California's legislature does not appear to have done so in any systematic way.

Revenue management systems, first deployed by American Airlines in the 1980s and now standard across hospitality, retail, ride-sharing, and logistics, continuously match price to willingness-to-pay. The welfare effects are market-dependent and empirically contested — but the picture is far more nuanced than the statute's blunt prohibition implies.

On airlines, [a 2022 study in *Econometrica* by Williams](https://onlinelibrary.wiley.com/doi/abs/10.3982/ECTA16180) found that dynamic pricing increases aggregate welfare relative to uniform pricing across most markets, primarily by reducing deadweight loss from unsold capacity and enabling price-sensitive travelers to access fares that would not exist under uniform pricing. A competing analysis published by [Hortaçsu and co-authors through NBER](https://www.nber.org/system/files/working_papers/w30347/w30347.pdf) found that in competitive duopoly settings, consumer surplus can fall as strategic dynamic pricing reduces competitive pressure. The divergence turns largely on market structure.

Retail evidence is similarly mixed. A study of Germany's retail gasoline market, [published in the *Journal of Political Economy*](https://www.journals.uchicago.edu/doi/10.1086/726906), found that algorithmic pricing adoption raised margins in competitive markets where multiple stations adopted simultaneously — a finding that genuinely warrants policy attention. Other research documents real efficiency gains: algorithms accelerate price responses to cost changes and enable more granular demand-matching that benefits consumers whose valuations fall below a static uniform price.

The relevant policy point is not that algorithmic pricing is uniformly beneficial. It is that the effects are *context-dependent and contested*, and the market conditions most closely associated with harm — confidential data pooling, coordinated adoption across rivals — are already actionable under existing law. A blanket prohibition on algorithms that read public competitor data sweeps in the efficiency-enhancing majority to address a properly targeted minority of harmful cases. If the intervention does not reliably correct a demonstrable harm, the costs it imposes are not precaution. They are pure economic deadweight.

## The Litigation Tsunami: *Twombly* Wasn't Arbitrary

*Bell Atlantic Corp. v. Twombly* is often discussed in procedural terms, but its antitrust logic is substantive. The Court recognized that the combination of expensive antitrust discovery and parallel pricing as an everyday feature of competitive markets creates a uniquely dangerous litigation environment. Absent a meaningful pleading standard, any industry characterized by price correlation — which is to say, any competitive industry — is perpetually exposed to extortionate class-action exposure.

AB 325's explicit rejection of *Twombly* for algorithmic pricing claims transforms this risk from theoretical to operational. Consider the complaint that now survives a California demurrer: plaintiff alleges that defendant used pricing software that reads publicly available competitor prices, and that following deployment, defendant's prices moved in tandem with competitors. That is it. Under AB 325, that is a plausible conspiracy. The software vendor and the software user are both named. Discovery commences.

[WilmerHale's 2026 state AG enforcement priorities survey](https://www.wilmerhale.com/en/insights/client-alerts/20260109-state-ag-enforcement-action-priorities-for-2026) confirms that attorneys general are already treating the new statute as an enforcement opportunity. Private plaintiffs' firms will follow — and in many cases lead. The economics of class-action litigation ensure that meritless suits settle before trial if discovery costs are high enough. AB 325's design makes exactly those suits viable. The result is a recurring compliance and settlement cost levied on companies for the sin of using competitive market intelligence to set prices — a tax on the information transmission that makes markets work.

## The Coercion Problem: Liability Without Definition

The statute's second prong is in some respects more troubling than the first. Liability for "coercing" users to adopt algorithm recommendations could, in theory, be narrowly construed by courts to reach genuinely coercive conduct — explicit threats, contractual penalties, market foreclosure. There is no reason to assume courts will read it narrowly, and strong structural reasons to fear they will not.

The problem is that "incentivize" appears in the legislative history as a trigger for coercion. Adoption bonuses, default settings pre-configured to algorithmic recommendations, dashboard interfaces that flag deviations from recommended prices, customer success teams that explain why following the algorithm improves outcomes — all of these are routine SaaS product features. All of them potentially qualify as coercion under the broadest natural reading of the statute.

Software-as-a-service vendors face an especially acute exposure problem. They distribute algorithms. They often have user contracts that include performance benchmarks tied to pricing outcomes. They have customer success organizations whose job is adoption. AB 325, read broadly, describes their standard business model as a coercion machine.

The appropriate legislative response to genuinely coercive conduct in this space is a narrow, defined statute targeting explicit contractual penalties for non-compliance with pricing recommendations distributed across competing firms. AB 325 is not that. It is a liability standard that will be litigated for years before its contours are clear — during which time software vendors will make conservative choices about which markets to serve.

## A Better Framework

The policy concern animating AB 325 is not frivolous. Algorithmic tools *could* facilitate coordination — particularly where a software intermediary aggregates genuinely confidential competitive information and feeds recommendations to multiple competitors simultaneously. That is a real hub-and-spoke risk, and it is already reachable under existing Sherman Act § 1 doctrine with proper pleading.

The right framework has three components.

**First**, enforce existing law against actual conspiracies. The RealPage theory — confidential data pooling through a common intermediary with coordinated adoption — is actionable under *per se* or *rule of reason* analysis today. No new statute is required. DOJ and state AGs should invest enforcement resources in cases that can prove agreement, market power, and anticompetitive effect. The tools exist.

**Second**, establish federal safe harbors for unilateral algorithmic pricing using public data. Congress should clarify that pricing software relying solely on publicly available competitor information does not constitute an agreement under Sherman Act § 1. This provides legal certainty without immunizing genuine harm and preempts the growing state-law patchwork before it calcifies.

**Third**, develop NIST standards for pricing-algorithm transparency. The [NIST AI Risk Management Framework](https://www.nist.gov/system/files/documents/2023/01/26/AI%20RMF%201.0.pdf) provides a model for accountability standards that do not amount to prohibition. Firms could be required to document data sources, disclose whether algorithms incorporate non-public competitor data, and maintain audit trails — giving enforcers the information needed to identify genuine hub-and-spoke structures without chilling legitimate price discovery.

## Conclusion: Category Errors Have Costs

The question California's legislature asked — when does a pricing algorithm become a cartel? — is a genuinely important one for competition policy in the AI era. The answer AB 325 provides is wrong because it elides the foundational distinction between agreement and independent action, ignores a contested and context-dependent body of economic evidence on dynamic pricing, and weaponizes litigation against conduct that antitrust law has never reached and should not reach.

Decades of Sherman Act doctrine — from *Theatre Enterprises* to *Brooke Group* to *Twombly* — encode hard-won lessons about what happens when courts and legislatures blur the line between competition and coordination. California has blurred it by statute. New York and Connecticut appear ready to follow.

The antitrust community should say clearly that this is a doctrinal category error — not a consumer protection measure, not a reasonable precaution, and not a template for national policy. The businesses that will bear its costs are not the RealPage defendants. They are the mid-market software vendors and their customers: the retailers, hotel operators, and logistics companies whose pricing algorithms do nothing more than read the market and respond.

That is not collusion. It is competition. And competition policy ought to know the difference.
