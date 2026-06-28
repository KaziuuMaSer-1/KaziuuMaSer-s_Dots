# Ts is Kaziumasos dotfiles
This is my dailydirver dots based on DankMaterialShell with instalation steps, pack of wallpapers and custom matugen configs.
## Instalation methods
You can either:

1. Use the postinstall script (100% jewcoded)
2. Install everything manually as shown below



## Dank Material Shell
1. Install dms with 
```
curl -fsSL https://install.danklinux.com | sh
```
2. Install DankGreeter 
```
dms greeter install
```
(you may need to run `sudo systemctl enable greetd`
`sudo systemctl start greetd`)
## Fish setup
1. Install terminal emulator (which one is up to you, for this setup im using kitty)

2. Install fish with 
```
brew install fish
```



## Custom matugen configs
**List:**
- [Zed](#Zed)
- [Vesktop](#Vesktop)
- [Millenium (steam)](#Millenium)
- [Obsidian](#Obsidian)
- [Floorp (with pywalfox)](#Floorp (with pywalfox))
- [Custom web homepage](#Custom-web-homepage)
- [Prism Launcher](#Prism-Launcher)
- [Matcha (tui-email)](#Matcha)
#### Zed
Install zed by running this in terminal:
```
curl -f https://zed.dev/install.sh | sh
```

#### Vesktop
Install Vesktop:

https://vesktop.dev/install/linux/

#### Millenium 
Install steam with package manager of your choice, then install millenium:
```
curl -fsSL "https://steambrew.app/install.sh" | bash
```

#### Obsidian
Install obsidian
```
flatpak install obsidian
```
#### Floorp (with pywalfox)
1. Install floorp from tarball or ppa:
https://floorp.app/download
2. Install [pywalfox](pywalfoxttps://github.com/Frewacom/pywalfox)
3. Run pywalfox install with custom profile-path `pywalfox install --profile-path /home/oliwier/.floorp/<profile>` (there is a possibility that you need to use `pywalfox install --manifest-path ~/.floorp/native-messaging-hosts`)

#### Custom web homepage
In `about:config` add `floorp.newtab.overrides.newtabur` and set it to string, in this line you specify path to a index.html (it's `/home/$HOME/.config/homepage/index.html`)

#### Prism Launcher
Install prism launcher via package manager of your choice (recommended from flatpak)

#### Matcha
Install matcha
```
brew tap floatpane/matcha                        
brew install floatpane/matcha/matcha
```
Open matcha and navigate to Settings > Theme, select Matugen.

## Misc apps
Banana Cursor: https://github.com/ful1e5/banana-cursor

Mal-tui: https://github.com/swstl/mal-tui

Osciloscope-tui: https://github.com/alemidev/scope-tui

## TODO
- [ ] Changes to webpage (eg. better window scaling)
- [ ] Chamges to fish prompt
- [ ] Sum nice fastfetch 
- [ ] First-install script (installing package managers, apps etc.)
- [ ] Telegram matugen theme
- [ ] Try to make faugus-launcher theme to work
<h2>
     <sub>
          <img  src="https://github.com/InioX/matugen/assets/81521595/bafdef83-4122-4bfd-9a30-98a5e0d7e488"
           height="25"
           width="25">
     </sub>
     Acknowledgements
</h2>

- Matugen https://github.com/InioX/matugen

- DankMaterialShell https://danklinux.com/

- Vesktop Midnight Theme https://github.com/refact0r/midnight-discord

- Obsidian Nu Ayu theme https://github.com/MrParalloid/nu-ayu

- Sukkon webpage https://github.com/divyanshchandhok/sukoon

- Matcha https://github.com/floatpane/matcha

- IBM Plex font https://www.ibm.com/plex/
