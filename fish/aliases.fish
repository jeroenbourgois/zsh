# Make the blue color for directories more readable
set -x LSCOLORS Exfxcxdxbxegedabagacad

# simple aliases
alias ll 'ls -CFh'
alias la 'ls -Ah'
alias l 'ls -laoh'

# vim
alias v 'vim'
alias ve 'cd ~/.vim; vim vimrc'
alias vep 'cd ~/.vim; vim ~/.vimrc.local'

# git
alias gl 'git pull'
alias gp 'git push'
alias gst 'git status'
alias gsync 'git stash; and git pull; and git stash pop'
alias gpp 'git commit --allow-empty -m "[deploy:production]"; and git push'

function gc
  git commit -m "$argv"
end

function ga
  git add $argv
end

function gap
  git add -p $argv
end

# hot locations
alias gogo 'cd $GOPATH'
alias jackjoe "cd $HOME/Dropbox/Work/jackjoe"
alias dev 'cd $HOME/Dropbox/Work'
alias terminator 'cd $HOME/.terminator'

# tmux
alias t 'tmux'
alias tk 'tmux kill-server'
alias ta 't attach-session -t $ARGV'
alias tl 't ls'

# golang
set -x GOPATH $HOME/Dropbox/Work/go
set -x GOROOT /usr/local/go
set -x PATH $PATH $GOPATH/bin $GOROOT/bin

# haskell
set -x PATH $PATH $HOME/.stack/programs/x86_64-osx/ghc-7.10.2/bin $HOME/.local/bin

# android :(
set -x ANDROID_HOME /usr/local/opt/android-sdk

# editor
set -x REACT_EDITOR vim

# some functions
function ssh-copy
  cat ~/.ssh/id_rsa.pub | pbcopy
end
