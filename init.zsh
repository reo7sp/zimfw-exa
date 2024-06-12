# Ensure exa is available
if (( ${+commands[eza]} )); then
  alias ls='eza --group-directories-first'
elif (( ${+commands[exa]} )); then
  alias ls='exa --group-directories-first'
else
  return 1
fi

export EXA_COLORS='da=1;34:gm=1;34'

if ls --git /dev/null &>/dev/null; then
  alias ll='ls -l --git'      # Long format, git status
else
  alias ll='ls -l'            # Long format
fi

alias l='ll -a'               # Long format, all files
alias lr='ll -T'              # Long format, recursive as a tree
alias lx='ll -sextension'     # Long format, sort by extension
alias lk='ll -ssize'          # Long format, largest file size last
alias lt='ll -smodified'      # Long format, newest modification time last
alias lc='ll -schanged'       # Long format, newest status change (ctime) last
