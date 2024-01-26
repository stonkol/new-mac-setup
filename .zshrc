# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
  ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/texlive/2023/bin/universal-darwin:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias c='clear'
alias cdg='cd Github'
alias cdd='cd Documents'
alias cdw='cd Downloads'

# plugins
alias mx='cmatrix'
alias nf='neofetch'

alias wtsen='curl wttr.in/skelleftea'
alias wtse='curl wttr.in/stonkholm'
alias wtuk='curl wttr.in/london'
alias wtch='curl wttr.in/zurich'
alias wtjp='curl wttr.in/tokyo'
alias wtsf='curl wttr.in/sanfrancisco'
alias wtus='curl wttr.in/washington'
alias wtir='curl wttr.in/teheran'
alias wtny='curl wttr.in/newyork'
alias wtar='curl wttr.in/buenosaires'
alias wtru='curl wttr.in/moscow'
alias wtsp='curl wttr.in/Санкт-Петербург'
alias wtes='curl wttr.in/barcelona'
alias wtsg='curl wttr.in/singapore'
alias wttw='curl wttr.in/taipei'

alias zshconf="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

alias python='python3'

# kitty
# display font used
alias kiff='kitty --debug-font-fallback'

# git
alias gia='git add .'
alias gics='git commit -m "mini update susu"'
alias gicl='git commit -m "mate, thats so many changes"'
alias gicfb='git commit -m "bruh, fix stupid bugs"'
alias gicfika='git commit -m "commit and going for a fika, hejdå!"'
alias gicmr='git commit -m "update README"'
alias gipo='git push origin'
alias gill='git pull'
alias gst='git status'

# brew
alias brud='brew update'
alias brug='brew upgrade'
alias brl='brew list'
alias brh='brew help'
alias brt='brew tap'
alias brc='brew clean'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cees/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cees/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cees/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cees/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# fuck plugin
eval $(thefuck --alias)

# run automatically every time you open a new terminal window
#echo "neofetch" >> ~/.bashrc
#neofetch

# color ls config
source $(dirname $(gem which colorls))/tab_complete.sh

# With color options : --light or --dark can be passed as a flag, 
# to choose the  appropriate color scheme. By default, 
# the dark color scheme is chosen. 
# In order to tweak any color, read Custom configurations:
# https://github.com/athityakumar/colorls#custom-configurations

#color ls alias
alias la='colorls --all'
alias lA='colorls -lA'
alias ld='colorls --dirs'
alias lf='colorls --files'
alias ll='colorls --long'

alias lt='colorls --tree'
# these line below didn't work
# alias lt2='colorls -t 2'
# alias lt3='colorls --tree=[3]'

alias lh='colorls --help'
alias lr='colorls --report'
alias lg='colorls --git-status'
# show [directories/files] first
alias ldd='colorls --group-directories-first'
alias lff='colorls --sort-files'

# combination of flags
alias lgt='colorls --git-status spec -t'
alias lgl='colorls --git-status spec -l'
alias lAs='colorls -lA --sd'