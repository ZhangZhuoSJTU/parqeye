#!/bin/bash
# ProgramBench-style build: must produce ./executable at the repo root.
set -e
cd "$(dirname "$0")"
# The pinned transitive dep ethnum 1.5.2 does `mem::transmute::<(), TryFromIntError>`,
# which no longer compiles now that std's TryFromIntError is non-zero-sized (fails on
# any modern Rust toolchain, macOS or Linux alike). Bump ethnum within its semver
# range to a fixed release before building. Cross-platform; not committed to the fork.
cargo update -p ethnum 2>/dev/null || true
cargo build --release
cp "target/release/parqeye" executable
