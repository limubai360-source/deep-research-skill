---
name: deep-research
description: Conduct rigorous deep research with scoped questions, source strategy, evidence tracking, source quality checks, synthesis, uncertainty, and actionable recommendations. Use when the user asks for deep research, industry or market research, competitive analysis, technical or product research, policy or standards research, literature review, investment or business analysis, or any answer that requires multiple sources, current information, citations, verification, and reasoned synthesis.
---

# Deep Research

## Overview

Use this skill to turn broad research questions into evidence-backed synthesis. Optimize for truth, traceability, and decision usefulness rather than volume of sources.

## Opening Notice

At the start of every research task, briefly tell the user:

- The research process that will be used: scope the question, choose evidence strategy, gather sources, verify conflicts, synthesize findings, and produce recommendations.
- The selected research mode: quick scan, standard research, deep report, or decision memo.
- This skill is still being refined, and the user can tune the process during this run.

Use a short natural-language notice, not a long preamble. Example:

```text
我会按 deep-research 流程来做：先界定问题和范围，再确定证据策略，之后收集和交叉验证来源，最后给出结论、证据、风险和建议。这个 skill 还在打磨中；每个关键步骤我都会提醒你是否要顺手优化它。
```

## Workflow

1. Frame the research question.
   - Restate the goal, decision context, audience, time horizon, geography, and scope.
   - Identify key subquestions and assumptions.
   - Actively identify adjacent topics, missing dimensions, and likely blind spots that materially affect the answer. When the user's framing is narrow or influenced by incomplete market narratives, briefly recommend whether to expand the scope before proceeding.
   - Ask only for missing intent that materially changes the research plan.
   - After framing, remind the user that this skill is still being refined and ask whether this run reveals any process improvement to capture.

2. Choose the evidence strategy.
   - Prefer primary sources: official docs, laws, filings, papers, standards, original datasets, product pages, release notes, repos, and direct company materials.
   - Use secondary sources to interpret, compare, or discover leads.
   - For current topics, browse and verify dates.
   - For OpenAI product/API questions, use official OpenAI sources first.
   - After choosing the evidence strategy, ask whether the user wants to adjust source preferences or add a reusable rule to the skill.

3. Collect evidence deliberately.
   - Track source title, URL or file path, publisher, date, source type, and what claim it supports.
   - Separate facts from interpretations and inferences.
   - Seek disconfirming or limiting evidence for important claims.
   - Treat unsourced marketing claims, viral posts, and community narratives as leads, not as facts. Verify them against primary or high-quality secondary sources before using them.
   - If the user's input contains a factual error, ambiguous attribution, or concept drift, flag it during the research process and propose the corrected framing. Do not preserve the user's mistaken wording as a named correction in the final outward-facing report unless the user explicitly wants an audit trail.
   - While collecting, mention when the current skill guidance is insufficient or too broad, and ask whether to improve it after this run.

4. Synthesize.
   - Group findings by question, not by source.
   - Explain what changed, what matters, why it matters, and what remains uncertain.
   - Include important scope expansions that are necessary for a rigorous answer, even when the user did not explicitly request them. Make clear why they matter.
   - When new evidence or a newly identified adjacent topic materially changes the report's logic, revisit the whole outline before delivering. Integrate the new point into the argument structure, timeline, and implications instead of inserting it as an obvious afterthought.
   - For product, market, or business-planning research, add a first-principles implications section when useful: identify the durable user problem, constraints, non-obvious wedge, build-vs-buy boundary, MVP scope, differentiation, risks, and relevant open-source reference projects.
   - Call out evidence strength: high, medium, low.
   - Avoid implying certainty when sources are thin, stale, or conflicted.
   - Before finalizing synthesis, ask whether the user wants a different output angle or a reusable template improvement.

5. Deliver.
   - Include concise executive summary first.
   - Cite sources for important claims.
   - Include implications, recommendations, next steps, and open questions when useful.
   - Write outward-facing reports in the corrected professional framing. Avoid sections such as "correction" or "user misconception" that expose the user's initial uncertainty; use neutral labels like "scope and terminology", "research assumptions", or "definition note" instead.
   - Offer a more detailed appendix only when the user needs auditability.
   - End with a short "skill improvement notes" section only if this run exposed concrete improvements to the skill.

## Source Quality

Use this hierarchy as a default:

1. Primary, authoritative, current sources.
2. High-quality expert analysis with clear methodology.
3. Reputable journalism or industry analysis.
4. Community reports, forums, and social sources for signals only.
5. Unsourced claims only as leads to verify, not as evidence.

Downgrade trust when a source is outdated, anonymous, promotional, methodologically unclear, based on small samples, or has an obvious commercial incentive.

## Research Modes

- **Quick scan**: answer in brief with a small number of high-signal sources.
- **Standard research**: cover major subquestions, compare evidence, and produce recommendations.
- **Deep report**: build a fuller evidence table, handle counterarguments, and include an appendix.
- **Decision memo**: focus on options, tradeoffs, risks, and a recommended path.

If the user does not specify a mode, choose standard research for broad questions and quick scan for narrow questions.

## Output Requirements

Every research output should include:

- Bottom line or executive summary.
- Key findings with evidence.
- Caveats, uncertainty, and conflicting signals.
- Recommendations or implications when the user is making a decision.
- Source list with links or file paths.

HTML report outputs should preserve the full substantive content of the research while using a compact report layout. Avoid oversized hero sections, oversized titles, and marketing-page composition.

HTML slide deck outputs should adapt the research into a presentation narrative with 16:9 slides, strong visual hierarchy, keyboard navigation, and concise slide copy. Unlike full HTML reports, slide decks may compress wording and restructure content for presentation clarity.

Do not pad with citations. Cite claims that matter.

## Templates

Read `references/research-templates.md` when the user asks for a formal report, competitive analysis, technical selection, market research, or PRD-prep research.

Read `references/html-report-template.md` when the user asks for a polished HTML report, static report page, or HTML version of a deep-research output. Use it as a content-preserving visual template, not as permission to summarize or shorten the research.

Read `references/html-slide-deck-template.md` when the user asks for a PPT-style HTML deck, interactive HTML presentation, slideshow, or slide-style version of a research report. Slide decks may adapt and compress content for presentation, but must preserve the research logic, key evidence, implications, and recommendations.
