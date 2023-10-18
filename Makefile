build:
	cd container && docker compose build

setup:
	docker volume create --name=devops-db
	cd container && docker compose -p devops-container up -d

destroy:
	cd container && docker compose -p devops-container down

create-db:
	docker exec -i devops-db sh -c "MYSQL_PWD=root exec mysql -u root" < container/mysql/database.sql
