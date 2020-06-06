# #############################################
# My ZSH configuration ########################
#
#         __.,,------.._
#      ,'"   _      _   "`.
#     /.__, ._  -=- _"`    Y
#    (.____.-.`      ""`   j
#     VvvvvvV`.Y,.    _.,-'       ,     ,     ,
#        Y    ||,   '"\         ,/    ,/    ./
#        |   ,'  ,     `-..,'_,'/___,'/   ,'/   ,
#   ..  ,;,,',-'"\,'  ,  .     '     ' ""' '--,/    .. ..
# ,'. `.`---'     `, /  , Y -=-    ,'   ,   ,. .`-..||_|| ..
#ff\\`. `._        /f ,'j j , ,' ,   , f ,  \=\ Y   || ||`||_..
#l` \` `.`."`-..,-' j  /./ /, , / , / /l \   \=\l   || `' || ||...
# `  `   `-._ `-.,-/ ,' /`"/-/-/-/-"'''"`.`.  `'.\--`'--..`'_`' || ,
#            "`-_,',  ,'  f    ,   /      `._    ``._     ,  `-.`'//         ,
#          ,-"'' _.,-'    l_,-'_,,'          "`-._ . "`. /|     `.'\ ,       |
#        ,',.,-'"          \=) ,`-.         ,    `-'._`.V |       \ // .. . /j
#        |f\\               `._ )-."`.     /|         `.| |        `.`-||-\\/
#        l` \`                 "`._   "`--' j          j' j          `-`---'
#         `  `                     "`,-  ,'/       ,-'"  /
#                                 ,'",__,-'       /,, ,-'
#                                 Vvv'            VVv'


# #############################################
# Default .zshrc comments and config ##########

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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

plugins=(
  git
  pipenv
)

source $ZSH/oh-my-zsh.sh

# #############################################
# User configuration ##########################


# #############################################
# Misc ########################################

# setting for pip install --user
export PATH="~/.local/bin:$PATH"

# Disable bash history substitution, because it corrupts vscode debugger
# though, I don't remember what this fixes :D
set +H
unsetopt HIST_VERIFY

# #############################################
# Aliases #####################################

alias d=docker
alias dps="docker ps"
alias dck=docker-compose

alias e="exa --long --all"
alias b=bat
alias c="code ."

alias soft="cd ~/Soft"
alias proj="cd ~/Projects"
alias test="deactivate && cd ~/Projects/Test && . .fenv/bin/activate"

alias s=sudo
alias dem="ssh demid@cloud"
alias zshconfig="nano ~/.dotfiles/zshrc"

# #############################################
# pyenv setup #################################

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# #############################################
# Entrypoint ##################################

# Depends on development mode. If I use workstation as a thin client to
# cloud, I use ssh, if not, ssh command should be replaced with screenfetch
screenfetch
#ssh demid@cloud
