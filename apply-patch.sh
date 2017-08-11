#!/usr/bin/env bash

for i in {0..7}; do
    patch -p1 --ignore-whitespace < patch$i.patch
done
