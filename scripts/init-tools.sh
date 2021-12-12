#!/bin/bash

if [ "$(uname)" == "Darwin" ];then
    brew install ripgrep
    brew install fd
    brew install fzf
    brew install bat
else

fi

