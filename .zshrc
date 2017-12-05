# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kphoen"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

alias mvn='/opt/apache-maven/bin/mvn'
alias core='mvn clean install -T 2 -Dmaven.test.skip=true && mvn -Dmaven.test.skip=true wildfly:deploy-only -Pdefault'
alias build='mvn install -o -T 1C -Dmaven.test.skip=true'
alias deploy='mvn -Dmaven.test.skip=true wildfly:deploy-only -Pdefault'
alias conda='~/anaconda3/bin/conda'
alias activate='~/anaconda3/bin/activate'
alias vim='nvim'

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export SCALA_HOME=/usr/local/src/scala/scala-2.11.7
export PATH=$SCALA_HOME/bin:$PATH
export M3_HOME=/opt/apache-maven
export SPARK_HOME=/opt/spark/spark-2.1.1-bin-hadoop2.7
export SPARK_LOCAL_IP=127.0.1.1
export MAVEN_OPTS="-XX:+TieredCompilation -XX:TieredStopAtLevel=1"
export GOPATH=$HOME/go
export TERM=screen-256color
alias tmux='TERM=xterm-256color tmux -2'
bindkey -v
bindkey '^R' history-incremental-search-backward

export NVM_DIR="/home/bsnyder/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH=$HOME/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

source ~/.dotfiles/.zshrc-private
