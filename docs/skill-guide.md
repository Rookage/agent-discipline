# Skill Guide / 技能导览

## clarify-first

Use before building.

中文：需求还没清楚时，不要让 Agent 直接写代码。这个技能让 Agent 先读现有上下文，再一次问一个关键问题。

Best for:

- feature planning
- product ideas
- PRD drafting
- architecture choices

## repro-first

Use before fixing bugs.

中文：bug 没复现，修复就是占卜。这个技能要求 Agent 先建立可重复的反馈闭环。

Best for:

- failing tests
- runtime errors
- flaky behavior
- performance regressions

## behavior-first

Use for tested implementation.

中文：测试用户能看见的行为，不测试代码内部的摆设。

Best for:

- adding features
- fixing regressions
- improving test coverage

## session-handoff

Use when context is about to disappear.

中文：长会话结束前，把目标、状态、决定、下一步写清楚。下个 Agent 不应该从考古开始。

Best for:

- long tasks
- handoffs
- context resets
- cross-agent work

## fast-operator

Use when the agent needs to move.

中文：少废话，先行动，自己验证。只有账号授权、破坏性操作、真实选择才打断用户。

Best for:

- environment setup
- GitHub operations
- repo maintenance
- “stop explaining and do it” moments
