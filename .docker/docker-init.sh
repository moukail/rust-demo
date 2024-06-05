#!/usr/bin/env bash
. "$HOME/.cargo/env"

#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --version

rustc --version

rustc main.rs
./main

tail -f /dev/null

