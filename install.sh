#!/bin/bash
release=488728

if [ $# -gt 0 ]; then
    if [ $1 == "clean" ]; then
        rm vim.tar.gz
    else
        echo Unknown command! Just run the script for install or \"clean\" for clean.
    fi
else
    echo get release $release
    wget --no-check-certificate https://gitee.com/BruceKangCN/vimrc/attach_files/${release}/download/vim.tar.gz
    tar -zxvf vim.tar.gz -C ~
fi

