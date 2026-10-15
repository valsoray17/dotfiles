# macOS specific bash config

# Completions and git prompt from brew (HOMEBREW_PREFIX is set by `brew shellenv` in .bash_profile)
[ -r "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh" ] && . "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"
[ -r "$HOMEBREW_PREFIX/etc/bash_completion.d/git-completion.bash" ] && . "$HOMEBREW_PREFIX/etc/bash_completion.d/git-completion.bash"
[ -r "$HOMEBREW_PREFIX/etc/bash_completion.d/git-prompt.sh" ] && . "$HOMEBREW_PREFIX/etc/bash_completion.d/git-prompt.sh"
[ -f "$HOME/Library/google-cloud-sdk/completion.bash.inc" ] && . "$HOME/Library/google-cloud-sdk/completion.bash.inc"
[ -f /usr/local/etc/profile.d/z.sh ] && . /usr/local/etc/profile.d/z.sh

alias ll='ls -lG'
alias l='ls -Ggoh'
alias fixcam='sudo pkill "VDCAssistant"'
alias upgrade='brew update; brew upgrade; brew cleanup --prune-prefix; brew cleanup; brew doctor; brew cu; softwareupdate -i -a'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

reload-audio(){
    sudo launchctl unload /System/Library/LaunchDaemons/com.apple.audio.coreaudiod.plist && sudo launchctl load /System/Library/LaunchDaemons/com.apple.audio.coreaudiod.plist
}
