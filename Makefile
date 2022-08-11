up:
	docker-compose up --build -d

stop:
	docker-compose stop

down:
	docker-compose down

t: 
	docker exec -it $(d) psql -U postgres