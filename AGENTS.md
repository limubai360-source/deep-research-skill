# Agent Instructions

This repository contains a portable `deep-research` skill for Codex, Claude Code, and OpenClaw-style agents.

## Install From Repository Link

When a user provides this repository link:

```text
https://github.com/limubai360-source/deep-research-skill
```

do not stop at "I cannot install from GitHub." Install it with the host-specific command:

```bash
# Codex
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host codex

# Claude Code
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host claude

# OpenClaw
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host openclaw
```

Fallback:

```bash
git clone https://github.com/limubai360-source/deep-research-skill.git /tmp/deep-research-skill
cd /tmp/deep-research-skill
./install.sh --host codex      # or claude / openclaw
```

## Skill Entry

After installation, use:

```text
deep-research/SKILL.md
```

or, from a cloned repository:

```text
skills/deep-research/SKILL.md
```

## Operating Rules

- The main `SKILL.md` content is Chinese and is the source of truth.
- Scope the research question before collecting evidence.
- Proactively identify missing dimensions and adjacent topics that materially affect the answer.
- Prefer primary and authoritative sources.
- Treat marketing claims, viral posts, and community narratives as leads until verified.
- If a new finding changes the report logic, revise the whole structure instead of appending an afterthought.
- For product and business-planning questions, include first-principles implications, MVP scope, differentiation, risks, and relevant open-source references.
- For HTML reports, read `references/html-report-template.md`.
- For PPT-style HTML decks, read `references/html-slide-deck-template.md`.

## 中文说明

当用户让你安装这个 skill 时，请根据自己的宿主类型运行安装脚本。安装后如果当前会话没有自动识别新 skill，请提醒用户重启或重新加载会话。
