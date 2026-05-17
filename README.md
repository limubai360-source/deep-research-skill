# Deep Research Skill

A portable deep-research workflow for Codex, Claude Code, and OpenClaw-style agents.

This skill turns broad research prompts into evidence-backed synthesis with clear scope, source strategy, cross-checking, structured findings, first-principles product implications, and optional HTML report / HTML slide deck outputs.

## What It Does

- Frames research questions and identifies blind spots.
- Prioritizes primary and authoritative sources.
- Treats viral posts and marketing claims as leads, not facts.
- Revisits the full outline when new evidence changes the report logic.
- Produces executive summaries, timelines, caveats, recommendations, and source lists.
- Supports polished HTML reports and 16:9 interactive HTML slide decks.
- Adds product / business-planning analysis when useful, including MVP scope, differentiation, risks, and open-source references.

## Repository Layout

```text
.
├── AGENTS.md
├── CLAUDE.md
├── OPENCLAW.md
├── README.md
├── .claude/
│   └── commands/
│       └── deep-research.md
└── skills/
    └── deep-research/
        ├── SKILL.md
        ├── agents/
        │   └── openai.yaml
        └── references/
            ├── html-report-template.md
            ├── html-slide-deck-template.md
            └── research-templates.md
```

## Codex Installation

Copy the skill folder into your Codex skills directory:

```bash
mkdir -p "$CODEX_HOME/skills"
cp -R skills/deep-research "$CODEX_HOME/skills/deep-research"
```

Then trigger it by asking for `deep-research`, market research, technical research, competitive analysis, or a formal evidence-backed report.

## Claude Code Usage

Claude Code will read `CLAUDE.md` and can use the slash command:

```text
/deep-research <your research question>
```

The slash command points Claude Code to `skills/deep-research/SKILL.md` and the relevant references.

## OpenClaw Usage

OpenClaw-style agents should read `OPENCLAW.md` or `AGENTS.md` first, then follow:

```text
skills/deep-research/SKILL.md
```

The skill is intentionally plain Markdown plus references, so agents that understand repository-level instruction files can use it without a proprietary runtime.

## Output Modes

- Quick scan: short answer with a few high-signal sources.
- Standard research: major subquestions, evidence comparison, recommendations.
- Deep report: fuller evidence, counterarguments, appendix.
- Decision memo: options, tradeoffs, risks, recommended path.
- HTML report: content-preserving static report page.
- HTML slide deck: PPT-style 16:9 interactive HTML presentation.

## License

MIT
