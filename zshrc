#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# zshrcをコンパイルする
if [ ~/.zshrc -nt ~/.zshrc.zwc ]; then
  zcompile ~/.zshrc
fi

# Starship
# eval "$(starship init zsh)"

# Node.js(nodenv)
eval "$(nodenv init -)"

# inshellisenseを起動したときに下記のエラーを回避する
# /var/folders/ws/nsbp36rs4b3_gj4055d_tg_w0000gq/T/is-zsh/.zshrc:58: command not found: add-zsh-hook
# autoload -Uz add-zsh-hook

# inshellisense
inshellisense

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# ウィンドウタイトルにカレントディレクトリパスを表示する
if [ $ITERM_SESSION_ID ]; then
  precmd() {
    echo -ne "\033]0;$PWD\007"
  }
fi

# SSHのパスフレーズをキーチェーンに保存する
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

# Google Cloud SDK
# source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

# Pipenv
export PIPENV_VENV_IN_PROJECT=1

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# MySQL
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# export NVM_DIR="$HOME/.nvm"
#   [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
