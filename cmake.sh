#!/bin/sh

echo "-- [ Generating Buildfiles For Linux ] --"
cmake \
	-S . \
	-B build/linux \
	-G Ninja
echo ""

