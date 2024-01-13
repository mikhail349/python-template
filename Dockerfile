FROM python:3.11 as base-image

WORKDIR /app

ENV POETRY_VERSION 1.7.1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
RUN pip install poetry==${POETRY_VERSION}

COPY pyproject.toml poetry.lock ./

FROM base-image as dev-image
RUN poetry install --no-interaction --no-cache
CMD [ "python", "-m", "src.main"]

FROM base-image as release-image
RUN poetry install --no-interaction --no-cache --without dev
COPY src src
RUN groupadd -r app \
    && useradd -d /app -r -g app app \
    && chown app:app -R /app

USER app
CMD [ "python", "-m", "src.main"]
