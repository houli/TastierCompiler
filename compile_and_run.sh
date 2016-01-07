#!/bin/bash

if make; then
  pushd ../TastierMachine
  if cabal install; then
    popd
    ./run.sh $1
  else
    popd
  fi
fi
