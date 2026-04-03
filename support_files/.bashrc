# -------------------------------
# FAST + SAFE GIT INFO
# -------------------------------
parse_git_info() {
  command -v git >/dev/null 2>&1 || return
  git rev-parse --is-inside-work-tree &>/dev/null || return

  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return

  # Dirty (unstaged)
  git diff --quiet --ignore-submodules 2>/dev/null
  dirty=$([ $? -ne 0 ] && echo "*")

  # Staged
  git diff --cached --quiet --ignore-submodules 2>/dev/null
  staged=$([ $? -ne 0 ] && echo "+")

  # # Choose color
  # if [ -n "$dirty$staged" ]; then
  #   color="\[\e[31m\]"  # red
  # else
  #   color="\[\e[35m\]"  # magenta
  # fi

  echo " ($branch$dirty$staged)"
  # echo "${color} ($branch$dirty$staged)"
}

# -------------------------------
# PROMPT
# -------------------------------
PS1="\[\e[34m\]\W\[\e[31m\]\$(parse_git_info)\[\e[33m\] \$ \[\e[0m\]"

# -------------------------------
# USEFUL ALIASES
# -------------------------------
alias ll="ls -lh"
alias la="ls -A"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"
