# Create a new directory and enter it.
function mkd() {
    mkdir -p "$@" && cd "$@"
}

# Create a data URL from a file.
function dataurl() {
    local mimeType=$(file -b --mime-type "$1")
    if [[ $mimeType == text/* ]]; then
        mimeType="${mimeType};charset=utf-8"
    fi
    echo "data:${mimeType};base64,$(openssl base64 -in "$1" | tr -d '\n')"
}

# Get gzipped file size.
function gz() {
    echo "orig size (bytes): "
    cat "$1" | wc -c
    echo "gzipped size (bytes): "
    gzip -c "$1" | wc -c
}

# Print color palette.
function palette() {
    line="\u2588\u2588\u2588\u2588\u2588\u2588\u2588"
    echo ""
    function color() {
        for i in {000..255}; do
            printf "\x1b[38;5;10m$i "
            printf "\x1b[38;5;${i}m$line\n"
        done
    }
    function columns() {
        awk '{if(NR%8){printf "%s ",$0 }else {printf "%s\n",$0}} '
    }
    color | columns
}
