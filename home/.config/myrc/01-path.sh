for d in ~/".local/$(uname | tr A-Z a-z)-$(uname -m | tr A-Z a-z)/bin" \
           ~/.local/bin/ \
           /usr/local/bin \
           /usr/local/sbin \
           /bin \
           /sbin \
           /usr/bin \
           /usr/sbin \
           /usr/X11R6/bin \
           /usr/X11/bin \
           /usr/games ; do
    if [ -d "$d" ]; then
        export PATH="$PATH":"$d"
    fi
done
