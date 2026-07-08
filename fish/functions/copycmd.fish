function copycmd
    begin
        echo "\$ $argv"
        eval $argv
    end | tee /dev/tty | wl-copy
end
