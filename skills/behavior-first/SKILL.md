---
name: behavior-first
description: Use when implementing features or fixing bugs with tests. Applies red-green-refactor, behavior-focused tests, public-interface testing, and small vertical slices. Trigger when the user says TDD, tests, implement with tests, make it stable, or fix with regression coverage.
---

# Behavior First

中文核心：测行为，不拜实现。

## Principles

- Test observable behavior through public interfaces.
- Avoid tests that depend on private implementation details.
- Work in vertical slices: one behavior, one test, one minimal implementation.
- Refactor only after tests are green.

## Workflow

1. Inspect existing test style and commands.
2. Identify the public interface or user-visible behavior.
3. Write one failing test for one behavior.
4. Implement the smallest code needed to pass.
5. Repeat for the next behavior.
6. Refactor after green.
7. Run relevant verification.

## Test Quality

Good tests:

- read like specifications
- survive internal refactors
- fail when behavior breaks

Bad tests:

- mock internal collaborators unnecessarily
- assert private function shape
- pass while user behavior is broken

## Output

End with:

- behavior implemented
- tests added or changed
- verification command and result
- known gaps, if any
