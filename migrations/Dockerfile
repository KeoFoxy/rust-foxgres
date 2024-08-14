FROM rust:latest

RUN cargo install sqlx-cli --no-default-features --features postgres

WORKDIR /app

COPY . .

ENV DATABASE_URL=postgres://admin:admin@db:5432/foxgres

CMD ["sqlx", "migrate", "run"]
