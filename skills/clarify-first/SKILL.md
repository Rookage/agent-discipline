---
name: clarify-first
description: Use before starting unclear product, feature, architecture, workflow, or business tasks. Clarifies requirements, terminology, scope, edge cases, and decisions; updates CONTEXT.md and ADRs only when useful. Trigger when user says ask first, clarify, plan, PRD, do not rush, or discuss before coding.
---

# Clarify First

中文核心：先问清楚，再开工。能从代码判断的，不问用户。

## Workflow

1. Read the local context first.
   - Look for README, existing docs, `CONTEXT.md`, `CONTEXT-MAP.md`, `docs/adr/`, and nearby code.

2. Ask one useful question at a time.
   - Do not dump a questionnaire.
   - Include a recommended answer when possible.
   - If code answers the question, use the code.

3. Sharpen language.
   - Identify overloaded terms.
   - Propose canonical names.
   - Use the project's existing vocabulary when present.

4. Stress-test with concrete scenarios.
   - Happy path, empty state, permission failure, duplicate action, retry, rollback, edge cases.

5. Capture durable knowledge.
   - `CONTEXT.md`: domain terms only, not implementation notes.
   - ADR: only for decisions that are hard to reverse, surprising, and based on real tradeoffs.

6. Move to execution.
   - Once the main branches are resolved, produce a short plan and start.

## Style

- One question beats ten.
- Do not make the user manage the agent.
- Be precise without being verbose.
