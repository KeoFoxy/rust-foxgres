FROM rust:latest

WORKDIR /app

COPY Cargo.toml Cargo.lock ./

RUN mkdir src && echo "fn main() {}" > src/main.rs

RUN cargo build --release

COPY . .

RUN cargo build --release

CMD ["cargo", "run"]

EXPOSE 8080
