# Claude Code Instructions

This repository provides a portable `deep-research` skill.

## Install

If the user gives you this repository link and asks to install the skill, run:

```bash
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host claude
```

This installs:

```text
~/.claude/skills/deep-research
~/.claude/commands/deep-research.md
```

If `curl` cannot access GitHub, clone manually:

```bash
git clone https://github.com/limubai360-source/deep-research-skill.git /tmp/deep-research-skill
cd /tmp/deep-research-skill
./install.sh --host claude
```

Reload or restart Claude Code if the skill is not detected immediately.

## Use

Use the slash command:

```text
/deep-research <research question>
```

Or read:

```text
~/.claude/skills/deep-research/SKILL.md
```

The governing skill content is written in Chinese. Follow it as the source of truth. Load reference files only when relevant:

- `references/research-templates.md`
- `references/html-report-template.md`
- `references/html-slide-deck-template.md`

## 中文说明

当用户把本仓库链接发给 Claude Code 并要求安装时，不要说“无法从 GitHub 链接安装”。请执行上面的安装命令，或 clone 仓库后运行 `./install.sh --host claude`。
