## Custom matugen apps
**List:**
- [Zed](#Zed)
- [Vesktop](#Vesktop)
- [Millenium (steam)](#Millenium)
- [Obsidian](#Obsidian)
- [Floorp (with pywalfox)](#Floorp (with pywalfox))
- [Custom web homepage](#Custom web homepage)
- [Prism Launcher](#Prism Launcher)
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
Install prism launcher via packet manager of your choice (recommend from flatpak)
#### Matcha
Install matcha
```
brew tap floatpane/matcha                        
brew install floatpane/matcha/matcha
```
Open matcha and navigate to Settings > Theme, select Matugen.
