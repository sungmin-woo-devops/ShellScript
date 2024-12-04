#!/bin/bash

set -e

curl -L https://nixos.org/nix/install | sh -s -- --daemon
nix --version
