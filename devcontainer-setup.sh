#!/bin/sh

# inshellisense
if ! command -v node > /dev/null 2>&1; then
    apt install -y nodejs npm
fi

npm install -g @microsoft/inshellisense
is init bash >> ~/.bashrc
echo "" >> ~/.bashrc # 上記のコマンドの後ろに改行無しで別のコマンドが追記されるので明示的に改行する
