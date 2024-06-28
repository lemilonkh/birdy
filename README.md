# Procedural World Generation
This is a simple boid ecosystem simulation inspired by Daniel Shiffman's (TheCodingTrain) Ecosystem simulation - https://www.youtube.com/watch?v=flxOkx0yLrY

Built in [Rust](https://www.rust-lang.org/) using the [Bevy](https://bevyengine.org/) game engine.

![screenshot](/screenshot.png)

## Usage
- Clone the repo
```bash
git clone git@github.com:lemilonkh/birdy.git
cd birdy
```
- Run the simulation
```bash
cargo run --release
```

- Run in the browser using wasm:
Setup:  
```bash
rustup target install wasm32-unknown-unknown
cargo install wasm-server-runner
```
Run:  
```bash
cargo run --target wasm32-unknown-unknown --release
```
Visit [http://localhost:1334](http://localhost:1334)

- Export to web:
```bash
cargo install wasm-bindgen-cli
cargo build --release --target wasm32-unknown-unknown
wasm-bindgen --no-typescript --target web \
    --out-dir ./out/ \
    --out-name "birdy" \
    ./target/wasm32-unknown-unknown/release/birdy.wasm
```

## Controls
- `Backspace` - Show graphs
- `Tilde` - Show graph settings
- `Tab` - Show debug gizmos
- `1` - Camera follow boid
- `2` - Camera follow predator boid
- `3` - Camera snap to center

## Configurations
- The project config file is located at `src/configs.rs`
