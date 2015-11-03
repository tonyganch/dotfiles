#!/bin/sh
#
# Shell script that configures gnome-terminal to use solarized theme
# colors. Written for Ubuntu 11.10, untested on anything else.
#
# Solarized theme: http://ethanschoonover.com/solarized
#
# Adapted from these sources:
# https://gist.github.com/1280177
# http://xorcode.com/guides/solarized-vim-eclipse-ubuntu/

case "$1" in
    "light")
        PALETTE="\
#070736364242:`#black`\
#E1E161612626:`#red`\
#8E8EA1A11E1E:`#green`\
#B5B589890000:`#yellow`\
#26268B8BD2D2:`#blue`\
#D3D336368282:`#magenta`\
#2A2AA1A19898:`#cyan`\
#EEEEE8E8D5D5:`#white`\
#00002B2B3636:`#bright black`\
#F8F85E5E2C2C:`#bright red`\
#58586E6E7575:`#bright green`\
#65657B7B8383:`#bright yellow`\
#838394949696:`#bright blue`\
#6C6C7171C4C4:`#bright magenta`\
#9393A1A1A1A1:`#bright cyan`\
#FDFDF6F6E3E3`#bright white`"
        BG_COLOR="#FDFDF6F6E3E3"
        FG_COLOR="#838394949696"
        ;;
    "dark")
        PALETTE="\
#EEEEE8E8D5D5:`#black`\
#D3D301010202:`#red`\
#858599990000:`#green`\
#B5B589890000:`#yellow`\
#26268B8BD2D2:`#blue`\
#D3D336368282:`#magenta`\
#2A2AA1A19898:`#cyan`\
#070736364242:`#white`\
#FDFDF6F6E3E3:`#bright black`\
#CBCB4B4B1616:`bright red`\
#9393A1A1A1A1:`#bright green`\
#838394949696:`#bright yellow`\
#65657B7B8383:`#bright blue`\
#6C6C7171C4C4:`#bright magenta`\
#58586E6E7575:`#bright cyan`\
#00002B2B3636`#bright white`"
        BG_COLOR="#00002B2B3636"
        FG_COLOR="#65657B7B8383"
        ;;
    *)
    echo "Usage: solarize [light | dark]"
    exit
    ;;
esac

gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_background" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette" --type string "$PALETTE"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "$BG_COLOR"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "$FG_COLOR"
