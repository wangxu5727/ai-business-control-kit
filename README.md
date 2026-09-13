# AI Business Control Kit — Lite

Your AI agent can write code. Can it remember why the company exists, what it may spend, and when an experiment must stop?

AI Business Control Kit is a repo-native operating layer for technical solo founders. It keeps authority, cash, compute, approvals, decisions and current state in plain Markdown and CSV files that any coding agent can read.

It is designed for founders using Codex, Claude Code, Cursor or other repository-aware agents who want autonomy without losing spending boundaries, decisions or recovery state.

## What is included

- a company charter and agent operating contract;
- cash, compute and human-time ledgers;
- a Human API approval queue;
- an append-only decision log and current-state handoff;
- a compact board report;
- a PowerShell 7 validator that checks required structure and blocks sensitive filenames.

## Quick start

```powershell
git clone https://github.com/wangxu5727/ai-business-control-kit.git
Set-Location .\ai-business-control-kit
Copy-Item -Recurse .\template C:\MyCompanyControl
pwsh -File .\Test-ControlPlane.ps1 -Root C:\MyCompanyControl
```

Open `template/AGENTS.md` with your coding agent, fill in the charter, and keep the control directory in a private Git repository.

The test should finish with `PASS`. No account, API key or installer is required.

## Design choices

- Files over another dashboard.
- Your Git repository over our cloud.
- Explicit human gates for payment, identity, authentication and high-risk actions.
- Evidence and stop-loss rules before larger investment.
- No telemetry and no customer data collection in Lite.

## Validation status

This is a deliberately small validation release. Feedback should focus on one question: does a repo-native control plane reduce repeated context and unsafe autonomy enough to become part of your real operating workflow?

If you tried it, [open the 60-second feedback form](https://github.com/wangxu5727/ai-business-control-kit/issues/new?template=trial-feedback.yml). Reporting that it was not useful is valid evidence too. The form asks whether you would use it again and whether a fuller one-time-purchase kit would be worth paying for; no email or personal data is requested.

See [`docs/index.html`](docs/index.html) for the one-page product explanation.

## License

MIT. The Lite kit is not legal, accounting or security advice.
