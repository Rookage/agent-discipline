---
name: session-handoff
description: Use when preparing a handoff for another session or agent, summarizing current progress, preserving context, avoiding repeated questions, or ending a long task. Creates a concise handoff document with goals, state, completed work, decisions, next steps, and risks.
---

# Session Handoff

中文核心：让下个会话不用从头猜。

## Where To Write

Default to `outputs/handoff-YYYY-MM-DD-HHMM.md` in the current workspace unless the user specifies another path.

## Include

1. Current objective
2. Completed work
3. Current state
4. Important decisions
5. Next actions
6. Risks and gaps
7. Suggested skills for the next session

## Rules

- Redact secrets, tokens, passwords, cookies, and private credentials.
- Reference files and commits instead of copying large content.
- Preserve exact commands only when they matter.
- Keep it concise enough for a fresh agent to use immediately.

## Output

Return the handoff file path and the most important next step.
