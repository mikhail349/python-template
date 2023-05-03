# Template for your python project

This template can speed up your new project dev environment creation.

## Includes:
- `.gitignore` for Python
- `poetry` for virtual env
- Config file using `pydantic` and `dotenv`
- Dockerfile
- Docker-compose file
- Makefile
- Linting using `isort`, `black` and `pylint`
- Testing using `pytest` and `coverage`

## Quick start

1. Create your project using this template
   
You can use [this instruction](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) for GitHub GUI or use this code for GitHub CLI:
```
gh repo create <new-repo-name> --template="mikhail349/python_template"
```

2. Create and activate virtual environment
```
pip install poetry
poetry config virtualenvs.in-project true  # if you want to place .venv inside your project folder
poetry shell
```
3. Install dependencies via `Makefile`
```
make install
```
4. Run project
```
make run
```

## Running in Docker

```
make prod
```

## Linting

```
make lint
```

## Testing

```
make test
```
Then you can open `htmlcov\index.html` in your browser to view a testing coverage report.