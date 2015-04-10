# Root command line red background
export PS1="\[$(tput setab 1)\]\u@\h:\w $ \[$(tput sgr0)\]"

GOPATH=$HOME/go

PATH=$PATH:$HOME:$GOPATH/bin

export GOPATH

export PATH
