#!/usr/bin/env zsh
# Standarized $0 handling, following:
# https://github.com/zdharma/Zsh-100-Commits-Club/blob/master/Zsh-Plugin-Standard.adoc
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if [[ $PMSPEC != *b* ]] {
  PATH=$PATH:"${0:h}/bin"
}

DEPENDENCES_ARCH+=( grc )
DEPENDENCES_DEBIAN+=( grc )

export LESS="$LESS -R -M"

function ip() {
  command ip --color=auto "$@"
}

function grep() {
  command grep --colour=auto "$@"
}

function egrep() {
  command egrep --colour=auto "$@"
}

function fgrep() {
  command fgrep --colour=auto "$@"
}

if (( $+commands[diff-so-fancy] )); then
  function diff() {
    command diff "$@" | diff-so-fancy
  }
elif  (( $+commands[delta] )); then
  function diff() {
    command diff "$@" | delta
  }
else
  function diff() {
    command diff --color "$@"
  }
fi

if (( $+commands[grc] )); then
  function env() {
    command grc --colour=auto env "$@"
  }

  function lsblk() {
    command grc --colour=auto lsblk "$@"
  }

  function df() {
    command grc --colour=auto df -h "$@"
  }

  function du() {
    command grc --colour=auto du -h "$@"
  }

  function free() {
    command grc --colour=auto free -h "$@"
  }

  function as() {
    command grc --colour=auto as "$@"
  }

  if (( $+commands[dig] )); then
    function dig() {
      command grc --colour=auto dig "$@"
    }
  fi

  if (( $+commands[gas] )); then
    function gas() {
      command grc --colour=auto gas "$@"
    }
  fi

  if (( $+commands[gcc] )); then
    function gcc() {
      command grc --colour=auto gcc "$@"
    }
  fi

  if (( $+commands[g++] )); then
    function g() ++(){
      command grc --colour=auto g++ "$@"
    }
  fi

  if (( $+commands[last] )); then
    function last() {
      command grc --colour=auto last "$@"
    }
  fi

  if (( $+commands[ld] )); then
    function ld() {
      command grc --colour=auto ld "$@"
    }
  fi

  if (( $+commands[ifconfig] )); then
    function ifconfig() {
      command grc --colour=auto ifconfig "$@"
    }
  fi

  if (( $+commands[mount] )); then
    function mount() {
      command grc --colour=auto mount "$@"
    }
  fi

  if (( $+commands[mtr] )); then
    function mtr() {
      command grc --colour=auto mtr "$@"
    }
  fi

  if (( $+commands[netstat] )); then
    function netstat() {
      command grc --colour=auto netstat "$@"
    }
  fi

  if (( $+commands[ping] )); then
    function ping() {
      command grc --colour=auto ping "$@"
    }
  fi

  if (( $+commands[ping6] )); then
    function ping6() {
      command grc --colour=auto ping6 "$@"
    }
  fi

  if (( $+commands[ps] )); then
    function ps() {
      command grc --colour=auto ps "$@"
    }
  fi

  if (( $+commands[traceroute] )); then
    function traceroute() {
      command grc --colour=auto traceroute "$@"
    }
  fi
  
  # Superfei commands
  if (( $+commands[journalctl] )); then
    function journalctl() {
      command grc -c ~/.neweva.grc journalctl "$@"
    }
  fi
  
  if (( $+commands[systemctl] )); then
    function systemctl() {
      command grc -c ~/.neweva.grc systemctl "$@"
    }
  fi

  if (( $+commands[iptables] )); then
    function iptables() {
      command grc --colour=auto iptables "$@"
    }
  fi
  
  if (( $+commands[sysctl] )); then
    function sysctl() {
      command grc --colour=auto sysctl "$@"
    }
  fi
  
  if (( $+commands[cat] )); then
    function cat() {
      command grc -c ~/.neweva.grc cat "$@"
    }
  fi
  
  if (( $+commands[nali-dig] )); then
    function nali-dig() {
      command grc -c /usr/share/grc/conf.dig nali-dig "$@"
    }
  fi
 
  if (( $+commands[iperf3] )); then
    function iperf3() {
      command grc -c ~/.neweva.grc iperf3 "$@"
    }
  fi
  
  if (( $+commands[run-parts] )); then
    function run-parts() {
      command grc -c ~/.neweva.grc run-parts "$@"
    }
  fi
  
  if (( $+commands[scp] )); then
    function scp() {
      command grc -c ~/.neweva.grc scp "$@"
    }
  fi
  
  if (( $+commands[ssh] )); then
    function ssh() {
      command grc -c ~/.neweva.grc ssh "$@"
    }
  fi

  if (( $+commands[git] )); then
    function git() {
      command grc -c ~/.login-info.grc git "$@"
    }
  fi

  if (( $+commands[wg] )); then
    function wg() {
      command grc -c ~/.login-info.grc wg "$@"
    }
  fi
fi
