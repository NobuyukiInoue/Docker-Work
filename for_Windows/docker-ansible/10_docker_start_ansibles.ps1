##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST.ps1


##----------------------------------------------------------------------------##
## docker start
##----------------------------------------------------------------------------##

Write-Host "Execute ... " -NoNewline
Write-Host "docker start" $TARGET_ANSIBLE -ForegroundColor Yellow

docker start $TARGET_ANSIBLE


Write-Host "Execute ... " -NoNewline
Write-Host "docker start" $TARGET_HOST01 -ForegroundColor Yellow

docker start $TARGET_HOST01


Write-Host "Execute ... " -NoNewline
Write-Host "docker start" $TARGET_HOST02 -ForegroundColor Yellow

docker start $TARGET_HOST02


##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##
Write-Host "Execute ... " -NoNewline
Write-Host "docker ps -as" -ForegroundColor Yellow

docker ps -as
