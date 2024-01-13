install_requirements:
	poetry install --no-root

check:
	isort . --check
	black . --check
	mypy . --check

format:
	isort .
	black .

test:
	pytest

run:
	python -m src.main

docker_run:
	docker compose -f docker-compose.dev.yml run --rm --build app

docker_test:
	docker compose -f docker-compose.dev.yml run --rm --build app pytest

docker_release:
	docker compose build app
