# Installation Guide / 安装说明

## Codex

Run from the repository root:

```powershell
.\scripts\install-codex.ps1
```

Manual install:

```powershell
Copy-Item .\skills\* "$env:USERPROFILE\.codex\skills" -Recurse -Force
```

Then restart Codex or open a new session.

## Other Agents

Each skill is a plain `SKILL.md` folder. If your agent supports reusable instructions, copy the relevant folder into its skill/rule/instruction directory.

## Verify

Ask your agent:

```text
Use $fast-operator from now on.
```

If it becomes shorter, more direct, and stops making you do its homework, installation probably worked.

如果它还是长篇解释权限、网络、流程，但没有推进，说明还没真正加载。
