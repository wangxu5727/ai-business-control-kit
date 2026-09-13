[CmdletBinding()]
param([Parameter(Mandatory)][string]$Root)

$ErrorActionPreference = 'Stop'
$rootPath = [IO.Path]::GetFullPath($Root)
$required = @(
    '.gitignore',
    'AGENTS.md',
    'governance\CHARTER.md',
    'state\CURRENT.md',
    'ledgers\cash.csv',
    'ledgers\compute.csv',
    'ledgers\human-time.csv',
    'human\HUMAN_QUEUE.md',
    'decisions\DECISIONS.md',
    'reports\BOARD_REPORT.md'
)
$errors = [Collections.Generic.List[string]]::new()
foreach ($relative in $required) {
    if (-not (Test-Path -LiteralPath (Join-Path $rootPath $relative) -PathType Leaf)) { $errors.Add("Missing: $relative") }
}
$forbidden = Get-ChildItem -LiteralPath $rootPath -Recurse -Force -File -ErrorAction SilentlyContinue | Where-Object {
    $_.Name -match '(?i)^([.]env([.]|$)|id_(rsa|dsa|ecdsa|ed25519)|credentials?|tokens?)' -or $_.Extension -match '(?i)^[.](pem|pfx|p12|ppk|key|kdbx)$'
}
foreach ($file in $forbidden) { $errors.Add("Forbidden sensitive path: $($file.FullName.Substring($rootPath.Length).TrimStart('\'))") }
if ($errors.Count) { $errors | ForEach-Object { Write-Error $_ }; exit 1 }
"CONTROL_PLANE_READY: $rootPath"
