# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# XDG Config Home
export XDG_CONFIG_HOME="$HOME/.config"

# Go Path
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zsh theme
ZSH_THEME="robbyrussell"

# HACK: zsh plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# NOTE: Zoxide
eval "$(zoxide init zsh)"

# NOTE: FZF
eval "$(fzf --zsh)"

# NOTE: direnv
eval "$(direnv hook zsh)"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"

# Setup fzf previews
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"

# fzf preview for tmux
export FZF_TMUX_OPTS=" -p90%,70% "

# User configuration
# These alias need to have the same exact space as written here
# HACK: For Running Go Server using Air
alias air='$(go env GOPATH)/bin/air'

# other Aliases shortcuts
alias c="clear"
alias e="exit"

# Tmux
# alias tmux="tmux -f $TMUX_CONF"
# alias a="attach"
# # calls the tmux new session script
# alias tns="~/scripts/tmux-sessionizer"

# fzf
# # called from ~/scripts/
# alias nlof="~/scripts/fzf_listoldfiles.sh"
# # opens documentation through fzf (eg: git,zsh etc.)
# alias fman="compgen -c | fzf | xargs man"

# zoxide (called from ~/scripts/)
# alias nzo="~/scripts/zoxide_openfiles_nvim.sh"

# Next level of an ls
# options :  --no-filesize --no-time --no-permissions
alias ls="eza --no-filesize --long --color=always --icons=always --no-user"

# tree
# alias tree="tree -L 3 -a -I '.git' --charset X "
# alias dtree="tree -L 3 -a -d -I '.git' --charset X "

# git aliases
alias ga="git add"
alias gs="git status -s"
alias gc='git commit -m'
alias glog='git log --oneline --graph --all'
alias gh-create='gh repo create --private --source=. --remote=origin && git push -u --all && gh browse'

# lazygit
alias lg="lazygit"

# Obsidian Path
# alias junvault="cd ~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/sethVault/"

# unbind ctrl g in terminal
bindkey -r "^G"

# brew installations activation (new mac systems brew path: opt/homebrew , not usr/local )
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# nvim
alias vim='NVIM_APPNAME="nvim" nvim'
alias leetcode="vim leetcode.nvim"

# python
alias python="python3"
alias pip="pip3"

# Mac setup for pomo
alias work="timer 50m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

# pnpm
export PNPM_HOME="/Users/junheejr/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
