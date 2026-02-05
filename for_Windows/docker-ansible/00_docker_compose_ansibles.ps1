##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST.ps1

##----------------------------------------------------------------------------##
## docker-compose
##----------------------------------------------------------------------------##

docker-compose up -d --build

##----------------------------------------------------------------------------##
## docker update
##----------------------------------------------------------------------------##

Write-Host "Execute ... " -NoNewline
Write-Host "docker update --restart=no" $TARGET_ANSIBLE -ForegroundColor Yellow

docker update --restart=no $TARGET_ANSIBLE


Write-Host "Execute ... " -NoNewline
Write-Host "docker update --restart=no" $TARGET_HOST01 -ForegroundColor Yellow

docker update --restart=no $TARGET_HOST01


Write-Host "Execute ... " -NoNewline
Write-Host "docker update --restart=no" $TARGET_HOST02 -ForegroundColor Yellow

docker update --restart=no $TARGET_HOST02


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
