if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

directories=(functions configs completions)
for directory in $directories; do
	for _zsh in ~/.zsh/$directory/*; do
		source $_zsh
	done
done

# vim:set ft=zsh:

export PATH="$HOME/.poetry/bin:$PATH"
