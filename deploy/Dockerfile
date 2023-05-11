FROM python:3.11

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH "${PYTHONPATH}:/"

COPY ./pyproject.toml pyproject.toml

RUN  pip install --upgrade pip \
    && pip install poetry \
    && poetry install

COPY ./src /app/src

RUN groupadd -r app \
    && useradd -d /app -r -g app app \
    && chown app:app -R /app

USER app

ENTRYPOINT [ "python", "src/main.py"]