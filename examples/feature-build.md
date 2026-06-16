# Example: Building With `clarify-first` + `behavior-first`

User:

```text
Add team invitations.
```

Agent using `clarify-first`:

```text
Before implementation: should an invited user be allowed to accept multiple active invitations for different teams?
Recommended answer: yes, because team membership is scoped per team.
```

After the key decisions are clear, use `behavior-first`:

```text
I will add one behavior test for accepting a valid invitation, implement the minimal path, then add expiration and duplicate-invite behavior.
```

中文要点：需求不清楚时先问一个关键问题，不要一口气丢十个问题。
