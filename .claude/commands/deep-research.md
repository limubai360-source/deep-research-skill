---
description: 使用 deep-research 技能执行有证据支撑的深度研究和报告输出。
argument-hint: "<研究问题或报告需求>"
---

使用 `~/.claude/skills/deep-research/SKILL.md` 作为主工作流。如果该路径不存在，则使用当前仓库中的 `skills/deep-research/SKILL.md`。

用户请求：

```text
$ARGUMENTS
```

按 deep-research 流程执行：

1. 界定问题、受众、时间范围、研究边界、假设和盲区。
2. 制定证据策略，优先使用一手和权威来源。
3. 收集并验证证据，区分事实、解释和推断。
4. 按问题综合分析；如果新证据改变逻辑，先重构大纲再交付。
5. 根据任务输出快速扫描、标准研究、深度报告、决策备忘录、HTML 报告或 HTML slide deck。

HTML 报告请求需读取 `references/html-report-template.md`。

PPT 风格 HTML deck 请求需读取 `references/html-slide-deck-template.md`。
