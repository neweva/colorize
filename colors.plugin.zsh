#!/usr/bin/env zsh

export GREP_COLOR='4;31'
export PAGER=${PAGER:-"less"}

export LESS_TERMCAP_mb=$'\E[00;32m'
export LESS_TERMCAP_md=$'\E[00;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_so=$'\E[00;33m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[00;32m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS='-R -M'

PYGMENTIZE_THEME=${PYGMENTIZE_THEME:-"monokai"}

_pygmentize_theme(){
  if (( $+commands[pygmentize] )); then
    export LESSOPEN="|pygmentize -f 256 -O style=$PYGMENTIZE_THEME -g %s"
    alias pygmentize="pygmentize -O style=$PYGMENTIZE_THEME"
  fi
  precmd_functions=(${precmd_functions#_pygmentize_theme})
}

precmd_functions+=( _pygmentize_theme )

if (( $+commands[grc] )); then
  
  df(){
    \grc --colour=auto $(whence df) "$@"
  }

  as(){
    \grc --colour=auto $(whence as) "$@"
  }
  
  diff(){
    \grc --colour=auto $(whence diff) "$@"
  }
  
  if (( $+commands[dig] )); then
    dig(){
      \grc --colour=auto $(whence dig) "$@"
    }
  fi
  
  if (( $+commands[gas] )); then
    gas(){
      \grc --colour=auto $(whence gas) "$@"
    }
  fi
  
  if (( $+commands[gcc] )); then
    gcc(){
      \grc --colour=auto $(whence gcc) "$@"
    }
  fi
  
  if (( $+commands[g++] )); then
    function g++(){
      \grc --colour=auto $(whence g++) "$@"
    }
  fi
  
  if (( $+commands[last] )); then
    last(){
      \grc --colour=auto $(whence last) "$@"
    }
  fi
  
  if (( $+commands[ld] )); then
    ld(){
      \grc --colour=auto $(whence ld) "$@"
    }
  fi
  
  if (( $+commands[ifconfig] )); then
    ifconfig(){
      \grc --colour=auto $(whence ifconfig) "$@"
    }
  fi
  
  if (( $+commands[mount] )); then
    mount(){
      \grc --colour=auto $(whence mount) "$@"
    }
  fi

  if (( $+commands[mtr] )); then
    mtr(){
      \grc --colour=auto $(whence mtr) "$@"
    }
  fi

  if (( $+commands[netstat] )); then
    netstat(){
      \grc --colour=auto $(whence netstat) "$@"
    }
  fi

  if (( $+commands[ping] )); then
    ping(){
      \grc --colour=auto $(whence ping) "$@"
    }
  fi

  if (( $+commands[ping6] )); then
    ping6(){
      \grc --colour=auto $(whence ping6) "$@"
    }
  fi
    
  if (( $+commands[ps] )); then
    ps(){
      \grc --colour=auto $(whence ps) "$@"
    }
  fi
    
  if (( $+commands[traceroute] )); then
    traceroute(){
      \grc --colour=auto $(whence traceroute) "$@"
    }
  fi

fi