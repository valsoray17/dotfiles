# .bash_profile

[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

export GOPATH=$HOME/go
export PATH="$HOME/.local/bin:$HOME/bin:$GOPATH/bin:$PATH"

if [[ "$OSTYPE" == darwin* ]]; then
    export PATH="$HOMEBREW_PREFIX/opt/libpq/bin:$PATH"
    # Added by Toolbox App
    export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
    # The next line updates PATH for the Google Cloud SDK.
    [ -f "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.bash.inc" ] && . "$HOMEBREW_PREFIX/share/google-cloud-sdk/path.bash.inc"
fi

# .bashrc is only read by interactive non-login shells, and macOS terminals start login shells
[ -r ~/.bashrc ] && . ~/.bashrc
