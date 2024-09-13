# # # # # # # # # # # # # # # # # # # #
#   _               _                 #
#  | |__   __ _ ___| |__  _ __ ___    #
#  | '_ \ / _` / __| '_ \| '__/ __|   #
#  | |_) | (_| \__ \ | | | | | (__    #
#  |_.__/ \__,_|___/_| |_|_|  \___|   #
#                                     #
# # # # # # # # # # # # # # # # # # # #
export  TERM=xterm
export PATH=/usr/sbin:$PATH
#bash vi mode
set -o vi
bind 'TAB:menu-complete'

git_branch() {
    if [ -d .git ]; then
        branch=$(git branch --show-current)
        printf " %s " "$branch"
        git -c color.status=always status -s | tr '\n' ' ' | sed 's/  / /g'
    fi
}

time_date() {
    printf "%*s\r" "$(tput cols)" "$(date +"%d/%m/%y %T")"
}

active_processes() {
    var=$(ps | awk '!/bash/ && !/awk/ && !/ps/ && !/PID/' | wc -l)
    ((var--))
    if [ $var -gt 0 ]; then
        printf "\033[31m󰜎 %s" "$var"
    fi
}

export PS1="\[\033[90m\]\$(time_date)\[\033[32m\]\u@\h \[\033[34m\] \w\[\033[35m\] \$(git_branch)\[\033[00m\]\[\033[32m\]\[\033[36m\$(active_processes)\n \[\033[0m\]"

HISTSIZE=1000000
HISTFILESIZE=
export HISTTIMEFORMAT="%Y/%m/%d %T $"

export EDITOR="nvim"
#export RESOLUTION="1920x1080"

#commands
alias ls='exa --group-directories-first'
alias c='clear -x'
alias f='fg'

alias nb='auto_bash.sh'
alias nc='auto_c.sh'
alias nn='auto_node.sh'
alias nm='auto_makefile.sh'

#directories
alias ~='cd ~'

#config files
alias bashrc='$EDITOR ~/.bashrc'
alias vimrc='$EDITOR ~/.config/nvim/vimrc.vim'

alias pyserve='python -m http.server 8000'

