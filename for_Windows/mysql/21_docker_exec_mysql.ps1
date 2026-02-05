##----------------------------------------------------------------------------##
## set TARGET_HOST
##----------------------------------------------------------------------------##

. ./TARGET_HOST.ps1


##----------------------------------------------------------------------------##
## docker exec
##----------------------------------------------------------------------------##

Write-Host "Execute ... " -NoNewline
Write-Host "docker exec -it $TARGET_HOST bash" -ForegroundColor Yellow

# docker exec -it $TARGET_HOST mysql -u root -p
docker exec -it $TARGET_HOST mysql -u root
