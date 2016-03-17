[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
[ -f ~/.alias ] && source ~/.alias
[ -f ~/.base_profile.bash ] && source ~/.base_profile.bash
[ -f /usr/local/etc/bash_completion.d/git-completion.bash ] && source /usr/local/etc/bash_completion.d/git-completion.bash

export EDITOR=vim

export GOPATH=/Users/obrok/gocode
export PATH=$PATH:/opt/boxen/nvm/v0.8.8/lib/node_modules/coffeelint/bin:/usr/local/go/bin:/Users/obrok/Library/play-2.1.2:/Users/obrok/Library/activator
# export JAVA_HOME=$(/usr/libexec/java_home --request -v 1.8.0)

fortune -a | cowthink -n

export BASE_VM_MEMORY=8192
export MITSCHEME_LIBRARY_PATH="/Applications/MIT\:GNU\ Scheme.app/Contents/Resources"

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/.exenv/bin:$PATH"
eval "$(exenv init -)"

export ODBCINI=~/.odbc.ini
export MAPRDRILLINI=~/.mapr.drillodbc.ini
export LD_LIBRARY_PATH=/usr/local/lib:/opt/mapr/drillodbc/lib/64

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh
