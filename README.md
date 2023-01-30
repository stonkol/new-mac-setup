# NEW Mac dev SETUP

Set up for macOS system preferences, homebrew, terminal, programs, plug-ins and more.

## term2 zsh ohmyzsh

This is my modiefied version of [maoxiaoke](https://github.com/maoxiaoke/setup-a-mac-for-frontend-dev) set up, also I included commands and free DLCs.

## System Preferences

1. Trackpad
   1. [x] 3 Finger Dragging
   1. [x] Tap to click
   1. [ ] Swipe 2 finger last page
   <!-- ![alt text][.jpg] -->
   1. [Change] Right click → on the right bottom corner
1. Change Cursor size in Accessibility
1. Internet Accounts + Login iCloud + App Store
1. Keyboard + Region
   1. Language inputs
      1. shortcurt → Input Sources → [x] Select previous input source (! alt + space)
   2. Region (ireland: have euro, english, gregorian, close time zone, not imperialist UK)
1. Dock + Menu Bar
   1. clean apps on the dock
   2. hide Siri
   3. [x] autohide
   4. amplify
   5. genie → scale
1. SECURITY

   1. [x] filevault

1. Change Wallpaper

## Terminal set up

1. Install [Homebrew](https://brew.sh/)

   `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

   Some users may wish to opt-out of Homebrew’s default “Anonymous Aggregate User Behaviour Analytics” tracking, which you can do with the following command after installation:
   `brew analytics off`

2. Install [iTerm2](https://iterm2.com/)
   `brew install --cask iterm2` - iTerm settings: 1. Go 「**iterm2 Preferences -> Profiles -> Default -> Window**」, add transparency and blur. 2. • Go 「**iterm2 Preferences -> Profiles -> Default -> Keys -> Key Mappings**」, replace the standard ones with the preset "Natural Text Editing". 3. **Install Oh My Zsh**

3. Customize terminal and plugins

   - The great thing about this is that you can customize your shell and add plugins. Unlike the old Bash shell, which does not look attractive and can make it difficult for you to use.

     ```powershell
     sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
     ```

     1. **Choose your favorite theme**

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

     - PLUGGINS

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
       After adding the plugins to your `.zshrc` file, you have to restart zsh to activate them, using the command `source ~/.zshrc`.You can find all my settings of `.zshrc` [here](https://gist.githubusercontent.com/maoxiaoke/0f61f217c428dcfba48067622db83a8e/raw/78da5225ff3cdc8df38db28b8f872a6f6836cfc2/__Configurations__---zshrc.text).\*\*\*\*

   - CLI stuff

     1. get pnpm

        [pnpm](https://pnpm.io/) is fast, disk space efficient package manager, works as an alternative of [npm](https://www.npmjs.com/). `$ brew install pnpm`

     2. get volta

        manage multiple [Node.js](https://nodejs.org/en/) versions`curl https://get.volta.sh | bash`

## Install Apps from Homebrew

### DEV

**VS Code** `brew install --cask visual-studio-code`

[Input Source Pro](https://inputsource.pro/) - A tool for multi-language users. `brew install --cask input-source-pro`

ProtonVPN `brew install --cask protonvpn`

Python `brew install python@3.10`

Github Desktop `brew install --cask github`

Processing (= > catalina)`brew install --cask processing`

Unity Hub `brew install --cask unity-hub`

Arduino (depricated)`brew install --cask arduino`

Docker `brew install --cask docker`

Anaconda `brew install --cask anaconda`

Wireshark `brew install wireshark`

Balena `brew install --cask balenaetcher`

TeamViewer `brew install --cask teamviewer`

Dolphin `brew install --cask dolphin`

Dash `brew install --cask dash`

Mactracker `brew install --cask mactracker`

### ADD-ONS

**Notion** `brew install --cask notion`
TopNotch `brew install --cask topnotch`
Dozer `brew install --cask dozer`
Rectangle `brew install --cask rectangle`
Karabiner `brew install --cask karabiner-elements`
Macs Fan Control `brew install --cask macs-fan-control`
Helium `brew install --cask helium`
Net Download **\*\*\*\***`brew install --cask netdownloadhelpercoapp`
Aldente `brew install --cask aldente`

- **Depricated ones**

smfancontrol (old macs) `brew install --cask smcfancontrol`

Caffeine(old macs) `brew install --cask caffeine`

Bitwarden **\*\*\*\***`brew install --cask bitwarden` ([not working on M1](https://www.reddit.com/r/Bitwarden/comments/nn0gl0/direct_download_vs_app_store_what_the_difference/))

### DOCS

Numi `brew install --cask numi`

LibreOffice `brew install --cask libreoffice`

Notion `brew install --cask notion`

Dash `brew install --cask dash`

Mactracker `brew install --cask mactracker`

### BROWSERS

Brave `brew install --cask brave-browser`

Firefox Dev Edition `brew install --cask firefox-developer-edition`

Firefox `brew install --cask firefox`

Chrome \*\*\*\*`brew install --cask google-chrome`

Tor (?)`brew install tor`

### MEDIA

- Affinity (v2)
  Designer `brew install --cask affinity-designer`
  Photo `brew install --cask affinity-photo`
  Publisher `brew install --cask affinity-publisher`

Adobe CC `brew install --cask adobe-creative-cloud`

Figma `brew install --cask figma`

Sketch `brew install --cask sketch`

FontForge `brew install --cask fontforge`

ImageOptim `brew install --cask imageoptim`

Blender `brew install --cask blender`

Sketchup(2017 discontinued) **\*\*\*\***`brew install --cask sketchup`
IINA(replace VLC) `brew install --cask iina`
Librecad (depricated, only for intel) `brew install --cask librecad`

### SOUND

Spitfire Audio `brew install --cask spitfire-audio`

Audacity `brew install --cask audacity`

Ableton Live Lite `brew install --cask ableton-live-lite`

Bfxr `brew install --cask bfxr`

BBC player `brew install --cask bbc-iplayer-downloads`

### SOCIAL + FUN

Spotify `brew install --cask spotify`
Skype `brew install --cask skype`

Steam `brew install --cask steam`
Dolphin `brew install --cask dolphin`

Discord `brew install --cask discord`
Signal `brew install --cask signal`
Telegram `brew install --cask telegram`
Zoom `brew install --cask zoom`
Whatsapp `brew install --cask whatsapp`
Messenger(>10.12) \*\*\*\*`brew install --cask messenger`

## Install Apps from the Browser

1. Office Suite
2. DaVinci
3. Logic Pro
4. CleanMyMac X

## Install Apps from App Store

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

## Terminal Commands

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
