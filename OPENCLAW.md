# OpenClaw Instructions

Use this repository as a portable research skill pack for OpenClaw-style agents.

## Install

If the user gives you this repository link and asks to install the skill, run:

```bash
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host openclaw
```

Default install target:

```text
~/.openclaw/skills/deep-research
```

If the OpenClaw environment uses a custom home directory:

```bash
OPENCLAW_HOME=/path/to/openclaw-home curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host openclaw
```

If `curl` cannot access GitHub, clone manually:

```bash
git clone https://github.com/limubai360-source/deep-research-skill.git /tmp/deep-research-skill
cd /tmp/deep-research-skill
./install.sh --host openclaw
```

## Entry Point

Primary workflow after installation:

```text
~/.openclaw/skills/deep-research/SKILL.md
```

If running directly from a cloned repository, use:

```text
skills/deep-research/SKILL.md
```

## When To Use

Use the skill for deep research, technical research, market research, competitive analysis, policy / standards research, literature review, business analysis, formal reports, HTML research reports, and PPT-style HTML slide decks.

## 中文说明

本技能是纯 Markdown + references 的可移植 skill。OpenClaw 看到仓库链接后，应先安装到 OpenClaw skills 目录，再按 `SKILL.md` 的中文流程执行。
