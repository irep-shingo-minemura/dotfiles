#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Starship
eval "$(starship init zsh)"

# ウィンドウタイトルにカレントディレクトリパスを表示する
if [ $ITERM_SESSION_ID ]; then
  precmd() {
    echo -ne "\033]0;$PWD\007"
  }
fi

# Go
export PATH="$PATH:/usr/local/bin/go"
export GOPATH="$HOME/go"

# Google Cloud SDK
# source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"

# Pipenv
export PIPENV_VENV_IN_PROJECT=1

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Node.js(nodenv)
# export PATH="$HOME/.nodenv/bin:$PATH"
# eval "$(nodenv init -)"

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
