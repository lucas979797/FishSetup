function getmethods
    if test (count $argv) -eq 1
        ggrep -oP '\w+.*\s[a-z]\w+\(.*\)\s.*(?=\{)' $argv[1] | sed 's/^ *//g'
    else
        echo "Please provide a filename to search"
    end
end