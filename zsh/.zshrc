# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-completions zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
else
   export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH
export PATH="$PATH:/Library/TeX/texbin:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$HOME/anaconda3/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
export PATH=$HOME/.utils/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH


[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh



# Emacs
# alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias em="emacs -n"
alias ed="emacs --daemon"
alias e="emacsclient -t"
alias ec="emacsclient -n -c"
#alias e="emacs -nw"

#git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gpull="git pull"
alias gpush="git push"


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


# helper functions

# unzip and rm the zip file
function unziprm() {
    unzip $1 -d ./ && rm $1
}

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#pure
fpath=( "$HOME/.zfunctions" $fpath)

autoload -U promptinit; promptinit
prompt pure
PURE_PROMPT_SYMBOL=→

export PATH="/usr/local/opt/texinfo/bin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"


export ANDROID_SDK_ROOT=/Users/kevin/x/Fall2018/OS/f18-hmwk2-setup/android-sdk
export ANDROID_SDK_HOME=/Users/kevin/x/Fall2018/OS/f18-hmwk2-setup/android-sdk
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PATH="$ANDROID_SDK_HOME/tools:$PATH"
export GOPATH=$HOME/x/Fall2018/DS/4113:$GOPATH

# added by travis gem
[ -f /Users/kevin/.travis/travis.sh ] && source /Users/kevin/.travis/travis.sh


# awscli
export PATH="$PATH:$HOME/.local/bin"
