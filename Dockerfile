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
COPY /src/  ./

#RUN #poetry config virtualenvs.create false
RUN poetry install --no-root

EXPOSE 3000
CMD ["python3", "appEntry"]