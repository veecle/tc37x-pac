# exit script on failure
set -e

# delete old source folder
rm -r src

# patch PAC
svdtools patch TC37X.yaml

# generate PAC
svd2rust -i TC37X.svd.patched --feature_peripheral --target none

mkdir src
mv lib.rs src/

PREFIX=`cat <<EOF
[package]
name = "tc37x-pac"
version = "0.1.0"
edition = "2021"

[dependencies]
vcell = "0.1.2"
EOF
`

SUFFIX=`cat <<EOF
default = ["src"]
EOF
`

CONTENT=$(cat features.toml)

rm Cargo.toml

echo "$PREFIX\n$CONTENT\n$SUFFIX" > Cargo.toml