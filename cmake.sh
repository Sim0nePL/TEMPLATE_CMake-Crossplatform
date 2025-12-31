#!/bin/sh

echo "-- [ Generating Buildfiles For Linux ] --"
cmake \
	-S . \
	-B build/linux \
	-G Ninja \
	--toolchain toolchains/linux-toolchain.cmake 
echo ""

echo "-- [ Generating Buildfiles For Windows ] --"
cmake \
	-S . \
	-B build/windows \
	-G Ninja \
	--toolchain toolchains/windows-toolchain.cmake 
echo ""

