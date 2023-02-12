# NEW MACBOOK 💻 DEV SETUP

Set up for macOS system preferences, homebrew, terminal, programs, plug-ins and more.

This is my modiefied version of [maoxiaoke](https://github.com/maoxiaoke/setup-a-mac-for-frontend-dev) set up, also I included commands and free DLCs.

## System Preferences 🎛️

<img src="https://media1.giphy.com/media/3oKIPnFtTTc4iDHGmI/200w.webp?cid=ecf05e47bo5ycdzfxrbskwdzfakfotacdixd4rz4fxmff82e&rid=200w.webp&ct=g" width="466" />

1. Accessibility

   1. Change Cursor size

1. Login iCloud and App Store

1. Login Internet Accounts

1. Control Center

   1. Show audio icon [x]

1. Siri & Spotlight

   1. Siri [off]

   1. [off] Search results

   1. [Spotlight Privacy...]

1. Dock + Menu Bar

   1. [Remove] not used Apps from the dock

   1. Minimize windows [Genie→Scale]

   1. Minimise windows into application [x]

   1. Automatically hide and show the Dock [x]

   <!-- ![dock](dock.webp) -->
      <img src="dock.webp" width="500">

1. Security

   1. [immediately] Required password

   1. [x] Filevault

   1. Privacy -> turn off no neded [Location Services]

1. Users & Groups

   1. [ ] Login Options > Show fast user switching as [icon]

1. Change Wallpaper

1. Battery

   1. Change as you want.

1. Users & Group

   1. [ ] Allow users to reset using Apple ID

1. Keyboard + Region

   1. Language inputs

      1. shortcurt → Input Sources → [x] Select previous input source (! alt + space)

   1. Region (ireland: have euro, english, gregorian, close time zone, not imperialist UK)

1. Trackpad

   1. Point & Click

      1. Tracking Speed [Change]
      1. Click [light]

      1. Secondary click [Bottom-Right]

      1. Tap to Click [x]

         <img src="point-click.webp" width="500">

   1. More Gestures

      1. Swipe 2 finger last page [off]

      1. Swipe between Screen [3-Finger]

      1. [Change] Right click → on the right bottom corner

         <!-- ![more gestures](more-gestures.webp) -->
         <img src="more-gestures.webp" width="500">

## Terminal set up 📟

   <img src="https://media2.giphy.com/media/26uf4LsTj87JjVDbO/giphy.gif?cid=ecf05e47znj7hli7wiyzjp3li8vhjd89942bfub3yjsdwfn2&rid=giphy.gif&ct=g" width="566" />

1. Install [Homebrew](https://brew.sh/)

   `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

   Some users may wish to opt-out of Homebrew’s default “Anonymous Aggregate User Behaviour Analytics” tracking, which you can do with the following command after installation:
   `brew analytics off`

2. Install [iTerm2](https://iterm2.com/)

   `brew install --cask iterm2` - iTerm settings: 1. Go 「**iterm2 Preferences -> Profiles -> Default -> Window**」, add transparency and blur. 2. • Go 「**iterm2 Preferences -> Profiles -> Default -> Keys -> Key Mappings**」, replace the standard ones with the preset "Natural Text Editing". 3. **Install Oh My Zsh**

3. Customize terminal and plugins

   1. The great thing about this is that you can customize your shell and add plugins. Unlike the old Bash shell, which does not look attractive and can make it difficult for you to use.

      ```powershell
      sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
      ```

   - 1. **Choose your favorite theme**

     There are [multiple themes](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes) you can choose from. My favorite theme is [honukai](https://github.com/oskarkrawczyk/honukai-iterm-zsh) and it should look like in the screenshot:

     ![https://github.com/maoxiaoke/setup-a-mac-for-frontend-dev/raw/main/honukai-theme.png](https://github.com/maoxiaoke/setup-a-mac-for-frontend-dev/raw/main/honukai-theme.png)

     For compelete guide, dive into it's [docs](https://github.com/oskarkrawczyk/honukai-iterm-zsh).

     1. **Add useful oh-my-zsh plugins**

     Oh-my-zsh is powered by plugins. I'll share my top 3 plugins.

     ```powershell
     plugins=(
         git
         autojump
         zsh-syntax-highlighting
     )
     ```

4. PLUGINS ✳️

   1. the `git` plugin

   The [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git) plugin is enabled by default. It provides many aliases and a few useful functions.

   ![https://github.com/maoxiaoke/setup-a-mac-for-frontend-dev/raw/main/git-plugin.png](https://github.com/maoxiaoke/setup-a-mac-for-frontend-dev/raw/main/git-plugin.png)

   To use it, add `git` to the plugins array in your zshrc file:

   ```powershell
   plugins=(git)
   ```

   1. the `autojump` plugin

   Use Homebrew to install [autojump](https://github.com/wting/autojump#installation).

   ```powershell
   brew install autojump
   ```

   After that, add `autojump` to your zshrc file:

   ```powershell
   plugins=(... autojump)

   ```

   1. the `zsh-syntax-highlighting` plugin

   The installation of [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) may be tedious. But it worth the effort.

   Clone the [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) repository in oh-my-zsh's plugins directory:

   ```powershell
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```

   Then, activate the plugin in `~/.zshrc`:

   `plugins=(... zsh-syntax-highlighting)`
   After adding the plugins to your `.zshrc` file, you have to restart zsh to activate them, using the command `source ~/.zshrc`.You can find all my settings of `.zshrc` [here](https://gist.githubusercontent.com/maoxiaoke/0f61f217c428dcfba48067622db83a8e/raw/78da5225ff3cdc8df38db28b8f872a6f6836cfc2/__Configurations__---zshrc.text).

5. CLI stuff

   1. get pnpm

   [pnpm](https://pnpm.io/) is fast, disk space efficient package manager, works as an alternative of [npm](https://www.npmjs.com/). `$ brew install pnpm`

   1. get volta

   manage multiple [Node.js](https://nodejs.org/en/) versions`curl https://get.volta.sh | bash`

## Install Apps from Homebrew

<!-- <img src="https://media2.giphy.com/media/RqbkeCZGgipSo/200.webp?cid=ecf05e4780dqxbbvnrygr4iom0p6pp0wj48hkrq6dmgfw9hh&rid=200.webp&ct=g" height="303" /> -->
<img src="https://media4.giphy.com/media/aCGdw5s3Tmxko6h7dP/200w.webp?cid=ecf05e4780dqxbbvnrygr4iom0p6pp0wj48hkrq6dmgfw9hh&rid=200w.webp&ct=g" height="303" />

### DEV 🧲

1. **VS Code** `brew install --cask visual-studio-code`

1. ProtonVPN `brew install --cask protonvpn`

1. Python `brew install python@3.10`

1. Github Desktop `brew install --cask github`

1. [Processing](https://processing.org) (= > 10.15)`brew install --cask processing`

1. Unity Hub `brew install --cask unity-hub`

1. Docker `brew install --cask docker`

1. Anaconda `brew install --cask anaconda`

1. Wireshark `brew install wireshark`

1. [BalenaEtcher](https://www.balena.io/etcher) `brew install --cask balenaetcher`

1. [Input Source Pro](https://inputsource.pro/) - A tool for multi-language users. `brew install --cask input-source-pro`

1. TeamViewer `brew install --cask teamviewer`

1. Arduino 1.8 (officially discontinued upstream)`brew install --cask arduino`

### ADD-ONS 🔌

   <img src="https://media1.giphy.com/media/LoHShaZGVfJ96/200w.webp?cid=ecf05e47nptkno4f35t20ay4jp5tcxbrusg3n56lrbje8nfw&rid=200w.webp&ct=g" width="366" />

**Notion** `brew install --cask notion`

1. [TopNotch](https://topnotch.app) - turn menu bar to pure black (great for notched macs) `brew install --cask topnotch`

1. Dozer: collapse menu bar `brew install --cask dozer`

1. [Rectangle](https://rectangleapp.com) - smart windows positioning `brew install --cask rectangle`

1. [Karabiner](https://karabiner-elements.pqrs.org) `brew install --cask karabiner-elements`

1. [Macs Fan Control](https://crystalidea.com/macs-fan-control/download) `brew install --cask macs-fan-control`

1. [itsycal](https://www.mowglii.com/itsycal/) - cute calendar menu bar `brew install --cask itsycal`

1. Helium `brew install --cask helium`

1. Net Download `brew install --cask netdownloadhelpercoapp`

1. [Aldente](https://medium.com/macoclock/aldente-useful-app-b8c302c47ceb) - let battery to stop charging when... `brew install --cask aldente`

- **Depricated ones**

1. smfancontrol (old macs) `brew install --cask smcfancontrol`

1. Caffeine(old macs) `brew install --cask caffeine`

1. Bitwarden `brew install --cask bitwarden` ([not working on M1](https://www.reddit.com/r/Bitwarden/comments/nn0gl0/direct_download_vs_app_store_what_the_difference/))

### DOCS 🖨️

1. Notion `brew install --cask notion`

[Numi](https://numi.app) - the beautiful calculator `brew install --cask numi`

1. LibreOffice `brew install --cask libreoffice`

1. Dash `brew install --cask dash`

1. Mactracker `brew install --cask mactracker`

### BROWSERS 🧯

 <img src="https://media0.giphy.com/media/fvM5D7vFoACAM/giphy.gif?cid=ecf05e473dktuyswz15axeslcalpdo3roj3p3ghub8yc1u9m&rid=giphy.gif&ct=g" width="427" />

1. [Brave](https://brave.com) `brew install --cask brave-browser`

1. [Firefox Dev Edition](https://www.mozilla.org/en-US/firefox/developer/) `brew install --cask firefox-developer-edition`

1. Firefox `brew install --cask firefox`

1. Tor `brew install tor`

1. Chrome `brew install --cask google-chrome`

### MEDIA 💈

1. [Affinity](https://affinity.serif.com/en-gb/)

   1. Designer `brew install --cask affinity-designer`

   1. Photo `brew install --cask affinity-photo`

   1. Publisher `brew install --cask affinity-publisher`

1. Adobe CC `brew install --cask adobe-creative-cloud`

1. [ImageOptim](https://imageoptim.com/mac) - remove metadata of pics and compress `brew install --cask imageoptim`

1. Figma `brew install --cask figma`

1. Sketch `brew install --cask sketch`

1. [Blender](https://www.blender.org) `brew install --cask blender`

1. [FontForge](https://fontforge.org/en-US/) - open source font editor `brew install --cask fontforge`

1. [IINA](https://iina.io) (macOS-ish VLC) `brew install --cask iina`

1. Sketchup (2017 discontinued) `brew install --cask sketchup`

### SOUND 💥

1. [Spitfire Audio](https://www.spitfireaudio.com/spitfire-audio-strings) `brew install --cask spitfire-audio`

1. Audacity `brew install --cask audacity`

1. Bfxr `brew install --cask bfxr`

1. Ableton Live Lite `brew install --cask ableton-live-lite`

1. BBC player `brew install --cask bbc-iplayer-downloads`

### SOCIAL + FUN 🎪

1. Spotify `brew install --cask spotify`

1. Skype `brew install --cask skype`

1. Steam `brew install --cask steam`

   1. Install Aseprite

   1. Download and install [BG Auto-Scroll Toolbar](https://carbscode.itch.io/bg-auto-scroll-toolbar/download/Eje4FCYByWEF0QPTH8v7mLqTHc2GP82qmCNg1L7_)

1. [Dolphin](https://dolphin-emu.org) `brew install --cask dolphin`

1. Discord `brew install --cask discord`

1. [Signal](https://signal.org) `brew install --cask signal`

1. Telegram `brew install --cask telegram`

1. Zoom `brew install --cask zoom`

1. Whatsapp `brew install --cask whatsapp`

1. Messenger (>10.12) `brew install --cask messenger`

## Install Apps from the Browser 🏄🏻‍♀️

1. [Aseprite](https://www.aseprite.org) (bought here) and then install it on Steam (optional)
1. [DaVinci](https://www.blackmagicdesign.com/products/davinciresolve/)
1. [CleanMyMac X](https://duckduckgo.com/?q=cleanmymac&t=osx)
1. Office Suite
1. [Pico CAD](https://johanpeitz.itch.io/picocad)
1. [BG Auto-Scroll Toolbar](https://carbscode.itch.io/bg-auto-scroll-toolbar/download/Eje4FCYByWEF0QPTH8v7mLqTHc2GP82qmCNg1L7_) (Aseprite plugins)

## Install Apps from the App Store 🧽

   <img src="https://media2.giphy.com/media/CTkWFZ1IDvsfS/giphy.webp?cid=ecf05e47weavtjh1zwitrd0bhooz9tb50tfe2gew99a1akff&rid=giphy.webp&ct=g" width="376" />

### Apps

1. Speedtest
1. Webp Converter
1. The Unanchiver
1. Disk Speed Test
1. Encrypto
1. Bitdefender
1. Codecows

### System Plugins

1. Usage: show system usage
1. Amphentamine: prevent computer to sleep and more cool options
1. Pomodoro
1. Helium: PiP

### Safari Plugins

1. Adguard
1. AdGuard
1. PiPifier
1. Link Text Selector

## Terminal Commands 📼

 <img src="https://media0.giphy.com/media/Rd7pEbE7rjZz8vySuU/200w.webp?cid=ecf05e4785rhz7hf3ft9pkpaq2f0gd463xmanfhaw74tfu3s&rid=200w.webp&ct=g" width="496" />

### SIMPLE CMDS

- `clear`

  `man` manual

  `df -h` how much space is in your disk

  `whoami` tell you the user you are

  `ps` show all the processes in your mac

  `ps -ax`

  `top` showing your processes in realtime

  `top -o rsize` showing your memory apps in realtime

  `bash` change to

  `zsh` change to

  `uptime` how much time has your mac wotking

  `history` command history

  ctrl + C to exit

### FILES

`cd` go to directory

`ls` list current folder files

`open` open a file

`cp` copy files

`ditto` better version of copy files

`nano` edit a file

`mv` move files

`diff` compare files

### BREW installs

1. `cmatrix` show matrix

   1. `brew install cmatrix` to install

   1. ctrl + C to exit

1. `asciiquarium` show an aquarium

   1. `brew install asciiquarium`

1. `toilet [smt]` convert text to ascii

   1. `brew install toilet`

1. `tetris` play tetris

   1. `brew install samtay/tui/tetris`

### INTERNET

1. `ping` check if the website is working

1. `ifconfig` know your ip addres

1. `ifconfig en0 | grep inet | awk ‘{ print $2 }’` only show ipv6 and 4

1. `traceroute [website]` trace the route to go to a website

1. `dig [website]` dig in DNS

1. `curl [file]` download a file from the internet

1. `curl [wttr.in/[city]](http://wttr.in/[city])` show the weather

### SECURITY

1. [Allow Apps from Anywhere (Gatekeeper](http://osxdaily.com/2016/09/27/allow-apps-from-anywhere-macos-gatekeeper/))
   `sudo spctl --master-disable`
1. Delete all the download history (from any app that lets you download files. This can include torrents, cat photos, porn—anything.)
   **`sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'`**
1. Use Touch ID for sudo
   [https://youtu.be/qOrlYzqXPa8?t=644](https://youtu.be/qOrlYzqXPa8?t=644)
   `sudo nano /etc/pam.d/sudo`

### Homebrew

1. Example usage:

   brew search TEXT|/REGEX/

   brew info [FORMULA|CASK...]

   brew install FORMULA|CASK...

   brew update

   brew upgrade [FORMULA|CASK...]

   brew uninstall FORMULA|CASK...

   brew list [FORMULA|CASK...]

1. Troubleshooting:

   brew config

   brew doctor

   brew install --verbose --debug FORMULA|CASK

1. Contributing:

   brew create URL [--no-fetch]

   brew edit [FORMULA|CASK...]

1. Further help:

   brew commands

   brew help [COMMAND]

   man brew [link](https://docs.brew.sh)

### FUN

- Mac speech
  `say [put the phrase]`
- 🔋BEEP → Plug the Power
  iPhone charging sound

  ```powershell
  defaults write com.apple.PowerChime ChimeOnAllHardware -bool true; open /System/Library/CoreServices/PowerChime.app
  ```

- SCREENSHOOTS
  Screenshot jpg(or tiff, gif)

  ```powershell
  defaults write com.apple.screencapture type jpg;killall SystemUIServer
  ```

  Create a New Default Name For Screenshots

  ```powershell
  defaults write com.apple.screencapture name "capturajun"
  ```

- Kill The Dashboard

  ```powershell
  defaults write com.apple.dashboard mcx-disabled -boolean TRUE
  ```

- Stay awake while using the terminal
  `caffeinate`

## VS CODE plugins

sass compiler

live server

tabnine (copilot like)

prettier

**Need to update**

### json settings for vs code sass compiler

```jsx
{
    "workbench.iconTheme": "material-icon-theme",
    "editor.minimap.enabled": false,
    "breadcrumbs.enabled": false,
    "editor.renderWhitespace": "none",
    "editor.renderControlCharacters": true,
    "workbench.preferredHighContrastColorTheme": "Visual Studio 2019 Light",
    "extensions.ignoreRecommendations": true,
    "explorer.confirmDragAndDrop": false,
    "liveSassCompile.settings.formats": [
    {
        "format": "expanded",
        // "extensionName": "min.css",
        // "savePath": "/css"
    }
    ],
    "liveSassCompile.settings.generateMap": false,
    "workbench.colorTheme": "Visual Studio 2019 Dark",
    "workbench.preferredDarkColorTheme": "Visual Studio 2019 Dark",
    "workbench.preferredLightColorTheme": "Visual Studio 2019 Light",
    "liveSassCompile.settings.autoprefix": [],
    "liveServer.settings.donotShowInfoMsg": true
}
```

### SASS

POSITION

`"Position Fixed": {`

`"prefix": "pof",`

`"body": ["position: fixed;\n"],`

`"description": "Position Fixed"`

`},`

`"Position Relative": {`

`"prefix": "por",`

`"body": ["position: relative;\n"],`

`"description": "Position Relative"`

`},`

`"Position Absolute": {`

`"prefix": "poa",`

`"body": ["position: absolute;\n"],`

`"description": "Position Absolute"`

`}`

#### .prettierrc

```jsx
{
"singleQuote": true,
"arrowParens": "avoid"
}
```
