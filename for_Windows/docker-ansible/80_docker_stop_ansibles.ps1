##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST.ps1


##----------------------------------------------------------------------------##
## docker stop
##----------------------------------------------------------------------------##

Write-Host "Execute ... " -NoNewline
Write-Host "docker stop" $TARGET_HOST01 -ForegroundColor Yellow

docker stop $TARGET_HOST01


Write-Host "Execute ... " -NoNewline
Write-Host "docker stop" $TARGET_HOST02 -ForegroundColor Yellow

docker stop $TARGET_HOST02


Write-Host "Execute ... " -NoNewline
Write-Host "docker stop" $TARGET_ANSIBLE -ForegroundColor Yellow

docker stop $TARGET_ANSIBLE


##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##

Write-Host "Execute ... " -NoNewline
Write-Host "docker ps -as" -ForegroundColor Yellow

docker ps -as
