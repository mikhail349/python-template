# Template for python projects

## Includes:
- Config file using `pydantic` and `dotenv`
- Dockerfile
- Docker-compose file
- Makefile
- Linting via `isort`, `black` and `pylint`

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
4. Lint
```
make lint
```
1. Run

- Locally
```
make run
```
- In Docker
```
make prod
```