# Git
source ~/.zsh/git-prompt.sh
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit -u
GIT_PS1_SHOWDIRTYSTATE=true
setopt PROMPT_SUBST; PS1='%F{cyan}%n:%c%f%F{red}$(__git_ps1 "(%s)")%f\$ '

# Utility
alias ls='ls -G'
alias lsusb='ls /dev/tty.usb*'
alias rmdsstore='find . -type f -name ".DS_Store" -ls -delete'
alias shadowon='defaults write com.apple.screencapture disable-shadow -boolean false; killall SystemUIServer'
alias shadowoff='defaults write com.apple.screencapture disable-shadow -boolean true; killall SystemUIServer'
alias rm-node-modules='(){find . -depth $1 -name node_modules -and -type d | xargs rm -rf}'
alias nyan='yarn'
