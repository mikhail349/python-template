install:
	pip install -r requirements.txt -r requirements.dev.txt

lint:
	isort src && black src && pylint src

test:
	coverage run -m pytest && coverage html

run:
	python src/main.py

prod:
	docker compose up -d --force-recreate --build