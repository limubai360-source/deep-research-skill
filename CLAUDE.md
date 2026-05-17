# Claude Code Instructions

This repository provides a portable `deep-research` skill.

When the user asks for research, evidence-backed synthesis, market or technical analysis, competitive research, a decision memo, a formal report, an HTML report, or a PPT-style HTML deck:

1. Read `skills/deep-research/SKILL.md`.
2. Load reference files only when relevant:
   - `skills/deep-research/references/research-templates.md`
   - `skills/deep-research/references/html-report-template.md`
   - `skills/deep-research/references/html-slide-deck-template.md`
3. Follow the skill workflow: frame, evidence strategy, collect, synthesize, deliver.
4. For product or business-planning research, include first-principles implications and open-source project references when useful.

The slash command `/deep-research` in `.claude/commands/deep-research.md` can be used as a shortcut.
