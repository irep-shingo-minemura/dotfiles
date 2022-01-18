# dotfiles

## Installation

```shell
git clone --recursive https://github.com/mine6ra/dotfiles.git
```

- ホームディレクトリに.から始まるファイルを作成する

```shell
sh install.sh
```

- Homebrew Bundle でアプリケーションをインストールする

```shell
brew bundle --global
```

- iTerm2 > Preferences > General > Preferences > Load preferences from a custom folder or URL > Select「~dotfiles/」

## Update

### Homebrew Bundle

#### アプリケーションをバージョンアップする

```shell
brew bundle --global
```

#### アプリケーションを追加する

- Brewfile に追加する。

```shell
brew bundle --global
```

#### アプリケーションをアンインストールする

- Brewfile から削除する。

```shell
brew bundle cleanup --global
```

### Git submodule

```shell
cd zprezto
git pull
git submodule update --recursive
```
