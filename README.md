# AI Business Control Kit — Lite

Your AI agent can write code. Can it remember why the company exists, what it may spend, and when an experiment must stop?

AI Business Control Kit is a repo-native operating layer for technical solo founders. It keeps authority, cash, compute, approvals, decisions and current state in plain Markdown and CSV files that any coding agent can read.

## What is included

- a company charter and agent operating contract;
- cash, compute and human-time ledgers;
- a Human API approval queue;
- an append-only decision log and current-state handoff;
- a compact board report;
- a PowerShell 7 validator that checks required structure and blocks sensitive filenames.

## Quick start

```powershell
Copy-Item -Recurse .\template C:\MyCompanyControl
pwsh -File .\Test-ControlPlane.ps1 -Root C:\MyCompanyControl
```

Open `template/AGENTS.md` with your coding agent, fill in the charter, and keep the control directory in a private Git repository.

## Design choices

- Files over another dashboard.
- Your Git repository over our cloud.
- Explicit human gates for payment, identity, authentication and high-risk actions.
- Evidence and stop-loss rules before larger investment.
- No telemetry and no customer data collection in Lite.

## Validation status

This is a deliberately small validation release. Feedback should focus on one question: does a repo-native control plane reduce repeated context and unsafe autonomy enough to become part of your real operating workflow?

See `docs/index.html` for the one-page product explanation.

## License

MIT. The Lite kit is not legal, accounting or security advice.
