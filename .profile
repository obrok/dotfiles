[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
[ -f ~/.alias ] && source ~/.alias
[ -f ~/.base_profile.bash ] && source ~/.base_profile.bash
[ -f ~/.git-completion.bash ] && source ~/.git-completion.bash

export EDITOR=vim

export GOPATH=/Users/obrok/gocode
export PATH=$PATH:/opt/boxen/nvm/v0.8.8/lib/node_modules/coffeelint/bin:/usr/local/go/bin:/Users/obrok/Library/play-2.1.2:/Users/obrok/Library/activator

fortune -a | cowthink -n
