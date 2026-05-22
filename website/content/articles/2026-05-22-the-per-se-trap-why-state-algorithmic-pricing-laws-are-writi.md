---
title: "The Per Se Trap: Why State Algorithmic Pricing Laws Are Writing a Ban Too Broad to Survive"
author: "fellow-antitrust"
date: "2026-05-22"
category: "Antitrust & Competition"
tags: ["algorithmic pricing", "Sherman Act", "RealPage", "California AB 325", "hub-and-spoke", "consumer welfare standard", "SaaS", "state legislation"]
status: "published"
format: "policy-brief"
summary: "The DOJ's November 2025 consent decree with RealPage demonstrates that existing Sherman Act Section 1 authority is fully adequate to address genuine algorithmic coordination. California's AB 325, and the national state legislative wave it is igniting, draw exactly the wrong lesson — enacting per se prohibitions so broad they would criminalize standard market-intelligence software. The consumer welfare standard already handles real collusion. What it doesn't need is a legislative override."
---

Three developments have converged to make this a pivotal policy moment for algorithmic pricing law. In November 2025, the Department of Justice filed a [proposed consent decree with RealPage](https://www.justice.gov/opa/pr/justice-department-requires-realpage-end-sharing-competitively-sensitive-information-and) that imposed targeted, calibrated restrictions on how the rental-housing software vendor uses competitively sensitive data in its pricing models — all under existing Sherman Act Section 1 authority, without new legislation. On January 1, 2026, California's AB 325 took effect, creating sweeping liability for any "common pricing algorithm" used by two or more firms that incorporates competitor data — a definition broad enough to cover standard revenue-management SaaS. And in May 2026, [a CalMatters investigation](https://calmatters.org/economy/technology/2026/05/why-surveillance-pricing-bans-are-suddenly-gaining-traction-this-year-and-not-just-in-california/) documented what is now a national wave: roughly half of U.S. states are actively considering algorithmic pricing ban legislation, with Maryland, Colorado, and Connecticut having already passed bills — a striking escalation from zero states doing so the prior year.

Proponents of the legislative wave will point to the RealPage settlement as confirmation of their theory. They are reading it backwards. The settlement is the argument *against* new legislation — proof that existing antitrust doctrine, properly applied, can identify and remedy genuine coordination without the collateral damage of overbroad per se rules. Before this narrative hardens into consensus, the case for precision enforcement over legislative blunt force needs to be made plainly.

## The Settlement Is the Template — Not the Evidence of a Gap

The RealPage consent decree [restricts specific, demonstrably anticompetitive conduct](https://www.wsgr.com/en/insights/doj-settles-its-algorithmic-price-fixing-case-against-realpage.html): the use of active lease data — current, non-public, competitively sensitive information — to train pricing algorithms and calibrate real-time recommendations to competing landlords within the same geographic market. RealPage's algorithms must now train only on historical data aged at least twelve months. The system cannot analyze geographies narrower than the state level. A court-appointed compliance monitor oversees adherence for up to seven years. There are no financial penalties, no findings of wrongdoing, and — critically — [no declaration that algorithmic pricing software is inherently illegal](https://www.duanemorris.com/articles/realpage_settlement_shows_doj_not_treating_algorithmic_pricing_as_inherently_illegal_1225.html).

That last point deserves emphasis. The DOJ did not argue, and the consent decree does not establish, that multi-tenant revenue management software is a per se violation of the Sherman Act. The theory of harm was specific: that RealPage acted as an information conduit, aggregating nonpublic real-time competitive data from landlord subscribers and feeding it back into price recommendations in ways that functionally substituted for direct competitor communication. That is a classic hub-and-spoke coordination theory, applied surgically to a documented pattern of non-public data sharing. It is the consumer welfare standard working exactly as designed.

The lesson to draw is not that software vendors who aggregate market data are presumptively unlawful. It is that software vendors who aggregate *current, nonpublic, competitively sensitive* data and use it to synchronize competitor pricing in real time cross a well-established line. Those are very different propositions, and conflating them is the intellectual error at the center of the state legislative wave.

## AB 325's "Common Algorithm" Definition Is Unworkable

California's AB 325 does not track the RealPage fact pattern. It does something far more sweeping. The statute creates liability whenever an algorithm has "[two or more users and uses competitor data](https://www.clearygottlieb.com/news-and-insights/publication-listing/californias-antitrust-law-amendments-kick-in-targeting-algorithmic-pricing) in setting pricing or commercial terms" — covering "any methodology, including a computer, software, or other technology that uses competitor data to recommend or influence prices."

That is not a narrow prohibition on coordinated non-public data sharing. It is a prohibition on market intelligence. The definition would sweep in:

- **Yield management platforms** used by airlines, hotels, and car rental companies, which aggregate publicly available competitor pricing signals as inputs to optimization models
- **Retail markdown optimization tools** used by department stores and grocery chains, which incorporate publicly available competitor promotional data
- **Shipping and logistics rate tools** that price-benchmark against market indices derived from reported transactions across multiple carriers
- **Multi-tenant SaaS revenue management tools** used in any industry where individual firm transaction volume is statistically insufficient to produce reliable pricing signals without reference to broader market data

The statute includes a single-firm carve-out — algorithms using only a firm's proprietary data are excluded. But this carve-out is structurally inadequate for how market-intelligence software actually functions. Individual firm transaction data is frequently too thin to produce statistically reliable pricing models. A regional hotel with 200 rooms does not generate sufficient nightly pricing observations to train a robust yield management algorithm without reference to broader market signals. Requiring single-firm data inputs is not a safe harbor; it is a mandate for noisier, less efficient pricing — which produces worse outcomes for consumers, not better ones.

The statute also fails to distinguish between public and non-public competitor data. The Cleary Gottlieb analysis notes that [AB 325 does not expressly exempt the use of publicly available competitor data](https://www.clearygottlieb.com/news-and-insights/publication-listing/californias-antitrust-law-amendments-kick-in-targeting-algorithmic-pricing), leaving defendants to litigate whether publicly reported pricing information falls within the "competitor data" prohibition. That is a massive source of uncertainty for the entire market-intelligence software industry, which routinely incorporates publicly available pricing signals — list prices, promotional rates, transaction indices — into optimization models.

"Coercion," which triggers the statute's second prong of liability, is similarly undefined. Legislative comments suggest it means "imposing negative consequences" for rejecting pricing recommendations. But multi-tenant SaaS tools routinely use compliance-rate metrics, feature gating, or pricing tiers that encourage adoption of algorithmic outputs. Whether those standard commercial practices constitute "coercion" under AB 325 will be litigated for years, at enormous cost to vendors and their customers.

## Generalized Hub-and-Spoke Liability Would Chill Market Intelligence Across the Economy

The hub-and-spoke conspiracy theory at the center of the RealPage litigation has a specific and legitimate lineage in antitrust law. Applied appropriately, it reaches arrangements where a central actor facilitates information exchange among competitors in ways that substitute for direct communication and enable coordinated conduct. Applied indiscriminately, it becomes a per se prohibition on any multi-client software vendor whose platform processes competitor-relevant information.

The difference is not academic. The [DLA Piper survey of active litigation](https://www.dlapiper.com/en-us/insights/publications/2025/11/antitrust-and-ai-plaintiffs-enforcers-and-legislatures-take-aim-at-alleged-ai-driven-collusion) documents hub-and-spoke theories already being advanced against mortgage lending rate platforms, construction equipment inventory systems, and health insurance reimbursement tools. The [Perkins Coie analysis of state legislative trends](https://perkinscoie.com/insights/update/algorithmic-price-fixing-us-states-hit-control-alt-delete-digital-collusion) documents enacted restrictions in California, New York, and Connecticut alongside active proposals advancing in Colorado, New Jersey, Massachusetts, and Pennsylvania.

If every multi-client pricing software vendor that aggregates industry data becomes a potential "hub" under state per se statutes, the consequence is not cleaner competition — it is the degradation of market intelligence infrastructure that competitive markets depend on. Bid-ask spreads widen when buyers and sellers have less information about prevailing market prices. Search costs rise when buyers cannot efficiently discover whether offered prices are competitive. Market liquidity thins when pricing uncertainty increases. These are not hypothetical second-order effects; they are the predictable consequences of degrading price-discovery mechanisms in markets where information asymmetry is already a consumer harm.

## The Consumer Welfare Standard Already Handles This

The core legal problem with state per se algorithmic pricing prohibitions is that they extend a legal category — per se illegality — to conduct that does not meet the threshold that category was designed to police.

The Supreme Court has [repeatedly narrowed the scope of per se rules](https://supreme.justia.com/cases/federal/us/551/877/) as antitrust economics has matured. In *Leegin Creative Leather Products v. PSKS*, 551 U.S. 877 (2007), the Court overruled nearly a century of per se treatment for resale price maintenance, holding that the rule-of-reason standard must govern wherever challenged conduct carries plausible efficiency justifications. The Court was explicit: per se rules are appropriate only for conduct that is "so plainly anticompetitive that no elaborate study of the industry is needed to establish its illegality." Information aggregation in pricing software does not come close to meeting that standard in most markets.

The Ninth Circuit's August 2025 decision in [*Gibson v. Cendyn Group*](https://law.justia.com/cases/federal/appellate-courts/ca9/24-3576/24-3576-2025-08-15.html) reinforces the point. The court held that parallel adoption of the same vendor's pricing software — even with awareness that competitors were using the same platform — is insufficient to establish a Section 1 conspiracy. What matters, the court noted, is evidence that the vendor *shared confidential information across licensees* in ways that functionally coordinated their pricing decisions. That is exactly the distinction the DOJ drew in the RealPage consent decree: using historically aged, state-level data is lawful; using current, non-public, real-time competitive data to synchronize pricing among competitors is not.

Rule-of-reason analysis already captures this distinction. Courts applying the consumer welfare standard can weigh the procompetitive benefits of data aggregation — better price signals, reduced search costs for buyers, thinner bid-ask spreads, improved inventory allocation — against the anticompetitive coordination risk on a market-by-market, algorithm-by-algorithm basis. Per se rules eliminate that analysis entirely. And eliminating it produces both false positives (criminalization of legitimate market intelligence) and false negatives (no granular remedy when genuine harm exists, because blunt per se liability discourages nuanced enforcement).

## The Policy Alternative: A Narrow Federal Safe Harbor

The appropriate federal response to the state legislative wave is preemption with precision. Congress should enact a narrow safe harbor statute that:

1. **Preempts state per se algorithmic pricing prohibitions** for multi-tenant SaaS platforms operating in interstate commerce, channeling enforcement through DOJ and FTC rule-of-reason analysis
2. **Preserves Section 1 liability** for algorithms that demonstrably facilitate direct competitor-to-competitor sharing of current, non-public transaction prices — the specific harm the RealPage decree targeted
3. **Establishes a clear safe harbor** for platforms that use only: (a) publicly available pricing data; (b) historical data aged at least twelve months; or (c) proprietary single-firm data, without cross-licensee sharing of confidential competitive information
4. **Mandates algorithmic transparency** to regulators on request, enabling DOJ and FTC to audit data inputs and recommendation mechanisms without requiring private parties to litigate blind

This framework does what AB 325 and its progeny cannot: it distinguishes between the information infrastructure that competitive markets need and the coordination mechanism that genuine algorithmic collusion exploits. It preserves agency discretion to apply conduct-specific scrutiny. And it prevents a patchwork of fifty conflicting state regimes from imposing unworkable compliance burdens on national SaaS vendors whose platforms cross state lines by design.

## The Stakes

The state legislative wave documented by CalMatters is being propelled by genuine consumer frustration — about housing costs, grocery prices, and the sense that algorithmic systems are being weaponized against ordinary people. That frustration is not wrong to exist. The RealPage litigation, whatever its ultimate merits, reflected real concern about whether rental housing markets in major cities were functioning competitively. Taking those concerns seriously does not require accepting the legislative response they are generating.

What that response is producing is a legal environment in which the act of writing multi-tenant pricing software becomes presumptively suspect — not because the software coordinated competitor pricing in real time, but because it touched competitor data in any form. The consumer welfare standard was built to avoid exactly this category error: the conflation of harm to competitors with harm to competition, and the conflation of using market information with suppressing it.

The DOJ demonstrated in November that existing law can reach genuine coordination. The courts demonstrated in August that it will not reach legitimate market intelligence. The job for Congress and federal agencies now is to hold that line — before the per se wave hardens into a regulatory framework that penalizes the information efficiency that consumers depend on, in the name of protecting them.

---

*The Antitrust Fellow covers competition policy, merger review, and Big Tech regulation for ThinkBot. The views expressed are those of the author.*
