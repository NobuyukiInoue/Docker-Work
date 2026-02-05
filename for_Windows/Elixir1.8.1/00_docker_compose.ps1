##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST.ps1


##----------------------------------------------------------------------------##
## docker-compose
##----------------------------------------------------------------------------##

docker-compose up -d --build


##----------------------------------------------------------------------------##
## web
##----------------------------------------------------------------------------##

Write-Host "Execute ... " -NoNewline
Write-Host "docker update --restart=no" $HOST_WEB -ForegroundColor Yellow

docker update --restart=no $HOST_WEB


##----------------------------------------------------------------------------##
## db
##----------------------------------------------------------------------------##

Write-Host `n"Execute ... " -NoNewline
Write-Host "docker update --restart=no" $HOST_DB -ForegroundColor Yellow

docker update --restart=no $HOST_DB


Write-Host "##----------------------------------------------------------------------------##"
Write-Host "## docker ps -as"
Write-Host "##----------------------------------------------------------------------------##"
Write-Host `n"Execute ... " -NoNewline
Write-Host "docker ps -as" -ForegroundColor Yellow

docker ps -as

Write-Host "##----------------------------------------------------------------------------##"
Write-Host "## docker inspect -f"
Write-Host "##----------------------------------------------------------------------------##"
Write-Host `n"Execute ... " -NoNewline
Write-Host "docker inspect -f `"{{.Name}} {{.HostConfig.RestartPolicy.Name}}`" $(docker ps -aq)" -ForegroundColor Yellow

docker inspect -f "{{.Name}} {{.HostConfig.RestartPolicy.Name}}" $(docker ps -aq)
