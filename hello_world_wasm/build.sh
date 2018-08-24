#!/bin/bash
cargo +nightly build --target wasm32-unknown-unknown
mkdir -p ../hello_world/wasm
wasm-bindgen target/wasm32-unknown-unknown/debug/hello_world_wasm.wasm --nodejs --out-dir ../hello_world/wasm
