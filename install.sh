#!/bin/sh
for name in *; do
    [ "$name" = "install.sh" ] && continue
    [ "$name" = "LICENSE" ] && continue
    [ "$name" = "README.md" ] && continue
    [ "$name" = ".DS_Store" ] && continue
    [ "$name" = "com.googlecode.iterm2.plist" ] && continue

    # 上書きはしない
    target="$HOME/.$name"
    if [ ! -e "$target" ]; then
        ln -s "$PWD/$name" "$target"
        echo "Created $name"
    fi
done
