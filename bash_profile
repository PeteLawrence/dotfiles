# Add git to $PATH
export PATH=$PATH:/usr/local/git/bin/


#Append the current branch onto the prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e]0;\u@\h:\w\a\]\[\033[01;32m\]\u\[\033[00m\]@\[\033[01;34m\]\h\[\033[00m\] \[\033[01;36m\]\W\[\033[00m\] \$(parse_git_branch)$ "

#Colour ant output
export ANT_ARGS='-logger org.apache.tools.ant.listener.AnsiColorLogger'

#Shortcuts
alias gs='git status'
alias ll='ls -la'
alias grep='grep --color'
