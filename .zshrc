# Common Alias
alias ls='ls -FG'
alias ll='ls -alFG'
alias lsusb='ls /dev/tty.usb*'
alias cd-derived-data='cd ~/Library/Developer/Xcode/DerivedData'
alias open-derived-data='open ~/Library/Developer/Xcode/DerivedData'
alias rm-dsstore='find . -name ".DS_Store" -type f -ls -delete'
alias rm-node-modules='(){find . -depth $1 -name node_modules -and -type d | xargs rm -rf}'
alias shadowon='defaults write com.apple.screencapture disable-shadow -bool false; killall SystemUIServer'
alias shadowoff='defaults write com.apple.screencapture disable-shadow -bool true; killall SystemUIServer'
alias devicelist='(){xcrun xctrace list devices 2>&1 | grep -v Apple | grep $1}'
alias findfps='(){find ~/Library/Developer/CoreSimulator/Devices/${1}/data/Containers/Shared/AppGroup/*/File\ Provider\ Storage -type d}'
alias lsfps='(){findfps ${1} | xargs -Ipath ls -1 path}'
alias copyfps='(){findfps ${1} | xargs -Ipath cp $2 path}'
alias simrecord='(){xcrun simctl io $1 recordVideo -f $2 > /dev/null 2>&1}'

# Git
source ~/.zsh/git-prompt.sh
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit -u
GIT_PS1_SHOWDIRTYSTATE=true
setopt PROMPT_SUBST; PS1='%F{cyan}%n:%c%f%F{red}$(__git_ps1 "(%s)")%f\$ '
alias osouji='git branch -a | grep -v "origin" | grep "KLOG\|KINTONE\|TURU" | xargs git branch -d'
alias gwip='git add *; git commit -m "WIP commit [ci skip]"; git push origin `git rev-parse --abbrev-ref HEAD`'
alias grhr='git reset --hard remotes/origin/`git rev-parse --abbrev-ref HEAD`'
alias grb='git fetch -p && git branch -vv | grep ": gone]" | awk "{print \$1}" | xargs git branch -d'

# peco
HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt inc_append_history
setopt share_history

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection
