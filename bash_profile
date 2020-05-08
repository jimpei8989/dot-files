NormColor="\[\033[38;5;251m\]"
UserColor="\[\033[38;5;32m\]"
HostColor="\[\033[38;5;35m\]"
TimeColor="\[\033[38;5;244m\]"
WDirColor="\[\033[38;5;184m\]"
GitBColor="\[\033[38;5;214m\]"
VenvColor="\[\033[38;5;171m\]"

function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo "($venv) "
}

export VIRTUAL_ENV_DISABLE_PROMPT=1

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [[ "$TERM" =~ screen ]]; then
    PS1="${VenvColor}\$(virtualenv_info)${UserColor}\u${NormColor}@${HostColor}\h${NormColor}: ${WDirColor}\w${GitBColor}\$(parse_git_branch)\n${TimeColor}(\A)${NormColor}\$ \[\033[0m\]"
elif [[ "$TERM" =~ 256color ]]; then
    PS1="${UserColor}\u${NormColor}@${HostColor}\h${NormColor}: ${WDirColor}\W${GitBColor}\$(parse_git_branch)${NormColor}$ \[\033[0m\]"
else
    PS1="\[\e[40m\]\[\e[0;37m\]\u@\h: \W$ "
fi

# LS_COLORS="di=0;34:ex=1;92:ln=0;35"
# export LS_COLORS


alias SRC="source ~/.bash_profile"
alias RCD="cd ~/Records"

# echo "Wu-Jun Pei" | shasum -a 256
alias Lucky="echo 50756711264384381850616619995309447969109689825336919605444730053665222018857"

alias l="ls"
alias ll="ls -l"
alias la="ls -al"
alias ld="ls -ld"
alias lad="ls -ald"

alias vi="vim"

# tmux
alias ta="tmux a"

# Git
# alias gs="git status"
# alias gl="git log"
# alias gl1="git log --oneline"
# alias glg="git log --oneline --graph"
# alias ga="git add"
# alias gc="git commit"
# alias gp="git push"