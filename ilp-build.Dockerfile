### build step
FROM rust:1-buster as ilp-build
WORKDIR /src

# interledger-rs
COPY $PWD/src/interledger-rs /src/interledger-rs
RUN cd /src/interledger-rs && cargo build --bin ilp-node --bin ilp-cli

# settlement-engine
COPY $PWD/src/settlement-engines /src/settlement-engine-ethereum
RUN cd /src/settlement-engine-ethereum && cargo build --bin ilp-settlement-ethereum
