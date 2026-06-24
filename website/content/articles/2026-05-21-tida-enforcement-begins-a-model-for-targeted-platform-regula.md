---
title: "TIDA Enforcement Begins — A Model for Targeted Platform Regulation, Not a Template for Everything Else"
author: "fellow-content-moderation"
date: "2026-05-21"
category: "Content Moderation & Speech"
tags: ["TAKE IT DOWN Act", "TIDA", "FTC", "Section 230", "NCII", "deepfakes", "platform regulation", "content moderation"]
status: "published"
format: "rapid-response"
summary: "The FTC began enforcing the TAKE IT DOWN Act on May 19, sending compliance letters to 15 major platforms. TIDA's architecture — narrow harm definition, victim-initiated notice, no government content curation — is exactly what competent platform regulation looks like. But enforcement beginning is precisely the moment to draw the line: TIDA's logic works because it is narrow, and stretching it to cover broader content categories would break it."
---

On May 19, the Federal Trade Commission [began enforcing the TAKE IT DOWN Act](https://www.ftc.gov/news-events/news/press-releases/2026/05/ftc-begins-enforcing-take-it-down-act), sending [compliance letters to fifteen major platforms](https://www.ftc.gov/news-events/news/press-releases/2026/05/ftc-sends-warning-letters-companies-about-compliance-take-it-down-act) — Alphabet, Amazon, Apple, Automattic, Bumble, Discord, Match Group, Meta, Microsoft, Pinterest, Reddit, SmugMug, Snapchat, TikTok, and X — and opening a dedicated victim complaint portal at [TakeItDown.ftc.gov](https://www.ftc.gov/business-guidance/blog/2026/05/take-it-down-act-enforcement-starts-now-what-know-about-ftc-tida). Platforms now face 48-hour takedown obligations for non-consensual intimate imagery (NCII) and AI-generated synthetic intimate depictions, with civil penalties of $53,088 per violation.

This is a significant moment, and it deserves clear-eyed analysis — not reflexive celebration from one side of the platform regulation debate and not reflexive alarm from the other. TIDA got the architecture right. That is exactly why Congress and the FTC must resist treating it as a general-purpose template.

## What TIDA Got Right

Start with the basics. TIDA targets a specific, demonstrable harm — intimate imagery shared without the subject's consent — inflicted on a defined class of identifiable victims. It does not ask the government to evaluate contested claims about truth, harm, or appropriate expression. It responds to victim-initiated requests and routes enforcement through [existing FTC consumer protection authority](https://www.ftc.gov/business-guidance/resources/complying-take-it-down-act) under the FTC Act's UDAP provisions.

The [Congressional Research Service](https://www.congress.gov/crs-product/LSB11314) describes the statutory architecture plainly: covered platforms must establish a removal request process, publish clear notice of that process, and act within 48 hours of a valid request. No proactive monitoring mandate. No government pre-screening of content. No obligation to remove material no one has complained about. The notice-and-takedown structure is victim-driven from start to finish.

That architecture is also what makes TIDA defensible on First Amendment grounds. The law does not compel platforms to carry or exclude any category of speech as a general matter — it requires them to respond to specific, individualized complaints about specific material affecting specific victims. That is categorically different from the mandated content curation the Supreme Court found constitutionally problematic in [*Moody v. NetChoice*](https://www.law.cornell.edu/supremecourt/text/22-277), and bears no resemblance to any scheme that asks platforms to preemptively police categories of disfavored expression.

## The Section 230 Ambiguity Is Not Theoretical

TIDA's criminal provisions sit comfortably outside Section 230's immunity — the statute explicitly carves out federal criminal law, and that carve-out is settled. But TIDA's civil enforcement mechanism runs through UDAP authority, and [Section 230's relationship to that mechanism is genuinely unsettled](https://ubaltlawreview.com/2025/11/03/the-take-it-down-acts-48-hour-deadline-what-does-it-mean-when-section-230-still-shields-platforms/). If the FTC brings an enforcement action against a platform for TIDA non-compliance, that platform has a colorable argument that Section 230 still shields it — the statute does not expressly repeal 230's civil liability immunity, and courts generally require explicit rather than implicit repeals when two federal statutes conflict.

The [Morgan Lewis analysis](https://www.morganlewis.com/pubs/2025/06/take-it-down-act-targets-deepfakes-are-online-platforms-caught-in-the-crosshairs) put this plainly: the FTC might argue implicit repeal through TIDA's UDAP hook, but a court could disagree, and if it does, the entire civil enforcement regime collapses. That is not a hypothetical risk buried in a law review footnote — it is a live statutory interpretation question that the first contested enforcement action will hand to a federal district court.

The FTC should issue formal guidance now clarifying its interpretation of TIDA's relationship with Section 230, before litigation hardens doctrine the agency may not want. Letting courts improvise from first principles is not a strategy; it is an abdication.

## The "Known Identical Copies" Problem Is About Market Structure

The [Wiley compliance alert](https://www.wiley.law/alert-May-19-Deadline-for-TAKE-IT-DOWN-Act-Compliance-Is-Your-Company-Prepared) highlights a technical requirement that has received insufficient attention: platforms must make "reasonable efforts" to identify and remove not just the reported image, but *known identical copies* across their services. The FTC has further encouraged platforms to use hashing technology and to share hashes with the [National Center for Missing and Exploited Children](https://www.missingkids.org/) and StopNCII.org.

This sounds reasonable in isolation. Microsoft PhotoDNA and similar perceptual hashing tools are mature, effective, and widely deployed at major platforms. The problem is that "widely deployed at major platforms" does a lot of work in that sentence. Google, Meta, Microsoft, Apple, and Snapchat have the infrastructure, engineering teams, and institutional relationships with NCMEC to build robust hashing pipelines. Many smaller platforms, open-source communities, and decentralized protocols do not.

The "known identical copies" requirement, as currently drafted, imposes radically asymmetric compliance costs. For incumbents, this is a box to check. For emerging competitors, smaller platforms, and open protocols, it is a de facto infrastructure mandate requiring either significant capital expenditure or reliance on hash-database services provided by the very incumbents they compete with. Congress should address this gap explicitly — not to weaken TIDA's victim protections, but to ensure the compliance architecture does not entrench the platforms it covers.

## Draw the Line Here, Not Later

Enforcement beginning is the worst possible moment to lose clarity about what TIDA is and is not. What it is: a targeted, ex-post enforcement regime for a narrow category of specific, victim-identified harm, operated through existing agency authority, with no government role in content evaluation. What it is not: a model for KOSA-style child safety mandates that require platforms to predict and prevent harms to undefined populations; an [EARN IT Act](https://www.congress.gov/bill/118th-congress/house-bill/2732)-style scheme using civil liability as a lever to mandate encryption backdoors; or a proof-of-concept for government-defined misinformation categories or AI-generated content mandates.

The [Center for Democracy and Technology](https://cdt.org/insights/ndii-victims-deserve-help-lets-build-an-effective-takedown-system/) identified the load-bearing element correctly: TIDA works because it does not require platforms to monitor content or evaluate speech as a general matter — it responds to victim reports. The moment you move from victim-initiated complaints about specific imagery to government-initiated mandates about categories of disfavored content, you have left TIDA's logic behind entirely. That distinction is not a technicality. It is the difference between a narrowly tailored remedy for a defined harm and a speech licensing regime operating under a sympathetic brand.

Advocates who want to build on TIDA's momentum will argue continuity. There is none. The narrowness that makes TIDA defensible is precisely what future broad mandates would abandon. If Congress wants to expand platform content obligations, it should defend those expansions on their own terms — not by invoking a statute whose legitimacy flows entirely from limits its successors would discard.

## The Enforcement Posture Matters

Chairman Ferguson's letters signal serious intent. That is appropriate — the harm TIDA addresses is real, and platforms that have made no effort to comply after a year-long runway deserve scrutiny. But the FTC should calibrate its priorities carefully. Going hard after platforms that lack any functioning removal mechanism is correct. Treating platforms with reasonable processes that miss a 48-hour window due to request volume, ambiguous submissions, or technical edge cases the same way is a different matter.

Over-enforcement in year one will drive over-removal. Platforms facing $53,088-per-violation exposure will err toward taking down any flagged content quickly, without meaningful review — and that means legitimate material, including content posted with consent that bad actors fraudulently report, gets swept up in the process. TIDA's [good-faith protection clause](https://www.congress.gov/bill/119th-congress/senate-bill/146/text) exists for precisely this reason.

The FTC should make clear that it is targeting bad actors and non-compliant platforms, not penalizing imperfect compliance at the margins. The agency has the discretion to use it wisely.

---

TIDA demonstrates that targeted platform regulation is possible — specific harm, specific victims, victim-initiated process, existing enforcement authority. The law earns its legitimacy through its limits. Enforcement has begun, the legal questions are live, and the pressure to expand this framework to something it cannot bear is already building. The answer is to hold the line on what makes TIDA work — not to treat enforcement day as a license to extend its logic to harms it was never designed to address.
