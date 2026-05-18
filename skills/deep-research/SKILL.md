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
   - For technical-route, architecture, product strategy, or implementation-path research, synthesize each route as an actionable option, not only as a source summary. Include: core principle, implementation approach, practical scenarios, product implications, evidence strength, tradeoffs, and a 1-5 score when the user is comparing options.
   - When a route has a meaningful system structure, include a compact Mermaid architecture diagram or an equivalent text architecture. Prefer diagrams that show data flow, decision points, feedback loops, and governance boundaries.
   - For product, market, strategy, business-planning, or investment research, include first-principles analysis as an explicit, standalone section when useful. Do not merely weave first-principles reasoning into findings, conclusions, recommendations, or implications.
   - For company or product-strategy research, the standalone first-principles section must answer: why this company is changing, what external or internal conditions changed, which underlying user/market/technical constraints forced or rewarded the change, and what causal chain connects those constraints to the company's current product and go-to-market moves.
   - The standalone first-principles section should identify the durable user problem, underlying constraints, root economic or workflow tradeoff, non-obvious wedge, build-vs-buy boundary, MVP scope, differentiation, risks, and relevant open-source reference projects when applicable. It should derive conclusions from first constraints instead of only restating a strategy framework.
   - Call out evidence strength: high, medium, low.
   - Avoid implying certainty when sources are thin, stale, or conflicted.
   - Before finalizing synthesis, ask whether the user wants a different output angle or a reusable template improvement.

5. Deliver.
   - Include concise executive summary first.
   - Cite sources for important claims.
   - Include implications, recommendations, next steps, and open questions when useful.
   - Write outward-facing reports in the corrected professional framing. Avoid sections such as "correction" or "user misconception" that expose the user's initial uncertainty; use neutral labels like "scope and terminology", "research assumptions", or "definition note" instead.
   - When the user asks in Chinese or the output is intended for a Chinese knowledge base, use Chinese for all report framework headings and structural labels. Do not use English headings such as "Executive Summary", "Research Scope", "Key Findings", "Risks And Caveats", or "Source List" unless the user explicitly requests English.
   - When writing files, create new files unless the user explicitly asks to replace an existing artifact. Use clear date/topic filenames and keep related Markdown/HTML outputs in the same folder when practical.
   - After creating a file-based output, run a lightweight structural check before final delivery: file exists, section count is plausible, expected cards/tables/diagrams are present, links/anchors are not obviously broken, and no old file was unintentionally overwritten.
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
- For product, market, strategy, business-planning, or investment research, an explicit standalone section titled "First-Principles Analysis" or "第一性原理分析" when useful. This section must not be replaced by scattered reasoning inside other sections. For company/product-strategy reports, it must explicitly explain why the company changed, what happened in the market or technology environment, and how first-principles constraints lead to the observed product and sales strategy.
- Source list with links or file paths.

For Chinese reports, render those output requirements with Chinese section titles, for example: "执行摘要", "研究范围", "关键发现", "第一性原理分析", "技术路线", "销售方式与商业化", "风险与限制", "后续建议", and "来源清单". Preserve official product names, article titles, and quoted source titles in their original language when needed for accuracy.

For technical-route research, add a route comparison layer:

- A route overview table: route, pain point addressed, feasible implementation direction.
- Per-route details: core principle, implementation approach, practical scenarios, product implications, score, and key caveats.
- Architecture diagrams where helpful, using Mermaid for reports that support it.
- A scoring summary table with priority recommendation and rationale.

HTML report outputs should preserve the full substantive content of the research while using a compact report layout. Avoid oversized hero sections, oversized titles, and marketing-page composition.

For HTML reports, verify structure after generation when possible:

- Title, first viewport, table of contents, section anchors, and source links exist.
- Repeated elements match the report intent, such as source cards, route cards, diagrams, or timeline events.
- Mermaid diagrams are embedded as source blocks or renderable diagram containers; note when CDN rendering requires network access.
- If browser automation is unavailable, report the static checks that were run instead of implying visual QA was completed.

HTML slide deck outputs should adapt the research into a presentation narrative with 16:9 slides, strong visual hierarchy, keyboard navigation, and concise slide copy. Unlike full HTML reports, slide decks may compress wording and restructure content for presentation clarity.

Do not pad with citations. Cite claims that matter.

## Templates

Read `references/research-templates.md` when the user asks for a formal report, competitive analysis, technical selection, market research, or PRD-prep research.

Read `references/html-report-template.md` when the user asks for a polished HTML report, static report page, or HTML version of a deep-research output. Use it as a content-preserving visual template, not as permission to summarize or shorten the research.

Read `references/html-slide-deck-template.md` when the user asks for a PPT-style HTML deck, interactive HTML presentation, slideshow, or slide-style version of a research report. Slide decks may adapt and compress content for presentation, but must preserve the research logic, key evidence, implications, and recommendations.
