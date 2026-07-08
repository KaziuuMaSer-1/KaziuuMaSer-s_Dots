# Wttr.in na starto

# function fish_greeting
# 	curl wttr.in/Pszow?0	    
#end
abbr --add ocr "bash ~/Scripts/scan-pdf.sh"
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
abbr --add update "sudo apt update -y && sudo apt upgrade -y && flatpak update -y && brew update"
abbr --add gac "git add . && git commit -m"
abbr --add mal "cd ~/Git/mal-tui; and ./target/release/mal-tui"
abbr --add sine "PULSE_SOURCE=@DEFAULT_MONITOR@ scope-tui --palette-color red,yellow,green,magenta pulse"
abbr --add torlnk "npx torlnk"
abbr --add chroma "chroma --config ~/.files/chroma.toml --no-status"
