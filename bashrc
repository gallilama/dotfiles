HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

if [ -f ~/.profile ]; then . ~/.profile; fi
# Box-specific stuff goes in here
if [ -f ~/.profile_local ]; then . ~/.profile_local; fi
