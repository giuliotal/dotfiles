#
# ~/.bashrc
#

export TERM=vt100

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias conf-sway='vim .config/sway/config'
alias nightshift='nohup gammastep -l 45:9 &'
PS1='[\u@\h \W]\$ '
export XDG_RUNTIME_DIR=/run/user/1000

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/giuliotal/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/giuliotal/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/giuliotal/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/giuliotal/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

