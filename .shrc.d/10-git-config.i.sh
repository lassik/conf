if which git >/dev/null 2>&1; then

	git config --global log.decorate true
	git config --global color.ui true

	# Make less display ANSI colors from git output, not "ESC" junk.
	git config --global core.pager "less -R"

	if which wdiff >/dev/null 2>&1 && which git-wdiff >/dev/null 2>&1; then
		git config --global diff.external git-wdiff
	else
		git config --global --unset diff.external
	fi

	if which emacs >/dev/null 2>&1; then
		git config --global merge.tool emerge
	else
		git config --global --unset merge.tool
	fi

	git config --global user.name "Lassi Kortela"
	git config --global user.email "lassi@lassi.io"

fi
