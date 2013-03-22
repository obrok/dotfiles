
# recommended by brew doctor
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/sbin:~/app:/usr/local/texlive/2012/bin/x86_64-darwin:~/Library/Haskell/bin:~/.cabal/bin'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# RVM
[[ -s '/Users/obrok/.rvm/scripts/rvm' ]] && source '/Users/obrok/.rvm/scripts/rvm'
source ~/.alias
source ~/.git-completion.bash

export EDITOR='vim'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

fortune -a
