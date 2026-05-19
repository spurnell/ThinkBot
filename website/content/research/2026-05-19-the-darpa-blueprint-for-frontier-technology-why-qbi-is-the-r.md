---
title: "The DARPA Blueprint for Frontier Technology: Why QBI Is the Right Model and How to Scale It"
author: "fellow-tech-innovation"
date: "2026-05-19"
category: "Tech & Innovation"
tags: ["quantum computing", "DARPA", "industrial policy", "frontier technology", "R&D policy", "innovation policy", "QBI"]
status: "published"
format: "research-paper"
summary: "DARPA's Quantum Benchmarking Initiative represents the most structurally rigorous public commitment to utility-scale quantum computing yet made by any government. This paper develops a four-dimension framework — milestone accountability, capital efficiency, private-sector leverage, and timeline to utility-scale output — to evaluate QBI against the EU Quantum Flagship and China's state-directed quantum programs. QBI's focused, milestone-gated architecture substantially outscores both alternatives on the dimensions that predict verifiable utility-scale output. The paper closes with five statutory features Congress should embed in all future frontier technology program authorizations, translating DARPA's structural design into legislative requirements that can be specified and enforced without transferring the culture that took six decades to build."
---

## Abstract

The [National Quantum Initiative Act (P.L. 115-368)](https://www.congress.gov/bill/115th-congress/house-bill/6227) established quantum computing as a federal strategic priority in 2018. DARPA's Quantum Benchmarking Initiative is the agency's flagship operational response: a milestone-gated, competitively solicited program targeting utility-scale quantum advantage by 2033, with Stage C awards potentially reaching $300 million per qualifying team. The harder question — what kind of government funding architecture most reliably converts that commitment into verifiable strategic advantage — has not been examined with rigor.

This paper develops a four-dimension framework for evaluating frontier technology funding architectures: milestone accountability (are targets hard, independent, and funding-consequential?); capital efficiency (output per dollar against a defensible leverage baseline); private-sector leverage (crowding-in versus substitution); and timeline to utility-scale output (is there a date-bound commercial benchmark?). The framework is grounded in the IMF's October 2025 finding that industrial policy returns are strongly conditional on institutional design quality and Azoulay et al.'s (2019) causal identification of public R&D leverage ratios.

Applied comparatively to QBI, the EU Quantum Flagship, and China's state-directed quantum programs, the framework finds that QBI's focused, milestone-gated, competitively solicited architecture substantially outscores both alternatives on the dimensions that predict verifiable utility-scale output. The EU Flagship optimizes for pan-European capacity and political coalition at the cost of milestone accountability and timeline commitment. China's program is opaque by design — a structural finding independent of underlying capability.

The paper closes with five statutory features Congress should embed in all future frontier technology program authorizations: a hard date-bound utility-scale benchmark; milestone-gated funding continuation with termination authority; competitive re-solicitation requiring demonstrated progress; program manager term limits codified in statute; and a defined private-investment exit threshold before the final funding tranche is released. QBI satisfies all five in observable form — with the exit-threshold criterion identified as the area most in need of refinement before the first milestone reviews arrive. The template generalizes to ARPA-H, advanced nuclear, and neuromorphic computing, and is designed for circulation before QBI's first milestone reviews and the FY2028 science funding debates.

---

## 1. Introduction: The QBI Question

When Congress passed the [National Quantum Initiative Act (P.L. 115-368)](https://www.congress.gov/bill/115th-congress/house-bill/6227) in 2018, it made an explicit judgment: quantum information science is strategically significant enough to warrant coordinated federal investment and a dedicated coordination office within the White House. DARPA's operational response — the Quantum Benchmarking Initiative — is the agency's most structurally ambitious implementation of that mandate. QBI pits teams against hard benchmarks, conditions continued funding on demonstrated performance, targets utility-scale quantum advantage by 2033, and structures awards so that Stage C recipients demonstrating utility-scale capability can receive contracts potentially reaching $300 million per qualifying organization.

That commitment is not the subject of this paper. The harder question follows from it: given that the United States has decided to fund frontier quantum technology through a DARPA-style program, what kind of funding architecture is most likely to produce the strategic advantage that decision is meant to secure?

The question matters now because the United States, the European Union, and China are simultaneously running three fundamentally different frontier technology investment models — and their structural differences are not well understood by the policymakers who will soon be evaluating whether to continue, expand, or redesign them. DARPA's QBI represents one model: focused, milestone-driven, accountable to a hard date-bound benchmark, competitive among funded teams. The EU Quantum Flagship represents a second: a pan-continental consortium architecture distributing investment across 28 countries and thousands of researchers, optimizing for broad capacity-building and political sustainability rather than convergence on a single utility-scale output. China's state-directed quantum program represents a third: massive capital commitment operating through planning directives, with accountability structures that run internal to the Party-state rather than outward to independent technical review.

All three are active. All three are well-funded by historical standards. And all three will generate outputs over the next decade that policymakers will use to evaluate the returns on public frontier technology investment. The structural choices embedded in each program — made at authorization, often without explicit comparison to alternatives — will determine which outputs those programs can actually deliver.

This paper does three things. First, it develops a four-dimension analytical framework for evaluating frontier technology funding architectures: milestone accountability, capital efficiency, private-sector leverage, and timeline to utility-scale output. The framework is grounded in the best available empirical evidence on public R&D investment effectiveness — including [Azoulay, Graff Zivin, Li, and Sampat's (2019)](https://academic.oup.com/restud/article/86/1/117/5038510) causal identification of public R&D leverage ratios and [Chapter 3 of the IMF's October 2025 *World Economic Outlook*](https://www.imf.org/-/media/files/publications/weo/2025/october/english/ch3.pdf) on the institutional-quality conditionality of industrial policy returns. The dimensions are explicitly chosen to be evaluable prospectively — when outcome data is unavailable, as it always is at the point when program design decisions are made.

Second, the paper applies the framework comparatively to QBI, the EU Quantum Flagship, and China's state-directed quantum investment. The comparison is structural: it assesses which programs have embedded the design features associated with verifiable utility-scale output, not which programs will ultimately produce superior technical results. The paper is candid about the limits of this assessment — China's program may outperform what is observable from outside it, and QBI has not yet proven its model in operation. The structural assessment predicts probability of the right kind of output, not certainty of any outcome.

Third, the paper translates the framework into five statutory features specific enough for a legislative drafter to use. Congress is currently funding multiple frontier technology programs — QBI, [ARPA-H](https://arpa-h.gov/), the [Department of Energy's Advanced Reactor Demonstration Program](https://www.energy.gov/ne/advanced-reactor-demonstration-program), and the full CHIPS and Science Act implementation architecture — without a common design standard governing what those programs must structurally commit to in order to receive continued appropriations. The variation in structural quality is traceable to that absence. The five features this paper proposes are not a funding expansion argument; they are a design quality floor for programs Congress has already decided to fund.

The paper's publication timing is deliberate. QBI's first milestone reviews are expected in the late 2020s; the FY2028 science funding debates, at which appropriators will assess whether QBI's structure warrants continuation and whether comparable features should be required elsewhere, will begin in earnest in early 2027. This paper targets circulation in advance of both — not as a brief for a specific outcome, but as a rigorous analytical foundation for deliberations that will shape US frontier technology policy for a decade.

---

## 2. A Framework for Evaluating Frontier Technology Funding Architectures

This section develops the four-dimension framework used throughout the paper to evaluate QBI, the EU Quantum Flagship, and China's quantum programs against the question that matters most: which program architecture is most structurally capable of producing verifiable utility-scale output by a defined date?

The central challenge in assessing frontier technology programs is that the most important evidence arrives last. Whether a quantum computing investment produces utility-scale advantage will be known — if at all — a decade after the funding decision. Policymakers who wait for outcome data before forming judgments about program design will always be fighting the last war.

This creates a genuine analytical problem. It is not enough to observe that DARPA has a strong track record; the question is *what features of DARPA's design account for that track record*, and whether those features can be identified and evaluated prospectively. A funding architecture that embeds the right structural properties gives a program the best observable probability of producing the intended output. One that does not will produce the wrong outputs reliably, regardless of how much capital it deploys.

The case for structural evaluation is strengthened by the most rigorous recent cross-national evidence on industrial policy. [Chapter 3 of the IMF's October 2025 *World Economic Outlook*](https://www.imf.org/-/media/files/publications/weo/2025/october/english/ch3.pdf) — drawing on a dataset of industrial policy interventions across 68 countries — finds that program effectiveness is strongly conditional on institutional quality. Countries with weak administrative capacity see negligible returns from industrial policy even when capital commitments are substantial; the binding constraint is not funding but the institutional machinery through which it flows. The implication for frontier technology programs is direct: structural design choices are not implementation details. They are the primary determinant of whether public investment produces the intended output.

The paper evaluates funding architectures along four dimensions, each derived from identifiable features of programs that have produced accountable output at scale.

---

**Dimension 1: Milestone Accountability**

Does the program commit to hard, externally verifiable targets — and are those targets tied to funding continuation?

The distinction between hard and soft milestones is more consequential than it appears. A soft milestone (completing a workstream, publishing a report, demonstrating a laboratory result) measures activity. A hard milestone measures proximity to the program's intended commercial or strategic output. Programs organized around activity milestones reliably produce activity. Programs organized around hard output targets face continuous structural pressure to converge on those targets or explain why funding should continue.

The operationalization matters as much as the commitment. A milestone is verifiable only if its success criterion is defined before the review, evaluated by parties without a stake in the program's continuation, and attached to a consequence — typically funding extension or termination — that gives program managers a genuine incentive to hit it. Programs that score high on this dimension have hard benchmarks set in advance, independent review, and real funding consequences for failure. Programs that score low substitute narrative progress reports and consensus roadmaps, which generate continuity pressure regardless of technical performance.

---

**Dimension 2: Capital Efficiency**

What output does the program generate per dollar of public investment, and how does that ratio compare to a defensible baseline?

The most rigorous empirical foundation for this dimension comes from [Azoulay, Graff Zivin, Li, and Sampat (2019)](https://academic.oup.com/restud/article/86/1/117/5038510) in the *Review of Economic Studies*. Using exogenous variation in NIH peer review rules to isolate the causal effect of public R&D spending, they find that a $10 million increase in NIH funding produces a net increase of 2.7 private-sector patents — establishing a measurable leverage ratio for basic research investment. The paper's methodological contribution is the causal identification strategy; its policy implication is that public R&D investment can produce quantifiable downstream private output, but the ratio varies significantly with program design.

For DARPA-style programs, historical evidence suggests a leverage ratio of approximately $8 to $12 in private R&D investment per dollar of public commitment. This figure is drawn from [Bonvillian and Van Atta's (2011)](https://link.springer.com/article/10.1007/s10961-011-9223-x) analysis of DARPA's program model and the private-investment patterns that followed its major technology thrusts, spanning the 1970s through the 2000s. It should be treated as an order-of-magnitude anchor rather than a precise prediction for modern quantum programs — today's deep-technology investment environment differs in the availability of private capital and the maturity of the venture ecosystem. The structural dynamic the ratio captures, however, remains: programs that intervene at stages where private capital is absent generate leverage; programs that intervene where private capital already flows produce substitution.

Capital efficiency cannot be assessed from funding levels alone. The relevant metrics are output per dollar (patents, licenses, spinouts, demonstrated capabilities) and leverage (private investment induced per public dollar committed). Programs that score high on this dimension produce verifiable output ratios and induce private co-investment. Programs that score low produce diffuse outputs — publications, trained researchers, consortium activity — that are real contributions but not the intended strategic output.

---

**Dimension 3: Private-Sector Leverage**

Does public funding crowd in private capital, or does it substitute for investment that would have occurred regardless?

The crowding-in versus crowding-out distinction is the most consequential structural question in frontier technology program design. If public investment enters at a stage where private capital is already flowing — where technical uncertainty is manageable and commercial returns are visible — it displaces private investment rather than catalyzing it. The effective subsidy flows to investors who would have funded the work anyway, and the marginal public dollar produces diminishing returns. If public investment enters at the pre-commercial stage where private capital is rationally absent — because technical uncertainty is too high and time horizons too long for investors with fiduciary obligations — it can open a field that private capital subsequently enters at scale.

The policy implication is that frontier technology programs must be designed for stage-appropriate intervention *and* explicit exit. A program that enters correctly at the pre-commercial frontier must also define the conditions under which it withdraws. Without a defined exit threshold — a level of demonstrated technical feasibility or private investment interest at which public funding concludes — programs tend to persist indefinitely, gradually migrating down the technology readiness ladder into territory where private capital would otherwise operate. This produces precisely the substitution dynamic that well-designed programs should avoid.

The leverage ratio concept from Dimension 2 connects directly here: a high leverage ratio is evidence of crowding-in; a low or declining ratio as a program matures is evidence that public capital is beginning to substitute for private investment that would have followed commercial viability signals anyway. Programs that score high on Dimension 3 enter at stages where private capital is genuinely absent, establish observable criteria for measuring private co-investment, and define exit thresholds that sunset public funding once private interest is demonstrable.

---

**Dimension 4: Timeline to Utility-Scale Output**

Does the program commit to a hard, externally verifiable commercial or strategic benchmark by a specific date?

Timeline commitment is the structural feature most frequently omitted from government technology programs — and its absence is not neutral. A program without a defined utility-scale benchmark defaults to an indefinite research mandate. Research mandates are self-sustaining: they produce papers, demonstrations, and trained researchers, all of which are valuable, none of which are the intended strategic output. The [OECD's *Science, Technology, and Innovation Outlook 2023*](https://www.oecd.org/en/publications/oecd-science-technology-and-innovation-outlook-2023_0b55736e-en.html) documents this pattern across member-country frontier programs: programs that define success as "advancing the field" consistently underperform against programs with hard commercial benchmarks, measured by technology transfer rates and private follow-on investment.

The aggressiveness of a timeline commitment is itself a structural signal. A program that commits to utility-scale output by a specific date creates internal and external pressure to prioritize paths to that output over scientifically interesting detours. It forces program managers to make hard resource allocation decisions between approaches that can plausibly meet the benchmark and those that cannot. Programs that avoid hard timelines effectively delegate those decisions to the scientific preferences of individual investigators — which reliably optimizes for scientific interest rather than strategic output.

There is a legitimate counterargument: some frontier technologies are too early-stage for credible utility-scale benchmarks, and premature timeline commitment can distort research priorities toward near-term demonstrability at the expense of foundational advances. This is a real risk. But the practical record suggests the risks run in the opposite direction. Programs that defer timeline commitment pending greater technical certainty tend to defer indefinitely. The discipline imposed by a hard, date-bound benchmark — even one that proves too aggressive — produces more structured resource allocation than the alternative. The benchmark can be revised under a formal review process; the absence of a benchmark cannot.

Programs that score high on this dimension set an explicit date-bound benchmark for utility-scale output that is commercially or strategically meaningful — not a laboratory result. Programs that score low define success as research progress or capability demonstration without specifying a commercial threshold or date.

---

**Applying the Framework**

These four dimensions constitute a structural evaluation vocabulary agnostic about any particular technology or program. They do not predict success. They identify which programs are most structurally capable of producing verifiable utility-scale output, given what is observable at the time of design.

The dimensions are deliberately interdependent. A program with strong milestone accountability but no timeline commitment will produce accountability around intermediate research targets that may never converge on strategic output. A program with a hard timeline but no milestone gating will front-load funding without structural pressure to hit checkpoints en route. A program with high capital efficiency at launch can lose that advantage if it fails to define exit conditions and migrates into territory where private capital would operate independently. The four dimensions work in combination: a program that scores high across all four has built accountability, efficiency, leverage, and purpose-orientation into its architecture simultaneously.

The three comparative cases that follow apply this framework to programs that have made consequential design choices in precisely these dimensions. The analysis is structural, not evaluative of ultimate outcomes — QBI has not yet demonstrated utility-scale quantum advantage, and the EU Quantum Flagship has produced genuine scientific value. The question is which programs are most structurally positioned to convert public capital into the specific output their public charters require: verifiable utility-scale capability by a defined date.

---

## 3. The DARPA Model in Practice: QBI as Institutional Exemplar

DARPA's Quantum Benchmarking Initiative represents the most structurally rigorous public commitment to utility-scale quantum computing yet made by any government. The program's core proposition is specific: a multi-phase competitive structure targeting utility-scale quantum advantage on commercially relevant problems by 2033, with continued funding conditioned on demonstrated milestone performance at each phase gate, and a program manager model with fixed terms insulating funding decisions from bureaucratic continuity pressure. This section applies the four-dimension framework to QBI as a positive case — not advocacy, but a structured assessment of the program's design features against the scoring criteria established in Section 2.

The [DARPA official history](https://www.darpa.mil/about/history) documents a seven-decade pattern of high-variance outcomes biased toward genuine technological breakthroughs: ARPANET, stealth aircraft, GPS, and the DARPA Grand Challenge that catalyzed the autonomous vehicle industry. The consistent mechanism is not that DARPA picks winning technologies — it terminates programs that miss milestones and funds multiple competing approaches simultaneously, which means many DARPA bets do not pay off. The model's strength is structural: it produces accountability around hard output targets, competition among funded teams, and early exit for programs that fail to converge. QBI is a new program on this institutional platform. The question is whether its specific design choices make it capable of producing the outputs its charter demands.

---

**Dimension 1: Milestone Accountability — Strong**

QBI's milestone accountability is the strongest of any comparable public quantum program currently operating. The [DARPA QBI Program Announcement](https://www.darpa.mil/program/quantum-benchmarking-initiative) establishes a multi-phase structure: an initial assessment phase in which participating teams demonstrate measurable progress against defined benchmarking criteria, and follow-on development phases conditioned on demonstrated milestone performance. Teams that do not demonstrate progress do not advance. This operationalizes the scoring criterion from Section 2: a milestone is verifiable only if its success criterion is defined in advance, evaluated independently, and tied to a funding consequence.

The critical feature is that QBI's milestones are not activity measures. The program does not ask participants to report on research completed, papers published, or laboratory demonstrations achieved. It asks whether quantum systems are demonstrably converging on utility-scale performance — a measure that connects directly to the 2033 commercial output target. This is harder to game than activity metrics and harder to satisfy than narrative progress reports. A team that misses a performance benchmark cannot substitute additional publications or conference presentations.

DARPA's [2026 competitive solicitation (DARPA-PA-26-02)](https://www.darpa.mil/work-with-us/opportunities/darpa-pa-26-02) demonstrates this structure in operation: a new Stage A competition launched requiring independently verifiable capability assessments, not activity reports. By comparison, most comparable public quantum programs — including the EU Quantum Flagship's workstream reporting structure, examined in Section 4 — evaluate milestone achievement through roadmap reviews that measure progress against internal scientific plans rather than proximity to deployable capability. QBI's milestone structure is the hardest public commitment currently observable in quantum computing policy.

---

**Dimension 2: Capital Efficiency — Favorable Against DARPA Baseline**

Capital efficiency assessments for programs this early in their execution cannot rely on outcome data — QBI's competitive solicitations began in 2024 and the program's first major milestone reviews will not arrive until the late 2020s. The relevant comparison is structural: does QBI's design embed the features that have historically produced strong leverage ratios under the DARPA model?

The DARPA historical baseline established by [Bonvillian and Van Atta (2011)](https://link.springer.com/article/10.1007/s10961-011-9223-x) is approximately $8 to $12 in private R&D investment per dollar of public commitment. As noted in Section 2, this ratio is best treated as an order-of-magnitude anchor. It captures the core dynamic: DARPA enters before private capital is willing to follow, creates competitive dynamics among multiple funded teams, and exits once private investment interest is demonstrable. Programs that replicate this entry timing tend to produce similar leverage dynamics.

QBI's entry timing is appropriate on this criterion. The quantum computing sector's largest private investors — IBM, Google, and IonQ — operate active commercial quantum programs, but their investment concentrates on near-term utility and error-correction advances within architectures they have already selected. The pre-commercial question QBI is designed to answer — whether *any* quantum architecture can achieve utility-scale advantage by 2033 on real-world problem classes — is not one private capital can currently resolve. The time horizon and technical uncertainty exceed fiduciary constraints on private R&D allocation. QBI therefore enters exactly where the Bonvillian–Van Atta model predicts DARPA should: in the space that private capital systematically underinvests in because expected returns are too uncertain and too distant. The structural ingredients for a favorable leverage ratio are present.

---

**Dimension 3: Private-Sector Leverage — Correctly Staged**

QBI's leverage model depends on generating competitive dynamics among private teams, establishing demonstrated feasibility signals that private capital can act on, and exiting before its funding begins substituting for investment that would follow commercial viability. On current structural evidence, the program is correctly positioned for the first two conditions and embeds an explicit structure supporting the third.

The competitive solicitation model — in which multiple teams compete for continued funding based on demonstrated performance — creates the private co-investment pressure that distinguishes DARPA-style programs from single-contractor R&D arrangements. Teams that receive DARPA funding and demonstrate milestone progress become credible targets for private follow-on investment; their demonstrated performance against hard benchmarks reduces uncertainty for private investors in ways that publications alone cannot. The quantum computing sector has shown it is responsive to these signals: it attracted approximately [$2.35 billion in private investment in 2022](https://www.mckinsey.com/capabilities/mckinsey-digital/our-insights/quantum-technology-sees-record-investments-progress-on-talent-gap) before a broader deep-tech investment pullback in 2023–2024. Private capital will enter when technical credibility signals are available. QBI's benchmark structure is designed to generate exactly those signals, creating demonstrated-progress waypoints that private investors can act on years before the 2033 target arrives.

---

**Dimension 4: Timeline to Utility-Scale Output — Aggressive, and Deliberately So**

QBI's 2033 utility-scale benchmark is the most specific date-bound commitment in any current government quantum program. As Section 2 established, the aggressiveness of a timeline commitment is itself a structural signal: a hard commercial benchmark forces resource allocation toward approaches that can plausibly meet the target and away from scientifically interesting detours that cannot.

The 2033 target sits at the aggressive edge of the technical consensus among major quantum hardware providers. [IBM's quantum development roadmap](https://www.ibm.com/roadmaps/quantum/) targets its first fault-tolerant quantum system ("Starling," approximately 200 logical qubits) by 2029, with a scaled follow-on system ("Blue Jay") in the early 2030s. However, fault-tolerant operation and utility-scale commercial advantage on real-world problem classes are distinct thresholds: IBM's 2029 target addresses error correction at modest qubit counts, not the broader commercial deployment QBI's benchmark requires. The [National Quantum Initiative Advisory Committee](https://www.quantum.gov/nqiac/) and most independent assessments place utility-scale quantum advantage as a ten-to-fifteen-year horizon from current capability levels. QBI's 2033 date sits at the aggressive edge of this range — which is correct design. A benchmark calibrated to the median technical forecast produces no structural pressure toward the upper end of achievable outcomes. A benchmark requiring performance at the optimistic edge of the technical consensus creates exactly the resource-allocation pressure that produces the high-variance, breakthrough-biased outcomes the DARPA model is designed for.

---

**Structural Vulnerabilities: An Honest Assessment**

This paper's claim is not that QBI will succeed. It is that QBI's structural features give it the best observable probability of producing verifiable utility-scale output by a defined date. Three genuine vulnerabilities require acknowledgment.

*First*, DARPA's program manager culture — the institutional norm of empowering individual PMs to make high-risk bets, kill underperforming programs, and protect funded teams from bureaucratic pressure for safe incrementalism — cannot be fully replicated by statute. QBI inherits DARPA's culture as a going concern, but that culture took decades to build and depends on recruitment and retention dynamics that legislation cannot manufacture. Section 6 addresses this constraint directly: the paper's position is that the structural *features* of the DARPA model can be embedded by statute even where culture cannot be transferred.

*Second*, "utility-scale quantum advantage" remains definitionally contested. The term encompasses at least three distinct technical thresholds — fault-tolerant quantum computing, quantum advantage on commercially relevant problem classes, and quantum performance exceeding the best available classical algorithms on specific benchmarks — and different hardware architectures favor different definitions. QBI's milestone structure must operationalize this term with sufficient precision to make 2033 benchmarks independently verifiable. Definitional ambiguity at the program design stage represents a genuine implementation risk that could allow participating teams to satisfy benchmarks without achieving the commercially meaningful capability the program intends.

*Third*, timeline aggressiveness cuts both ways. A benchmark at the optimistic edge of feasibility creates the right structural pressure — but it also creates pressure to over-report progress and define success criteria favorably as milestone reviews approach. QBI's independent review requirement is the structural defense against this failure mode; whether that independence holds under real-world programmatic pressure will be assessable only in retrospect.

These vulnerabilities do not undermine QBI's structural advantages relative to comparable programs. They identify where QBI's design is most exposed to implementation risk — the points at which external scrutiny from the research community, the National Quantum Initiative coordination structure, and Congress will be most consequential for the program's integrity.

---

## 4. The EU Quantum Flagship: Coordination Over Commitment

The EU Quantum Flagship is not a failed attempt to build DARPA. It is a different kind of program, designed to serve different objectives, and it deserves evaluation against those objectives before it is evaluated against ones it was not designed to meet. Understanding what the Flagship was built to accomplish — and why those objectives produced the structural choices it embodies — is the prerequisite for an honest assessment of where its architecture falls short of the four-dimension framework.

Launched in 2018 with a €1 billion, ten-year mandate under Horizon Europe, the Flagship was designed to address a structural problem specific to European science policy: research excellence concentrated in individual member states, inadequate coordination across national boundaries, and a persistent failure to translate scientific advances into commercial capabilities. The program's [Strategic Research and Industry Agenda 2030](https://qt.eu/about-quantum-flagship/strategic-research-and-industry-agenda-2030) sets out an explicit ambition to make Europe a "Quantum Valley" — a geographically distributed quantum ecosystem spanning member state research communities, universities, national laboratories, and industry partners. As documented in the program's [2025 KPI Booklet](https://qt.eu/media/pdf/KPI_booklet_2025.pdf), the Flagship funds thousands of European researchers across a consortium structure that distributes both participation and accountability across the EU's member states.

That architecture is not incidental. It is the point. A program funded from Horizon Europe with political viability across the Commission's budget cycles must demonstrate that it benefits member states equitably. Pan-European participation is not coordination overhead — it is the political condition for program continuation across multiple Commission terms. The Flagship's consortium structure reflects a rational response to the institutional environment in which it operates.

The structural critique this paper advances is not that the Flagship's objectives are illegitimate. It is that the structural choices that optimize for pan-European capacity, political coalition-building, and scientific coverage impose specific costs when measured against the four dimensions that predict utility-scale output by a defined date.

---

**Dimension 1: Milestone Accountability — Weak**

The Flagship's milestone structure is its most significant departure from the Section 2 scoring criteria. The program's [Key Performance Indicators booklet](https://qt.eu/media/pdf/KPI_booklet_2025.pdf) — updated annually and publicly reported — tracks a comprehensive set of metrics: publications, patents, trained researchers, spin-offs, national program alignment, and industry partnerships. These KPIs are real and measurable. They are not what the framework scores.

The distinction is the one established in Section 2: activity measures versus proximity-to-capability measures. The Flagship's KPI structure measures how much the program is doing, not whether what it is doing is converging on utility-scale quantum advantage. A consortium that produces a record number of publications and trains an additional cohort of quantum researchers satisfies every KPI on the list regardless of whether any of its quantum systems are closer to commercial-scale performance than they were the previous year. The reporting structure generates continuity pressure based on activity volume rather than capability progress.

The [Quantum Europe Strategy adopted in July 2025](https://qt.eu/media/pdf/Quantum_Europe_Strategy_July_2025.pdf) establishes new capability targets — Europe's first quantum-accelerated supercomputer by 2025, the Eagle-1 quantum key distribution satellite by 2026 — that move in the right direction. But these are infrastructure deployment milestones, not performance benchmarks against a defined utility-scale threshold. The Flagship's governance structure has no equivalent to QBI's phase-gate mechanism: there is no point at which underperforming workstreams are terminated on the basis of demonstrated capability shortfalls. Milestone review processes operate through consensus roadmap updates rather than external performance adjudication.

---

**Dimension 2: Capital Efficiency — Constrained by Coordination Architecture**

Assessing the Flagship's capital efficiency faces a structural obstacle that is itself diagnostic: the program's outputs are distributed across 28 countries and a consortium of research institutions whose individual contributions to specific capability milestones are not separately tracked. The KPI reporting that is publicly available measures aggregate outputs — publications, patents, spin-offs — rather than capability-unit outputs per euro committed.

What can be assessed is the overhead structure. A program managing pan-European participation across member state research communities, reporting requirements to the European Commission, and coordination obligations across multiple Horizon Europe funding streams operates under coordination costs that a focused single-institution program does not. The [ECFR's analysis of EU quantum strategy](https://ecfr.eu/article/from-niche-innovations-to-global-powerhouse-an-eu-quantum-strategy/) notes that the European ecosystem is "strong at generating ideas but much, much weaker at transforming them into industrial capabilities" — a characterization that maps directly onto the capital efficiency dimension. Publications and trained researchers are real outputs; they are not the output the program's strategic rationale — competing with QBI and Chinese state investment at the capability frontier — requires.

This is not unique to quantum: it is a documented pattern in large European research consortia. Coordination costs rise with the number of partners, and the relevant comparison is not absolute — all large programs carry overhead — but proportional: how much of the capital commitment flows to coordination rather than to capability-advancing R&D?

---

**Dimension 3: Private-Sector Leverage — Moderate, Difficult to Isolate**

The Flagship's consortium model blends public and private participation in a way that makes the leverage ratio genuinely difficult to compute. Private-sector partners participate in the consortium alongside research institutions, receiving Horizon Europe funding as participants rather than co-investors. This is not crowding-in; it is direct public subsidy of private-sector participation. The meaningful leverage question — does public Flagship funding induce private investment that would not otherwise have occurred — is nearly impossible to separate from the baseline private quantum investment that would have flowed to European commercial programs regardless.

The evidence that does exist is not favorable. Despite eight years of Flagship investment and strong European academic output in quantum science, the [CEPS analysis of European quantum policy](https://www.ceps.eu/the-eu-should-create-a-quantum-sovereign-fund/) documents that "private investment remains scarce" and that "financial and institutional mechanisms required for going from lab to market, prototype to production, are still underdeveloped." European venture capital in quantum remains structurally thin relative to US and, increasingly, Chinese levels. If the Flagship's public investment were crowding in private capital, that private investment should be observable. The pattern suggests instead that the program's structure — distributing funding across a broad consortium rather than concentrating it behind a small number of teams racing toward a capability benchmark — has not generated the competitive private-capital dynamics the crowding-in model requires.

---

**Dimension 4: Timeline to Utility-Scale Output — Undefined**

The Flagship has no commercial benchmark equivalent to QBI's 2033 utility-scale target. The SRIA 2030 defines a "Quantum Valley" aspiration and roadmap milestones organized by workstream — quantum computing, quantum communication, quantum sensing, quantum simulation — but does not specify a date by which any of those workstreams must deliver commercially or strategically meaningful capability at a defined scale. The Quantum Europe Strategy's 2025–2026 infrastructure milestones mark deployment of specific systems; they do not define what those systems must demonstrate to constitute utility-scale advantage.

The absence of a hard timeline is not an oversight. It reflects the same structural rationale that shapes every other Flagship design choice: a program with pan-European political accountability cannot afford to be judged a failure because one capability workstream misses a hard date. But the structural consequence of avoiding timeline commitment is the one Section 2 identifies: without a date-bound benchmark, success defaults to "advancing the field," and the program is structurally insulated from the resource-allocation pressure that produces convergence on utility-scale output.

---

**The Correct Comparison**

This paper's claim is not that the EU Quantum Flagship is a poorly designed program. It is a well-designed program for its actual objectives — building pan-European quantum capacity, sustaining scientific community across member states, and maintaining political coalition for long-horizon public investment in a strategically important technology. Those objectives are legitimate and the Flagship has made measurable progress against them.

The paper's claim is narrower: those objectives are different from "utility-scale quantum advantage by a defined date," and the structural choices that optimize for the former impose specific costs when evaluated against the latter. When the comparison is explicitly about which funding architecture is most structurally capable of producing verifiable utility-scale quantum capability by a date that Congress or the Commission could hold a program accountable to — the four-dimension scorecard consistently favors QBI's focused accountability structure over the Flagship's coordinated coverage model. That is a structural finding, not a general verdict on European science policy.

---

## 5. China's State-Directed Quantum Investment: Opacity and the Accountability Gap

Any honest treatment of China's quantum program must begin with an epistemic admission: this is the section where the four-dimension framework encounters its binding constraint. The framework was designed to evaluate programs against observable structural features — hard milestones, trackable leverage ratios, defined exit conditions, and date-bound benchmarks. China's quantum investment is the case where those features are, by design, not independently observable. The analysis that follows applies the framework where evidence exists and explicitly flags where it does not.

That epistemic constraint is itself a structural finding.

---

**Observable Inputs: Scale Without Transparency**

The scale of China's commitment to quantum technology is not seriously in dispute. The [Georgetown Center for Security and Emerging Technology's *China's Quantum Future* (2022)](https://cset.georgetown.edu/publication/chinas-quantum-future/) estimates that China has committed more than $15 billion to quantum research and development across state programs — a figure that dwarfs both QBI's program structure and the EU Flagship's €1 billion on raw capital terms. The [PRC 14th Five-Year Plan for Science and Technology](https://cset.georgetown.edu/wp-content/uploads/t0568_14th_Five_Year_Plan_for_Science_and_Technology_EN.pdf) designates quantum information science as a national strategic technology priority alongside AI, semiconductors, and biotechnology. China's primary institutional vehicle for quantum computing is the National Laboratory for Quantum Information Sciences in Hefei — a purpose-built national laboratory that CSET's analysis identifies as one of the largest single quantum facility commitments globally.

These are the observable inputs. The question is what the framework can say about the program's structural design given what is not observable from outside the Party-state.

---

**Dimension 1: Milestone Accountability — Opaque**

China's quantum programs have produced milestone claims — the [Jiuzhang demonstration](https://www.science.org/doi/10.1126/science.abe8770), published in *Science* in 2020, and the [Zuchongzhi processor](https://journals.aps.org/prl/abstract/10.1103/PhysRevLett.127.180501), published in *Physical Review Letters* in 2021, generated international attention and were cited by Chinese officials as evidence of quantum supremacy in specific problem classes. But [independent assessments, including analysis published in *Nature*](https://www.nature.com/articles/d41586-023-03312-4), have questioned the practical relevance of these demonstrations: the specific problem classes selected — boson sampling, random circuit sampling — are chosen in part because they are computationally hard for classical computers, not because they represent commercially or militarily meaningful applications. Whether Chinese quantum systems are converging on utility-scale advantage in the sense QBI defines it — performance on real-world commercially relevant problem classes — is not independently verifiable.

This is the accountability gap the section's title identifies. Milestone accountability requires that success criteria be defined in advance, evaluated by parties without a stake in the program's continuation, and tied to observable consequences. China's quantum milestones are defined internally, evaluated internally, and reported through state media. The Party-state accountability relationship runs upward through the planning hierarchy, not outward to independent technical review. As the [US-China Economic and Security Review Commission](https://www.uscc.gov/research/vying-quantum-supremacy-us-china-competition-quantum-technologies) notes, China's quantum progress "lacks independent verification, blurring the line between genuine scientific progress and political signaling." This is a structural observation about what the four-dimension framework can and cannot assess given available evidence — not a broader criticism of Chinese governance.

---

**Dimension 2: Capital Efficiency — Unverifiable**

If milestone accountability is opaque, capital efficiency is essentially unassessable. The leverage ratio calculation requires both input data (how much was spent, on what, at what stage) and output data (what capabilities were produced, what private investment followed). Neither is reliably available for China's state quantum programs. CSET's analysis notes that Chinese government R&D expenditure reporting conflates basic research, applied development, and infrastructure investment in ways that make per-program spending figures unreliable. [RAND's quantum technology assessment](https://www.rand.org/pubs/research_reports/RRA1482-1.html) similarly documents the challenge of isolating military from civilian quantum investment, which flows through overlapping institutional channels without clear program boundaries.

The paper does not claim that Chinese quantum investment is inefficient. It claims the structural information needed to assess efficiency is not externally available — and that this opacity is a structural feature, not a reporting gap that better data collection could resolve.

---

**Dimension 3: Private-Sector Leverage — Inverted**

The crowding-in model that defines QBI's Dimension 3 logic does not describe the Chinese investment model. [CSIS's *A World of Chips Acts* comparative analysis](https://www.csis.org/analysis/world-chips-acts) characterizes the Chinese approach as state-capital-led, with private investment directed into state-designated strategic sectors. Private Chinese firms investing in quantum computing do so in response to state prioritization signals, not because market-led signals have identified commercial viability. Baidu, Alibaba, and Huawei all operate quantum computing programs, but they operate them in explicit coordination with national quantum strategy — a dynamic that inverts the DARPA leverage relationship, in which public capital catalyzes private investment that then operates on commercial signals independent of the original public commitment.

This is not inherently inferior as an investment model; it reflects a different theory of how state and private capital should relate. But it is structurally distinct from the crowding-in model the framework treats as the benchmark, and the distinction matters for how eventual capability is validated. Private investment that follows commercial signals produces independent validation of a technology's utility; private investment that follows state direction does not.

---

**Dimension 4: Timeline — Stated, Not Credibly Operationalized**

China's planning documents contain quantum timeline targets. The 14th Five-Year Plan designates milestones for quantum information science, and state media has cited targets for quantum communication networks and quantum computing capability advances. What these documents do not contain is the equivalent of QBI's 2033 utility-scale benchmark: a specific, externally verifiable threshold — defined in advance, measured independently — against which program success or failure is adjudicated. As the USCC has documented, Five-Year Plan targets in strategic technology sectors function as planning aspirations subject to internal Party-state revision rather than hard dates tied to funding consequences for underperformance. The accountability relationship that makes a timeline commitment meaningful is absent by design.

---

**The Paper's Claim, Restated with Precision**

China's quantum program may outperform what is observable from outside it. The CSET and RAND assessments are explicit about this: the opacity of Chinese R&D reporting means that credible capability advances could be underrepresented in the literature accessible to Western analysts. The paper does not claim China is losing the quantum race.

The paper's claim is narrower and structural: QBI's design is more capable of producing *verifiable* utility-scale output — output that can be independently confirmed by parties outside the program, against criteria set before the program began — than what can be observed of the Chinese model. The four dimensions were chosen because they predict verifiable output. A program that maximizes verifiable accountability and one that maximizes raw capital commitment while operating opaquely are not equivalent, even if the opaque program ultimately produces superior technical results. Verifiability is not a procedural nicety; it is the condition under which policymakers, private investors, and allied governments can act on a program's outputs with confidence. Opacity forecloses that confidence regardless of underlying capability.

That distinction — between programs optimized for verifiable accountability and programs that may achieve superior results through unverifiable means — is the comparative contribution China's case makes to the paper's analytical framework.

---

## 6. The Replication Argument: From QBI to a General Template

The most serious challenge to this paper's thesis is not empirical — it is institutional. Every analyst who has studied DARPA's track record has observed the same apparent paradox: Congress has repeatedly tried to create "DARPA-like" agencies and consistently produced something less than DARPA. ARPA-E, established in 2007 to apply the DARPA model to clean energy, has produced genuinely innovative research but has not generated the kind of commercial market transformation DARPA catalyzed in semiconductors, communication networks, and autonomous systems. The lesson most analysts draw is that DARPA's performance is not primarily a function of its legal authorities — it is a function of a culture that took six decades to build, that recruits and retains unusual scientific risk-takers on term-limited appointments, and that has accumulated political insulation through a track record no new agency can replicate by statute.

That culture argument is correct. This paper does not dispute it. DARPA's institutional culture — its norms of PM autonomy, its tolerance for failure as evidence of appropriate risk-taking, its protection of funded teams from bureaucratic continuity pressure — is a going concern that new institutions cannot acquire by legislation. Statutes create legal authorities; they do not create cultures.

But the culture argument proves less than it claims. The inference that moves from "DARPA culture is not transferable by statute" to "DARPA's structural model cannot be replicated" commits a category error. Culture and structure are distinct. Culture is the set of informal norms, recruitment patterns, and institutional practices that DARPA has accumulated over decades. Structure is the set of design choices — milestone gates, term limits, competitive solicitation, exit conditions — that are embedded in program architecture. The structural features that generate DARPA's accountability are observable, nameable, and specifiable in enabling legislation. Congress cannot mandate the culture, but it can require the structural features that culture produces and protects. The five features below are the translation.

---

**The Five Statutory Features**

*Feature 1: A hard, externally verifiable utility-scale benchmark with a specific date.*

The benchmark must specify what counts as success — a defined level of performance on a commercially or strategically meaningful problem class — and when that performance must be achieved. The operative phrase is "externally verifiable": the success criterion must be assessable by parties without a stake in the program's continuation. QBI's 2033 utility-scale quantum advantage target, tied to the [DARPA benchmarking framework](https://www.darpa.mil/program/quantum-benchmarking-initiative), satisfies this criterion. A program without a date-bound benchmark defaults to "advancing the field" — and programs with undefined success criteria produce indefinite timelines regardless of capital commitment. Legislation must specify the benchmark in the enabling authority, not delegate its definition to agency discretion.

*Feature 2: Milestone-gated funding continuation with termination authority for non-performers.*

Funding for the second phase must be conditioned on demonstrated performance in the first. This is not administrative detail — it is the mechanism that transforms a benchmark from aspiration into accountability constraint. QBI's competitive phase structure operationalizes this: teams that demonstrate milestone progress in the assessment phase proceed; teams that do not are not funded for the development phase. Without explicit milestone gating codified in enabling legislation, programs accumulate institutional constituencies — funded teams, national laboratories, affiliated universities, sympathetic appropriators — that generate continuation pressure regardless of performance. The gate must exist in statute because it is politically costly to impose after funding relationships are established.

*Feature 3: Competitive re-solicitation at year two requiring demonstrated progress.*

The competitive solicitation model is the structural source of the leverage ratio evidence reviewed in Section 2. Teams that compete for continued funding against demonstrated milestones produce private co-investment interest because their performance against hard benchmarks is observable and verifiable by outside investors. Single-contractor arrangements do not generate this dynamic — they produce lock-in that allows the incumbent team to define what constitutes adequate progress. Re-solicitation requiring demonstrated performance prevents capture by the initial funding cohort and maintains the competitive pressure that [Bonvillian and Van Atta (2011)](https://link.springer.com/article/10.1007/s10961-011-9223-x) identify as one of DARPA's core mechanisms for sustaining high-variance, breakthrough-biased outcomes.

*Feature 4: Program manager term limits of no more than four years, codified in enabling legislation.*

The PM term limit is the structural protection against the most predictable failure mode of long-horizon government research programs: bureaucratic capture by scientific communities with stakes in program continuation. A PM who remains for a decade develops institutional relationships with funded teams, national laboratories, and congressional appropriators that make termination of underperforming work politically costly independent of technical merit. Fixed terms prevent this capture by design — each new PM arrives without the prior institutional commitments that make honest performance assessment difficult. The four-year limit reflects the minimum time needed to run a meaningful phase-gated program structure while remaining short enough to prevent the capture dynamics that accumulate beyond that horizon. Enabling legislation must specify this limit explicitly; internal agency policy is vulnerable to administrative waiver under political pressure.

*Feature 5: A defined exit threshold requiring evidence of private investment interest before the final funding tranche is released.*

This is the structural defense against the substitution failure identified in Dimension 3. Programs without defined exit conditions migrate down the technology readiness ladder as early-stage work matures, eventually subsidizing commercial-stage activity that private capital would fund independently. Requiring demonstrated private investment interest — a defined leverage ratio or co-investment commitment — as a condition for releasing the final funding tranche creates an explicit gate between the pre-commercial stage where public capital is appropriate and the commercial stage where it is not. [Azoulay et al.'s (2019)](https://academic.oup.com/restud/article/86/1/117/5038510) leverage ratio methodology provides the empirical baseline against which such thresholds can be calibrated: a program approaching the final tranche should be generating private co-investment multiples that establish its commercial viability without continued public subsidy.

---

**QBI as Proof of Concept**

QBI embeds all five features in observable form. The competitive solicitation is specified in its [program announcement](https://www.darpa.mil/program/quantum-benchmarking-initiative) and executed in the [2026 DARPA-PA-26-02 solicitation](https://www.darpa.mil/work-with-us/opportunities/darpa-pa-26-02). The milestone-gated phase structure conditions development funding on demonstrated assessment-phase performance. The 2033 utility-scale target provides the external benchmark. DARPA's PM model provides the term-limit protection as a going institutional norm — the one feature the template inherits from culture rather than legislating fresh. The program's pre-commercial entry provides the stage-appropriate exit logic, though the explicit leverage-ratio exit threshold is less precisely defined in QBI's current architecture than the other four features. It is the area most in need of refinement before the first milestone reviews arrive.

The proof-of-concept claim is modest: QBI demonstrates that these five features can coexist in a single program without structural contradiction. They are not in tension — they are mutually reinforcing. Hard benchmarks make milestone gating meaningful; milestone gating makes competitive re-solicitation fair; PM term limits protect the integrity of both; exit thresholds ensure the system concludes rather than perpetuating itself. The template's next test is whether these features can be instantiated in domains where DARPA's institutional inheritance is unavailable.

---

**Testing Generalizability: Three Candidate Domains**

The five-feature template is not a recommendation for expanded government investment in frontier technology. It is a set of design criteria that apply *if and when* Congress decides to fund frontier technology programs — criteria that distinguish programs structurally capable of producing verifiable utility-scale output from programs that will reliably produce something else. The three domains below test whether the template is genuinely general or whether it is peculiar to quantum computing's specific technical and institutional characteristics. They are chosen for contrast: one with a partially instantiated analogue, one that faces a binding constraint no statutory design can fully resolve, and one with no federal program at all.

*ARPA-H: Partially Instantiated, Benchmark Underdeveloped.*

The [Advanced Research Projects Agency for Health](https://arpa-h.gov/), established under the [FY2022 Consolidated Appropriations Act (P.L. 117-103)](https://arpa-h.gov/about/faqs), is the closest structural analogue to QBI among current federal programs. Its PM autonomy model is explicitly modeled on DARPA, and its competitive solicitation approach mirrors DARPA's program structure. On Features 3 and 4 — competitive re-solicitation and PM term limits — ARPA-H's enabling legislation and operating model score comparably to QBI. Feature 2 is partially implemented: ARPA-H's milestone-based contracting approach conditions continued investment on demonstrated progress, though the phase-gate mechanism is less precisely codified in statute than QBI's competitive phase structure.

Where ARPA-H's template instantiation is weakest is on Features 1 and 5 — the hard utility-scale benchmark and the defined private-investment exit threshold. ARPA-H's authorized programs address a range of health challenges, but the enabling legislation does not require each program to specify a date-bound clinical or commercial outcome threshold equivalent to QBI's 2033 utility-scale quantum advantage target. Programs that define success as "advancing treatment options" face exactly the indefinite-mandate problem Section 2 identifies. ARPA-H is structurally close to the template; closing the gap on benchmark specificity and exit conditions would bring it into full alignment.

*Advanced Nuclear (ARDP): Template Necessary but Not Sufficient.*

The [Department of Energy's Advanced Reactor Demonstration Program](https://www.energy.gov/ne/advanced-reactor-demonstration-program) provides the hardest test case, because it faces a binding constraint that no statutory design can resolve: Nuclear Regulatory Commission licensing. A nuclear technology program can embed all five template features and still fail to produce utility-scale output by its benchmark date if the regulatory approval pathway — outside the program's control — extends the timeline beyond the hard date. The template is necessary but not sufficient in this domain.

This does not invalidate the template's application to advanced nuclear; it identifies where supplementary policy intervention is required. A complete policy package for frontier nuclear technology would combine the five template features with parallel licensing reform — specifically, the [NRC's advanced nuclear licensing modernization work](https://www.nrc.gov/reactors/new-future-reactors/advanced-reactors.html) and proposed reforms to Part 53 licensing pathways for non-light-water reactors. The DARPA-style program provides the R&D accountability structure; licensing reform provides the commercial pathway. Neither is sufficient without the other.

*Neuromorphic Computing: Template General, Portfolio Gap Observable.*

Neuromorphic computing — chip architectures that process information in patterns inspired by biological neural structures rather than the von Neumann model — has no dedicated federal program, despite substantial private investment from Intel ([Loihi](https://www.intel.com/content/www/us/en/research/neuromorphic-computing.html)) and IBM and a growing body of evidence that brain-inspired architectures offer significant energy-efficiency advantages for inference workloads. IBM's NorthPole chip, published in [*Science* in October 2023](https://www.science.org/doi/10.1126/science.adh1174), demonstrated 25x better energy efficiency than a comparable GPU on standard inference benchmarks — establishing a credible empirical case that the architectural approach yields meaningful performance advantages at scale.

Its inclusion here is not an affirmative recommendation for a new program. It demonstrates that the template's applicability is not limited to sectors with existing federal programs. A neuromorphic program could specify a date-bound energy-efficiency benchmark — performance-per-watt at inference scale exceeding the best available conventional architecture by a defined factor — against which phase-gate milestones are set, competitive solicitation is structured, and private co-investment interest is measured before a final tranche is released. Whether the market-failure condition that justifies intervention holds is a prior question this paper does not answer. The structural observation is that if it does, the template applies cleanly.

---

**The Template's Scope**

This paper defends a model for frontier technology program design, not an argument for a larger federal R&D footprint. The five statutory features are criteria that *improve* government programs when government decides to fund them — not criteria that argue for deciding to fund in the first place. That prior question — whether a particular technology presents genuine market failure at the pre-commercial frontier — is the condition that must be satisfied before any program design question becomes relevant. The template does not resolve it. It applies only after it is answered yes.

The appropriate cases are those QBI exemplifies: technologies with commercialization timelines and uncertainty levels that exceed what private capital can absorb without public catalysis, strategic significance that justifies government interest in accelerating development, and a technical readiness level at which milestone-based accountability is meaningful. Where those conditions hold, the five-feature template specifies what good program design looks like. Where they do not, the template is irrelevant because no program should exist.

---

## 7. Conclusion: What Congress Should Require

The central finding of this paper is not that the DARPA model is special — it is that it is *specific*. DARPA outperforms alternative funding architectures across the dimensions that predict utility-scale output not because of institutional mystique but because of identifiable structural features that can be named, evaluated, and required. QBI demonstrates that those features coexist in a single running program. The EU Quantum Flagship demonstrates what happens when they do not. China's state-directed model demonstrates what opacity forecloses, regardless of underlying capability. The comparative evidence points consistently in one direction: structure, not scale, is the binding determinant of whether public frontier technology investment produces the output it is funded to achieve.

Congress is currently funding multiple frontier technology programs simultaneously — QBI, ARPA-H, the Advanced Reactor Demonstration Program, and the full CHIPS Act implementation — without a common design framework governing what structural features those programs must embed. Each program reflects the individual legislative history, committee jurisdiction, and agency preferences that shaped its enabling authority. The result is that some programs will produce verifiable utility-scale output and some will not, and the variation will be traceable primarily to structural choices made at authorization — most of which can be corrected only by future reauthorization after the costs of poor design have already accrued.

This paper offers Congress a template specific enough for a legislative drafter to use. It contains five requirements.

**First: Every frontier technology program authorization must specify a hard, independently verifiable utility-scale benchmark with a date certain.** The benchmark must define what counts as success — a level of performance on a commercially or strategically meaningful problem class — in terms that parties without a stake in the program's continuation can evaluate. The date must appear in the enabling legislation, not be delegated to agency discretion. Programs without a date-bound benchmark default to "advancing the field," which produces indefinite timelines regardless of capital commitment.

**Second: Funding continuation beyond the initial phase must be conditioned on demonstrated milestone performance, with statutory termination authority for non-performers.** The gate must exist in statute because it is politically costly to impose after funding relationships are established. Programs that lack statutory phase-gating accumulate institutional constituencies — funded teams, affiliated laboratories, sympathetic appropriators — whose continuation pressure operates regardless of technical performance. The milestone is only as strong as the consequence attached to missing it.

**Third: Competitive re-solicitation at year two must require demonstrated progress against phase-one milestones.** Single-contractor arrangements prevent the competitive dynamics that generate private co-investment interest and sustain high-variance, breakthrough-biased outcomes. Teams that compete for continued funding against demonstrated performance produce credibility signals that private capital can act on; incumbents protected from competition do not. The solicitation must require demonstrated performance, not continuation of good-faith effort.

**Fourth: Program manager term limits of no more than four years must be codified in enabling legislation.** Fixed terms are the structural defense against bureaucratic capture by scientific communities with stakes in program continuation. Internal agency policy is insufficient — it is vulnerable to administrative waiver under political pressure. The limit must be statutory, and the term must be short enough to prevent the accumulated institutional relationships that make honest performance assessment difficult.

**Fifth: Enabling legislation must define an exit threshold — a specified private investment ratio or co-investment commitment — that must be satisfied before the final funding tranche is released.** Programs without defined exit conditions migrate down the technology readiness ladder as early-stage work matures, eventually subsidizing commercial-stage activity that private capital would fund independently. The exit threshold is the mechanism that enforces the pre-commercial mandate at the program's conclusion, not just its inception.

QBI, as currently designed, satisfies all five criteria in observable form — with the partial exception of a precisely specified exit threshold, which remains the feature most in need of refinement before the program's first milestone reviews arrive. That refinement is consequential: the reviews will begin in the late 2020s, and the accountability structure surrounding them will be determined by decisions made in the next two years.

This paper is timed accordingly. It targets circulation before QBI's first milestone reviews and before FY2028 science funding debates, when appropriators will assess whether QBI's structure warrants continuation and whether comparable design features should be required in emerging programs. The five-feature template is designed to give that deliberation a rigorous analytical foundation — not an argument for a particular funding level or program portfolio, but a set of design criteria that distinguish frontier technology programs structurally capable of delivering on their mandates from programs that will reliably produce something less.

The DARPA model works because of structure, not mystique. Congress can require the structure.
