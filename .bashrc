# History control
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Settings
[[ $- == *i* ]] && stty -ixon   # Disable ctrl-s and ctrl-q, but check for interactive shell first
shopt -s histappend             # Append history
shopt -s checkwinsize           # Resize window correctly after each command
shopt -s autocd                 # Auto cd into directory just by typing the directory name

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Ubuntu specific
alias sa="sudo apt-get"

# Color related
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -alhN --color=auto --group-directories-first'
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:" # Fixes highlighting in ls with folders

# Other aliases
alias vim="nvim"
alias mkd='mkdir -pv'
alias ..="cd .."
alias cl="clear"
alias mlhofem="module load gidpost compiler arpack impi parmetis scotch mumps"
alias mlhofemfpic="module load gidpost_fPIC compiler arpack_fPIC impi parmetis_fPIC scotch_fPIC mumps_fPIC"

# Prompt configuration
PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)'; PS1='\[\e[90m\][\u@\h\[\e[0m\] \[\e[92;1m\]\w\[\e[0;90m\]](\[\e[33;3m\]${PS1_CMD1}\[\e[0;90m\])\[\e[0m\]\$ '

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/dan/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/dan/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
