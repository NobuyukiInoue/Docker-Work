docker ps -as

# docker inspect -f "{{.Name}} {{.HostConfig.RestartPolicy.Name}}" $(docker ps -aq) | grep always

docker inspect -f "{{.Name}} {{.HostConfig.RestartPolicy.Name}}" $(docker ps -aq)

# docker update --restart=no postgres
# docker update --restart=no elixir181_myroom_web_1
# docker update --restart=no elixir181_myroom_db_1
