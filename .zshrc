# ********************************** ZSH 5.2 CUSTOMIZATIONS ******************************************* #

# store 10k commands of history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# just to avoid confusion (using urxvt-256color)
export TERM=xterm

# emacs^H^H^H^H^H default bash keybindings
bindkey -e

zstyle :compinstall filename '/home/'+$USER+'/.zshrc'

# completions are cool
autoload -Uz compinit
compinit

# load colors for prompt
autoload -Uz colors && colors
if [[ $(dnsdomainname) == 'colorado.edu' ]] || [[ $(dnsdomainname) == 'int.colorado.edu' ]]; then
    export PS1="%{$fg[white]%}%n%{$reset_color%}@%{$fg[green]%}%m %{$fg_no_bold[yellow]%}%~$%{$reset_color%} "
elif [[ $(dnsdomainname) == 'michaeljgilroy.com' ]]; then
    export PS1="%{$fg[white]%}%n%{$reset_color%}@%{$fg[yellow]%}%m %{$fg_no_bold[yellow]%}%~$%{$reset_color%} "
else
    export PS1="%{$fg[white]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%~$%{$reset_color%} "
fi

# helpful shortcuts
alias ls="ls --color=auto"
alias ll="ls -l --color=auto"

