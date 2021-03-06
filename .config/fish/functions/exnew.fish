
function exnew -d 'Executes a command in a new terminal window'
    # executes a command in a new terminal window
    # opens a new terminal window if no command
    # does not work with piped commands
    set -l cmnd "\"$argv\""
    set -l start 'tell app "Terminal" to do script '
    set -l joined (string join '' $start $cmnd)
    osascript -e $joined
end
