# Deep Research Skill

[English](README.md) | 简体中文

一个可在 Codex、Claude Code 和 OpenClaw 风格 Agent 中复用的深度研究技能。

这个技能用于把宽泛、模糊或带有市场噪音的研究问题，整理成有证据、有结构、有结论、有建议的研究输出。它支持问题界定、证据策略、来源交叉验证、结构化综合、第一性原理产品分析，以及可选的 HTML 研究报告和 HTML PPT 演示文稿输出。

## 能力概览

- 界定研究问题，识别假设、盲区和相邻议题。
- 优先使用一手资料、官方资料、论文、标准、代码仓库和权威来源。
- 把营销号观点、社区热帖、未证实叙事作为线索，而不是直接当事实。
- 当新增证据改变报告逻辑时，重新审视整体大纲，而不是把新观点随意插入。
- 输出执行摘要、时间线、关键发现、分歧观点、风险、建议和来源列表。
- 支持生成美观的 HTML 研究报告。
- 支持生成 16:9 的交互式 HTML PPT 演示文稿。
- 对产品、市场和商业计划类研究，补充第一性原理分析、MVP 范围、差异化、风险和开源项目参考。

## 仓库结构

```text
.
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

## Codex 安装方式

把 skill 文件夹复制到 Codex 的 skills 目录：

```bash
mkdir -p "$CODEX_HOME/skills"
cp -R skills/deep-research "$CODEX_HOME/skills/deep-research"
```

之后，当你提出 `deep-research`、市场研究、技术调研、竞品分析、正式研究报告等请求时，即可触发使用。

## Claude Code 使用方式

Claude Code 会读取 `CLAUDE.md`，也可以使用 slash command：

```text
/deep-research <你的研究问题>
```

这个命令会引导 Claude Code 使用 `skills/deep-research/SKILL.md` 及相关 references。

## OpenClaw 使用方式

OpenClaw 风格 Agent 可以先读取：

```text
OPENCLAW.md
```

或：

```text
AGENTS.md
```

然后按照主入口：

```text
skills/deep-research/SKILL.md
```

这个 skill 使用纯 Markdown 和引用文件，不依赖专有运行时，因此适合多种 Agent 环境复用。

## 输出模式

- Quick scan：快速扫描，少量高信号来源，简短回答。
- Standard research：标准研究，覆盖主要子问题、证据对比和建议。
- Deep report：深度报告，包含更完整证据、反方观点和附录。
- Decision memo：决策备忘录，聚焦选项、取舍、风险和推荐路径。
- HTML report：完整内容保留的静态 HTML 研究报告。
- HTML slide deck：PPT 风格的 16:9 交互式 HTML 演示文稿。

## 设计原则

1. **研究不是复述资料**：要识别问题、分辨事实与观点，并给出可执行判断。
2. **用户问题可能不完整**：需要主动提醒是否扩展范围，而不是只回答字面问题。
3. **对外报告要专业**：如果用户题设中有偏差，最终报告应使用修正后的专业表述，不暴露“用户误解”。
4. **新增观点要重构文章**：如果研究过程中发现重要新观点，应重新梳理报告结构，而不是后补一段。
5. **产品研究要落到行动**：对产品经理、创业或商业计划场景，要补充第一性原理、MVP、差异化、风险和开源项目参考。

## 许可证

MIT
