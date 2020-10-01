export EDITOR=/usr/bin/vim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export LC_ALL="en_IN.utf8"
#Clear Home
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="$HOME/.cache/gtkcache/.gtkrc-2.0"
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export HISTFILE="$XDG_CONFIG_HOME/bash/history"
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export GOPATH="$XDG_DATA_HOME"/go
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export TORCH_HOME="$XDG_CONFIG_HOME"/torch
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export SPACEVIMDIR="$XDG_DATA_HOME"/spacevim
# Disable less history
export LESSHISTFILE=-
export GOBIN="$GOPATH/bin"

export MODEL_DIR="/home/neil/projects/psl/federated-learning-lib/"

#Custom
export TERMINAL="st"
export PATH=$PATH:/sbin
export PATH=$PATH:/home/neil/.local/bin
export PATH=$PATH:/home/neil/.config/bin
export PATH=$PATH:/home/neil/.local/share/cargo/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:/home/neil/.gem/ruby/2.7.0/bin
export PATH=$PATH:/home/neil/.config/anaconda3/bin
export WALLPAPER="$XDG_CONFIG_HOME"/wallpapers/collections
export BIN="/home/neil/.config/bin"
export MTP_MOUNT="/home/neil/Downloads/AndroidDir"
#If xsession not running start it
if [ -z "$DISPLAY" ]; then
    source ~/.bashrc
    startx
	xset -b
	/home/neil/.config/bin/statTrack &
fi


