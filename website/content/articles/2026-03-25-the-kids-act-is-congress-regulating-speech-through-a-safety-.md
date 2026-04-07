---
title: "The KIDS Act Is Congress Regulating Speech Through a Safety Backdoor"
author: "fellow-content-moderation"
date: "2026-03-25"
category: "Content Moderation & Speech"
tags: ["KIDS Act", "KOSA", "Section 230", "First Amendment", "child safety", "age verification", "COPPA", "platform governance"]
status: "published"
format: "policy-brief"
summary: "The KIDS Act omnibus, advanced by the House Energy & Commerce subcommittee in March 2026, swaps 'duty of care' language for 'design feature' mandates — but the constitutional problem is identical. By compelling platforms to restructure how speech is surfaced and sequenced, Congress is regulating editorial architecture without calling it censorship. The bill also launders a Section 230 workaround through parallel tort liability and builds a de facto national ID infrastructure for internet access. Targeted COPPA enforcement and parental-control interoperability offer a better path."
---

The House Energy & Commerce Committee's Communications and Technology subcommittee [advanced the KIDS Act](https://energycommerce.house.gov/posts/cmt-subcommittee-forwards-kids-internet-and-digital-safety-bills-to-full-committee) in March 2026 — a sweeping omnibus of 19 digital safety bills that consolidates KOSA-lineage duty-of-care concepts, COPPA data restrictions, and app-store age-verification mandates into a single legislative vehicle. It is the furthest a child safety omnibus has moved in years. It is also constitutionally indefensible, and the way it fails is more instructive than the fact that it will.

The bill's architects have learned from prior defeats. They stripped out the explicit "duty of care" framing that made earlier KOSA versions easy First Amendment targets and replaced it with specific prohibited "design features": infinite scroll, autoplay video, push notifications, and in-app purchases for minors. The theory is that by targeting product architecture rather than content, Congress sidesteps the speech problem. Courts will not agree — and the bill's Section 230 workaround and age-verification mandate compound the constitutional exposure in ways that deserve far more scrutiny than they are currently receiving.

Child safety online is a legitimate and serious policy concern. The question is not whether Congress should act, but whether this mechanism of action survives constitutional scrutiny and whether it will actually help children. On both counts, the KIDS Act falls short.

## The Design-vs.-Content Reframe Is Cosmetic, Not Constitutional

The central strategic move in the KIDS Act is substituting design mandates for content mandates. Autoplay is not speech, the argument goes — it is engineering. Infinite scroll is a user-interface choice, not an editorial decision. Regulating these features is product safety regulation, not censorship.

This distinction disintegrates on contact with First Amendment doctrine.

In [*Miami Herald Publishing Co. v. Tornillo*](https://supreme.justia.com/cases/federal/us/418/241/), the Supreme Court struck down a Florida law requiring newspapers to grant right-of-reply space to political candidates they had criticized. The law did not dictate content — it merely required that certain content appear alongside other content. The Court held that this structural mandate on presentation and sequencing constituted an unconstitutional intrusion into editorial discretion. Government cannot compel a publication to restructure how speech is arranged.

Autoplay and infinite scroll are not mere engineering choices. They are the mechanism by which a platform's editorial algorithm — its decisions about what to recommend, amplify, and sequence — reaches users. Banning autoplay compels a platform to restructure the sequence in which speech is surfaced. Banning infinite scroll compels a platform to restructure how much speech a user encounters in a session. These are not content mandates in the narrow sense, but they are architectural mandates that directly determine speech exposure. Courts applying *Tornillo* and [*Moody v. NetChoice*](https://www.supremecourt.gov/opinions/23pdf/22-277_d18f.pdf) will see through the reframe.

*Moody v. NetChoice*, decided in 2024, affirmed that platforms' content moderation and curation decisions constitute protected editorial discretion under the First Amendment. The Court made clear that compelled carriage and compelled curation are presumptively unconstitutional. The KIDS Act's design mandates are compelled curation under a different label — they tell platforms *how* to curate rather than *what* to curate, but the First Amendment's editorial-discretion protection does not turn on that distinction. The mechanism of compulsion, not the vocabulary chosen to describe it, controls the constitutional analysis.

Put plainly: prohibiting a platform from using autoplay for users under 17 requires that platform to build and maintain a parallel architecture for a protected class of users, restructuring how speech flows to those users in ways dictated by Congress. That is compelled editorial architecture. [*Reno v. ACLU*](https://supreme.justia.com/cases/federal/us/521/844/) established that internet speech receives full First Amendment protection. The KIDS Act's design-mandate pivot does not move the bill outside *Reno*'s ambit — it merely obscures the fact that it falls within it.

## The Section 230 Workaround in Everything But Name

The second structural defect in the KIDS Act is less visible than the First Amendment problem but potentially more consequential for the legal landscape.

[Section 230(c)(1)](https://uscode.house.gov/view.xhtml?req=(title:47+section:230+edition:prelim)) provides that no provider or user of an interactive computer service shall be treated as the publisher or speaker of information provided by another information content provider. This is the foundational immunity that allows platforms to host third-party speech, make moderation decisions, and invest in trust-and-safety infrastructure without facing ruinous liability for every piece of user-generated content.

The KIDS Act does not amend Section 230. It does not need to. Instead, it creates an independent cause of action predicated on the existence of prohibited design features — features defined by their relationship to content exposure and curation. A plaintiff who can show that a platform deployed autoplay or infinite scroll in a manner that exposed a minor to harmful content now has a direct tort claim that bypasses Section 230's publisher immunity entirely. The platform's status as an intermediary — and the 230(c)(1) shield that status confers — is irrelevant to the design-feature claim.

This is a Section 230 workaround in everything but name. Congress has created parallel liability that functionally achieves what repealing or carving into Section 230 would achieve, without the legislative accountability of actually amending the statute. When Congress amends Section 230 directly, the trade-offs are visible and subject to political scrutiny. When it creates parallel tort liability through a product-design framework, the erosion of intermediary immunity is laundered through product-safety nomenclature.

Smaller platforms face the sharpest exposure. A large incumbent can absorb the compliance cost of redesigning its recommendation infrastructure and defending design-feature litigation; a startup with fifty employees and a novel social product cannot. The practical effect is to entrench the very platforms critics argue have harmed children most, while foreclosing the emergence of competitors that might do better.

## Age Verification at the App Store Builds a National ID Infrastructure

The bill's app-store age-verification mandate would require app stores to verify the age of users before permitting downloads of covered applications, effectively imposing identity verification as a precondition for internet access at scale.

The Supreme Court's June 2025 decision in [*Free Speech Coalition v. Paxton*](https://www.supremecourt.gov/opinions/24pdf/23-1122_3e04.pdf) upheld Texas's age-verification mandate for adult content websites under an intermediate scrutiny framework, giving proponents of age-gate regimes new constitutional footing. The KIDS Act's architects will cite *Free Speech Coalition* as clearance for app-store verification. They are moving too fast.

*Free Speech Coalition* addressed a narrowly targeted mandate for websites whose primary function is distributing sexually explicit material — a context in which the state's interest in keeping such content from minors is at its apex and the platforms' First Amendment claim is relatively weak. The KIDS Act's mandate operates at a categorically different scale: it would require identity verification for access to general-purpose social and communication applications that serve as primary speech forums for adults. The First Amendment interests at stake are substantially greater, and the breadth of the mandate is categorically different.

Moreover, app-store-level verification does not merely confirm age — it creates a persistent, comprehensive record of an individual's internet application usage, tied to verified identity. This is the architecture of a national ID infrastructure for internet access. It creates new data-breach vectors (every app-store operator becomes a honeypot of verified identity records), chills anonymous speech (the [*Packingham v. North Carolina*](https://supreme.justia.com/cases/federal/us/582/15-1194/) right to anonymous participation in online forums is incompatible with identity-verified access), and imposes compliance costs that systematically advantage large platforms over small ones. The [ACLU has rightly flagged](https://www.aclu.org/press-releases/aclu-slams-senate-passage-of-kids-online-safety-act-urges-house-to-protect-free-speech) that age-verification regimes of this scope raise distinct First Amendment concerns entirely independent of the design-mandate problem. The two issues compound each other: a law that both compels editorial architecture and requires identity verification to access that architecture is doubly exposed.

## "Known Minor" Ambiguity Will Drive Over-Restriction for Everyone

The KIDS Act's definitional framework creates a fourth problem that is practical rather than purely doctrinal, but no less serious for that.

The bill's obligations attach when a platform has actual knowledge that a user is a minor, or when a platform has "reason to know" — a standard the bill's text leaves substantially undefined. [The ACLU's analysis](https://www.aclu.org/documents/letter-to-senate-leaders-on-kosas-potential-violation-of-the-first-amendment) of KOSA-lineage legislation has consistently highlighted that this ambiguity creates irresistible pressure toward universal restriction: a platform uncertain whether a given user is a minor, facing significant liability if it guesses wrong, will apply minor-specific restrictions to all users rather than bear the compliance risk.

The predictable outcome is not a curated, age-appropriate experience for minors alongside a full-featured experience for adults. It is a lowest-common-denominator experience for everyone — infinite scroll disabled, autoplay restricted, push notifications limited — because that is the legally safe default. Platforms will not build parallel architectures they cannot reliably enforce; they will compress the entire user base to the more restrictive standard.

This is a concrete harm to adult users' First Amendment interests, imposed in exchange for a speculative and diffuse benefit to minors. Congress is not protecting children from harmful content — it is restricting the speech environment for all users because age-differentiated enforcement is too technically and legally difficult to implement reliably.

## A Better Path Exists

None of this means Congress is powerless to protect children online. It means Congress is reaching for the wrong tools. Three constitutionally sound alternatives deserve serious consideration.

**Robust COPPA enforcement with updated rules.** The [FTC finalized significant changes to the Children's Online Privacy Protection Rule in January 2025](https://www.ftc.gov/news-events/news/press-releases/2025/01/ftc-finalizes-changes-childrens-privacy-rule-limiting-companies-ability-monetize-kids-data), limiting commercial monetization of children's data and tightening consent requirements. These rules are meaningfully stronger than their predecessors. The more important gap is enforcement capacity — the FTC has chronically under-resourced COPPA enforcement relative to the scale of the problem. Congressional action that dramatically increases FTC funding, paired with civil penalties that scale with platform revenue, would be both constitutionally defensible and likely more effective than design mandates.

**Transparent algorithmic audit requirements.** Rather than mandating specific design choices, Congress can require platforms above a certain size to submit to independent audits of their recommendation systems for minor users, with public disclosure of findings. This preserves editorial discretion — the platform decides how to curate — while creating accountability for the public and regulators. Disclosure requirements are far easier to defend constitutionally than compelled architectural changes, and they generate the empirical record that policy should be based on.

**Parental-control interoperability standards.** Parents who want to limit their children's social media use are currently dependent on whatever tools each platform chooses to offer. An interoperability mandate — requiring platforms to expose standard APIs that allow third-party parental control applications to function — empowers parents without compelling any particular editorial choice. This approach respects the platform's First Amendment interests, respects parental autonomy, and creates a competitive market for child-protective tools rather than a one-size-fits-all federal mandate.

## The Constitutional Math Doesn't Change

The KIDS Act's strategic pivot from duty-of-care to design mandates is sophisticated, and its proponents are right that it neutralizes some of the most obvious First Amendment attacks. It does not neutralize the fundamental constitutional problem: Congress is compelling platforms to restructure how speech is surfaced, sequenced, and delivered, and that compulsion triggers First Amendment scrutiny the bill cannot survive.

The Section 230 workaround adds a second defect. The age-verification mandate adds a third. The "known minor" ambiguity guarantees the law's practical effect will be universal over-restriction rather than targeted protection of minors. The constitutional math does not improve as the KIDS Act advances toward full committee markup.

Congress has legitimate tools for protecting children online. Before the full committee markup proceeds, Members owe their constituents a serious engagement with why this approach fails and what alternatives exist. The children the bill purports to protect deserve policy that actually works.
