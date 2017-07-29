# I noticed that MAC OS does not have a 
# watch command by itself.
# So I implemented one myself!

# Simply copy the following line
# to your bash profile or bashrc

# run it as:
# Watch 'command 1'
alias Watch='while :; do clear; $1; sleep 2; done'
