export VISUAL=vim
export EDITOR="$VISUAL"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Autoload node version with nvm when opening folder
enter_directory() {
  if [[ $PWD == $PREV_PWD ]]; then
    return
  fi

  PREV_PWD=$PWD
  [[ -f ".nvmrc" ]] && nvm use
}

export PROMPT_COMMAND=enter_directory


# Alias
alias ll='ls -la'
alias gbpurge='git branch --merged | grep -Ev "(\*|master|develop|staging|main)" | xargs -n 1 git branch -d'
alias webstorm='open -na "Webstorm.app" --args "$@"'

# If python 3 is needed
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init --path)"
#   eval "$(pyenv init -)"
# fi
