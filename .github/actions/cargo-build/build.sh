#!/usr/bin/env bash

# Exit immediately if any command fails
set -e

START=$(date +%s)

# Check the environment variable passed by GitHub Actions
if [ "$BUILD_PROFILE" = "release" ]; then
  echo "Running release build..."
  cargo build --release
else
  echo "Running debug build..."
  cargo build
fi

END=$(date +%s)
echo "Build took $((END - START)) seconds."
