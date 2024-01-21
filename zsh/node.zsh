alias nom='npm'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# NVM
if [ -s ~/.nvm/nvm.sh ]; then
    source ~/.nvm/nvm.sh
    # Node bin path
    BP=$(which node)
    # Node path
    NP=${BP%bin/node}
    # Modules path
    export NODE_PATH="${NP}lib/node_modules"
fi
