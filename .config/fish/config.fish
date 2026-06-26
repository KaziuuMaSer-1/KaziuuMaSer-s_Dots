# Commands to run in interactive sessions can go here
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)
abbr --add update "sudo apt update -y && sudo apt upgrade -y && flatpak update -y && brew update"
abbr --add mal "cd ~/Git/mal-tui; and ./target/release/mal-tui"
abbr --add sine "PULSE_SOURCE=@DEFAULT_MONITOR@ scope-tui pulse"
