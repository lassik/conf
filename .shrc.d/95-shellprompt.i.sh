case "$(uname)" in
DragonFly | FreeBSD)
	PS1='\w\$ '
	;;
NetBSD)
	PS1='$PWD\$ '
	;;
OpenBSD | Linux)
	PS1='\n\w\n\u@\h\$ '
	;;
*)
	PS1='\$ '
	;;
esac
if which shellprompt >/dev/null 2>&1; then
	if [ -n "$ZSH_VERSION" ]; then
		eval "$(shellprompt activate zsh)"
	elif [ -n "$BASH_VERSION" ]; then
		eval "$(shellprompt activate bash)"
	fi
fi
