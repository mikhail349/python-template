# Template for your python project

This is template for my python projects.

## Quick start

1. Create your project using this template

You can use [this instruction](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) for GitHub GUI or use this code for GitHub CLI:
```
gh repo create <new-repo-name> --template="mikhail349/python-template"
```

2. Create and activate virtual environment
```
python -m venv venv && source venv/bin/activate
```
3. Install dependencies via `Makefile`
```
make install_requirements
```
## Running locally
```
pre-commit install
make format
make check
make test
make run
```

## Running in Docker

```
make docker_test
make docker_run
make docker_release
```
