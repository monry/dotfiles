ZDOTDIR=~/.zsh

for function in ~/.zsh/functions/*; do
  source $function
done
source $ZDOTDIR/basic
source $ZDOTDIR/history
source $ZDOTDIR/complement
source $ZDOTDIR/prompt
source $ZDOTDIR/anyenv
source $ZDOTDIR/alias
source $ZDOTDIR/variable

# vim:set ft=zsh:
