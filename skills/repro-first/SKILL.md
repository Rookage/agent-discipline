---
name: repro-first
description: Use when debugging bugs, failures, broken behavior, flaky tests, regressions, crashes, or performance issues. Build a reproducible feedback loop before hypothesizing or fixing; useful when the user says debug, diagnose, failing, broken, cannot use, slow, or error.
---

# Repro First

中文核心：先复现，再修。不要猜。

## Workflow

1. Build a feedback loop.
   - Prefer failing test, curl/HTTP script, CLI repro, Playwright script, trace replay, or minimal harness.
   - The loop must produce a clear pass/fail signal.

2. Reproduce the user-visible failure.
   - Confirm the symptom matches what the user reported.
   - Capture exact error, output, timing, request, DOM state, or log.

3. Create 3-5 ranked hypotheses.
   - Each hypothesis must be falsifiable.
   - Format: if X is the cause, then changing or observing Y will prove or disprove it.

4. Instrument narrowly.
   - One variable at a time.
   - Use targeted logs, breakpoints, assertions, or probes.
   - Prefix temporary logs with `[DEBUG-repro-first]` and remove them before finishing.

5. Fix with regression protection.
   - If a correct seam exists, write the failing regression test before the fix.
   - If no correct seam exists, document that the architecture blocks reliable regression coverage.

6. Verify.
   - Re-run original repro.
   - Re-run relevant tests.
   - Remove temporary artifacts.

## Communication

- State evidence, not vibes.
- Do not ask the user to run commands the agent can run.
- Ask for user input only when the missing artifact is outside agent reach.
