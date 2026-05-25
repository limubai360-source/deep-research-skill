# Deep Research Skill

English | [简体中文](README.zh-CN.md)

A portable deep-research skill for **Codex**, **Claude Code**, and **OpenClaw-style agents**.

This repository is designed so that an agent can install it after receiving only this repository link:

```text
https://github.com/limubai360-source/deep-research-skill
```

## What It Does

- Frames research questions, assumptions, scope, and blind spots.
- Designs source strategies and prioritizes primary / authoritative sources.
- Treats marketing claims, viral posts, and community narratives as leads until verified.
- Produces evidence-backed synthesis, decision memos, formal reports, HTML reports, and HTML slide decks.
- Supports product / market / business-planning research with first-principles analysis, MVP implications, risks, and open-source references.

## One-Line Install

### Codex

```bash
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host codex
```

Installs to:

```text
~/.codex/skills/deep-research
```

### Claude Code

```bash
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host claude
```

Installs to:

```text
~/.claude/skills/deep-research
~/.claude/commands/deep-research.md
```

Use:

```text
/deep-research <your research question>
```

### OpenClaw

```bash
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host openclaw
```

Installs to:

```text
~/.openclaw/skills/deep-research
```

If your OpenClaw setup uses another skills directory, run:

```bash
OPENCLAW_HOME=/path/to/openclaw-home curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host openclaw
```

## Agent Install Prompt

If an agent says it cannot install directly from a GitHub link, give it this prompt:

```text
Install this custom deep-research skill from GitHub:
https://github.com/limubai360-source/deep-research-skill

Run the install script for your host:
- Codex: curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host codex
- Claude Code: curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host claude
- OpenClaw: curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host openclaw

After installation, restart or reload the agent session if needed.
```

## Manual Install From A Clone

```bash
git clone https://github.com/limubai360-source/deep-research-skill.git
cd deep-research-skill
./install.sh --host codex      # or claude / openclaw
```

## Repository Layout

```text
.
├── install.sh
├── AGENTS.md
├── CLAUDE.md
├── OPENCLAW.md
├── README.md
├── README.zh-CN.md
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

## Skill Language

- Skill introduction and installation docs are bilingual.
- `skills/deep-research/SKILL.md` uses Chinese instructions.
- Official product names, source titles, and citations may keep their original language for accuracy.

## License

MIT
