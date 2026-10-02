function gh-repo-size
    set kb (gh repo view $argv[1] --json diskUsage --jq '.diskUsage')
    if test $kb -lt 1024
        echo "$kb KB"
    else if test $kb -lt 1048576
        echo (math "$kb / 1024")" MB"
    else
        echo (math "$kb / 1048576")" GB"
    end
end
