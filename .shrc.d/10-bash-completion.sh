if [ -n "$BASH_VERSION" ] && [ -e ~/etc/profile.d/bash_completion.sh ]; then
	. ~/etc/profile.d/bash_completion.sh
	complete -F _cd -o nospace c
fi
