lint:
	docker compose run --rm app sh -c "flake8"
test:
	docker compose run --rm app sh -c "python manage.py test"
makemigrations:
	docker compose run --rm app sh -c "python manage.py makemigrations"
migrate:
	docker compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"
