# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/karlsson/.zshrc'
autoload -Uz compinit promptinit
compinit
promptinit; prompt gentoo
# End of lines added by compinstall
export GOPATH=$HOME/dev/go

alias emerge='sudo emerge'
alias update='emerge -1 portage && emerge -auDN world'
alias postupdate='emerge @preserved-rebuild; \
	            emerge --depclean; sudo revdep-rebuild'
alias newuse='emerge -auD --newuse @world'
alias steam='firejail --noprofile --private=/home/karlsson/steam ./steam "$@"'
