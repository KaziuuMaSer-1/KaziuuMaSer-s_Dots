#!/usr/bin/env fish

set PROJECT_DIR "$HOME/Git/banana-cursor"
set ICON_DEST "$HOME/.local/share/icons"
set CURSOR_NAME "Banana-Matugen"
set TAR_FILE "$PROJECT_DIR/bin/$CURSOR_NAME.tar.xz"
set DMS_CONFIG "$HOME/.config/DankMaterialShell/settings.json"
set LOCK_FILE "/tmp/banana_lock"

function build_and_notify
    # OCHRONA PRZED ZAPĘTLENIEM: Jeśli lockfile istnieje, ignorujemy to uruchomienie
    if test -f $LOCK_FILE
        # Usuwamy lockfile, przygotowując skrypt na kolejną (ręczną) zmianę tapety
        rm $LOCK_FILE
        exit 0
    end

    # 1. Powiadomienie o wystartowaniu procesu
    notify-send "Banana Cursor" "Matugen zaktualizował kolory. Rozpoczynam generowanie kursora... ⏳" \
        -a "Matugen Hook" -u low -i "preferences-desktop-peripherals"

    # 2. Nawigacja do katalogu projektu
    if test -d $PROJECT_DIR
        cd $PROJECT_DIR
    else
        notify-send "Banana Cursor" "Katalog projektu nie istnieje: $PROJECT_DIR ❌" -a "Matugen Hook" -u critical
        exit 1
    end

    # 3. Odpalenie generowania kursora
    nice -n 19 yarn generate > /dev/null 2>&1

    if test $status -eq 0
        mkdir -p $ICON_DEST

        # 4. Sprawdzenie i rozpakowanie pliku .tar.xz
        if test -f $TAR_FILE
            tar -xf $TAR_FILE -C $ICON_DEST
        else
            notify-send "Banana Cursor" "Nie znaleziono pliku archiwalnego w bin/! ❌" -a "Matugen Hook" -u critical
            exit 1
        end

        # 5. Ustawienie index.theme dla XWayland, GTK i Niri
        mkdir -p $HOME/.icons/default
        echo -e "[Icon Theme]\nInherits=$CURSOR_NAME" > $HOME/.icons/default/index.theme
        touch $HOME/.icons/default/index.theme
        touch $ICON_DEST/$CURSOR_NAME

        # 6. --- SEKCJA ODŚWIEŻANIA DMS Z BLOKADĄ ZAPĘTLENIA ---
        if test -f $DMS_CONFIG
            # Tworzymy lockfile PRZED edycją configu DMS.
            # Gdy DMS wywoła Matugena ponownie, skrypt zobaczy ten plik i bezpiecznie się wyłączy.
            touch $LOCK_FILE

            # Zmieniamy w locie motyw na Adwaita w pliku konfiguracyjnym DMS
            jq '.cursorSettings.theme = "Adwaita"' $DMS_CONFIG > $DMS_CONFIG.tmp
            mv $DMS_CONFIG.tmp $DMS_CONFIG

            sleep 0.2

            # Przywracamy Banana-Matugen
            jq '.cursorSettings.theme = "'$CURSOR_NAME'"' $DMS_CONFIG > $DMS_CONFIG.tmp
            mv $DMS_CONFIG.tmp $DMS_CONFIG
        end
        # -----------------------------------------------------

        # 7. Wymuszenie odświeżenia w locie przez DBus/Gsettings
        gsettings set org.gnome.desktop.interface cursor-theme "Adwaita"
        sleep 0.1
        gsettings set org.gnome.desktop.interface cursor-theme "$CURSOR_NAME"

        # 8. Przeładowanie środowiska Niri
        niri msg action reload-config > /dev/null 2>&1

        # Powiadomienie o sukcesie
        notify-send "Banana Cursor" "Kursor pomyślnie wygenerowany i odświeżony! 🍌" \
            -a "Matugen Hook" -u low -i "preferences-desktop-peripherals"
    else
        notify-send "Banana Cursor" "Błąd podczas yarn generate! ❌" -a "Matugen Hook" -u critical
    end
end

build_and_notify
