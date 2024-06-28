#!/bin/bash
# Prerequisites:
# cargo install wasm-server-runner
# rustup target install wasm32-unknown-unknown
cargo run --target wasm32-unknown-unknown --release
