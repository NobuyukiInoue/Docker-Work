##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST.ps1


Write-Host "Execute ... " -NoNewline
Write-Host "docker exec -it $HOST_DB bash" -ForegroundColor Yellow

docker exec -it $HOST_DB bash
