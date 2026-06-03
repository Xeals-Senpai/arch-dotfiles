# ------------------------------------------------------------
# Xeals Zsh Configuration
# ------------------------------------------------------------

# -----------------------------
# Shell Options
# -----------------------------

setopt correct
setopt extendedglob
setopt nocaseglob
setopt rcexpandparam
setopt nocheckjobs
setopt numericglobsort
setopt nobeep
setopt appendhistory
setopt histignorealldups
setopt autocd
setopt promptsubst

# -----------------------------
# History
# -----------------------------

HISTFILE="$HOME/.config/zsh/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# -----------------------------
# Plugins
# -----------------------------

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# command-not-found
source /usr/share/doc/pkgfile/command-not-found.zsh

# Prompt
eval "$(starship init zsh)"

# -----------------------------
# Aliases
# -----------------------------

alias vim='nvim'
alias ssh='kitty +kitten ssh'

alias ls='ls --color=auto'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'

# True clear
alias cls='command clear'

# -----------------------------
# Functions
# -----------------------------

function cd() {
    builtin cd "$@" || return
    ls --color=auto
}

function clear() {
    command clear

    if command -v fastfetch >/dev/null 2>&1; then
        fastfetch
    fi
}

# -----------------------------
# Keybindings
# -----------------------------

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# -----------------------------
# Startup
# -----------------------------

if command -v fastfetch >/dev/null 2>&1; then
    fastfetch
fi