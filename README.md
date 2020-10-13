# ILP binaries

Builds ILP binaries from source and creates a container for each binary (`ilp-cli`, `ilp-node`, and `ilp-settlement-ethereum`).

## Get Started

### 1. Build

```shell
# to build locally, pass the -b argument
./build.sh -b

# if you plan to build with docker-compose later, and only download the source code
./build.sh
```

### 2. Run containers

These simple shell scripts run a dockerized instance of the binary and accept arguments the same way that the binaries do.

```shell
./ilp-cli --help
./ilp-node --help
./settlement-engine-eth --help
```
