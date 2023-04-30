# Template for python projects

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
4. Run project

- Locally
```
make run
```
- In Docker
```
make prod
```