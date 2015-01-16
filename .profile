[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
[ -f ~/.alias ] && source ~/.alias
[ -f ~/.base_profile.bash ] && source ~/.base_profile.bash
[ -f ~/.git-completion.bash ] && source ~/.git-completion.bash
source ~/Projects/base/gems/grid/extras/shell-completion/grid_completion.bash

export EDITOR=vim

export GOPATH=/Users/obrok/gocode
export PATH=$PATH:/opt/boxen/nvm/v0.8.8/lib/node_modules/coffeelint/bin:/usr/local/go/bin:/Users/obrok/Library/play-2.1.2:/Users/obrok/Library/activator
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0)

fortune -a | cowthink -n

export BASE_VM_MEMORY=8192
export MITSCHEME_LIBRARY_PATH="/Applications/MIT\:GNU\ Scheme.app/Contents/Resources"

source /opt/starter-kit-cli/extras/starter-kit-cli-extras.sh
