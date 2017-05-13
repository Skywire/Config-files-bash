# show git branch info and customise command prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\[\e[01;31m\]\w \$(parse_git_branch): \[\e[00m\]"

# custom listing shortcut (alias)
alias ll='ls --almost-all --human-readable --classify --color -l'
alias lt='ls --almost-all --human-readable --classify --color -lt --reverse'

# Disk usage human readable and sorted by size.
# Source: http://www.earthinfo.org/linux-disk-usage-sorted-by-size-and-human-readable/
alias duf='du -sk * .??* | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Sets up env php storm config for remote xdebug
PHP_IDE_CONFIG="serverName=Vagrant"; export PHP_IDE_CONFIG

# Set VI as default editor
export VISUAL=vi
export EDITOR="$VISUAL"
