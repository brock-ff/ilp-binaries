# ilp-cli
FROM buildpack-deps:buster as ilp-cli
WORKDIR /ilp-bin
COPY --from=ilp-build /src/interledger-rs/target/debug/ilp-cli .
CMD ./ilp-cli
