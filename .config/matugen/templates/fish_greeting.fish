function fish_greeting
    # Wersja zgodna ze składnią Tera w Matugenie: wyciągamy z_colors i usuwamy '#'
    set_color --bold {{ colors.primary.default.hex_stripped }}
echo " ____       _     _               _     _
|  _ \  ___| |__ (_) __ _ _ __   | |   (_)_ __  _   _ __  __
| | | |/ _ | '_ \| |/ _` | '_ \  | |   | | '_ \| | | |\ \/ /
| |_| |  __| |_) | | (_| | | | | | |___| | | | | |_| | >  <
|____/ \___|_.__/|_|\__,_|_| |_| |_____|_|_| |_|\__,_|/_/\\\\_\\\\"    
set_color --dim {{ colors.secondary.default.hex_stripped }}

    echo (date '+%A, %d %B %Y') "     up" (uptime -p | sed 's/up //')

    set_color normal
end
