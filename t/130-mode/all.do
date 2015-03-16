umask 0022
redo mode1
ls -l mode1 | grep -q -- "-rw-r--r--" || exit 78
