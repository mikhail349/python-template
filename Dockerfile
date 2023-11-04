FROM python:3.11 as base-image

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

FROM base-image as dev-image
COPY requirements.dev.txt requirements.dev.txt
RUN pip install -r requirements.dev.txt
CMD [ "python", "-m", "src.main"]

FROM base-image as release-image
COPY src src
RUN groupadd -r app \
    && useradd -d /app -r -g app app \
    && chown app:app -R /app

USER app
CMD [ "python", "-m", "src.main"]
