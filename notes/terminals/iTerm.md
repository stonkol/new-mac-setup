## 2. Terminal set up 📟

   <img src="https://media2.giphy.com/media/26uf4LsTj87JjVDbO/giphy.gif?cid=ecf05e47znj7hli7wiyzjp3li8vhjd89942bfub3yjsdwfn2&rid=giphy.gif&ct=g" width="566" />

1. Install [Homebrew](https://brew.sh/)

   `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

   Opt-out Homebrew’s analytics: `brew analytics off`

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