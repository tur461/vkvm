#!/usr/bin/env bash

set -e

echo "========== Runner =========="

echo "Runner      : $RUNNER_NAME"
echo "OS          : $RUNNER_OS"
echo "Architecture: $RUNNER_ARCH"

echo

echo "========== Rust =========="

rustc --version
cargo --version
rustup --version

echo

echo "========== Environment =========="

echo "Workspace : $GITHUB_WORKSPACE"
echo "Repository: $GITHUB_REPOSITORY"
echo "Branch    : $GITHUB_REF_NAME"
echo "Commit    : $GITHUB_SHA"

echo

if ! command -v cargo >/dev/null; then
  echo "Cargo not found."
  exit 1
fi

if ! command -v rustc >/dev/null; then
  echo "Rust not found."
  exit 1
fi
