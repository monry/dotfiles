directories=(functions configs completions)
for directory in $directories; do
	for _zsh in ~/.zsh/$directory/*; do
		source $_zsh
	done
done

# vim:set ft=zsh:
