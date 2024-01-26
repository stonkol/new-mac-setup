# LazyVim

## shortcuts


### Insert Mode
i           Insert mode
I           Insert at the beginning of the line
A           Insert text at the end of the line
crtl+w      Delete current letter to the first letter of a word
ctrl+u      Delete everything from the current letter to the first letter


### Command Mode
shift+;     show command line
    - wq    save and quit 
    - wqa   save in all the files, clean buffer and quit

<space>     show main shortcuts
    -   e           folder view
    -   E           current loaction folder view
    -   g           goto
    -       - c       uncomment selected text
    -   c > r       rename a name in the whole page (typescropt laguage server (lsp feature))
    - u > U         change theme

c > m       open mason (the installer manager)
q           quit
i           edit(input) file
<esc>       leave editing mode 
u           undo
j           next line
<nm>+j      jump to <nm> lines below
shift+v     select lines

### Normal Mode
s           jump(fly) to anywhere(leap.nvim plugin)
ddp         swap current and below line 
x           delete
dl"         delete all the things inside the current " "
dG          delete from the current line to last line, or the whole doc if if you are in the first line 

y           copy
yy          copy entire line

yi"         copy all the text inside the " "
p           paste




# Install

## 1. Install LazyVim

### Official Installation [Docs](https://www.lazyvim.org/installation)
Make a backup of your current neoVim files:

```shell
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Clone the starter:

`$ git clone https://github.com/LazyVim/starter ~/.config/nvim`

Remove the `.git` folder, so you can add it to your own repo later

`$ rm -rf ~/.config/nvim/.git`

Start neoVim!
`$ nvim`

> [!TIP]
> It is recommended to run `:LazyHealth` after installation. This will load all plugins and check if everything is working correctly.

Restart your terminal

### 2. LazyVim requirements

1. git installed
1. Using Neovim >= 0.9.0
1. `rg` installed
1. `{ "fd", "fdfind" }` installed
1. `lazygit` installed

#### 2.3 Install rg

`$ brew install ripgrep`

#### 2.4 Install fd 

`$ brew install fd`

#### 2.5 Install [LazyGit](https://github.com/jesseduffield/lazygit)

Homebrew download
```shell
brew tap jesseduffield/lazygit  
brew install lazygitbrew tap
```

Install Lazygit
`$ brew install lazygit`

## 3. Install Lua

`$ brew install lua `

## 4. Python shit

If it is telling you that there are no python modules
`$ python3 -m pip install --user --upgrade pynvim`
