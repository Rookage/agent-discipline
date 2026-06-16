# Contributing

PRs welcome.

## What Fits

Good additions:

- small agent workflows
- practical debugging or testing discipline
- better bilingual wording
- examples that help real users operate agents better

Not a fit:

- giant prompt dumps
- vague productivity slogans
- skills that only say “be better”
- unsafe automation that hides credentials or bypasses user trust boundaries

## Style

- Chinese first, English enough for global readers.
- Clear beats fancy.
- Useful beats impressive.
- Humor allowed. Confusion not allowed.

## Skill Format

Each skill should live in:

```text
skills/<skill-name>/SKILL.md
```

Use concise frontmatter:

```yaml
---
name: skill-name
description: What it does and when to use it.
---
```

Keep skills short. If a skill becomes a novel, the agent will politely drown in it.
