# Template for python projects

## Includes:
- Config file using `pydantic` and `dotenv`
- Dockerfile
- Docker-compose file
- Makefile
- Linting using `isort`, `black` and `pylint`
- Testing using `pytest` and `coverage`

## Quick start

1. Clone the repo 

```
git clone https://github.com/mikhail349/python_template.git my_project_name
```
2. Create and activate virtual environment
```
python -m venv venv
python venv\Scripts\activate
```
3. Install dependencies via `Makefile`
```
make install
```

## Running

Locally
```
make run
```

In Docker
```
make prod
```

## Linting

```
make lint
```

## Testing

### Test coverage
```
coverage run -m src.main
```
### Testing with coverage html report
```
make test
```

### Test coverage report

Make a report in console
```
coverage report
```

Make a report in html format
```
coverage html
```