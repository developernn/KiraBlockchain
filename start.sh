#!/bin/sh
echo "=====START script is started=====\n";
echo "-----Configure------";
# cmake -S . -B ./build;
echo "\n------Build------";
cmake --build ./build --target=KiraBlockchain;
echo "\n------Run------";
echo "=====START script is completed=====\n\n\n";
./build/app/KiraBlockchain;
