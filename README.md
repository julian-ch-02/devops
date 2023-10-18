## Linux/MacOS
Please run below command
- make build
- make setup
- make create-db

## Windows
Please run below command
- cd container
- docker-compose build (to build image)
- docker volume create --name=devops-db (create volume for database)
- docker-compose -p devops-container up -d (create container)
- docker exec -i devops-db sh -c "MYSQL_PWD=root exec mysql -u root" < container/mysql/database.sql (create db)
