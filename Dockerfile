ARG BASE_IMAGE=clux/muslrust:1.63.0

FROM ${BASE_IMAGE} AS builder

COPY . ./

RUN cargo build --release --target $(uname -m)-unknown-linux-musl \
    && target/$(uname -m)-unknown-linux-musl/release/rust-rdkafka-musl \
    && file target/$(uname -m)-unknown-linux-musl/release/rust-rdkafka-musl

