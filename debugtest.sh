#!/bin/bash

FLOW=$(realpath ./bin/flow)
pushd tests/annot > /dev/null
../../red/red.py "$FLOW" check . --all --max-workers 0 --strip-root --show-all-errors
popd > /dev/null
