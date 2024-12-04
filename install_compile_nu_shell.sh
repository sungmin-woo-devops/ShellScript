#!/bin/bash

# Update repository
yum update -y
yum install -y git
yum install -y libxcb openssl-devel libX11-devel

# Install Cargo
# https://doc.rust-lang.org/cargo/getting-started/installation.html
curl https://sh.rustup.rs -sSf | sh

# Clone the repository
git clone https://github.com/nushell/nushell.git
cd nushell

# Build
cargo build --release --workspace; cargo run

