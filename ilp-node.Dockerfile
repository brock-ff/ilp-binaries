# ilp-node
FROM buildpack-deps:buster as ilp-node
WORKDIR /ilp-bin
COPY --from=ilp-build /src/interledger-rs/target/debug/ilp-node .
CMD ./ilp-node
