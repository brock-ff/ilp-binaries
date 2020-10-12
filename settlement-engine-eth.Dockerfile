# settlement-engine ETH
FROM buildpack-deps:buster as settlement-engine-eth
WORKDIR /ilp-bin
COPY --from=ilp-build /src/settlement-engine-ethereum/target/debug/ilp-settlement-ethereum .
CMD ./ilp-settlement-ethereum
