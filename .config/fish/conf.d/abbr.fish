abbr --add ocr "bash ~/Scripts/scan-pdf.sh"
abbr --add update "sudo apt update -y && sudo apt upgrade -y && flatpak update -y && brew update && brew upgrade"
abbr --add gac "git add . && git commit -m"
abbr --add mal "cd ~/Git/mal-tui; and ./target/release/mal-tui"
abbr --add sine "PULSE_SOURCE=@DEFAULT_MONITOR@ scope-tui"
abbr --add torlnk "npx torlnk"
abbr --add chroma "chroma --config ~/.files/chroma.toml --no-status"

alias gsr="flatpak run --command=gpu-screen-recorder com.dec05eba.gpu_screen_recorder"
