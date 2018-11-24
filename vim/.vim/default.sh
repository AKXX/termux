#!/bin/bash

# This script will symlink vi to vim so that you won't see vi screen in some apps that use it by default.

# lets check where is vi installed

oldvi=$(which vi)

# lets delete it now

rm $oldvi

# lets see where vim is installed

newvi=$(which vim)

# Now vi is removed, lets symlink vim to it.

ln -sf $newvi $oldvi


echo "Enjoy using VIM now"
