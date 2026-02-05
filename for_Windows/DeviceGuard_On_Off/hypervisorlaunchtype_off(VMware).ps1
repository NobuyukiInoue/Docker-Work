Write-Host "##----------------------------------------------------------------##"
Write-Host "## hypervisorlaunchtype to off(for VMware)"
Write-Host "##----------------------------------------------------------------##"

Write-Host "Execute : " -NoNewline
Write-Host "bcdedit /set hypervisorlaunchtype off" -ForegroundColor Yellow

bcdedit /set hypervisorlaunchtype off


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
