# AI Business Control Kit — Lite

一个放在你自己 Git 仓库中的 AI 经营控制层。它让任何能够读写文件的 AI 代理在重启后仍知道：目标、现金、算力、决策、Human API 边界、正在验证的项目和停止条件。

## 开始

1. 复制本目录到新的私有 Git 仓库。
2. 填写 `governance/CHARTER.md` 和 `state/CURRENT.md`。
3. 给你的 AI 代理入口文件 `AGENTS.md`。
4. 每次真实变动更新 ledgers；结束工作时提交 Git。
5. 运行 `pwsh -File ..\Test-ControlPlane.ps1 -Root .` 校验完整性。

不要提交密码、Token、私钥、身份证件、支付信息或客户敏感数据。
