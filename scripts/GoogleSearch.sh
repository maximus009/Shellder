# Do a google search from the terminal
# Add the following lines to your
# bashrc or bash profile.

# tip: functions defined in ~/.bash_profile or ~/.bashrc are treated as shell commands
# GoogleSearch "my search query"

GoogleSearch() {
    echo "Searching for : $@"
    for term in $@ ; do
        echo "$term"
        search="$search%20$term"
    done
        open "http://www.google.com/search?q=$search"
}
