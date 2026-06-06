function hyprshot-border
    set -l address (hyprctl -j activewindow | jq -r '.address')
    set -l outfile screenshot.png
    if test (count $argv) -gt 0
        set outfile $argv[1]
    end
    grim -w $address $outfile
end
