# Deep Research Skill

[English](README.md) | 简体中文

一个可在 **Codex**、**Claude Code** 和 **OpenClaw 风格 Agent** 中复用的深度研究技能。

这个仓库的目标是：你只要把仓库链接发给智能体，它就能根据安装说明自己完成安装。

```text
https://github.com/limubai360-source/deep-research-skill
```

## 能力介绍

- 界定研究问题、假设、范围和盲区。
- 制定证据策略，优先使用一手和权威来源。
- 把营销说法、热帖和社区叙事当作线索，而不是直接当事实。
- 输出有证据支撑的综合分析、决策备忘录、正式报告、HTML 报告和 HTML 幻灯片。
- 面向产品、市场和商业计划类研究时，补充第一性原理分析、MVP 启发、风险和开源项目参考。

## 一行安装命令

### Codex

```bash
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host codex
```

安装到：

```text
~/.codex/skills/deep-research
```

### Claude Code

```bash
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host claude
```

安装到：

```text
~/.claude/skills/deep-research
~/.claude/commands/deep-research.md
```

使用方式：

```text
/deep-research <你的研究问题>
```

### OpenClaw

```bash
curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host openclaw
```

安装到：

```text
~/.openclaw/skills/deep-research
```

如果你的 OpenClaw 使用其他 skills 目录：

```bash
OPENCLAW_HOME=/path/to/openclaw-home curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host openclaw
```

## 给智能体的安装提示词

如果 Claude Code、Codex 或 OpenClaw 说“无法直接从 GitHub 链接安装”，把下面这段发给它：

```text
请从 GitHub 安装这个自定义 deep-research skill：
https://github.com/limubai360-source/deep-research-skill

请根据你的宿主类型执行安装脚本：
- Codex: curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host codex
- Claude Code: curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host claude
- OpenClaw: curl -fsSL https://raw.githubusercontent.com/limubai360-source/deep-research-skill/main/install.sh | bash -s -- --host openclaw

安装后，如果当前会话没有自动识别新 skill，请重启或重新加载会话。
```

## 从 clone 后手动安装

```bash
git clone https://github.com/limubai360-source/deep-research-skill.git
cd deep-research-skill
./install.sh --host codex      # 或 claude / openclaw
```

## 仓库结构

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

## 语言约定

- 技能介绍和安装说明支持中英文双语。
- `skills/deep-research/SKILL.md` 使用中文指令。
- 官方产品名、来源标题和引用可保留原语言，以保证准确性。

## 许可证

MIT
