FROM python:3.12-slim
ENV POETRY_VIRTUALENVS_CREATE=false

EXPOSE 8000/tcp
RUN apt-get update -y --no-install-recommends
RUN pip install --user poetry==1.7.1
# RUN pip install certifi==2021.10.8
ENV PATH="${PATH}:/root/.local/bin"
RUN mkdir /app
COPY pyproject.toml poetry.lock /app/
WORKDIR /app/
RUN poetry install --no-interaction --no-ansi
COPY / /app/
# RUN chmod +x entrypoint.*