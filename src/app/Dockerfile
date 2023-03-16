FROM alpine
RUN apk add --update py-pip --no-cache
RUN pip install -U pip
RUN apk update
RUN apk add curl --no-cache
RUN pip install poetry
ENV PATH="${PATH}:/root/.poetry/bin"
WORKDIR /code
COPY poetry.lock pyproject.toml ./
COPY ./src/app  ./
RUN poetry install --no-root
EXPOSE 5000
CMD ["poetry", "run", "waitress-serve", "--port", "5000", "--call", "appEntry:create_app"]
