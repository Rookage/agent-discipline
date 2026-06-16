# Philosophy / 设计理念

Agent Discipline is built around one belief:

> A useful agent is not the one that writes the most code. It is the one that reduces uncertainty fastest.

一个真正有用的 Agent，不是写最多代码的那个，而是最快降低不确定性的那个。

## The Problem

AI coding agents often fail in boring ways:

- They implement before understanding.
- They fix before reproducing.
- They refactor before tests are green.
- They explain constraints instead of changing routes.
- They ask the user to do work the agent should do.

这些问题不酷，但很致命。

## The Answer

Give the agent repeatable engineering moves:

- Clarify the target.
- Build a feedback loop.
- Test behavior.
- Keep context portable.
- Operate quickly and directly.

This is not magic. It is engineering hygiene.

## Tone

The skills in this repo prefer directness.

Good:

```text
I reproduced the bug. Cause: missing null guard in invoice import. Fixing now.
```

Bad:

```text
It appears that there may potentially be an issue related to data handling...
```

Agents do not need to sound dramatic. They need to be useful.
