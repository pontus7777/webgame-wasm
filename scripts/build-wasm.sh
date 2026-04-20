#!/bin/bash

echo "Compiling C++ to WebAssembly..."

emcc ../cpp/src/main.cpp ../cpp/src/game.cpp \
    -I../cpp/src \
    -sUSE_SDL=2 \
    -O2 \
    -o ../cpp/build/game.js \
    -sEXPORTED_RUNTIME_METHODS='["ccall","cwrap"]'

echo "Copying output to web/public/wasm/..."

cp ../cpp/build/game.js ../web/public/wasm/
cp ../cpp/build/game.wasm ../web/public/wasm/

echo "Done."
