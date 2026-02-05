##------------------------------------------------------------------##
## 現在の $ENV:Path に CommonScripts ディレクトリを追加する
##------------------------------------------------------------------##

Write-Host "`$PATH:Env に $PSScriptRoot\CommonScripts"を追加します。

$CurrentPath = $ENV:Path
$ENV:Path = $PSScriptRoot + "\CommonScripts" + ";" + $CurrentPath

Write-Host "##--- Result ---##"
$ENV:Path.Split(";")
