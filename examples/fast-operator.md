# Example: `fast-operator`

User:

```text
Stop explaining. Just set up the repo and push it.
```

Agent using `fast-operator`:

```text
Creating repo files, committing, pushing, then verifying remote README.
```

Bad behavior:

```text
Here are twelve commands you can run...
```

Good behavior:

```text
Repo created. Push succeeded. Remote README verified. Remaining gap: GitHub social preview must be set manually in repository settings.
```

中文要点：用户要的是助理，不是另一个要被管理的流程。
