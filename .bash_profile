
###
# Prompt
###
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;94m\]\u@\h\[\033[00m\]:\[\033[01;96m\]\w\[\033[93m\] `parse_git_branch`\[\033[00m\]\$ '
