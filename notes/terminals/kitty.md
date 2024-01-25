# Kitty Docs

## Hot keys
cmd + T   new tab
cmd + enter new inner-window
cmd + L   clear 

# Kitty Set Up 📟

   <img src="https://media2.giphy.com/media/26uf4LsTj87JjVDbO/giphy.gif?cid=ecf05e47znj7hli7wiyzjp3li8vhjd89942bfub3yjsdwfn2&rid=giphy.gif&ct=g" width="566" />

## 1. Install [Kitty](https://github.com/kovidgoyal/kitty/)

`$ brew install --cask kitty`

## 2. Install [Nerdfonts](https://www.nerdfonts.com/font-downloads)

[Previzualize](https://www.programmingfonts.org/#maple) fonts

Cool fonts: [0xProton] fancy weird one, [MartianMono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/MartianMono.zip), [BigBlueTerm](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/BigBlueTerminal.zip)

There are a few with ligature, like [FiraCode Nerd](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip), [Lilex Nerd](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Lilex.zip), [OpenDyslexic](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/OpenDyslexic.zip)

#### Option 1 Ordinary Download (Not recommended)

from the website [Nerdfonts](https://www.nerdfonts.com/font-downloads) 

#### Option 2: Homebrew (easiest)

```shell
brew tap homebrew/cask-fonts &&
brew install --cask font-<FONT NAME>-nerd-font
```

#### Option 3: Bash Install Script
`./install.sh <FontName>`

####
1. Add to kitty.conf: `font_family GeistMono Nerd Mono`
1. check if the font is on: `kitty --debug-font-fallback`

## 2. Customize terminal

1. The great thing about this is that you can customize your shell and add plugins. Unlike the old Bash shell, which does not look attractive and can make it difficult for you to use.

### Themes

1. github themes [repo](include ./theme.conf)
1. Download `$ git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes`
1. Choose a theme and create a symlink:

```shell
cd ~/.config/kitty
ln -s ./kitty-themes/themes/Floraverse.conf ~/.config/kitty/theme.conf
```

- Favs
   1. Vaughn, chill purple
   1. Twilight: minimalst earth colors
   1. Tomorrow Night Eighties: low sat colorful
   1. Ocean: old fashion shitty teletext
   1. gruvbox light: desert burned

## 3. PLUGINS ✳️

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

   1. the `zsh-syntax-highlighting` plugin

   The installation of [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) may be tedious. But it worth the effort.

   Clone the [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) repository in oh-my-zsh's plugins directory:

   ```powershell
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```

   Then, activate the plugin in `~/.zshrc`:

   `plugins=(... zsh-syntax-highlighting)`
   After adding the plugins to your `.zshrc` file, you have to restart zsh to activate them, using the command `source ~/.zshrc`.You can find all my settings of `.zshrc` [here](https://gist.githubusercontent.com/maoxiaoke/0f61f217c428dcfba48067622db83a8e/raw/78da5225ff3cdc8df38db28b8f872a6f6836cfc2/__Configurations__---zshrc.text).

## 4. CLI stuff

   1. get pnpm

   [pnpm](https://pnpm.io/) is fast, disk space efficient package manager, works as an alternative of [npm](https://www.npmjs.com/). `$ brew install pnpm`

   1. get volta

   manage multiple [Node.js](https://nodejs.org/en/) versions`curl https://get.volta.sh | bash`


Then go to [my-apps](notes/my-apps)