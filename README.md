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

         <!-- ![point click](point-click.webp) -->
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

<img src="https://media2.giphy.com/media/RqbkeCZGgipSo/200.webp?cid=ecf05e4780dqxbbvnrygr4iom0p6pp0wj48hkrq6dmgfw9hh&rid=200.webp&ct=g" height="303" />
<img src="https://media4.giphy.com/media/aCGdw5s3Tmxko6h7dP/200w.webp?cid=ecf05e4780dqxbbvnrygr4iom0p6pp0wj48hkrq6dmgfw9hh&rid=200w.webp&ct=g" height="303" />

### DEV 🧲

**VS Code** `brew install --cask visual-studio-code`

ProtonVPN `brew install --cask protonvpn`

Python `brew install python@3.10`

Github Desktop `brew install --cask github`

[Processing](https://processing.org) (= > 10.15)`brew install --cask processing`

Unity Hub `brew install --cask unity-hub`

Docker `brew install --cask docker`

Anaconda `brew install --cask anaconda`

Wireshark `brew install wireshark`

[BalenaEtcher](https://www.balena.io/etcher) `brew install --cask balenaetcher`

[Input Source Pro](https://inputsource.pro/) - A tool for multi-language users. `brew install --cask input-source-pro`

TeamViewer `brew install --cask teamviewer`

Arduino 1.8 (officially discontinued upstream)`brew install --cask arduino`

### ADD-ONS 🔌

   <img src="https://media1.giphy.com/media/LoHShaZGVfJ96/200w.webp?cid=ecf05e47nptkno4f35t20ay4jp5tcxbrusg3n56lrbje8nfw&rid=200w.webp&ct=g" width="366" />

**Notion** `brew install --cask notion`

[TopNotch](https://topnotch.app): turn menu bar to pure black (great for notched macs) `brew install --cask topnotch`

Dozer: collapse menu bar `brew install --cask dozer`

[Rectangle](https://rectangleapp.com): smart windows positioning `brew install --cask rectangle`

[Karabiner](https://karabiner-elements.pqrs.org) `brew install --cask karabiner-elements`

Macs Fan Control `brew install --cask macs-fan-control`

Helium `brew install --cask helium`

Net Download `brew install --cask netdownloadhelpercoapp`

[Aldente](https://medium.com/macoclock/aldente-useful-app-b8c302c47ceb): let battery to stop charging when... `brew install --cask aldente`

- **Depricated ones**

smfancontrol (old macs) `brew install --cask smcfancontrol`

Caffeine(old macs) `brew install --cask caffeine`

Bitwarden `brew install --cask bitwarden` ([not working on M1](https://www.reddit.com/r/Bitwarden/comments/nn0gl0/direct_download_vs_app_store_what_the_difference/))

### DOCS 🖨️

Notion `brew install --cask notion`

[Numi](https://numi.app): the beautiful calculator `brew install --cask numi`

LibreOffice `brew install --cask libreoffice`

Dash `brew install --cask dash`

Mactracker `brew install --cask mactracker`

### BROWSERS 🧯

[Brave](https://brave.com) `brew install --cask brave-browser`

[Firefox Dev Edition](https://www.mozilla.org/en-US/firefox/developer/) `brew install --cask firefox-developer-edition`

Firefox `brew install --cask firefox`

Tor `brew install tor`

Chrome `brew install --cask google-chrome`

### MEDIA 💈

- [Affinity](https://affinity.serif.com/en-gb/)

  Designer `brew install --cask affinity-designer`

  Photo `brew install --cask affinity-photo`

  Publisher `brew install --cask affinity-publisher`

Adobe CC `brew install --cask adobe-creative-cloud`

[ImageOptim](https://imageoptim.com/mac) remove metadata of pics and compress `brew install --cask imageoptim`

Figma `brew install --cask figma`

Sketch `brew install --cask sketch`

Blender `brew install --cask blender`

FontForge `brew install --cask fontforge`

IINA (mocOS-ish VLC) `brew install --cask iina`

Sketchup (2017 discontinued) `brew install --cask sketchup`

### SOUND 💥

Spitfire Audio `brew install --cask spitfire-audio`

Audacity `brew install --cask audacity`

Bfxr `brew install --cask bfxr`

Ableton Live Lite `brew install --cask ableton-live-lite`

BBC player `brew install --cask bbc-iplayer-downloads`

### SOCIAL + FUN 🎪

Spotify `brew install --cask spotify`

Skype `brew install --cask skype`

Steam `brew install --cask steam`

[Dolphin](https://dolphin-emu.org) `brew install --cask dolphin`

Discord `brew install --cask discord`

[Signal](https://signal.org) `brew install --cask signal`

Telegram `brew install --cask telegram`

Zoom `brew install --cask zoom`

Whatsapp `brew install --cask whatsapp`

Messenger (>10.12) `brew install --cask messenger`

## Install Apps from the Browser 🏄🏻‍♀️

1. Office Suite
2. DaVinci
3. Logic Pro
4. CleanMyMac X

## Install Apps from App Store 🧽

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

### BASH

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

- [Allow Apps from Anywhere (Gatekeeper](http://osxdaily.com/2016/09/27/allow-apps-from-anywhere-macos-gatekeeper/))

  `sudo spctl --master-disable`

- Kill The Dashboard

  ```powershell
  defaults write com.apple.dashboard mcx-disabled -boolean TRUE
  ```

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

///////// POSITION ////////////

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
