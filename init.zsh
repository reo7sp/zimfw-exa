# Ensure eza is available
if (( ! ${+commands[eza]} )); then
  if (( ${+commands[exa]} )); then
    export EXA_COLORS='da=1;34:gm=1;34'
    eza() { exa "$@" }
  else
    return 1
  fi
fi

export EZA_COLORS='da=1;34:gm=1;34:Su=1;34'

alias ls='eza --group-directories-first'

alias la='ls -a'              # Short format, all files

if eza --git /dev/null &>/dev/null; then
  alias ll='ls -l -h --git'   # Long format, git status
else
  alias ll='ls -l -h'         # Long format
fi

alias lr='ll -T'              # Long format, recursive as a tree
alias lx='ll -sextension'     # Long format, sort by extension
alias lb='ll -ssize'          # Long format, largest file size last
alias lt='ll -smodified'      # Long format, newest modification time last
alias lc='ll -schanged'       # Long format, newest status change (ctime) last
