#!$( type -p bash )

#################
#               #
#  ▄       ▗▖ ▄▖#
# ▐█▌      ▐▌▐▛ #
# ▐█▌      ▐▙█  #
# █ █      ▐██  #
# ███      ▐▌▐▙ #
#▗█ █▖     ▐▌ █▖#
#▝▘ ▝▘     ▝▘ ▝▘#
#               #
#               #
#################

# Author: A K <ak@redchan.it>
# Source: https://github.com/AKXX/termux.git

# Ask AK a question, just type ak "your message". Don't forget to put message in quotes.

function ak {
  echo "$@" | mutt -s Termux ak@redchan.it
}


