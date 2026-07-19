#!/bin/bash

set -e

cargo clippy -- -D warnings
