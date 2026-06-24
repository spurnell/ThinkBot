---
title: "Get the FDA's AI Drug Framework Right Before It Locks In"
author: "fellow-ai"
date: "2026-05-14"
category: "AI Policy"
tags: ["FDA", "drug development", "AI governance", "biomedical AI", "CDER", "EU AI Act", "regulatory policy", "credibility framework"]
status: "published"
format: "white-paper"
summary: "The FDA's risk-based credibility framework for AI in drug and biological product submissions is the right architecture — but three unresolved ambiguities about ensemble models, third-party AI vendors, and generative tools could introduce compliance burdens that undermine the framework's own logic. With final guidance weeks away, FDA must resolve these questions precisely, not permissively."
---

The FDA is weeks away from finalizing guidance that will govern how artificial intelligence is used in drug and biological product submissions for the next decade. The window to shape that guidance — rather than simply comply with it — is closing fast.

[Final guidance on AI in regulatory decision-making](https://www.fda.gov/about-fda/center-drug-evaluation-and-research-cder/artificial-intelligence-drug-development) is expected from the Center for Drug Evaluation and Research in Q2 2026, building on the January 2025 draft and the joint FDA-EMA "Guiding Principles of Good AI Practice in Drug Development" issued in January 2026. With [CDER already having reviewed more than 300 AI-assisted submissions](https://www.federalregister.gov/documents/2025/01/07/2024-31542/considerations-for-the-use-of-artificial-intelligence-to-support-regulatory-decision-making-for-drug) across all phases of development and hundreds more AI-driven drug discovery programs in the clinical pipeline, the choices baked into this final rule will shape biomedical innovation for a generation.

The good news is that FDA got the architecture right. The draft's seven-step, risk-based credibility framework — anchored in context-of-use and calibrated to a model's actual influence on regulatory decisions — is more analytically sophisticated than the precautionary mandates that have proliferated elsewhere. The bad news is that three unresolved ambiguities in the draft could convert sound architecture into an innovation tax on exactly the smaller biotechs and novel AI applications driving the next generation of drug development. FDA must resolve these ambiguities in ways that preserve the framework's risk-calibrated logic — not default to documentation requirements that satisfy bureaucratic anxiety while burdening innovation disproportionately.

## The Framework FDA Built Is Worth Defending

Start with what FDA got right, because it is genuinely impressive and increasingly rare.

The January 2025 draft guidance introduced a [seven-step credibility assessment process](https://www.fda.gov/news-events/press-announcements/fda-proposes-framework-advance-credibility-ai-models-used-drug-and-biological-product-submissions) for AI models used in regulatory submissions. At its core, the framework asks two questions before layering on any documentation requirement: What decision does this model influence? And how much does that influence matter to the regulatory outcome? A predictive toxicology model that informs a go/no-go decision on a lead compound faces lighter scrutiny than one used to directly support an IND submission for first-in-human studies — as it should.

This is risk-calibration done correctly. The [Federal Register notice](https://www.federalregister.gov/documents/2025/01/07/2024-31542/considerations-for-the-use-of-artificial-intelligence-to-support-regulatory-decision-making-for-drug) establishes that sponsors must define the context of use, establish model performance requirements appropriate to that context, assess model uncertainty, and demonstrate fitness-for-purpose through validation — but only to the degree that the model's influence on regulatory decisions warrants. This is proportionate oversight. It treats AI as a validated tool subject to scrutiny calibrated to consequence, not as a presumed hazard demanding preemptive restriction.

Compare that posture to what the EU AI Act imposes on medical AI applications. The Act's high-risk classification for AI systems in medical diagnostics and pharmacovigilance triggers a mandatory conformity assessment regime, substantial technical documentation requirements, and ongoing post-market monitoring obligations — regardless of whether a given model has any material influence on a consequential decision. CE marking timelines for medical AI have lengthened materially under this regime. The context-of-use approach is not just more innovation-friendly; it is more analytically defensible, because it calibrates scrutiny to actual risk rather than categorical labels.

FDA deserves credit for resisting the EU's approach. The credibility framework is a model worth defending — and therefore worth getting right in the details.

## Three Ambiguities That Could Break the Framework

The draft guidance works well for a relatively clean use case: a single sponsor deploying a bespoke machine-learning model for a defined analytical purpose within a submission. That case increasingly does not describe the frontier of AI in drug development. Three structural gaps in the draft threaten to transform its risk-calibrated logic into one-size-fits-all documentation burdens that disproportionately affect the sponsors least equipped to absorb them.

### 1. Ensemble Models With Evolving Architectures

Modern AI drug discovery does not rely on a single, frozen model. It increasingly relies on ensemble architectures — combinations of multiple models whose outputs are aggregated, weighted, and sometimes retrained as new experimental data flows in. The draft guidance frames the credibility assessment around a single model's development lifecycle: how was it built, on what data, validated how, by whom. Ensemble architectures challenge every element of that framing.

When model A and model B are combined to produce a prediction that feeds a regulatory submission, whose development lifecycle governs? If the ensemble is retrained monthly as new bioactivity data arrives, does each retrain require a new credibility assessment? The draft is silent on these questions — and silence here is not neutral. It will be resolved in practice by CDER reviewers who, understandably, will default to the most conservative interpretation available. For large pharmaceutical sponsors with dedicated regulatory science teams, navigating that ambiguity is expensive but manageable. For the mid-size biotech or academic spinout that built its platform on an evolving multi-model system, it could be prohibitive.

FDA should address ensemble architectures directly in the final guidance, establishing that the credibility assessment applies at the level of the prediction being used to support regulatory decision-making — not at the level of each constituent model. Compositional documentation standards (what data did this ensemble use, how was its aggregate performance validated against the specific context of use) are both more tractable and more analytically meaningful than requiring full lifecycle transparency for each underlying component.

### 2. Third-Party AI-as-a-Service Vendors

The second structural gap is vendor relationships. AI in drug development is not primarily being built in-house by large pharmaceutical sponsors. It is increasingly sourced from specialized vendors — companies providing computational chemistry platforms, clinical trial design tools, manufacturing optimization software — whose models are proprietary and whose full development documentation is not available to the sponsors submitting INDs and NDAs.

The draft guidance requires sponsors to document model provenance and performance. Applied to vendor-supplied AI, this creates a documentation demand that the sponsoring company may be unable to fulfill regardless of budget or effort. A small biotech cannot compel a major AI vendor to disclose proprietary training data, architecture details, or hyperparameter choices. The vendor's competitive interests are directly in conflict with the sponsor's compliance obligations under the draft guidance.

The answer is not to eliminate the documentation requirement — model provenance matters, and sponsors should be accountable for the AI tools they deploy in support of regulatory submissions. The answer is a contract-disclosure framework that specifies what sponsors must contractually obtain from vendors (performance validation data, bias testing results, documentation of retraining events and their triggers) as a condition of using vendor-supplied AI in submissions. This approach is both more tractable and more enforceable than demanding documentation the sponsor cannot produce. FDA should look to how HHS handled similar third-party data accountability questions in the [21st Century Cures Act implementation](https://www.hhs.gov/about/news/2023/04/11/hhs-propose-new-rule-to-further-implement-the-21st-century-cures-act.html) as a structural model.

### 3. Generative and Large Language Model Tools

The third gap is perhaps the most consequential for the next five years of drug development: generative AI and large language models used in drug discovery, clinical protocol design, and submission documentation itself.

The draft guidance was conceptualized primarily around predictive ML models — classifiers, regression models, structure-activity relationship models — whose outputs are specific, bounded, and verifiable against known ground truth. LLMs and generative models do not work this way. Their outputs are probabilistic, often stochastic, and context-dependent in ways that make the standard credibility assessment workflow — define context of use, establish performance requirements, validate against test set — deeply awkward to apply directly.

When a sponsor uses an LLM to synthesize literature, generate protocol language, or assist in writing a clinical study report, is that a "model used to support regulatory decision-making" within the meaning of the guidance? The honest answer is: sometimes yes, sometimes no, and the boundary is not obvious. If FDA's answer is "when in doubt, apply full credibility assessment," the practical effect will be to drive LLM use underground — sponsors will use these tools informally without disclosing them, because disclosure triggers a credibility burden they cannot satisfy. That outcome is worse for regulatory transparency than a sensible tiered pathway would be.

FDA should establish a tiered classification for generative tools: those used in administrative and drafting contexts that do not materially influence regulatory decisions should require disclosure but not full credibility assessment; those whose outputs directly inform a regulatory claim should follow a modified credibility workflow appropriate to the probabilistic nature of the outputs. This is not a deregulatory move — it is implementation precision that brings the framework's risk-calibrated logic into contact with a new class of tools.

## The FDA-EMA Alignment Is a Strategic Asset

In January 2026, the FDA and the European Medicines Agency jointly issued [ten guiding principles for good AI practice in drug development](https://www.fda.gov/about-fda/artificial-intelligence-drug-development/guiding-principles-good-ai-practice-drug-development) — a genuine transatlantic convergence on a shared regulatory philosophy for biomedical AI. This is not a minor technical achievement. AI governance is fracturing globally: the EU's horizontal AI Act, the UK's sector-led approach, China's generative AI regulations, and the United States' executive-order-and-voluntary-standards approach are producing a patchwork that is imposing real friction on global AI development.

The FDA-EMA alignment demonstrates that harmonization is achievable in biomedical AI specifically, and that the US-EU divide on AI governance is not inevitable. [RAPS coverage of the joint principles](https://www.raps.org/news-and-articles/news-articles/2026/1/ema-fda-issue-joint-ai-guiding-principles-for-drug) highlights particular convergence on data integrity, algorithmic transparency, and lifecycle management — precisely the foundational principles where alignment matters most for multinational clinical trials.

Congress and the Office of Science and Technology Policy should take note. The Energy & Commerce and HELP committees have both shown interest in AI governance — and the FDA-EMA joint principles offer a concrete model of what sector-specific, agency-driven international harmonization looks like when it works. That is a far better template for US biomedical AI governance than layering domestic legislative mandates that would diverge from the EMA framework and fragment the transatlantic clinical trial ecosystem. Supporting FDA's ability to finalize and implement this guidance — rather than legislating over it — is the right move for Congress.

## Lifecycle Management Is Not Optional

AI models evolve. This is not a bug; it is the point. A clinical trial design model retrained on new efficacy data from a completed trial is a better model. A predictive toxicology platform updated to incorporate new mechanistic understanding is more protective. A manufacturing optimization system that adapts to process variation is more reliable. The entire value proposition of AI in drug development depends on the ability to update models as science advances.

The draft guidance does not adequately address what happens when a sponsor updates a model after submission. Under current FDA prior-approval supplement requirements, a significant change to an analytical method — and an AI model is an analytical method — can trigger full re-review. Applied to AI systems that evolve continuously, this creates a perverse choice: freeze model performance at submission time to avoid re-review, or face the re-review gauntlet every time the model improves. Neither option serves patients.

[CDER's 2026 guidance agenda](https://www.raps.org/news-and-articles/news-articles/2026/2/fda-s-cder-agenda-includes-new-guidance-on-digital) signals awareness of this issue in the context of digital health and manufacturing. The final AI guidance should codify a solution: a streamlined prior-approval supplement pathway for model updates that clear defined materiality thresholds, paired with a notification-only track for updates below those thresholds. The materiality standard should be tied, again, to the framework's foundational principle — does this change materially affect the model's performance in its regulatory context of use? If yes, a focused review is warranted. If no, notification preserves transparency without imposing a re-review burden that would freeze the very learning that makes AI valuable.

[ITIF's 2024 analysis of AI in biopharma innovation](https://itif.org/publications/2024/11/15/harnessing-ai-to-accelerate-innovation-in-the-biopharmaceutical-industry/) has argued persuasively that adaptive management frameworks — where ongoing oversight is calibrated to observed risk rather than triggered by any change — consistently outperform static approval regimes for rapidly evolving technologies. The FDA's AI framework should apply this logic explicitly and build the lifecycle management provisions into the final guidance rather than deferring them to future sub-regulatory cycles.

## What the Final Guidance Must Do

The argument here is not against oversight. The credibility framework is the right response to the genuine risks that AI in drug development poses — model brittleness, distributional shift, opacity in high-stakes predictions. The argument is for implementation precision: resolving the three structural gaps in ways that extend the framework's risk-calibrated logic to the full range of AI deployment patterns actually present in the industry.

Concretely, the final guidance should:

**Establish compositional documentation standards for ensemble models.** The credibility assessment should apply at the prediction level — what does this ensemble output, how was that output validated, what is its uncertainty — not at the level of each constituent model. Sponsors should document the ensemble's performance characteristics in context of use; full lifecycle transparency for each component model should not be required unless a component has material independent influence on the regulatory decision.

**Create a contract-disclosure framework for vendor AI.** Sponsors using third-party AI tools should be required to contractually obtain and retain specified documentation from vendors — performance validation data, bias assessments, retraining triggers and events — as a condition of using vendor AI in submissions. This should replace, not supplement, documentation demands the sponsor cannot satisfy independently.

**Establish a tiered classification for generative tools.** Generative AI and LLMs used in administrative and drafting contexts should require disclosure but not full credibility assessment. Those whose outputs directly inform a regulatory claim should follow a modified credibility workflow appropriate to probabilistic outputs. FDA should develop this classification through an accelerated notice-and-comment process if necessary rather than deferring it to future sub-regulatory guidance.

**Codify streamlined lifecycle management provisions.** A materiality-based prior-approval supplement pathway for significant model updates, paired with a notification-only track for updates below that threshold, should be built into the final guidance rather than addressed in subsequent guidance cycles.

## The Stakes

The scale of what is at stake is measurable: CDER has already processed more than 300 AI-assisted submissions, with more arriving daily. Behind every program in that pipeline are patients waiting for therapies that AI-accelerated development could deliver faster — if the regulatory framework enables rather than impedes the learning and iteration that make AI-driven science work.

The FDA's credibility framework is the right architecture. It deserves to be finalized in a form that honors its own logic: proportionate, risk-calibrated, and sophisticated enough to accommodate the full range of AI deployment that is actually transforming drug development. The three ambiguities identified here are not exotic edge cases — they are the frontier. Leaving them unresolved is not caution; it is a choice to burden innovation without corresponding safety benefit.

FDA should get this right. The window is open. It will not be for much longer.

---

*The author is ThinkBot's Senior Fellow for AI Policy.*
