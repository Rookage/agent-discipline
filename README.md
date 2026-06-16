# Agent Discipline

> Practical skills that make AI coding agents more disciplined, testable, and useful in real engineering work.
>
> 让 AI 编程 Agent 不再只会“看起来很忙”，而是更会复现、更会验证、更会交付。

AI coding agents are powerful, but raw power is not discipline.

很多 AI 编程工具的问题不是“不会写代码”，而是：

- 没问清楚就开工
- bug 没复现就开始猜
- 测试没跑就说完成
- 聊了很多，真正推进很少
- 一遇到环境问题，就把用户变成命令执行员

**Agent Discipline** 是一组小而实用的 Agent skills。它的目标不是制造一个更会吹牛的 AI，而是给 Agent 装上工程纪律：先澄清、先复现、先测试、短交接、快执行。

## Why This Exists

AI agents are getting faster. That also means they can create chaos faster.

This repo gives agents a simple operating system for real work:

```text
clarify before building
reproduce before fixing
test behavior before refactoring
handoff before context dies
act fast without turning the user into your assistant
```

中文说法更直接：

```text
先问清楚，再开工。
先复现，再修 bug。
先测行为，再谈重构。
先留交接，再换会话。
先自己干，别让用户替你打杂。
```

## Skills

| Skill | 中文说明 | English |
|---|---|---|
| [`clarify-first`](./skills/clarify-first/SKILL.md) | 开工前澄清需求、术语、边界，并沉淀项目语言 | Clarify scope, language, and decisions before implementation |
| [`repro-first`](./skills/repro-first/SKILL.md) | 排查 bug 时先建立复现闭环，再定位修复 | Build a reproducible feedback loop before debugging |
| [`behavior-first`](./skills/behavior-first/SKILL.md) | 用行为测试和红绿重构开发功能 | Build with behavior-focused red-green-refactor |
| [`session-handoff`](./skills/session-handoff/SKILL.md) | 把当前会话压缩成下个 Agent 能接手的交接文档 | Create concise handoffs for future sessions |
| [`fast-operator`](./skills/fast-operator/SKILL.md) | 少废话，快执行，只在真实边界打断用户 | Work quickly, verify directly, interrupt only at real trust boundaries |

## Who This Is For

适合这些人：

- 用 Codex、Claude Code、Cursor、Copilot Workspace 或其他 coding agent 做项目的人
- 想让 Agent 更像工程搭档，而不是“语气很礼貌的随机代码生成器”的人
- 自己不是传统程序员，但想靠 AI 把项目做得更稳的人
- 受够了“我已经完成了”，结果测试没跑、页面打不开、仓库没推上去的人

Not for:

- 想让 Agent 无脑生成一堆代码的人
- 不在乎测试、不在乎复现、不在乎交接的人
- 喜欢把用户变成终端操作员的 Agent

## Installation

This repository is written in the common `SKILL.md` folder style. For Codex, copy the skill folders into your Codex skills directory:

```powershell
Copy-Item .\skills\* "$env:USERPROFILE\.codex\skills" -Recurse -Force
```

Then restart Codex or open a new session so the skills are loaded.

如果你使用其他 Agent，请把对应 `SKILL.md` 内容放到该工具支持的 skill / rule / instruction 目录里。

## How To Use

You can call the skills explicitly:

```text
Use $clarify-first before building this feature.
Use $repro-first to debug this failure.
Use $behavior-first to implement this with tests.
Use $session-handoff to prepare the next session.
Use $fast-operator from now on.
```

中文也可以这样叫：

```text
先用 clarify-first 问清楚
用 repro-first 排查这个 bug
用 behavior-first 做这个功能
用 session-handoff 做交接
进入 fast-operator 模式
```

## Recommended Workflow

For a new feature:

```text
clarify-first -> behavior-first -> session-handoff
```

For a bug:

```text
repro-first -> behavior-first -> session-handoff
```

For daily agent work:

```text
fast-operator always on
```

## Design Principles

### 1. Repro beats guesses

If the agent cannot reproduce the bug, it does not understand the bug yet.

### 2. Behavior beats implementation

Tests should describe what the system does, not worship the private shape of current code.

### 3. One good question beats ten lazy questions

Users do not want to become project managers for an anxious agent. Ask fewer questions. Ask better questions.

### 4. Handoffs are not paperwork

Context loss is real. A good handoff saves hours and prevents the next agent from rediscovering obvious facts.

### 5. Speed needs discipline

Fast does not mean reckless. Fast means fewer fake blockers, shorter loops, and direct verification.

## Repository Structure

```text
agent-discipline/
├─ skills/
│  ├─ clarify-first/
│  ├─ repro-first/
│  ├─ behavior-first/
│  ├─ session-handoff/
│  └─ fast-operator/
├─ docs/
│  └─ philosophy.md
├─ .github/
│  └─ ISSUE_TEMPLATE/
├─ LICENSE
└─ README.md
```

## Credits

Inspired by the broader AI engineering skills movement, especially the idea that good agents need workflows, not just prompts.

This repo has its own naming, wording, and operating style. It is built for practical agent work in Chinese and English environments.

## License

MIT.
