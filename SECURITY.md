# Security

Agent Discipline skills should never ask users to paste secrets into chat.

## Sensitive Data

Do not include:

- API keys
- GitHub tokens
- passwords
- cookies
- private SSH keys
- production credentials

If a secret appears in a conversation or issue, treat it as leaked and rotate it.

## Trust Boundaries

Skills should interrupt the user for:

- account authorization
- destructive file operations
- production deploys
- payments
- CAPTCHA
- credential handling

They should not interrupt the user for routine work the agent can verify itself.
