## Custom matugen apps
**List:**
- [Zed](#Zed)
- [Vesktop](#Vesktop)
- [Millenium (steam)](#Millenium)
- [Obsidian](#Obsidian)
- [Custom web homepage](#Custom Web Homepage)
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

#### Custom homepage (For floorp)
1. Install floorp from tarball or ppa
2. 
https://floorp.app/download
2. In `about:config` add `floorp.newtab.overrides.newtabur` and set it to string, in this line you specify path to a index.html (it's `/home/$HOME/.config/homepage/index.html`)

#### Prism Launcher
Install prism launcher via packet manager of your choice (recommend from flatpak)
#### Matcha
Install matcha
```
brew tap floatpane/matcha                        
brew install floatpane/matcha/matcha
```
Open matcha and navigate to Settings > Theme, select Matugen.
