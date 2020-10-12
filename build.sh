echo "Downloading source code..."

mkdir -p src
ROOT=$PWD
SRC=$PWD/src

cd $SRC

# download ilp-node & ilp-cli source
git clone https://github.com/interledger-rs/interledger-rs.git

cd $SRC

# download settlement engine source
git clone https://github.com/interledger-rs/settlement-engines

cd $ROOT

# build images
docker build -t ilp-build -f ./ilp-build.Dockerfile .
docker build -t ilp-node -f ./ilp-node.Dockerfile .
docker build -t ilp-cli -f ./ilp-cli.Dockerfile .
docker build -t settlement-engine-eth -f ./settlement-engine-eth.Dockerfile .

echo "Done."