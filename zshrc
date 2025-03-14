if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

source ~/.zsh/configs/path
directories=(functions configs completions)
for directory in $directories; do
	for _zsh in ~/.zsh/$directory/*; do
		source $_zsh
	done
done

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# vim:set ft=zsh:

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/monry/Developer/lib/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/monry/Developer/lib/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/monry/Developer/lib/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/monry/Developer/lib/google-cloud-sdk/completion.zsh.inc'; fi
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/monry/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

if [ -f '/Users/monry/.secrets/env' ]; then
  source '/Users/monry/.secrets/env'
fi
