cd $(dirname $0)

for name in *; do
    [ "$name" = "config/git"* ] && continue
    [ "$name" = "config/karabiner"* ] && continue
    [ "$name" = ".gitignore" ] && continue
    [ "$name" = ".gitmodules" ] && continue
    [ "$name" = "Brewfile" ] && continue
    [ "$name" = "com.googlecode.iterm2.plist" ] && continue
    [ "$name" = "devcontainer.sh" ] && continue
    [ "$name" = "install.sh" ] && continue
    [ "$name" = "README.md" ] && continue
    [ "$name" = ".DS_Store" ] && continue

    target="$HOME/.$name"
    rm $target
    ln -s "$PWD/$name" "$target"
done

curl -s "https://starship.rs/install.sh" | sh -s -- -y

# 上の処理だと.configディレクトリが存在してコピーできないため応急処置
cp config/starship.toml ~/.config/starship.toml