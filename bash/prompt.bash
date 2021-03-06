set_bash_prompt() {
  local NONE='\[\033[0m\]'    # unsets color to term's fg color

  # regular colors
  local K='\[\033[0;30m\]'    # black
  local R='\[\033[0;31m\]'    # red
  local G='\[\033[0;32m\]'    # green
  local Y='\[\033[0;33m\]'    # yellow
  local B='\[\033[0;34m\]'    # blue
  local M='\[\033[0;35m\]'    # magenta
  local C='\[\033[0;36m\]'    # cyan
  local W='\[\033[0;37m\]'    # white

  # empahsized (bolded) colors
  local EMK='\[\033[1;30m\]'
  local EMR='\[\033[1;31m\]'
  local EMG='\[\033[1;32m\]'
  local EMY='\[\033[1;33m\]'
  local EMB='\[\033[1;34m\]'
  local EMM='\[\033[1;35m\]'
  local EMC='\[\033[1;36m\]'
  local EMW='\[\033[1;37m\]'

  # background colors
  local BGK='\[\033[40m\]'
  local BGR='\[\033[41m\]'
  local BGG='\[\033[42m\]'
  local BGY='\[\033[43m\]'
  local BGB='\[\033[44m\]'
  local BGM='\[\033[45m\]'
  local BGC='\[\033[46m\]'
  local BGW='\[\033[47m\]'

  [ $UID -eq "0" ] && UC=$EMR   # root's color
  local UC=$EMK                 # user's color

  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWSTASHSTATE=1
  GIT_PS1_SHOWUNTRACKEDFILES=1
  GIT_PS1_SHOWUPSTREAM="auto"

  command -v __git_ps1 > /dev/null
  if [ $? -eq 0 ]
  then
    PS1="${EMR}➜ ${NONE} ${EMB}\W ${NONE}${EMR}\$(__git_ps1 ' (%s)') ${NONE}"
  else
    PS1="${EMR}➜ ${NONE} ${EMB}\W ${NONE}"
  fi
}

set_bash_prompt; unset set_bash_prompt
