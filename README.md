# Docker

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

# Kubernetes

Install kubectl in the local machine and metrics server in the kubernetes

Please run the below command

- cd container/k8s/
- kubectl apply -f .

For testing autoscaling up and down you can use `ab -n 1000000 -c 10 http://devops.local/`
