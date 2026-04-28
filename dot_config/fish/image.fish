set -g IMAGE_DIR "$HOME/Pictures/prsk-flatten"

if status is-interactive
    if test "$TERM" = "xterm-ghostty"
        set -l IMAGES (find $IMAGE_DIR -type f -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg"  2>/dev/null)
        
        if test (count $IMAGES) -gt 0
            set -l INDEX (random 1 (count $IMAGES))
            viu "$IMAGES[$INDEX]" -h 20
        end
    end
end
