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
# powerlevel10k pre-initialization ############
# https://github.com/romkatv/powerlevel10k ####

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# #############################################
# Default .zshrc comments and config ##########

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

DISABLE_UPDATE_PROMPT=true

ZSH_THEME="powerlevel10k/powerlevel10k"

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
export PATH="$HOME/.local/bin:$PATH"

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
alias p="ipython"
alias db="code ~/Dropbox/PersonalDatabase/"
alias upd="sudo apt update && sudo apt list --upgradable && sudo apt upgrade -y"

alias soft="cd ~/Soft"
alias proj="cd ~/Projects"

alias s=sudo
alias dem="ssh demid@cloud"
alias zshconfig="nano ~/.dotfiles/zshrc"
alias cloud_tunnel="autossh -N \
-L 1976:127.0.0.1:1976 \
-L 18734:127.0.0.1:18734 \
-L 18010:127.0.0.1:18010 \
-L 19877:127.0.0.1:19877 \
-L 18735:127.0.0.1:18735 \
-L 18130:127.0.0.1:18130 \
-L 18400:127.0.0.1:18400 \
-L 1994:127.0.0.1:1994 \
-L 18150:127.0.0.1:18150 \
-L 18000:127.0.0.1:18000 \
-L 19876:127.0.0.1:19876 \
-L 18120:127.0.0.1:18120 \
-L 18381:127.0.0.1:18381 \
-L 44567:127.0.0.1:44567 \
-L 3141:127.0.0.1:3141 \
-L 15900:127.0.0.1:15900 \
-L 25900:127.0.0.1:25900 \
-L 3506:127.0.0.1:3506 \
-L 2001:127.0.0.1:2001 \
-L 5000:127.0.0.1:5000 \
-L 3000:127.0.0.1:3000 \
-L 8888:127.0.0.1:8888 \
-L 5432:127.0.0.1:5432 \
-L 2000:127.0.0.1:2000 \
-L 2222:127.0.0.1:2222 \
-L 2002:127.0.0.1:2002 \
-L 8000:127.0.0.1:8000 \
-L 8080:127.0.0.1:8080 \
-L 3306:127.0.0.1:3306 \
-L 8001:127.0.0.1:8001 \
-L 8002:127.0.0.1:8002 \
-L 8003:127.0.0.1:8003 \
-L 8031:127.0.0.1:8031 \
-L 8120:127.0.0.1:8120 \
-L 8765:127.0.0.1:8765 \
-L 9200:127.0.0.1:9200 \
-L 18080:127.0.0.1:18080 \
-L 8100:127.0.0.1:8100 \
-L 8110:127.0.0.1:8110 \
-L 9876:127.0.0.1:9876 \
-L 50070:127.0.0.1:50070 \
-L 8088:127.0.0.1:8088 \
-L 27017:127.0.0.1:27017 \
-L 11211:127.0.0.1:11211 \
-L 4444:127.0.0.1:4444 \
-L 5900:127.0.0.1:5900 \
-L 4567:127.0.0.1:4567 \
-L 27017:127.0.0.1:27017 \
-L 9090:127.0.0.1:9090 \
-L 9999:127.0.0.1:9999 \
demid@cloud"

alias log_time="(cd $HOME/Soft/toggl-tempo-worklog-transfer && $HOME/Soft/toggl-tempo-worklog-transfer/.fenv/bin/python $HOME/Soft/toggl-tempo-worklog-transfer/sync_timelogs.py)"

cp_in_cloud() {
  scp -r $1 demid@cloud:$2
}

cp_from_cloud() {
  scp -r demid@cloud:$1 $2
}

random_password_special() {
  tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' </dev/urandom | head -c $1  ; echo
}

random_password() {
  tr -dc A-Za-z0-9 </dev/urandom | head -c $1 ; echo ''
}

fenv() {
  if [ -d ".fenv" ]
  then
    source .fenv/bin/activate
  else
    virtualenv -p python3 .fenv
    source .fenv/bin/activate
  fi
}

# #############################################
# pyenv setup #################################

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi


# #############################################
# launch cloud tunnel  ########################

# The dirtiest thing. I do this because my ssh key is password-protected.
# I don't want to keep it decrypted, and I don't want type it always.
# Ubuntu somehow handles this (I'm too lazy to dig and understand how), but
# systemd unit fails to pick up this stored password, and that's why start
# this screen session here. Yes, I'm stupid, lol.
if ! screen -list | grep -q "cloud_tunnel_j3kVxaXKxH"; then
    screen -dmS cloud_tunnel_j3kVxaXKxH
    screen -S cloud_tunnel_j3kVxaXKxH -X stuff 'cloud_tunnel\n'
fi

# #############################################
# powerlevel10k initialization ################
# https://github.com/romkatv/powerlevel10k ####

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
