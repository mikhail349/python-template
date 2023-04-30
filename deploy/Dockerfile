FROM python:3.10

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH "${PYTHONPATH}:/"

COPY ./requirements.txt requirements.txt

RUN  pip install --upgrade pip \
     && pip install -r requirements.txt --no-cache-dir

COPY ./src /app/src

RUN groupadd -r app \
    && useradd -d /app -r -g app app \
    && chown app:app -R /app

USER app

ENTRYPOINT [ "python", "src/main.py"]