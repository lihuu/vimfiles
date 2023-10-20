#!/bin/bash
./get-latest-commits.sh | lua-format > lua/modules/commits.lua
