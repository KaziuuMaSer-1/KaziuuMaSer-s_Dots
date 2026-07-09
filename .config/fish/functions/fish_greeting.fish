function fish_greeting
    # Wersja zgodna ze składnią Tera w Matugenie: wyciągamy z_colors i usuwamy '#'
    set_color --bold 81d3dd
echo " ____       _     _               _     _
|  _ \  ___| |__ (_) __ _ _ __   | |   (_)_ __  _   _ __  __
| | | |/ _ | '_ \| |/ _` | '_ \  | |   | | '_ \| | | |\ \/ /
| |_| |  __| |_) | | (_| | | | | | |___| | | | | |_| | >  <
|____/ \___|_.__/|_|\__,_|_| |_| |_____|_|_| |_|\__,_|/_/\\_\\"    
set_color --dim b1cbcf

    echo (date '+%A, %d %B %Y') "     up" (uptime -p | sed 's/up //')

    set_color normal
end
