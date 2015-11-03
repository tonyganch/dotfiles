alias nom='npm'

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
