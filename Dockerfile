ARG BASE_IMAGE=ekidd/rust-musl-builder:latest

FROM ${BASE_IMAGE} AS builder

RUN sudo apt update

RUN sudo apt-get install libsasl2-dev

ADD --chown=rust:rust . ./

RUN cargo build --release

