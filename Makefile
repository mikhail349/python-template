install:
	poetry install

lint:
	isort src && black src && pylint src

test:
	coverage run -m pytest && coverage html

run:
	python src/main.py

prod:
	docker compose up -d --force-recreate --build