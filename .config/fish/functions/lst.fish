function lst
    # formatted list sort by time
    ls -lht $argv[1] | cut -c 28-
end
