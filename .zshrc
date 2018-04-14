# Path to your oh-my-zsh installation.
  export ZSH=/home/gabriel/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="kolo"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases
alias tk="tmux kill-session"
alias py="python3"
alias bel="~/beluga-0.8.2/bin/beluga"

# --- ROBOTICS ---
# export ROS_HOME=~/.ros
# uncomment for robotics
source /opt/ros/kinetic/setup.zsh

#
# MCGILL ROBOTICS CONFIGURATION
#
# The following can be modified.
# EDITOR        Your text editor of choice.
# ROBOT         Team you are working on ('auv', 'drone' or 'rover').
# IAMROBOT      If computer runs robot ('true' or 'false')
# ROBOTIC_PATH  Absolute path to directory containing the local
#               McGill Robotics git repositories.
#
export EDITOR=vim
export ROBOT=auv
export IAMROBOT=false
export ROBOTIC_PATH="/home/gabriel/Robotics"
if [[ -f "${ROBOTIC_PATH}/compsys/roboticrc" ]]; then
  # uncomment for mcgill robotics
  source "${ROBOTIC_PATH}/compsys/roboticrc"
else
  echo "Could not find ${ROBOTIC_PATH}/compsys/roboticrc"
  echo "This could occur when moving the robotics directory."
  echo "Please modify ROBOTIC_PATH in your ~/.zshrc"
  echo "to point to your robotics directory."
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
