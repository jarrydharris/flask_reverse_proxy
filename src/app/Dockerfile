FROM alpine:latest

# Poetry
RUN apk add --update py-pip
RUN pip install -U pip
RUN apk update
RUN apk add curl
RUN pip install poetry
ENV PATH="${PATH}:/root/.poetry/bin"

WORKDIR /code
COPY poetry.lock pyproject.toml ./
COPY ./src/app  ./

#RUN poetry export --dev --without-hashes --no-interaction --no-ansi -f requirements.txt -o requirements.txt
#RUN pip install --prefix=/runtime --force-reinstall --ignore-installed -r requirements.txt
RUN poetry install --no-root

EXPOSE 8080

CMD ["poetry", "run", "waitress-serve", "--host", "127.0.0.1", "--call", "appEntry:create_app"]