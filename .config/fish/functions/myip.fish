function myip -d 'Displays all ip addresses for this machine'
    set -l locals (ifconfig | grep "inet " | awk '{ print $2 }')
    printf "%-15s %s\n" 'Localhost:' $locals[1]
    printf "%-15s %s\n" 'LAN:' (test -n "$locals[2]" && echo $locals[2] || echo 'N/A')
    # -s to silence curl errors
    set -l ext (curl -s icanhazip.com || echo 'N/A')
    printf "%-15s %s\n" 'External:' $ext
end
