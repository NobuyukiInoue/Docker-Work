Write-Host "##----------------------------------------------------------------##"
Write-Host "## hypervisorlaunchtype to auto(for Hyper-V and Docker)"
Write-Host "##----------------------------------------------------------------##"

Write-Host "Execute : " -NoNewline
Write-Host "bcdedit /set hypervisorlaunchtype auto" -ForegroundColor Yellow

bcdedit /set hypervisorlaunchtype auto


Write-Host "`n`n"
Write-Host "Execute : " -NoNewline
Write-Host "bcdedit /enum" -ForegroundColor Yellow

$result = bcdedit /enum


##----------------------------------------------##
## bcdedit /enumの実行結果を出力
##----------------------------------------------##

foreach($cur in $result) {
    Write-Host $cur
}


##----------------------------------------------##
## hypervisorlaunchtype の値を出力
##----------------------------------------------##

foreach($cur in $result) {
    if ($cur.IndexOf("hypervisorlaunchtype") -ge 0) {
       Write-Host "`nResult : $cur`n" -ForegroundColor Red
       break
    }
}
