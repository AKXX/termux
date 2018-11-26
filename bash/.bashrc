source ~/bin/custom-alias
PATH="$HOME/bin:$PATH"
set -o vi
for f in ~/.bash_functions/*.bash; do . "$f"; done
