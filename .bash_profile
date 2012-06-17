function parse_git_branch {
  ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")"
}

# Prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[33m\]`__git_ps1`\[\033[00m\]\$ '

# Aliases
alias ls="ls -F --color"
alias grep='grep --color=auto'
alias grepper='egrep --color=auto -rI'
alias grepperi='grepper -i'

# rails aliases
alias brake="bundle exec rake"
