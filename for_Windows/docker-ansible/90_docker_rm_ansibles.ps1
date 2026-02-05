##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST.ps1


##----------------------------------------------------------------------------##
## docker rm
##----------------------------------------------------------------------------##

Write-Host "Execute ... " -NoNewline
Write-Host "docker rm" $TARGET_HOST01 -ForegroundColor Yellow

docker rm $TARGET_HOST01


Write-Host "Execute ... " -NoNewline
Write-Host "docker rm" $TARGET_HOST02 -ForegroundColor Yellow

docker rm $TARGET_HOST02


Write-Host "Execute ... " -NoNewline
Write-Host "docker rm" $TARGET_ANSIBLE -ForegroundColor Yellow

docker rm $TARGET_ANSIBLE


##----------------------------------------------------------------------------##
## result
##----------------------------------------------------------------------------##
Write-Host "Execute ... " -NoNewline
Write-Host "docker ps -as" -ForegroundColor Yellow

docker ps -as
