install:
	pip install -r requirements.txt -r requirements.dev.txt

lint:
	isort src && black src && pylint src

run:
	python src/main.py

prod:
	docker compose up -d --force-recreate --build