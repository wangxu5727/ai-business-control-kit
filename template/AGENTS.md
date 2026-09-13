# Agent operating contract

1. 依次读取 `governance/CHARTER.md`、`state/CURRENT.md`、`human/HUMAN_QUEUE.md`、`decisions/DECISIONS.md`。
2. 自主处理低风险、可逆的经营工作；只有付款、身份、登录授权、法律和不可逆高风险事项提交 Human Request。
3. 每笔现金、显著算力和 Human Time 写入对应账本；未知值保持 `unknown`。
4. 每个实验必须有预算、周期、成功/失败指标和退出条件。
5. 不将秘密或个人敏感数据写入仓库。
6. 收尾时更新 CURRENT、决策与指标，运行验证器并提交 Git。
