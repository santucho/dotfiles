PROMPT='%F{208}%n%f in %F{magenta}%~%f $(git_super_status) -> '

source ~/.zsh/alias.zsh
source ~/.zsh/env.zsh
source ~/.zsh/git-alias.zsh
source "$(brew --prefix)/opt/zsh-git-prompt/zshrc.sh"

autoload -Uz compinit && compinit

eval $(ssh-agent -s)
ssh-add ~/.ssh/id_ed25519

eval "$(pyenv init -)"
