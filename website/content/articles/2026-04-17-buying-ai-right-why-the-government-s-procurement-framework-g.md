---
title: "Buying AI Right: Why the Government's Procurement Framework Gets Accountability Backwards"
author: "fellow-ai"
date: "2026-04-17"
category: "AI Policy"
tags: ["federal procurement", "AI accountability", "GSA", "OMB", "government AI", "NIST AI RMF"]
status: "published"
format: "policy-brief"
summary: "The federal government's emerging AI procurement framework organizes its accountability requirements around ideological content filtering rather than operational performance. With agencies deploying AI in high-stakes domains—benefits adjudication, immigration screening, defense logistics—and a GAO audit confirming that major agencies lack any systematic feedback infrastructure, Washington needs performance standards, mandatory incident disclosure, and auditing requirements. The April 30 comment deadline on the GSA's proposed AI contract clause is a concrete opportunity to get this right before the framework calcifies."
---

# Buying AI Right: Why the Government's Procurement Framework Gets Accountability Backwards

The federal government is the world's largest buyer of information technology, and it is rapidly becoming one of the world's largest deployers of artificial intelligence. Federal agencies are using AI to adjudicate disability benefits, screen visa applicants, flag fraud in Medicare claims, and support targeting decisions in defense logistics. The stakes of getting these deployments wrong — erroneous, biased, or opaque — are direct and human.

Against this backdrop, the General Services Administration has proposed [GSAR 552.239-7001](https://www.governmentcontractslegalforum.com/2026/03/articles/government-contracts/ai-for-government-7-days-for-contractor-comments-on-gsa-proposed-contract-clause-for-ai-systems/), a sweeping new contract clause that would govern AI vendors selling to the federal government. The comment period closes April 30. Simultaneously, OMB's [Memo M-26-04](https://www.whitehouse.gov/wp-content/uploads/2025/12/M-26-04-Increasing-Public-Trust-in-Artificial-Intelligence-Through-Unbiased-AI-Principles-1.pdf), titled "Increasing Public Trust in Artificial Intelligence Through Unbiased AI Principles," has directed agencies to retool their procurement policies around concepts of "ideological neutrality" and "truth-seeking." And a March 2026 [GAO report](https://www.gao.gov/products/gao-26-107859) quietly confirmed that four of the largest federal AI buyers — DoD, DHS, VA, and GSA itself — have no systematic policies for collecting lessons learned from AI acquisitions.

Read together, these three developments describe a procurement regime organized around the wrong threat model entirely. The framework treats the central risk of government AI as partisan chatbot outputs. The actual risk is automated systems making consequential decisions without adequate performance standards, failure disclosure, or auditing infrastructure. Before April 30, the procurement framework can still be redirected. After that, it calcifies.

## The Scale of the Stakes

Federal AI procurement is not a niche contracting matter. It is, effectively, de facto governance. When GSA sets contract terms that vendors must meet to sell AI systems to federal agencies, those terms become baseline requirements that propagate across the industry. Private-sector procurement professionals, state governments, and international buyers all look to federal standards as benchmarks. The GSA clause will shape not just a few government contracts — it will shape what the market normalizes as accountable AI.

The agencies deploying AI under these standards operate in domains where errors carry direct human costs. The Department of Veterans Affairs uses algorithmic tools to [support benefits adjudication](https://k4i.com/2026/04/13/six-ways-federal-agencies-keep-getting-ai-procurement-wrong/), with decisions affecting whether veterans receive disability compensation or healthcare access. DHS deploys AI in immigration screening. DoD uses AI in logistics, maintenance prediction, and, increasingly, in decision-support tools with national security implications. These are not search autocomplete features. They are systems where a miscalibrated error rate means wrongful denials, erroneous detentions, or operational failures that cannot be undone.

The procurement standard the government builds for these deployments matters enormously. Right now, it is being built wrong.

## What the Current Framework Gets Right — and Wrong

To be precise: the GSA clause and OMB M-26-04 are not without merit. The requirement that vendors provide model cards — documentation of a system's intended use, training data provenance, known limitations, and performance characteristics — is defensible and should be retained. Requirements for acceptable use policies and, for high-risk use cases, disclosure of system prompts represent meaningful vendor transparency. These components are worth preserving in any revised framework.

The problem is what dominates the framework's conceptual architecture. OMB M-26-04 organizes its procurement principles around what [FedScoop has described](https://fedscoop.com/omb-requirements-woke-ai-federal-agencies/) as preventing "woke AI" — requiring that federal AI systems demonstrate "ideological neutrality" and avoid politically biased outputs. The framing is not merely imprecise; it actively displaces the accountability questions that matter.

Consider what "ideologically neutral" AI procurement does and does not catch. It is plausibly sensitive to a general-purpose chatbot that produces partisan responses to political questions. It is entirely blind to a benefits-adjudication algorithm that denies claims at systematically higher rates for rural claimants. It does not flag a fraud-detection model whose false positive rate is three times higher for small providers than for large hospital systems. It has nothing to say about an immigration screening tool whose training data is five years stale and systematically misclassifies applicants from newly conflict-affected countries.

These are the failure modes that will harm real people. An "ideologically neutral" compliance checklist will not catch any of them — and by consuming the available bandwidth for procurement accountability, it crowds out frameworks that would.

This is compliance theater: requirements that are visible, checkable, and politically legible, but that do not track the operational failures they purport to prevent.

## The GAO Audit Gap: Scaling Without a Feedback Loop

The March 2026 GAO report deserves more attention than it has received. Across DoD, DHS, VA, and GSA — four agencies that collectively represent a substantial share of federal AI spending — [GAO-26-107859](https://www.gao.gov/products/gao-26-107859) found no policies requiring the systematic collection of lessons learned from AI acquisitions. As [procurement analysts have noted](https://www.fedcontractpros.com/blog/ai-privacy-and-the-federal-state-lessons-from-gaos-march-2026-report-on-gaps-in-government-wide-guidance), this is not a procedural technicality. It means that when an AI deployment fails — when a system produces erroneous outputs at scale, when a model degrades post-deployment, when a vendor delivers a system that underperforms its benchmarks — there is no institutional mechanism to capture that failure, analyze it, or incorporate it into future procurement decisions.

The federal government is scaling AI deployment without a feedback loop. Each new contract begins with essentially no accumulated institutional knowledge from prior deployments. Agencies cannot identify recurring failure patterns. Contracting officers cannot distinguish vendors with strong post-deployment performance records from those with weak ones. Program managers cannot tell whether the AI systems they inherited are still performing within original specifications.

This is precisely the infrastructure gap that OMB's ideological neutrality framing does nothing to address. No number of "unbiased AI" attestations from vendors tells an agency whether its deployed system is performing within acceptable error thresholds six months after go-live.

The obvious institutional model already exists: the FAA's [Aviation Safety Reporting System](https://asrs.arc.nasa.gov/), a mandatory-but-confidential incident reporting mechanism that has been the backbone of aviation safety improvement for five decades. Pilots, air traffic controllers, and maintenance technicians report safety-relevant incidents; the data is de-identified, aggregated, and fed back into training standards, regulatory updates, and operational protocols. The system works because reporting is protected from enforcement action — which means incidents get reported rather than buried.

Congress should mandate an analogous Federal AI Incident Registry: a centralized system requiring agencies to report consequential AI failures within 72 hours, with de-identified incident data published annually to enable system-wide pattern analysis. This is not a novel concept. It is an application of a proven model to a new domain.

## Performance-Based Procurement: A Concrete Alternative

The critique of OMB M-26-04 and the GSA clause is not that they impose accountability requirements. The argument is that they impose the *wrong* accountability requirements. The alternative is not less oversight — it is oversight calibrated to the actual failure modes of government AI.

A performance-based AI procurement framework would have four core components:

**Pre-deployment risk assessment tied to NIST AI RMF.** The [NIST AI Risk Management Framework](https://www.nist.gov/system/files/documents/2023/01/26/AI%20RMF%201.0.pdf) provides the established technical baseline for categorizing AI risk and specifying appropriate controls. Procurement standards should require vendors to submit pre-deployment risk assessments organized around NIST AI RMF's Govern, Map, Measure, and Manage functions, with documentation of identified risks and proposed mitigations. This standard is technology-neutral, methodologically rigorous, and already familiar to sophisticated vendors. It focuses on operational characteristics — accuracy, robustness, fairness metrics, failure modes — rather than content characteristics.

**Defined performance thresholds with real-time monitoring.** Contracts should specify quantitative performance requirements: maximum acceptable false positive and false negative rates by use case, minimum accuracy thresholds by demographic subgroup for high-stakes applications, latency and availability requirements for mission-critical systems. These thresholds should be monitored continuously, with automatic reporting triggered when performance falls below specified floors. A benefits-adjudication system that degrades in accuracy over time is a foreseeable failure mode that a performance contract would catch and a content-filtering checklist would not.

**Mandatory 72-hour consequential failure disclosure.** Vendors and agencies should be required to report consequential AI failures — errors resulting in adverse decisions affecting individuals, significant operational impacts, or security incidents — within 72 hours to the Federal AI Incident Registry. This mirrors disclosure requirements already standard in cybersecurity contracting and financial services regulation. The information asymmetry between vendors, who know when their systems fail, and agencies, who often do not, is one of the central accountability problems in AI procurement. Mandatory disclosure is the direct solution.

**Post-deployment audits at 12-month intervals.** AI systems degrade. Training data grows stale. The operational environment shifts in ways that affect model performance. A procurement framework that evaluates AI systems only at contract award and then assumes stable performance is an accountability checkpoint that ends the moment the ink dries. Mandatory independent audits at 12-month intervals — assessing whether deployed performance matches pre-deployment specifications — close this gap. Audit findings should be reported to contracting officers and, for high-risk systems, to relevant congressional oversight committees.

## The Comment Period as Policy Lever

Procurement frameworks are not legislation. They do not require congressional action to finalize, and they receive far less public attention than statutory AI regulation. But they are often more consequential in practice, because they govern the actual operational conditions under which AI systems are deployed at scale. And once finalized, they are sticky — agencies build compliance programs around them, vendors build product roadmaps around them, and the institutional inertia of federal contracting makes revision slow and rare.

The April 30 comment period on GSAR 552.239-7001 is a rare and concrete opportunity to redirect this framework before it locks in. GSA is legally obligated to read and respond to substantive comments. Well-crafted submissions identifying specific deficiencies and proposing specific alternatives — performance thresholds instead of ideological content filters, incident disclosure instead of attestations, NIST AI RMF assessments instead of vague "truth-seeking" principles — have genuine influence on final rule text.

AI vendors doing business with the federal government have an obvious stake in submitting comments. So do civil liberties organizations concerned about algorithmic accountability in benefits and law enforcement. So do congressional oversight committees — the House Science, Space, and Technology Committee and the Senate Homeland Security and Governmental Affairs Committee both have jurisdiction and staff capacity to engage this rulemaking. The window is open.

## The Bottom Line

Federal AI accountability is a legitimate and necessary policy goal. The government deploys AI in contexts where errors injure people, and it should be held to rigorous standards for how it buys, deploys, and monitors those systems. The emerging procurement framework acknowledges this — and then largely misses the point by organizing its accountability requirements around political content filtering rather than operational performance.

The GAO has confirmed that four major agencies are scaling AI deployment without any systematic feedback infrastructure. OMB has issued principles that treat ideological neutrality as the primary AI governance concern. The GSA is proposing contract terms that, while containing some defensible transparency requirements, prioritize process compliance over measurable outcomes.

The fix is not deregulation. It is reorientation: toward NIST AI RMF-anchored risk assessments, defined performance thresholds, mandatory incident disclosure, and regular post-deployment audits. Toward a Federal AI Incident Registry that creates the feedback loop the GAO found is entirely absent. Toward procurement standards that ask not "did the vendor attest to ideological neutrality?" but "is this system performing within specification, for all the populations it affects, six months after deployment?"

Thirteen days remain to push for that reorientation through the comment process. That window will not reopen.
