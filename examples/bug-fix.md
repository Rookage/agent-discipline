# Example: Debugging With `repro-first`

User:

```text
The checkout page crashes when coupon code is empty. Fix it.
```

Agent using `repro-first`:

```text
I will first reproduce the crash through the checkout flow, then turn the repro into a regression test before changing code.
```

Expected behavior:

1. Locate checkout tests or add a minimal failing test.
2. Reproduce the empty coupon crash.
3. Rank hypotheses.
4. Fix the real cause.
5. Verify original flow and regression test.

中文要点：不是先猜 `coupon == null`，而是先让问题稳定出现。
