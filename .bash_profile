# load ~/bashrc if it, cause bashrc is not created in macOS but can be use
if [ -f ~/.bashrc ]; then
	source ~/.bashrc      
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cees/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

. "$HOME/.cargo/env"

# Homebrew Installation Path
export PATH="/opt/homebrew/bin:$PATH"

